.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.word 0x00000000, 0x00000000, 0x00000000
glabel D_808B9E1C
 .word 0x01660100, 0x00000030, 0x00E20000, 0x0000016C
.word func_808B9910
.word func_808B9978
.word func_808B99A8
.word func_808B9D14
glabel D_808B9E3C
 .word 0x48500064

