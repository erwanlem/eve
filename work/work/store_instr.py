import json


j = json.dumps({'abs' : {'instr' : ['000', '111']}})

print(j)

d = json.loads(j)
print(d['abs']['instr'])