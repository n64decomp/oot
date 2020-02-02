.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B85510
 .word 0x005F0800, 0x00000000, 0x00BD0000, 0x0000016C
.word func_80B85150
.word func_80B851B8
.word func_80B851C4
.word func_80B85354
glabel D_80B85530
 .word 0xC8500000, 0xB0F40FA0, 0xB0F80320, 0x30FC0320

