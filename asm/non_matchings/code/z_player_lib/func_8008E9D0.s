glabel func_8008E9D0
/* B05B70 8008E9D0 3C028016 */  lui   $v0, %hi(gSaveContext+4) # $v0, 0x8016
/* B05B74 8008E9D4 8C42E664 */  lw    $v0, %lo(gSaveContext+4)($v0)
/* B05B78 8008E9D8 0002102B */  sltu  $v0, $zero, $v0
/* B05B7C 8008E9DC 10400004 */  beqz  $v0, .L8008E9F0
/* B05B80 8008E9E0 00000000 */   nop   
/* B05B84 8008E9E4 8082014E */  lb    $v0, 0x14e($a0)
/* B05B88 8008E9E8 38420002 */  xori  $v0, $v0, 2
/* B05B8C 8008E9EC 2C420001 */  sltiu $v0, $v0, 1
.L8008E9F0:
/* B05B90 8008E9F0 03E00008 */  jr    $ra
/* B05B94 8008E9F4 00000000 */   nop   

