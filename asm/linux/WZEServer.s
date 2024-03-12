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
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movl	$62001, %edi
.LEHB0:
	call	SDL_Init@PLT
	testl	%eax, %eax
	jne	.L10
	call	SDLNet_Init@PLT
	movzwl	%bx, %ebx
	testl	%eax, %eax
	jne	.L11
	movl	%ebx, %edi
	call	SDLNet_UDP_Open@PLT
	movq	%rax, 16(%rbp)
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
	movzwl	%bx, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L4:
	movl	$1, %edi
	call	exit@PLT
.L12:
	movl	%ebx, %esi
	leaq	.LC2(%rip), %rdi
	call	printf@PLT
	jmp	.L4
.L11:
	movl	%ebx, %esi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	jmp	.L4
.L7:
	movq	%rax, %rbx
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
	movq	8(%rbp), %rdi
	call	free@PLT
	movq	%rbx, %rdi
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
	movq	16(%rbp), %rdi
	call	SDLNet_UDP_Close@PLT
	call	SDLNet_Quit@PLT
	call	SDL_Quit@PLT
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
	.string	"wze::server.Send(): Size must not be greater than%ld\nParams: Address: %d.%d.%d.%d:%d, ID: %lld, Size: %d, Data: %p\n"
	.align 8
.LC5:
	.string	"wze::server.Send(): SDLNet_UDP_Send() failed\nParams: Address: %d.%d.%d.%d:%d, ID: %lld, Size: %d, Data: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6server4SendENS_7addressEyhPKv
	.type	_ZN3wze6server4SendENS_7addressEyhPKv, @function
