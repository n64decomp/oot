glabel func_800A9EA0
/* B21040 800A9EA0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B21044 800A9EA4 AFA70034 */  sw    $a3, 0x34($sp)
/* B21048 800A9EA8 8FAE0034 */  lw    $t6, 0x34($sp)
/* B2104C 800A9EAC AFA40028 */  sw    $a0, 0x28($sp)
/* B21050 800A9EB0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B21054 800A9EB4 AFA5002C */  sw    $a1, 0x2c($sp)
/* B21058 800A9EB8 AFA60030 */  sw    $a2, 0x30($sp)
/* B2105C 800A9EBC 3C048014 */  lui   $a0, %hi(D_80141030) # $a0, 0x8014
/* B21060 800A9EC0 24841030 */  addiu $a0, %lo(D_80141030) # addiu $a0, $a0, 0x1030
/* B21064 800A9EC4 8FA70030 */  lw    $a3, 0x30($sp)
/* B21068 800A9EC8 8FA6002C */  lw    $a2, 0x2c($sp)
/* B2106C 800A9ECC 8FA50028 */  lw    $a1, 0x28($sp)
/* B21070 800A9ED0 0C00084C */  jal   osSyncPrintf
/* B21074 800A9ED4 AFAE0010 */   sw    $t6, 0x10($sp)
/* B21078 800A9ED8 240F000D */  li    $t7, 13
/* B2107C 800A9EDC 24180002 */  li    $t8, 2
/* B21080 800A9EE0 2419000C */  li    $t9, 12
/* B21084 800A9EE4 AFB90018 */  sw    $t9, 0x18($sp)
/* B21088 800A9EE8 AFB80014 */  sw    $t8, 0x14($sp)
/* B2108C 800A9EEC AFAF0010 */  sw    $t7, 0x10($sp)
/* B21090 800A9EF0 8FA40028 */  lw    $a0, 0x28($sp)
/* B21094 800A9EF4 24050003 */  li    $a1, 3
/* B21098 800A9EF8 24060001 */  li    $a2, 1
/* B2109C 800A9EFC 24070005 */  li    $a3, 5
/* B210A0 800A9F00 0C02A750 */  jal   func_800A9D40
/* B210A4 800A9F04 AFA0001C */   sw    $zero, 0x1c($sp)
/* B210A8 800A9F08 8FA4002C */  lw    $a0, 0x2c($sp)
/* B210AC 800A9F0C 8FA50030 */  lw    $a1, 0x30($sp)
/* B210B0 800A9F10 0C02A785 */  jal   func_800A9E14
/* B210B4 800A9F14 8FA60034 */   lw    $a2, 0x34($sp)
/* B210B8 800A9F18 8FBF0024 */  lw    $ra, 0x24($sp)
/* B210BC 800A9F1C 27BD0028 */  addiu $sp, $sp, 0x28
/* B210C0 800A9F20 03E00008 */  jr    $ra
/* B210C4 800A9F24 00000000 */   nop   
