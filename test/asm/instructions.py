import os
import assembly_parser
import const
import settings
from compiler import TMP_ASM_FILE_NAME, TMP_CPP_FILE_NAME, TMP_O_FILE_NAME, get_assembler, objdump_process


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






def generate_function(funcName:str, parameters:list, functionId='auto'):
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
            formal_param += f"eve::wide<{parameters[i]}> a{i}"
            real_param += f"a{i}"
        else:
            formal_param += f"eve::wide<{parameters[i]}> a{i}, "
            real_param += f"a{i}, "

    # Code of the temporary function
    code = f"auto func_{func_id}(" + formal_param + """) {
    return eve::""" + funcName + "(" + real_param + """);
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






def extract_instructions(functionName:str, parameters:str, func_code_name:dict, asm:str, method='objdump', compiler:str='gcc'):
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

    if method == 'objdump':
        return assembly_parser.read_objdump_assembler(function_name, asm)
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

    full_code = "#include <eve/module/core.hpp>\n\n"
    functions_names = {}
    res_dict = {}

    # Generating .cpp code
    for f, p in functions:
        new_name, code = generate_function(f, p)
        full_code += code
        functions_names[function_extended_name(f, p)] = new_name

    # Write code in tmp.cpp
    tmp = open(TMP_CPP_FILE_NAME, 'x')
    tmp.write(full_code)
    tmp.close()

    target = settings.get_target(options)

    compilers = target['compiler'].keys()
    architectures = target['setup'].keys()

    nb_iter = len( compilers ) * len( architectures )
    it = 0


    if not options['performance']:
        for comp in compilers:
            res_dict[comp] = {}
            for a in architectures:
                res_dict[comp][a] = {}

                if options['verbose']:
                    print(f'Generating assembly : {int(100 * it / nb_iter)}% done', end='\r')

                get_assembler(TMP_CPP_FILE_NAME, TMP_ASM_FILE_NAME, compiler=comp, method=method, setup=target['setup'][a], default_options=options['flags'] == [])
                
                it += 1
                file_asm = open(TMP_ASM_FILE_NAME)
                asm = file_asm.read()
                file_asm.close()

                for f, p in functions:
                    if f not in res_dict[comp][a].keys():
                        res_dict[comp][a][f] = [{"type" : p, "instr" : extract_instructions(f, p, functions_names, asm, method=method, compiler=comp)}]
                    else:
                        res_dict[comp][a][f].append({"type" : p, "instr" : extract_instructions(f, p, functions_names, asm, method=method, compiler=comp)})
    else:
        # Multiprocess mode
        files = {}
        file_id = 0
        if not os.path.exists(f"{const.root}/tmp"):
            os.mkdir(f"{const.root}/tmp")
        for comp in compilers:
            res_dict[comp] = {}
            for a in architectures:
                res_dict[comp][a] = {}

                if options['verbose']:
                    print(f'Generating assembly', end='\r')

                p = get_assembler(TMP_CPP_FILE_NAME, f"test/asm/tmp/tmp{file_id}.s", compiler=comp, method=method, setup=target['setup'][a], default_options=options['flags'] == [], wait=False)
                files[p] = (f"test/asm/tmp/tmp{file_id}.s", comp, a)
                file_id += 1

        

        for i, j in files.items():
            i.wait()
            if method == 'objdump':
                objdump_process(j[0])

            file_asm = open(j[0])
            asm = file_asm.read()
            file_asm.close()

            for f, p in functions:
                if f not in res_dict[j[1]][j[2]].keys():
                    res_dict[j[1]][j[2]][f] = [{"type" : p, "instr" : extract_instructions(f, p, functions_names, asm, method=method, compiler=j[1])}]
                else:
                    res_dict[j[1]][j[2]][f].append({"type" : p, "instr" : extract_instructions(f, p, functions_names, asm, method=method, compiler=j[1])})



    # Temporary files 
    if not options['keep_tmp']:
        if options['performance']:
            for i in os.listdir(f"{const.root}/tmp"):
                os.remove(f"{const.root}/tmp/{i}")
            os.rmdir(f"{const.root}/tmp")
        else:
            clear_tmp()
    
    if options['verbose']:
        print(f'Generating assembly : {int(100 * it / nb_iter)}% done')

    return res_dict


if __name__ == '__main__':
    pass