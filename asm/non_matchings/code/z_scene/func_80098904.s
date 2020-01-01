glabel func_80098904
/* B0FAA4 80098904 90AE0001 */  lbu   $t6, 1($a1)
/* B0FAA8 80098908 3C010001 */  lui   $at, 1
/* B0FAAC 8009890C 00240821 */  addu  $at, $at, $a0
/* B0FAB0 80098910 A02E1CBF */  sb    $t6, 0x1cbf($at)
/* B0FAB4 80098914 8CB80004 */  lw    $t8, 4($a1)
/* B0FAB8 80098918 3C010001 */  lui   $at, 1
/* B0FABC 8009891C 00240821 */  addu  $at, $at, $a0
/* B0FAC0 80098920 A0381CBE */  sb    $t8, 0x1cbe($at)
/* B0FAC4 80098924 8CB90004 */  lw    $t9, 4($a1)
/* B0FAC8 80098928 3C010001 */  lui   $at, 1
/* B0FACC 8009892C 00240821 */  addu  $at, $at, $a0
/* B0FAD0 80098930 00194202 */  srl   $t0, $t9, 8
/* B0FAD4 80098934 31090001 */  andi  $t1, $t0, 1
/* B0FAD8 80098938 A0291CC1 */  sb    $t1, 0x1cc1($at)
/* B0FADC 8009893C 8CAA0004 */  lw    $t2, 4($a1)
/* B0FAE0 80098940 3C010001 */  lui   $at, 1
/* B0FAE4 80098944 00240821 */  addu  $at, $at, $a0
/* B0FAE8 80098948 000A5A82 */  srl   $t3, $t2, 0xa
/* B0FAEC 8009894C 316C0001 */  andi  $t4, $t3, 1
/* B0FAF0 80098950 03E00008 */  jr    $ra
/* B0FAF4 80098954 A42C04E4 */   sh    $t4, 0x4e4($at)

