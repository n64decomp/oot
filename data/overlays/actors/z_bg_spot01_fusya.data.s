.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808AAC00
 .word 0x01020100, 0x00000010, 0x00F90000, 0x00000160
.word func_808AA9C8
.word func_808AAA44
.word func_808AAB0C
.word func_808AAB30
glabel D_808AAC20
 .word 0xC8500064, 0xB0F43200, 0xB0F80514, 0x30FC0514

