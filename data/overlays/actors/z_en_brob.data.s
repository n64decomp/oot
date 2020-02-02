.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_809CBA60
 .word 0x00B60500, 0x00000005, 0x00AC0000, 0x000002C0
.word func_809CAB10
.word func_809CAD84
.word func_809CB670
.word func_809CB9E0
glabel D_809CBA80
 .word 0x00110939, 0x10010000, 0x01000000, 0xFFCFFFFF, 0x03080000, 0xFFCFFFFF, 0x01000000, 0x19010100, 0x1F402AF8, 0xEC780000, 0x00000000
glabel D_809CBAAC
 .word 0x0000003C, 0x0078FF00
glabel D_809CBAB4
 .word 0xFFFFFFFF
glabel D_809CBAB8
 .word 0xC8FFFFFF, 0x00000000

