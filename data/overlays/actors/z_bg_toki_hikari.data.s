.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808BAC50
 .word 0x006A0100, 0x00000020, 0x005E0000, 0x00000154
.word func_808B9F00
.word func_808B9F8C
.word func_808B9FA4
.word func_808B9FC8
glabel D_808BAC70
 .word 0x485003E8, 0x00000000, 0x00000000, 0x00000000

