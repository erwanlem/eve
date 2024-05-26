
"""
    x86 
        sse
        sse2
        sse3
        ssse3
        sse4.1
        sse4.2
        avx
        avx2
        avx512
    

"""

ARCH = {
    'sse' : '-msse', 
    'sse2' : '-msse2', 
    'sse3' : '-msse3', 
    'sse4' : '-msse4', 
    'ssse3' : '-mssse3'}

COMPILER = {
    'clang' : 'clang',
    'gcc' : 'g++'
}


ref_path = "test/asm/ref/"