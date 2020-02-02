.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A08B50
 .word 0x00B40500, 0x00000030, 0x00920000, 0x00000A20
.word func_80A07990
.word 0x00000000
.word func_80A082A8
.word func_80A08674

