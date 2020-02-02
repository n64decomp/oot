.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808943E0
 .word 0x01D50600, 0x00000000, 0x00030000, 0x00000164
.word func_808941A0
.word func_80894254
.word func_80894284
.word func_808942A4
glabel D_80894400
 .word 0xC850014D, 0xB0F40708, 0xB0F801F4, 0x30FC05DC

