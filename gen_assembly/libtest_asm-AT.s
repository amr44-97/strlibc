	.file	"libtest.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"no input ERROR\n"
.LC5:
	.string	"token_num = %i\n"
.LC6:
	.string	"strlen = %lu\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	$1, %edi
	jle	.L29
.L2:
	movq	8(%rbx), %rdi
	call	read_file_to_string
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movq	%rdx, %rbx
	movq	%rax, %rbp
	call	str_split
	movq	%rax, %rdi
	movq	%rdx, %rsi
	call	printlis
	testl	%ebx, %ebx
	jle	.L18
	leal	-1(%rbx), %eax
	cmpl	$14, %eax
	jbe	.L19
	movl	%ebx, %edx
	pxor	%xmm3, %xmm3
	pxor	%xmm5, %xmm5
	movq	%rbp, %rax
	shrl	$4, %edx
	movdqa	.LC1(%rip), %xmm7
	movdqa	.LC2(%rip), %xmm6
	pxor	%xmm4, %xmm4
	salq	$4, %rdx
	addq	%rbp, %rdx
	.p2align 4,,10
	.p2align 3
.L5:
	movdqu	(%rax), %xmm0
	movdqa	%xmm5, %xmm1
	movdqa	%xmm4, %xmm8
	addq	$16, %rax
	pcmpeqb	%xmm7, %xmm0
	pand	%xmm6, %xmm0
	pcmpgtb	%xmm0, %xmm1
	movdqa	%xmm0, %xmm2
	punpcklbw	%xmm1, %xmm2
	punpckhbw	%xmm1, %xmm0
	pcmpgtw	%xmm2, %xmm8
	movdqa	%xmm2, %xmm1
	punpcklwd	%xmm8, %xmm1
	punpckhwd	%xmm8, %xmm2
	paddd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	paddd	%xmm2, %xmm1
	movdqa	%xmm4, %xmm2
	pcmpgtw	%xmm0, %xmm2
	punpcklwd	%xmm2, %xmm3
	punpckhwd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	movdqa	%xmm1, %xmm3
	paddd	%xmm0, %xmm3
	cmpq	%rdx, %rax
	jne	.L5
	movdqa	%xmm3, %xmm0
	movl	%ebx, %eax
	psrldq	$8, %xmm0
	andl	$-16, %eax
	paddd	%xmm3, %xmm0
	movl	%eax, %edx
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm3, %xmm1
	psrldq	$8, %xmm3
	paddd	%xmm3, %xmm1
	movd	%xmm0, %esi
	testb	$15, %bl
	je	.L3
.L4:
	movl	%ebx, %ecx
	subl	%eax, %ecx
	leal	-1(%rcx), %edi
	cmpl	$6, %edi
	jbe	.L8
	movq	.LC3(%rip), %xmm2
	movq	0(%rbp,%rax), %xmm0
	pcmpeqb	%xmm2, %xmm0
	movq	.LC4(%rip), %xmm2
	pand	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	pcmpgtb	%xmm0, %xmm2
	movdqa	%xmm0, %xmm3
	punpcklbw	%xmm2, %xmm3
	punpcklbw	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	movdqa	%xmm2, %xmm4
	movdqa	%xmm3, %xmm5
	pshufd	$78, %xmm0, %xmm0
	pcmpgtw	%xmm3, %xmm4
	pcmpgtw	%xmm0, %xmm2
	punpcklwd	%xmm4, %xmm5
	punpcklwd	%xmm4, %xmm3
	paddd	%xmm5, %xmm1
	pshufd	$78, %xmm3, %xmm3
	paddd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm2, %xmm0
	punpcklwd	%xmm2, %xmm3
	pshufd	$78, %xmm0, %xmm0
	paddd	%xmm3, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %esi
	pshufd	$0xe5, %xmm0, %xmm6
	movd	%xmm6, %eax
	addl	%eax, %esi
	movl	%ecx, %eax
	andl	$-8, %eax
	addl	%eax, %edx
	andl	$7, %ecx
	je	.L3
.L8:
	movslq	%edx, %rax
	cmpb	$32, 0(%rbp,%rax)
	je	.L30
.L10:
	leal	1(%rdx), %eax
	cmpl	%eax, %ebx
	jle	.L3
	cltq
	cmpb	$32, 0(%rbp,%rax)
	je	.L31
.L11:
	leal	2(%rdx), %eax
	cmpl	%eax, %ebx
	jle	.L3
	cltq
	cmpb	$32, 0(%rbp,%rax)
	je	.L32
.L12:
	leal	3(%rdx), %eax
	cmpl	%eax, %ebx
	jle	.L3
	cltq
	cmpb	$32, 0(%rbp,%rax)
	je	.L33
.L13:
	leal	4(%rdx), %eax
	cmpl	%eax, %ebx
	jle	.L3
	cltq
	cmpb	$32, 0(%rbp,%rax)
	jne	.L14
	addl	$1, %esi
.L14:
	leal	5(%rdx), %eax
	cmpl	%ebx, %eax
	jge	.L3
	cltq
	cmpb	$32, 0(%rbp,%rax)
	jne	.L15
	addl	$1, %esi
.L15:
	addl	$6, %edx
	cmpl	%edx, %ebx
	jle	.L3
	movslq	%edx, %rdx
	cmpb	$32, 0(%rbp,%rdx)
	je	.L34
.L3:
	movl	$.LC5, %edi
	xorl	%eax, %eax
	call	printf
	movq	%rbx, %rsi
	movl	$.LC6, %edi
	xorl	%eax, %eax
	call	printf
	xorl	%eax, %eax
	call	print_alloc_info
	xorl	%eax, %eax
	call	str_free_all
	xorl	%eax, %eax
	call	print_alloc_info
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L30:
	.cfi_restore_state
	addl	$1, %esi
	jmp	.L10
.L31:
	addl	$1, %esi
	jmp	.L11
.L32:
	addl	$1, %esi
	jmp	.L12
.L29:
	movl	$15, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	movq	stderr(%rip), %rcx
	call	fwrite
	jmp	.L2
.L33:
	addl	$1, %esi
	jmp	.L13
.L34:
	addl	$1, %esi
	jmp	.L3
.L18:
	xorl	%esi, %esi
	jmp	.L3
.L19:
	pxor	%xmm1, %xmm1
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.L4
	.cfi_endproc
.LFE27:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.align 16
.LC2:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.set	.LC3,.LC1
	.set	.LC4,.LC2
	.ident	"GCC: (GNU) 12.0.1 20220401 (Red Hat 12.0.1-0)"
	.section	.note.GNU-stack,"",@progbits
