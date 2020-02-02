.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80887EB0
 .word 0x008D0600, 0x00000010, 0x002C0000, 0x000001A0
.word func_808872F0
.word func_80887488
.word func_80887A58
.word func_80887BD0
glabel D_80887ED0
 .word 0x0A110009, 0x20010000, 0x00000000, 0x20000000, 0x01040000, 0xFFCFFFFF, 0x00000000, 0x19000100, 0x001E0082, 0x00000000, 0x00000000
glabel D_80887EFC
 .word 0x30F803E8

