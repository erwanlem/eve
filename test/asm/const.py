import platform


root = "test/asm/"


ARCH = {
    'sse' : '-msse', 
    'sse2' : '-msse2',
    'sse3' : '-msse3',
    'sse4.2' : '-msse4.2', 
    'ssse3' : '-mssse3',
    'avx' : '-mavx',
    'avx2' : '-mavx2',
    'avx512' : '-march=skylake-avx512'}


COMPILER = {
    'clang' : 'clang',
    'gcc' : 'g++'
}


REAL = ['float', 'double']
INTEGER = ['std::int64_t', 'std::int32_t', 'std::int16_t', 'std::int8_t']
UNSIGNED_INTEGER = ["std::uint64_t" , "std::uint32_t" , "std::uint16_t" , "std::uint8_t"]
#INTEGER = SIGNED_INTEGER + UNSIGNED_INTEGER
#SIGNED = SIGNED_INTEGER + REAL

ARITHMETIC = REAL + INTEGER + UNSIGNED_INTEGER




clear_command = 'cls' if platform.system() == 'Windows' else 'clear'

ref_path = "test/asm/ref/"