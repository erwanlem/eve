import json
import extract_assembly
import const
import reader


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



def load_config(file_name):
    """Load json string from `CONFIG_FILE`

    Returns:
        str: Json file as string
    """
    try:
        f = open(CONFIG_FILE)
        t = f.read()
        f.close()
        return t
    except FileNotFoundError:
        f = open(CONFIG_FILE, 'x')
        f.close()
        return "{}"
    except Exception as e:
        raise (f"Error while loading {CONFIG_FILE} : {e}")



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


def update(input="all", deep=False, keep_tmp=False):
    """Update functions in `STORE_FILE` using confuration saved in `CONFIG FILE`

    Args:
        deep (bool, optional): If `True` each function is update, even though it was already saved.
         If `False` only unsaved functions are append, the other ones don't change. Defaults to False.
    """
    conf = reader.read_config_file(input)

    functions = []
    for k in conf.keys():
        for typ in conf[k]:
            functions.append((k, typ))

    print(functions)

    functions_assembly = extract_assembly.get_functions_instructions(functions, keep_tmp=keep_tmp)

    for comp in functions_assembly.keys():
        for arch in functions_assembly[comp].keys():
            for f in functions_assembly[comp][arch].keys():
                file = load_json(f"{const.ref_path}{comp}/{arch}/{f}.json")
                
                update_json = json.dumps(functions_assembly[comp][arch][f], indent=4, sort_keys=True)
                save_json(f"{const.ref_path}{comp}/{arch}/{f}.json", update_json)

    new_f = 0

    print(f"Operation finished : functions saved")
    

if __name__ == '__main__':
    update(input='abs.json', deep=True, keep_tmp=True)