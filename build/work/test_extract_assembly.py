import unittest
from extract_assembly import *

class TestGenerateFunction(unittest.TestCase):

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)
        clear_tmp()
    
    def test_calls(self):
        t1 = generate_function("test1", 0)
        t2 = generate_function("test2", 1)
        t3 = generate_function("test3", 3)
        t4 = generate_function("test4", -1)
        t5 = generate_function("", 0)
        
        self.assertTrue(t1 == None)
        self.assertTrue(t2 == None)
        self.assertTrue(t3 == None)
        self.assertTrue(t4 == None)
        self.assertTrue(t5 == None)
    
    def test_valid_file_output(self):
        clear_tmp()
        generate_function("test1", 0)
        generate_function("test2", 1)
        generate_function("test3", 3)
        generate_function("test4", -1)
        generate_function("", 0)

        file = open(TMP_CPP_FILE_NAME, 'r')

        assert file.read() == """auto func_test1() {
    return eve::test1();
}
auto func_test2(eve::wide<signed char> a0) {
    return eve::test2(a0);
}
auto func_test3(eve::wide<signed char> a0, eve::wide<signed char> a1, eve::wide<signed char> a2) {
    return eve::test3(a0, a1, a2);
}
auto func_test4() {
    return eve::test4();
}
auto func_() {
    return eve::();
}
"""
        file.close()


class TestExtractInstructions(unittest.TestCase):

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)
        self.asm = """0000000000000150 <func_abs(eve::sse_abi_v0::wide<signed char, eve::fixed<16l> >)>:
    150:	f3 0f 1e fa          	endbr64
    154:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    158:	66 0f ef c0          	pxor   %xmm0,%xmm0
    15c:	66 0f f8 c1          	psubb  %xmm1,%xmm0
    160:	66 0f da c1          	pminub %xmm1,%xmm0
    164:	c3                   	ret
    165:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    16c:	00 00 00 00 

    0000000000000170 <func_add(eve::sse_abi_v0::wide<signed char, eve::fixed<16l> >, eve::sse_abi_v0::wide<signed char, eve::fixed<16l> >)>:
    170:	f3 0f 1e fa          	endbr64
    174:	66 0f fc c1          	paddb  %xmm1,%xmm0
    178:	c3                   	ret
    179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)"""


    def test_valid_call(self):        
        t1 = extract_instructions('abs', self.asm)
        t2 = extract_instructions('add', self.asm)

        self.assertTrue( t1 == ['movdqa', 'pxor', 'psubb', 'pminub'] )
        self.assertTrue( t2 == ['paddb'] )
        
        
    def test_func_not_found_exception(self):
        with self.assertRaises(Exception):
            extract_instructions('00', self.asm)



if __name__ == '__main__':
    unittest.main()