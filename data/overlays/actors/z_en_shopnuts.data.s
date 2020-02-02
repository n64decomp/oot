.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80AFB4C0
 .word 0x01950500, 0x00000005, 0x01680000, 0x000002BC
.word func_80AFA720
.word func_80AFA858
.word func_80AFB124
.word func_80AFB46C
glabel D_80AFB4E0
 .word 0x06000939, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00140028, 0x00000000, 0x00000000
glabel D_80AFB50C
 .word 0x01000014, 0x0028FE00
glabel D_80AFB514
 .word 0x8917004E, 0xB06CFFFF, 0x304C0A28

