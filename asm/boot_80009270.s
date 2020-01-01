.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80009270
/* 009E70 80009270 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 009E74 80009274 AFBF001C */  sw    $ra, 0x1c($sp)
/* 009E78 80009278 AFA40028 */  sw    $a0, 0x28($sp)
/* 009E7C 8000927C AFA5002C */  sw    $a1, 0x2c($sp)
/* 009E80 80009280 AFA60030 */  sw    $a2, 0x30($sp)
/* 009E84 80009284 0C001CA0 */  jal   __osDisableInt
/* 009E88 80009288 AFB00018 */   sw    $s0, 0x18($sp)
/* 009E8C 8000928C 8FAF0028 */  lw    $t7, 0x28($sp)
/* 009E90 80009290 8FAE002C */  lw    $t6, 0x2c($sp)
/* 009E94 80009294 8FA80028 */  lw    $t0, 0x28($sp)
/* 009E98 80009298 3C018001 */  lui   $at, %hi(D_8000AD10)
/* 009E9C 8000929C 000FC0C0 */  sll   $t8, $t7, 3
/* 009EA0 800092A0 00380821 */  addu  $at, $at, $t8
/* 009EA4 800092A4 AC2EAD10 */  sw    $t6, %lo(D_8000AD10)($at)
/* 009EA8 800092A8 8FB90030 */  lw    $t9, 0x30($sp)
/* 009EAC 800092AC 3C018001 */  lui   $at, %hi(D_8000AD14)
/* 009EB0 800092B0 000848C0 */  sll   $t1, $t0, 3
/* 009EB4 800092B4 00408025 */  move  $s0, $v0
/* 009EB8 800092B8 00290821 */  addu  $at, $at, $t1
/* 009EBC 800092BC 02002025 */  move  $a0, $s0
/* 009EC0 800092C0 0C001CBC */  jal   func_800072F0
/* 009EC4 800092C4 AC39AD14 */   sw    $t9, %lo(D_8000AD14)($at)
/* 009EC8 800092C8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 009ECC 800092CC 8FB00018 */  lw    $s0, 0x18($sp)
/* 009ED0 800092D0 27BD0028 */  addiu $sp, $sp, 0x28
/* 009ED4 800092D4 03E00008 */  jr    $ra
/* 009ED8 800092D8 00000000 */   nop   
