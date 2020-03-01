glabel func_800BBC90
/* B32E30 800BBC90 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B32E34 800BBC94 AFB00028 */  sw    $s0, 0x28($sp)
/* B32E38 800BBC98 00808025 */  move  $s0, $a0
/* B32E3C 800BBC9C AFBF002C */  sw    $ra, 0x2c($sp)
/* B32E40 800BBCA0 3C048014 */  lui   $a0, %hi(D_80143E30) # $a0, 0x8014
/* B32E44 800BBCA4 3C058013 */  lui   $a1, %hi(D_8012D1D8) # $a1, 0x8013
/* B32E48 800BBCA8 3C068014 */  lui   $a2, %hi(D_80143E44) # $a2, 0x8014
/* B32E4C 800BBCAC 24C63E44 */  addiu $a2, %lo(D_80143E44) # addiu $a2, $a2, 0x3e44
/* B32E50 800BBCB0 8CA5D1D8 */  lw    $a1, %lo(D_8012D1D8)($a1)
/* B32E54 800BBCB4 24843E30 */  addiu $a0, %lo(D_80143E30) # addiu $a0, $a0, 0x3e30
/* B32E58 800BBCB8 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B32E5C 800BBCBC 24070063 */   li    $a3, 99
/* B32E60 800BBCC0 3C0E8013 */  lui   $t6, %hi(D_8012D1D8) # $t6, 0x8013
/* B32E64 800BBCC4 8DCED1D8 */  lw    $t6, %lo(D_8012D1D8)($t6)
/* B32E68 800BBCC8 8E040004 */  lw    $a0, 4($s0)
/* B32E6C 800BBCCC 8E050008 */  lw    $a1, 8($s0)
/* B32E70 800BBCD0 8E06000C */  lw    $a2, 0xc($s0)
/* B32E74 800BBCD4 8E070010 */  lw    $a3, 0x10($s0)
/* B32E78 800BBCD8 AE0E0000 */  sw    $t6, ($s0)
/* B32E7C 800BBCDC 0C03F188 */  jal   func_800FC620
/* B32E80 800BBCE0 AFAE0010 */   sw    $t6, 0x10($sp)
/* B32E84 800BBCE4 3C048014 */  lui   $a0, %hi(D_80143E5C) # $a0, 0x8014
/* B32E88 800BBCE8 0C00084C */  jal   osSyncPrintf
/* B32E8C 800BBCEC 24843E5C */   addiu $a0, %lo(D_80143E5C) # addiu $a0, $a0, 0x3e5c
/* B32E90 800BBCF0 8E05000C */  lw    $a1, 0xc($s0)
/* B32E94 800BBCF4 8E060010 */  lw    $a2, 0x10($s0)
/* B32E98 800BBCF8 8E070000 */  lw    $a3, ($s0)
/* B32E9C 800BBCFC 3C048014 */  lui   $a0, %hi(D_80143E64) # $a0, 0x8014
/* B32EA0 800BBD00 24843E64 */  addiu $a0, %lo(D_80143E64) # addiu $a0, $a0, 0x3e64
/* B32EA4 800BBD04 00E6C021 */  addu  $t8, $a3, $a2
/* B32EA8 800BBD08 0305C823 */  subu  $t9, $t8, $a1
/* B32EAC 800BBD0C 00A74023 */  subu  $t0, $a1, $a3
/* B32EB0 800BBD10 AFA80014 */  sw    $t0, 0x14($sp)
/* B32EB4 800BBD14 AFB90010 */  sw    $t9, 0x10($sp)
/* B32EB8 800BBD18 8E090018 */  lw    $t1, 0x18($s0)
/* B32EBC 800BBD1C 00A01825 */  move  $v1, $a1
/* B32EC0 800BBD20 00E01025 */  move  $v0, $a3
/* B32EC4 800BBD24 0C00084C */  jal   osSyncPrintf
/* B32EC8 800BBD28 AFA90018 */   sw    $t1, 0x18($sp)
/* B32ECC 800BBD2C 3C048014 */  lui   $a0, %hi(D_80143E94) # $a0, 0x8014
/* B32ED0 800BBD30 0C00084C */  jal   osSyncPrintf
/* B32ED4 800BBD34 24843E94 */   addiu $a0, %lo(D_80143E94) # addiu $a0, $a0, 0x3e94
/* B32ED8 800BBD38 8E0A0000 */  lw    $t2, ($s0)
/* B32EDC 800BBD3C 8E0B000C */  lw    $t3, 0xc($s0)
/* B32EE0 800BBD40 3C018013 */  lui   $at, %hi(D_8012D1DC) # $at, 0x8013
/* B32EE4 800BBD44 014B6023 */  subu  $t4, $t2, $t3
/* B32EE8 800BBD48 AE0C0014 */  sw    $t4, 0x14($s0)
/* B32EEC 800BBD4C 8FBF002C */  lw    $ra, 0x2c($sp)
/* B32EF0 800BBD50 AC30D1DC */  sw    $s0, %lo(D_8012D1DC)($at)
/* B32EF4 800BBD54 8FB00028 */  lw    $s0, 0x28($sp)
/* B32EF8 800BBD58 03E00008 */  jr    $ra
/* B32EFC 800BBD5C 27BD0030 */   addiu $sp, $sp, 0x30

