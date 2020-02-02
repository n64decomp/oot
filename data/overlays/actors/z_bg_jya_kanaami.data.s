.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80899A80
 .word 0x00FD0100, 0x00000000, 0x00F10000, 0x0000016C
.word func_808997C8
.word func_80899850
.word func_80899A18
.word func_80899A50
glabel D_80899AA0
 .word 0xC8500064, 0xB0F403E8, 0xB0F802BC, 0x30FC03E8

