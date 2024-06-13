import subprocess
import os
import const

TMP_CPP_FILE_NAME = f"{const.root}/tmp.cpp"
TMP_O_FILE_NAME = f"{const.root}/tmp/tmp.o"
TMP_ASM_FILE_NAME = f"{const.root}/tmp/tmp.s"

DEFAULT_COMPILER_OPTIONS = ['-O3', '-DNDEBUG', '-std=c++20', '-I', 'include/']



def objdump_process(output_path, tmp_o_file=TMP_O_FILE_NAME):
    if not os.path.exists(output_path):
        f = open(output_path, 'x')
    else:
        f = open(output_path, 'w')
    
    p2 = subprocess.Popen(['objdump', '-d', '-j', '.text', '-C', tmp_o_file], stdout=f, stderr=subprocess.PIPE)
    f.close()
    p2.wait()
    if p2.returncode != 0:
        raise Exception("Compilation error : " + p2.stderr.read().decode()) 



def get_assembler(input_path, output_path, compiler='g++', method='objdump', setup:str=None, default_options=False, wait=True, tmp_o_file=TMP_O_FILE_NAME):
    """Compile and disassemble cpp file.

    Args:
        input_path (str): Path of the cpp file.
        output_path (str): Path of the file containing objdump result.
        compiler (str, optional): Compiler used for compilation. Defaults to 'g++'.
        method (str, optional): Defines the disassembling method. Values are `objdump` or `gcc`.
        setup (str, optional): Simd extension options. Defaults to None.
        default_options (bool, optional): If True default options are append for compilation. Defaults to False.

    Raises:
        Exception: If a compilation error occured (mostly because of the options).
    """

    if type(setup) == str:
        setup = [setup]
 
    if method == 'objdump':
        if default_options:
            p1 = subprocess.Popen([compiler, input_path, '-c', '-o', tmp_o_file] + DEFAULT_COMPILER_OPTIONS + setup, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        else:
            p1 = subprocess.Popen([compiler, input_path, '-c', '-o', tmp_o_file] + setup, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        if wait:
            p1.wait()
            if p1.returncode != 0:
                raise Exception("Compilation error : " + p1.stderr.read().decode())
            objdump_process(output_path)
        else:
            return p1

    else:
        if default_options:
            p1 = subprocess.Popen([compiler, '-S', input_path, '-o', output_path] + DEFAULT_COMPILER_OPTIONS + setup)
        else:
            p1 = subprocess.Popen([compiler, '-S', input_path, '-o', output_path] + setup)

        if wait:
            p1.wait()
            if p1.returncode != 0:
                raise Exception("Compilation error : " + p1.stderr.read().decode())
        else:
            return p1
            




if __name__ == '__main__':
    pass
