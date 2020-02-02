.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B25810
 .word 0x00800100, 0x00000010, 0x00850000, 0x000001EC
.word func_80B24660
.word func_80B24A18
.word func_80B24A40
.word func_80B257D0
glabel D_80B25830
 .word 0x00000935, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00001000, 0x00000000, 0x00010100, 0x001E0014, 0x00000000, 0x00000000, 0x00000000

