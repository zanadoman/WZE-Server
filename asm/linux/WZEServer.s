	.file	"WZEServer.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"wze::server.server(): SDL_Innit() failed\nParams: Port: %d, PacketSize: %d\n"
	.align 8
.LC1:
	.string	"wze::server.server(): SDLNet_Init() failed\nParams: Port: %d, PacketSize: %d\n"
	.align 8
.LC2:
	.string	"wze::server.server(): SDLNet_UDP_Open() failed\nParams: Port: %d, PacketSize: %d\n"
	.align 8
.LC3:
	.string	"wze::server.server(): SDLNet_AllocPacket() failed\nParams: Port: %d, PacketSize: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6serverC2Eth
	.type	_ZN3wze6serverC2Eth, @function
_ZN3wze6serverC2Eth:
.LFB8156:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	movl	$62001, %edi
	movzwl	%bp, %r13d
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	SDL_Init@PLT
	testl	%eax, %eax
	jne	.L8
	call	SDLNet_Init@PLT
	testl	%eax, %eax
	jne	.L9
	movw	%bp, (%rbx)
	movl	%r13d, %edi
	movb	%r12b, 2(%rbx)
	call	SDLNet_UDP_Open@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L10
	movl	$64, %edi
	call	SDLNet_AllocPacket@PLT
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.L11
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movzbl	%r12b, %edx
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L11:
	leaq	.LC3(%rip), %rdi
	movzbl	%r12b, %edx
	movl	%r13d, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L10:
	leaq	.LC2(%rip), %rdi
	movzbl	%r12b, %edx
	movl	%r13d, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L9:
	leaq	.LC1(%rip), %rdi
	movzbl	%r12b, %edx
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6serverC2Eth, .-_ZN3wze6serverC2Eth
	.globl	_ZN3wze6serverC1Eth
	.set	_ZN3wze6serverC1Eth,_ZN3wze6serverC2Eth
	.align 2
	.p2align 4
	.globl	_ZN3wze6serverD2Ev
	.type	_ZN3wze6serverD2Ev, @function
_ZN3wze6serverD2Ev:
.LFB8159:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8159
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	call	SDLNet_FreePacket@PLT
	movq	8(%rbx), %rdi
	call	SDLNet_UDP_Close@PLT
	call	SDLNet_Quit@PLT
	call	SDL_Quit@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8159:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8159:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8159-.LLSDACSB8159
.LLSDACSB8159:
.LLSDACSE8159:
	.text
	.size	_ZN3wze6serverD2Ev, .-_ZN3wze6serverD2Ev
	.globl	_ZN3wze6serverD1Ev
	.set	_ZN3wze6serverD1Ev,_ZN3wze6serverD2Ev
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
