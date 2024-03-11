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
	.align 8
.LC3:
	.ascii "wze::server.server(): SDLNet_AllocPacket() failed\12Params: Port: %d\12\0"
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
	jne	.L8
	call	SDLNet_Init
	testl	%eax, %eax
	jne	.L9
	movl	%ebx, %ecx
	call	SDLNet_UDP_Open
	movq	%rax, (%rsi)
	testq	%rax, %rax
	je	.L10
	movl	$64, %ecx
	call	SDLNet_AllocPacket
	movq	%rax, 8(%rsi)
	testq	%rax, %rax
	je	.L11
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L8:
	leaq	.LC0(%rip), %rcx
	movl	%ebx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L11:
	leaq	.LC3(%rip), %rcx
	movl	%ebx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L10:
	leaq	.LC2(%rip), %rcx
	movl	%ebx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L9:
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
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	SDL_Init;	.scl	2;	.type	32;	.endef
	.def	SDLNet_Init;	.scl	2;	.type	32;	.endef
	.def	SDLNet_UDP_Open;	.scl	2;	.type	32;	.endef
	.def	SDLNet_AllocPacket;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	SDLNet_UDP_Close;	.scl	2;	.type	32;	.endef
	.def	SDLNet_Quit;	.scl	2;	.type	32;	.endef
	.def	SDL_Quit;	.scl	2;	.type	32;	.endef
