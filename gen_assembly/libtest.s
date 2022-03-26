	.file	"libtest.c"
	.text
.Ltext0:
	.file 0 "/home/amr/cpp_new/strlibc" "libtest.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ERROR: NO enough argument\n"
.LC1:
	.string	"<usage>: %s filename\n"
.LC2:
	.string	"hello i am groot ,i am an x86_64 assembler"
.LC3:
	.string	"hello i am 2 groot ,i am an x86_64 assembler"
.LC4:
	.string	"hello i am after file groot ,i am an x86_64 assembler"
.LC5:
	.string	"END OF FIRST TEST!!!"
.LC6:
	.string	"-----------------------------------------------after all---------------"
.LC7:
	.string	"-----------------------------------------------after all---------------\n\n"
.LC8:
	.string	"hello i am groot and iam an x86_64, arm assembler , How the fook are you!!"
.LC9:
	.string	"lis  = %s\n"
.LC10:
	.string	" \"%s\","
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LVL0:
.LFB57:
	.file 1 "libtest.c"
	.loc 1 10 32 view -0
	.cfi_startproc
	.loc 1 10 32 is_stmt 0 view .LVU1
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$296, %rsp
	.cfi_def_cfa_offset 336
	.loc 1 10 32 view .LVU2
	movq	%fs:40, %rax
	movq	%rax, 280(%rsp)
	xorl	%eax, %eax
	.loc 1 11 5 is_stmt 1 view .LVU3
	.loc 1 11 7 is_stmt 0 view .LVU4
	decl	%edi
.LVL1:
	.loc 1 11 7 view .LVU5
	jg	.L2
	.loc 1 12 9 is_stmt 1 view .LVU6
.LVL2:
.LBB23:
.LBI23:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 103 1 view .LVU7
.LBB24:
	.loc 2 105 3 view .LVU8
	.loc 2 105 10 is_stmt 0 view .LVU9
	movq	stderr(%rip), %rsi
.LVL3:
	.loc 2 105 10 view .LVU10
	leaq	.LC0(%rip), %rdi
	call	fputs@PLT
.LVL4:
	.loc 2 105 10 view .LVU11
.LBE24:
.LBE23:
	.loc 1 13 9 is_stmt 1 view .LVU12
.LBB25:
.LBI25:
	.loc 2 103 1 view .LVU13
.LBB26:
	.loc 2 105 3 view .LVU14
	.loc 2 105 10 is_stmt 0 view .LVU15
	movq	(%rbx), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	stderr(%rip), %rdi
	leaq	.LC1(%rip), %rdx
	call	__fprintf_chk@PLT
.LVL5:
	.loc 2 105 10 view .LVU16
.LBE26:
.LBE25:
	.loc 1 14 9 is_stmt 1 view .LVU17
	orl	$-1, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 17 5 view .LVU18
	.loc 1 17 17 is_stmt 0 view .LVU19
	movq	%rsp, %rbp
	leaq	.LC2(%rip), %rsi
.LBB27:
.LBB28:
	.loc 2 112 10 view .LVU20
	leaq	.LC9(%rip), %r13
.LBE28:
.LBE27:
	.loc 1 17 17 view .LVU21
	movq	%rbp, %rdi
	call	newstr@PLT
.LVL7:
	.loc 1 18 5 is_stmt 1 view .LVU22
	subq	$64, %rsp
	.cfi_def_cfa_offset 400
	movq	%rbp, %rsi
	movl	$14, %ecx
	movq	%rsp, %rdi
	.loc 1 20 17 is_stmt 0 view .LVU23
	leaq	120(%rsp), %r12
	.loc 1 18 5 view .LVU24
	rep movsl
	call	__str_println@PLT
.LVL8:
	.loc 1 20 5 is_stmt 1 view .LVU25
	.loc 1 20 17 is_stmt 0 view .LVU26
	movq	%rbp, %rsp
	.cfi_def_cfa_offset 336
	movq	%r12, %rdi
	leaq	.LC3(%rip), %rsi
	call	newstr@PLT
.LVL9:
	.loc 1 22 5 is_stmt 1 view .LVU27
	subq	$64, %rsp
	.cfi_def_cfa_offset 400
	movq	%rbp, %rsi
	movl	$14, %ecx
	movq	%rsp, %rdi
	.loc 1 27 10 is_stmt 0 view .LVU28
	leaq	176(%rsp), %rbp
	.loc 1 22 5 view .LVU29
	rep movsl
	call	__str_println@PLT
