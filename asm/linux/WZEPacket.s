	.file	"WZEPacket.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6server6packet10GetAddressEv
	.type	_ZN3wze6server6packet10GetAddressEv, @function
_ZN3wze6server6packet10GetAddressEv:
.LFB8155:
	.cfi_startproc
	movq	(%rdi), %rax
	ret
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6server6packet10GetAddressEv, .-_ZN3wze6server6packet10GetAddressEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6server6packet7GetSizeEv
	.type	_ZN3wze6server6packet7GetSizeEv, @function
_ZN3wze6server6packet7GetSizeEv:
.LFB8156:
	.cfi_startproc
	movzbl	8(%rdi), %eax
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6server6packet7GetSizeEv, .-_ZN3wze6server6packet7GetSizeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6server6packet7GetDataEv
	.type	_ZN3wze6server6packet7GetDataEv, @function
_ZN3wze6server6packet7GetDataEv:
.LFB8157:
	.cfi_startproc
	leaq	32(%rdi), %rax
	ret
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6server6packet7GetDataEv, .-_ZN3wze6server6packet7GetDataEv
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
