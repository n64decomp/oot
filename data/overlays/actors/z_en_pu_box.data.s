.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Pu_box_InitVars
 .word 0x007D0100, 0x00000010, 0x00820000, 0x00000168
.word EnPubox_Init
.word EnPubox_Destroy
.word EnPubox_Update
.word EnPubox_Draw

