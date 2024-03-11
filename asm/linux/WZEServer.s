	.file	"WZEServer.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"wze::server.server(): SDL_Innit() failed\nParams: Port: %d\n"
	.align 8
.LC1:
	.string	"wze::server.server(): SDLNet_Init() failed\nParams: Port: %d\n"
	.align 8
.LC2:
	.string	"wze::server.server(): SDLNet_UDP_Open() failed\nParams: Port: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6serverC2Et
	.type	_ZN3wze6serverC2Et, @function
_ZN3wze6serverC2Et:
.LFB8156:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movl	$62001, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebx
	movzwl	%bx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	SDL_Init@PLT
	testl	%eax, %eax
	jne	.L7
	call	SDLNet_Init@PLT
	testl	%eax, %eax
	jne	.L8
	movl	%ebx, %edi
	call	SDLNet_UDP_Open@PLT
	movq	%rax, 0(%rbp)
	testq	%rax, %rax
	je	.L9
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L9:
	leaq	.LC2(%rip), %rdi
	movl	%ebx, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L8:
	leaq	.LC1(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6serverC2Et, .-_ZN3wze6serverC2Et
	.globl	_ZN3wze6serverC1Et
	.set	_ZN3wze6serverC1Et,_ZN3wze6serverC2Et
	.align 2
	.p2align 4
	.globl	_ZN3wze6serverD2Ev
	.type	_ZN3wze6serverD2Ev, @function
_ZN3wze6serverD2Ev:
.LFB8159:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8159
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	call	SDLNet_UDP_Close@PLT
	call	SDLNet_Quit@PLT
	call	SDL_Quit@PLT
	addq	$8, %rsp
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
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"wze::server.Send(): SDLNet_UDP_Send() failed\nParams: Packet: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6server4SendEPNS_6packetE
	.type	_ZN3wze6server4SendEPNS_6packetE, @function
_ZN3wze6server4SendEPNS_6packetE:
.LFB8161:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %rdi
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	movl	(%rsi), %eax
	movq	%rsp, %rdx
	movl	%eax, 28(%rsp)
	movl	4(%rsi), %eax
	movw	%ax, 32(%rsp)
	leaq	24(%rsi), %rax
	movq	%rax, 8(%rsp)
	movzbl	16(%rsi), %eax
	movl	$-1, %esi
	movl	%eax, 16(%rsp)
	call	SDLNet_UDP_Send@PLT
	cmpl	$1, %eax
	jne	.L16
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L17
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L16:
	.cfi_restore_state
	leaq	.LC3(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L17:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6server4SendEPNS_6packetE, .-_ZN3wze6server4SendEPNS_6packetE
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"%d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6server7ReceiveEPNS_6packetE
	.type	_ZN3wze6server7ReceiveEPNS_6packetE, @function
_ZN3wze6server7ReceiveEPNS_6packetE:
.LFB8162:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %rdi
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	24(%rsi), %rax
	movq	%rsp, %rsi
	movl	$256, 20(%rsp)
	movq	%rax, 8(%rsp)
	call	SDLNet_UDP_Recv@PLT
	cmpl	$1, %eax
	je	.L23
	movq	$0, (%rbx)
	xorl	%eax, %eax
	movb	$0, 16(%rbx)
.L18:
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L24
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
	movzwl	32(%rsp), %eax
	movl	16(%rsp), %esi
	leaq	.LC4(%rip), %rdi
	movd	28(%rsp), %xmm0
	movd	%eax, %xmm1
	leal	-16(%rsi), %eax
	movb	%al, 16(%rbx)
	punpckldq	%xmm1, %xmm0
	xorl	%eax, %eax
	movq	%xmm0, (%rbx)
	call	printf@PLT
	movl	$1, %eax
	jmp	.L18
.L24:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6server7ReceiveEPNS_6packetE, .-_ZN3wze6server7ReceiveEPNS_6packetE
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
