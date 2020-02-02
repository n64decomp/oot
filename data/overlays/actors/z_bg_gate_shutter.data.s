.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80878590
 .word 0x01000700, 0x00000000, 0x01810000, 0x0000017C
.word func_80878160
.word func_8087825C
.word func_8087848C
.word func_808784C0

