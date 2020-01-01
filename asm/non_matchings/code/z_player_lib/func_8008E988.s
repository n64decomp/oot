glabel func_8008E988
/* B05B28 8008E988 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B05B2C 8008E98C AFBF0014 */  sw    $ra, 0x14($sp)
/* B05B30 8008E990 8C851C44 */  lw    $a1, 0x1c44($a0)
/* B05B34 8008E994 0C023A37 */  jal   func_8008E8DC
/* B05B38 8008E998 AFA5001C */   sw    $a1, 0x1c($sp)
/* B05B3C 8008E99C 0002102B */  sltu  $v0, $zero, $v0
/* B05B40 8008E9A0 14400004 */  bnez  $v0, .L8008E9B4
/* B05B44 8008E9A4 8FA5001C */   lw    $a1, 0x1c($sp)
/* B05B48 8008E9A8 90A206AD */  lbu   $v0, 0x6ad($a1)
/* B05B4C 8008E9AC 38420004 */  xori  $v0, $v0, 4
/* B05B50 8008E9B0 2C420001 */  sltiu $v0, $v0, 1
.L8008E9B4:
/* B05B54 8008E9B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B05B58 8008E9B8 27BD0020 */  addiu $sp, $sp, 0x20
/* B05B5C 8008E9BC 03E00008 */  jr    $ra
/* B05B60 8008E9C0 00000000 */   nop   

/* B05B64 8008E9C4 8C82067C */  lw    $v0, 0x67c($a0)
/* B05B68 8008E9C8 03E00008 */  jr    $ra
/* B05B6C 8008E9CC 30420010 */   andi  $v0, $v0, 0x10

