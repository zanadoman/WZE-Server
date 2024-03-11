	.file	"WZEServer.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"wze::server.server(): SDLNet_Init() failed\nParams: Port: %d\n"
	.align 8
.LC1:
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
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebx
	movzwl	%bx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	SDLNet_Init@PLT
	testl	%eax, %eax
	jne	.L6
	movl	%ebx, %edi
	call	SDLNet_UDP_Open@PLT
	movq	%rax, 0(%rbp)
	testq	%rax, %rax
	je	.L7
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L7:
	leaq	.LC1(%rip), %rdi
	movl	%ebx, %esi
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
