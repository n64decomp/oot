.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A89690
 .word 0x016A0400, 0x00000009, 0x01440000, 0x00000290
.word func_80A88E18
.word func_80A88F3C
.word func_80A89338
.word func_80A89634
glabel D_80A896B0
 .word 0x0A001139, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x001E0028, 0x00000000, 0x00000000
glabel D_80A896DC
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

