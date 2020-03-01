.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Spot15_Saku_InitVars
 .word 0x00F80700, 0x00000000, 0x00F00000, 0x00000180
.word BgSpot15Saku_Init
.word BgSpot15Saku_Destroy
.word BgSpot15Saku_Update
.word BgSpot15Saku_Draw

