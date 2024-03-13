	.file	"main.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Server: "
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.section	.text.startup,"ax",@progbits
.LHOTB2:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB8155:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8155
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$280, %edi
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
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$49152, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB1:
	call	_ZN3wze6serverC1Et@PLT
.LEHE1:
	leaq	.LC0(%rip), %r14
	.p2align 4,,10
	.p2align 3
.L9:
	movq	%rbx, %rdi
.LEHB2:
	call	_ZN3wze6server7ReceiveEv@PLT
	cmpq	$0, 256(%rbx)
	je	.L2
	xorl	%r12d, %r12d
.L8:
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movq	264(%rbx), %rax
	cmpq	256(%rbx), %r12
	jnb	.L3
	leaq	0(,%r12,8), %r13
	xorl	%ebp, %ebp
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L7:
	movq	264(%rbx), %rax
	cmpq	256(%rbx), %r12
	jnb	.L3
	movq	(%rax,%r13), %rdi
	call	_ZN3wze6server6packet7GetDataEv@PLT
	movq	stdout(%rip), %rsi
	movq	%rax, %rdx
	movzbl	%bpl, %eax
	addl	$1, %ebp
	movsbl	(%rdx,%rax), %edi
	call	putc@PLT
	movq	264(%rbx), %rax
	cmpq	256(%rbx), %r12
	jnb	.L3
.L6:
	movq	(%rax,%r13), %rdi
	call	_ZN3wze6server6packet7GetSizeEv@PLT
	cmpb	%al, %bpl
	jb	.L7
	movq	stdout(%rip), %rsi
	movl	$10, %edi
	addq	$1, %r12
	call	putc@PLT
	cmpq	256(%rbx), %r12
	jb	.L8
.L2:
	movl	$3000, %edi
	call	SDL_Delay@PLT
	jmp	.L9
.L3:
	leaq	.LC1(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE2:
	movl	$1, %edi
	call	exit@PLT
.L11:
	movq	%rax, %rbp
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
	.uleb128 .L11-.LFB8155
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
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movq	%rbx, %rdi
	movl	$280, %esi
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
	.uleb128 .LEHB3-.LCOLDB2
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8155:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE2:
	.section	.text.startup
.LHOTE2:
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
