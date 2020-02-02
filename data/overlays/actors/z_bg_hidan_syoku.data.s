.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8088F760
 .word 0x00470100, 0x00000010, 0x002C0000, 0x0000016C
.word func_8088F3C0
.word func_8088F44C
.word func_8088F688
.word func_8088F728
glabel D_8088F780
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

