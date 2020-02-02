.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80895700
 .word 0x015B0100, 0x00000000, 0x00F10000, 0x000001C8
.word func_8089527C
.word func_80895354
.word func_80895630
.word func_808956BC
glabel D_80895720
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x00000000, 0x00000000, 0x00320064
glabel D_80895744
 .word 0x0A000900, 0x00000000, 0x00000001
.word D_80895720
glabel D_80895754
 .word 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8, 0x00000000, 0x00000000, 0x00000000

