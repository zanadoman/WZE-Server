	.file	"WZEPacket.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6packetC2Ev
	.type	_ZN3wze6packetC2Ev, @function
_ZN3wze6packetC2Ev:
.LFB8156:
	.cfi_startproc
	leaq	40(%rdi), %rax
	movq	$0, (%rdi)
	movq	%rax, 8(%rdi)
	movb	$0, 16(%rdi)
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6packetC2Ev, .-_ZN3wze6packetC2Ev
	.globl	_ZN3wze6packetC1Ev
	.set	_ZN3wze6packetC1Ev,_ZN3wze6packetC2Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"wze::packet(): Size must not be greater than %ld\nParams: Address: %d.%d.%d.%d:%d, ID: %lld, Data: %p, Size: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6packetC2ENS_7addressEyPKvh
	.type	_ZN3wze6packetC2ENS_7addressEyPKvh, @function
_ZN3wze6packetC2ENS_7addressEyPKvh:
.LFB8159:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%r8d, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	cmpb	$-16, %r8b
	ja	.L6
	leaq	40(%rdi), %r13
	movq	%rsi, (%rdi)
	movq	%rdi, %rbx
	movq	%r13, 8(%rdi)
	movb	%r8b, 16(%rdi)
	call	SDL_GetTicks64@PLT
	movq	%r14, 32(%rbx)
	movzbl	%bpl, %edx
	movq	%r13, %rsi
	movq	%rax, 24(%rbx)
	movq	%r12, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZN3neo6memory6CopyToEPKvPvy@PLT
.L6:
	.cfi_restore_state
	movl	%esi, %eax
	movzbl	%bpl, %ebp
	movq	%rsi, %r8
	movl	%esi, %r9d
	movzbl	%ah, %ecx
	movq	%rsi, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 56
	shrq	$16, %r8
	shrq	$32, %rax
	pushq	%r12
	.cfi_def_cfa_offset 64
	movzbl	%sil, %edx
	shrl	$24, %r9d
	pushq	%r14
	.cfi_def_cfa_offset 72
	leaq	.LC0(%rip), %rdi
	movzbl	%r8b, %r8d
	movl	$240, %esi
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	call	printf@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6packetC2ENS_7addressEyPKvh, .-_ZN3wze6packetC2ENS_7addressEyPKvh
	.globl	_ZN3wze6packetC1ENS_7addressEyPKvh
	.set	_ZN3wze6packetC1ENS_7addressEyPKvh,_ZN3wze6packetC2ENS_7addressEyPKvh
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
