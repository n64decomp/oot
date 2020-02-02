.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80ACD5D0
 .word 0x014D0400, 0x00000019, 0x01310000, 0x00000414
.word func_80AC9F20
.word func_80ACA390
.word func_80ACC6A0
.word func_80ACCFB8
glabel D_80ACD5F0
 .word 0x0A001139, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x001E0028, 0x00000000, 0x00000000
glabel D_80ACD61C
 .word 0xC8500019, 0xB0F40578, 0xB0F807D0, 0x30FC0960
glabel D_80ACD62C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80ACD638
 .word 0x060089A8, 0x06008DA8, 0x060091A8, 0x00000000, 0x00000000, 0x00000000

