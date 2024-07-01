import os
import asmat.assembly_parser as assembly_parser
import asmat.const as const
import asmat.settings as settings
import asmat.reader as reader
from asmat.compiler import TMP_ASM_FILE_NAME, TMP_CPP_FILE_NAME, TMP_O_FILE_NAME, get_assembler, objdump_process


FUNCTION_ID = 0


def get_function_id():
    """Returns a uniq id

    Returns:
        int: ID
    """

    global FUNCTION_ID
    FUNCTION_ID = FUNCTION_ID + 1
    return FUNCTION_ID-1




def function_extended_name(f, p):
    """Returns function extended name with function name and parameters used to identify the function.

    Args:
        f (str): Function name
        p (list): Parameters list

    Returns:
        str: Function extended name
    """

    return f + '_' + ''.join(map(str, p))





def generate_function(funcName:str, parameters:list, wrapper="{}", namespace="", functionId='auto'):
    """Generates cpp function code. The function id generated with a uniq id in its name.

    Args:
        funcName (str): Name of the function to call.
        parameters (list): List of the types of the variables used for the call.
        functionId (str, optional): Defines a custom id for the function. If auto the id is generated automatically. Defaults to 'auto'.

    Returns:
        str: Code as str.
    """

    # Generation of the parameters
    formal_param = ""
    real_param = ""
    func_id = funcName + '_' + str(get_function_id()) if functionId == 'auto' else funcName + '_' + str(functionId)

    for i in range(0, len(parameters)):
        if i == len(parameters)-1:
            formal_param += wrapper.format(parameters[i]) + f" a{i}" 
            real_param += f"a{i}"
        else:
            formal_param += wrapper.format(parameters[i]) + f" a{i}, "
            real_param += f"a{i}, "

    # Code of the temporary function
    code = f"auto func_{func_id}(" + formal_param + """) {
    return """ + namespace + funcName + "(" + real_param + """);
}\n"""
    

    return (func_id, code)



def clear_tmp():
    """
    Removes all temporary files
    """

    if os.path.exists(TMP_CPP_FILE_NAME):
        os.system(f"rm {TMP_CPP_FILE_NAME}")
    if os.path.exists(TMP_O_FILE_NAME):
        os.system(f"rm {TMP_O_FILE_NAME}")
    if os.path.exists(TMP_ASM_FILE_NAME):
        os.system(f"rm {TMP_ASM_FILE_NAME}")






def extract_instructions(functionName:str, parameters:str, func_code_name:dict, asm:str, opt:dict, compiler:str='gcc', instr_set:str="X86"):
    """Extracts assembly instructions from objdump files.

    Args:
        functionName (str): Name of the function to extract.
        parameters (str): Parameters types of the function.
        func_code_name (dict): Dictionary which associates extended names to "code names". 
        asm (str): Assembly str generated by objdump.
        method (str, optional): Defines the disassembling method. Values are `objdump` or `gcc`.
        compiler (str, optional): The compiler used. Only useful if method=standard.

    Raises:
        Exception: If extended name is not found is func_code_name.
        Exception: If the function is not found in the assembly file.

    Returns:
        list: List with all assembly instructions.
    """
    
    new_name = function_extended_name(functionName, parameters)
    if new_name not in func_code_name.keys():
        raise Exception("ERROR : Invalid function identifiant")

    function_name = func_code_name[new_name]

    if opt['disassembler'] == 'objdump':
        if instr_set.upper() == 'X86':
            return assembly_parser.read_objdump_x86_assembler(function_name, asm)
        elif instr_set.upper() == 'ARM':
            return assembly_parser.read_objdump_arm_assembler(function_name, asm)
        else:
            raise Exception("Invalid instruction set. Possible values are 'X86' and 'ARM'")
    else:
        return assembly_parser.read_compiler_assembler(function_name, asm, compiler=compiler)




