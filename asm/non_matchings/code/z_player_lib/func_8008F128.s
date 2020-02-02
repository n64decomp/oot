glabel func_8008F128
/* B062C8 8008F128 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B062CC 8008F12C AFBF0014 */  sw    $ra, 0x14($sp)
/* B062D0 8008F130 0C023C41 */  jal   func_8008F104
/* B062D4 8008F134 AFA40018 */   sw    $a0, 0x18($sp)
/* B062D8 8008F138 0002102B */  sltu  $v0, $zero, $v0
/* B062DC 8008F13C 10400004 */  beqz  $v0, .L8008F150
/* B062E0 8008F140 8FBF0014 */   lw    $ra, 0x14($sp)
/* B062E4 8008F144 8FAE0018 */  lw    $t6, 0x18($sp)
/* B062E8 8008F148 8DC203AC */  lw    $v0, 0x3ac($t6)
/* B062EC 8008F14C 2C420001 */  sltiu $v0, $v0, 1
.L8008F150:
/* B062F0 8008F150 03E00008 */  jr    $ra
/* B062F4 8008F154 27BD0018 */   addiu $sp, $sp, 0x18

