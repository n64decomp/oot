.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808B3310
 .word 0x01900100, 0x00000000, 0x01620000, 0x0000016C
.word func_808B3018
.word func_808B3090
.word func_808B32A4
.word func_808B32D8
glabel D_808B3330
 .word 0xC8500064, 0xB0F409C4, 0xB0F801F4, 0x30FC04B0

