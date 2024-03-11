	.file	"WZEServer.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Server started."
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6serverC2Ev
	.type	_ZN3wze6serverC2Ev, @function
_ZN3wze6serverC2Ev:
.LFB8156:
	.cfi_startproc
	leaq	.LC0(%rip), %rdi
	jmp	puts@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6serverC2Ev, .-_ZN3wze6serverC2Ev
	.globl	_ZN3wze6serverC1Ev
	.set	_ZN3wze6serverC1Ev,_ZN3wze6serverC2Ev
	.section	.rodata.str1.1
.LC1:
	.string	"Server stopped."
	.text
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
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
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
