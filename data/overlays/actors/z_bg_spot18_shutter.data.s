.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808B9850
 .word 0x01C40600, 0x00000030, 0x00AF0000, 0x00000168
.word func_808B93D0
.word func_808B957C
.word func_808B97F8
.word func_808B981C
glabel D_808B9870
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

