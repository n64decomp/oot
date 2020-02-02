.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B98410
 .word 0x01CF0700, 0x00000010, 0x00010000, 0x00000154
.word func_80B98270
.word 0x80035118
.word func_80B983E0
.word 0x00000000

