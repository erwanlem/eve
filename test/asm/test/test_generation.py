import unittest
import sys
sys.path.append("test/asm/test/..")
import generation
import files
import os
import settings
import const

class TestUpdateGeneration(unittest.TestCase):

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)

    def test_output_files(self):

        os.system("rm -rf test/asm/test/generation/*")
        files.build_reference_directories(folder="test/generation")
        d = const.OPTIONS.copy()
        d['output'] = "test/asm/test/generation/"
        generation.generate(d)

        sett = settings.get_target(d)
        for c in sett['compiler'].keys():
            for a in sett['setup'].keys():
                for f in os.listdir(f"{const.root}/config"):
                    self.assertTrue( os.path.exists( f"test/asm/test/generation/{c}/{a}/{f}" ) )
        
        files.reset("test/asm/test/generation")
                                        
                                        

if __name__ == '__main__':
    unittest.main()