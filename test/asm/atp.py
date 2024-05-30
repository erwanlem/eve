import sys
import generation
import files
import validation

"""
        Assembly Testing Program

This is the main file of the ATP.
ATP is a tool made for validating EVE assembly code output.

Until now, this tool can:
    - Read functions from config files and generate corresponding assembly program.
        - Config files are organized as described below:
            The directory `config` contains a file for each function.
            Each file contains the name of the function and the parameters it takes.

    - Validate instructions generated by the current version of EVE by comparing 
    them with instructions previously saved in functions.json

Calling asmTesting without any option starts the validation process.
Options are:
    - `-m archName`
    - `-l` log file
    - `-input file` select file
    - `-d` deep
    - `-t` keep temporary files
    - `-r` raises exceptions
    - `-g` generate assembly
    - `-c compiler` clang/g++
    - `-v` verbose
    - `-ref` reference path
    - `-reset` remove reference files
"""



def options_to_dict(options:list):
    """Get dictionary from args list

    Args:
        options (list): List of options given by os.argv. The first element of the list should be the name of the file.

    Raises:
        Exception: If option `-input` is not followed by files names
        Exception: If the option doesn't exist

    Returns:
       dict : dictionary with each option value
    """

    # Default values
    d = {
        "validate" : True,
        "log" : False,
        "arch" : "all",
        "deep" : False,
        "input" : 'all',
        "keep_tmp" : False,
        "generate" : False,
        "compiler" : "all",
        "exception" : False,
        "verbose" : False,
        "ref_path" : "test/asm/ref"
    }


    i = 1
    while i < len(options):
        if options[i] == '-m':
            lst = []
            while i+1 < len(options) and options[i+1][0] != '-':
                lst.append(options[i+1])
                i+=1
            if len(lst) == 0:
                raise Exception("Parameter missing for option -m")
            d['arch'] = lst
        elif options[i] == '-l':
            d['log'] = True
        elif options[i] == "-d":
            d['deep'] = True
        elif options[i] == '-t':
            d['keep_tmp'] = True
        elif options[i] == '-g':
            d['generate'] = True
            d['validate'] = False
        elif options[i] == '-c':
            lst = []
            while i+1 < len(options) and options[i+1][0] != '-':
                lst.append(options[i+1])
                i+=1
            if len(lst) == 0:
                raise Exception("Parameter missing for option -c")
            d['compiler'] = lst
        elif options[i] == '-v':
            d['verbose'] = True
        elif options[i] == '-r':
            d['exception'] = True
        elif options[i] == '-ref':
            d['ref_path'] = options[i+1]
            i+=1
        elif options[i] == '-reset':
            d['validate'] = False
            e = input("All reference files will be deleted, do you confirm ? (Y/n)")
            if e == 'Y':
                files.reset()
        elif options[i] == '-input':
            lst = []
            while i+1 < len(options) and options[i+1][0] != '-':
                lst.append(options[i+1])
                i+=1
            if len(lst) == 0:
                raise Exception("Parameter missing for option -input")
            d['input'] = lst
        else:
            raise Exception(f"Invalid option {options[i]}")
        i+=1

    return d




def main(options:dict):
    if options['generate']:
        generation.update(deep=options['deep'], keep_tmp=options['keep_tmp'], verbose=options['verbose'],architecture=options['arch'],compiler=options['compiler'], input=options['input'], output_directory=options['ref_path'])
    elif options['validate']:
        return validation.validate(log_file=options['log'], input=options['input'], verbose=options['verbose'], raise_exception=options['exception'], keep_tmp=options['keep_tmp'], references_path=options['ref_path'], compiler=options['compiler'], architecture=options['arch'])


if __name__ == '__main__':
    argv = sys.argv
    
    options = options_to_dict(argv)
    main(options)

    
