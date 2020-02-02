.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80AF8D80
 .word 0x00240600, 0x00000000, 0x00400000, 0x00000150
.word func_80AF8C78
.word func_80AF8CA0
.word func_80AF8CB8
.word func_80AF8CDC

