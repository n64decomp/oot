glabel func_80087680
/* AFE820 80087680 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* AFE824 80087684 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* AFE828 80087688 904E003A */  lbu   $t6, 0x3a($v0)
/* AFE82C 8008768C AFA40000 */  sw    $a0, ($sp)
/* AFE830 80087690 24090009 */  li    $t1, 9
/* AFE834 80087694 11C0000A */  beqz  $t6, .L800876C0
/* AFE838 80087698 00000000 */   nop   
/* AFE83C 8008769C 9058003C */  lbu   $t8, 0x3c($v0)
/* AFE840 800876A0 844F13F0 */  lh    $t7, 0x13f0($v0)
/* AFE844 800876A4 A44913F0 */  sh    $t1, 0x13f0($v0)
/* AFE848 800876A8 0018C880 */  sll   $t9, $t8, 2
/* AFE84C 800876AC 0338C823 */  subu  $t9, $t9, $t8
/* AFE850 800876B0 0019C900 */  sll   $t9, $t9, 4
/* AFE854 800876B4 27280030 */  addiu $t0, $t9, 0x30
/* AFE858 800876B8 A44813F6 */  sh    $t0, 0x13f6($v0)
/* AFE85C 800876BC A44F13F2 */  sh    $t7, 0x13f2($v0)
.L800876C0:
/* AFE860 800876C0 03E00008 */  jr    $ra
/* AFE864 800876C4 00000000 */   nop   

