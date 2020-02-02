.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B43F10
 .word 0x006B0500, 0x00000010, 0x005F0000, 0x000001A0
.word func_80B439C0
.word func_80B43A6C
.word func_80B43C40
.word func_80B43DE0
glabel D_80B43F30
 .word 0x0A11093D, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, 0x00000000, 0x09010100, 0x001C0008, 0x00000000, 0x00000000
glabel D_80B43F5C
 .word 0xC0500001, 0x304C0010
glabel D_80B43F64
 .word 0x06000AF0, 0x06000000, 0x00000000

