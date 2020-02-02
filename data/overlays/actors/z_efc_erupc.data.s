.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8099D750
 .word 0x01760700, 0x00000030, 0x014D0000, 0x000018CC
.word func_8099CCB8
.word func_8099CD20
.word func_8099CF78
.word func_8099CFB0
.word 0xFF8000FF, 0x0000FFFF, 0x00FF0000
glabel D_8099D77C
 .word 0xFF8000FF, 0x00000000, 0x00640000, 0x00000000, 0x00000000

