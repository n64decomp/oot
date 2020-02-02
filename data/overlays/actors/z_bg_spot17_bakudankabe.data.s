.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808B7280
 .word 0x01A90100, 0x00000000, 0x00B10000, 0x00000164
.word func_808B6EF0
.word func_808B6F80
.word func_808B6FB0
.word func_808B7044
glabel D_808B72A0
 .word 0xC8500064, 0xB0F40BB8, 0xB0F801F4, 0x30FC03E8