.LVL10:
	.loc 1 23 5 is_stmt 1 view .LVU30
	movq	%rsp, %rdi
	movq	%r12, %rsi
	movl	$14, %ecx
	rep movsl
	call	__str_println@PLT
.LVL11:
	.loc 1 26 5 view .LVU31
	.loc 1 27 5 view .LVU32
	.loc 1 27 10 is_stmt 0 view .LVU33
	movq	8(%rbx), %rsi
	movq	%rbp, %rdi
	addq	$64, %rsp
	.cfi_def_cfa_offset 336
.LBB32:
	.loc 1 49 5 view .LVU34
	xorl	%ebx, %ebx
.LVL12:
	.loc 1 49 5 view .LVU35
.LBE32:
	.loc 1 27 10 view .LVU36
	call	read_file_to_string@PLT
.LVL13:
	.loc 1 29 5 is_stmt 1 view .LVU37
	subq	$64, %rsp
	.cfi_def_cfa_offset 400
	movq	%rbp, %rsi
	movl	$14, %ecx
	movq	%rsp, %rdi
	.loc 1 31 17 is_stmt 0 view .LVU38
	leaq	232(%rsp), %rbp
	.loc 1 29 5 view .LVU39
	rep movsl
	call	__str_println@PLT
.LVL14:
	.loc 1 31 5 is_stmt 1 view .LVU40
	.loc 1 31 17 is_stmt 0 view .LVU41
	movq	%rbp, %rdi
	addq	$64, %rsp
	.cfi_def_cfa_offset 336
	leaq	.LC4(%rip), %rsi
	call	newstr@PLT
.LVL15:
	.loc 1 32 5 is_stmt 1 view .LVU42
	subq	$64, %rsp
	.cfi_def_cfa_offset 400
	movq	%rbp, %rsi
	movl	$14, %ecx
	movq	%rsp, %rdi
.LBB37:
.LBB38:
	.loc 2 112 10 is_stmt 0 view .LVU43
	leaq	.LC6(%rip), %rbp
.LBE38:
.LBE37:
	.loc 1 32 5 view .LVU44
	rep movsl
	call	__str_println@PLT
.LVL16:
	.loc 1 35 5 is_stmt 1 view .LVU45
.LBB40:
.LBI40:
	.loc 2 110 1 view .LVU46
.LBB41:
	.loc 2 112 3 view .LVU47
	.loc 2 112 10 is_stmt 0 view .LVU48
	addq	$64, %rsp
	.cfi_def_cfa_offset 336
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
.LVL17:
	.loc 2 112 10 view .LVU49
.LBE41:
.LBE40:
	.loc 1 37 5 is_stmt 1 view .LVU50
	xorl	%eax, %eax
	call	__str_free_all@PLT
.LVL18:
	.loc 1 39 5 view .LVU51
.LBB42:
.LBI37:
	.loc 2 110 1 view .LVU52
.LBB39:
	.loc 2 112 3 view .LVU53
	.loc 2 112 10 is_stmt 0 view .LVU54
	movq	%rbp, %rdi
	call	puts@PLT
.LVL19:
	.loc 2 112 10 view .LVU55
.LBE39:
.LBE42:
	.loc 1 40 5 is_stmt 1 view .LVU56
.LBB43:
.LBI43:
	.loc 2 110 1 view .LVU57
.LBB44:
	.loc 2 112 3 view .LVU58
	.loc 2 112 10 is_stmt 0 view .LVU59
	movq	%rbp, %rdi
.LBE44:
.LBE43:
	.loc 1 43 21 view .LVU60
	leaq	224(%rsp), %rbp
.LBB46:
.LBB45:
	.loc 2 112 10 view .LVU61
	call	puts@PLT
.LVL20:
	.loc 2 112 10 view .LVU62
.LBE45:
.LBE46:
	.loc 1 41 5 is_stmt 1 view .LVU63
.LBB47:
.LBI47:
	.loc 2 110 1 view .LVU64
.LBB48:
	.loc 2 112 3 view .LVU65
	.loc 2 112 10 is_stmt 0 view .LVU66
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
.LVL21:
	.loc 2 112 10 view .LVU67
.LBE48:
.LBE47:
	.loc 1 43 5 is_stmt 1 view .LVU68
	.loc 1 43 21 is_stmt 0 view .LVU69
	movq	%rbp, %rdi
	leaq	.LC8(%rip), %rsi
	call	newstr@PLT
