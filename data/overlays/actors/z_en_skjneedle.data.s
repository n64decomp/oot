.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B02160
 .word 0x01160500, 0x00000205, 0x010A0000, 0x000001E8
.word func_80B01EB0
.word func_80B01F44
.word func_80B01F9C
.word func_80B0208C
glabel D_80B02180
 .word 0x01110900, 0x01000000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, 0x00000000, 0x01010100, 0x000A0004, 0xFFFE0000, 0x00000000
glabel D_80B021AC
 .word 0x801F0002, 0x304C001E, 0x00000000, 0x00000000, 0x00000000

