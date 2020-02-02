.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808A14C0
 .word 0x00860100, 0x00000010, 0x00720000, 0x0000016C
.word func_808A0C50
.word func_808A0DAC
.word func_808A1344
.word 0x00000000
glabel D_808A14E0
 .word 0xB0F40BB8, 0xB0F80BB8, 0xB0FC0BB8, 0xB86CFE0C, 0xB870D120, 0x485003E8, 0x00000000, 0x00000000

