.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A54EF0
 .word 0x00B30400, 0x00000009, 0x00970000, 0x000003E4
.word func_80A52EA0
.word func_80A5318C
.word func_80A54A78
.word func_80A54D2C
glabel D_80A54F10
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00210028, 0x00000000, 0x00000000, 0x00000000

