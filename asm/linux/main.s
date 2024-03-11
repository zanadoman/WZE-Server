	.file	"main.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.section	.text.startup,"ax",@progbits
.LHOTB1:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB8155:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8155
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$8, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$49152, %esi
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB1:
	call	_ZN3wze6serverC1Et@PLT
.LEHE1:
	movl	$280, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB3:
	call	_ZN3wze6packetC1Ev@PLT
.LEHE3:
	leaq	.LC0(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L6:
	movq	%rbp, %rsi
	movq	%r12, %rdi
.LEHB4:
	call	_ZN3wze6server7ReceiveEPNS_6packetE@PLT
	testb	%al, %al
	je	.L6
	movzbl	16(%rbp), %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	call	printf@PLT
	cmpb	$0, 16(%rbp)
	je	.L3
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L4:
	movq	8(%rbp), %rax
	movq	stdout(%rip), %rsi
	movsbl	(%rax,%rbx), %edi
	addq	$1, %rbx
	call	putc@PLT
	cmpb	16(%rbp), %bl
	jb	.L4
.L3:
	movq	stdout(%rip), %rsi
	movl	$10, %edi
	call	putc@PLT
.LEHE4:
	jmp	.L6
.L9:
	movq	%rax, %rbx
	jmp	.L7
.L10:
	movq	%rax, %rbx
	jmp	.L8
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
	.uleb128 .L9-.LFB8155
	.uleb128 0
	.uleb128 .LEHB2-.LFB8155
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8155
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L10-.LFB8155
	.uleb128 0
	.uleb128 .LEHB4-.LFB8155
	.uleb128 .LEHE4-.LEHB4
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
.L7:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%r12, %rdi
	movl	$8, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L8:
	movq	%rbp, %rdi
	movl	$280, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
	.cfi_endproc
.LFE8155:
	.section	.gcc_except_table
.LLSDAC8155:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8155-.LLSDACSBC8155
.LLSDACSBC8155:
	.uleb128 .LEHB5-.LCOLDB1
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8155:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE1:
	.section	.text.startup
.LHOTE1:
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
