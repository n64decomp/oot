.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_809CA7E0
 .word 0x000A0B00, 0x00000000, 0x000E0000, 0x000001FC
.word func_809C8E54
.word func_809C92C4
.word func_809CA1A0
.word func_809CA590
glabel D_809CA800
 .word 0x0600024C, 0x06000128, 0x0600043C, 0x0600043C
glabel D_809CA810
 .word 0x001F0000
glabel D_809CA814
 .word 0x00000000, 0x3F800000, 0x00000000
glabel D_809CA820
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

