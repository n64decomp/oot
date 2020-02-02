glabel func_800876C8
/* AFE868 800876C8 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* AFE86C 800876CC 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* AFE870 800876D0 846213F0 */  lh    $v0, 0x13f0($v1)
/* AFE874 800876D4 24010008 */  li    $at, 8
/* AFE878 800876D8 AFA40000 */  sw    $a0, ($sp)
/* AFE87C 800876DC 10410008 */  beq   $v0, $at, .L80087700
/* AFE880 800876E0 24010009 */   li    $at, 9
/* AFE884 800876E4 10410006 */  beq   $v0, $at, .L80087700
/* AFE888 800876E8 240E0005 */   li    $t6, 5
/* AFE88C 800876EC 2401000A */  li    $at, 10
/* AFE890 800876F0 54410003 */  bnel  $v0, $at, .L80087700
/* AFE894 800876F4 A46E13F0 */   sh    $t6, 0x13f0($v1)
/* AFE898 800876F8 A46213F2 */  sh    $v0, 0x13f2($v1)
/* AFE89C 800876FC A46E13F0 */  sh    $t6, 0x13f0($v1)
.L80087700:
/* AFE8A0 80087700 03E00008 */  jr    $ra
/* AFE8A4 80087704 00000000 */   nop   