.LVL22:
	.loc 1 44 5 is_stmt 1 view .LVU70
	subq	$64, %rsp
	.cfi_def_cfa_offset 400
	movq	%rbp, %rsi
	movl	$14, %ecx
	movq	%rsp, %rdi
	rep movsl
	call	__str_println@PLT
.LVL23:
	.loc 1 45 4 view .LVU71
	.loc 1 45 16 is_stmt 0 view .LVU72
	addq	$64, %rsp
	.cfi_def_cfa_offset 336
	movq	224(%rsp), %rdi
	call	*256(%rsp)
.LVL24:
.LBB49:
.LBB29:
	.loc 2 112 10 view .LVU73
	movq	%r13, %rsi
	movl	$1, %edi
.LBE29:
.LBE49:
	.loc 1 45 16 view .LVU74
	movq	%rdx, %r12
.LVL25:
	.loc 1 47 5 is_stmt 1 view .LVU75
.LBB50:
.LBI27:
	.loc 2 110 1 view .LVU76
.LBB30:
	.loc 2 112 3 view .LVU77
	.loc 2 112 10 is_stmt 0 view .LVU78
	movq	(%rax), %rdx
.LBE30:
.LBE50:
	.loc 1 45 16 view .LVU79
	movq	%rax, %rbp
.LVL26:
.LBB51:
.LBB31:
	.loc 2 112 10 view .LVU80
	xorl	%eax, %eax
.LVL27:
	.loc 2 112 10 view .LVU81
	call	__printf_chk@PLT
.LVL28:
	.loc 2 112 10 view .LVU82
.LBE31:
.LBE51:
	.loc 1 48 5 is_stmt 1 view .LVU83
.LBB52:
.LBI52:
	.loc 2 110 1 view .LVU84
.LBB53:
	.loc 2 112 3 view .LVU85
	.loc 2 112 10 is_stmt 0 view .LVU86
	movq	8(%rbp), %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	movl	$1, %edi
.LBE53:
.LBE52:
.LBB55:
.LBB33:
.LBB34:
	leaq	.LC10(%rip), %r13
.LBE34:
.LBE33:
.LBE55:
.LBB56:
.LBB54:
	call	__printf_chk@PLT
.LVL29:
	.loc 2 112 10 view .LVU87
.LBE54:
.LBE56:
	.loc 1 49 5 is_stmt 1 view .LVU88
.LBB57:
	.loc 1 49 9 view .LVU89
.L3:
	.loc 1 49 23 discriminator 1 view .LVU90
	cmpl	%ebx, %r12d
	jle	.L8
	.loc 1 50 9 discriminator 3 view .LVU91
.LVL30:
.LBB36:
.LBI33:
	.loc 2 110 1 discriminator 3 view .LVU92
.LBB35:
	.loc 2 112 3 discriminator 3 view .LVU93
	.loc 2 112 10 is_stmt 0 discriminator 3 view .LVU94
	movq	0(%rbp,%rbx,8), %rdx
	movq	%r13, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	incq	%rbx
.LVL31:
	.loc 2 112 10 discriminator 3 view .LVU95
	call	__printf_chk@PLT
.LVL32:
	.loc 2 112 10 discriminator 3 view .LVU96
.LBE35:
.LBE36:
	.loc 1 49 44 is_stmt 1 discriminator 3 view .LVU97
	.loc 1 49 44 is_stmt 0 discriminator 3 view .LVU98
	jmp	.L3
.LVL33:
.L8:
	.loc 1 49 44 discriminator 3 view .LVU99
.LBE57:
	.loc 1 52 5 is_stmt 1 view .LVU100
.LBB58:
.LBI58:
	.loc 2 110 1 view .LVU101
.LBB59:
	.loc 2 112 3 view .LVU102
	.loc 2 112 10 is_stmt 0 view .LVU103
	movl	$10, %edi
	call	putchar@PLT
.LVL34:
	.loc 2 112 10 view .LVU104
.LBE59:
.LBE58:
	.loc 1 56 1 is_stmt 1 view .LVU105
	xorl	%eax, %eax
	call	__str_free_all@PLT
.LVL35:
	.loc 1 59 1 is_stmt 0 view .LVU106
	movq	280(%rsp), %rax
	subq	%fs:40, %rax
	je	.L5
	call	__stack_chk_fail@PLT
