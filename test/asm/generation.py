import json
import instructions as instructions
import const
import reader
import os
import time


CONFIG_FILE = "test/asm/config.json"
STORE_FILE = "test/asm/functions.json"




def save_json(destination_path:str, text:str):
    """Save string in a file.

    Args:
        destination_path (str): Path to save file.
        text (str): File content.

    Raises:
        Exception: Raised when error occured while writing the file.
    """
    if not os.path.exists(destination_path):
        try:
            f = open(destination_path, 'x')
            f.write(text)
            f.close()
        except Exception as e:
            raise Exception(f"Error while writing {destination_path} : {e}")
    else:
        try:
            f = open(destination_path, 'w')
            f.write(text)
            f.close()
        except Exception as e:
            raise Exception(f"Error while writing {destination_path} : {e}")


def update(flags=[], conf={}, output_directory=None, deep=False, keep_tmp=False, verbose=False, method='objdump'):
    """Generate and store assembly code

    Args:
        flags (list, optional): Compilation flags. Defaults to [].
        conf (dict, optional): Configuration with all information about compilation targets. Defaults to {}.
        output_directory (str, optional): Path of the output directory. Defaults to None.
        deep (bool, optional): If true, it replaces references files even though they already exist. Otherwise they are not changed even though the content is not the same. Defaults to False.
        keep_tmp (bool, optional): If `True` temporary files are not removed after the process. Defaults to False.
        verbose (bool, optional): Diplay information in the command line. Defaults to False.
        method (str, optional): Define how assembly is generated. Values are `objdump` or `standard`. Defaults to 'objdump'.

    Returns:
        int: 0
    """

    if output_directory == None:
        output_directory = f"{const.ref_path}"

    functions = []
    for k in conf.keys():
        for typ in conf[k]:
            functions.append((k, typ))

    functions_assembly = instructions.get_functions_instructions(functions, flags, keep_tmp=keep_tmp, verbose=verbose, method=method)

    for comp in functions_assembly.keys():
        for arch in functions_assembly[comp].keys():
            for f in functions_assembly[comp][arch].keys():
                try:
                    os.makedirs(f"{output_directory}/{comp}/{arch}")
                except FileExistsError:
                    pass

                if not os.path.exists(f"{output_directory}/{comp}/{arch}/{f}.json"):
                    file = open(f"{output_directory}/{comp}/{arch}/{f}.json", 'x')
                    file.close()
                    dict_json = { "function" : f, "asm" : functions_assembly[comp][arch][f] }
                    update_json = json.dumps(dict_json, indent=4)
                    save_json(f"{output_directory}/{comp}/{arch}/{f}.json", update_json)
                elif reader.load_json(f"{output_directory}/{comp}/{arch}/{f}.json") == '' or reader.load_json(f"{output_directory}/{comp}/{arch}/{f}.json") == '{}' or deep:
                    dict_json = { "function" : f, "asm" : functions_assembly[comp][arch][f] }
                    
                    update_json = json.dumps(dict_json, indent=4)
                    save_json(f"{output_directory}/{comp}/{arch}/{f}.json", update_json)

    if verbose:
        print(f"Operation finished : functions saved")

    return 0
    


def generate(flags=[], input="all", output_directory=None, deep=False, keep_tmp=False, verbose=False, method='objdump', max_function_files='inf'):
    """Auxiliary function for generation. This function limits the function per file for compilation.

    Args:
        flags (list, optional): Compilation flags. Defaults to [].
        conf (dict, optional): Configuration with all information about compilation targets. Defaults to {}.
        output_directory (str, optional): Path of the output directory. Defaults to None.
        deep (bool, optional): If true, it replaces references files even though they already exist. Otherwise they are not changed even though the content is not the same. Defaults to False.
        keep_tmp (bool, optional): If `True` temporary files are not removed after the process. Defaults to False.
        verbose (bool, optional): Diplay information in the command line. Defaults to False.
        method (str, optional): Define how assembly is generated. Values are `objdump` or `standard`. Defaults to 'objdump'.
        max_function_files (str, optional): The maximum number of function in a cpp file. A function is one config file (it can generate more than one if there are several\
              parameters configuration). Defaults to 'inf'.
    """


    t1 = time.time()


    conf = reader.read_config_file(input)

    if max_function_files == 'inf' or len(list(conf.keys())) < max_function_files:
        update(flags, conf, output_directory, deep, keep_tmp, verbose, method)
    else:
        conf2 = {}
        i = 0
        for k in conf.keys():
            if i == max_function_files:
                print(conf2)
                update(flags, conf2, output_directory, deep, keep_tmp, verbose, method)
                conf2 = {}
                i = 0
            conf2[k] = conf[k]
            i+=1

    if verbose:
        print("Process duration: " + str(round(time.time()-t1, 2)) + "s")


if __name__ == '__main__':
    update(input='all', deep=True, keep_tmp=True, compiler=['gcc'], architecture=['sse'], verbose=False)