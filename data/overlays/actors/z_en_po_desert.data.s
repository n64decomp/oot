.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80AD3980
 .word 0x01BF0100, 0x00001090, 0x006D0000, 0x00000284
.word func_80AD2CB0
.word func_80AD2E1C
.word func_80AD3410
.word func_80AD37F4
glabel D_80AD39A0
 .word 0x03000039, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00190032, 0x00140000, 0x00000000
glabel D_80AD39CC
 .word 0x8917005C, 0xB0F407D0, 0x304C0C80
glabel D_80AD39D8
 .word 0x00000000, 0x44AF0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

