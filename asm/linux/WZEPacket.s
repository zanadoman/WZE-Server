	.file	"WZEPacket.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6packetC2Ev
	.type	_ZN3wze6packetC2Ev, @function
_ZN3wze6packetC2Ev:
.LFB8156:
	.cfi_startproc
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
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%r8d, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	cmpb	$-16, %r8b
	ja	.L6
	movq	%rsi, (%rdi)
	movq	%rdi, %rbx
	movb	%r8b, 8(%rdi)
	call	SDL_GetTicks64@PLT
	movq	%r13, 24(%rbx)
	movzbl	%bpl, %edx
	movq	%r12, %rdi
	movq	%rax, 16(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	32(%rbx), %rsi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
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
	pushq	%r13
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
	.align 2
	.p2align 4
	.globl	_ZN3wze6packet10GetAddressEv
	.type	_ZN3wze6packet10GetAddressEv, @function
_ZN3wze6packet10GetAddressEv:
.LFB8161:
	.cfi_startproc
	movq	(%rdi), %rax
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6packet10GetAddressEv, .-_ZN3wze6packet10GetAddressEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6packet7GetSizeEv
	.type	_ZN3wze6packet7GetSizeEv, @function
_ZN3wze6packet7GetSizeEv:
.LFB8162:
	.cfi_startproc
	movzbl	8(%rdi), %eax
	ret
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6packet7GetSizeEv, .-_ZN3wze6packet7GetSizeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6packet7GetDataEv
	.type	_ZN3wze6packet7GetDataEv, @function
_ZN3wze6packet7GetDataEv:
.LFB8163:
	.cfi_startproc
	leaq	32(%rdi), %rax
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6packet7GetDataEv, .-_ZN3wze6packet7GetDataEv
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
