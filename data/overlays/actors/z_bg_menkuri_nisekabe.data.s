.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8089C410
 .word 0x01CD0600, 0x00000000, 0x004D0000, 0x0000014C
.word func_8089C330
.word func_8089C358
.word func_8089C364
.word func_8089C398
glabel D_8089C430
 .word 0x06002280, 0x06002BC0, 0x00000000, 0x00000000

