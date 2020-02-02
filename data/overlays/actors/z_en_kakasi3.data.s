.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A91D10
 .word 0x0A000939, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00050100, 0x00140046, 0x00000000, 0x00000000
glabel D_80A91D3C
 .word 0x01CA0400, 0x02000009, 0x01540000, 0x0000020C
.word func_80A90D48
.word func_80A90D20
.word func_80A91B8C
.word func_80A91CB8
.word 0x00000000

