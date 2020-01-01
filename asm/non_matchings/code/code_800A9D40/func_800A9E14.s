glabel func_800A9E14
/* B20FB4 800A9E14 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B20FB8 800A9E18 AFA40020 */  sw    $a0, 0x20($sp)
/* B20FBC 800A9E1C AFBF0014 */  sw    $ra, 0x14($sp)
/* B20FC0 800A9E20 AFA50024 */  sw    $a1, 0x24($sp)
/* B20FC4 800A9E24 AFA60028 */  sw    $a2, 0x28($sp)
/* B20FC8 800A9E28 3C048013 */  lui   $a0, %hi(D_8012A71C) # $a0, 0x8013
/* B20FCC 800A9E2C 2484A71C */  addiu $a0, %lo(D_8012A71C) # addiu $a0, $a0, -0x58e4
/* B20FD0 800A9E30 24060001 */  li    $a2, 1
/* B20FD4 800A9E34 0C001874 */  jal   osCreateMesgQueue
/* B20FD8 800A9E38 27A5001C */   addiu $a1, $sp, 0x1c
/* B20FDC 800A9E3C 8FA40020 */  lw    $a0, 0x20($sp)
/* B20FE0 800A9E40 8FA50024 */  lw    $a1, 0x24($sp)
/* B20FE4 800A9E44 3C028013 */  lui   $v0, %hi(D_8012A690) # $v0, 0x8013
/* B20FE8 800A9E48 2442A690 */  addiu $v0, %lo(D_8012A690) # addiu $v0, $v0, -0x5970
/* B20FEC 800A9E4C AC44007C */  sw    $a0, 0x7c($v0)
/* B20FF0 800A9E50 0C0011B0 */  jal   osWritebackDCache
/* B20FF4 800A9E54 AC450084 */   sw    $a1, 0x84($v0)
/* B20FF8 800A9E58 3C048013 */  lui   $a0, %hi(D_8012A690) # $a0, 0x8013
/* B20FFC 800A9E5C 3C058013 */  lui   $a1, %hi(D_8012A704) # $a1, 0x8013
/* B21000 800A9E60 24A5A704 */  addiu $a1, %lo(D_8012A704) # addiu $a1, $a1, -0x58fc
/* B21004 800A9E64 2484A690 */  addiu $a0, %lo(D_8012A690) # addiu $a0, $a0, -0x5970
/* B21008 800A9E68 0C001804 */  jal   func_80006010
/* B2100C 800A9E6C 8FA60028 */   lw    $a2, 0x28($sp)
/* B21010 800A9E70 3C048013 */  lui   $a0, %hi(D_8012A71C) # $a0, 0x8013
/* B21014 800A9E74 2484A71C */  addiu $a0, %lo(D_8012A71C) # addiu $a0, $a0, -0x58e4
/* B21018 800A9E78 27A5001C */  addiu $a1, $sp, 0x1c
/* B2101C 800A9E7C 0C000CA0 */  jal   osRecvMesg
/* B21020 800A9E80 24060001 */   li    $a2, 1
/* B21024 800A9E84 8FA40020 */  lw    $a0, 0x20($sp)
/* B21028 800A9E88 0C001880 */  jal   osInvalDCache
/* B2102C 800A9E8C 8FA50024 */   lw    $a1, 0x24($sp)
/* B21030 800A9E90 8FBF0014 */  lw    $ra, 0x14($sp)
/* B21034 800A9E94 27BD0020 */  addiu $sp, $sp, 0x20
/* B21038 800A9E98 03E00008 */  jr    $ra
/* B2103C 800A9E9C 00000000 */   nop   

