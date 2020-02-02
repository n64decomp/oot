.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B929E0
 .word 0x00D30400, 0x00000009, 0x00CC0000, 0x000001A4
.word func_80B92420
.word func_80B9252C
.word func_80B92768
.word func_80B92854
glabel D_80B92A00
 .word 0x00000000, 0x00003901, 0x02000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00000100, 0x003C0050, 0x00000000, 0x00000000
glabel D_80B92A2C
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

