	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"Question IA:"
.LC1:
	.string	"\tA - Representations"
	.align 8
.LC5:
	.string	"\t\tFirst: %x\n\t\tSecond: %x\n\t\tThird: %x\n"
.LC6:
	.string	"\tB - Steps"
.LC7:
	.string	"\t\tStep 1: %x\n"
.LC8:
	.string	"Success"
.LC10:
	.string	"\t\tStep 2: %x    %e\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	leaq	-20(%rbp), %rax
	movl	(%rax), %ecx
	leaq	-24(%rbp), %rax
	movl	(%rax), %edx
	leaq	-28(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movss	-28(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	leaq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movss	-28(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	-20(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-16(%rbp), %xmm0
	movss	.LC4(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L6
	movss	.LC4(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L2
.L6:
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L2:
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movq	.LC9(%rip), %rdx
	movq	%rdx, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC2:
	.long	1082969293
	.align 4
.LC3:
	.long	1079613850
	.align 4
.LC4:
	.long	1065353216
	.align 8
.LC9:
	.long	0
	.long	1019215872
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
