	.file	"WZEPacket.cpp"
	.text
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z6printfPKcz
	.def	_Z6printfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz
_Z6printfPKcz:
.LFB11:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6packetC2Ev
	.def	_ZN3wze6packetC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6packetC2Ev
_ZN3wze6packetC2Ev:
.LFB6889:
	.seh_endprologue
	leaq	40(%rcx), %rax
	movq	$0, (%rcx)
	movq	%rax, 8(%rcx)
	movb	$0, 16(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6packetC1Ev
	.def	_ZN3wze6packetC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6packetC1Ev,_ZN3wze6packetC2Ev
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "wze::packet(): Size must not be greater than %ld\12Params: Address: %d.%d.%d.%d:%d, ID: %lld, Data: %p, Size: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6packetC2ENS_7addressEyPKvh
	.def	_ZN3wze6packetC2ENS_7addressEyPKvh;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6packetC2ENS_7addressEyPKvh
_ZN3wze6packetC2ENS_7addressEyPKvh:
.LFB6892:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movl	160(%rsp), %esi
	movq	%rcx, %rbx
	movq	%r8, %rbp
	movq	%r9, %rdi
	cmpb	$-16, %sil
	ja	.L6
	leaq	40(%rcx), %r12
	movq	%rdx, (%rcx)
	movq	%r12, 8(%rcx)
	movb	%sil, 16(%rcx)
	call	SDL_GetTicks64
	movzbl	%sil, %r8d
	movq	%r12, %rdx
	movq	%rdi, %rcx
	movq	%rax, 24(%rbx)
	movq	%rbp, 32(%rbx)
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	_ZN3neo6memory6CopyToEPKvPvy
.L6:
	movzbl	%dh, %eax
	movzbl	%sil, %esi
	movq	%r8, 56(%rsp)
	movzbl	%dl, %r8d
	movl	%eax, %r9d
	movq	%rdx, %rax
	movl	%esi, 72(%rsp)
	leaq	.LC0(%rip), %rcx
	shrq	$32, %rax
	movq	%rdi, 64(%rsp)
	movl	%eax, 48(%rsp)
	movl	%edx, %eax
	shrl	$24, %eax
	movl	%eax, 40(%rsp)
	movq	%rdx, %rax
	movl	$240, %edx
	shrq	$16, %rax
	movzbl	%al, %eax
	movl	%eax, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3wze6packetC1ENS_7addressEyPKvh
	.def	_ZN3wze6packetC1ENS_7addressEyPKvh;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6packetC1ENS_7addressEyPKvh,_ZN3wze6packetC2ENS_7addressEyPKvh
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	SDL_GetTicks64;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
