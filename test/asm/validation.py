from generation import *
import json
import os

LOG_PATH = "test/asm/log.txt"


class AssemblyMismatch(Exception):
    """Assembly mismatch exception.
    This exception is raised when a saved instructions differ from current instructions

    Args:
        Exception (str): Expected instructions (with date of the last update) and actual instructions
    """
    def __init__(self, f, expected, actual, last_update, difference, *args: object) -> None:
        super().__init__(*args)
        self.function = f
        self.expected = expected
        self.actual = actual
        self.last_update = last_update
        self.difference = difference

    def format_instructions(self, instr):
        s = ""
        for i in instr:
            s = s + '\t' + i + '\n'
        return s

    def __str__(self) -> str:
        s1 = f'-------------------------------------------------\nAssembly mismatch with function : {self.function}\n\n'

        if len(self.expected) < 10:
            s2 = f'Expecting (saved {self.last_update}):\n' + self.format_instructions(self.expected) + '\n'
            s3 = 'Got:\n' + self.format_instructions(self.actual)
        else:
            s2 = f'Instruction {self.difference + 1}\nExpecting {self.expected[self.difference]}\n\n'
            s3 = f'Got {self.actual[self.difference]}'

        return s1 + s2 + s3



def first_difference(l1 : list, l2 : list):
    """Get the index of the first element that is not the same in the two lists.
    If list are the same, returns -1. If the two lists have different sizes, output is undefined.

    Args:
        l1 (list): First list
        l2 (list): Second list

    Returns:
        int: Index of the first different instances
    """
    for i in range(0, min(len(l1), len(l2))):
        if l1[i] != l2[i]:
            return i
    return -1



def get_reference_functions(select='all'):

    funcDict = {}

    for c in os.listdir(f"{const.ref_path}"):
        funcDict[c] = {}
        for a in os.listdir(f"{const.ref_path}/{c}"):
            
            if select == 'all':
                funcDict[c][a] = {}
                for f in os.listdir(f"{const.ref_path}/{c}/{a}"):
                    file = load_json(f"{const.ref_path}/{c}/{a}/{f}")
                    funcInstr = json.loads(file)
                    funcDict[c][a][f] = funcInstr
            else:
                funcDict[c][a] = {}
                f = load_json(f"{const.ref_path}/{c}/{a}/{select}.json")
                funcInstr = json.loads(f)
                funcDict[c][a][select] = funcInstr

    return funcDict



def log_string(f:str, expected:list, actual:list, save_date:str):
    """Generates a fromatted string describing errors on a function.\n
    This formatted string is used for log file.

    Args:
        f (str): Function name
        expected (list): List of expected instructions
        actual (list): List of actual instructions
        save_date (str): Date of the last update of the function

    Returns:
        str: Fromatted string
    """

    s = f'-----------------------------\nFunction {f}\n'
    s += f'Previous save : {save_date}\n\n\n\tExpected\tActual\n\n'
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



def validate(select='all', raise_exception=False, log_file=False):
    """Checks if instructions generated by current version of eve library 
    correspond to saved instructions

    Args:
        select (list, optional): If `all`, checks all functions, otherwise checks only selected function. Defaults to 'all'.
        raise_exception (bool, optional): If `True` raises exception that will interrupt the execution, otherwise 
        prints error and returns False. Defaults to False.
        log_file (bool, optional): If `True` generates a log file. Defaults to False.

    Raises:
        AssemblyMismatch: If raise_exception=True and new assembly differs from saved assembly this exception is raised

    Returns:
        bool: `True` if new instructions correspond to saved instructions, otherwise `False`
    """
    conf = load_config()
    confDict = json.loads(conf)

    functions = [(k, confDict[k]) for k in dict.keys(confDict)]
    functions_assembly = extract_assembly.get_functions_instructions(functions, keep_tmp=False)

    validationSet = get_reference_functions(select=select)

    ret = 0

    log = "" # log file str

    validation_keys = dict.keys(functions_assembly) # Functions to validate

    # Validation of only selected functions
    if select != 'all':
        if type(select) != list:
            select = [select]
        for f in select:
            if f not in dict.keys(functions_assembly):
                raise Exception("Invalid select arg: Selected names must be existing functions")
        validation_keys = select
        
    # Validation of all functions
    for k in validation_keys:
        if functions_assembly[k] != validationSet[k]['instr']:
            diff = first_difference(functions_assembly[k], validationSet[k]['instr'])
            if raise_exception:
                raise AssemblyMismatch(k, validationSet[k]['instr'], functions_assembly[k], validationSet[k]['date'], diff)
            else:
                e = AssemblyMismatch(k, validationSet[k]['instr'], functions_assembly[k], validationSet[k]['date'], diff)
                print(e.__str__())
                ret = -1
            if log_file:
                log += log_string(k,  validationSet[k]['instr'], functions_assembly[k], validationSet[k]['date'])
    
    # Log file optional
    if log_file and log != "":
        if os.path.exists(LOG_PATH):
            file = open(LOG_PATH, 'w')
        else:
            file = open(LOG_PATH, 'x')
        file.write(log)
        file.close()
        
    return ret


if __name__ == '__main__':
    #validate(log_file=True)
    print(get_reference_functions(select='abs'))