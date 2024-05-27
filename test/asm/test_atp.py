import unittest
import atp

class TestOptionToDict(unittest.TestCase):

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)

    def test_equal_output(self):
        command1 = atp.options_to_dict(["..", "-m", "avx"])
        d = {
            "log" : False,
            "arch" : "avx",
            "deep" : False,
            "input" : 'all',
            "keep_tmp" : False,
            "generate" : False,
            "compiler" : "g++"
        }
        self.assertEqual(command1, d)

        command2 = atp.options_to_dict(["..", "-m", "avx", "-d", "-l"])
        d['log'] = True
        d['deep'] = True
        self.assertEqual(command2, d)

        command3 = atp.options_to_dict(["..", "-m", "avx", "-d", "-l", '-t', '-g'])
        d['generate'] = True
        d["keep_tmp"] = True
        self.assertEqual(command3, d)

        command4 = atp.options_to_dict(["..", "-m", "avx", "-d", "-l", '-t', '-g', '-input', 'abs.json'])
        d['input'] = ['abs.json']
        self.assertEqual(command4, d)

        command5 = atp.options_to_dict(["..", "-m", "avx", "-d", "-l", '-t', '-g', '-input', 'abs.json', 'agm.json', 'average.json', 'add.json'])
        d['input'] = ['abs.json', 'agm.json', 'average.json', 'add.json']
        self.assertEqual(command5, d)

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


if __name__ == '__main__':
    unittest.main()