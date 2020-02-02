glabel func_80088AF0
/* AFFC90 80088AF0 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* AFFC94 80088AF4 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* AFFC98 80088AF8 844E13D2 */  lh    $t6, 0x13d2($v0)
/* AFFC9C 80088AFC AFA40000 */  sw    $a0, ($sp)
/* AFFCA0 80088B00 11C0000A */  beqz  $t6, .L80088B2C
/* AFFCA4 80088B04 00000000 */   nop   
/* AFFCA8 80088B08 944F13FC */  lhu   $t7, 0x13fc($v0)
/* AFFCAC 80088B0C 241900EF */  li    $t9, 239
/* AFFCB0 80088B10 24080001 */  li    $t0, 1
/* AFFCB4 80088B14 31F80001 */  andi  $t8, $t7, 1
/* AFFCB8 80088B18 53000004 */  beql  $t8, $zero, .L80088B2C
/* AFFCBC 80088B1C A44813D4 */   sh    $t0, 0x13d4($v0)
/* AFFCC0 80088B20 03E00008 */  jr    $ra
/* AFFCC4 80088B24 A45913D4 */   sh    $t9, 0x13d4($v0)
/* AFFCC8 80088B28 A44813D4 */  sh    $t0, 0x13d4($v0)
.L80088B2C:
/* AFFCCC 80088B2C 03E00008 */  jr    $ra
/* AFFCD0 80088B30 00000000 */   nop   

