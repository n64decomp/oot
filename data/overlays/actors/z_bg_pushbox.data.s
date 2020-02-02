.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808A8D80
 .word 0x002C0100, 0x00000000, 0x00030000, 0x00000168
.word func_808A8AE8
.word func_808A8B7C
.word func_808A8C88
.word func_808A8CB8
glabel D_808A8DA0
 .word 0x386CF830, 0x00000000, 0x00000000, 0x00000000

