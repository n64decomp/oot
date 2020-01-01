.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800062B0
/* 006EB0 800062B0 3C0EA480 */  lui   $t6, %hi(D_A4800018) # $t6, 0xa480
/* 006EB4 800062B4 8DC20018 */  lw    $v0, %lo(D_A4800018)($t6)
/* 006EB8 800062B8 304F0003 */  andi  $t7, $v0, 3
/* 006EBC 800062BC 11E00003 */  beqz  $t7, .L800062CC
/* 006EC0 800062C0 00001025 */   move  $v0, $zero
/* 006EC4 800062C4 03E00008 */  jr    $ra
/* 006EC8 800062C8 24020001 */   li    $v0, 1

.L800062CC:
/* 006ECC 800062CC 03E00008 */  jr    $ra
/* 006ED0 800062D0 00000000 */   nop   
