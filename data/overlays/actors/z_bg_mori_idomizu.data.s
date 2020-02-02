.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808A4C10
 .word 0x00000000
glabel D_808A4C14
 .word 0x00E40100, 0x00000030, 0x00720000, 0x00000160
.word func_808A466C
.word func_808A47B8
.word func_808A4A38
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

