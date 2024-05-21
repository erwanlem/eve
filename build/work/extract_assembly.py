import re
import os

TMP_CPP_FILE_NAME = "build/work/tmp.cpp"
TMP_O_FILE_NAME = "build/work/tmp.o"
TMP_ASM_FILE_NAME = "build/work/tmp.txt"


def generate_function(funcName:str, parameters:int):

    """Append function code to `TMP_CPP_FILE_NAME` file.

    If the file does not exist, it is created otherwise it appends code
    at the end of the existing file.

    Args:
        funcName (str): The name of the function we generate
        parameters (int): The number of parameters of the function

    Returns:
        None
    """

    if os.path.exists(TMP_CPP_FILE_NAME):
        tmp = open(TMP_CPP_FILE_NAME, 'a')
    else:
        tmp = open(TMP_CPP_FILE_NAME, 'x')

    # Parameters type of the generated function
    param_type = "signed char"

    # Generation of the parameters
    formal_param = ""
    real_param = ""

    for i in range(0, parameters):
        if i == parameters-1:
            formal_param += f"eve::wide<{param_type}> a{i}"
            real_param += f"a{i}"
        else:
            formal_param += f"eve::wide<{param_type}> a{i}, "
            real_param += f"a{i}, "

    # Code of the temporary function
    code = f"auto func_{funcName}(" + formal_param + """) {
    return eve::""" + funcName + "(" + real_param + """);
}\n"""

    tmp.write(code) # write code in TMP_FILE_NAME
    tmp.close()




def clear_tmp():
    """
    Remove all temporary files
    """

    if os.path.exists(TMP_CPP_FILE_NAME):
        os.system(f"rm {TMP_CPP_FILE_NAME}")
    if os.path.exists(TMP_O_FILE_NAME):
        os.system(f"rm {TMP_O_FILE_NAME}")
    if os.path.exists(TMP_ASM_FILE_NAME):
        os.system(f"rm {TMP_ASM_FILE_NAME}")




def extract_instructions(functionName:str, asm:str):
    """Function to extract assembly instructions from string.
    Input string must be generated by objdump.

    Args:
        functionName (str): The name of the function to extract
        asm (str): Objdump desassemble output file

    Returns:
        str list: instructions list
    """

    # extracts each instruction line (full line)
    asm = re.split('\n\n', asm)
    asm = [i for i in asm if f"func_{functionName}" in i]
 
    x = re.findall("[0-9a-f]+:\t[^\n\t]+\t[^\n]+", asm[0])

    # instructions list
    instr = []

    for i in x:
        # extract only the instruction name (without parameters)
        s = str.split(i, '\t')
        instr.append(str.split(s[2], ' ')[0])

    result = []

    # remove useless instructions
    if 'endbr64' in instr:
        instr.remove('endbr64')
    if 'endbr32' in instr:
        instr.remove('endbr32')
    
    i = 0
    while instr[i] != 'ret':
        result.append(instr[i])
        i += 1

    return result





def get_functions_instructions(functions : list, keep_tmp=False):
    """ Returns assembly instructions of the given functions

    Args:
        functions (list): List of tuples (func_name, parameters_nb)
        keep_tmp (bool, optional): If true keeps temporary files. Defaults to False.

    Returns:
        dict: A dictionary containing instructions for each function
    """

    clear_tmp()
    tmp = open(TMP_CPP_FILE_NAME, 'x')
    tmp.write("#include <eve/module/core.hpp>\n\n")
    tmp.close()

    res_dict = {}

    for f, p in functions:
        generate_function(f, p)
        os.system(f"g++ {TMP_CPP_FILE_NAME} -O3 -std=c++20 -I include/ -c -o {TMP_O_FILE_NAME}")
        os.system(f"objdump -d -j .text -C {TMP_O_FILE_NAME} > {TMP_ASM_FILE_NAME}")

        file_asm = open(TMP_ASM_FILE_NAME)
        asm = file_asm.read()

    for f, p in functions:
        res_dict[f] = extract_instructions(f, asm)
    
    if not keep_tmp:
        clear_tmp()

    return res_dict