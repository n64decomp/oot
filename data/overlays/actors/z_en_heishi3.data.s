.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A55F40
 .word 0x00000000
glabel D_80A55F44
 .word 0x01420400, 0x00000000, 0x00970000, 0x000002C8
.word func_80A55640
.word func_80A55778
.word func_80A55DAC
.word func_80A55EEC
glabel D_80A55F64
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x000F0046, 0x00000000, 0x00000000