.LVL36:
.L5:
	addq	$296, %rsp
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL37:
	.loc 1 59 1 view .LVU107
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL38:
	.loc 1 59 1 view .LVU108
	popq	%r12
	.cfi_def_cfa_offset 16
	.loc 1 59 1 view .LVU109
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE57:
	.size	main, .-main
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "libstr.h"
	.file 8 "file_handle.h"
	.file 9 "/usr/include/stdlib.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa35
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1d
	.long	.LASF78
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL20
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x9
	.long	.LASF9
	.byte	0x3
	.byte	0xd1
	.byte	0x17
	.long	0x36
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1e
	.byte	0x8
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1f
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x9
	.long	.LASF10
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x69
	.uleb128 0x9
	.long	.LASF11
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x69
	.uleb128 0x4
	.long	0x8d
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x20
	.long	0x8d
	.uleb128 0x12
	.long	.LASF50
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.long	0x21f
	.uleb128 0x1
	.long	.LASF13
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x62
	.byte	0
	.uleb128 0x1
	.long	.LASF14
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x88
	.byte	0x8
	.uleb128 0x1
	.long	.LASF15
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x88
	.byte	0x10
	.uleb128 0x1
	.long	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x88
	.byte	0x18
	.uleb128 0x1
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x88
	.byte	0x20
	.uleb128 0x1
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x88
	.byte	0x28
	.uleb128 0x1
	.long	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x88
	.byte	0x30
	.uleb128 0x1
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x88
	.byte	0x38
	.uleb128 0x1
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x88
	.byte	0x40
	.uleb128 0x1
	.long	.LASF22
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x88
	.byte	0x48
	.uleb128 0x1
	.long	.LASF23
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x88
	.byte	0x50
	.uleb128 0x1
	.long	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x88
	.byte	0x58
	.uleb128 0x1
	.long	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x238
	.byte	0x60
	.uleb128 0x1
	.long	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x23d
	.byte	0x68
	.uleb128 0x1
	.long	.LASF27
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x62
	.byte	0x70
	.uleb128 0x1
	.long	.LASF28
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x62
	.byte	0x74
	.uleb128 0x1
	.long	.LASF29
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x70
	.byte	0x78
	.uleb128 0x1
	.long	.LASF30
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x4d
	.byte	0x80
	.uleb128 0x1
	.long	.LASF31
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x54
	.byte	0x82
	.uleb128 0x1
	.long	.LASF32
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x242
	.byte	0x83
	.uleb128 0x1
	.long	.LASF33
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x252
	.byte	0x88
	.uleb128 0x1
	.long	.LASF34
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x7c
	.byte	0x90
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x25c
	.byte	0x98
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x266
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x23d
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x44
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2a
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x62
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x26b
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x99
	.uleb128 0x21
	.long	.LASF79
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0x13
	.long	.LASF43
	.uleb128 0x4
	.long	0x233
	.uleb128 0x4
	.long	0x99
	.uleb128 0x16
	.long	0x8d
	.long	0x252
	.uleb128 0x17
	.long	0x36
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x22b
	.uleb128 0x13
	.long	.LASF44
	.uleb128 0x4
	.long	0x257
	.uleb128 0x13
	.long	.LASF45
	.uleb128 0x4
	.long	0x261
	.uleb128 0x16
	.long	0x8d
	.long	0x27b
	.uleb128 0x17
	.long	0x36
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x21f
	.uleb128 0x18
	.long	0x27b
	.uleb128 0x22
	.long	.LASF66
	.byte	0xa
	.byte	0x91
	.byte	0xe
	.long	0x27b
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x4
	.long	0x94
	.uleb128 0x18
	.long	0x29f
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x7
	.byte	0x1b
	.long	0x36
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0x8
	.byte	0x17
	.long	0x2c1
	.uleb128 0x12
	.long	.LASF49
	.byte	0x38
	.byte	0x7
	.byte	0xd
	.long	0x327
	.uleb128 0x19
	.string	"str"
	.byte	0xe
	.byte	0xb
	.long	0x88
	.uleb128 0x1
	.long	.LASF51
	.byte	0x7
	.byte	0xf
	.byte	0xc
	.long	0x2a
	.byte	0x8
	.uleb128 0x1
	.long	.LASF52
	.byte	0x7
	.byte	0x10
	.byte	0xb
	.long	0x36c
	.byte	0x10
	.uleb128 0x1
	.long	.LASF53
	.byte	0x7
	.byte	0x11
	.byte	0xe
	.long	0x380
	.byte	0x18
	.uleb128 0x1
	.long	.LASF54
	.byte	0x7
	.byte	0x12
	.byte	0xc
	.long	0x394
	.byte	0x20
	.uleb128 0x1
	.long	.LASF55
	.byte	0x7
	.byte	0x13
	.byte	0xd
	.long	0x3a8
	.byte	0x28
	.uleb128 0x1
	.long	.LASF56
	.byte	0x7
	.byte	0x14
	.byte	0xd
	.long	0x3a8
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.long	.LASF57
	.byte	0x7
	.byte	0xa
	.byte	0x15
	.long	0x333
	.uleb128 0x12
	.long	.LASF57
	.byte	0x10
	.byte	0x7
	.byte	0x17
	.long	0x358
	.uleb128 0x19
	.string	"ptr"
	.byte	0x18
	.byte	0xc
	.long	0x3ad
	.uleb128 0x1
	.long	.LASF51
	.byte	0x7
	.byte	0x19
	.byte	0xc
	.long	0x2a
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x2a9
	.long	0x36c
	.uleb128 0x3
	.long	0x2b5
	.uleb128 0x3
	.long	0x8d
	.byte	0
	.uleb128 0x4
	.long	0x358
	.uleb128 0xd
	.long	0x2b5
	.long	0x380
	.uleb128 0x3
	.long	0x2b5
	.byte	0
	.uleb128 0x4
	.long	0x371
	.uleb128 0xd
	.long	0x327
	.long	0x394
	.uleb128 0x3
	.long	0x88
	.byte	0
	.uleb128 0x4
	.long	0x385
	.uleb128 0xd
	.long	0x88
	.long	0x3a8
	.uleb128 0x3
	.long	0x88
	.byte	0
	.uleb128 0x4
	.long	0x399
	.uleb128 0x4
	.long	0x88
	.uleb128 0xe
	.long	.LASF58
	.byte	0x2
	.byte	0x5f
	.byte	0xc
	.long	0x62
	.long	0x3ce
	.uleb128 0x3
	.long	0x62
	.uleb128 0x3
	.long	0x29f
	.uleb128 0xb
	.byte	0
	.uleb128 0xe
	.long	.LASF59
	.byte	0x2
	.byte	0x5d
	.byte	0xc
	.long	0x62
	.long	0x3ef
	.uleb128 0x3
	.long	0x280
	.uleb128 0x3
	.long	0x62
	.uleb128 0x3
	.long	0x2a4
	.uleb128 0xb
	.byte	0
	.uleb128 0x23
	.long	.LASF80
	.byte	0x7
	.byte	0x26
	.byte	0x6
	.long	0x3fd
	.uleb128 0xb
	.byte	0
	.uleb128 0xe
	.long	.LASF60
	.byte	0x8
	.byte	0xf
	.byte	0x8
	.long	0x2b5
	.long	0x413
	.uleb128 0x3
	.long	0x29f
	.byte	0
	.uleb128 0x24
	.long	.LASF81
	.byte	0x7
	.byte	0x2c
	.byte	0x6
	.long	0x425
	.uleb128 0x3
	.long	0x2b5
	.byte	0
	.uleb128 0xe
	.long	.LASF61
	.byte	0x7
	.byte	0x1d
	.byte	0x8
	.long	0x2b5
	.long	0x43b
	.uleb128 0x3
	.long	0x88
	.byte	0
	.uleb128 0x25
	.long	.LASF62
	.byte	0x9
	.value	0x270
	.byte	0xd
	.long	0x44e
	.uleb128 0x3
	.long	0x62
	.byte	0
	.uleb128 0x26
	.long	.LASF82
	.byte	0x1
	.byte	0xa
	.byte	0x5
	.long	0x62
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x917
	.uleb128 0x1a
	.long	.LASF63
	.byte	0xe
	.long	0x62
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x1b
	.long	0x3ad
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xf
	.string	"sl"
	.byte	0x11
	.long	0x2b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0xf
	.string	"dl"
	.byte	0x14
	.long	0x2b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0xf
	.string	"fc"
	.byte	0x1a
	.long	0x2b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0xf
	.string	"al"
	.byte	0x1f
	.long	0x2b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x27
	.long	.LASF65
	.byte	0x1
	.byte	0x2b
	.byte	0xc
	.long	0x2b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.long	.LASF67
	.byte	0x1
	.byte	0x2d
	.byte	0x9
	.long	0x327
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x29
	.long	.LLRL7
	.long	0x544
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.long	0x62
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x2b
	.long	0x917
	.quad	.LBI33
	.byte	.LVU92
	.long	.LLRL9
	.byte	0x1
	.byte	0x32
	.byte	0x9
	.uleb128 0x6
	.long	0x925
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x7
	.quad	.LVL32
	.long	0x3b2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x932
	.quad	.LBI23
	.byte	.LVU7
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0xc
	.byte	0x9
	.long	0x596
	.uleb128 0x6
	.long	0x94b
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1b
	.long	0x940
	.uleb128 0x7
	.quad	.LVL4
	.long	0x958
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x932
	.quad	.LBI25
	.byte	.LVU13
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.byte	0xd
	.byte	0x9
	.long	0x5ed
	.uleb128 0x6
	.long	0x94b
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1b
	.long	0x940
	.uleb128 0x7
	.quad	.LVL5
	.long	0x3ce
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x917
	.quad	.LBI27
	.byte	.LVU76
	.long	.LLRL5
	.byte	0x2f
	.long	0x62b
	.uleb128 0x6
	.long	0x925
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x7
	.quad	.LVL28
	.long	0x3b2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x917
	.quad	.LBI37
	.byte	.LVU52
	.long	.LLRL11
	.byte	0x27
	.long	0x664
	.uleb128 0x6
	.long	0x925
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x7
	.quad	.LVL19
	.long	0x9ae
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x917
	.quad	.LBI40
	.byte	.LVU46
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.byte	0x23
	.byte	0x5
	.long	0x6b1
	.uleb128 0x6
	.long	0x925
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x7
	.quad	.LVL17
	.long	0x9ae
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x917
	.quad	.LBI43
	.byte	.LVU57
	.long	.LLRL14
	.byte	0x28
	.long	0x6f1
	.uleb128 0x6
	.long	0x925
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x7
	.quad	.LVL20
	.long	0x9ae
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x917
	.quad	.LBI47
	.byte	.LVU64
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.byte	0x29
	.byte	0x5
	.long	0x73e
	.uleb128 0x6
	.long	0x925
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x7
	.quad	.LVL21
	.long	0x9ae
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x917
	.quad	.LBI52
	.byte	.LVU84
	.long	.LLRL17
	.byte	0x30
	.long	0x783
	.uleb128 0x6
	.long	0x925
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x7
	.quad	.LVL29
	.long	0x3b2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x917
	.quad	.LBI58
	.byte	.LVU101
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.byte	0x34
	.byte	0x5
	.long	0x7c8
	.uleb128 0x6
	.long	0x925
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x7
	.quad	.LVL34
	.long	0xa26
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xa
	.quad	.LVL6
	.long	0x43b
	.long	0x7e0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.quad	.LVL7
	.long	0x425
	.long	0x805
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x8
	.quad	.LVL8
	.long	0x413
	.uleb128 0xa
	.quad	.LVL9
	.long	0x425
	.long	0x837
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.uleb128 0x8
	.quad	.LVL10
	.long	0x413
	.uleb128 0x8
	.quad	.LVL11
	.long	0x413
	.uleb128 0xa
	.quad	.LVL13
	.long	0x3fd
	.long	0x869
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL14
	.long	0x413
	.uleb128 0xa
	.quad	.LVL15
	.long	0x425
	.long	0x89b
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x8
	.quad	.LVL16
	.long	0x413
	.uleb128 0x8
	.quad	.LVL18
	.long	0x3ef
	.uleb128 0xa
	.quad	.LVL22
	.long	0x425
	.long	0x8da
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.uleb128 0x8
	.quad	.LVL23
	.long	0x413
	.uleb128 0x2c
	.quad	.LVL24
	.long	0x8fc
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.quad	.LVL35
	.long	0x3ef
	.uleb128 0x8
	.quad	.LVL36
	.long	0xa2f
	.byte	0
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x6e
	.long	0x62
	.long	0x932
	.uleb128 0x14
	.long	.LASF70
	.byte	0x6e
	.byte	0x20
	.long	0x2a4
	.uleb128 0xb
	.byte	0
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x67
	.long	0x62
	.long	0x958
	.uleb128 0x14
	.long	.LASF71
	.byte	0x67
	.byte	0x1b
	.long	0x280
	.uleb128 0x14
	.long	.LASF70
	.byte	0x67
	.byte	0x3c
	.long	0x2a4
	.uleb128 0xb
	.byte	0
	.uleb128 0x15
	.long	.LASF72
	.long	.LASF74
	.uleb128 0x11
	.uleb128 0x4b
	.byte	0x9e
	.uleb128 0x49
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x61
	.byte	0x66
	.byte	0x74
	.byte	0x65
	.byte	0x72
	.byte	0x20
	.byte	0x61
	.byte	0x6c
	.byte	0x6c
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0xa
	.byte	0
	.uleb128 0x15
	.long	.LASF73
	.long	.LASF75
	.uleb128 0x11
	.uleb128 0x18
	.byte	0x9e
	.uleb128 0x16
	.byte	0x45
	.byte	0x4e
	.byte	0x44
	.byte	0x20
	.byte	0x4f
	.byte	0x46
	.byte	0x20
	.byte	0x46
	.byte	0x49
	.byte	0x52
	.byte	0x53
	.byte	0x54
	.byte	0x20
	.byte	0x54
	.byte	0x45
	.byte	0x53
	.byte	0x54
	.byte	0x21
	.byte	0x21
	.byte	0x21
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.uleb128 0x4d
	.byte	0x9e
	.uleb128 0x4b
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x61
	.byte	0x66
	.byte	0x74
	.byte	0x65
	.byte	0x72
	.byte	0x20
	.byte	0x61
	.byte	0x6c
	.byte	0x6c
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0x2d
	.byte	0xa
	.byte	0xa
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x2
	.byte	0xa
	.byte	0
	.uleb128 0x15
	.long	.LASF76
	.long	.LASF77
	.uleb128 0x2d
	.long	.LASF83
	.long	.LASF83
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE57-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL12-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL12-.LVL0
	.uleb128 .LFE57-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU75
	.uleb128 .LVU80
	.uleb128 .LVU81
	.uleb128 .LVU86
	.uleb128 .LVU99
	.uleb128 .LVU106
