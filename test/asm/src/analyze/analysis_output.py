import os

DOCUMENT_STYLE = """
<style>
    td, th {
        border: 1px solid #DDD;
        padding: 4px;
        text-align: left;
    }
    tr:hover {
        background-color: #D6EEEE;
    }
    table {
        border-collapse: collapse;
        
        width: 100%;
        text-align: center;
        margin-top: 10%;
    }
    body {
        margin: auto;
        max-width: 60%;
        padding-top: 1%;
    }
</style>
"""

def generate_index(functions):
    if not os.path.exists("test/asm/src/analyze/index.html"):
        f = open("test/asm/src/analyze/index.html", 'x')
    else:
        f = open("test/asm/src/analyze/index.html", 'w')
    
    doc = "<html><body><table><h1>Assembly analysis</h1><h3>Select your function</h3><tr><th>Function</th>\
        <th>Instructions</th><th>Extensions</th></tr>"

    for i in functions:
        doc += f'<tr><td><a href="">{i[0]}</a></td><td>{i[1]}</td><td>{i[2]}</td></tr>'

    doc += "</table></body></html>"

    f.write(DOCUMENT_STYLE + doc)
    f.close()




if __name__ == '__main__':
    generate_index([("add", 50, 'avx'), ("mul", 10, 'avx')])