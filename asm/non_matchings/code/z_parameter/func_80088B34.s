glabel func_80088B34
/* AFFCD4 80088B34 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* AFFCD8 80088B38 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* AFFCDC 80088B3C AFA40000 */  sw    $a0, ($sp)
/* AFFCE0 80088B40 240E008C */  li    $t6, 140
/* AFFCE4 80088B44 240F0050 */  li    $t7, 80
/* AFFCE8 80088B48 00042400 */  sll   $a0, $a0, 0x10
/* AFFCEC 80088B4C A44E13D6 */  sh    $t6, 0x13d6($v0)
/* AFFCF0 80088B50 A44F13DA */  sh    $t7, 0x13da($v0)
/* AFFCF4 80088B54 3C018012 */  lui   $at, %hi(D_80125A5C) # $at, 0x8012
/* AFFCF8 80088B58 00042403 */  sra   $a0, $a0, 0x10
/* AFFCFC 80088B5C A4205A5C */  sh    $zero, %lo(D_80125A5C)($at)
/* AFFD00 80088B60 10800004 */  beqz  $a0, .L80088B74
/* AFFD04 80088B64 A44413D0 */   sh    $a0, 0x13d0($v0)
/* AFFD08 80088B68 24180005 */  li    $t8, 5
/* AFFD0C 80088B6C 03E00008 */  jr    $ra
/* AFFD10 80088B70 A45813CE */   sh    $t8, 0x13ce($v0)

.L80088B74:
/* AFFD14 80088B74 2419000B */  li    $t9, 11
/* AFFD18 80088B78 A45913CE */  sh    $t9, 0x13ce($v0)
/* AFFD1C 80088B7C 03E00008 */  jr    $ra
/* AFFD20 80088B80 00000000 */   nop   

