import re
import os
import const
import time

TMP_CPP_FILE_NAME = "test/asm/tmp.cpp"
TMP_O_FILE_NAME = "test/asm/tmp.o"
TMP_ASM_FILE_NAME = "test/asm/tmp.txt"

# sse/sse2, ssse3/sse3, sse4 | AVX, AVX2

CPP_FLAGS = "-msse" #"-msse2" # "-march=skylake-avx512"


def generate_function(funcName:str, parameters:list):

    """Append function code to `TMP_CPP_FILE_NAME` file.

    If the file does not exist, it is created otherwise it appends code
    at the end of the existing file.

    Args:
        funcName (str): The name of the function we generate
        values (dict): Dictionary containing settings for the generation

    Returns:
        None
    """

    # Generation of the parameters
    formal_param = ""
    real_param = ""

    for i in range(0, len(parameters)):
        if i == len(parameters)-1:
            formal_param += f"eve::wide<{parameters[i]}> a{i}"
            real_param += f"a{i}"
        else:
            formal_param += f"eve::wide<{parameters[i]}> a{i}, "
            real_param += f"a{i}, "

    # Code of the temporary function
    code = f"auto func_{funcName}(" + formal_param + """) {
    return eve::""" + funcName + "(" + real_param + """);
}\n"""

    return code



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

    if asm == []:
        raise Exception(f"Function {functionName} not found in assembly")
 
    x = re.findall("[0-9a-f]+:\t[^\n\t]+\t[^\n]+", asm[0])

    # instructions list
    instr = []

    for i in x:
        # extract only the instruction name (without parameters)
        s = i.split('\t')
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
    # Compile and desassemble
    os.system(f"{compiler} {input_path} -O3 {arch} -std=c++20 -I include/ -c -o tmp.o")
    os.system(f"objdump -d -j .text -C tmp.o > {output_path}")




def get_functions_instructions(functions : list, keep_tmp=False, debug=False):
    """ Returns assembly instructions of the given functions

    Args:
        functions (list): List of tuples (func_name, parameters_nb)
        keep_tmp (bool, optional): If true keeps temporary files. Defaults to False.

    Returns:
        dict: A dictionary containing instructions for each function
    """

    clear_tmp()

    full_code = "#include <eve/module/core.hpp>\n\n"
    res_dict = {}

    for f, p in functions:
        full_code += generate_function(f, p)

    # Write code in tmp.cpp
    tmp = open(TMP_CPP_FILE_NAME, 'x')
    tmp.write(full_code)
    tmp.close()

    nb_iter = len( const.COMPILER.keys() ) * len( const.ARCH.keys() )
    it = 0

    for comp in const.COMPILER.keys():
        res_dict[comp] = {}
        for a in const.ARCH.keys():
            res_dict[comp][a] = {}

            if debug:
                os.system(const.clear_command)
                print(f'Generating assembly : {int(100 * it / nb_iter)}% done')

            get_assembler(TMP_CPP_FILE_NAME, TMP_ASM_FILE_NAME, const.ARCH[a], compiler=const.COMPILER[comp])

            it += 1

            file_asm = open(TMP_ASM_FILE_NAME)
            asm = file_asm.read()

            for f, p in functions:

                if f not in res_dict[comp][a].keys():
                    res_dict[comp][a][f] = [{"type" : p, "instr" : extract_instructions(f, asm)}]
                else:
                    res_dict[comp][a][f].append({"type" : p, "instr" : extract_instructions(f, asm)})
            
    if not keep_tmp:
        clear_tmp()
    
    if debug:
        os.system(const.clear_command)
        print(f'Generating assembly : {int(100 * it / nb_iter)}% done')

    #print(res_dict)
    return res_dict


if __name__ == '__main__':
    pass