.LLST2:
	.byte	0x6
	.quad	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL26-.LVL25
	.uleb128 0x5
	.byte	0x50
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.uleb128 .LVL27-.LVL25
	.uleb128 .LVL28-.LVL25
	.uleb128 0x5
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.uleb128 .LVL33-.LVL25
	.uleb128 .LVL35-.LVL25
	.uleb128 0x5
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.byte	0
.LVUS8:
	.uleb128 .LVU90
	.uleb128 .LVU95
	.uleb128 .LVU99
	.uleb128 .LVU107
.LLST8:
	.byte	0x6
	.quad	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL31-.LVL29
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL33-.LVL29
	.uleb128 .LVL37-.LVL29
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS10:
	.uleb128 .LVU92
	.uleb128 .LVU96
.LLST10:
	.byte	0x8
	.quad	.LVL30
	.uleb128 .LVL32-.LVL30
	.uleb128 0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU7
	.uleb128 .LVU11
.LLST3:
	.byte	0x8
	.quad	.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU13
	.uleb128 .LVU16
.LLST4:
	.byte	0x8
	.quad	.LVL4
	.uleb128 .LVL5-.LVL4
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU76
	.uleb128 .LVU82
.LLST6:
	.byte	0x8
	.quad	.LVL25
	.uleb128 .LVL28-.LVL25
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU52
	.uleb128 .LVU55
