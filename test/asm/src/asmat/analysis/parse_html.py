import os
import sqlite3



def is_extension_instruction(instr):
    con = sqlite3.connect(f"{os.path.dirname(__file__)}/data.db")
    cur = con.cursor()
    res = cur.execute("SELECT instr_name, extension FROM instructions WHERE extension != '' ORDER BY length(instr_name) DESC")

    for i in res:
        if i[0] == instr:
            return i[1]
    return None


def instruction_categories(instr):
    con = sqlite3.connect(f"{os.path.dirname(__file__)}/data.db")
    cur = con.cursor()
    res = cur.execute(f"SELECT ctrl_flow, arith_logic, data_move FROM instructions WHERE instr_name='{instr}'")

    res = res.fetchone()
    if res is None:
        return (0, 0, 0, 1)
    if res[0] + res[1] + res[2] == 0:
        return (0, 0, 0, 1)
    else:
        return (res[0], res[1], res[2], 0)


if __name__ == '__main__':
    #load()
    #print(is_extension_instruction("movaps".upper()))
    print(instruction_categories("AAA"))
    pass

