.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B0BCA0
 .word 0x01600100, 0x00000010, 0x013B0000, 0x00000158
.word func_80B0B7A8
.word func_80B0B810
.word func_80B0BB18
.word func_80B0BB4C
glabel D_80B0BCC0
 .word 0x48500014, 0x00000000, 0x00000000, 0x00000000

