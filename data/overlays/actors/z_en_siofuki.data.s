.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80AFC7F0
 .word 0x015F0100, 0x00000030, 0x013A0000, 0x000001A0
.word func_80AFBB80
.word func_80AFBD98
.word func_80AFC574
.word func_80AFC598
glabel D_80AFC810
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

