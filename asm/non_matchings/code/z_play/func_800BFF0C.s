glabel func_800BFF0C
/* B370AC 800BFF0C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B370B0 800BFF10 3C010001 */  lui   $at, 1
/* B370B4 800BFF14 AFBF001C */  sw    $ra, 0x1c($sp)
/* B370B8 800BFF18 AFB00018 */  sw    $s0, 0x18($sp)
/* B370BC 800BFF1C 00240821 */  addu  $at, $at, $a0
/* B370C0 800BFF20 A0251DEA */  sb    $a1, 0x1dea($at)
/* B370C4 800BFF24 3C010001 */  lui   $at, 1
/* B370C8 800BFF28 00240821 */  addu  $at, $at, $a0
/* B370CC 800BFF2C AC201DF4 */  sw    $zero, 0x1df4($at)
/* B370D0 800BFF30 3C010001 */  lui   $at, 1
/* B370D4 800BFF34 00240821 */  addu  $at, $at, $a0
/* B370D8 800BFF38 AC201DFC */  sw    $zero, 0x1dfc($at)
/* B370DC 800BFF3C 3C010001 */  lui   $at, 1
/* B370E0 800BFF40 00240821 */  addu  $at, $at, $a0
/* B370E4 800BFF44 AC201E00 */  sw    $zero, 0x1e00($at)
/* B370E8 800BFF48 3C010001 */  lui   $at, 1
/* B370EC 800BFF4C 00240821 */  addu  $at, $at, $a0
/* B370F0 800BFF50 AC201E04 */  sw    $zero, 0x1e04($at)
/* B370F4 800BFF54 3C010001 */  lui   $at, 1
/* B370F8 800BFF58 00240821 */  addu  $at, $at, $a0
/* B370FC 800BFF5C AC201E0C */  sw    $zero, 0x1e0c($at)
/* B37100 800BFF60 3C010001 */  lui   $at, 1
/* B37104 800BFF64 00240821 */  addu  $at, $at, $a0
/* B37108 800BFF68 AC201E08 */  sw    $zero, 0x1e08($at)
/* B3710C 800BFF6C 3C010001 */  lui   $at, 1
/* B37110 800BFF70 00240821 */  addu  $at, $at, $a0
/* B37114 800BFF74 A0201DEB */  sb    $zero, 0x1deb($at)
/* B37118 800BFF78 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* B3711C 800BFF7C 00808025 */  move  $s0, $a0
/* B37120 800BFF80 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* B37124 800BFF84 0C025F76 */  jal   Object_InitBank
/* B37128 800BFF88 02012821 */   addu  $a1, $s0, $at
/* B3712C 800BFF8C 02002025 */  move  $a0, $s0
/* B37130 800BFF90 0C01E985 */  jal   func_8007A614
/* B37134 800BFF94 260507A8 */   addiu $a1, $s0, 0x7a8
/* B37138 800BFF98 3C010001 */  lui   $at, (0x00011D34 >> 16) # lui $at, 1
/* B3713C 800BFF9C 34211D34 */  ori   $at, (0x00011D34 & 0xFFFF) # ori $at, $at, 0x1d34
/* B37140 800BFFA0 02012821 */  addu  $a1, $s0, $at
/* B37144 800BFFA4 0C02632F */  jal   func_80098CBC
/* B37148 800BFFA8 02002025 */   move  $a0, $s0
/* B3714C 800BFFAC 3C010001 */  lui   $at, (0x00011CBC >> 16) # lui $at, 1
/* B37150 800BFFB0 34211CBC */  ori   $at, (0x00011CBC & 0xFFFF) # ori $at, $at, 0x1cbc
/* B37154 800BFFB4 02012821 */  addu  $a1, $s0, $at
/* B37158 800BFFB8 0C025BF5 */  jal   func_80096FD4
/* B3715C 800BFFBC 02002025 */   move  $a0, $s0
/* B37160 800BFFC0 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B37164 800BFFC4 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B37168 800BFFC8 3C018016 */  lui   $at, %hi(gSaveContext+0x1420) # $at, 0x8016
/* B3716C 800BFFCC 02002025 */  move  $a0, $s0
/* B37170 800BFFD0 A5C004B2 */  sh    $zero, 0x4b2($t6)
/* B37174 800BFFD4 A420FA80 */  sh    $zero, %lo(gSaveContext+0x1420)($at)
/* B37178 800BFFD8 0C026103 */  jal   Scene_ExecuteCommands
/* B3717C 800BFFDC 8E0500B0 */   lw    $a1, 0xb0($s0)
/* B37180 800BFFE0 3C050001 */  lui   $a1, 1
/* B37184 800BFFE4 00B02821 */  addu  $a1, $a1, $s0
/* B37188 800BFFE8 90A51E14 */  lbu   $a1, 0x1e14($a1)
/* B3718C 800BFFEC 0C02FFB1 */  jal   func_800BFEC4
/* B37190 800BFFF0 02002025 */   move  $a0, $s0
/* B37194 800BFFF4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B37198 800BFFF8 8FB00018 */  lw    $s0, 0x18($sp)
/* B3719C 800BFFFC 27BD0020 */  addiu $sp, $sp, 0x20
/* B371A0 800C0000 03E00008 */  jr    $ra
/* B371A4 800C0004 00000000 */   nop   

