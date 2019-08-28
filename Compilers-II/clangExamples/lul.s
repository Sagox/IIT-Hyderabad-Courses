	.text
	.file	"polymo.cpp"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$4, %edi
	callq	_ZN2ca3fooEi
	movl	$5, %edi
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	_ZN2cb3fooEi
	movl	-8(%rbp), %ecx          # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2ca3fooEi,"axG",@progbits,_ZN2ca3fooEi,comdat
	.weak	_ZN2ca3fooEi            # -- Begin function _ZN2ca3fooEi
	.p2align	4, 0x90
	.type	_ZN2ca3fooEi,@function
_ZN2ca3fooEi:                           # @_ZN2ca3fooEi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$5, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_ZN2ca3fooEi, .Lfunc_end1-_ZN2ca3fooEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2cb3fooEi,"axG",@progbits,_ZN2cb3fooEi,comdat
	.weak	_ZN2cb3fooEi            # -- Begin function _ZN2cb3fooEi
	.p2align	4, 0x90
	.type	_ZN2cb3fooEi,@function
_ZN2cb3fooEi:                           # @_ZN2cb3fooEi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$5, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZN2cb3fooEi, .Lfunc_end2-_ZN2cb3fooEi
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2bebe19708c7bb3feb5288d0d0657b5be2fe5fce)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZN2ca3fooEi
	.addrsig_sym _ZN2cb3fooEi