_ZN3wze6server4SendENS_7addressEyhPKv:
.LFB8161:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	shrq	$32, %r14
	movq	%r8, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%ecx, %ebx
	subq	$344, %rsp
	.cfi_def_cfa_offset 400
	movq	%fs:40, %rax
	movq	%rax, 328(%rsp)
	xorl	%eax, %eax
	cmpb	$-16, %cl
	ja	.L28
	movq	%rdi, %r15
	movq	%rsi, 48(%rsp)
	movb	%cl, 56(%rsp)
	call	SDL_GetTicks64@PLT
	movzbl	%bl, %edx
	leaq	80(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rax, 64(%rsp)
	movq	%r12, 72(%rsp)
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movl	48(%rsp), %eax
	movq	16(%r15), %rdi
	movq	%rsp, %rdx
	movl	$-1, %esi
	movl	%eax, 28(%rsp)
	movzwl	52(%rsp), %eax
	movw	%ax, 32(%rsp)
	movzbl	56(%rsp), %eax
	movl	%eax, 16(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 8(%rsp)
	call	SDLNet_UDP_Send@PLT
	cmpl	$1, %eax
	jne	.L29
	movq	328(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L30
	addq	$344, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L28:
	.cfi_restore_state
	movzbl	%cl, %ebx
	movzwl	%r14w, %r14d
	pushq	%r8
	.cfi_def_cfa_offset 408
	movzbl	%sil, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 416
	leaq	.LC4(%rip), %rdi
	movl	%edx, %r9d
	movl	%edx, %r8d
	pushq	%r12
	.cfi_def_cfa_offset 424
	movl	%edx, %ecx
	movl	$240, %esi
	pushq	%r14
	.cfi_def_cfa_offset 432
	call	printf@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 400
	movl	$1, %edi
	call	exit@PLT
.L30:
	call	__stack_chk_fail@PLT
.L29:
	movzbl	%bl, %ebx
	pushq	%rax
	.cfi_def_cfa_offset 408
	movzbl	%bpl, %esi
	leaq	.LC5(%rip), %rdi
	pushq	%r13
	.cfi_def_cfa_offset 416
	movzwl	%r14w, %r9d
	movl	%esi, %r8d
	movl	%esi, %ecx
	pushq	%rbx
	.cfi_def_cfa_offset 424
	movl	%esi, %edx
	xorl	%eax, %eax
	pushq	%r12
	.cfi_def_cfa_offset 432
	call	printf@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 400
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6server4SendENS_7addressEyhPKv, .-_ZN3wze6server4SendENS_7addressEyhPKv
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC7:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC8:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6server7ReceiveEv
	.type	_ZN3wze6server7ReceiveEv, @function
_ZN3wze6server7ReceiveEv:
.LFB8162:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L32
	xorl	%ebp, %ebp
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L77:
	movl	$272, %esi
	addq	$1, %rbp
	call	_ZdlPvm@PLT
	movq	(%rbx), %rax
	cmpq	%rax, %rbp
	jnb	.L32
.L74:
	movq	8(%rbx), %rdx
.L35:
	movq	(%rdx,%rbp,8), %rdi
	testq	%rdi, %rdi
	jne	.L77
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jb	.L35
.L32:
	movl	$256, 20(%rsp)
	xorl	%ebp, %ebp
	movq	%rsp, %r12
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L40:
	movl	$272, %edi
	call	_Znwm@PLT
	movq	8(%rbx), %rdx
	cmpq	(%rbx), %rbp
	jnb	.L76
	movq	%rax, (%rdx,%rbp,8)
	movq	16(%rbx), %rdi
	addq	$16, %rax
	movq	%r12, %rsi
	movq	%rax, 8(%rsp)
	leaq	0(,%rbp,8), %r13
	call	SDLNet_UDP_Recv@PLT
	cmpl	$1, %eax
	jne	.L78
	movl	28(%rsp), %edx
	movq	8(%rbx), %rax
	cmpq	(%rbx), %rbp
	jnb	.L76
	movq	(%rax,%r13), %rax
	addq	$1, %rbp
	movl	%edx, (%rax)
	movzwl	32(%rsp), %edx
	movzbl	16(%rsp), %esi
	movw	%dx, 4(%rax)
	leal	-16(%rsi), %edx
	movb	%dl, 8(%rax)
	movq	(%rbx), %rax
.L53:
	cmpq	%rax, %rbp
	jne	.L40
	leaq	10(%rbp), %r13
	movq	8(%rbx), %rdi
	movq	%r13, (%rbx)
	leaq	0(,%r13,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L79
	movq	(%rbx), %rcx
	leaq	-1(%rcx), %rax
	cmpq	%r13, %rax
	jb	.L40
	movq	%rcx, %rsi
	subq	%rbp, %rsi
	leaq	-11(%rsi), %rdi
	cmpq	$2, %rdi
	jbe	.L45
	cmpq	$-10, %rbp
	jne	.L80
	.p2align 4,,10
	.p2align 3
.L45:
	movq	-80(%rdx,%rax,8), %rcx
	movq	%rcx, (%rdx,%rax,8)
	subq	$1, %rax
	cmpq	%r13, %rax
	jnb	.L45
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L78:
	movq	(%rbx), %r12
	movq	8(%rbx), %rdi
	cmpq	%r12, %rbp
	jnb	.L76
	movq	(%rdi,%r13), %rax
	testq	%rax, %rax
	je	.L49
	movl	$272, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	movq	(%rbx), %r12
	cmpq	%r12, %rbp
	jb	.L81
.L55:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L82
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L80:
	.cfi_restore_state
	leaq	-10(%rsi), %r9
	salq	$3, %rcx
	movq	%r9, %rsi
	leaq	-96(%rdx,%rcx), %r8
	leaq	-16(%rdx,%rcx), %rdi
	xorl	%ecx, %ecx
	shrq	%rsi
	negq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L42:
	movdqu	(%r8,%rcx), %xmm0
	movups	%xmm0, (%rdi,%rcx)
	subq	$16, %rcx
	cmpq	%rsi, %rcx
	jne	.L42
	movq	%r9, %rcx
	andq	$-2, %rcx
	subq	%rcx, %rax
	andl	$1, %r9d
	je	.L40
	movq	-80(%rdx,%rax,8), %rcx
	movq	%rcx, (%rdx,%rax,8)
	jmp	.L40
.L81:
	movq	8(%rbx), %rdi
	.p2align 4,,10
	.p2align 3
.L49:
	movq	%rbp, (%rbx)
	testq	%rbp, %rbp
	je	.L83
	movq	%r13, %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	jne	.L55
	movq	%r12, %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rbp, %rsi
	subq	%rbp, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L83:
	call	free@PLT
	movq	$0, 8(%rbx)
	jmp	.L55
.L76:
	leaq	.LC7(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L79:
	leaq	.LC6(%rip), %rdi
	movl	$10, %edx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L82:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6server7ReceiveEv, .-_ZN3wze6server7ReceiveEv
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::server::ResolveHost(): Host must not be NULL\nParams: Host: %p, Port: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6server11ResolveHostEPKct
	.type	_ZN3wze6server11ResolveHostEPKct, @function
_ZN3wze6server11ResolveHostEPKct:
.LFB8163:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%esi, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L88
	movq	%rsp, %rax
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$0, (%rsp)
	movq	%rax, %rdi
	movzwl	%bx, %ebx
	call	SDLNet_ResolveHost@PLT
	movl	(%rsp), %eax
	salq	$32, %rbx
	orq	%rbx, %rax
	movq	8(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L89
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L88:
	.cfi_restore_state
	movzwl	%si, %edx
	leaq	.LC9(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L89:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6server11ResolveHostEPKct, .-_ZN3wze6server11ResolveHostEPKct
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
