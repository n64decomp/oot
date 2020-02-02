.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_809EF090
 .word 0x01240400, 0x00000019, 0x00FE0000, 0x00000398
.word func_809ED870
.word func_809ED9A4
.word func_809EEB90
.word func_809EEF44
glabel D_809EF0B0
 .word 0x00000000
glabel D_809EF0B4
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x000A000A, 0x00000000, 0x00000000
glabel D_809EF0E0
 .word 0x06003E40, 0x06004640, 0x06004E40, 0x00000000

