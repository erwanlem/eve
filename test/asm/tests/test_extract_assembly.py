import unittest
import sys
from test_utils import ignore_warnings
import os
sys.path.append(f"{os.path.dirname(__file__)}/../src/asmat")
from instructions import *
import const

path = f"{os.path.dirname(__file__)}"

class TestGenerateFunction(unittest.TestCase):

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)
        clear_tmp()
    

    def test_valid_file_output(self):
        clear_tmp()

        c1 = generate_function("test1", [], functionId=0)
        t1 = ("test1_0", """auto func_test1_0() {
    return test1();
}
""")

        c2 = generate_function("test2", ['float'], functionId=1, namespace="eve::")
        t2 = ("test2_1", """auto func_test2_1(float a0) {
    return eve::test2(a0);
}
""")
        c3 = generate_function("test3", ['float', 'int', 'double'], functionId=2, wrapper="eve::wide<{}>")
        t3 = ("test3_2", """auto func_test3_2(eve::wide<float> a0, eve::wide<int> a1, eve::wide<double> a2) {
    return test3(a0, a1, a2);
}
""")

        c4 = generate_function("test4", ['int', 'int'], functionId=3, wrapper="eve::wide<{}>", namespace="eve::")
        t4 = ("test4_3", """auto func_test4_3(eve::wide<int> a0, eve::wide<int> a1) {
    return eve::test4(a0, a1);
}
""")
        
        c5 = generate_function("", [], functionId=4)
        t5 = ("_4", """auto func__4() {
    return ();
}
""")
        self.assertEqual(c1, t1)
        self.assertEqual(c2, t2)
        self.assertEqual(c3, t3)
        self.assertEqual(c4, t4)
        self.assertEqual(c5, t5)


class TestExtractInstructions(unittest.TestCase):

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)
        self.opt = const.OPTIONS.copy()
        self.opt['input'] = "all"
        self.opt["output"] = f"{path}/output"

        self.asm = """0000000000000340 <func_res_defined_array_10(int*)>:
 340:	f3 0f 1e fa          	endbr64 
 344:	48 8d 47 24          	lea    0x24(%rdi),%rax
 348:	48 39 c7             	cmp    %rax,%rdi
 34b:	73 26                	jae    373 <func_res_defined_array_10(int*)+0x33>
 34d:	8b 47 10             	mov    0x10(%rdi),%eax
 350:	8b 57 14             	mov    0x14(%rdi),%edx
 353:	f3 0f 6f 07          	movdqu (%rdi),%xmm0
 357:	f3 0f 6f 57 18       	movdqu 0x18(%rdi),%xmm2
 35c:	89 57 10             	mov    %edx,0x10(%rdi)
 35f:	89 47 14             	mov    %eax,0x14(%rdi)
 362:	66 0f 70 ca 1b       	pshufd $0x1b,%xmm2,%xmm1
 367:	66 0f 70 c0 1b       	pshufd $0x1b,%xmm0,%xmm0
 36c:	0f 11 0f             	movups %xmm1,(%rdi)
 36f:	0f 11 47 18          	movups %xmm0,0x18(%rdi)
 373:	c3                   	ret    
 374:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
 37b:	00 00 00 00 
 37f:	90                   	nop

    0000000000000330 <func_one_9()>:
 330:	f3 0f 1e fa          	endbr64 
 334:	b8 01 00 00 00       	mov    $0x1,%eax
 339:	c3                   	ret    
 33a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
"""

    @ignore_warnings
    def test_valid_call(self):        
        t1 = extract_instructions('one', [], {function_extended_name('one', []) : "one_9"}, self.asm, self.opt)
        t2 = extract_instructions('res_defined_array', ["int*"], {function_extended_name('res_defined_array', ["int*"]) : "res_defined_array_10"}, self.asm, self.opt)
        
        self.assertTrue( t1 == ['mov $0x1,%eax', 'ret'] )
        self.assertTrue( t2 == ['lea 0x24(%rdi),%rax', 'cmp %rax,%rdi', 'jae 373', 'mov 0x10(%rdi),%eax', 'mov 0x14(%rdi),%edx', 'movdqu (%rdi),%xmm0', 'movdqu 0x18(%rdi),%xmm2',\
                                 'mov %edx,0x10(%rdi)', 'mov %eax,0x14(%rdi)', 'pshufd $0x1b,%xmm2,%xmm1', 'pshufd $0x1b,%xmm0,%xmm0', 'movups %xmm1,(%rdi)', 'movups %xmm0,0x18(%rdi)', 'ret'] )

        with self.assertRaises(Exception):
            extract_instructions('one', ["int"], {function_extended_name('one', [""]) : "one_9"}, self.asm)
        with self.assertRaises(Exception):
            extract_instructions('one_9', [], {function_extended_name('one', []) : "one_9"}, self.asm)
        with self.assertRaises(Exception):
            extract_instructions('res_defined_array', [], {function_extended_name('res_defined_array', ["int*"]) : "res_defined_array_10"}, self.asm)
        
        
    @ignore_warnings
    def test_func_not_found_exception(self):
        with self.assertRaises(Exception):
            extract_instructions('00', self.asm)



class TestGetFunctionInstructions(unittest.TestCase):
    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)
        self.opt = const.OPTIONS.copy()
        self.opt['compiler'] = "gcc"
        self.opt['setup'] = "sse"
        self.opt['input'] = "all"
        self.opt["output"] = f"{path}/output"


    @ignore_warnings
    def test_valid_entry(self):
        
        t1 = get_functions_instructions(self.opt, [('rev', ['vector<int>']), ('one', [])])

        self.assertEqual(list(t1.keys()), ['gcc'])
        self.assertEqual(list(t1['gcc'].keys()), ['sse'])
        self.assertEqual(list(t1['gcc']['sse'].keys()), ['rev', 'one'])

    @ignore_warnings
    def test_limit_case(self):
        t1 = get_functions_instructions(self.opt, [])

        self.assertEqual(list(t1.keys()), ['gcc'])
        self.assertEqual(list(t1['gcc'].keys()), ['sse'])
        
        for i in t1.keys():
            for j in t1[i].keys():
                self.assertEqual(t1[i][j], {})


if __name__ == '__main__':
    unittest.main()