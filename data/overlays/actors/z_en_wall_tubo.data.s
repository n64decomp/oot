.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B2F320
 .word 0x01BE0600, 0x00000010, 0x00010000, 0x00000170
.word func_80B2EDF0
.word func_80B2EE50
.word func_80B2F25C
.word 0x00000000
glabel D_80B2F340
 .word 0x00000000, 0x3DCCCCCD, 0x00000000
glabel D_80B2F34C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B2F358
 .word 0x00000000, 0x3DCCCCCD, 0x00000000
glabel D_80B2F364
 .word 0x00000000, 0x00000000, 0x00000000

