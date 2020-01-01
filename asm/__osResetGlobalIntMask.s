.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
 
glabel __osResetGlobalIntMask
/* 007E20 80007220 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 007E24 80007224 AFBF001C */  sw    $ra, 0x1c($sp)
/* 007E28 80007228 AFA40028 */  sw    $a0, 0x28($sp)
/* 007E2C 8000722C 0C001CA0 */  jal   __osDisableInt
/* 007E30 80007230 AFB00018 */   sw    $s0, 0x18($sp)
/* 007E34 80007234 8FAF0028 */  lw    $t7, 0x28($sp)
/* 007E38 80007238 3C0E8001 */  lui   $t6, %hi(D_8000AD00) # $t6, 0x8001
/* 007E3C 8000723C 8DCEAD00 */  lw    $t6, %lo(D_8000AD00)($t6)
/* 007E40 80007240 2401FBFE */  li    $at, -1026
/* 007E44 80007244 01E1C024 */  and   $t8, $t7, $at
/* 007E48 80007248 0300C827 */  not   $t9, $t8
/* 007E4C 8000724C 00408025 */  move  $s0, $v0
/* 007E50 80007250 3C018001 */  lui   $at, %hi(D_8000AD00) # $at, 0x8001
/* 007E54 80007254 01D94024 */  and   $t0, $t6, $t9
/* 007E58 80007258 AC28AD00 */  sw    $t0, %lo(D_8000AD00)($at)
/* 007E5C 8000725C 0C001CBC */  jal   func_800072F0
/* 007E60 80007260 02002025 */   move  $a0, $s0
/* 007E64 80007264 8FBF001C */  lw    $ra, 0x1c($sp)
/* 007E68 80007268 8FB00018 */  lw    $s0, 0x18($sp)
/* 007E6C 8000726C 27BD0028 */  addiu $sp, $sp, 0x28
/* 007E70 80007270 03E00008 */  jr    $ra
/* 007E74 80007274 00000000 */   nop   
