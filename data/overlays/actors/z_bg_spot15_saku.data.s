.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808B4B30
 .word 0x00F80700, 0x00000000, 0x00F00000, 0x00000180
.word func_808B4850
.word func_808B4900
.word func_808B4A34
.word func_808B4A68

