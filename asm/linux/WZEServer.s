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
	movq	$0, 256(%rdi)
	movq	$0, 264(%rdi)
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
	movq	%rax, 272(%rbp)
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
	movq	264(%rbp), %rdi
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	272(%rdi), %rdi
	call	SDLNet_UDP_Close@PLT
	call	SDLNet_Quit@PLT
	call	SDL_Quit@PLT
	movq	264(%rbx), %rdi
	popq	%rbx
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
	movq	%rsi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	shrq	$32, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%ecx, %ebx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%r8, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	cmpb	$-16, %cl
	ja	.L20
	movq	%rdi, %r14
	movl	$256, %edi
	call	_Znwm@PLT
	movq	%rax, %rbp
	call	SDL_GetTicks64@PLT
	movq	%r13, 8(%rbp)
	movzbl	%bl, %edx
	leaq	16(%rbp), %rsi
	movq	%rax, 0(%rbp)
	movq	8(%rsp), %rdi
	movzbl	%bl, %ebx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	272(%r14), %rdi
	leal	16(%rbx), %eax
	leaq	16(%rsp), %rdx
	movl	$-1, %esi
	movl	%r12d, 44(%rsp)
	movw	%r15w, 48(%rsp)
	movl	%eax, 32(%rsp)
	movq	%rbp, 24(%rsp)
	call	SDLNet_UDP_Send@PLT
	cmpl	$1, %eax
	jne	.L21
	movl	$256, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L22
	addq	$72, %rsp
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
.L20:
	.cfi_restore_state
	movzbl	%cl, %ebx
	movzwl	%r15w, %r15d
	pushq	%r8
	.cfi_def_cfa_offset 136
	movzbl	%sil, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 144
	leaq	.LC4(%rip), %rdi
	movl	%edx, %r9d
	movl	%edx, %r8d
	pushq	%r13
	.cfi_def_cfa_offset 152
	movl	%edx, %ecx
	movl	$240, %esi
	pushq	%r15
	.cfi_def_cfa_offset 160
	call	printf@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 128
	movl	$1, %edi
	call	exit@PLT
.L22:
	call	__stack_chk_fail@PLT
.L21:
	pushq	%rax
	.cfi_def_cfa_offset 136
	movzbl	%r12b, %esi
	leaq	.LC5(%rip), %rdi
	movzwl	%r15w, %r9d
	pushq	16(%rsp)
	.cfi_def_cfa_offset 144
	movl	%esi, %r8d
	movl	%esi, %ecx
	movl	%esi, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 152
	xorl	%eax, %eax
	pushq	%r13
	.cfi_def_cfa_offset 160
	call	printf@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 128
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6server4SendENS_7addressEyhPKv, .-_ZN3wze6server4SendENS_7addressEyhPKv
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC7:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6server7ReceiveEv
	.type	_ZN3wze6server7ReceiveEv, @function
_ZN3wze6server7ReceiveEv:
.LFB8162:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$616, %rsp
	.cfi_def_cfa_offset 672
	movq	%fs:40, %rax
	movq	%rax, 600(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r14
	leaq	48(%rsp), %r12
	movq	$0, 256(%rdi)
	movq	264(%rdi), %rdi
	call	free@PLT
	leaq	64(%rsp), %rax
	movq	$0, 264(%r15)
	movl	$256, 20(%rsp)
	movq	%rax, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L31:
	movq	272(%r15), %rdi
	movq	%r14, %rsi
	call	SDLNet_UDP_Recv@PLT
	cmpl	$1, %eax
	jne	.L24
	movl	28(%rsp), %eax
	leaq	48(%rsp), %r13
	movl	%eax, 48(%rsp)
	movzwl	32(%rsp), %eax
	movw	%ax, 52(%rsp)
	movzbl	16(%rsp), %eax
	subl	$16, %eax
	movb	%al, 56(%rsp)
	movq	256(%r15), %rax
	testq	%rax, %rax
	je	.L25
	xorl	%ebp, %ebp
	movq	%r12, %r13
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L26:
	movq	256(%r15), %rax
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jnb	.L29
.L30:
	subq	$272, %rsp
	.cfi_def_cfa_offset 944
	movq	%rbp, %rbx
	movl	$34, %ecx
	movq	%r12, %rsi
	movq	264(%r15), %rax
	movq	%rsp, %rdi
	salq	$4, %rbx
	rep movsq
	addq	%rbp, %rbx
	salq	$4, %rbx
	addq	%rbx, %rax
	movq	%rax, %rdi
	call	_ZN3wze6server6packeteqES1_@PLT
	addq	$272, %rsp
	.cfi_def_cfa_offset 672
	testb	%al, %al
	je	.L26
	movq	264(%r15), %rax
	cmpq	256(%r15), %rbp
	jnb	.L40
	addq	%rbx, %rax
	movq	64(%rsp), %rdx
	cmpq	%rdx, 16(%rax)
	jnb	.L31
	movq	%rax, %rdi
	movl	$34, %ecx
	movq	%r12, %rsi
	rep movsq
	movq	256(%r15), %rax
.L29:
	cmpq	%rax, %rbp
	jne	.L31
.L25:
	addq	$1, %rax
	leaq	320(%rsp), %rbx
	movl	$34, %ecx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	movq	%rax, 256(%r15)
	rep movsq
	movq	%rax, %rsi
	movq	264(%r15), %rdi
	salq	$4, %rsi
	addq	%rax, %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movq	%rax, 264(%r15)
	testq	%rax, %rax
	je	.L41
	movq	256(%r15), %rdx
	movq	%rbx, %rdi
	leaq	-1(%rdx), %rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	addq	%rcx, %rdx
	salq	$4, %rdx
	leaq	(%rax,%rdx), %rsi
	movl	$272, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	jmp	.L31
.L24:
	movq	600(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L42
	addq	$616, %rsp
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
.L40:
	.cfi_restore_state
	leaq	.LC6(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L41:
	leaq	.LC7(%rip), %rdi
	movl	$1, %edx
	movl	$272, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L42:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6server7ReceiveEv, .-_ZN3wze6server7ReceiveEv
	.section	.rodata.str1.8
	.align 8
.LC8:
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
	movzwl	%si, %edx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L49
	movq	%rsp, %rax
	movzwl	%si, %ebx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	SDLNet_ResolveHost@PLT
	testl	%eax, %eax
	je	.L50
	xorl	%ebx, %ebx
	xorl	%eax, %eax
.L45:
	salq	$32, %rbx
	orq	%rbx, %rax
	movq	8(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L51
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	.cfi_restore_state
	movl	(%rsp), %eax
	jmp	.L45
.L51:
	call	__stack_chk_fail@PLT
.L49:
	leaq	.LC8(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
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
