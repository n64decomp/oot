glabel func_800872E4
/* AFE484 800872E4 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* AFE488 800872E8 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* AFE48C 800872EC AFA40000 */  sw    $a0, ($sp)
/* AFE490 800872F0 844E002E */  lh    $t6, 0x2e($v0)
/* AFE494 800872F4 00042400 */  sll   $a0, $a0, 0x10
/* AFE498 800872F8 00042403 */  sra   $a0, $a0, 0x10
/* AFE49C 800872FC 00047900 */  sll   $t7, $a0, 4
/* AFE4A0 80087300 01CFC021 */  addu  $t8, $t6, $t7
/* AFE4A4 80087304 03E00008 */  jr    $ra
/* AFE4A8 80087308 A458002E */   sh    $t8, 0x2e($v0)

