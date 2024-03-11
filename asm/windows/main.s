	.file	"main.cpp"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.unlikely,"x"
.LCOLDB0:
	.section	.text.startup,"x"
.LHOTB0:
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6888:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$320, %rsp
	.seh_stackalloc	320
	.seh_endprologue
	call	__main
	leaq	32(%rsp), %rdi
	movq	%rdi, %rcx
.LEHB0:
	call	_ZN3wze6packetC1Ev
	movl	$8, %ecx
	call	_Znwy
.LEHE0:
	movl	$49152, %edx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB1:
	call	_ZN3wze6serverC1Et
.LEHE1:
	.p2align 4,,10
	.p2align 3
.L8:
	movq	%rdi, %rdx
	movq	%rsi, %rcx
.LEHB2:
	call	_ZN3wze6server7ReceiveEPNS_6packetE
	testb	%al, %al
	je	.L8
	movzbl	48(%rsp), %eax
	cmpb	$4, %al
	je	.L3
	xorl	%ebx, %ebx
	testb	%al, %al
	je	.L5
	.p2align 4,,10
	.p2align 3
.L19:
	movq	40(%rsp), %rax
.L6:
	movsbl	(%rax,%rbx), %ecx
	addq	$1, %rbx
	call	putchar
	cmpb	48(%rsp), %bl
	jb	.L19
.L5:
	movl	$10, %ecx
	call	putchar
.LEHE2:
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L3:
	movq	40(%rsp), %rax
	xorl	%ebx, %ebx
	cmpb	$115, (%rax)
	jne	.L6
	cmpb	$116, 1(%rax)
	jne	.L6
	cmpb	$111, 2(%rax)
	jne	.L6
	cmpb	$112, 3(%rax)
	jne	.L6
	movq	%rsi, %rcx
	call	_ZN3wze6serverD1Ev
	movl	$8, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$320, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L15:
	movq	%rax, %rbx
	jmp	.L9
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6888:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6888-.LLSDACSB6888
.LLSDACSB6888:
	.uleb128 .LEHB0-.LFB6888
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6888
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L15-.LFB6888
	.uleb128 0
	.uleb128 .LEHB2-.LFB6888
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE6888:
	.section	.text.startup,"x"
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	main.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	main.cold
	.seh_stackalloc	344
	.seh_savereg	%rbx, 320
	.seh_savereg	%rsi, 328
	.seh_savereg	%rdi, 336
	.seh_endprologue
main.cold:
.L9:
	movq	%rsi, %rcx
	movl	$8, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB3:
	call	_Unwind_Resume
	nop
.LEHE3:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6888:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6888-.LLSDACSBC6888
.LLSDACSBC6888:
	.uleb128 .LEHB3-.LCOLDB0
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC6888:
	.section	.text.unlikely,"x"
	.section	.text.startup,"x"
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE0:
	.section	.text.startup,"x"
.LHOTE0:
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN3wze6packetC1Ev;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6serverC1Et;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6server7ReceiveEPNS_6packetE;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6serverD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
