.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80AE23B0
 .word 0x007D0100, 0x00000010, 0x00820000, 0x00000168
.word func_80AE20C0
.word func_80AE21F8
.word func_80AE2228
.word func_80AE237C

