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
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB3:
	.text
.LHOTB3:
	.align 2
	.p2align 4
	.globl	_ZN3wze6serverC2Et
	.type	_ZN3wze6serverC2Et, @function
_ZN3wze6serverC2Et:
.LFB8156:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8156
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movq	$0, 24(%rdi)
	movl	$62001, %edi
.LEHB0:
	call	SDL_Init@PLT
	testl	%eax, %eax
	jne	.L10
	call	SDLNet_Init@PLT
	movzwl	%bp, %ebp
	testl	%eax, %eax
	jne	.L11
	movl	%ebp, %edi
	call	SDLNet_UDP_Open@PLT
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	je	.L12
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L10:
	.cfi_restore_state
	movzwl	%bp, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L4:
	movl	$1, %edi
	call	exit@PLT
.L12:
	movl	%ebp, %esi
	leaq	.LC2(%rip), %rdi
	call	printf@PLT
	jmp	.L4
.L11:
	movl	%ebp, %esi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	jmp	.L4
.L7:
	movq	%rax, %rbp
	jmp	.L6
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8156-.LLSDACSB8156
.LLSDACSB8156:
	.uleb128 .LEHB0-.LFB8156
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L7-.LFB8156
	.uleb128 0
.LLSDACSE8156:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8156
	.type	_ZN3wze6serverC2Et.cold, @function
_ZN3wze6serverC2Et.cold:
.LFSB8156:
.L6:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	24(%rbx), %rdi
	call	free@PLT
	movq	8(%rbx), %rdi
	call	free@PLT
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE8156:
	.section	.gcc_except_table
.LLSDAC8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8156-.LLSDACSBC8156
.LLSDACSBC8156:
	.uleb128 .LEHB1-.LCOLDB3
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC8156:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6serverC2Et, .-_ZN3wze6serverC2Et
	.section	.text.unlikely
	.size	_ZN3wze6serverC2Et.cold, .-_ZN3wze6serverC2Et.cold
.LCOLDE3:
	.text
.LHOTE3:
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	testq	%rax, %rax
	jne	.L21
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L22:
	movl	$272, %esi
	addq	$1, %rbx
	call	_ZdlPvm@PLT
	movq	0(%rbp), %rax
	cmpq	%rax, %rbx
	jnb	.L17
.L21:
	movq	8(%rbp), %rdx
