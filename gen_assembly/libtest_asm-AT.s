	.file	"libtest.c"
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	.LC0(%rip), %rdi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	call	newstr@PLT
	leaq	.LC1(%rip), %rdi
	movq	%rax, %r12
	movq	%rdx, %rbx
	call	newstr@PLT
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rax, %r13
	movq	%rdx, %r14
	call	__str_println@PLT
	movq	%r12, %rdi
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdx
	call	__str_cat@PLT
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rax, %r12
	movq	%rdx, %rbp
	call	__str_println@PLT
	movq	%r13, %rdi
	movq	%r14, %rsi
	call	__str_println@PLT
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	call	__str_cat@PLT
	movq	%rax, %rdi
	movq	%rdx, %rsi
	call	__str_println@PLT
	xorl	%eax, %eax
	call	__str_free_all@PLT
	popq	%rbx
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
