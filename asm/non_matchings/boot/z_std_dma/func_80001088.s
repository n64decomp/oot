glabel func_80001088
/* 001C88 80001088 8FA5002C */  lw    $a1, 0x2c($sp)
.L8000108C:
/* 001C8C 8000108C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 001C90 80001090 27BD0030 */  addiu $sp, $sp, 0x30
/* 001C94 80001094 00A01025 */  move  $v0, $a1
/* 001C98 80001098 03E00008 */  jr    $ra
/* 001C9C 8000109C 00000000 */   nop   

/* 001CA0 800010A0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 001CA4 800010A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 001CA8 800010A8 AFA40050 */  sw    $a0, 0x50($sp)
/* 001CAC 800010AC AFA50054 */  sw    $a1, 0x54($sp)
/* 001CB0 800010B0 0C0008F4 */  jal   func_800023D0
/* 001CB4 800010B4 AFA60058 */   sw    $a2, 0x58($sp)
/* 001CB8 800010B8 AFA2004C */  sw    $v0, 0x4c($sp)
/* 001CBC 800010BC 8FA40050 */  lw    $a0, 0x50($sp)
/* 001CC0 800010C0 0C001854 */  jal   osInvalICache
/* 001CC4 800010C4 8FA50058 */   lw    $a1, 0x58($sp)
/* 001CC8 800010C8 8FA40050 */  lw    $a0, 0x50($sp)
/* 001CCC 800010CC 0C001880 */  jal   osInvalDCache
/* 001CD0 800010D0 8FA50058 */   lw    $a1, 0x58($sp)
/* 001CD4 800010D4 27A40034 */  addiu $a0, $sp, 0x34
/* 001CD8 800010D8 27A50030 */  addiu $a1, $sp, 0x30
/* 001CDC 800010DC 0C001874 */  jal   osCreateMesgQueue
/* 001CE0 800010E0 24060001 */   li    $a2, 1
/* 001CE4 800010E4 8FAF0054 */  lw    $t7, 0x54($sp)
/* 001CE8 800010E8 8FB80050 */  lw    $t8, 0x50($sp)
/* 001CEC 800010EC 8FB90058 */  lw    $t9, 0x58($sp)
/* 001CF0 800010F0 8FA4004C */  lw    $a0, 0x4c($sp)
/* 001CF4 800010F4 27AE0034 */  addiu $t6, $sp, 0x34
/* 001CF8 800010F8 AFAE001C */  sw    $t6, 0x1c($sp)
/* 001CFC 800010FC A3A0001A */  sb    $zero, 0x1a($sp)
/* 001D00 80001100 24080002 */  li    $t0, 2
/* 001D04 80001104 AFAF0024 */  sw    $t7, 0x24($sp)
/* 001D08 80001108 AFB80020 */  sw    $t8, 0x20($sp)
/* 001D0C 8000110C AFB90028 */  sw    $t9, 0x28($sp)
/* 001D10 80001110 27A50018 */  addiu $a1, $sp, 0x18
/* 001D14 80001114 00003025 */  move  $a2, $zero
/* 001D18 80001118 0C001804 */  jal   func_80006010
/* 001D1C 8000111C AC880014 */   sw    $t0, 0x14($a0)
/* 001D20 80001120 27A40034 */  addiu $a0, $sp, 0x34
