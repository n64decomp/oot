.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Hidan_Fslift_InitVars
 .word 0x004E0100, 0x00000010, 0x002C0000, 0x0000016C
.word BgHidanFslift_Init
.word BgHidanFslift_Destroy
.word BgHidanFslift_Update
.word BgHidanFslift_Draw
glabel D_80887260
 .word 0xC8500064, 0xB0F8012C, 0xB0FC015E, 0x30F407D0

