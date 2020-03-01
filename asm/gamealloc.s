.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800C55D0
/* B3C770 800C55D0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3C774 800C55D4 AFB1001C */  sw    $s1, 0x1c($sp)
/* B3C778 800C55D8 00808825 */  move  $s1, $a0
/* B3C77C 800C55DC AFBF0024 */  sw    $ra, 0x24($sp)
/* B3C780 800C55E0 3C048014 */  lui   $a0, %hi(D_801450F0) # $a0, 0x8014
/* B3C784 800C55E4 AFB20020 */  sw    $s2, 0x20($sp)
/* B3C788 800C55E8 AFB00018 */  sw    $s0, 0x18($sp)
/* B3C78C 800C55EC 248450F0 */  addiu $a0, %lo(D_801450F0) # addiu $a0, $a0, 0x50f0
/* B3C790 800C55F0 0C00084C */  jal   osSyncPrintf
/* B3C794 800C55F4 02202825 */   move  $a1, $s1
/* B3C798 800C55F8 8E300000 */  lw    $s0, ($s1)
/* B3C79C 800C55FC 3C128014 */  lui   $s2, %hi(D_80145100) # $s2, 0x8014
/* B3C7A0 800C5600 26525100 */  addiu $s2, %lo(D_80145100) # addiu $s2, $s2, 0x5100
/* B3C7A4 800C5604 12300007 */  beq   $s1, $s0, .L800C5624
/* B3C7A8 800C5608 02402025 */   move  $a0, $s2
.L800C560C:
/* B3C7AC 800C560C 02002825 */  move  $a1, $s0
/* B3C7B0 800C5610 0C00084C */  jal   osSyncPrintf
/* B3C7B4 800C5614 8E060008 */   lw    $a2, 8($s0)
/* B3C7B8 800C5618 8E100000 */  lw    $s0, ($s0)
/* B3C7BC 800C561C 5630FFFB */  bnel  $s1, $s0, .L800C560C
/* B3C7C0 800C5620 02402025 */   move  $a0, $s2
.L800C5624:
/* B3C7C4 800C5624 8FBF0024 */  lw    $ra, 0x24($sp)
/* B3C7C8 800C5628 8FB00018 */  lw    $s0, 0x18($sp)
/* B3C7CC 800C562C 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3C7D0 800C5630 8FB20020 */  lw    $s2, 0x20($sp)
/* B3C7D4 800C5634 03E00008 */  jr    $ra
/* B3C7D8 800C5638 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800C563C
/* B3C7DC 800C563C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B3C7E0 800C5640 AFB00018 */  sw    $s0, 0x18($sp)
/* B3C7E4 800C5644 00808025 */  move  $s0, $a0
/* B3C7E8 800C5648 AFA50024 */  sw    $a1, 0x24($sp)
/* B3C7EC 800C564C 24A40010 */  addiu $a0, $a1, 0x10
/* B3C7F0 800C5650 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3C7F4 800C5654 AFA60028 */  sw    $a2, 0x28($sp)
/* B3C7F8 800C5658 00C02825 */  move  $a1, $a2
/* B3C7FC 800C565C 0C03F570 */  jal   SystemArena_MallocDebug
/* B3C800 800C5660 00E03025 */   move  $a2, $a3
/* B3C804 800C5664 1040000C */  beqz  $v0, .L800C5698
/* B3C808 800C5668 8FAE0024 */   lw    $t6, 0x24($sp)
/* B3C80C 800C566C AC4E0008 */  sw    $t6, 8($v0)
/* B3C810 800C5670 8E0F0010 */  lw    $t7, 0x10($s0)
/* B3C814 800C5674 AC4F0004 */  sw    $t7, 4($v0)
/* B3C818 800C5678 8E180010 */  lw    $t8, 0x10($s0)
/* B3C81C 800C567C AF020000 */  sw    $v0, ($t8)
/* B3C820 800C5680 AE020010 */  sw    $v0, 0x10($s0)
/* B3C824 800C5684 AC500000 */  sw    $s0, ($v0)
/* B3C828 800C5688 8E190010 */  lw    $t9, 0x10($s0)
/* B3C82C 800C568C 24420010 */  addiu $v0, $v0, 0x10
/* B3C830 800C5690 10000002 */  b     .L800C569C
/* B3C834 800C5694 AE190004 */   sw    $t9, 4($s0)
.L800C5698:
/* B3C838 800C5698 00001025 */  move  $v0, $zero
.L800C569C:
/* B3C83C 800C569C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3C840 800C56A0 8FB00018 */  lw    $s0, 0x18($sp)
/* B3C844 800C56A4 27BD0020 */  addiu $sp, $sp, 0x20
/* B3C848 800C56A8 03E00008 */  jr    $ra
/* B3C84C 800C56AC 00000000 */   nop   

