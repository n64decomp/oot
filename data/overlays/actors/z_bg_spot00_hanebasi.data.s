.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808AA790
 .word 0x004A0100, 0x00000010, 0x002F0000, 0x00000180
.word func_808A9780
.word func_808A9B8C
.word func_808A9FAC
.word func_808AA588
glabel D_808AA7B0
 .word 0x00000000
glabel D_808AA7B4
 .word 0xB0F80226, 0xB0FC07D0, 0xB0F41388, 0x485003E8
glabel D_808AA7C4
 .word 0x431E0000, 0x41200000, 0x43C80000

