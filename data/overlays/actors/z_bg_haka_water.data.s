.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80882490
 .word 0x00D70600, 0x00000030, 0x008D0000, 0x00000154
.word func_80881D00
.word func_80881D88
.word func_808820A0
.word func_808820C4
glabel D_808824B0
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

