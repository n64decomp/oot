.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B867F0
 .word 0x00F10700, 0x00000010, 0x00DE0000, 0x00000154
.word func_80B86138
.word func_80B862E0
.word func_80B86788
.word func_80B867AC

