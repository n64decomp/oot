.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808BEC00
 .word 0x00500100, 0x00000030, 0x00360000, 0x0000016C
.word func_808BE500
.word func_808BE660
.word func_808BEA6C
.word func_808BEA90
glabel D_808BEC20
 .word 0x48500064
glabel D_808BEC24
 .word 0x06007508, 0x06005DE0, 0x06005018

