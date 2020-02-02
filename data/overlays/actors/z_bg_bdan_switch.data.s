.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8086E080
 .word 0x00E60000, 0x00000010, 0x00960000, 0x000001E0
.word func_8086D25C
.word func_8086D448
.word func_8086DE54
.word func_8086DFC8
glabel D_8086E0A0
 .word 0x00000000, 0x00000000, 0x00000000, 0xEFC1FFFE, 0x00000000, 0x00010100, 0x00000000, 0x00780000, 0x01720064
glabel D_8086E0C4
 .word 0x0A000939, 0x20000000, 0x00000001
.word D_8086E0A0
glabel D_8086E0D4
 .word 0xB0F40578, 0xB0F801F4, 0x30FC04B0
glabel D_8086E0E0
 .word 0x00000000, 0x430C0000, 0x00000000, 0x00000000