.LLST12:
	.byte	0x8
	.quad	.LVL18
	.uleb128 .LVL19-.LVL18
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2401
	.sleb128 0
	.byte	0
.LVUS13:
	.uleb128 .LVU46
	.uleb128 .LVU49
.LLST13:
	.byte	0x8
	.quad	.LVL16
	.uleb128 .LVL17-.LVL16
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2487
	.sleb128 0
	.byte	0
.LVUS15:
	.uleb128 .LVU57
	.uleb128 .LVU62
.LLST15:
	.byte	0x8
	.quad	.LVL19
	.uleb128 .LVL20-.LVL19
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2401
	.sleb128 0
	.byte	0
.LVUS16:
	.uleb128 .LVU64
	.uleb128 .LVU67
.LLST16:
	.byte	0x8
	.quad	.LVL20
	.uleb128 .LVL21-.LVL20
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2513
	.sleb128 0
	.byte	0
.LVUS18:
	.uleb128 .LVU84
	.uleb128 .LVU87
.LLST18:
	.byte	0x8
	.quad	.LVL28
	.uleb128 .LVL29-.LVL28
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU101
	.uleb128 .LVU104
.LLST19:
	.byte	0x8
	.quad	.LVL33
	.uleb128 .LVL34-.LVL33
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2592
	.sleb128 0
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL5:
	.byte	0x5
	.quad	.LBB27
	.byte	0x4
	.uleb128 .LBB27-.LBB27
	.uleb128 .LBE27-.LBB27
	.byte	0x4
	.uleb128 .LBB49-.LBB27
	.uleb128 .LBE49-.LBB27
	.byte	0x4
	.uleb128 .LBB50-.LBB27
	.uleb128 .LBE50-.LBB27
	.byte	0x4
	.uleb128 .LBB51-.LBB27
	.uleb128 .LBE51-.LBB27
	.byte	0