def get_functions_instructions(options, functions : list):
    """Returns assembly instructions for each architectures, compilers and functions. The result is stored in a dictionary DICT[COMPILER][ARCHITECTURE][FUNCTION]['type' or 'instr']

    Args:
        options (_type_): Options describing user query
        functions (list): List of tuples (function_name, parameters list) for each functions we want assembly.

    Returns:
        Dict: Dictionary with assembly programs.
    """

    method = options['disassembler']

    clear_tmp()

    headers = ""
    if options['headers'] == []:
        for i in reader.read_headers():
            headers += f"#include {i}\n"
    else:
        for i in options['headers']:
            headers += f'#include {i}\n'

    full_code = headers
    functions_names = {}
    res_dict = {}
    
    
    target = settings.get_target(options)

    # Generating .cpp code
    for f, p in functions:
        new_name, code = generate_function(f, p, wrapper=target['twrapper'], namespace=target['namespace'])
        full_code += code
        functions_names[function_extended_name(f, p)] = new_name

    if not os.path.isdir(f"{const.root}/tmp"):
        os.mkdir(f"{const.root}/tmp")

    # Write code in tmp.cpp
    tmp = open(TMP_CPP_FILE_NAME, 'x')
    tmp.write(full_code)
    tmp.close()

    

    compilers = target['compiler'].keys()
    architectures = target['setup'].keys()

    queue = []
    for comp in compilers:
        for a in architectures:
            queue.append((comp, a))

    maxproc = options['nbprocess'] if options['nbprocess'] > 0 else os.cpu_count()

    while queue != []:
        files = {}
        file_id = 0

        if options['verbose']:
            print(f'Generating assembly...', end='\r')

        # Run compilations
        for i in range(0, min(maxproc, len(queue))):
            comp, a = queue.pop()

            if comp not in res_dict.keys():
                res_dict[comp] = {}
            if a not in res_dict[comp].keys():
                res_dict[comp][a] = {}
            
            if method == 'objdump':
                p = get_assembler(TMP_CPP_FILE_NAME, f"{const.root}/tmp/tmp{file_id}.s", compiler=target['compiler'][comp], method=method,\
                                    setup=target['setup'][a], default_options=options['flags'] == [], wait=False, tmp_o_file=f"{const.root}/tmp/tmp{file_id}.o")
                files[p] = (f"{const.root}/tmp/tmp{file_id}", comp, a)
                file_id += 1
            else:
                p = get_assembler(TMP_CPP_FILE_NAME, f"{const.root}/tmp/tmp{file_id}.s", compiler=target['compiler'][comp], method=method, setup=target['setup'][a], default_options=options['flags'] == [], wait=False)
                files[p] = (f"{const.root}/tmp/tmp{file_id}", comp, a)
                file_id += 1

        # Wait for subprocess
        for i, j in files.items():
            i.wait()
            if method == 'objdump':
                if i.returncode != 0:
                    raise Exception(f"Compilation error {j} : " + i.stderr.read().decode())
                objdump_process(j[0] + '.s', tmp_o_file=j[0] + '.o', instr_set=target['instr_set'])

            file_asm = open(j[0] + '.s')
            asm = file_asm.read()
            file_asm.close()

            for f, p in functions:
                if f not in res_dict[j[1]][j[2]].keys():
                    res_dict[j[1]][j[2]][f] = [{"type" : p, "instr" : extract_instructions(f, p, functions_names, asm, options, compiler=j[1], instr_set=target['instr_set'])}]
                else:
                    res_dict[j[1]][j[2]][f].append({"type" : p, "instr" : extract_instructions(f, p, functions_names, asm, options, compiler=j[1], instr_set=target['instr_set'])})




    if options['verbose']:
        print(f'Assembly generated successfully')

    # Temporary files 
    if not options['keep_tmp']:
        for i in os.listdir(f"{const.root}/tmp"):
            os.remove(f"{const.root}/tmp/{i}")
        os.rmdir(f"{const.root}/tmp")
        clear_tmp()

    return res_dict


if __name__ == '__main__':
    c = const.OPTIONS.copy()
    c['input'] = 'abs.json'

    get_functions_instructions(c, [("abs", [],)])