.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80AF8DD0

.incbin "baserom/ovl_En_Scene_Change", 0x160, 0x00000050
