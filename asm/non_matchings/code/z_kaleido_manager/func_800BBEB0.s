glabel func_800BBEB0
/* B33050 800BBEB0 3C048013 */  lui   $a0, %hi(D_8012D1DC) # $a0, 0x8013
/* B33054 800BBEB4 8C84D1DC */  lw    $a0, %lo(D_8012D1DC)($a0)
/* B33058 800BBEB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3305C 800BBEBC AFBF0014 */  sw    $ra, 0x14($sp)
/* B33060 800BBEC0 50800006 */  beql  $a0, $zero, .L800BBEDC
/* B33064 800BBEC4 8FBF0014 */   lw    $ra, 0x14($sp)
/* B33068 800BBEC8 0C02EF58 */  jal   func_800BBD60
/* B3306C 800BBECC 00000000 */   nop   
/* B33070 800BBED0 3C018013 */  lui   $at, %hi(D_8012D1DC) # $at, 0x8013
/* B33074 800BBED4 AC20D1DC */  sw    $zero, %lo(D_8012D1DC)($at)
/* B33078 800BBED8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800BBEDC:
/* B3307C 800BBEDC 3C018013 */  lui   $at, %hi(D_8012D1D8) # $at, 0x8013
/* B33080 800BBEE0 AC20D1D8 */  sw    $zero, %lo(D_8012D1D8)($at)
/* B33084 800BBEE4 03E00008 */  jr    $ra
/* B33088 800BBEE8 27BD0018 */   addiu $sp, $sp, 0x18