.LLRL7:
	.byte	0x5
	.quad	.LBB32
	.byte	0x4
	.uleb128 .LBB32-.LBB32
	.uleb128 .LBE32-.LBB32
	.byte	0x4
	.uleb128 .LBB55-.LBB32
	.uleb128 .LBE55-.LBB32
	.byte	0x4
	.uleb128 .LBB57-.LBB32
	.uleb128 .LBE57-.LBB32
	.byte	0
.LLRL9:
	.byte	0x5
	.quad	.LBB33
	.byte	0x4
	.uleb128 .LBB33-.LBB33
	.uleb128 .LBE33-.LBB33
	.byte	0x4
	.uleb128 .LBB36-.LBB33
	.uleb128 .LBE36-.LBB33
	.byte	0
.LLRL11:
	.byte	0x5
	.quad	.LBB37
	.byte	0x4
	.uleb128 .LBB37-.LBB37
	.uleb128 .LBE37-.LBB37
	.byte	0x4
	.uleb128 .LBB42-.LBB37
	.uleb128 .LBE42-.LBB37
	.byte	0
.LLRL14:
	.byte	0x5
	.quad	.LBB43
	.byte	0x4
	.uleb128 .LBB43-.LBB43
	.uleb128 .LBE43-.LBB43
	.byte	0x4
	.uleb128 .LBB46-.LBB43
	.uleb128 .LBE46-.LBB43
	.byte	0
