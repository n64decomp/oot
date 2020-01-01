.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
 
glabel __osSetGlobalIntMask
/* 007AB0 80006EB0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 007AB4 80006EB4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 007AB8 80006EB8 AFA40028 */  sw    $a0, 0x28($sp)
/* 007ABC 80006EBC 0C001CA0 */  jal   __osDisableInt
/* 007AC0 80006EC0 AFB00018 */   sw    $s0, 0x18($sp)
/* 007AC4 80006EC4 3C0E8001 */  lui   $t6, %hi(D_8000AD00) # $t6, 0x8001
/* 007AC8 80006EC8 8DCEAD00 */  lw    $t6, %lo(D_8000AD00)($t6)
/* 007ACC 80006ECC 8FAF0028 */  lw    $t7, 0x28($sp)
/* 007AD0 80006ED0 00408025 */  move  $s0, $v0
/* 007AD4 80006ED4 3C018001 */  lui   $at, %hi(D_8000AD00) # $at, 0x8001
/* 007AD8 80006ED8 01CFC025 */  or    $t8, $t6, $t7
/* 007ADC 80006EDC AC38AD00 */  sw    $t8, %lo(D_8000AD00)($at)
/* 007AE0 80006EE0 0C001CBC */  jal   func_800072F0
/* 007AE4 80006EE4 02002025 */   move  $a0, $s0
/* 007AE8 80006EE8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 007AEC 80006EEC 8FB00018 */  lw    $s0, 0x18($sp)
/* 007AF0 80006EF0 27BD0028 */  addiu $sp, $sp, 0x28
/* 007AF4 80006EF4 03E00008 */  jr    $ra
/* 007AF8 80006EF8 00000000 */   nop   
