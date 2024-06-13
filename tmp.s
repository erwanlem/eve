	.file	"tmp.cpp"
	.text
	.p2align 4
	.globl	_Z10func_cos_0d
	.type	_Z10func_cos_0d, @function
_Z10func_cos_0d:
.LFB1148:
	.cfi_startproc
	endbr64
	jmp	cos@PLT
	.cfi_endproc
.LFE1148:
	.size	_Z10func_cos_0d, .-_Z10func_cos_0d
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
