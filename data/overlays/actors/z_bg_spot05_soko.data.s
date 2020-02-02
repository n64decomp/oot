.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808AE700
 .word 0x018D0600, 0x00000000, 0x01610000, 0x0000016C
.word func_808AE470
.word func_808AE578
.word func_808AE69C
.word func_808AE6C0
glabel D_808AE720
 .word 0x48500064
glabel D_808AE724
 .word 0x06000840, 0x06001190, 0x00000000

