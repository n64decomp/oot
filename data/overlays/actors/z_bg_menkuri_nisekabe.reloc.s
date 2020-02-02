.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8089C440

.incbin "baserom/ovl_Bg_Menkuri_Nisekabe", 0x110, 0x00000040
