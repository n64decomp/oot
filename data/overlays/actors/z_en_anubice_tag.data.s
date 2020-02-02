.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_809B3720
 .word 0x00F60000, 0x00000010, 0x00010000, 0x00000158
.word func_809B3400
.word func_809B348C
.word func_809B3674
.word func_809B3698

