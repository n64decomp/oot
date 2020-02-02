.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8086E730
 .word 0x01A50600, 0x00000010, 0x01780000, 0x00000178
.word func_8086E558
.word func_8086E608
.word func_8086E704
.word 0x00000000