.LLRL17:
	.byte	0x5
	.quad	.LBB52
	.byte	0x4
	.uleb128 .LBB52-.LBB52
	.uleb128 .LBE52-.LBB52
	.byte	0x4
	.uleb128 .LBB56-.LBB52
	.uleb128 .LBE56-.LBB52
	.byte	0
.LLRL20:
	.byte	0x7
	.quad	.LFB57
	.uleb128 .LFE57-.LFB57
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF68:
	.string	"printf"
.LASF10:
	.string	"__off_t"
.LASF55:
	.string	"reverse_str"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF9:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF49:
	.string	"string"
.LASF65:
	.string	"stream"
.LASF20:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF35:
	.string	"_codecvt"
.LASF46:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF61:
	.string	"newstr"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF8:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF74:
	.string	"__builtin_fputs"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF54:
	.string	"split"
.LASF44:
	.string	"_IO_codecvt"
.LASF58:
	.string	"__printf_chk"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF80:
	.string	"__str_free_all"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF69:
	.string	"fprintf"
.LASF71:
	.string	"__stream"
.LASF2:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF77:
	.string	"__builtin_putchar"
.LASF5:
	.string	"short unsigned int"
.LASF76:
	.string	"putchar"
.LASF22:
	.string	"_IO_save_base"
.LASF33:
	.string	"_lock"
.LASF56:
	.string	"substr"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF75:
	.string	"__builtin_puts"
.LASF53:
	.string	"copy"
.LASF67:
	.string	"_lis"
.LASF19:
	.string	"_IO_write_end"
.LASF79:
	.string	"_IO_lock_t"
.LASF50:
	.string	"_IO_FILE"
.LASF72:
	.string	"fputs"
.LASF48:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF4:
	.string	"unsigned char"
.LASF81:
	.string	"__str_println"
.LASF7:
	.string	"short int"
.LASF45:
	.string	"_IO_wide_data"
.LASF31:
	.string	"_vtable_offset"
.LASF42:
	.string	"FILE"
.LASF62:
	.string	"exit"
.LASF59:
	.string	"__fprintf_chk"
.LASF83:
	.string	"__stack_chk_fail"
.LASF51:
	.string	"length"
.LASF12:
	.string	"char"
.LASF63:
	.string	"argc"
.LASF11:
	.string	"__off64_t"
.LASF78:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -Os -std=gnu17 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF70:
	.string	"__fmt"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF66:
	.string	"stderr"
.LASF60:
	.string	"read_file_to_string"
.LASF64:
	.string	"argv"
.LASF23:
	.string	"_IO_backup_base"
.LASF52:
	.string	"find"
.LASF37:
	.string	"_freeres_list"
.LASF36:
	.string	"_wide_data"
.LASF57:
	.string	"list"
.LASF73:
	.string	"puts"
.LASF82:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"libtest.c"
.LASF1:
	.string	"/home/amr/cpp_new/strlibc"
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
