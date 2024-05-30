import re
import os
import const
import time

TMP_CPP_FILE_NAME = "test/asm/tmp.cpp"
TMP_O_FILE_NAME = "test/asm/tmp.o"
TMP_ASM_FILE_NAME = "test/asm/tmp.txt"

# sse/sse2, ssse3/sse3, sse4 | AVX, AVX2

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




def extract_instructions(functionName:str, parameters:str, func_code_name:dict, asm:str):
    """Extracts assembly instructions from objdump files.

    Args:
        functionName (str): Name of the function to extract.
        parameters (str): Parameters types of the function.
        func_code_name (dict): Dictionary which associates extended names to "code names". 
        asm (str): Assembly str generated by objdump.

    Raises:
        Exception: If extended name is not found is func_code_name.
        Exception: If the function is not found in the assembly file.

    Returns:
        list: List with all assembly instructions.
    """
    
    new_name = function_extended_name(functionName, parameters)
    if new_name not in func_code_name.keys():
        raise Exception("ERROR : Invalid function identifiant")

    code_name = func_code_name[new_name]

    # extracts each instruction line (full line)
    asm = re.split('\n\n', asm)
    asm = [i for i in asm if f"func_{code_name}" in i]

    if asm == []:
        raise Exception(f"Function {code_name} not found in assembly")
 
    x = re.findall("[0-9a-f]+:\t[^\n\t]+\t[^\n]+", asm[0])

    # instructions list
    instr = []

    for i in x:
        # extract only the instruction name (without parameters)
        s = i.split('\t')
        s[2] = re.sub(' +', ' ', s[2])
        s = s[2].split(' ')
        if s[0] == 'ret':
            break
        
        if s[0] != "endbr64" and s[0] != "endbr32":
            if len(s) > 1 and s[1] != "":
                instr.append(s[0] + ' ' + s[1])
            else:
                instr.append(s[0])

    return instr





def get_assembler(input_path, output_path, arch, compiler='g++'):
    """Compile and disassemble cpp file

    Args:
        input_path (str): Path of the cpp file
        output_path (str): Path of the file containing objdump result
        arch (str): Architecture used for compilation
        compiler (str, optional): Compiler used for compilation. Defaults to 'g++'.
    """

    # Compile and desassemble
    os.system(f"{compiler} {input_path} -O3 {arch} -DNDEBUG -std=c++20 -I include/ -c -o {TMP_O_FILE_NAME}")
    os.system(f"objdump -d -j .text -C {TMP_O_FILE_NAME} > {output_path}")




def get_functions_instructions(functions : list, keep_tmp=False, architecture:list='all', compiler:list='all', verbose=False):
    """Returns assembly instructions for each architectures, compilers and functions. The result is stored in a dictionary DICT[COMPILER][ARCHITECTURE][FUNCTION]['type' or 'instr']

    Args:
        functions (list): List of tuples (function_name, parameters list) for each functions we want assembly.
        keep_tmp (bool, optional): If True, keeps temporary files after the process. Otherwise they are deleted. Defaults to False.
        architecture (list, optional): Architectures we want to get assembly program. If all it gets assembly for all architecture described in file `const`. Defaults to 'all'.
        compiler (list, optional): Compilers we want to get assembly program. If all it gets assembly for all compilers described in file `const`. Defaults to 'all'.
        verbose (bool, optional): Command line output (True/False). Defaults to False.

    Returns:
        Dict: Dictionary with assembly programs.
    """

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

    compilers = const.COMPILER.keys() if compiler == 'all' else compiler
    architectures = const.ARCH.keys() if architecture == 'all' else architecture

    nb_iter = len( compilers ) * len( architectures )
    it = 0

    for comp in compilers:
        res_dict[comp] = {}
        for a in architectures:
            res_dict[comp][a] = {}

            if verbose:
                os.system(const.clear_command)
                print(f'Generating assembly : {int(100 * it / nb_iter)}% done')

            get_assembler(TMP_CPP_FILE_NAME, TMP_ASM_FILE_NAME, const.ARCH[a], compiler=const.COMPILER[comp])

            it += 1

            file_asm = open(TMP_ASM_FILE_NAME)
            asm = file_asm.read()
            file_asm.close()

            for f, p in functions:

                if f not in res_dict[comp][a].keys():
                    res_dict[comp][a][f] = [{"type" : p, "instr" : extract_instructions(f, p, functions_names, asm)}]
                else:
                    res_dict[comp][a][f].append({"type" : p, "instr" : extract_instructions(f, p, functions_names, asm)})


    # Temporary files 
    if not keep_tmp:
        clear_tmp()
    
    if verbose:
        os.system(const.clear_command)
        print(f'Generating assembly : {int(100 * it / nb_iter)}% done')

    return res_dict


if __name__ == '__main__':
    pass