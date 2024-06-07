import unittest
import sys
sys.path.append("test/asm/test/..")
import atp
import files
import validation
import os
import const


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
        self.tmp = const.OPTIONS.copy()

    def test_equal_output(self):
        d = const.OPTIONS.copy()

        d['setup'] = "avx"
        atp.options_to_dict(["..", "-s", "avx"])
        self.assertEqual(const.OPTIONS, d)

        atp.options_to_dict(["..", "-s", "avx", "-d", "-l"])
        d['log'] = True
        d['deep'] = True
        self.assertEqual(const.OPTIONS, d)

        atp.options_to_dict(["..", "-s", "avx", "-d", "-l", '-t', '-g'])
        d['generate'] = True
        d["keep_tmp"] = True
        d['validate'] = False
        self.assertEqual(const.OPTIONS, d)

        atp.options_to_dict(["..", "-s", "avx", "-d", "-l", '-t', '-g', '--input', 'abs.json'])
        d['input'] = 'abs.json'
        self.assertEqual(const.OPTIONS, d)

        const.OPTIONS = self.tmp


    def test_input(self):
        d = const.OPTIONS.copy()
        
        atp.options_to_dict(["..", '--input', 'abs.json', '-l', '-v'])
        d['log'] = True
        d['verbose'] = True
        d['input'] = 'abs.json'

        self.assertEqual(const.OPTIONS, d)

        atp.options_to_dict(["..", '-l', '--input', 'abs.json', '-v'])
        d['log'] = True
        d['verbose'] = True
        d['input'] = 'abs.json'

        self.assertEqual(const.OPTIONS, d)

        atp.options_to_dict(["..", '-l', '-v', '--input', 'abs.json'])
        d['log'] = True
        d['verbose'] = True
        d['input'] = 'abs.json'

        self.assertEqual(const.OPTIONS, d)

        const.OPTIONS = self.tmp

    def test_error_invalid_option(self):
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', 's', 's'])
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', ''])
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', '-', 's'])
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', '-', 't', 's', '-'])
        
        const.OPTIONS = self.tmp

    def test_invalid_input_file(self):
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', '--input'])
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', '-input', 'abs.json'])
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', 'abs.json', '--input'])
        with self.assertRaises(Exception):
            atp.options_to_dict(['..', '--input', '-t'])

        const.OPTIONS = self.tmp



class TestAtp(unittest.TestCase):

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)
        self.tmp = const.OPTIONS.copy()

    def test_valid_references(self):
        files.build_reference_directories(f"{const.root}/test/atp")
        if os.path.exists(f"{const.root}/test/atp/gcc/sse/add.json"):
            file = open(f"{const.root}/test/atp/gcc/sse/add.json", 'w')
        else:
            file = open(f"{const.root}/test/atp/gcc/sse/add.json", 'x')
        file.write(test_match_1)
        file.close()

        const.OPTIONS['arch'] = 'sse'
        const.OPTIONS['validate'] = True
        const.OPTIONS['input'] = "add.json"
        const.OPTIONS['compiler'] = 'gcc'
        const.OPTIONS['ref_path'] = "test/asm/test/atp"

        self.assertEqual(atp.main(), 0)

        files.reset(folder=f'{const.root}/test/atp')

        const.OPTIONS = self.tmp

    def test_unmatched_references(self):
        files.build_reference_directories(f"{const.root}/test/atp")
        if os.path.exists(f"{const.root}/test/atp/gcc/sse/add.json"):
            file = open(f"{const.root}/test/atp/gcc/sse/add.json", 'w')
        else:
            file = open(f"{const.root}/test/atp/gcc/sse/add.json", 'x')
        file.write(test_mismatch_1)
        file.close()

        const.OPTIONS['validate'] = True
        const.OPTIONS['compiler'] = "gcc"
        const.OPTIONS['input'] = 'add.json'
        const.OPTIONS['setup'] = 'sse'
        const.OPTIONS['ref_path'] = f"{const.root}/test/atp"

        self.assertEqual(atp.main(), -1)

        if os.path.exists(f"{const.root}/test/atp/gcc/sse/add.json"):
            file = open(f"{const.root}/test/atp/gcc/sse/add.json", 'w')
        else:
            file = open(f"{const.root}/test/atp/gcc/sse/add.json", 'x')
        file.write(test_mismatch_2)
        file.close()

        self.assertEqual(atp.main(), -1)


        const.OPTIONS['arch'] = 'sse3'
        const.OPTIONS['input'] = "max.json"
        if os.path.exists(f"{const.root}/test/atp/gcc/sse4.2/max.json"):
            file = open(f"{const.root}/test/atp/gcc/sse4.2/max.json", 'w')
        else:
            file = open(f"{const.root}/test/atp/gcc/sse4.2/max.json", 'x')
        file.write(test_mismatch_3)
        file.close()

        self.assertEqual(atp.main(), -1)

        const.OPTIONS['exception'] = True
        with self.assertRaises(validation.AssemblyMismatch):
            atp.main()
        
        files.reset(folder=f'{const.root}/test/atp')

        const.OPTIONS = self.tmp


    def test_gen_and_valid(self):
        files.build_reference_directories("test/asm/test/atp")
        const.OPTIONS['ref_path'] = f"{const.root}/test/atp"
        const.OPTIONS['deep'] = True
        const.OPTIONS['generate'] = True

        atp.main()

        const.OPTIONS['validate'] = True
        const.OPTIONS['generate'] = False

        self.assertEqual(atp.main(), 0)

        files.reset(folder=f'{const.root}/test/atp')

        const.OPTIONS = self.tmp




if __name__ == '__main__':
    unittest.main()