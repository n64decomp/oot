.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8089A020
 .word 0x00000000
glabel D_8089A024
 .word 0x01570100, 0x00000010, 0x00F10000, 0x0000016C
.word func_80899BF8
.word func_80899CC4
.word func_80899F04
.word func_80899FEC
glabel D_8089A044
 .word 0xC8500064, 0xB0F40578, 0xB0F80708, 0x30FC09C4, 0x00000000, 0x00000000, 0x00000000

