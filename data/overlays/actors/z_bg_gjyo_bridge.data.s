.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80878B30
 .word 0x01480600, 0x00000000, 0x01300000, 0x00000168
.word func_808786C0
.word func_80878774
.word func_80878978
.word func_8087899C
glabel D_80878B50
 .word 0xB0F80320, 0x48500064, 0x00000000, 0x00000000

