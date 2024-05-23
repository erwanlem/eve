import json
import extract_assembly
import datetime


CONFIG_FILE = "test/asm/config.json"
STORE_FILE = "test/asm/functions.json"


def load_json():
    """Load json string from `STORE_FILE`

    Returns:
        str: Json file as string
    """
    try:
        f = open(STORE_FILE)
        t = f.read()
        f.close()
        return t
    except FileNotFoundError:
        f = open(STORE_FILE, 'x')
        f.close()
        return "{}"
    except Exception as e:
        raise (f"Error while loading {STORE_FILE} : {e}")



def load_config():
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



def save_json(new_conf:str):
    """Save json string in `STORE_FILE`

    Args:
        new_conf (str): The string to save
    """
    try:
        f = open(STORE_FILE, 'w')
        f.write(new_conf)
        f.close()
    except Exception as e:
        raise (f"Error while writing {STORE_FILE} : {e}")



def update(deep=False, keep_tmp=False):
    """Update functions in `STORE_FILE` using conguration saved in `CONFIG FILE`

    Args:
        deep (bool, optional): If `True` each function is update, even though it was already saved.
         If `False` only unsaved functions are append, the other ones don't change. Defaults to False.
    """
    conf = load_config()
    confDict = json.loads(conf)

    functions = [(k, confDict[k]) for k in dict.keys(confDict)]

    functions_assembly = extract_assembly.get_functions_instructions(functions, keep_tmp=keep_tmp)

    file = load_json()
    jsonDict = json.loads(file)
    k = dict.keys(jsonDict)

    new_f = 0
    for f in dict.keys(functions_assembly):
        if deep or f not in k:
            jsonDict[f] = {'date' : str(datetime.datetime.today()), 'instr' : functions_assembly[f]}
            new_f += 1

    update_json = json.dumps(jsonDict, indent=4, sort_keys=True)
    save_json(update_json)
    print(f"Operation finished : {new_f} functions saved")

if __name__ == '__main__':
    update(deep=False, keep_tmp=False)