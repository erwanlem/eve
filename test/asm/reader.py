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
        if t == '':
            t = '{}'
        f.close()
        return t
    except FileNotFoundError:
        if create_if_not_found:
            f = open(file_name, 'x')
            f.write("{}")
            f.close()
            return "{}"
        else:
            raise FileNotFoundError
    except Exception as e:
        raise Exception(f"Error while loading {file_name} : {e}")



def read_config_file(file_name='all'):
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
        if type(file_name) == str:
            file_name = [file_name]
        d = {}
        for n in file_name:
            if not os.path.exists(f"test/asm/config/{n}"):
                raise Exception(f"In read_config_file : Path test/asm/config/{n} does not exist")
            else:
                txt = load_json(f"test/asm/config/{n}")
                function = json.loads(txt)
                d[function['function']] = function['parameters']
        return d



def read_reference_files(file_name, path="test/asm/ref"):
    references = {}
    for i in os.listdir(path):
        references[i] = {}
        for j in os.listdir(f"{path}/{i}"):
            references[i][j] = {}
            if file_name == 'all':
                for k in os.listdir(f"{path}/{i}/{j}"):
                    d = json.loads(load_json(f"{path}/{i}/{j}/{k}"))
                    references[i][j][d['function']] = d['asm']
            elif os.path.exists(f"{path}/{i}/{j}/{file_name}"):
                d = json.loads(load_json(f"{path}/{i}/{j}/{file_name}"))
                references[i][j][d['function']] = d['asm']
    return references


if __name__ == '__main__':
    print(read_reference_files('all'))