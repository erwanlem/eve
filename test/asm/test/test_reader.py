import unittest
import sys
sys.path.append("test/asm/test/..")
import reader


class TestReader(unittest.TestCase):
    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)

    def test_reader_reference_file(self):
        self.assertEqual(reader.load_json("test/asm/test/reader/test1.json"), '{}')

        with self.assertRaises(Exception):
            reader.load_json('.')
        with self.assertRaises(FileNotFoundError):
            reader.load_json('test/asm/test/reader/test.json')

        self.assertNotEqual(reader.load_json("test/asm/test/reader/test2.json"), "{}")



if __name__ == '__main__':
    unittest.main()