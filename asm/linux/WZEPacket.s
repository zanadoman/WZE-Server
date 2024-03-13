	.file	"WZEPacket.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6server6packeteqES1_
	.type	_ZN3wze6server6packeteqES1_, @function
_ZN3wze6server6packeteqES1_:
.LFB8155:
	.cfi_startproc
	movabsq	$281474976710655, %rcx
	movq	(%rdi), %rax
	xorl	%edx, %edx
	xorq	8(%rsp), %rax
	testq	%rcx, %rax
	jne	.L1
	movzbl	8(%rdi), %eax
	cmpb	16(%rsp), %al
	je	.L11
.L1:
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	movq	32(%rsp), %rcx
	cmpq	%rcx, 24(%rdi)
	jne	.L1
	testb	%al, %al
	je	.L7
	leaq	32(%rax), %rdx
	movl	$32, %eax
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L12:
	addq	$1, %rax
	cmpq	%rdx, %rax
	je	.L7
.L3:
	movzbl	8(%rsp,%rax), %esi
	cmpb	%sil, (%rdi,%rax)
	je	.L12
	xorl	%edx, %edx
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L7:
	movl	$1, %edx
	jmp	.L1
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6server6packeteqES1_, .-_ZN3wze6server6packeteqES1_
	.align 2
	.p2align 4
	.globl	_ZN3wze6server6packet10GetAddressEv
	.type	_ZN3wze6server6packet10GetAddressEv, @function
_ZN3wze6server6packet10GetAddressEv:
.LFB8156:
	.cfi_startproc
	movq	(%rdi), %rax
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6server6packet10GetAddressEv, .-_ZN3wze6server6packet10GetAddressEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6server6packet7GetSizeEv
	.type	_ZN3wze6server6packet7GetSizeEv, @function
_ZN3wze6server6packet7GetSizeEv:
.LFB8157:
	.cfi_startproc
	movzbl	8(%rdi), %eax
	ret
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6server6packet7GetSizeEv, .-_ZN3wze6server6packet7GetSizeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6server6packet7GetDataEv
	.type	_ZN3wze6server6packet7GetDataEv, @function
_ZN3wze6server6packet7GetDataEv:
.LFB8158:
	.cfi_startproc
	leaq	32(%rdi), %rax
	ret
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6server6packet7GetDataEv, .-_ZN3wze6server6packet7GetDataEv
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
