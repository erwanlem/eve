from generation import *
import json
import os
import reader
import files

LOG_PATH = "test/asm/log.txt"


class AssemblyMismatch(Exception):
    """Assembly mismatch exception

    Args:
        Exception (str, str, str, list, list): Raised when -r option is True.
    """
    def __init__(self, function:str, compiler:str, arch:str, expected:list, actual:list, *args: object) -> None:
        super().__init__(*args)
        self.function = function
        self.compiler = compiler
        self.arch = arch
        self.expected = expected
        self.actual = actual

    def format_instructions(self, instr):
        s = ""
        for i in instr:
            s = s + '\t' + i['instr'] + '\n'
        return s

    def __str__(self) -> str:
        print(self.actual)
        print(self.expected)
        s0 = f'-------------------------------------------------\nAssembly mismatch with function : {self.function}\n\n'
        s1 = f'Compiler : {self.compiler}\nArchitecture : {self.arch}\n'
        #s2 = 'Expecting :\n' + self.format_instructions(self.expected) + '\n'
        #s3 = 'Got:\n' + self.format_instructions(self.actual) + '\n'

        return s0 + s1 #+ s2 + s3



def log_unmatched_instruction(function:str, compiler:str, arch:str, types:list, expected:list, actual:list):
    """Format function for the log file.

    Args:
        function (str): Function name.
        compiler (str): Compiler name.
        arch (str): Architecture name.
        types (list): List of parameters types.
        expected (list): List of expected assembly.
        actual (list): List of actual assembly.

    Returns:
        str: Log string.
    """

    s = f'-----------------------------\nFunction : {function}\nCompiler : {compiler}\nArchitecture : {arch}\n'
    s += f'Parameters : {" ".join(types)}\n'
    s += f'\n\n\tExpected\tActual\n\n'
    for i in range(0, max(len(expected), len(actual))):
        if len(expected) <= i:
            s += f'--> ____ \t--> {actual[i]}\n'
        elif len(actual) <= i:
            s += f'--> {expected[i]} \t--> ____\n'
        else:
            if expected[i] != actual[i]:
                s += f'--> {expected[i]}\t--> {actual[i]}\n'
            else:
                s += f'\t{expected[i]}\t{actual[i]}\n'

    return s + '\n\n\n'


def log_undefined_reference(function:str, compiler:str, architecture:str):
    """Format undefined reference error for log file. 

    Args:
        function (str): Function name.
        compiler (str): Compiler name.
        architecture (str): Architecture name.

    Returns:
        str: Log string.
    """

    s = f'-----------------------------\nUndefined reference for function {function}\nCompiler : {compiler}\nArchitecture : {architecture}\n'
    s1 = "\nThis function has not been tested. Try generating reference using option -g\n\n"
    return s + s1


def validate(input='all', raise_exception=False, log_file=False, keep_tmp=False, compiler='all', architecture='all', verbose=False, references_path="test/asm/ref"):
    """Validation function. Generates assembly for the current library version and compares it with reference assembly.

    Args:
        input (str, optional): List of config file names used for validation. Names must exist in `config` directory. If `all` it gets all the files in `config`. Defaults to 'all'.
        raise_exception (bool, optional): If True it raises an exception that interrupts the process when assembly mismatch occured. Defaults to False.
        log_file (bool, optional): If True it generates log file at the end of the process if errors occured. Defaults to False.
        keep_tmp (bool, optional): If True it keeps temporary files. Otherwise they are deleted after the process. Defaults to False.
        compiler (list, optional): Compilers used for validation. If `all` it takes all compilers defined in `const.py`. Defaults to 'all'.
        architecture (list, optional): Architectures used for validation. If `all` it takes all architectures defined in `const.py`. Defaults to 'all'.
        verbose (bool, optional): Command line output (True/False). Defaults to False.
        references_path (str, optional): Path of the reference directory. Defaults to "test/asm/ref".

    Raises:
        AssemblyMismatch: Raised when raise_exception is True.

    Returns:
        int: 0 if process finished without errors, otherwise -1.
    """

    files.build_reference_directories(folder=references_path)

    conf = reader.read_config_file(input)

    functions = []
    for k in conf.keys():
        for typ in conf[k]:
            functions.append((k, typ))

    functions_assembly = extract_assembly.get_functions_instructions(functions, keep_tmp=keep_tmp, architecture=architecture, compiler=compiler)
    
    validation_set = reader.read_reference_files(input, path=references_path)
    
    ret = 0
    errors = 0
    log_txt = ""

    compilers = const.COMPILER.keys() if compiler == 'all' else compiler
    architectures = const.ARCH.keys() if architecture == 'all' else architecture

    for f in conf.keys():
        for c in compilers:
            for a in architectures:
                if f not in validation_set[c][a].keys():
                    log_txt += log_undefined_reference(f, c, a)
                    if verbose:
                        print(f"**WARNING** - Function {f} not found in references (comp {c}, arch {a}). Try generating using option -g.")
                    ret = -1
                elif not functions_assembly[c][a][f] == validation_set[c][a][f]:
                    for i in range(0, min(len(functions_assembly[c][a][f]), len(validation_set[c][a][f]))):
                        if functions_assembly[c][a][f][i] != validation_set[c][a][f][i]:
                            errors += 1
                            if raise_exception:
                                raise AssemblyMismatch(f, c, a, validation_set[c][a][f][i]['type'], validation_set[c][a][f][i]['instr'], functions_assembly[c][a][f][i]['instr'])
                            log_txt += log_unmatched_instruction(f, c, a, validation_set[c][a][f][i]['type'], validation_set[c][a][f][i]['instr'], functions_assembly[c][a][f][i]['instr'])
                    ret = -1

    # Log file optional
    if log_file and log_txt != "":
        if os.path.exists(LOG_PATH):
            file = open(LOG_PATH, 'w')
        else:
            file = open(LOG_PATH, 'x')
        file.write(log_txt)
        file.close()

    if verbose:
        print(f"Process finished : {errors} mismatching function(s) found")

    return ret


if __name__ == '__main__':
    print(validate(input='all', log_file=True, raise_exception=True, keep_tmp=True))