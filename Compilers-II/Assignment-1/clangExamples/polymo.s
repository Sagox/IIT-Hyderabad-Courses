	.file	"polymo.cpp"
	.text
	.section	.text._ZN2ca3fooEi,"axG",@progbits,_ZN2ca3fooEi,comdat
	.weak	_ZN2ca3fooEi
	.type	_ZN2ca3fooEi, @function
_ZN2ca3fooEi:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$5, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN2ca3fooEi, .-_ZN2ca3fooEi
	.section	.text._ZN2cb3fooEi,"axG",@progbits,_ZN2cb3fooEi,comdat
	.weak	_ZN2cb3fooEi
	.type	_ZN2cb3fooEi, @function
_ZN2cb3fooEi:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$5, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN2cb3fooEi, .-_ZN2cb3fooEi
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movl	$4, %edi
	call	_ZN2ca3fooEi
	movl	%eax, %ebx
	movl	$5, %edi
	call	_ZN2cb3fooEi
	addl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
