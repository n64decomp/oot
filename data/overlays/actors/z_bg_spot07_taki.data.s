.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808B01E0
 .word 0x01200100, 0x00000030, 0x01130000, 0x00000168
.word func_808AFC30
.word func_808AFCD8
.word func_808AFD14
.word func_808AFD38
glabel D_808B0200
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

