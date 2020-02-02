.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B31E20
 .word 0x01650600, 0x00000010, 0x00010000, 0x00000154
.word func_80B31034
.word func_80B31028
.word func_80B31D70
.word 0x00000000