glabel func_800C56B0
/* B3C850 800C56B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3C854 800C56B4 00803825 */  move  $a3, $a0
/* B3C858 800C56B8 AFA5001C */  sw    $a1, 0x1c($sp)
/* B3C85C 800C56BC 24A40010 */  addiu $a0, $a1, 0x10
/* B3C860 800C56C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3C864 800C56C4 3C058014 */  lui   $a1, %hi(D_80145118) # $a1, 0x8014
/* B3C868 800C56C8 24A55118 */  addiu $a1, %lo(D_80145118) # addiu $a1, $a1, 0x5118
/* B3C86C 800C56CC AFA70018 */  sw    $a3, 0x18($sp)
/* B3C870 800C56D0 0C03F570 */  jal   SystemArena_MallocDebug
/* B3C874 800C56D4 2406005D */   li    $a2, 93
/* B3C878 800C56D8 1040000D */  beqz  $v0, .L800C5710
/* B3C87C 800C56DC 8FA70018 */   lw    $a3, 0x18($sp)
/* B3C880 800C56E0 8FAE001C */  lw    $t6, 0x1c($sp)
/* B3C884 800C56E4 AC4E0008 */  sw    $t6, 8($v0)
/* B3C888 800C56E8 8CEF0010 */  lw    $t7, 0x10($a3)
/* B3C88C 800C56EC AC4F0004 */  sw    $t7, 4($v0)
/* B3C890 800C56F0 8CF80010 */  lw    $t8, 0x10($a3)
/* B3C894 800C56F4 AF020000 */  sw    $v0, ($t8)
/* B3C898 800C56F8 ACE20010 */  sw    $v0, 0x10($a3)
/* B3C89C 800C56FC AC470000 */  sw    $a3, ($v0)
/* B3C8A0 800C5700 8CF90010 */  lw    $t9, 0x10($a3)
/* B3C8A4 800C5704 24420010 */  addiu $v0, $v0, 0x10
/* B3C8A8 800C5708 10000002 */  b     .L800C5714
/* B3C8AC 800C570C ACF90004 */   sw    $t9, 4($a3)
.L800C5710:
/* B3C8B0 800C5710 00001025 */  move  $v0, $zero
.L800C5714:
/* B3C8B4 800C5714 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3C8B8 800C5718 27BD0018 */  addiu $sp, $sp, 0x18
/* B3C8BC 800C571C 03E00008 */  jr    $ra
/* B3C8C0 800C5720 00000000 */   nop   

