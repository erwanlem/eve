import json
import os
import reader
from reader import get_groups
from const import OPTIONS



def add_compiler(name:str, flag:str):
    f = open("test/asm/settings.json", 'r')
    txt = f.read()
    f.close()
    j = json.loads(txt)
    if name in [list(i.keys())[0] for i in j['compilers']]:
        print('This name already exist')
    else:
        j['compilers'].append({name:flag})
        txt = json.dumps(j, indent=4)
        f = open("test/asm/settings.json", 'w')
        f.write(txt)
        f.close()


def add_setup(name:str, flag:str):
    f = open("test/asm/settings.json", 'r')
    txt = f.read()
    f.close()
    j = json.loads(txt)
    if name in [list(i.keys())[0] for i in j['architectures']]:
        print('This name already exist')
    else:
        j['architectures'].append({name:flag})
        txt = json.dumps(j, indent=4)
        f = open("test/asm/settings.json", 'w')
        f.write(txt)
        f.close()




def get_setup(entry:str):
    """Returns simd extensions with their corresponding compiler flag. If `entry` is not found in `settings.json`\
    it is considered as a custom flag.

    Args:
        entry (str): Name of the simd extension to search.

    Returns:
        dict: Dictionary associating entry with its corresponding flag.
    """
    
    settings = reader.load_json("test/asm/settings.json")
    settings = json.loads(settings)
    if entry == 'all':
        return settings['setup']
    else:
        if entry in settings['setup'].keys():
            return {entry : settings['setup'][entry]}
        else:
            return {entry : entry}
    

def get_compiler(entry:str):
    """Returns compilers with there corresponding name in the system. If `entry` is found in `settings.json`\
    the corresponding path is returned as the value in the dictionary. Otherwise `entry` is defined as the value and\
    the key is the basename.

    Args:
        entry (str): Name of the compiler.

    Returns:
        dict: The compiler's name associated with the path to execute it.
    """

    settings = reader.load_json("test/asm/settings.json")
    settings = json.loads(settings)
    if entry == 'all':
        return settings['compilers']
    else:
        if entry in settings['compilers'].keys():
            return {entry : settings['compilers'][entry]}
        else:
            return {os.path.basename(entry) : entry}

    

def get_target():
    """Returns all necessary information about the target of the process. The returned dictionary contains information about:
    - compilers
    - simd extensions
    - functions
    - input
    - output

    Returns:
        dictionary: Information about the target.
    """

    d = {}
    if OPTIONS['flags'] != []:
        if OPTIONS['compiler'] == None or OPTIONS['compiler'] == 'all':
            d['compiler'] = get_compiler('all')
        else:
            c = get_compiler(OPTIONS['compiler'])
            if c == {}:
                d['compiler'] = OPTIONS['compiler']
            else:
                d['compiler'] = c
        d['setup'] = { 'custom' : OPTIONS['flags'] }
        
    else:
        if OPTIONS['compiler'] == None or OPTIONS['compiler'] == 'all':
            d['compiler'] = get_compiler('all')
        else:
            c = get_compiler(OPTIONS['compiler'])
            if c == {}:
                d['compiler'] = OPTIONS['compiler']
            else:
                d['compiler'] = c
        if OPTIONS['setup'] == None or OPTIONS['compiler'] == 'all':
            d['setup'] = get_setup('all')
        else:
            d['setup'] = get_setup(OPTIONS['setup'])

    if OPTIONS['input'] == 'all':
        d['input'] = reader.read_config_file('all')
    else:
        d['input'] = reader.read_config_file(OPTIONS['input'])
        


    d['output'] = OPTIONS['output']
    return d
        
            





if __name__ == '__main__':
    print(get_groups('abs'))