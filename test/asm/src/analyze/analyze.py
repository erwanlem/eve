from parse_html import is_extension_instruction
import os
import sys
import re
sys.path.append(f"{os.path.dirname(__file__)}/..")
import instructions
import const
import reader







def analyze_assembly(options:dict, function, compiler:str, cpu_ext:str, param):

    output_directory = options['output']
    conf = reader.read_config_file(options['input'])

    if output_directory == None:
        output_directory = f"{const.ref_path}"

    functions = []
    for k in conf.keys():
        for typ in conf[k]:
            functions.append((k, typ))

    instr = [i['instr'] for i in instructions.get_functions_instructions(options, functions)[compiler][cpu_ext][function] if i['type'] == param][0]

    print(instr)

    ext = []
    mem = []
    for i in instr:
        #print(f"'{i.split(' ')[0]}'")
        if is_extension_instruction(i.split(' ')[0].upper()):
            ext.append(i)
        if re.match(".*0x[0-9a-f]+\(.*\).*", i):
            mem.append(i)


    print(ext)
    print(f"{len(ext)} extensions in {len(instr)} instructions", end='\n\n')
    print(mem)
    print(f"{len(mem)} memory access in {len(instr)} instructions")



if __name__ == '__main__':
    opt = const.OPTIONS.copy()
    opt['input'] = 'fracscale.json'
    opt['compiler'] = 'g++'
    opt['setup'] = 'sse2'
    analyze_assembly(opt, 'fracscale', 'g++', 'sse2', ['float', 'int'])

