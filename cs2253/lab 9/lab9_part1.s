	.file	"lab9_part1.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "enter i \0"
LC1:
	.ascii "%d\0"
LC2:
	.ascii "your sum is %d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$0, 28(%esp)
	movl	$LC0, (%esp)
	call	_puts
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	movl	16(%esp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 24(%esp)
	jmp	L2
L3:
	movl	20(%esp), %eax
	addl	%eax, 28(%esp)
	incl	24(%esp)
L2:
	cmpl	$9, 24(%esp)
	jle	L3
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	28(%esp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, 24(%esp)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.ident	"GCC: (GNU) 4.8.1"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
