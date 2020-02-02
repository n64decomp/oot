.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808BE3F0
 .word 0x00AC0100, 0x00000000, 0x009C0000, 0x0000017C
.word func_808BDD60
.word func_808BDDC8
.word func_808BDEC4
.word func_808BE324
glabel D_808BE410
 .word 0x48500064
glabel D_808BE414
 .word 0xFFFF00FF
glabel D_808BE418
 .word 0xFF0A00FF, 0x00000000

