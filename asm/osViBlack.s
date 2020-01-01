.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osViBlack
/* 005A60 80004E60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 005A64 80004E64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 005A68 80004E68 0C001CA0 */  jal   __osDisableInt
/* 005A6C 80004E6C AFA40018 */   sw    $a0, 0x18($sp)
/* 005A70 80004E70 93AE001B */  lbu   $t6, 0x1b($sp)
/* 005A74 80004E74 00402025 */  move  $a0, $v0
/* 005A78 80004E78 3C028001 */  lui   $v0, %hi(D_8000AF04)
/* 005A7C 80004E7C 11C00007 */  beqz  $t6, .L80004E9C
/* 005A80 80004E80 00000000 */   nop   
/* 005A84 80004E84 3C028001 */  lui   $v0, %hi(D_8000AF04) # $v0, 0x8001
/* 005A88 80004E88 8C42AF04 */  lw    $v0, %lo(D_8000AF04)($v0)
/* 005A8C 80004E8C 944F0000 */  lhu   $t7, ($v0)
/* 005A90 80004E90 35F80020 */  ori   $t8, $t7, 0x20
/* 005A94 80004E94 10000005 */  b     .L80004EAC
/* 005A98 80004E98 A4580000 */   sh    $t8, ($v0)
.L80004E9C:
/* 005A9C 80004E9C 8C42AF04 */  lw    $v0, %lo(D_8000AF04)($v0)
/* 005AA0 80004EA0 94590000 */  lhu   $t9, ($v0)
/* 005AA4 80004EA4 3328FFDF */  andi  $t0, $t9, 0xffdf
/* 005AA8 80004EA8 A4480000 */  sh    $t0, ($v0)
.L80004EAC:
/* 005AAC 80004EAC 0C001CBC */  jal   func_800072F0
/* 005AB0 80004EB0 00000000 */   nop   
/* 005AB4 80004EB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 005AB8 80004EB8 27BD0018 */  addiu $sp, $sp, 0x18
/* 005ABC 80004EBC 03E00008 */  jr    $ra
/* 005AC0 80004EC0 00000000 */   nop   
