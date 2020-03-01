glabel func_800BBD60
/* B32F00 800BBD60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B32F04 800BBD64 AFBF0014 */  sw    $ra, 0x14($sp)
/* B32F08 800BBD68 8C870000 */  lw    $a3, ($a0)
/* B32F0C 800BBD6C 00803025 */  move  $a2, $a0
/* B32F10 800BBD70 50E0000D */  beql  $a3, $zero, .L800BBDA8
/* B32F14 800BBD74 8FBF0014 */   lw    $ra, 0x14($sp)
/* B32F18 800BBD78 AC800014 */  sw    $zero, 0x14($a0)
/* B32F1C 800BBD7C 8CCF000C */  lw    $t7, 0xc($a2)
/* B32F20 800BBD80 8CCE0010 */  lw    $t6, 0x10($a2)
/* B32F24 800BBD84 AFA60018 */  sw    $a2, 0x18($sp)
/* B32F28 800BBD88 00E02025 */  move  $a0, $a3
/* B32F2C 800BBD8C 0C001114 */  jal   bzero
/* B32F30 800BBD90 01CF2823 */   subu  $a1, $t6, $t7
/* B32F34 800BBD94 8FA60018 */  lw    $a2, 0x18($sp)
/* B32F38 800BBD98 3C018013 */  lui   $at, %hi(D_8012D1DC) # $at, 0x8013
/* B32F3C 800BBD9C ACC00000 */  sw    $zero, ($a2)
/* B32F40 800BBDA0 AC20D1DC */  sw    $zero, %lo(D_8012D1DC)($at)
/* B32F44 800BBDA4 8FBF0014 */  lw    $ra, 0x14($sp)
.L800BBDA8:
/* B32F48 800BBDA8 27BD0018 */  addiu $sp, $sp, 0x18
/* B32F4C 800BBDAC 03E00008 */  jr    $ra
/* B32F50 800BBDB0 00000000 */   nop   

