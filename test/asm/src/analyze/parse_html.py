import urllib.request
from bs4 import BeautifulSoup
import os
import sqlite3



def load():
    if not os.path.exists("test/asm/src/analyze/source_html.txt"): 
        html = urllib.request.urlopen("https://shell-storm.org/x86doc/index.html").read()
        f = open("test/asm/src/analyze/source_html.txt", "x")
        f.write(str(html))
        f.close()
    else:
        html = open("test/asm/src/analyze/source_html.txt", "r").read()


    parser_html = BeautifulSoup(html, features="html.parser")

    assembly_instructions = []

    for i in parser_html.findAll('tr'):
        parser_html2 = BeautifulSoup(str(i), features="html.parser")
        td = parser_html2.findAll('td')

        if len(td) >= 4:
            l = [td[0].a.get_text(), td[1].get_text(), td[2].get_text(), td[3].get_text()]
        
            assembly_instructions.append(l)

    con = sqlite3.connect("test/asm/src/analyze/data.db")
    cur = con.cursor()
    res = cur.execute("DELETE FROM instructions")
    assert res.fetchone() == None

    cur.execute("UPDATE sqlite_sequence SET seq = 0 WHERE name='instructions'")
    con.commit()

    cur.executemany("INSERT INTO instructions (instr_name, op_code, extension, description, instr_set) VALUES (?, ?, ?, ?, 'x86')", assembly_instructions)
    con.commit()


    res = cur.execute("SELECT instr_name FROM instructions WHERE extension != '' ORDER BY length(instr_name) DESC")
    print(len(res.fetchall()))

    res = cur.execute("SELECT instr_name FROM instructions ORDER BY length(instr_name) DESC")
    print(len(res.fetchall()))


    cur.close()
    con.close()



if __name__ == '__main__':
    load()
    pass



def is_extension_instruction(instr):
    con = sqlite3.connect("test/asm/src/analyze/data.db")
    cur = con.cursor()
    res = cur.execute("SELECT instr_name FROM instructions WHERE extension != '' ORDER BY length(instr_name) DESC")

    return (instr,) in res


#print(len(assembly_instructions))
