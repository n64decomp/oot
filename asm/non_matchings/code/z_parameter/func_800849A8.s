glabel func_800849A8
/* AFBB48 800849A8 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* AFBB4C 800849AC 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* AFBB50 800849B0 240E0001 */  li    $t6, 1
/* AFBB54 800849B4 3C010001 */  lui   $at, 1
/* AFBB58 800849B8 A4AE1404 */  sh    $t6, 0x1404($a1)
/* AFBB5C 800849BC 00811021 */  addu  $v0, $a0, $at
/* AFBB60 800849C0 3C068012 */  lui   $a2, %hi(D_80125A04) # $a2, 0x8012
/* AFBB64 800849C4 24C65A04 */  addiu $a2, %lo(D_80125A04) # addiu $a2, $a2, 0x5a04
/* AFBB68 800849C8 A4400732 */  sh    $zero, 0x732($v0)
/* AFBB6C 800849CC A4400730 */  sh    $zero, 0x730($v0)
/* AFBB70 800849D0 A440072C */  sh    $zero, 0x72c($v0)
/* AFBB74 800849D4 A4C00000 */  sh    $zero, ($a2)
/* AFBB78 800849D8 84CF0000 */  lh    $t7, ($a2)
/* AFBB7C 800849DC 24180014 */  li    $t8, 20
/* AFBB80 800849E0 A4AF1406 */  sh    $t7, 0x1406($a1)
/* AFBB84 800849E4 03E00008 */  jr    $ra
/* AFBB88 800849E8 A458072E */   sh    $t8, 0x72e($v0)

