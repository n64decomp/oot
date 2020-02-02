glabel func_8008A994
/* B01B34 8008A994 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B01B38 8008A998 AFBF0014 */  sw    $ra, 0x14($sp)
/* B01B3C 8008A99C 240E00F0 */  li    $t6, 240
/* B01B40 8008A9A0 240F0140 */  li    $t7, 320
/* B01B44 8008A9A4 AFA40028 */  sw    $a0, 0x28($sp)
/* B01B48 8008A9A8 AFAF0024 */  sw    $t7, 0x24($sp)
/* B01B4C 8008A9AC AFAE001C */  sw    $t6, 0x1c($sp)
/* B01B50 8008A9B0 AFA00018 */  sw    $zero, 0x18($sp)
/* B01B54 8008A9B4 AFA00020 */  sw    $zero, 0x20($sp)
/* B01B58 8008A9B8 0C02A93F */  jal   func_800AA4FC
/* B01B5C 8008A9BC 27A50018 */   addiu $a1, $sp, 0x18
/* B01B60 8008A9C0 0C02ACB1 */  jal   func_800AB2C4
/* B01B64 8008A9C4 8FA40028 */   lw    $a0, 0x28($sp)
/* B01B68 8008A9C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B01B6C 8008A9CC 27BD0028 */  addiu $sp, $sp, 0x28
/* B01B70 8008A9D0 03E00008 */  jr    $ra
/* B01B74 8008A9D4 00000000 */   nop   

