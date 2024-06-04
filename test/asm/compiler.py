import os
import subprocess

TMP_CPP_FILE_NAME = "test/asm/tmp.cpp"
TMP_O_FILE_NAME = "test/asm/tmp.o"
TMP_ASM_FILE_NAME = "test/asm/tmp.s"

DEFAULT_COMPILER_OPTIONS = ['-O3', '-DNDEBUG', '-std=c++20', '-I', 'include/']



def get_assembler(input_path, output_path, flags:list, compiler='g++', method='objdump', arch:str=None):
    """Compile and disassemble cpp file

    Args:
        input_path (str): Path of the cpp file
        output_path (str): Path of the file containing objdump result
        arch (str): Architecture used for compilation
        compiler (str, optional): Compiler used for compilation. Defaults to 'g++'.
        method (str, optional): Defines the disassembling method. Values are `objdump` or `gcc`.
    """

    if method == 'objdump':
        if flags != []:
            subprocess.run([compiler, input_path, '-c', '-o', TMP_O_FILE_NAME] + flags)
        else:
            subprocess.run([compiler, input_path, '-c', '-o', TMP_O_FILE_NAME] + DEFAULT_COMPILER_OPTIONS + arch)
        #p1 = subprocess.run([compiler, input_path, '-O3', arch, '-DNDEBUG', '-std=c++20', '-I', 'include/', '-c', '-o', TMP_O_FILE_NAME])
        #os.system(f"{compiler} {input_path} -O3 {arch} -DNDEBUG -std=c++20 -I include/ -c -o {TMP_O_FILE_NAME}")
        f = open(output_path, 'w')
        p2 = subprocess.run(['objdump', '-d', '-j', '.text', '-C', TMP_O_FILE_NAME], stdout=f)
        f.close()
        #os.system(f"objdump -d -j .text -C {TMP_O_FILE_NAME} > {output_path}")
    else:
        if flags != []:
            subprocess.run([compiler, '-S', input_path, '-o', output_path] + flags)
        else:
            subprocess.run([compiler, '-S', input_path, '-o', output_path] + DEFAULT_COMPILER_OPTIONS + arch)
        #os.system(f"g++ --std=c++20 -O3 -S -I include/ {input_path} -o {output_path}")





if __name__ == '__main__':
    pass