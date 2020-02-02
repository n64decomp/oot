.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808935D0
 .word 0x015A0100, 0x00000000, 0x00F10000, 0x00000168
.word func_80893348
.word func_8089338C
.word func_80893570
.word func_80893598
glabel D_808935F0
 .word 0xC8500064, 0xB0F403E8, 0xB0F800C8, 0x30FC03E8

