glabel func_8005B9B0
/* AD2B50 8005B9B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2B54 8005B9B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2B58 8005B9B8 90AE0015 */  lbu   $t6, 0x15($a1)
/* AD2B5C 8005B9BC ACA00018 */  sw    $zero, 0x18($a1)
/* AD2B60 8005B9C0 ACA00020 */  sw    $zero, 0x20($a1)
/* AD2B64 8005B9C4 31D8FFFD */  andi  $t8, $t6, 0xfffd
/* AD2B68 8005B9C8 A0B80015 */  sb    $t8, 0x15($a1)
/* AD2B6C 8005B9CC 3319FFBF */  andi  $t9, $t8, 0xffbf
/* AD2B70 8005B9D0 0C016E06 */  jal   func_8005B818
/* AD2B74 8005B9D4 A0B90015 */   sb    $t9, 0x15($a1)
/* AD2B78 8005B9D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2B7C 8005B9DC 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2B80 8005B9E0 03E00008 */  jr    $ra
/* AD2B84 8005B9E4 00000000 */   nop   