glabel func_800C5724
/* B3C8C4 800C5724 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B3C8C8 800C5728 AFB00018 */  sw    $s0, 0x18($sp)
/* B3C8CC 800C572C 00A08025 */  move  $s0, $a1
/* B3C8D0 800C5730 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3C8D4 800C5734 10A00020 */  beqz  $a1, .L800C57B8
/* B3C8D8 800C5738 AFA40020 */   sw    $a0, 0x20($sp)
/* B3C8DC 800C573C 3C048014 */  lui   $a0, %hi(D_80145128) # $a0, 0x8014
/* B3C8E0 800C5740 8CA5FFF4 */  lw    $a1, -0xc($a1)
/* B3C8E4 800C5744 3C068014 */  lui   $a2, %hi(D_80145134) # $a2, 0x8014
/* B3C8E8 800C5748 24C65134 */  addiu $a2, %lo(D_80145134) # addiu $a2, $a2, 0x5134
/* B3C8EC 800C574C AFB00024 */  sw    $s0, 0x24($sp)
/* B3C8F0 800C5750 24845128 */  addiu $a0, %lo(D_80145128) # addiu $a0, $a0, 0x5128
/* B3C8F4 800C5754 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B3C8F8 800C5758 24070078 */   li    $a3, 120
/* B3C8FC 800C575C 8FB00024 */  lw    $s0, 0x24($sp)
/* B3C900 800C5760 3C048014 */  lui   $a0, %hi(D_80145144) # $a0, 0x8014
/* B3C904 800C5764 3C068014 */  lui   $a2, %hi(D_80145150) # $a2, 0x8014
/* B3C908 800C5768 24C65150 */  addiu $a2, %lo(D_80145150) # addiu $a2, $a2, 0x5150
/* B3C90C 800C576C 24845144 */  addiu $a0, %lo(D_80145144) # addiu $a0, $a0, 0x5144
/* B3C910 800C5770 24070079 */  li    $a3, 121
/* B3C914 800C5774 2610FFF0 */  addiu $s0, $s0, -0x10
/* B3C918 800C5778 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B3C91C 800C577C 8E050000 */   lw    $a1, ($s0)
/* B3C920 800C5780 8E0E0000 */  lw    $t6, ($s0)
/* B3C924 800C5784 8E0F0004 */  lw    $t7, 4($s0)
/* B3C928 800C5788 8FA20020 */  lw    $v0, 0x20($sp)
/* B3C92C 800C578C 3C058014 */  lui   $a1, %hi(D_80145160) # $a1, 0x8014
/* B3C930 800C5790 ADEE0000 */  sw    $t6, ($t7)
/* B3C934 800C5794 8E190000 */  lw    $t9, ($s0)
/* B3C938 800C5798 8E180004 */  lw    $t8, 4($s0)
/* B3C93C 800C579C 24A55160 */  addiu $a1, %lo(D_80145160) # addiu $a1, $a1, 0x5160
/* B3C940 800C57A0 02002025 */  move  $a0, $s0
/* B3C944 800C57A4 AF380004 */  sw    $t8, 4($t9)
/* B3C948 800C57A8 8C480004 */  lw    $t0, 4($v0)
/* B3C94C 800C57AC 2406007D */  li    $a2, 125
/* B3C950 800C57B0 0C03F5ED */  jal   SystemArena_FreeDebug
/* B3C954 800C57B4 AC480010 */   sw    $t0, 0x10($v0)
.L800C57B8:
/* B3C958 800C57B8 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3C95C 800C57BC 8FB00018 */  lw    $s0, 0x18($sp)
/* B3C960 800C57C0 27BD0020 */  addiu $sp, $sp, 0x20
/* B3C964 800C57C4 03E00008 */  jr    $ra
/* B3C968 800C57C8 00000000 */   nop   

glabel func_800C57CC
/* B3C96C 800C57CC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3C970 800C57D0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B3C974 800C57D4 AFB20020 */  sw    $s2, 0x20($sp)
/* B3C978 800C57D8 AFB1001C */  sw    $s1, 0x1c($sp)
/* B3C97C 800C57DC AFB00018 */  sw    $s0, 0x18($sp)
/* B3C980 800C57E0 8C900000 */  lw    $s0, ($a0)
/* B3C984 800C57E4 3C128014 */  lui   $s2, %hi(D_80145170) # $s2, 0x8014
/* B3C988 800C57E8 00808825 */  move  $s1, $a0
/* B3C98C 800C57EC 10900008 */  beq   $a0, $s0, .L800C5810
/* B3C990 800C57F0 26525170 */   addiu $s2, %lo(D_80145170) # addiu $s2, $s2, 0x5170
/* B3C994 800C57F4 02002025 */  move  $a0, $s0
.L800C57F8:
/* B3C998 800C57F8 8E100000 */  lw    $s0, ($s0)
/* B3C99C 800C57FC 02402825 */  move  $a1, $s2
/* B3C9A0 800C5800 0C03F5ED */  jal   SystemArena_FreeDebug
/* B3C9A4 800C5804 24060091 */   li    $a2, 145
/* B3C9A8 800C5808 5630FFFB */  bnel  $s1, $s0, .L800C57F8
/* B3C9AC 800C580C 02002025 */   move  $a0, $s0
.L800C5810:
/* B3C9B0 800C5810 AE310010 */  sw    $s1, 0x10($s1)
/* B3C9B4 800C5814 AE310000 */  sw    $s1, ($s1)
/* B3C9B8 800C5818 AE310004 */  sw    $s1, 4($s1)
/* B3C9BC 800C581C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B3C9C0 800C5820 8FB20020 */  lw    $s2, 0x20($sp)
/* B3C9C4 800C5824 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3C9C8 800C5828 8FB00018 */  lw    $s0, 0x18($sp)
/* B3C9CC 800C582C 03E00008 */  jr    $ra
/* B3C9D0 800C5830 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800C5834
/* B3C9D4 800C5834 AC840010 */  sw    $a0, 0x10($a0)
/* B3C9D8 800C5838 AC840000 */  sw    $a0, ($a0)
/* B3C9DC 800C583C 03E00008 */  jr    $ra
/* B3C9E0 800C5840 AC840004 */   sw    $a0, 4($a0)
