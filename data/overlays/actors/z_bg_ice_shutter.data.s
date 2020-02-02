.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80891E90
 .word 0x01C80600, 0x00000010, 0x006B0000, 0x00000168
.word func_80891B4C
.word func_80891CC4
.word func_80891E3C
.word func_80891E60
glabel D_80891EB0
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

