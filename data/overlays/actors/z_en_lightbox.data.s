.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A9EDE0
 .word 0x007C0600, 0x00000010, 0x00810000, 0x00000164
.word func_80A9E9D0
.word func_80A9EAFC
.word func_80A9EB2C
.word func_80A9EDB4

