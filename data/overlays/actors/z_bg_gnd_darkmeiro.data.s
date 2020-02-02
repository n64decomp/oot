.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808793C0
 .word 0x01B40600, 0x00000030, 0x01790000, 0x00000170
.word func_80878CC0
.word func_80878EE8
.word func_80879198
.word 0x00000000

