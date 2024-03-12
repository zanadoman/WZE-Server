	.file	"main.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Loop: %lld.\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.rodata.str1.1
.LC2:
	.string	"online"
.LC3:
	.string	"Done"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB4:
	.section	.text.startup,"ax",@progbits
.LHOTB4:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB8155:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8155
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$40, %edi
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
	subq	$312, %rsp
	.cfi_def_cfa_offset 368
	movq	%fs:40, %rax
	movq	%rax, 296(%rsp)
	xorl	%eax, %eax
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$49152, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB1:
	call	_ZN3wze6serverC1Et@PLT
.LEHE1:
	xorl	%esi, %esi
	leaq	.LC2(%rip), %r15
	leaq	16(%rsp), %r14
.L16:
	leaq	1(%rsi), %rax
	leaq	.LC0(%rip), %rdi
	xorl	%r12d, %r12d
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.LEHB2:
	call	printf@PLT
	movq	%rbx, %rdi
	call	_ZN3wze6server7ReceiveEv@PLT
	movq	(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L3
	.p2align 4,,10
	.p2align 3
.L2:
	movq	8(%rbx), %rax
	cmpq	%rdx, %r12
	jnb	.L30
	leaq	0(,%r12,8), %r13
	xorl	%ebp, %ebp
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L6:
	movq	8(%rbx), %rax
	cmpq	(%rbx), %r12
	jnb	.L30
	movq	(%rax,%r13), %rdi
	call	_ZN3wze6packet7GetDataEv@PLT
	movq	stdout(%rip), %rsi
	movq	%rax, %rdx
	movzbl	%bpl, %eax
	addl	$1, %ebp
	movsbl	(%rdx,%rax), %edi
	call	putc@PLT
	movq	8(%rbx), %rax
	cmpq	(%rbx), %r12
	jnb	.L30
.L5:
	movq	(%rax,%r13), %rdi
	call	_ZN3wze6packet7GetSizeEv@PLT
	cmpb	%al, %bpl
	jb	.L6
	movq	stdout(%rip), %rsi
	movl	$10, %edi
	call	putc@PLT
	movq	8(%rbx), %rax
	cmpq	(%rbx), %r12
	jnb	.L30
	movq	(%rax,%r13), %rdi
	call	_ZN3wze6packet7GetSizeEv@PLT
	cmpb	$4, %al
	jne	.L8
	movq	8(%rbx), %rax
	cmpq	(%rbx), %r12
	jnb	.L30
	movq	(%rax,%r13), %rdi
	call	_ZN3wze6packet7GetDataEv@PLT
	cmpb	$115, (%rax)
	je	.L32
.L8:
	movq	8(%rbx), %rax
	cmpq	(%rbx), %r12
	jnb	.L30
	movq	(%rax,%r13), %rdi
	addq	$1, %r12
	call	_ZN3wze6packet10GetAddressEv@PLT
	xorl	%edx, %edx
	movl	$6, %r8d
	movq	%r15, %rcx
	movq	%rax, %rsi
	movq	%r14, %rdi
	call	_ZN3wze6packetC1ENS_7addressEyPKvh@PLT
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	_ZN3wze6server4SendEPNS_6packetE@PLT
	movq	(%rbx), %rdx
	cmpq	%rdx, %r12
	jb	.L2
.L3:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	movl	$3000, %edi
	call	SDL_Delay@PLT
	movq	8(%rsp), %rsi
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L32:
	movq	8(%rbx), %rax
	cmpq	(%rbx), %r12
	jnb	.L30
	movq	(%rax,%r13), %rdi
	call	_ZN3wze6packet7GetDataEv@PLT
	cmpb	$116, 1(%rax)
	jne	.L8
	movq	8(%rbx), %rax
	cmpq	(%rbx), %r12
	jnb	.L30
	movq	(%rax,%r13), %rdi
	call	_ZN3wze6packet7GetDataEv@PLT
	cmpb	$111, 2(%rax)
	jne	.L8
	movq	8(%rbx), %rax
	cmpq	(%rbx), %r12
	jnb	.L30
	movq	(%rax,%r13), %rdi
	call	_ZN3wze6packet7GetDataEv@PLT
	cmpb	$112, 3(%rax)
	jne	.L8
	movq	%rbx, %rdi
	call	_ZN3wze6serverD1Ev@PLT
	movl	$40, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L33
	addq	$312, %rsp
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
.L30:
	.cfi_restore_state
	leaq	.LC1(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE2:
	movl	$1, %edi
	call	exit@PLT
.L33:
	call	__stack_chk_fail@PLT
.L21:
	movq	%rax, %rbp
	jmp	.L17
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
	.uleb128 .L21-.LFB8155
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
.L17:
	.cfi_def_cfa_offset 368
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$40, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L34
	movq	%rbp, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L34:
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
	.uleb128 .LEHB3-.LCOLDB4
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8155:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE4:
	.section	.text.startup
.LHOTE4:
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
