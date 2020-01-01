.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
 
glabel func_80008FB0
/* 009BB0 80008FB0 3C028001 */  lui   $v0, %hi(D_8000AF00)
/* 009BB4 80008FB4 03E00008 */  jr    $ra
/* 009BB8 80008FB8 8C42AF00 */   lw    $v0, %lo(D_8000AF00)($v0)