.L14:
	movq	(%rdx,%rbx,8), %rdi
	testq	%rdi, %rdi
	jne	.L22
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L14
.L17:
	movq	32(%rbp), %rdi
	call	SDLNet_UDP_Close@PLT
	call	SDLNet_Quit@PLT
	call	SDL_Quit@PLT
	movq	24(%rbp), %rdi
	call	free@PLT
	movq	8(%rbp), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8159:
	.section	.gcc_except_table
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
.LC4:
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
	movq	32(%rdi), %rdi
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	movl	(%rsi), %eax
	movq	%rsp, %rdx
	movl	%eax, 28(%rsp)
	movl	4(%rsi), %eax
	movw	%ax, 32(%rsp)
	leaq	16(%rsi), %rax
	movq	%rax, 8(%rsp)
	movzbl	8(%rsi), %eax
	movl	$-1, %esi
	addl	$16, %eax
	movl	%eax, 16(%rsp)
	call	SDLNet_UDP_Send@PLT
	cmpl	$1, %eax
	jne	.L27
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L28
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L27:
	.cfi_restore_state
	leaq	.LC4(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L28:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6server4SendEPNS_6packetE, .-_ZN3wze6server4SendEPNS_6packetE
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC7:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB8:
	.text
.LHOTB8:
	.align 2
	.p2align 4
	.globl	_ZN3wze6server7ReceiveEv
	.type	_ZN3wze6server7ReceiveEv, @function
_ZN3wze6server7ReceiveEv:
.LFB8162:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8162
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L30
	xorl	%ebp, %ebp
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L79:
	movl	$272, %esi
	addq	$1, %rbp
	call	_ZdlPvm@PLT
	movq	(%rbx), %rax
	cmpq	%rax, %rbp
	jnb	.L30
.L76:
	movq	8(%rbx), %rdx
.L33:
	movq	(%rdx,%rbp,8), %rdi
	testq	%rdi, %rdi
	jne	.L79
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jb	.L33
.L30:
	movl	$256, 20(%rsp)
	xorl	%r12d, %r12d
	movq	%rsp, %r13
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L37:
	movl	$272, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB3:
	call	_ZN3wze6packetC1Ev@PLT
.LEHE3:
	movq	8(%rbx), %rax
	cmpq	(%rbx), %r12
	jnb	.L78
	movq	%rbp, (%rax,%r12,8)
	movq	32(%rbx), %rdi
	addq	$16, %rbp
	movq	%r13, %rsi
	movq	%rbp, 8(%rsp)
	leaq	0(,%r12,8), %r14
.LEHB4:
	call	SDLNet_UDP_Recv@PLT
	cmpl	$1, %eax
	jne	.L80
	movd	28(%rsp), %xmm0
	movq	8(%rbx), %rax
	cmpq	(%rbx), %r12
	jnb	.L78
	movq	(%rax,%r14), %rdx
	movzwl	32(%rsp), %eax
	addq	$1, %r12
	movd	%eax, %xmm1
	punpckldq	%xmm1, %xmm0
	movq	%xmm0, (%rdx)
	movzbl	16(%rsp), %eax
	subl	$16, %eax
	movb	%al, 8(%rdx)
	movq	(%rbx), %rax
.L51:
	cmpq	%rax, %r12
	jne	.L37
	leaq	10(%r12), %rbp
	movq	8(%rbx), %rdi
	movq	%rbp, (%rbx)
	leaq	0(,%rbp,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L81
	movq	(%rbx), %rdx
	leaq	-1(%rdx), %rax
	cmpq	%rbp, %rax
	jb	.L37
	movq	%rdx, %rsi
	subq	%r12, %rsi
	leaq	-11(%rsi), %rdi
	cmpq	$2, %rdi
	jbe	.L42
	cmpq	$-10, %r12
	jne	.L82
	.p2align 4,,10
	.p2align 3
.L42:
	movq	-80(%rcx,%rax,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	subq	$1, %rax
	cmpq	%rbp, %rax
	jnb	.L42
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L80:
	movq	(%rbx), %rbp
	movq	8(%rbx), %rdi
	cmpq	%rbp, %r12
	jnb	.L78
	movq	(%rdi,%r14), %rax
	testq	%rax, %rax
	je	.L47
	movl	$272, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	movq	(%rbx), %rbp
	cmpq	%rbp, %r12
	jb	.L83
.L53:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L84
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L82:
	.cfi_restore_state
	leaq	-10(%rsi), %r9
	salq	$3, %rdx
	movq	%r9, %rsi
	leaq	-96(%rcx,%rdx), %r8
	leaq	-16(%rcx,%rdx), %rdi
	xorl	%edx, %edx
	shrq	%rsi
	negq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L39:
	movdqu	(%r8,%rdx), %xmm2
	movups	%xmm2, (%rdi,%rdx)
	subq	$16, %rdx
	cmpq	%rsi, %rdx
	jne	.L39
	movq	%r9, %rdx
	andq	$-2, %rdx
	subq	%rdx, %rax
	andl	$1, %r9d
	je	.L37
	movq	-80(%rcx,%rax,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	jmp	.L37
.L83:
	movq	8(%rbx), %rdi
	.p2align 4,,10
	.p2align 3
.L47:
	movq	%r12, (%rbx)
	testq	%r12, %r12
	je	.L85
	movq	%r14, %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	jne	.L53
	movq	%rbp, %rdx
	leaq	.LC7(%rip), %rdi
	movq	%r12, %rsi
	subq	%r12, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L85:
	call	free@PLT
	movq	$0, 8(%rbx)
	jmp	.L53
.L78:
	leaq	.LC6(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L81:
	leaq	.LC5(%rip), %rdi
	movl	$10, %edx
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L84:
	call	__stack_chk_fail@PLT
.L57:
	movq	%rax, %rbx
	jmp	.L54
	.section	.gcc_except_table
.LLSDA8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8162-.LLSDACSB8162
.LLSDACSB8162:
	.uleb128 .LEHB2-.LFB8162
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8162
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L57-.LFB8162
	.uleb128 0
	.uleb128 .LEHB4-.LFB8162
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8162:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8162
	.type	_ZN3wze6server7ReceiveEv.cold, @function
_ZN3wze6server7ReceiveEv.cold:
.LFSB8162:
.L54:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movl	$272, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L86
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L86:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8162:
	.section	.gcc_except_table
.LLSDAC8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8162-.LLSDACSBC8162
.LLSDACSBC8162:
	.uleb128 .LEHB5-.LCOLDB8
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8162:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6server7ReceiveEv, .-_ZN3wze6server7ReceiveEv
	.section	.text.unlikely
	.size	_ZN3wze6server7ReceiveEv.cold, .-_ZN3wze6server7ReceiveEv.cold
.LCOLDE8:
	.text
.LHOTE8:
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
