.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osViSetYScale
/* 009D10 80009110 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 009D14 80009114 AFBF0014 */  sw    $ra, 0x14($sp)
/* 009D18 80009118 0C001CA0 */  jal   __osDisableInt
/* 009D1C 8000911C E7AC0018 */   swc1  $f12, 0x18($sp)
/* 009D20 80009120 3C058001 */  lui   $a1, %hi(D_8000AF04) # $a1, 0x8001
/* 009D24 80009124 24A5AF04 */  addiu $a1, %lo(D_8000AF04) # addiu $a1, $a1, -0x50fc
/* 009D28 80009128 8CAE0000 */  lw    $t6, ($a1)
/* 009D2C 8000912C C7A40018 */  lwc1  $f4, 0x18($sp)
/* 009D30 80009130 00402025 */  move  $a0, $v0
/* 009D34 80009134 E5C40024 */  swc1  $f4, 0x24($t6)
/* 009D38 80009138 8CA30000 */  lw    $v1, ($a1)
/* 009D3C 8000913C 946F0000 */  lhu   $t7, ($v1)
/* 009D40 80009140 35F80004 */  ori   $t8, $t7, 4
/* 009D44 80009144 0C001CBC */  jal   func_800072F0
/* 009D48 80009148 A4780000 */   sh    $t8, ($v1)
/* 009D4C 8000914C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 009D50 80009150 27BD0018 */  addiu $sp, $sp, 0x18
/* 009D54 80009154 03E00008 */  jr    $ra
/* 009D58 80009158 00000000 */   nop   
