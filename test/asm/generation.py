import json
import extract_assembly
import const
import reader
import os


CONFIG_FILE = "test/asm/config.json"
STORE_FILE = "test/asm/functions.json"


def load_json(file_name:str):
    """Load json string from `STORE_FILE`

    Returns:
        str: Json file as string
    """
    try:
        f = open(file_name)
        t = f.read()
        f.close()
        return t
    except FileNotFoundError:
        f = open(file_name, 'x')
        f.close()
        return "{}"
    except Exception as e:
        raise (f"Error while loading {file_name} : {e}")



def save_json(destination_path, text:str):
    """Save json string in `STORE_FILE`

    Args:
        text (str): The string to save
    """
    try:
        f = open(destination_path, 'w')
        f.write(text)
        f.close()
    except Exception as e:
        raise Exception(f"Error while writing {destination_path} : {e}")


def update(input="all", output_directory=None, deep=False, keep_tmp=False, architecture=None, compiler=None, verbose=True):

    conf = reader.read_config_file(input)

    if output_directory == None:
        output_directory = f"{const.ref_path}/"

    functions = []
    for k in conf.keys():
        for typ in conf[k]:
            functions.append((k, typ))

    functions_assembly = extract_assembly.get_functions_instructions(functions, keep_tmp=keep_tmp, verbose=verbose, architecture=architecture, compiler=compiler)

    for comp in functions_assembly.keys():
        for arch in functions_assembly[comp].keys():
            for f in functions_assembly[comp][arch].keys():
                if not os.path.exists(f"{output_directory}{comp}/{arch}/{f}.json"):
                    load_json(f"{output_directory}{comp}/{arch}/{f}.json")
                elif load_json(f"{output_directory}{comp}/{arch}/{f}.json") == '{}' or deep:
                    dict_json = { "function" : f, "asm" : functions_assembly[comp][arch][f] }
                    
                    update_json = json.dumps(dict_json, indent=4)
                    save_json(f"{output_directory}{comp}/{arch}/{f}.json", update_json)

    if not verbose:
        print(f"Operation finished : functions saved")
    

if __name__ == '__main__':
    update(input='all', deep=True, keep_tmp=True, compiler=['gcc'], architecture=['sse'], verbose=False)