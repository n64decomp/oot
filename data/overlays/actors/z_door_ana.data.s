.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_809944A0
 .word 0x009B0700, 0x02000000, 0x00020000, 0x0000019C
.word func_80993EF8
.word func_80993FB4
.word func_80994384
.word func_809943D8
glabel D_809944C0
 .word 0x0A000900, 0x00010000, 0x02000000, 0x00000000, 0x00000000, 0x00000048, 0x00000000, 0x00010000, 0x0032000A, 0x00000000, 0x00000000
glabel D_809944EC
 .word 0x036D003F, 0x0598059C, 0x05A005A4, 0x05A805AC, 0x05B005B4, 0x05B805BC, 0x05C005C4, 0x05FC0000, 0x00000000

