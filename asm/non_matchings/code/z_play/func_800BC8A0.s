glabel func_800BC8A0
/* B33A40 800BC8A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B33A44 800BC8A4 AFA40028 */  sw    $a0, 0x28($sp)
/* B33A48 800BC8A8 8FAE0028 */  lw    $t6, 0x28($sp)
/* B33A4C 800BC8AC AFBF0024 */  sw    $ra, 0x24($sp)
/* B33A50 800BC8B0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B33A54 800BC8B4 00A02025 */  move  $a0, $a1
/* B33A58 800BC8B8 91C507AF */  lbu   $a1, 0x7af($t6)
/* B33A5C 800BC8BC 91C707B1 */  lbu   $a3, 0x7b1($t6)
/* B33A60 800BC8C0 91C607B0 */  lbu   $a2, 0x7b0($t6)
/* B33A64 800BC8C4 AFA00010 */  sw    $zero, 0x10($sp)
/* B33A68 800BC8C8 85CF07B2 */  lh    $t7, 0x7b2($t6)
/* B33A6C 800BC8CC 241803E8 */  li    $t8, 1000
/* B33A70 800BC8D0 AFB80018 */  sw    $t8, 0x18($sp)
/* B33A74 800BC8D4 0C024DC2 */  jal   func_80093708
/* B33A78 800BC8D8 AFAF0014 */   sw    $t7, 0x14($sp)
/* B33A7C 800BC8DC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B33A80 800BC8E0 27BD0028 */  addiu $sp, $sp, 0x28
/* B33A84 800BC8E4 03E00008 */  jr    $ra
/* B33A88 800BC8E8 00000000 */   nop   

