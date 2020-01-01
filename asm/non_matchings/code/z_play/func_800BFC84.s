glabel func_800BFC84
/* B36E24 800BFC84 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B36E28 800BFC88 AFBF0014 */  sw    $ra, 0x14($sp)
/* B36E2C 800BFC8C 90821D6C */  lbu   $v0, 0x1d6c($a0)
/* B36E30 800BFC90 0002102B */  sltu  $v0, $zero, $v0
/* B36E34 800BFC94 54400005 */  bnezl $v0, .L800BFCAC
/* B36E38 800BFC98 8FBF0014 */   lw    $ra, 0x14($sp)
/* B36E3C 800BFC9C 0C023A62 */  jal   func_8008E988
/* B36E40 800BFCA0 00000000 */   nop   
/* B36E44 800BFCA4 0002102B */  sltu  $v0, $zero, $v0
/* B36E48 800BFCA8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800BFCAC:
/* B36E4C 800BFCAC 27BD0018 */  addiu $sp, $sp, 0x18
/* B36E50 800BFCB0 03E00008 */  jr    $ra
/* B36E54 800BFCB4 00000000 */   nop   

