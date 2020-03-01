.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Bom_Guard_InitVars
 .word 0x01A50600, 0x00000010, 0x01780000, 0x00000178
.word BgBomGuard_Init
.word BgBomGuard_Destroy
.word BgBomGuard_Update
.word 0x00000000

