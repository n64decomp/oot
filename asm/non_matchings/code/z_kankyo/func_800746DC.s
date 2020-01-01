glabel func_800746DC
/* AEB87C 800746DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AEB880 800746E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AEB884 800746E4 0C03F66B */  jal   Math_Rand_ZeroOne
/* AEB888 800746E8 00000000 */   nop   
/* AEB88C 800746EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AEB890 800746F0 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AEB894 800746F4 44812000 */  mtc1  $at, $f4
/* AEB898 800746F8 27BD0018 */  addiu $sp, $sp, 0x18
/* AEB89C 800746FC 03E00008 */  jr    $ra
/* AEB8A0 80074700 46040001 */   sub.s $f0, $f0, $f4

