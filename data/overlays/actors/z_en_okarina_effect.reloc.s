.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80ABECA0

.incbin "baserom/ovl_En_Okarina_Effect", 0x540, 0x00000080
