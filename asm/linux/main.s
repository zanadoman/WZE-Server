	.file	"main.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
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
	movl	$24, %edi
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
	movq	%rax, %rbp
.LEHB1:
	call	_ZN3wze6serverC1Et@PLT
.LEHE1:
.L3:
	movq	%rbp, %rdi
	xorl	%r12d, %r12d
.LEHB2:
	call	_ZN3wze6server7ReceiveEv@PLT
	movq	0(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L3
	.p2align 4,,10
	.p2align 3
.L2:
	movq	8(%rbp), %rax
	leaq	0(,%r12,8), %r13
	movq	(%rax,%r12,8), %rax
	movzbl	16(%rax), %edx
	cmpb	$4, %dl
	je	.L19
.L4:
	cmpq	%rcx, %r12
	jnb	.L6
	xorl	%ebx, %ebx
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L8:
	movq	8(%rax), %rax
	movzbl	%bl, %edx
	addl	$1, %ebx
	movsbl	(%rax,%rdx), %edi
	call	putc@PLT
	movq	8(%rbp), %rax
	cmpq	0(%rbp), %r12
	jnb	.L6
	movq	(%rax,%r13), %rax
	movzbl	16(%rax), %edx
.L7:
	movq	stdout(%rip), %rsi
	cmpb	%dl, %bl
	jb	.L8
	movl	$10, %edi
	addq	$1, %r12
	call	putc@PLT
	movq	0(%rbp), %rcx
	cmpq	%rcx, %r12
	jb	.L2
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L19:
	movq	8(%rax), %rsi
	cmpb	$115, (%rsi)
	jne	.L4
	cmpb	$116, 1(%rsi)
	jne	.L4
	cmpb	$111, 2(%rsi)
	jne	.L4
	cmpb	$112, 3(%rsi)
	jne	.L4
	movq	%rbp, %rdi
	call	_ZN3wze6serverD1Ev@PLT
	movq	%rbp, %rdi
	movl	$24, %esi
	call	_ZdlPvm@PLT
	popq	%rdx
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
.L6:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE2:
	movl	$1, %edi
	call	exit@PLT
.L12:
	movq	%rax, %rbx
	jmp	.L10
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
	.uleb128 .L12-.LFB8155
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
.L10:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%rbp, %rdi
	movl	$24, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
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
	.uleb128 .LEHB3-.LCOLDB1
	.uleb128 .LEHE3-.LEHB3
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
