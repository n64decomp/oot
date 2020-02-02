.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808B69F0
 .word 0x00E50600, 0x00000000, 0x017A0000, 0x00000154
.word func_808B6440
.word func_808B65E0
.word func_808B65EC
.word func_808B66E8
glabel D_808B6A10
 .word 0xB0F4157C, 0xB0F81388, 0x30FC1388
glabel D_808B6A1C
 .word 0x00000000, 0x004600D2, 0x012C0000, 0x00000000, 0x00000000

