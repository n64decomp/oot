.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808ABD90
 .word 0x01040100, 0x00000020, 0x00F90000, 0x00000158
.word func_808ABAE0
.word func_808ABB78
.word func_808ABC34
.word func_808ABC58
glabel D_808ABDB0
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

