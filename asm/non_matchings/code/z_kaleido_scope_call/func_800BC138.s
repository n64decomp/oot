glabel func_800BC138
/* B332D8 800BC138 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B332DC 800BC13C AFA40018 */  sw    $a0, 0x18($sp)
/* B332E0 800BC140 AFBF0014 */  sw    $ra, 0x14($sp)
/* B332E4 800BC144 3C048014 */  lui   $a0, %hi(D_801440AC) # $a0, 0x8014
/* B332E8 800BC148 0C00084C */  jal   osSyncPrintf
/* B332EC 800BC14C 248440AC */   addiu $a0, %lo(D_801440AC) # addiu $a0, $a0, 0x40ac
/* B332F0 800BC150 0C01BB92 */  jal   func_8006EE48
/* B332F4 800BC154 8FA40018 */   lw    $a0, 0x18($sp)
/* B332F8 800BC158 8FBF0014 */  lw    $ra, 0x14($sp)
/* B332FC 800BC15C 27BD0018 */  addiu $sp, $sp, 0x18
/* B33300 800BC160 03E00008 */  jr    $ra
/* B33304 800BC164 00000000 */   nop   

