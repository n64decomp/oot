.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8089F840
 .word 0x00D40600, 0x00000000, 0x00590000, 0x00000168
.word func_8089F6E0
.word func_8089F758
.word func_8089F804
.word func_8089F828
glabel D_8089F860
 .word 0xB0F803E8, 0xB0FC03E8, 0x48500064, 0x00000000

