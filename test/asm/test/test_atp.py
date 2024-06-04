import unittest
import sys
sys.path.append("test/asm/test/..")
import atp
import files
import validation
import os


test_mismatch_1 = """{
    "function": "add",
    "asm": [
        {
            "type": [
                "float",
                "float"
            ],
            "instr": [
                "addps %xmm1,%xmm2"
            ]
        }
    ]
}"""

test_mismatch_2 = """{
    "function": "add",
    "asm": [
        {
            "type": [
                "float",
                "float"
            ],
            "instr": [
                "addpm %xmm1,%xmm0"
            ]
        }
    ]
}"""

test_mismatch_3 = """{
    "function": "max",
    "asm": [
        {
            "type": [
                "float",
                "float"
            ],
            "instr": [
                "maxps %xmm1,%xmm0"
            ]
        },
        {
            "type": [
                "double",
                "double"
            ],
            "instr": [
                "maxpd %xmm1,%xmm2"
            ]
        },
        {
            "type": [
                "int",
                "int"
            ],
            "instr": [
                "maxpd %xmm1,%xmm0"
            ]
        }
    ]
}"""

test_match_1 = """{
    "function": "add",
    "asm": [
        {
            "type": [
                "float",
                "float"
            ],
            "instr": [
                "addps %xmm1,%xmm0"
            ]
        }
    ]
}"""





class TestOptionToDict(unittest.TestCase):

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)

    def test_equal_output(self):
        command1 = atp.options_to_dict(["..", "-m", "avx"])
        d = {
            "validate" : True,
            "log" : False,
            "arch" : ["avx"],
            "deep" : False,
            "input" : 'all',
            "keep_tmp" : False,
            "generate" : False,
            "compiler" : "all",
            "exception" : False,
            "verbose" : False,
            "ref_path" : "test/asm/ref",
            "disassembler" : "objdump",
            "instruction_comparison" : False
        }
        self.assertEqual(command1, d)

        command2 = atp.options_to_dict(["..", "-m", "avx", "-d", "-l"])
        d['log'] = True
        d['deep'] = True
        self.assertEqual(command2, d)

        command3 = atp.options_to_dict(["..", "-m", "avx", "-d", "-l", '-t', '-g'])
        d['generate'] = True
        d["keep_tmp"] = True
        d['validate'] = False
        self.assertEqual(command3, d)

        command4 = atp.options_to_dict(["..", "-m", "avx", "-d", "-l", '-t', '-g', '-input', 'abs.json'])
        d['input'] = ['abs.json']
        self.assertEqual(command4, d)

        command5 = atp.options_to_dict(["..", "-m", "avx", "-d", "-l", '-t', '-g', '-input', 'abs.json', 'agm.json', 'average.json', 'add.json'])
        d['input'] = ['abs.json', 'agm.json', 'average.json', 'add.json']
        self.assertEqual(command5, d)

    def test_input(self):
        d = {
        "validate" : True,
        "log" : False,
        "arch" : "all",
        "deep" : False,
        "input" : 'all',
        "keep_tmp" : False,
        "generate" : False,
        "compiler" : "all",
        "exception" : False,
        "verbose" : False,
        "ref_path" : "test/asm/ref",
        "disassembler" : "objdump",
        "instruction_comparison" : False
    }
        
        command1 = atp.options_to_dict(["..", '-input', 'abs.json', 'max.json', 'add.json', '-l', '-v'])
        d['log'] = True
        d['verbose'] = True
        d['input'] = ['abs.json', 'max.json', 'add.json']

        self.assertEqual(command1, d)

    def test_error_invalid_option(self):
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', 'm', 'm'])
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', ''])
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', '-', 'm'])
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', '-', 't', 'm', '-'])

    def test_invalid_input_file(self):
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', '-input'])
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', '-input', '-t'])



class TestAtp(unittest.TestCase):

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)

    def test_valid_references(self):
        files.build_reference_directories("test/asm/test/atp")
        if os.path.exists("test/asm/test/atp/gcc/sse/add.json"):
            file = open("test/asm/test/atp/gcc/sse/add.json", 'w')
        else:
            file = open("test/asm/test/atp/gcc/sse/add.json", 'x')
        file.write(test_match_1)
        file.close()

        d = {
            "validate" : True,
            "log" : False,
            "arch" : ["sse"],
            "deep" : False,
            "input" : 'add.json',
            "keep_tmp" : False,
            "generate" : False,
            "compiler" : ["gcc"],
            "exception" : False,
            "verbose" : False,
            "ref_path" : "test/asm/test/atp",
            "disassembler" : "objdump",
            "instruction_comparison" : False
        }

        self.assertEqual(atp.main(d), 0)

        files.reset(folder='test/asm/test/atp')

    def test_unmatched_references(self):
        files.build_reference_directories("test/asm/test/atp")
        if os.path.exists("test/asm/test/atp/gcc/sse/add.json"):
            file = open("test/asm/test/atp/gcc/sse/add.json", 'w')
        else:
            file = open("test/asm/test/atp/gcc/sse/add.json", 'x')
        file.write(test_mismatch_1)
        file.close()

        d = {
            "validate" : True,
            "log" : False,
            "arch" : ["sse"],
            "deep" : False,
            "input" : 'add.json',
            "keep_tmp" : False,
            "generate" : False,
            "compiler" : ["gcc"],
            "exception" : False,
            "verbose" : False,
            "ref_path" : "test/asm/test/atp",
            "disassembler" : "objdump",
            "instruction_comparison" : False
        }

        self.assertEqual(atp.main(d), -1)

        if os.path.exists("test/asm/test/atp/gcc/sse/add.json"):
            file = open("test/asm/test/atp/gcc/sse/add.json", 'w')
        else:
            file = open("test/asm/test/atp/gcc/sse/add.json", 'x')
        file.write(test_mismatch_2)
        file.close()

        self.assertEqual(atp.main(d), -1)


        d['arch'] = ['sse4.2']
        d['input'] = "max.json"
        if os.path.exists("test/asm/test/atp/gcc/sse4.2/max.json"):
            file = open("test/asm/test/atp/gcc/sse4.2/max.json", 'w')
        else:
            file = open("test/asm/test/atp/gcc/sse4.2/max.json", 'x')
        file.write(test_mismatch_3)
        file.close()

        self.assertEqual(atp.main(d), -1)

        d['exception'] = True
        with self.assertRaises(validation.AssemblyMismatch):
            atp.main(d)
        
        files.reset(folder='test/asm/test/atp')


    def test_gen_and_valid(self):
        files.build_reference_directories("test/asm/test/atp")
        d = {
            "validate" : False,
            "log" : False,
            "arch" : "all",
            "deep" : True,
            "input" : 'all',
            "keep_tmp" : False,
            "generate" : True,
            "compiler" : 'all',
            "exception" : False,
            "verbose" : False,
            "ref_path" : "test/asm/test/atp",
            "disassembler" : "objdump",
            "instruction_comparison" : False
        }
        atp.main(d)

        d['validate'] = True
        d['generate'] = False

        self.assertEqual(atp.main(d), 0)

        files.reset(folder='test/asm/test/atp')




if __name__ == '__main__':
    unittest.main()