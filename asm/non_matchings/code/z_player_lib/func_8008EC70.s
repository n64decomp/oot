glabel func_8008EC70
/* B05E10 8008EC70 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B05E14 8008EC74 AFBF0014 */  sw    $ra, 0x14($sp)
/* B05E18 8008EC78 80850151 */  lb    $a1, 0x151($a0)
/* B05E1C 8008EC7C A0850154 */  sb    $a1, 0x154($a0)
/* B05E20 8008EC80 0C023A7E */  jal   func_8008E9F8
/* B05E24 8008EC84 AFA40018 */   sw    $a0, 0x18($sp)
/* B05E28 8008EC88 8FA40018 */  lw    $a0, 0x18($sp)
/* B05E2C 8008EC8C 0C023B01 */  jal   func_8008EC04
/* B05E30 8008EC90 00402825 */   move  $a1, $v0
/* B05E34 8008EC94 8FA40018 */  lw    $a0, 0x18($sp)
/* B05E38 8008EC98 A08006AD */  sb    $zero, 0x6ad($a0)
/* B05E3C 8008EC9C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B05E40 8008ECA0 27BD0018 */  addiu $sp, $sp, 0x18
/* B05E44 8008ECA4 03E00008 */  jr    $ra
/* B05E48 8008ECA8 00000000 */   nop   

