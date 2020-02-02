.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B99A30
 .word 0x00940700, 0x00000000, 0x00010000, 0x000001AC
.word func_80B98B48
.word func_80B98C7C
.word func_80B999F8
.word 0x00000000
glabel D_80B99A50
 .word 0x44C80000, 0x44C80000, 0x447A0000, 0x447A0000, 0x447A0000
glabel D_80B99A64
 .word 0x0000000C, 0x00000009, 0x00000008, 0x00000000
glabel D_80B99A74
 .word 0x01250000, 0x00210020, 0x001E0000
glabel D_80B99A80
 .word 0x00000002, 0xFFFF0000, 0xFFFF0000
glabel D_80B99A8C
 .word 0xB0F404B0, 0xB0F800C8, 0x30FC04B0
glabel D_80B99A98
 .word 0x00000000, 0x00000000
.word func_80B995A4
.word func_80B995A4
.word func_80B997CC
.word 0x00000000

