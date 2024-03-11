	.file	"WZEUpdate.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"FROM: %d.%d.%d.%d:%d GOT: "
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6server6UpdateEv
	.type	_ZN3wze6server6UpdateEv, @function
_ZN3wze6server6UpdateEv:
.LFB8155:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC0(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.p2align 4,,10
	.p2align 3
.L2:
	movq	16(%rbp), %rsi
	movq	8(%rbp), %rdi
	call	SDLNet_UDP_Recv@PLT
	testl	%eax, %eax
	je	.L9
	movq	16(%rbp), %rax
	movq	%r12, %rdi
	movzbl	29(%rax), %edx
	movzbl	30(%rax), %ecx
	movzbl	28(%rax), %esi
	movzwl	32(%rax), %r9d
	movzbl	31(%rax), %r8d
	xorl	%eax, %eax
	call	printf@PLT
	movq	16(%rbp), %rax
	movl	16(%rax), %edx
	testl	%edx, %edx
	jle	.L3
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L4:
	movq	8(%rax), %rax
	movzbl	%bl, %edx
	movq	stdout(%rip), %rsi
	addl	$1, %ebx
	movzbl	(%rax,%rdx), %edi
	call	putc@PLT
	movq	16(%rbp), %rax
	movzbl	%bl, %edx
	cmpl	16(%rax), %edx
	jl	.L4
.L3:
	movq	stdout(%rip), %rsi
	movl	$10, %edi
	call	putc@PLT
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L9:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6server6UpdateEv, .-_ZN3wze6server6UpdateEv
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
