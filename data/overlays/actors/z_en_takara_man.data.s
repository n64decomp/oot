.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B17DB0
 .word 0x017C0400, 0x08000039, 0x01550000, 0x00000238
.word func_80B1756C
.word func_80B17560
.word func_80B17B74
.word func_80B17CB0
glabel D_80B17DD0
 .word 0x00000000
glabel D_80B17DD4
 .word 0x06000970, 0x06000D70, 0x00000000

