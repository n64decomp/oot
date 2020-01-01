glabel func_80001AA0
/* 0026A0 80001AA0 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0026A4 80001AA4 8FAE0080 */  lw    $t6, 0x80($sp)
/* 0026A8 80001AA8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0026AC 80001AAC AFA40070 */  sw    $a0, 0x70($sp)
/* 0026B0 80001AB0 AFA50074 */  sw    $a1, 0x74($sp)
/* 0026B4 80001AB4 AFA60078 */  sw    $a2, 0x78($sp)
/* 0026B8 80001AB8 AFA7005C */  sw    $a3, 0x5c($sp)
/* 0026BC 80001ABC 24060001 */  li    $a2, 1
/* 0026C0 80001AC0 27A50030 */  addiu $a1, $sp, 0x30
/* 0026C4 80001AC4 27A40034 */  addiu $a0, $sp, 0x34
/* 0026C8 80001AC8 0C001874 */  jal   osCreateMesgQueue
/* 0026CC 80001ACC AFAE0060 */   sw    $t6, 0x60($sp)
/* 0026D0 80001AD0 27AF0034 */  addiu $t7, $sp, 0x34
/* 0026D4 80001AD4 AFAF0014 */  sw    $t7, 0x14($sp)
/* 0026D8 80001AD8 27A40050 */  addiu $a0, $sp, 0x50
/* 0026DC 80001ADC 8FA50070 */  lw    $a1, 0x70($sp)
/* 0026E0 80001AE0 8FA60074 */  lw    $a2, 0x74($sp)
/* 0026E4 80001AE4 8FA70078 */  lw    $a3, 0x78($sp)
/* 0026E8 80001AE8 AFA00010 */  sw    $zero, 0x10($sp)
/* 0026EC 80001AEC 0C000599 */  jal   func_80001664
/* 0026F0 80001AF0 AFA00018 */   sw    $zero, 0x18($sp)
/* 0026F4 80001AF4 2401FFFF */  li    $at, -1
/* 0026F8 80001AF8 14410003 */  bne   $v0, $at, .L80001B08
/* 0026FC 80001AFC 27A40034 */   addiu $a0, $sp, 0x34
/* 002700 80001B00 10000006 */  b     .L80001B1C
/* 002704 80001B04 8FBF0024 */   lw    $ra, 0x24($sp)
.L80001B08:
/* 002708 80001B08 00002825 */  move  $a1, $zero
/* 00270C 80001B0C 0C000CA0 */  jal   osRecvMesg
/* 002710 80001B10 24060001 */   li    $a2, 1
/* 002714 80001B14 00001025 */  move  $v0, $zero
/* 002718 80001B18 8FBF0024 */  lw    $ra, 0x24($sp)
.L80001B1C:
/* 00271C 80001B1C 27BD0070 */  addiu $sp, $sp, 0x70
/* 002720 80001B20 03E00008 */  jr    $ra
/* 002724 80001B24 00000000 */   nop   
