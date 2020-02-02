.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80892A90
 .word 0x01400600, 0x00000000, 0x01290000, 0x00000168
.word func_80892748
.word func_80892860
.word func_8089299C
.word func_808929C0

