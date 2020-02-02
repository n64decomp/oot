glabel func_8008730C
/* AFE4AC 8008730C 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* AFE4B0 80087310 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* AFE4B4 80087314 844E13CC */  lh    $t6, 0x13cc($v0)
/* AFE4B8 80087318 AFA40000 */  sw    $a0, ($sp)
/* AFE4BC 8008731C 00042400 */  sll   $a0, $a0, 0x10
/* AFE4C0 80087320 00042403 */  sra   $a0, $a0, 0x10
/* AFE4C4 80087324 01C47821 */  addu  $t7, $t6, $a0
/* AFE4C8 80087328 03E00008 */  jr    $ra
/* AFE4CC 8008732C A44F13CC */   sh    $t7, 0x13cc($v0)

