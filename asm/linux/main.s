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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$24, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$64, %edx
	movl	$49152, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB1:
	call	_ZN3wze6serverC1Eth@PLT
.LEHE1:
	.p2align 4,,10
	.p2align 3
.L2:
	movq	%rbx, %rdi
.LEHB2:
	call	_ZN3wze6server6UpdateEv@PLT
.LEHE2:
	jmp	.L2
.L4:
	movq	%rax, %rbp
	jmp	.L3
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
	.uleb128 .L4-.LFB8155
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
.L3:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	%rbx, %rdi
	movl	$24, %esi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
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
