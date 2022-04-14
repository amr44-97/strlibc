	.file	"libtest.c"
	.intel_syntax noprefix
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rsi
	sub	rsp, 8
	.cfi_def_cfa_offset 32
	cmp	edi, 1
	jle	.L29
.L2:
	mov	rdi, QWORD PTR [rbx+8]
	call	read_file_to_string
	mov	rsi, rdx
	mov	rdi, rax
	mov	rbx, rdx
	mov	rbp, rax
	call	str_split
	mov	rdi, rax
	mov	rsi, rdx
	call	printlis
	test	ebx, ebx
	jle	.L18
	lea	eax, [rbx-1]
	cmp	eax, 14
	jbe	.L19
	mov	edx, ebx
	pxor	xmm3, xmm3
	pxor	xmm5, xmm5
	mov	rax, rbp
	shr	edx, 4
	movdqa	xmm7, XMMWORD PTR .LC1[rip]
	movdqa	xmm6, XMMWORD PTR .LC2[rip]
	pxor	xmm4, xmm4
	sal	rdx, 4
	add	rdx, rbp
	.p2align 4,,10
	.p2align 3
.L5:
	movdqu	xmm0, XMMWORD PTR [rax]
	movdqa	xmm1, xmm5
	movdqa	xmm8, xmm4
	add	rax, 16
	pcmpeqb	xmm0, xmm7
	pand	xmm0, xmm6
	pcmpgtb	xmm1, xmm0
	movdqa	xmm2, xmm0
	punpcklbw	xmm2, xmm1
	punpckhbw	xmm0, xmm1
	pcmpgtw	xmm8, xmm2
	movdqa	xmm1, xmm2
	punpcklwd	xmm1, xmm8
	punpckhwd	xmm2, xmm8
	paddd	xmm1, xmm3
	movdqa	xmm3, xmm0
	paddd	xmm1, xmm2
	movdqa	xmm2, xmm4
	pcmpgtw	xmm2, xmm0
	punpcklwd	xmm3, xmm2
	punpckhwd	xmm0, xmm2
	paddd	xmm1, xmm3
	movdqa	xmm3, xmm1
	paddd	xmm3, xmm0
	cmp	rax, rdx
	jne	.L5
	movdqa	xmm0, xmm3
	mov	eax, ebx
	psrldq	xmm0, 8
	and	eax, -16
	paddd	xmm0, xmm3
	mov	edx, eax
	movdqa	xmm1, xmm0
	psrldq	xmm1, 4
	paddd	xmm0, xmm1
	movdqa	xmm1, xmm3
	psrldq	xmm3, 8
	paddd	xmm1, xmm3
	movd	esi, xmm0
	test	bl, 15
	je	.L3
.L4:
	mov	ecx, ebx
	sub	ecx, eax
	lea	edi, [rcx-1]
	cmp	edi, 6
	jbe	.L8
	movq	xmm2, QWORD PTR .LC3[rip]
	movq	xmm0, QWORD PTR [rbp+0+rax]
	pcmpeqb	xmm0, xmm2
	movq	xmm2, QWORD PTR .LC4[rip]
	pand	xmm0, xmm2
	pxor	xmm2, xmm2
	pcmpgtb	xmm2, xmm0
	movdqa	xmm3, xmm0
	punpcklbw	xmm3, xmm2
	punpcklbw	xmm0, xmm2
	pxor	xmm2, xmm2
	movdqa	xmm4, xmm2
	movdqa	xmm5, xmm3
	pshufd	xmm0, xmm0, 78
	pcmpgtw	xmm4, xmm3
	pcmpgtw	xmm2, xmm0
	punpcklwd	xmm5, xmm4
	punpcklwd	xmm3, xmm4
	paddd	xmm1, xmm5
	pshufd	xmm3, xmm3, 78
	paddd	xmm1, xmm3
	movdqa	xmm3, xmm0
	punpcklwd	xmm0, xmm2
	punpcklwd	xmm3, xmm2
	pshufd	xmm0, xmm0, 78
	paddd	xmm1, xmm3
	paddd	xmm0, xmm1
	movd	esi, xmm0
	pshufd	xmm6, xmm0, 0xe5
	movd	eax, xmm6
	add	esi, eax
	mov	eax, ecx
	and	eax, -8
	add	edx, eax
	and	ecx, 7
	je	.L3
.L8:
	movsx	rax, edx
	cmp	BYTE PTR [rbp+0+rax], 32
	je	.L30
.L10:
	lea	eax, [rdx+1]
	cmp	ebx, eax
	jle	.L3
	cdqe
	cmp	BYTE PTR [rbp+0+rax], 32
	je	.L31
.L11:
	lea	eax, [rdx+2]
	cmp	ebx, eax
	jle	.L3
	cdqe
	cmp	BYTE PTR [rbp+0+rax], 32
	je	.L32
.L12:
	lea	eax, [rdx+3]
	cmp	ebx, eax
	jle	.L3
	cdqe
	cmp	BYTE PTR [rbp+0+rax], 32
	je	.L33
.L13:
	lea	eax, [rdx+4]
	cmp	ebx, eax
	jle	.L3
	cdqe
	cmp	BYTE PTR [rbp+0+rax], 32
	jne	.L14
	add	esi, 1
.L14:
	lea	eax, [rdx+5]
	cmp	eax, ebx
	jge	.L3
	cdqe
	cmp	BYTE PTR [rbp+0+rax], 32
	jne	.L15
	add	esi, 1
.L15:
	add	edx, 6
	cmp	ebx, edx
	jle	.L3
	movsx	rdx, edx
	cmp	BYTE PTR [rbp+0+rdx], 32
	je	.L34
.L3:
	mov	edi, OFFSET FLAT:.LC5
	xor	eax, eax
	call	printf
	mov	rsi, rbx
	mov	edi, OFFSET FLAT:.LC6
	xor	eax, eax
	call	printf
	xor	eax, eax
	call	print_alloc_info
	xor	eax, eax
	call	str_free_all
	xor	eax, eax
	call	print_alloc_info
	add	rsp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.L30:
	.cfi_restore_state
	add	esi, 1
	jmp	.L10
.L31:
	add	esi, 1
	jmp	.L11
.L32:
	add	esi, 1
	jmp	.L12
.L29:
	mov	edx, 15
	mov	esi, 1
	mov	edi, OFFSET FLAT:.LC0
	mov	rcx, QWORD PTR stderr[rip]
	call	fwrite
	jmp	.L2
.L33:
	add	esi, 1
	jmp	.L13
.L34:
	add	esi, 1
	jmp	.L3
.L18:
	xor	esi, esi
	jmp	.L3
.L19:
	pxor	xmm1, xmm1
	xor	eax, eax
	xor	edx, edx
	xor	esi, esi
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
