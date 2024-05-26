import os
import json

## This file aims to read json files and extract information from them

def load_json(file_name:str, create_if_not_found=False):
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
        if create_if_not_found:
            f = open(file_name, 'x')
            f.close()
            return "{}"
        else:
            raise FileNotFoundError
    except Exception as e:
        raise (f"Error while loading {file_name} : {e}")



def read_config_file(file_name):
    """Read config file store in config directory. If the file does not exist, raises an error

    Args:
        file_name (str): Name of the config file (not path)

    Returns:
        dict: Json file as Python dict
    """

    if file_name == 'all':
        d = {}
        for f in os.listdir("test/asm/config"):
            txt = load_json(f"test/asm/config/{f}")
            function = json.loads(txt)
            d[function['function']] = function['parameters']
        return d
    else:
        if not os.path.exists(f"test/asm/config/{file_name}"):
            # TODO error
            pass
        else:
            d = {}
            txt = load_json(f"test/asm/config/{file_name}")
            function = json.loads(txt)
            d[function['function']] = function['parameters']
            return d
        

if __name__ == '__main__':
    print(read_config_file('all'))