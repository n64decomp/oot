.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808799C0
 .word 0x01B30600, 0x00000030, 0x01790000, 0x00000178
.word func_808794C0
.word func_80879574
.word func_808798C8
.word func_808798EC

