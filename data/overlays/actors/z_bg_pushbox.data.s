.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Pushbox_InitVars
 .word 0x002C0100, 0x00000000, 0x00030000, 0x00000168
.word BgPushbox_Init
.word BgPushbox_Destroy
.word BgPushbox_Update
.word BgPushbox_Draw
glabel D_808A8DA0
 .word 0x386CF830, 0x00000000, 0x00000000, 0x00000000

