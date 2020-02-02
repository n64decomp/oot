.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80887240
 .word 0x004E0100, 0x00000010, 0x002C0000, 0x0000016C
.word func_80886E40
.word func_80886F84
.word func_80887170
.word func_80887210
glabel D_80887260
 .word 0xC8500064, 0xB0F8012C, 0xB0FC015E, 0x30F407D0

