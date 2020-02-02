.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808B7600
 .word 0x00BF0000, 0x00000030, 0x00B10000, 0x0000014C
.word func_808B7400
.word func_808B7440
.word func_808B744C
.word 0x00000000
glabel D_808B7620
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

