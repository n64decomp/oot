glabel func_8005B904
/* AD2AA4 8005B904 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2AA8 8005B908 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2AAC 8005B90C AFA40018 */  sw    $a0, 0x18($sp)
/* AD2AB0 8005B910 0C016DF9 */  jal   func_8005B7E4
/* AD2AB4 8005B914 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD2AB8 8005B918 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD2ABC 8005B91C 8FA40018 */  lw    $a0, 0x18($sp)
/* AD2AC0 8005B920 0C016E14 */  jal   func_8005B850
/* AD2AC4 8005B924 24A50008 */   addiu $a1, $a1, 8
/* AD2AC8 8005B928 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2ACC 8005B92C 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2AD0 8005B930 24020001 */  li    $v0, 1
/* AD2AD4 8005B934 03E00008 */  jr    $ra
/* AD2AD8 8005B938 00000000 */   nop   

