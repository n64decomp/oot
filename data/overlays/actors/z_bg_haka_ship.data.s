.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8087FAA0
 .word 0x00B00100, 0x00000030, 0x00690000, 0x00000178
.word func_8087F100
.word func_8087F240
.word func_8087F774
.word func_8087F7B4
glabel D_8087FAC0
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

