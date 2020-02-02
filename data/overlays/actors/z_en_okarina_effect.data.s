.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80ABEBD0
 .word 0x01700700, 0x02000010, 0x00010000, 0x00000154
.word func_80ABE7E8
.word func_80ABE768
.word func_80ABEB20
.word 0x00000000

