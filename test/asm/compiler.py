import os
import subprocess

TMP_CPP_FILE_NAME = "test/asm/tmp.cpp"
TMP_O_FILE_NAME = "test/asm/tmp.o"
TMP_ASM_FILE_NAME = "test/asm/tmp.s"

DEFAULT_COMPILER_OPTIONS = ['-O3', '-DNDEBUG', '-std=c++20', '-I', 'include/']




def get_assembler(input_path, output_path, compiler='g++', method='objdump', setup:str=None, default_options=False):
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
            p1 = subprocess.Popen([compiler, input_path, '-c', '-o', TMP_O_FILE_NAME] + DEFAULT_COMPILER_OPTIONS + setup, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        else:
            p1 = subprocess.Popen([compiler, input_path, '-c', '-o', TMP_O_FILE_NAME] + setup, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        p1.wait()
        if p1.returncode != 0:
            raise Exception("Compilation error : " + p1.stderr.read().decode()) 


        # {compiler} {input_path} -O3 {arch} -DNDEBUG -std=c++20 -I include/ -c -o {TMP_O_FILE_NAME} 
        f = open(output_path, 'w')
        p2 = subprocess.Popen(['objdump', '-d', '-j', '.text', '-C', TMP_O_FILE_NAME], stdout=f, stderr=subprocess.PIPE)
        f.close()
        p2.wait()
        if p2.returncode != 0:
            raise Exception("Compilation error : " + p2.stderr.read().decode()) 
        # objdump -d -j .text -C {TMP_O_FILE_NAME} > {output_path}
    else:
        if default_options:
            p1 = subprocess.Popen([compiler, '-S', input_path, '-o', output_path] + DEFAULT_COMPILER_OPTIONS + setup)
        else:
            p1 = subprocess.Popen([compiler, '-S', input_path, '-o', output_path] + setup)
        p1.wait()
        if p1.returncode != 0:
            raise Exception("Compilation error : " + p1.stderr.read().decode()) 
            

        # g++ --std=c++20 -O3 -S -I include/ {input_path} -o {output_path}





if __name__ == '__main__':
    print(check_compiler_options("test/asm/tmp.cpp", "test/asm/tmp.s", 'g++', 'gcc', "-msse", True))