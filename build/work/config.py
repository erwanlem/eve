import json


CONFIG_FILE = "build/work/config.json"
STORE_FILE = "build/work/functions.json"


def load_json():
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
    try:
        f = open(STORE_FILE, 'w')
        f.write(new_conf)
        f.close()
    except Exception as e:
        raise (f"Error while writing {STORE_FILE} : {e}")



def update(deep=False):
    conf = load_config()
    confDict = json.loads(conf)

    file = load_json()
    jsonDict = json.loads(file)
    k = dict.keys(jsonDict)

    new_f = 0
    for f in dict.keys(confDict):
        if f not in k or deep:
            # TODO
            jsonDict[f] = {'instr' : []}
            new_f += 1

    update_json = json.dumps(jsonDict, indent=4)
    save_json(update_json)
    print(f"Operation finished : {new_f} new functions saved")    

update()
