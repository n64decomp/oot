.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80004ED0
/* 005AD0 80004ED0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 005AD4 80004ED4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 005AD8 80004ED8 AFA40018 */  sw    $a0, 0x18($sp)
/* 005ADC 80004EDC 0C0018AC */  jal   func_800062B0
/* 005AE0 80004EE0 AFA5001C */   sw    $a1, 0x1c($sp)
/* 005AE4 80004EE4 10400003 */  beqz  $v0, .L80004EF4
/* 005AE8 80004EE8 8FAE0018 */   lw    $t6, 0x18($sp)
/* 005AEC 80004EEC 10000007 */  b     .L80004F0C
/* 005AF0 80004EF0 2402FFFF */   li    $v0, -1
.L80004EF4:
/* 005AF4 80004EF4 3C01A000 */  lui   $at, 0xa000
/* 005AF8 80004EF8 01C17825 */  or    $t7, $t6, $at
/* 005AFC 80004EFC 8DF80000 */  lw    $t8, ($t7)
/* 005B00 80004F00 8FB9001C */  lw    $t9, 0x1c($sp)
/* 005B04 80004F04 00001025 */  move  $v0, $zero
/* 005B08 80004F08 AF380000 */  sw    $t8, ($t9)
.L80004F0C:
/* 005B0C 80004F0C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 005B10 80004F10 27BD0018 */  addiu $sp, $sp, 0x18
/* 005B14 80004F14 03E00008 */  jr    $ra
/* 005B18 80004F18 00000000 */   nop   
