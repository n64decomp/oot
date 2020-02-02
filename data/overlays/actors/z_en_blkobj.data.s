.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_809C2560
 .word 0x01360600, 0x00000030, 0x01250000, 0x0000016C
.word func_809C206C
.word func_809C2118
.word func_809C2300
.word func_809C23F8
glabel D_809C2580
 .word 0xC0500001, 0xB0F40320, 0xB0F800C8, 0x30FC012C
glabel D_809C2590
 .word 0xE200001C, 0xC8112078, 0xDF000000, 0x00000000
glabel D_809C25A0
 .word 0xE200001C, 0xC81049D8, 0xDF000000, 0x00000000

