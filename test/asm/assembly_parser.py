import re

asm_test = """	vextractf128	$0x1, %ymm1, %xmm5
	vmovdqa	%ymm0, %ymm2
	movabsq	$-9223372036854775808, %rax
	vmovq	%rax, %xmm3
	vpunpcklqdq	%xmm3, %xmm3, %xmm7
	vpsubq	%xmm7, %xmm1, %xmm6
	vpsubq	%xmm7, %xmm0, %xmm0
	vpsubq	%xmm7, %xmm5, %xmm5
	vpsubq	%xmm7, %xmm4, %xmm3
	vpcmpgtq	%xmm6, %xmm0, %xmm0
	vpcmpgtq	%xmm5, %xmm3, %xmm3
	vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
	vblendvpd	%ymm0, %ymm1, %ymm2, %ymm0
	ret
	.cfi_endproc
.LFE17009:
	.size	_Z14func_absmin_24N3eve10avx_abi_v04wideImNS_5fixedILl4EEEEES4_, .-_Z14func_absmin_24N3eve10avx_abi_v04wideImNS_5fixedILl4EEEEES4_
	.p2align 4
	.globl	_Z14func_absmin_25N3eve10avx_abi_v04wideIjNS_5fixedILl8EEEEES4_
	.type	_Z14func_absmin_25N3eve10avx_abi_v04wideIjNS_5fixedILl8EEEEES4_, @function
_Z14func_absmin_25N3eve10avx_abi_v04wideIjNS_5fixedILl8EEEEES4_:
.LFB17011:
	.cfi_startproc
	endbr64
	jmp	_Z14func_absmin_21N3eve10avx_abi_v04wideIjNS_5fixedILl8EEEEES4_
	.cfi_endproc
.LFE17011:
	.size	_Z14func_absmin_25N3eve10avx_abi_v04wideIjNS_5fixedILl8EEEEES4_, .-_Z14func_absmin_25N3eve10avx_abi_v04wideIjNS_5fixedILl8EEEEES4_
	.p2align 4
	.globl	_Z14func_absmin_26N3eve10avx_abi_v04wideItNS_5fixedILl16EEEEES4_
	.type	_Z14func_absmin_26N3eve10avx_abi_v04wideItNS_5fixedILl16EEEEES4_, @function
_Z14func_absmin_26N3eve10avx_abi_v04wideItNS_5fixedILl16EEEEES4_:
.LFB17013:
	.cfi_startproc
	endbr64
	jmp	_Z14func_absmin_22N3eve10avx_abi_v04wideItNS_5fixedILl16EEEEES4_
	.cfi_endproc
.LFE17013:
	.size	_Z14func_absmin_26N3eve10avx_abi_v04wideItNS_5fixedILl16EEEEES4_, .-_Z14func_absmin_26N3eve10avx_abi_v04wideItNS_5fixedILl16EEEEES4_
	.p2align 4
	.globl	_Z14func_absmin_27N3eve10avx_abi_v04wideIhNS_5fixedILl32EEEEES4_
	.type	_Z14func_absmin_27N3eve10avx_abi_v04wideIhNS_5fixedILl32EEEEES4_, @function
_Z14func_absmin_27N3eve10avx_abi_v04wideIhNS_5fixedILl32EEEEES4_:
.LFB17015:
	.cfi_startproc
	endbr64
	jmp	_Z14func_absmin_23N3eve10avx_abi_v04wideIhNS_5fixedILl32EEEEES4_
	.cfi_endproc
.LFE17015:"""


def read_compiler_assembler(function_name:str, assembler:str, compiler:str):

    if compiler == 'clang':

        x = re.findall(f'func_{function_name}[\S]*?@function[\s\S]*?%bb\.0[\s\S]*?Lfunc_end', assembler)
        y = re.findall(f'%bb.0[\s\S]*retq', x[0])
        y = re.sub('#[^\n]*?\n', '\n', y[0])

        y = y.replace(' ', '').replace('\t', ' ').split('\n')
        y = [i.strip() for i in y]
        y = y[1:-1]

        return y


    else:
        x = re.findall(f'func_{function_name}[\s\S]*?cfi_endproc', assembler)

        y = re.findall(f'endbr[0-9]+[\s\S]*cfi_endproc', x[0])
        y = y[0].replace(' ', '').replace('\t', ' ').split('\n')
        y = [i.strip() for i in y]

        if 'endbr64' in y:
            y.remove('endbr64')
        if '.cfi_endproc' in y:
            y.remove('.cfi_endproc')
        if 'ret' in y:
            y.remove('ret')

        return y



def read_objdump_assembler(function_name:str, assembler:str):
    # extracts each instruction line (full line)
    asm = re.split('\n\n', assembler)
    asm = [i for i in asm if f"func_{function_name}" in i]

    if asm == []:
        raise Exception(f"Function {function_name} not found in assembly")
 
    x = re.findall("[0-9a-f]+:\t[^\n\t]+\t[^\n]+", asm[0])

    # instructions list
    instr = []

    for i in x:
        # extract only the instruction name (without parameters)
        s = i.split('\t')
        s[2] = re.sub(' +', ' ', s[2])
        s = s[2].split(' ')
        if s[0] == 'ret':
            break
        
        if s[0] != "endbr64" and s[0] != "endbr32":
            if len(s) > 1 and s[1] != "":
                instr.append(s[0] + ' ' + s[1])
            else:
                instr.append(s[0])

    return instr



if __name__ == '__main__':
    print(read_compiler_assembler('absmin_25', asm_test, 'gcc'))
    #print(read_compiler_assembler('ceil_0', test_asm, 'clang'))