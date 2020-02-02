.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8086E790

.incbin "baserom/ovl_Bg_Bom_Guard", 0x240, 0x00000040
