import json
import os
import reader
from reader import get_groups
from const import OPTIONS



def list_setup():
    f = open("test/asm/settings.json", 'r')
    txt = f.read()
    f.close()
    j = json.loads(txt)

    print(' -- Available architectures --')
    [print(list(i.keys())[0]) for i in j['architectures']]


def list_compilers():
    f = open("test/asm/settings.json", 'r')
    txt = f.read()
    f.close()
    j = json.loads(txt)

    print(' -- Available compilers --')
    [print(list(i.keys())[0]) for i in j['compilers']]


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