glabel func_8007A614
/* AF17B4 8007A614 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AF17B8 8007A618 AFBF001C */  sw    $ra, 0x1c($sp)
/* AF17BC 8007A61C 0C01E9BF */  jal   Lights_ClearHead
/* AF17C0 8007A620 AFA50024 */   sw    $a1, 0x24($sp)
/* AF17C4 8007A624 8FA40024 */  lw    $a0, 0x24($sp)
/* AF17C8 8007A628 24050050 */  li    $a1, 80
/* AF17CC 8007A62C 24060050 */  li    $a2, 80
/* AF17D0 8007A630 0C01E99F */  jal   Lights_SetAmbientColor
/* AF17D4 8007A634 24070050 */   li    $a3, 80
/* AF17D8 8007A638 240E03E4 */  li    $t6, 996
/* AF17DC 8007A63C 240F3200 */  li    $t7, 12800
/* AF17E0 8007A640 AFAF0014 */  sw    $t7, 0x14($sp)
/* AF17E4 8007A644 AFAE0010 */  sw    $t6, 0x10($sp)
/* AF17E8 8007A648 8FA40024 */  lw    $a0, 0x24($sp)
/* AF17EC 8007A64C 00002825 */  move  $a1, $zero
/* AF17F0 8007A650 00003025 */  move  $a2, $zero
/* AF17F4 8007A654 0C01E9A6 */  jal   func_8007A698
/* AF17F8 8007A658 00003825 */   move  $a3, $zero
/* AF17FC 8007A65C 3C048016 */  lui   $a0, %hi(sLightsList) # $a0, 0x8016
/* AF1800 8007A660 2484FDF0 */  addiu $a0, %lo(sLightsList) # addiu $a0, $a0, -0x210
/* AF1804 8007A664 0C001114 */  jal   bzero
/* AF1808 8007A668 24050188 */   li    $a1, 392
/* AF180C 8007A66C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF1810 8007A670 27BD0020 */  addiu $sp, $sp, 0x20
/* AF1814 8007A674 03E00008 */  jr    $ra
/* AF1818 8007A678 00000000 */   nop   

