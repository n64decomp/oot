glabel func_800A5428
/* B1C5C8 800A5428 27BDFFF8 */  addiu $sp, $sp, -8
/* B1C5CC 800A542C AFB00004 */  sw    $s0, 4($sp)
/* B1C5D0 800A5430 90830000 */  lbu   $v1, ($a0)
/* B1C5D4 800A5434 00A08025 */  move  $s0, $a1
/* B1C5D8 800A5438 00001025 */  move  $v0, $zero
/* B1C5DC 800A543C 58600012 */  blezl $v1, .L800A5488
/* B1C5E0 800A5440 8FB00004 */   lw    $s0, 4($sp)
.L800A5444:
/* B1C5E4 800A5444 90E50000 */  lbu   $a1, ($a3)
/* B1C5E8 800A5448 24420001 */  addiu $v0, $v0, 1
/* B1C5EC 800A544C 24E70001 */  addiu $a3, $a3, 1
/* B1C5F0 800A5450 50A00009 */  beql  $a1, $zero, .L800A5478
/* B1C5F4 800A5454 0043082A */   slt   $at, $v0, $v1
/* B1C5F8 800A5458 88CF0000 */  lwl   $t7, ($a2)
/* B1C5FC 800A545C 98CF0003 */  lwr   $t7, 3($a2)
/* B1C600 800A5460 AA0F0000 */  swl   $t7, ($s0)
/* B1C604 800A5464 BA0F0003 */  swr   $t7, 3($s0)
/* B1C608 800A5468 94CF0004 */  lhu   $t7, 4($a2)
/* B1C60C 800A546C A60F0004 */  sh    $t7, 4($s0)
/* B1C610 800A5470 90830000 */  lbu   $v1, ($a0)
/* B1C614 800A5474 0043082A */  slt   $at, $v0, $v1
.L800A5478:
/* B1C618 800A5478 26100006 */  addiu $s0, $s0, 6
/* B1C61C 800A547C 1420FFF1 */  bnez  $at, .L800A5444
/* B1C620 800A5480 24C60006 */   addiu $a2, $a2, 6
/* B1C624 800A5484 8FB00004 */  lw    $s0, 4($sp)
.L800A5488:
/* B1C628 800A5488 03E00008 */  jr    $ra
/* B1C62C 800A548C 27BD0008 */   addiu $sp, $sp, 8

