glabel viMgrMain
/* 009A20 80008E20 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 009A24 80008E24 AFBF0034 */  sw    $ra, 0x34($sp)
/* 009A28 80008E28 AFB70030 */  sw    $s7, 0x30($sp)
/* 009A2C 80008E2C 0080B825 */  move  $s7, $a0
/* 009A30 80008E30 AFB6002C */  sw    $s6, 0x2c($sp)
/* 009A34 80008E34 AFB50028 */  sw    $s5, 0x28($sp)
/* 009A38 80008E38 AFB40024 */  sw    $s4, 0x24($sp)
/* 009A3C 80008E3C AFB30020 */  sw    $s3, 0x20($sp)
/* 009A40 80008E40 AFB2001C */  sw    $s2, 0x1c($sp)
/* 009A44 80008E44 AFB10018 */  sw    $s1, 0x18($sp)
/* 009A48 80008E48 AFB00014 */  sw    $s0, 0x14($sp)
/* 009A4C 80008E4C 0C0023EC */  jal   __osViGetCurrentContext
/* 009A50 80008E50 AFA00044 */   sw    $zero, 0x44($sp)
/* 009A54 80008E54 94430002 */  lhu   $v1, 2($v0)
/* 009A58 80008E58 3C018001 */  lui   $at, %hi(viRetrace) # $at, 0x8001
/* 009A5C 80008E5C 2416000E */  li    $s6, 14
/* 009A60 80008E60 14600004 */  bnez  $v1, .L80008E74
/* 009A64 80008E64 A4236D90 */   sh    $v1, %lo(viRetrace)($at)
/* 009A68 80008E68 24030001 */  li    $v1, 1
/* 009A6C 80008E6C 3C018001 */  lui   $at, %hi(viRetrace) # $at, 0x8001
/* 009A70 80008E70 A4236D90 */  sh    $v1, %lo(viRetrace)($at)
.L80008E74:
/* 009A74 80008E74 3C138001 */  lui   $s3, %hi(__osViIntrCount) # $s3, 0x8001
/* 009A78 80008E78 3C128001 */  lui   $s2, %hi(__osBaseCounter) # $s2, 0x8001
/* 009A7C 80008E7C 3C118001 */  lui   $s1, %hi(__osCurrentTime) # $s1, 0x8001
/* 009A80 80008E80 26315AE0 */  addiu $s1, %lo(__osCurrentTime) # addiu $s1, $s1, 0x5ae0
/* 009A84 80008E84 26525AE8 */  addiu $s2, %lo(__osBaseCounter) # addiu $s2, $s2, 0x5ae8
/* 009A88 80008E88 26735AEC */  addiu $s3, %lo(__osViIntrCount) # addiu $s3, $s3, 0x5aec
/* 009A8C 80008E8C 2415000D */  li    $s5, 13
/* 009A90 80008E90 27B40044 */  addiu $s4, $sp, 0x44
.L80008E94:
/* 009A94 80008E94 8EE4000C */  lw    $a0, 0xc($s7)
.L80008E98:
/* 009A98 80008E98 02802825 */  move  $a1, $s4
/* 009A9C 80008E9C 0C000CA0 */  jal   osRecvMesg
/* 009AA0 80008EA0 24060001 */   li    $a2, 1
/* 009AA4 80008EA4 8FAE0044 */  lw    $t6, 0x44($sp)
/* 009AA8 80008EA8 95C30000 */  lhu   $v1, ($t6)
/* 009AAC 80008EAC 10750005 */  beq   $v1, $s5, .L80008EC4
/* 009AB0 80008EB0 00000000 */   nop   
/* 009AB4 80008EB4 1076002A */  beq   $v1, $s6, .L80008F60
/* 009AB8 80008EB8 00000000 */   nop   
/* 009ABC 80008EBC 1000FFF6 */  b     .L80008E98
/* 009AC0 80008EC0 8EE4000C */   lw    $a0, 0xc($s7)
.L80008EC4:
/* 009AC4 80008EC4 0C001D0C */  jal   __osViSwapContext
/* 009AC8 80008EC8 00000000 */   nop   
/* 009ACC 80008ECC 3C038001 */  lui   $v1, %hi(viRetrace) # $v1, 0x8001
/* 009AD0 80008ED0 94636D90 */  lhu   $v1, %lo(viRetrace)($v1)
/* 009AD4 80008ED4 3C018001 */  lui   $at, %hi(viRetrace) # $at, 0x8001
/* 009AD8 80008ED8 2463FFFF */  addiu $v1, $v1, -1
/* 009ADC 80008EDC 306FFFFF */  andi  $t7, $v1, 0xffff
/* 009AE0 80008EE0 15E0000E */  bnez  $t7, .L80008F1C
/* 009AE4 80008EE4 A42F6D90 */   sh    $t7, %lo(viRetrace)($at)
/* 009AE8 80008EE8 0C0023EC */  jal   __osViGetCurrentContext
/* 009AEC 80008EEC 00000000 */   nop   
/* 009AF0 80008EF0 8C580010 */  lw    $t8, 0x10($v0)
/* 009AF4 80008EF4 00408025 */  move  $s0, $v0
/* 009AF8 80008EF8 00003025 */  move  $a2, $zero
/* 009AFC 80008EFC 53000005 */  beql  $t8, $zero, .L80008F14
/* 009B00 80008F00 96030002 */   lhu   $v1, 2($s0)
/* 009B04 80008F04 8C440010 */  lw    $a0, 0x10($v0)
/* 009B08 80008F08 0C000C18 */  jal   osSendMesg
/* 009B0C 80008F0C 8C450014 */   lw    $a1, 0x14($v0)
/* 009B10 80008F10 96030002 */  lhu   $v1, 2($s0)
.L80008F14:
/* 009B14 80008F14 3C018001 */  lui   $at, %hi(viRetrace) # $at, 0x8001
/* 009B18 80008F18 A4236D90 */  sh    $v1, %lo(viRetrace)($at)
.L80008F1C:
/* 009B1C 80008F1C 8E790000 */  lw    $t9, ($s3)
/* 009B20 80008F20 8E500000 */  lw    $s0, ($s2)
/* 009B24 80008F24 27280001 */  addiu $t0, $t9, 1
/* 009B28 80008F28 0C001BA8 */  jal   osGetCount
/* 009B2C 80008F2C AE680000 */   sw    $t0, ($s3)
/* 009B30 80008F30 8E2D0004 */  lw    $t5, 4($s1)
/* 009B34 80008F34 00508023 */  subu  $s0, $v0, $s0
/* 009B38 80008F38 8E2C0000 */  lw    $t4, ($s1)
/* 009B3C 80008F3C 020D7821 */  addu  $t7, $s0, $t5
/* 009B40 80008F40 240A0000 */  li    $t2, 0
/* 009B44 80008F44 01ED082B */  sltu  $at, $t7, $t5
/* 009B48 80008F48 002A7021 */  addu  $t6, $at, $t2
/* 009B4C 80008F4C 01CC7021 */  addu  $t6, $t6, $t4
/* 009B50 80008F50 AE420000 */  sw    $v0, ($s2)
/* 009B54 80008F54 AE2E0000 */  sw    $t6, ($s1)
/* 009B58 80008F58 1000FFCE */  b     .L80008E94
/* 009B5C 80008F5C AE2F0004 */   sw    $t7, 4($s1)
.L80008F60:
/* 009B60 80008F60 0C001ABF */  jal   __osTimerInterrupt
/* 009B64 80008F64 00000000 */   nop   
/* 009B68 80008F68 1000FFCB */  b     .L80008E98
/* 009B6C 80008F6C 8EE4000C */   lw    $a0, 0xc($s7)
/* 009B70 80008F70 00000000 */  nop   
/* 009B74 80008F74 00000000 */  nop   
/* 009B78 80008F78 00000000 */  nop   
/* 009B7C 80008F7C 00000000 */  nop   
/* 009B80 80008F80 8FBF0034 */  lw    $ra, 0x34($sp)
/* 009B84 80008F84 8FB00014 */  lw    $s0, 0x14($sp)
/* 009B88 80008F88 8FB10018 */  lw    $s1, 0x18($sp)
/* 009B8C 80008F8C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 009B90 80008F90 8FB30020 */  lw    $s3, 0x20($sp)
/* 009B94 80008F94 8FB40024 */  lw    $s4, 0x24($sp)
/* 009B98 80008F98 8FB50028 */  lw    $s5, 0x28($sp)
/* 009B9C 80008F9C 8FB6002C */  lw    $s6, 0x2c($sp)
/* 009BA0 80008FA0 8FB70030 */  lw    $s7, 0x30($sp)
/* 009BA4 80008FA4 03E00008 */  jr    $ra
/* 009BA8 80008FA8 27BD0050 */   addiu $sp, $sp, 0x50
