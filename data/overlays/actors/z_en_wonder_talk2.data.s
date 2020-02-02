.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B3A8C0
 .word 0x01850700, 0x08000009, 0x00010000, 0x00000170
.word func_80B39EDC
.word func_80B39ED0
.word func_80B3A77C
.word 0x00000000
glabel D_80B3A8E0
 .word 0x00060000, 0x00010002, 0x00030004, 0x00050000

