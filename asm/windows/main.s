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
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	movl	$16, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movl	$25565, %edx
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB1:
	call	_ZN3wze6serverC1Et
.LEHE1:
	movq	%rbx, %rcx
	call	_ZN3wze6serverD1Ev
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L3:
	movq	%rax, %rsi
	jmp	.L2
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
	.uleb128 .L3-.LFB6888
	.uleb128 0
.LLSDACSE6888:
	.section	.text.startup,"x"
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	main.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	main.cold
	.seh_stackalloc	56
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_endprologue
main.cold:
.L2:
	movq	%rbx, %rcx
	movl	$16, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB2:
	call	_Unwind_Resume
	nop
.LEHE2:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6888:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6888-.LLSDACSBC6888
.LLSDACSBC6888:
	.uleb128 .LEHB2-.LCOLDB0
	.uleb128 .LEHE2-.LEHB2
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
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6serverC1Et;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6serverD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
