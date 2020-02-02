glabel func_8008708C
/* AFE22C 8008708C 3C028016 */  lui   $v0, %hi(gSaveContext+0x1409) # $v0, 0x8016
/* AFE230 80087090 9042FA69 */  lbu   $v0, %lo(gSaveContext+0x1409)($v0)
/* AFE234 80087094 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AFE238 80087098 AFBF0034 */  sw    $ra, 0x34($sp)
/* AFE23C 8008709C AFB00030 */  sw    $s0, 0x30($sp)
/* AFE240 800870A0 AFA40048 */  sw    $a0, 0x48($sp)
/* AFE244 800870A4 AFA5004C */  sw    $a1, 0x4c($sp)
/* AFE248 800870A8 10400003 */  beqz  $v0, .L800870B8
/* AFE24C 800870AC 30A7FFFF */   andi  $a3, $a1, 0xffff
/* AFE250 800870B0 24E7001D */  addiu $a3, $a3, 0x1d
/* AFE254 800870B4 30E7FFFF */  andi  $a3, $a3, 0xffff
.L800870B8:
/* AFE258 800870B8 24010002 */  li    $at, 2
/* AFE25C 800870BC 14410003 */  bne   $v0, $at, .L800870CC
/* AFE260 800870C0 8FB00048 */   lw    $s0, 0x48($sp)
/* AFE264 800870C4 24E7001D */  addiu $a3, $a3, 0x1d
/* AFE268 800870C8 30E7FFFF */  andi  $a3, $a3, 0xffff
.L800870CC:
/* AFE26C 800870CC 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AFE270 800870D0 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AFE274 800870D4 02018021 */  addu  $s0, $s0, $at
/* AFE278 800870D8 A60701FC */  sh    $a3, 0x1fc($s0)
/* AFE27C 800870DC 260401C0 */  addiu $a0, $s0, 0x1c0
/* AFE280 800870E0 AFA40038 */  sw    $a0, 0x38($sp)
/* AFE284 800870E4 AFA7003C */  sw    $a3, 0x3c($sp)
/* AFE288 800870E8 260501D8 */  addiu $a1, $s0, 0x1d8
/* AFE28C 800870EC 0C001874 */  jal   osCreateMesgQueue
/* AFE290 800870F0 24060001 */   li    $a2, 1
/* AFE294 800870F4 8FA2003C */  lw    $v0, 0x3c($sp)
/* AFE298 800870F8 8E050134 */  lw    $a1, 0x134($s0)
/* AFE29C 800870FC 8FB80038 */  lw    $t8, 0x38($sp)
/* AFE2A0 80087100 00027080 */  sll   $t6, $v0, 2
/* AFE2A4 80087104 3C0F008B */  lui   $t7, %hi(_do_action_staticSegmentRomStart) # $t7, 0x8b
/* AFE2A8 80087108 3C198014 */  lui   $t9, %hi(D_8013E1B4) # $t9, 0x8014
/* AFE2AC 8008710C 01C27023 */  subu  $t6, $t6, $v0
/* AFE2B0 80087110 000E71C0 */  sll   $t6, $t6, 7
/* AFE2B4 80087114 2739E1B4 */  addiu $t9, %lo(D_8013E1B4) # addiu $t9, $t9, -0x1e4c
/* AFE2B8 80087118 25EF1000 */  addiu $t7, %lo(_do_action_staticSegmentRomStart) # addiu $t7, $t7, 0x1000
/* AFE2BC 8008711C 240808B4 */  li    $t0, 2228
/* AFE2C0 80087120 AFA80020 */  sw    $t0, 0x20($sp)
/* AFE2C4 80087124 01CF3021 */  addu  $a2, $t6, $t7
/* AFE2C8 80087128 AFB9001C */  sw    $t9, 0x1c($sp)
/* AFE2CC 8008712C AFA00018 */  sw    $zero, 0x18($sp)
/* AFE2D0 80087130 AFA00010 */  sw    $zero, 0x10($sp)
/* AFE2D4 80087134 26040160 */  addiu $a0, $s0, 0x160
/* AFE2D8 80087138 24070180 */  li    $a3, 384
/* AFE2DC 8008713C 24A50180 */  addiu $a1, $a1, 0x180
/* AFE2E0 80087140 0C000697 */  jal   DmaMgr_SendRequest2
/* AFE2E4 80087144 AFB80014 */   sw    $t8, 0x14($sp)
/* AFE2E8 80087148 8FA40038 */  lw    $a0, 0x38($sp)
/* AFE2EC 8008714C 00002825 */  move  $a1, $zero
/* AFE2F0 80087150 0C000CA0 */  jal   osRecvMesg
/* AFE2F4 80087154 24060001 */   li    $a2, 1
/* AFE2F8 80087158 24090001 */  li    $t1, 1
/* AFE2FC 8008715C A60901FA */  sh    $t1, 0x1fa($s0)
/* AFE300 80087160 8FBF0034 */  lw    $ra, 0x34($sp)
/* AFE304 80087164 8FB00030 */  lw    $s0, 0x30($sp)
/* AFE308 80087168 27BD0048 */  addiu $sp, $sp, 0x48
/* AFE30C 8008716C 03E00008 */  jr    $ra
/* AFE310 80087170 00000000 */   nop   

