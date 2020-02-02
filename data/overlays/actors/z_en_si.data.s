.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80AFBAB0
 .word 0x0A00093D, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00000090, 0x00000000, 0x00050100, 0x00140012, 0x00020000, 0x00000000
glabel D_80AFBADC
 .word 0x00000000, 0x00000000, 0xFF000000
glabel D_80AFBAE8
 .word 0x019C0700, 0x00000201, 0x00240000, 0x000001A0
.word func_80AFB690
.word func_80AFB720
.word func_80AFB9E4
.word func_80AFBA54
.word 0x00000000, 0x00000000

