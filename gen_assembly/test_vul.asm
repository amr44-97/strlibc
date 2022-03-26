	.file	"test.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"check Vulnerability in strlen in printf >> "
.LC1:
	.string	"printf = %s\n"
.LC2:
	.string	"strlen(buf) = %lu\n"
	.align 8
.LC3:
	.string	"check Vulnerability in strlen in newstr >> "
.LC4:
	.string	"length = %lu\n"
	.align 8
.LC5:
	.string	"check Vulnerability--------after ---------------- in strlen in newstr >> "
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	BYTE PTR -12[rbp], 65
	mov	BYTE PTR -11[rbp], 77
	mov	BYTE PTR -10[rbp], 82
	mov	BYTE PTR -9[rbp], 0
	mov	WORD PTR -15[rbp], 28518
	mov	BYTE PTR -13[rbp], 111
	lea	rax, -80[rbp]
	lea	rdx, -12[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	newstr@PLT
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, -15[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -15[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	sub	rsp, 8
	push	QWORD PTR -32[rbp]
	push	QWORD PTR -40[rbp]
	push	QWORD PTR -48[rbp]
	push	QWORD PTR -56[rbp]
	push	QWORD PTR -64[rbp]
	push	QWORD PTR -72[rbp]
	push	QWORD PTR -80[rbp]
	call	__str_println@PLT
	add	rsp, 64
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-18ubuntu1) 11.2.0"
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
