	.file	"WZEServer.cpp"
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
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "wze::server.server(): SDL_Innit() failed\12Params: Port: %d\12\0"
	.align 8
.LC1:
	.ascii "wze::server.server(): SDLNet_Init() failed\12Params: Port: %d\12\0"
	.align 8
.LC2:
	.ascii "wze::server.server(): SDLNet_UDP_Open() failed\12Params: Port: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6serverC2Et
	.def	_ZN3wze6serverC2Et;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6serverC2Et
_ZN3wze6serverC2Et:
.LFB6889:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movl	$62001, %ecx
	movl	%edx, %ebx
	call	SDL_Init
	movzwl	%bx, %ebx
	testl	%eax, %eax
	jne	.L7
	call	SDLNet_Init
	testl	%eax, %eax
	jne	.L8
	movl	%ebx, %ecx
	call	SDLNet_UDP_Open
	movq	%rax, (%rsi)
	testq	%rax, %rax
	je	.L9
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L7:
	leaq	.LC0(%rip), %rcx
	movl	%ebx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L9:
	leaq	.LC2(%rip), %rcx
	movl	%ebx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L8:
	leaq	.LC1(%rip), %rcx
	movl	%ebx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3wze6serverC1Et
	.def	_ZN3wze6serverC1Et;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6serverC1Et,_ZN3wze6serverC2Et
	.align 2
	.p2align 4
	.globl	_ZN3wze6serverD2Ev
	.def	_ZN3wze6serverD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6serverD2Ev
_ZN3wze6serverD2Ev:
.LFB6892:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rcx
	call	SDLNet_UDP_Close
	call	SDLNet_Quit
	call	SDL_Quit
	nop
	addq	$40, %rsp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6892:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6892-.LLSDACSB6892
.LLSDACSB6892:
.LLSDACSE6892:
	.text
	.seh_endproc
	.globl	_ZN3wze6serverD1Ev
	.def	_ZN3wze6serverD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6serverD1Ev,_ZN3wze6serverD2Ev
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "wze::server.Send(): SDLNet_UDP_Send() failed\12Params: Packet: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6server4SendEPNS_6packetE
	.def	_ZN3wze6server4SendEPNS_6packetE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6server4SendEPNS_6packetE
_ZN3wze6server4SendEPNS_6packetE:
.LFB6894:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movl	(%rdx), %eax
	movq	(%rcx), %rcx
	movl	%eax, 60(%rsp)
	movl	4(%rdx), %eax
	movq	%rdx, %rbx
	leaq	32(%rsp), %r8
	movw	%ax, 64(%rsp)
	leaq	24(%rdx), %rax
	movq	%rax, 40(%rsp)
	movzbl	16(%rdx), %eax
	movl	$-1, %edx
	addl	$16, %eax
	movl	%eax, 48(%rsp)
	call	SDLNet_UDP_Send
	cmpl	$1, %eax
	jne	.L13
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbx
	ret
.L13:
	leaq	.LC3(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6server7ReceiveEPNS_6packetE
	.def	_ZN3wze6server7ReceiveEPNS_6packetE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6server7ReceiveEPNS_6packetE
_ZN3wze6server7ReceiveEPNS_6packetE:
.LFB6895:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	(%rcx), %rcx
	leaq	24(%rdx), %rax
	movq	%rdx, %rbx
	leaq	32(%rsp), %rdx
	movl	$256, 52(%rsp)
	movq	%rax, 40(%rsp)
	call	SDLNet_UDP_Recv
	cmpl	$1, %eax
	je	.L17
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	$0, (%rbx)
	movb	%al, 16(%rbx)
	movl	%edx, %eax
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	movzwl	64(%rsp), %eax
	movd	60(%rsp), %xmm0
	movl	$1, %edx
	movd	%eax, %xmm1
	movzbl	48(%rsp), %eax
	punpckldq	%xmm1, %xmm0
	subl	$16, %eax
	movq	%xmm0, (%rbx)
	movb	%al, 16(%rbx)
	movl	%edx, %eax
	addq	$80, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	SDL_Init;	.scl	2;	.type	32;	.endef
	.def	SDLNet_Init;	.scl	2;	.type	32;	.endef
	.def	SDLNet_UDP_Open;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	SDLNet_UDP_Close;	.scl	2;	.type	32;	.endef
	.def	SDLNet_Quit;	.scl	2;	.type	32;	.endef
	.def	SDL_Quit;	.scl	2;	.type	32;	.endef
	.def	SDLNet_UDP_Send;	.scl	2;	.type	32;	.endef
	.def	SDLNet_UDP_Recv;	.scl	2;	.type	32;	.endef
