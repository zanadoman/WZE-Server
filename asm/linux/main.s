	.file	"main.cpp"
	.text
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.section	.text.startup,"ax",@progbits
.LHOTB0:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB8155:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8155
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$288, %rsp
	.cfi_def_cfa_offset 320
	movq	%fs:40, %rax
	movq	%rax, 280(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r12
	movq	%r12, %rdi
.LEHB0:
	call	_ZN3wze6packetC1Ev@PLT
	movl	$8, %edi
	call	_Znwm@PLT
.LEHE0:
	movl	$49152, %esi
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB1:
	call	_ZN3wze6serverC1Et@PLT
.LEHE1:
	.p2align 4,,10
	.p2align 3
.L8:
	movq	%r12, %rsi
	movq	%rbp, %rdi
.LEHB2:
	call	_ZN3wze6server7ReceiveEPNS_6packetE@PLT
	testb	%al, %al
	je	.L8
	movzbl	16(%rsp), %eax
	cmpb	$4, %al
	je	.L3
	xorl	%ebx, %ebx
	testb	%al, %al
	je	.L5
	.p2align 4,,10
	.p2align 3
.L21:
	movq	8(%rsp), %rax
.L6:
	movsbl	(%rax,%rbx), %edi
	movq	stdout(%rip), %rsi
	addq	$1, %rbx
	call	putc@PLT
	cmpb	16(%rsp), %bl
	jb	.L21
.L5:
	movq	stdout(%rip), %rsi
	movl	$10, %edi
	call	putc@PLT
.LEHE2:
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L3:
	movq	8(%rsp), %rax
	xorl	%ebx, %ebx
	cmpb	$115, (%rax)
	jne	.L6
	cmpb	$116, 1(%rax)
	jne	.L6
	cmpb	$111, 2(%rax)
	jne	.L6
	cmpb	$112, 3(%rax)
	jne	.L6
	movq	%rbp, %rdi
	call	_ZN3wze6serverD1Ev@PLT
	movl	$8, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	280(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L23
	addq	$288, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L23:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L17:
	movq	%rax, %rbx
	jmp	.L9
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8155:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8155-.LLSDACSB8155
.LLSDACSB8155:
	.uleb128 .LEHB0-.LFB8155
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8155
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L17-.LFB8155
	.uleb128 0
	.uleb128 .LEHB2-.LFB8155
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE8155:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8155
	.type	main.cold, @function
main.cold:
.LFSB8155:
.L9:
	.cfi_def_cfa_offset 320
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movl	$8, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	280(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L24
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L24:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8155:
	.section	.gcc_except_table
.LLSDAC8155:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8155-.LLSDACSBC8155
.LLSDACSBC8155:
	.uleb128 .LEHB3-.LCOLDB0
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8155:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE0:
	.section	.text.startup
.LHOTE0:
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
