import json
import extract_assembly
import const
import reader
import os
import files


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
    try:
        f = open(destination_path, 'w')
        f.write(text)
        f.close()
    except Exception as e:
        raise Exception(f"Error while writing {destination_path} : {e}")






def update(input="all", output_directory=None, deep=False, keep_tmp=False, architecture='all', compiler='all', verbose=False):
    """Function to generate and store assembly code

    Args:
        input (str | list, optional): List of config file names used for the generation. If `all` it gets all the files in `config`. Defaults to "all".
        output_directory (str, optional): The path of the directory where we store references. Defaults to None.
        deep (bool, optional): If True it replaces files even though they already exist. Otherwise it only creates files that doesn't already exist. Defaults to False.
        keep_tmp (bool, optional): If True it keeps temporary files. Otherwise they are deleted after the process. Defaults to False.
        architecture (str | list, optional): Architectures used for the generation. If `all` it generates for all architectures stored in `const.py`. Defaults to 'all'.
        compiler (str | list, optional): Compilers used for the generation. If `all` it generates for all compilers stored in `const.py`. Defaults to 'all'.
        verbose (bool, optional): Command line output activated (True/False). Defaults to False.

    Returns:
        int: 0 if the process finished successfully, -1 if an error occured.
    """

    files.build_reference_directories(folder=output_directory)

    conf = reader.read_config_file(input)

    if output_directory == None:
        output_directory = f"{const.ref_path}"

    functions = []
    for k in conf.keys():
        for typ in conf[k]:
            functions.append((k, typ))

    functions_assembly = extract_assembly.get_functions_instructions(functions, keep_tmp=keep_tmp, verbose=verbose, architecture=architecture, compiler=compiler)

    for comp in functions_assembly.keys():
        for arch in functions_assembly[comp].keys():
            for f in functions_assembly[comp][arch].keys():
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
    

if __name__ == '__main__':
    update(input='all', deep=True, keep_tmp=True, compiler=['gcc'], architecture=['sse'], verbose=False)