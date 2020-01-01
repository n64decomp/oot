glabel func_800BC450
/* B335F0 800BC450 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B335F4 800BC454 AFBF0014 */  sw    $ra, 0x14($sp)
/* B335F8 800BC458 848E07A0 */  lh    $t6, 0x7a0($a0)
/* B335FC 800BC45C 00803025 */  move  $a2, $a0
/* B33600 800BC460 3C050001 */  lui   $a1, 1
/* B33604 800BC464 00A62821 */  addu  $a1, $a1, $a2
/* B33608 800BC468 90A5242B */  lbu   $a1, 0x242b($a1)
/* B3360C 800BC46C 000E7880 */  sll   $t7, $t6, 2
/* B33610 800BC470 008FC021 */  addu  $t8, $a0, $t7
/* B33614 800BC474 8F040790 */  lw    $a0, 0x790($t8)
/* B33618 800BC478 0C0169EA */  jal   func_8005A7A8
/* B3361C 800BC47C 24A5FFFF */   addiu $a1, $a1, -1
/* B33620 800BC480 8FBF0014 */  lw    $ra, 0x14($sp)
/* B33624 800BC484 27BD0018 */  addiu $sp, $sp, 0x18
/* B33628 800BC488 03E00008 */  jr    $ra
/* B3362C 800BC48C 00000000 */   nop   

