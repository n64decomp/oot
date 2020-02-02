glabel func_8005D1A8
/* AD4348 8005D1A8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD434C 8005D1AC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4350 8005D1B0 AFA40018 */  sw    $a0, 0x18($sp)
/* AD4354 8005D1B4 0C016DE1 */  jal   func_8005B784
/* AD4358 8005D1B8 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD435C 8005D1BC 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD4360 8005D1C0 8FA40018 */  lw    $a0, 0x18($sp)
/* AD4364 8005D1C4 0C016E7A */  jal   func_8005B9E8
/* AD4368 8005D1C8 24A50018 */   addiu $a1, $a1, 0x18
/* AD436C 8005D1CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4370 8005D1D0 27BD0018 */  addiu $sp, $sp, 0x18
/* AD4374 8005D1D4 24020001 */  li    $v0, 1
/* AD4378 8005D1D8 03E00008 */  jr    $ra
/* AD437C 8005D1DC 00000000 */   nop   

/* AD4380 8005D1E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD4384 8005D1E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4388 8005D1E8 AFA40018 */  sw    $a0, 0x18($sp)
/* AD438C 8005D1EC 0C016DE7 */  jal   func_8005B79C
/* AD4390 8005D1F0 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD4394 8005D1F4 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD4398 8005D1F8 8FA40018 */  lw    $a0, 0x18($sp)
/* AD439C 8005D1FC 0C016E87 */  jal   func_8005BA1C
/* AD43A0 8005D200 24A50018 */   addiu $a1, $a1, 0x18
/* AD43A4 8005D204 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD43A8 8005D208 27BD0018 */  addiu $sp, $sp, 0x18
/* AD43AC 8005D20C 24020001 */  li    $v0, 1
/* AD43B0 8005D210 03E00008 */  jr    $ra
/* AD43B4 8005D214 00000000 */   nop   

