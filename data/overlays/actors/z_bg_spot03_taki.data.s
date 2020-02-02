.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808AE390
 .word 0x011F0100, 0x00000030, 0x01120000, 0x00000178
.word func_808ADE14
.word func_808ADEC0
.word func_808AE0C0
.word func_808AE0E4
glabel D_808AE3B0
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

