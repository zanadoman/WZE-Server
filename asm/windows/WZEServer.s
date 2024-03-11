	.file	"WZEServer.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "Server started.\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6serverC2Ev
	.def	_ZN3wze6serverC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6serverC2Ev
_ZN3wze6serverC2Ev:
.LFB6889:
	.seh_endprologue
	leaq	.LC0(%rip), %rcx
	jmp	puts
	.seh_endproc
	.globl	_ZN3wze6serverC1Ev
	.def	_ZN3wze6serverC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6serverC1Ev,_ZN3wze6serverC2Ev
	.section .rdata,"dr"
.LC1:
	.ascii "Server stopped.\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6serverD2Ev
	.def	_ZN3wze6serverD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6serverD2Ev
_ZN3wze6serverD2Ev:
.LFB6892:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	.LC1(%rip), %rcx
	call	puts
	nop
	addq	$40, %rsp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6892:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6892-.LLSDACSB6892
.LLSDACSB6892:
.LLSDACSE6892:
	.text
	.seh_endproc
	.globl	_ZN3wze6serverD1Ev
	.def	_ZN3wze6serverD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6serverD1Ev,_ZN3wze6serverD2Ev
	.ident	"GCC: (GNU) 13.1.0"
	.def	puts;	.scl	2;	.type	32;	.endef
