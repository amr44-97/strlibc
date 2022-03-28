	.file	"libtest.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"hello iam groot and i am an x86_64 assembler!!"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"i am the best assembler ever"
.LC2:
	.string	" heloooaooooaoadadamdsak!!"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	push	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	lea	rdi, .LC0[rip]
	push	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	call	newstr@PLT
	lea	rdi, .LC1[rip]
	mov	r12, rax
	mov	rbx, rdx
	call	newstr@PLT
	mov	rdi, r12
	mov	rsi, rbx
	mov	r13, rax
	mov	r14, rdx
	call	__str_println@PLT
	mov	rdi, r12
	mov	rsi, rbx
	lea	rdx, .LC2[rip]
	call	__str_cat@PLT
	mov	rdi, rax
	mov	rsi, rdx
	mov	r12, rax
	mov	rbp, rdx
	call	__str_println@PLT
	mov	rdi, r13
	mov	rsi, r14
	call	__str_println@PLT
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, r13
	call	__str_cat@PLT
	mov	rdi, rax
	mov	rsi, rdx
	call	__str_println@PLT
	xor	eax, eax
	call	__str_free_all@PLT
	pop	rbx
	.cfi_def_cfa_offset 40
	xor	eax, eax
	pop	rbp
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r13
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
