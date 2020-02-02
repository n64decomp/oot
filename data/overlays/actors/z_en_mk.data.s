.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80AAD600
 .word 0x014A0400, 0x00000019, 0x01320000, 0x00000288
.word func_80AAC900
.word func_80AACA18
.word func_80AAD2D0
.word func_80AAD59C
glabel D_80AAD620
 .word 0x0A001139, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x001E0028, 0x00000000, 0x00000000
glabel D_80AAD64C
 .word 0x447A0000, 0xC2C80000, 0x00000000, 0x00000000, 0x00000000

