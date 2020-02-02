.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A8FDE0
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00040100, 0x00140046, 0x00000000, 0x00000000
glabel D_80A8FE0C
 .word 0x017B0400, 0x02000009, 0x01540000, 0x0000020C
.word func_80A8F198
.word func_80A8F170
.word func_80A8FC4C
.word func_80A8FD50
.word 0x00000000

