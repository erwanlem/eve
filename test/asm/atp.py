import sys
import generation
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
    - `-g` : Generate functions assembly. Functions that are not stored in functions.json are append.
    - `-d` : Deep update -- Functions are replaced in functions.json even though they were already in.
    - `-t` : Keep temporary files after processing
    - `-l` : Validation log file
    - `-s` : Select validation target. By default all functions are validated

    New options
    - `-m archName`
    - `-l` log file
    - `-input file` select file
    - `-d` deep
    - `-t` keep temporary files
    - `-r` raises exceptions
    - `-g` generate assembly
    - `-c compiler` clang/g++ 
"""



def options_to_dict(options:list):
    """Get dictionary from args list

    Args:
        options (list): List of options given by os.argv. The first element of the list should be the name of the file.

    Raises:
        Exception: If option `-input` is not followed by files names
        Exception: If the option doesn't exist

    Returns:
        : _description_
    """

    # Default values
    d = {
        "log" : False,
        "arch" : "",
        "deep" : False,
        "input" : 'all',
        "keep_tmp" : False,
        "generate" : False,
        "compiler" : "g++",
        "exception" : False,
        "verbose" : False
    }


    i = 1
    while i < len(options):
        if options[i] == '-m':
            d['arch'] = options[i+1]
            i+=1
        elif options[i] == '-l':
            d['log'] = True
        elif options[i] == "-d":
            d['deep'] = True
        elif options[i] == '-t':
            d['keep_tmp'] = True
        elif options[i] == '-g':
            d['generate'] = True
        elif options[i] == '-c':
            d['compiler'] = options[i+1]
            i+=1
        elif options[i] == '-v':
            d['verbose'] = True
        elif options[i] == '-r':
            d['exception'] = True
        elif options[i] == '-input':
            lst = []
            i += 1
            while i < len(options) and options[i][0] != '-':
                lst.append(options[i])
                i+=1
            if len(lst) == 0:
                raise Exception("Parameter missing for option -input")
            d['input'] = lst
        else:
            raise Exception(f"Invalid option {options[i]}")
        i+=1

    return d



if __name__ == '__main__':
    argv = sys.argv
    
    options = options_to_dict(argv)


    if options['generate']:
        generation.update(deep=options['deep'], keep_tmp=options['keep_tmp'], verbose=options['verbose'])
    else:
        validation.validate(log_file=options['log'], input=options['input'], raise_exception=options['exception'], keep_tmp=options['keep_tmp'])
