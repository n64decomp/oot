glabel func_80084A6C
/* AFBC0C 80084A6C 3C010001 */  lui   $at, (0x000106B0 >> 16) # lui $at, 1
/* AFBC10 80084A70 00803825 */  move  $a3, $a0
/* AFBC14 80084A74 342106B0 */  ori   $at, (0x000106B0 & 0xFFFF) # ori $at, $at, 0x6b0
/* AFBC18 80084A78 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AFBC1C 80084A7C 00812021 */  addu  $a0, $a0, $at
/* AFBC20 80084A80 3C010001 */  lui   $at, (0x000106C8 >> 16) # lui $at, 1
/* AFBC24 80084A84 AFBF002C */  sw    $ra, 0x2c($sp)
/* AFBC28 80084A88 AFA5003C */  sw    $a1, 0x3c($sp)
/* AFBC2C 80084A8C 342106C8 */  ori   $at, (0x000106C8 & 0xFFFF) # ori $at, $at, 0x6c8
/* AFBC30 80084A90 00E12821 */  addu  $a1, $a3, $at
/* AFBC34 80084A94 AFA70038 */  sw    $a3, 0x38($sp)
/* AFBC38 80084A98 0C001874 */  jal   osCreateMesgQueue
/* AFBC3C 80084A9C 24060001 */   li    $a2, 1
/* AFBC40 80084AA0 8FA20038 */  lw    $v0, 0x38($sp)
/* AFBC44 80084AA4 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AFBC48 80084AA8 97A8003E */  lhu   $t0, 0x3e($sp)
/* AFBC4C 80084AAC 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AFBC50 80084AB0 00411021 */  addu  $v0, $v0, $at
/* AFBC54 80084AB4 8C4E0138 */  lw    $t6, 0x138($v0)
/* AFBC58 80084AB8 3C188016 */  lui   $t8, %hi(gSaveContext+0x68)
/* AFBC5C 80084ABC 0308C021 */  addu  $t8, $t8, $t0
/* AFBC60 80084AC0 9318E6C8 */  lbu   $t8, %lo(gSaveContext+0x68)($t8)
/* AFBC64 80084AC4 3C090075 */  lui   $t1, %hi(_icon_item_staticSegmentRomStart) # $t1, 0x75
/* AFBC68 80084AC8 3C0A8014 */  lui   $t2, %hi(D_8013DF00) # $t2, 0x8014
/* AFBC6C 80084ACC 254ADF00 */  addiu $t2, %lo(D_8013DF00) # addiu $t2, $t2, -0x2100
/* AFBC70 80084AD0 2529C000 */  addiu $t1, %lo(_icon_item_staticSegmentRomStart) # addiu $t1, $t1, -0x4000
/* AFBC74 80084AD4 244301C0 */  addiu $v1, $v0, 0x1c0
/* AFBC78 80084AD8 240B0493 */  li    $t3, 1171
/* AFBC7C 80084ADC 00087B00 */  sll   $t7, $t0, 0xc
/* AFBC80 80084AE0 0018CB00 */  sll   $t9, $t8, 0xc
/* AFBC84 80084AE4 03293021 */  addu  $a2, $t9, $t1
/* AFBC88 80084AE8 AFAB0020 */  sw    $t3, 0x20($sp)
/* AFBC8C 80084AEC AFA30014 */  sw    $v1, 0x14($sp)
/* AFBC90 80084AF0 AFA30030 */  sw    $v1, 0x30($sp)
/* AFBC94 80084AF4 AFAA001C */  sw    $t2, 0x1c($sp)
/* AFBC98 80084AF8 AFA00018 */  sw    $zero, 0x18($sp)
/* AFBC9C 80084AFC AFA00010 */  sw    $zero, 0x10($sp)
/* AFBCA0 80084B00 24440160 */  addiu $a0, $v0, 0x160
/* AFBCA4 80084B04 24071000 */  li    $a3, 4096
/* AFBCA8 80084B08 0C000697 */  jal   DmaMgr_SendRequest2
/* AFBCAC 80084B0C 01CF2821 */   addu  $a1, $t6, $t7
/* AFBCB0 80084B10 8FA40030 */  lw    $a0, 0x30($sp)
/* AFBCB4 80084B14 00002825 */  move  $a1, $zero
/* AFBCB8 80084B18 0C000CA0 */  jal   osRecvMesg
/* AFBCBC 80084B1C 24060001 */   li    $a2, 1
/* AFBCC0 80084B20 8FBF002C */  lw    $ra, 0x2c($sp)
/* AFBCC4 80084B24 27BD0038 */  addiu $sp, $sp, 0x38
/* AFBCC8 80084B28 03E00008 */  jr    $ra
/* AFBCCC 80084B2C 00000000 */   nop   

