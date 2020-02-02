.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80994B50
 .word 0x01720700, 0x00000000, 0x014B0000, 0x0000016C
.word func_809945E0
.word func_8099468C
.word func_80994A24
.word func_80994A48
glabel D_80994B70
 .word 0x40500001, 0x00000000, 0x00000000, 0x00000000

