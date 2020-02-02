.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8089F870

.incbin "baserom/ovl_Bg_Mizu_Uzu", 0x190, 0x00000040
