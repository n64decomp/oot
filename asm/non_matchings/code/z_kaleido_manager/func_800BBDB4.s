glabel func_800BBDB4
/* B32F54 800BBDB4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B32F58 800BBDB8 AFA40020 */  sw    $a0, 0x20($sp)
/* B32F5C 800BBDBC AFB00018 */  sw    $s0, 0x18($sp)
/* B32F60 800BBDC0 3C048013 */  lui   $a0, %hi(D_8012D1D8) # $a0, 0x8013
/* B32F64 800BBDC4 3C028013 */  lui   $v0, %hi(D_8012D1A0) # $v0, 0x8013
/* B32F68 800BBDC8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B32F6C 800BBDCC 00008025 */  move  $s0, $zero
/* B32F70 800BBDD0 2442D1A0 */  addiu $v0, %lo(D_8012D1A0) # addiu $v0, $v0, -0x2e60
/* B32F74 800BBDD4 2484D1D8 */  addiu $a0, %lo(D_8012D1D8) # addiu $a0, $a0, -0x2e28
/* B32F78 800BBDD8 8C4E0010 */  lw    $t6, 0x10($v0)
.L800BBDDC:
/* B32F7C 800BBDDC 8C4F000C */  lw    $t7, 0xc($v0)
/* B32F80 800BBDE0 2442001C */  addiu $v0, $v0, 0x1c
/* B32F84 800BBDE4 01CF1823 */  subu  $v1, $t6, $t7
/* B32F88 800BBDE8 0203082A */  slt   $at, $s0, $v1
/* B32F8C 800BBDEC 10200002 */  beqz  $at, .L800BBDF8
/* B32F90 800BBDF0 00000000 */   nop   
/* B32F94 800BBDF4 00608025 */  move  $s0, $v1
.L800BBDF8:
/* B32F98 800BBDF8 5444FFF8 */  bnel  $v0, $a0, .L800BBDDC
/* B32F9C 800BBDFC 8C4E0010 */   lw    $t6, 0x10($v0)
/* B32FA0 800BBE00 3C048014 */  lui   $a0, %hi(D_80143E98) # $a0, 0x8014
/* B32FA4 800BBE04 0C00084C */  jal   osSyncPrintf
/* B32FA8 800BBE08 24843E98 */   addiu $a0, %lo(D_80143E98) # addiu $a0, $a0, 0x3e98
/* B32FAC 800BBE0C 3C048014 */  lui   $a0, %hi(D_80143EA0) # $a0, 0x8014
/* B32FB0 800BBE10 24843EA0 */  addiu $a0, %lo(D_80143EA0) # addiu $a0, $a0, 0x3ea0
/* B32FB4 800BBE14 0C00084C */  jal   osSyncPrintf
/* B32FB8 800BBE18 02002825 */   move  $a1, $s0
/* B32FBC 800BBE1C 3C048014 */  lui   $a0, %hi(D_80143ED4) # $a0, 0x8014
/* B32FC0 800BBE20 0C00084C */  jal   osSyncPrintf
/* B32FC4 800BBE24 24843ED4 */   addiu $a0, %lo(D_80143ED4) # addiu $a0, $a0, 0x3ed4
/* B32FC8 800BBE28 3C068014 */  lui   $a2, %hi(D_80143ED8) # $a2, 0x8014
/* B32FCC 800BBE2C 24C63ED8 */  addiu $a2, %lo(D_80143ED8) # addiu $a2, $a2, 0x3ed8
/* B32FD0 800BBE30 8FA40020 */  lw    $a0, 0x20($sp)
/* B32FD4 800BBE34 02002825 */  move  $a1, $s0
/* B32FD8 800BBE38 0C031521 */  jal   Game_Alloc
/* B32FDC 800BBE3C 24070096 */   li    $a3, 150
/* B32FE0 800BBE40 3C038013 */  lui   $v1, %hi(D_8012D1D8) # $v1, 0x8013
/* B32FE4 800BBE44 2463D1D8 */  addiu $v1, %lo(D_8012D1D8) # addiu $v1, $v1, -0x2e28
/* B32FE8 800BBE48 3C048014 */  lui   $a0, %hi(D_80143EF0) # $a0, 0x8014
/* B32FEC 800BBE4C 3C068014 */  lui   $a2, %hi(D_80143F04) # $a2, 0x8014
/* B32FF0 800BBE50 AC620000 */  sw    $v0, ($v1)
/* B32FF4 800BBE54 24C63F04 */  addiu $a2, %lo(D_80143F04) # addiu $a2, $a2, 0x3f04
/* B32FF8 800BBE58 24843EF0 */  addiu $a0, %lo(D_80143EF0) # addiu $a0, $a0, 0x3ef0
/* B32FFC 800BBE5C 00402825 */  move  $a1, $v0
/* B33000 800BBE60 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B33004 800BBE64 24070097 */   li    $a3, 151
/* B33008 800BBE68 3C048014 */  lui   $a0, %hi(D_80143F1C) # $a0, 0x8014
/* B3300C 800BBE6C 0C00084C */  jal   osSyncPrintf
/* B33010 800BBE70 24843F1C */   addiu $a0, %lo(D_80143F1C) # addiu $a0, $a0, 0x3f1c
/* B33014 800BBE74 3C058013 */  lui   $a1, %hi(D_8012D1D8) # $a1, 0x8013
/* B33018 800BBE78 8CA5D1D8 */  lw    $a1, %lo(D_8012D1D8)($a1)
/* B3301C 800BBE7C 3C048014 */  lui   $a0, %hi(D_80143F24) # $a0, 0x8014
/* B33020 800BBE80 24843F24 */  addiu $a0, %lo(D_80143F24) # addiu $a0, $a0, 0x3f24
/* B33024 800BBE84 0C00084C */  jal   osSyncPrintf
/* B33028 800BBE88 00B03021 */   addu  $a2, $a1, $s0
/* B3302C 800BBE8C 3C048014 */  lui   $a0, %hi(D_80143F40) # $a0, 0x8014
/* B33030 800BBE90 0C00084C */  jal   osSyncPrintf
/* B33034 800BBE94 24843F40 */   addiu $a0, %lo(D_80143F40) # addiu $a0, $a0, 0x3f40
/* B33038 800BBE98 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3303C 800BBE9C 3C018013 */  lui   $at, %hi(D_8012D1DC) # $at, 0x8013
/* B33040 800BBEA0 8FB00018 */  lw    $s0, 0x18($sp)
/* B33044 800BBEA4 AC20D1DC */  sw    $zero, %lo(D_8012D1DC)($at)
/* B33048 800BBEA8 03E00008 */  jr    $ra
/* B3304C 800BBEAC 27BD0020 */   addiu $sp, $sp, 0x20

