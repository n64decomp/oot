.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A50B50
 .word 0x01A40400, 0x00000019, 0x01110000, 0x00000310
.word func_80A50220
.word func_80A502D4
.word func_80A502FC
.word 0x00000000
glabel D_80A50B70
 .word 0x0A000039, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x000A003C, 0x00000000, 0x00000000
glabel D_80A50B9C
 .word 0x801F0006, 0x304C01F4
glabel D_80A50BA4
 .word 0x060005FC, 0x060006FC, 0x060007FC

