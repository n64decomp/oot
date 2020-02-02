.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8086E290

.incbin "baserom/ovl_Bg_Bdan_Switch", 0x1280, 0x000002C0
