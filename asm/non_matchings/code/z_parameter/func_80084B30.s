glabel func_80084B30
/* AFBCD0 80084B30 3C010001 */  lui   $at, (0x000106B0 >> 16) # lui $at, 1
/* AFBCD4 80084B34 00803825 */  move  $a3, $a0
/* AFBCD8 80084B38 342106B0 */  ori   $at, (0x000106B0 & 0xFFFF) # ori $at, $at, 0x6b0
/* AFBCDC 80084B3C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AFBCE0 80084B40 00812021 */  addu  $a0, $a0, $at
/* AFBCE4 80084B44 3C010001 */  lui   $at, (0x000106C8 >> 16) # lui $at, 1
/* AFBCE8 80084B48 AFBF002C */  sw    $ra, 0x2c($sp)
/* AFBCEC 80084B4C AFA5003C */  sw    $a1, 0x3c($sp)
/* AFBCF0 80084B50 342106C8 */  ori   $at, (0x000106C8 & 0xFFFF) # ori $at, $at, 0x6c8
/* AFBCF4 80084B54 00E12821 */  addu  $a1, $a3, $at
/* AFBCF8 80084B58 AFA70038 */  sw    $a3, 0x38($sp)
/* AFBCFC 80084B5C 0C001874 */  jal   osCreateMesgQueue
/* AFBD00 80084B60 24060001 */   li    $a2, 1
/* AFBD04 80084B64 8FA20038 */  lw    $v0, 0x38($sp)
/* AFBD08 80084B68 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AFBD0C 80084B6C 97A8003E */  lhu   $t0, 0x3e($sp)
/* AFBD10 80084B70 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AFBD14 80084B74 00411021 */  addu  $v0, $v0, $at
/* AFBD18 80084B78 8C4E0138 */  lw    $t6, 0x138($v0)
/* AFBD1C 80084B7C 3C188016 */  lui   $t8, %hi(gSaveContext+0x68)
/* AFBD20 80084B80 0308C021 */  addu  $t8, $t8, $t0
/* AFBD24 80084B84 9318E6C8 */  lbu   $t8, %lo(gSaveContext+0x68)($t8)
/* AFBD28 80084B88 3C090075 */  lui   $t1, %hi(_icon_item_staticSegmentRomStart) # $t1, 0x75
/* AFBD2C 80084B8C 3C0A8014 */  lui   $t2, %hi(D_8013DF14) # $t2, 0x8014
/* AFBD30 80084B90 254ADF14 */  addiu $t2, %lo(D_8013DF14) # addiu $t2, $t2, -0x20ec
/* AFBD34 80084B94 2529C000 */  addiu $t1, %lo(_icon_item_staticSegmentRomStart) # addiu $t1, $t1, -0x4000
/* AFBD38 80084B98 244301C0 */  addiu $v1, $v0, 0x1c0
/* AFBD3C 80084B9C 240B04A9 */  li    $t3, 1193
/* AFBD40 80084BA0 00087B00 */  sll   $t7, $t0, 0xc
/* AFBD44 80084BA4 0018CB00 */  sll   $t9, $t8, 0xc
/* AFBD48 80084BA8 03293021 */  addu  $a2, $t9, $t1
/* AFBD4C 80084BAC AFAB0020 */  sw    $t3, 0x20($sp)
/* AFBD50 80084BB0 AFA30014 */  sw    $v1, 0x14($sp)
/* AFBD54 80084BB4 AFA30030 */  sw    $v1, 0x30($sp)
/* AFBD58 80084BB8 AFAA001C */  sw    $t2, 0x1c($sp)
/* AFBD5C 80084BBC AFA00018 */  sw    $zero, 0x18($sp)
/* AFBD60 80084BC0 AFA00010 */  sw    $zero, 0x10($sp)
/* AFBD64 80084BC4 24440180 */  addiu $a0, $v0, 0x180
/* AFBD68 80084BC8 24071000 */  li    $a3, 4096
/* AFBD6C 80084BCC 0C000697 */  jal   DmaMgr_SendRequest2
/* AFBD70 80084BD0 01CF2821 */   addu  $a1, $t6, $t7
/* AFBD74 80084BD4 8FA40030 */  lw    $a0, 0x30($sp)
/* AFBD78 80084BD8 00002825 */  move  $a1, $zero
/* AFBD7C 80084BDC 0C000CA0 */  jal   osRecvMesg
/* AFBD80 80084BE0 24060001 */   li    $a2, 1
/* AFBD84 80084BE4 8FBF002C */  lw    $ra, 0x2c($sp)
/* AFBD88 80084BE8 27BD0038 */  addiu $sp, $sp, 0x38
/* AFBD8C 80084BEC 03E00008 */  jr    $ra
/* AFBD90 80084BF0 00000000 */   nop   

