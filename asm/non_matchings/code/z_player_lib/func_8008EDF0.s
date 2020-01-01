glabel func_8008EDF0
/* B05F90 8008EDF0 8C8E0680 */  lw    $t6, 0x680($a0)
/* B05F94 8008EDF4 2401DFFF */  li    $at, -8193
/* B05F98 8008EDF8 AC800664 */  sw    $zero, 0x664($a0)
/* B05F9C 8008EDFC 01C17824 */  and   $t7, $t6, $at
/* B05FA0 8008EE00 03E00008 */  jr    $ra
/* B05FA4 8008EE04 AC8F0680 */   sw    $t7, 0x680($a0)

