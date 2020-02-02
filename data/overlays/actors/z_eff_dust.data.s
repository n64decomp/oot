.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8099EB40
 .word 0x01010400, 0x00000030, 0x00010000, 0x00000568
.word func_8099D954
.word func_8099DB1C
.word func_8099E4D0
.word func_8099EB1C
glabel D_8099EB60
 .word 0xDF000000, 0x00000000, 0x00000000, 0x00000000

