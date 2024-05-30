import unittest
import sys
sys.path.append("test/asm/test/..")
import generation
import files
import os
import const

class TestUpdateGeneration(unittest.TestCase):

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)

    def test_output_files(self):

        os.system("rm -rf test/asm/test/generation/*")
        files.build_reference_directories(folder="test/generation")
        generation.update(output_directory="test/asm/test/generation/")

        for c in const.COMPILER.keys():
            for a in const.ARCH.keys():
                for f in os.listdir("test/asm/config"):
                    self.assertTrue( os.path.exists( f"test/asm/test/generation/{c}/{a}/{f}" ) )
        
        files.reset("test/asm/test/generation")
                                        


if __name__ == '__main__':
    unittest.main()