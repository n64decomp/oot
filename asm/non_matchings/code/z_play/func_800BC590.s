glabel func_800BC590
/* B33730 800BC590 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B33734 800BC594 AFA40018 */  sw    $a0, 0x18($sp)
/* B33738 800BC598 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3373C 800BC59C 3C048014 */  lui   $a0, %hi(D_801441B8) # $a0, 0x8014
/* B33740 800BC5A0 0C00084C */  jal   osSyncPrintf
/* B33744 800BC5A4 248441B8 */   addiu $a0, %lo(D_801441B8) # addiu $a0, $a0, 0x41b8
/* B33748 800BC5A8 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B3374C 800BC5AC 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B33750 800BC5B0 24010010 */  li    $at, 16
/* B33754 800BC5B4 8FB90018 */  lw    $t9, 0x18($sp)
/* B33758 800BC5B8 85CF04B2 */  lh    $t7, 0x4b2($t6)
/* B3375C 800BC5BC 15E10004 */  bne   $t7, $at, .L800BC5D0
/* B33760 800BC5C0 3C010001 */   lui   $at, 1
/* B33764 800BC5C4 00390821 */  addu  $at, $at, $t9
/* B33768 800BC5C8 24180002 */  li    $t8, 2
/* B3376C 800BC5CC A038242B */  sb    $t8, 0x242b($at)
.L800BC5D0:
/* B33770 800BC5D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B33774 800BC5D4 27BD0018 */  addiu $sp, $sp, 0x18
/* B33778 800BC5D8 03E00008 */  jr    $ra
/* B3377C 800BC5DC 00000000 */   nop   

