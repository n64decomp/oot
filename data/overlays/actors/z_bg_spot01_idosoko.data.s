.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808AC050
 .word 0x01450100, 0x00000010, 0x01800000, 0x00000168
.word func_808ABE88
.word func_808ABF24
.word func_808ABF60
.word func_808ABF84
glabel D_808AC070
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

