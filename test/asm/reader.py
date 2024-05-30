import os
import json
import const
import random

## This file aims to read json files and extract information from them

def load_json(file_name:str, create_if_not_found=False):
    """Returns json file contents as str

    Args:
        file_name (str): The contents of the file
        create_if_not_found (bool, optional): If True the file is created if it doesn't exist. If False it raises an error if the file doesn't exist. Defaults to False.

    Raises:
        FileNotFoundError: If the file is not found and create_if_not_found is False
        Exception: Other errors

    Returns:
        str: The content of the file
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



def keytypes_to_types(types:list):
    """Converts key types `arithmetic`, `real`, `unsigned`, `integer` to the corresponding cpp types

    Args:
        types (list): 2D list extract from json config files

    Returns:
        list: 2D list with key types replaced by cpp files
    """

    valid_types = []
    
    for t in types:
        if t == []:
            continue

        if 'arithmetic' in t or 'integer' in t or 'real' in t or 'unsigned' in t:
            if 'arithmetic' in t:
                for a in const.ARITHMETIC:
                    tmp = [a if i == 'arithmetic' else i for i in t]
                    tmp = [const.REAL[random.randint(0, len(const.REAL)-1)] if i == 'real' else i for i in tmp]
                    tmp = [const.INTEGER[random.randint(0, len(const.INTEGER)-1)] if i == 'integer' else i for i in tmp]
                    tmp = [const.UNSIGNED_INTEGER[random.randint(0, len(const.UNSIGNED_INTEGER)-1)] if i == 'unsigned' else i for i in tmp]
                    valid_types.append(tmp)
            if 'integer' in t:
                for a in const.INTEGER:
                    tmp = [const.ARITHMETIC[random.randint(0, len(const.ARITHMETIC)-1)] if i == 'arithmetic' else i for i in t]
                    tmp = [const.REAL[random.randint(0, len(const.REAL)-1)] if i == 'real' else i for i in tmp]
                    tmp = [a if i == 'integer' else i for i in tmp]
                    tmp = [const.UNSIGNED_INTEGER[random.randint(0, len(const.UNSIGNED_INTEGER)-1)] if i == 'unsigned' else i for i in tmp]
                    valid_types.append(tmp)
            if 'real' in t:
                for a in const.REAL:
                    tmp = [const.ARITHMETIC[random.randint(0, len(const.ARITHMETIC)-1)] if i == 'arithmetic' else i for i in t]
                    tmp = [a if i == 'real' else i for i in tmp]
                    tmp = [const.INTEGER[random.randint(0, len(const.INTEGER)-1)] if i == 'integer' else i for i in tmp]
                    tmp = [const.UNSIGNED_INTEGER[random.randint(0, len(const.UNSIGNED_INTEGER)-1)] if i == 'unsigned' else i for i in tmp]
                    valid_types.append(tmp)
            if 'unsigned' in t:
                for a in const.UNSIGNED_INTEGER:
                    tmp = [const.ARITHMETIC[random.randint(0, len(const.ARITHMETIC)-1)] if i == 'arithmetic' else i for i in t]
                    tmp = [const.REAL[random.randint(0, len(const.REAL)-1)] if i == 'real' else i for i in tmp]
                    tmp = [const.INTEGER[random.randint(0, len(const.INTEGER)-1)] if i == 'integer' else i for i in tmp]
                    tmp = [a if i == 'unsigned' else i for i in tmp]
                    valid_types.append(tmp)
        else:
            valid_types.append(t)
                
    return valid_types



def read_config_file(file_name='all'):
    """Reads config files stored in `config` directory. Files are returned as dictionary.

    Args:
        file_name (str, optional): Files we want to read. If all, it reads all the files in `config` directory. Defaults to 'all'.

    Raises:
        Exception: If the file in argument doesn't exist.

    Returns:
        dict: Dictionary with functions names and parameters types.
    """

    if file_name == 'all':
        d = {}
        for f in os.listdir("test/asm/config"):
            txt = load_json(f"test/asm/config/{f}")
            function = json.loads(txt)
            d[function['function']] = keytypes_to_types(function['parameters'])
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
                d[function['function']] = keytypes_to_types(function['parameters'])
        return d



def read_reference_files(file_name:str, path="test/asm/ref"):
    """Reads a reference file and returns a dictionary. The file is read for every compilers and architectures

    Args:
        file_name (str): The name of the file to read (not the path).
        path (str, optional): The path of the reference folder. Defaults to "test/asm/ref".

    Returns:
        dict: Dictionary containing assembly program for every compiler and architecture.
    """
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