.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800029F0
/* 0035F0 800029F0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0035F4 800029F4 C7AE0054 */  lwc1  $f14, 0x54($sp)
/* 0035F8 800029F8 44876000 */  mtc1  $a3, $f12
/* 0035FC 800029FC AFA40040 */  sw    $a0, 0x40($sp)
/* 003600 80002A00 AFBF003C */  sw    $ra, 0x3c($sp)
/* 003604 80002A04 460E603C */  c.lt.s $f12, $f14
/* 003608 80002A08 AFA50044 */  sw    $a1, 0x44($sp)
/* 00360C 80002A0C AFA60048 */  sw    $a2, 0x48($sp)
/* 003610 80002A10 C7A4005C */  lwc1  $f4, 0x5c($sp)
/* 003614 80002A14 45010005 */  bc1t  .L80002A2C
/* 003618 80002A18 3C048001 */   lui   $a0, %hi(D_80011EF0) # $a0, 0x8001
/* 00361C 80002A1C 460C203C */  c.lt.s $f4, $f12
/* 003620 80002A20 00000000 */  nop   
/* 003624 80002A24 45020014 */  bc1fl .L80002A78
/* 003628 80002A28 8FBF003C */   lw    $ra, 0x3c($sp)
.L80002A2C:
/* 00362C 80002A2C C7AA005C */  lwc1  $f10, 0x5c($sp)
/* 003630 80002A30 8FAE0048 */  lw    $t6, 0x48($sp)
/* 003634 80002A34 8FAF0058 */  lw    $t7, 0x58($sp)
/* 003638 80002A38 460071A1 */  cvt.d.s $f6, $f14
/* 00363C 80002A3C 46006221 */  cvt.d.s $f8, $f12
/* 003640 80002A40 46005421 */  cvt.d.s $f16, $f10
/* 003644 80002A44 F7A80020 */  sdc1  $f8, 0x20($sp)
/* 003648 80002A48 F7B00030 */  sdc1  $f16, 0x30($sp)
/* 00364C 80002A4C F7A60010 */  sdc1  $f6, 0x10($sp)
/* 003650 80002A50 24841EF0 */  addiu $a0, %lo(D_80011EF0) # addiu $a0, $a0, 0x1ef0
/* 003654 80002A54 8FA50040 */  lw    $a1, 0x40($sp)
/* 003658 80002A58 8FA60044 */  lw    $a2, 0x44($sp)
/* 00365C 80002A5C 8FA70050 */  lw    $a3, 0x50($sp)
/* 003660 80002A60 E7AC004C */  swc1  $f12, 0x4c($sp)
/* 003664 80002A64 AFAE0018 */  sw    $t6, 0x18($sp)
/* 003668 80002A68 0C00084C */  jal   osSyncPrintf
/* 00366C 80002A6C AFAF0028 */   sw    $t7, 0x28($sp)
/* 003670 80002A70 C7AC004C */  lwc1  $f12, 0x4c($sp)
/* 003674 80002A74 8FBF003C */  lw    $ra, 0x3c($sp)
.L80002A78:
/* 003678 80002A78 27BD0040 */  addiu $sp, $sp, 0x40
/* 00367C 80002A7C 46006006 */  mov.s $f0, $f12
/* 003680 80002A80 03E00008 */  jr    $ra
/* 003684 80002A84 00000000 */   nop   

glabel func_80002A88
/* 003688 80002A88 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00368C 80002A8C 8FAF0044 */  lw    $t7, 0x44($sp)
/* 003690 80002A90 AFBF002C */  sw    $ra, 0x2c($sp)
/* 003694 80002A94 AFA40030 */  sw    $a0, 0x30($sp)
/* 003698 80002A98 00EF082A */  slt   $at, $a3, $t7
/* 00369C 80002A9C AFA50034 */  sw    $a1, 0x34($sp)
/* 0036A0 80002AA0 AFA60038 */  sw    $a2, 0x38($sp)
/* 0036A4 80002AA4 14200005 */  bnez  $at, .L80002ABC
/* 0036A8 80002AA8 AFA7003C */   sw    $a3, 0x3c($sp)
/* 0036AC 80002AAC 8FB8004C */  lw    $t8, 0x4c($sp)
/* 0036B0 80002AB0 0307082A */  slt   $at, $t8, $a3
/* 0036B4 80002AB4 50200012 */  beql  $at, $zero, .L80002B00
/* 0036B8 80002AB8 8FBF002C */   lw    $ra, 0x2c($sp)
.L80002ABC:
/* 0036BC 80002ABC 8FB90044 */  lw    $t9, 0x44($sp)
/* 0036C0 80002AC0 8FA80038 */  lw    $t0, 0x38($sp)
/* 0036C4 80002AC4 8FA9003C */  lw    $t1, 0x3c($sp)
/* 0036C8 80002AC8 8FAA0048 */  lw    $t2, 0x48($sp)
/* 0036CC 80002ACC 8FAB004C */  lw    $t3, 0x4c($sp)
/* 0036D0 80002AD0 3C048001 */  lui   $a0, %hi(D_80011F20) # $a0, 0x8001
/* 0036D4 80002AD4 24841F20 */  addiu $a0, %lo(D_80011F20) # addiu $a0, $a0, 0x1f20
/* 0036D8 80002AD8 8FA50030 */  lw    $a1, 0x30($sp)
/* 0036DC 80002ADC 8FA60034 */  lw    $a2, 0x34($sp)
/* 0036E0 80002AE0 8FA70040 */  lw    $a3, 0x40($sp)
/* 0036E4 80002AE4 AFB90010 */  sw    $t9, 0x10($sp)
/* 0036E8 80002AE8 AFA80014 */  sw    $t0, 0x14($sp)
/* 0036EC 80002AEC AFA90018 */  sw    $t1, 0x18($sp)
/* 0036F0 80002AF0 AFAA001C */  sw    $t2, 0x1c($sp)
/* 0036F4 80002AF4 0C00084C */  jal   osSyncPrintf
/* 0036F8 80002AF8 AFAB0020 */   sw    $t3, 0x20($sp)
/* 0036FC 80002AFC 8FBF002C */  lw    $ra, 0x2c($sp)
.L80002B00:
/* 003700 80002B00 8FA2003C */  lw    $v0, 0x3c($sp)
/* 003704 80002B04 27BD0030 */  addiu $sp, $sp, 0x30
/* 003708 80002B08 03E00008 */  jr    $ra
/* 00370C 80002B0C 00000000 */   nop   

glabel func_80002B10
/* 003710 80002B10 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 003714 80002B14 AFB00018 */  sw    $s0, 0x18($sp)
/* 003718 80002B18 00A08025 */  move  $s0, $a1
/* 00371C 80002B1C AFB20020 */  sw    $s2, 0x20($sp)
/* 003720 80002B20 00802825 */  move  $a1, $a0
/* 003724 80002B24 AFA40058 */  sw    $a0, 0x58($sp)
/* 003728 80002B28 00809025 */  move  $s2, $a0
/* 00372C 80002B2C AFBF003C */  sw    $ra, 0x3c($sp)
/* 003730 80002B30 AFBE0038 */  sw    $fp, 0x38($sp)
/* 003734 80002B34 3C048001 */  lui   $a0, %hi(D_80011F50) # $a0, 0x8001
/* 003738 80002B38 AFB70034 */  sw    $s7, 0x34($sp)
/* 00373C 80002B3C AFB60030 */  sw    $s6, 0x30($sp)
/* 003740 80002B40 AFB5002C */  sw    $s5, 0x2c($sp)
/* 003744 80002B44 AFB40028 */  sw    $s4, 0x28($sp)
/* 003748 80002B48 AFB30024 */  sw    $s3, 0x24($sp)
/* 00374C 80002B4C AFB1001C */  sw    $s1, 0x1c($sp)
/* 003750 80002B50 0200F025 */  move  $fp, $s0
/* 003754 80002B54 24841F50 */  addiu $a0, %lo(D_80011F50) # addiu $a0, $a0, 0x1f50
/* 003758 80002B58 0C00084C */  jal   osSyncPrintf
/* 00375C 80002B5C 02003025 */   move  $a2, $s0
/* 003760 80002B60 3C048001 */  lui   $a0, %hi(D_80011F60) # $a0, 0x8001
/* 003764 80002B64 0C00084C */  jal   osSyncPrintf
/* 003768 80002B68 24841F60 */   addiu $a0, %lo(D_80011F60) # addiu $a0, $a0, 0x1f60
/* 00376C 80002B6C 1A000045 */  blez  $s0, .L80002C84
/* 003770 80002B70 3C178001 */   lui   $s7, %hi(D_80011FC8) # $s7, 0x8001
/* 003774 80002B74 3C168001 */  lui   $s6, %hi(D_80011FD4) # $s6, 0x8001
/* 003778 80002B78 3C148001 */  lui   $s4, %hi(D_80011FD0) # $s4, 0x8001
/* 00377C 80002B7C 3C138001 */  lui   $s3, %hi(D_80011FC0) # $s3, 0x8001
/* 003780 80002B80 26731FC0 */  addiu $s3, %lo(D_80011FC0) # addiu $s3, $s3, 0x1fc0
/* 003784 80002B84 26941FD0 */  addiu $s4, %lo(D_80011FD0) # addiu $s4, $s4, 0x1fd0
/* 003788 80002B88 26D61FD4 */  addiu $s6, %lo(D_80011FD4) # addiu $s6, $s6, 0x1fd4
/* 00378C 80002B8C AFA00044 */  sw    $zero, 0x44($sp)
/* 003790 80002B90 26F71FC8 */  addiu $s7, %lo(D_80011FC8) # addiu $s7, $s7, 0x1fc8
/* 003794 80002B94 24150010 */  li    $s5, 16
.L80002B98:
/* 003798 80002B98 3C048001 */  lui   $a0, %hi(D_80011FB4) # $a0, 0x8001
/* 00379C 80002B9C 8FA60044 */  lw    $a2, 0x44($sp)
/* 0037A0 80002BA0 24841FB4 */  addiu $a0, %lo(D_80011FB4) # addiu $a0, $a0, 0x1fb4
/* 0037A4 80002BA4 0C00084C */  jal   osSyncPrintf
/* 0037A8 80002BA8 02402825 */   move  $a1, $s2
/* 0037AC 80002BAC 2BC10010 */  slti  $at, $fp, 0x10
/* 0037B0 80002BB0 10200003 */  beqz  $at, .L80002BC0
/* 0037B4 80002BB4 00008025 */   move  $s0, $zero
/* 0037B8 80002BB8 10000002 */  b     .L80002BC4
/* 0037BC 80002BBC 03C08825 */   move  $s1, $fp
.L80002BC0:
/* 0037C0 80002BC0 02A08825 */  move  $s1, $s5
.L80002BC4:
/* 0037C4 80002BC4 0211082A */  slt   $at, $s0, $s1
.L80002BC8:
/* 0037C8 80002BC8 10200006 */  beqz  $at, .L80002BE4
/* 0037CC 80002BCC 02602025 */   move  $a0, $s3
/* 0037D0 80002BD0 02507021 */  addu  $t6, $s2, $s0
/* 0037D4 80002BD4 0C00084C */  jal   osSyncPrintf
/* 0037D8 80002BD8 91C50000 */   lbu   $a1, ($t6)
/* 0037DC 80002BDC 10000004 */  b     .L80002BF0
/* 0037E0 80002BE0 26100001 */   addiu $s0, $s0, 1
.L80002BE4:
/* 0037E4 80002BE4 0C00084C */  jal   osSyncPrintf
/* 0037E8 80002BE8 02E02025 */   move  $a0, $s7
/* 0037EC 80002BEC 26100001 */  addiu $s0, $s0, 1
.L80002BF0:
/* 0037F0 80002BF0 2A010010 */  slti  $at, $s0, 0x10
/* 0037F4 80002BF4 5420FFF4 */  bnezl $at, .L80002BC8
/* 0037F8 80002BF8 0211082A */   slt   $at, $s0, $s1
/* 0037FC 80002BFC 3C048001 */  lui   $a0, %hi(D_80011FCC) # $a0, 0x8001
/* 003800 80002C00 0C00084C */  jal   osSyncPrintf
/* 003804 80002C04 24841FCC */   addiu $a0, %lo(D_80011FCC) # addiu $a0, $a0, 0x1fcc
/* 003808 80002C08 00008025 */  move  $s0, $zero
/* 00380C 80002C0C 0211082A */  slt   $at, $s0, $s1
.L80002C10:
/* 003810 80002C10 1020000E */  beqz  $at, .L80002C4C
/* 003814 80002C14 02507821 */   addu  $t7, $s2, $s0
/* 003818 80002C18 91E20000 */  lbu   $v0, ($t7)
/* 00381C 80002C1C 2405002E */  li    $a1, 46
/* 003820 80002C20 28410020 */  slti  $at, $v0, 0x20
/* 003824 80002C24 14200005 */  bnez  $at, .L80002C3C
/* 003828 80002C28 2841007F */   slti  $at, $v0, 0x7f
/* 00382C 80002C2C 10200003 */  beqz  $at, .L80002C3C
/* 003830 80002C30 00000000 */   nop   
/* 003834 80002C34 10000001 */  b     .L80002C3C
/* 003838 80002C38 00402825 */   move  $a1, $v0
.L80002C3C:
/* 00383C 80002C3C 0C00084C */  jal   osSyncPrintf
/* 003840 80002C40 02802025 */   move  $a0, $s4
/* 003844 80002C44 10000004 */  b     .L80002C58
/* 003848 80002C48 26100001 */   addiu $s0, $s0, 1
.L80002C4C:
/* 00384C 80002C4C 0C00084C */  jal   osSyncPrintf
/* 003850 80002C50 02C02025 */   move  $a0, $s6
/* 003854 80002C54 26100001 */  addiu $s0, $s0, 1
.L80002C58:
/* 003858 80002C58 5615FFED */  bnel  $s0, $s5, .L80002C10
/* 00385C 80002C5C 0211082A */   slt   $at, $s0, $s1
/* 003860 80002C60 3C048001 */  lui   $a0, %hi(D_80011FD8) # $a0, 0x8001
/* 003864 80002C64 0C00084C */  jal   osSyncPrintf
/* 003868 80002C68 24841FD8 */   addiu $a0, %lo(D_80011FD8) # addiu $a0, $a0, 0x1fd8
/* 00386C 80002C6C 8FB80044 */  lw    $t8, 0x44($sp)
/* 003870 80002C70 03D1F023 */  subu  $fp, $fp, $s1
/* 003874 80002C74 02519021 */  addu  $s2, $s2, $s1
/* 003878 80002C78 0311C821 */  addu  $t9, $t8, $s1
/* 00387C 80002C7C 1FC0FFC6 */  bgtz  $fp, .L80002B98
/* 003880 80002C80 AFB90044 */   sw    $t9, 0x44($sp)
.L80002C84:
/* 003884 80002C84 8FBF003C */  lw    $ra, 0x3c($sp)
/* 003888 80002C88 8FB00018 */  lw    $s0, 0x18($sp)
/* 00388C 80002C8C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 003890 80002C90 8FB20020 */  lw    $s2, 0x20($sp)
/* 003894 80002C94 8FB30024 */  lw    $s3, 0x24($sp)
/* 003898 80002C98 8FB40028 */  lw    $s4, 0x28($sp)
/* 00389C 80002C9C 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0038A0 80002CA0 8FB60030 */  lw    $s6, 0x30($sp)
/* 0038A4 80002CA4 8FB70034 */  lw    $s7, 0x34($sp)
/* 0038A8 80002CA8 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0038AC 80002CAC 03E00008 */  jr    $ra
/* 0038B0 80002CB0 27BD0058 */   addiu $sp, $sp, 0x58

glabel func_80002CB4
/* 0038B4 80002CB4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0038B8 80002CB8 AFA40028 */  sw    $a0, 0x28($sp)
/* 0038BC 80002CBC AFA5002C */  sw    $a1, 0x2c($sp)
/* 0038C0 80002CC0 AFA60030 */  sw    $a2, 0x30($sp)
/* 0038C4 80002CC4 8FB80030 */  lw    $t8, 0x30($sp)
/* 0038C8 80002CC8 8FAF002C */  lw    $t7, 0x2c($sp)
/* 0038CC 80002CCC 8FAE0028 */  lw    $t6, 0x28($sp)
/* 0038D0 80002CD0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0038D4 80002CD4 3C048001 */  lui   $a0, %hi(D_80011FDC) # $a0, 0x8001
/* 0038D8 80002CD8 24841FDC */  addiu $a0, %lo(D_80011FDC) # addiu $a0, $a0, 0x1fdc
/* 0038DC 80002CDC 8FA6003C */  lw    $a2, 0x3c($sp)
/* 0038E0 80002CE0 8FA50038 */  lw    $a1, 0x38($sp)
/* 0038E4 80002CE4 AFB80018 */  sw    $t8, 0x18($sp)
/* 0038E8 80002CE8 AFAF0014 */  sw    $t7, 0x14($sp)
/* 0038EC 80002CEC 0C00084C */  jal   osSyncPrintf
/* 0038F0 80002CF0 AFAE0010 */   sw    $t6, 0x10($sp)
/* 0038F4 80002CF4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0038F8 80002CF8 27BD0028 */  addiu $sp, $sp, 0x28
/* 0038FC 80002CFC 03E00008 */  jr    $ra
/* 003900 80002D00 00000000 */   nop   

glabel func_80002D04
/* 003904 80002D04 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 003908 80002D08 24D8FFFF */  addiu $t8, $a2, -1
/* 00390C 80002D0C 00B8C824 */  and   $t9, $a1, $t8
/* 003910 80002D10 AFBF001C */  sw    $ra, 0x1c($sp)
/* 003914 80002D14 AFA40020 */  sw    $a0, 0x20($sp)
/* 003918 80002D18 AFA50024 */  sw    $a1, 0x24($sp)
/* 00391C 80002D1C AFA60028 */  sw    $a2, 0x28($sp)
/* 003920 80002D20 AFA7002C */  sw    $a3, 0x2c($sp)
/* 003924 80002D24 1320000A */  beqz  $t9, .L80002D50
/* 003928 80002D28 00C07825 */   move  $t7, $a2
/* 00392C 80002D2C 8FA80024 */  lw    $t0, 0x24($sp)
/* 003930 80002D30 3C048001 */  lui   $a0, %hi(D_80012008) # $a0, 0x8001
/* 003934 80002D34 00E02825 */  move  $a1, $a3
/* 003938 80002D38 8FA70020 */  lw    $a3, 0x20($sp)
/* 00393C 80002D3C 24842008 */  addiu $a0, %lo(D_80012008) # addiu $a0, $a0, 0x2008
/* 003940 80002D40 8FA60030 */  lw    $a2, 0x30($sp)
/* 003944 80002D44 AFAF0014 */  sw    $t7, 0x14($sp)
/* 003948 80002D48 0C00084C */  jal   osSyncPrintf
/* 00394C 80002D4C AFA80010 */   sw    $t0, 0x10($sp)
.L80002D50:
/* 003950 80002D50 8FBF001C */  lw    $ra, 0x1c($sp)
/* 003954 80002D54 27BD0020 */  addiu $sp, $sp, 0x20
/* 003958 80002D58 03E00008 */  jr    $ra
/* 00395C 80002D5C 00000000 */   nop   

glabel NullPointerCheck
/* 003960 80002D60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 003964 80002D64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 003968 80002D68 AFA40018 */  sw    $a0, 0x18($sp)
/* 00396C 80002D6C AFA60020 */  sw    $a2, 0x20($sp)
/* 003970 80002D70 14A00007 */  bnez  $a1, .L80002D90
/* 003974 80002D74 AFA70024 */   sw    $a3, 0x24($sp)
/* 003978 80002D78 00C02825 */  move  $a1, $a2
/* 00397C 80002D7C 00E03025 */  move  $a2, $a3
/* 003980 80002D80 3C048001 */  lui   $a0, %hi(D_80012040) # $a0, 0x8001
/* 003984 80002D84 24842040 */  addiu $a0, %lo(D_80012040) # addiu $a0, $a0, 0x2040
/* 003988 80002D88 0C00084C */  jal   osSyncPrintf
/* 00398C 80002D8C 8FA70018 */   lw    $a3, 0x18($sp)
.L80002D90:
/* 003990 80002D90 8FBF0014 */  lw    $ra, 0x14($sp)
/* 003994 80002D94 27BD0018 */  addiu $sp, $sp, 0x18
/* 003998 80002D98 03E00008 */  jr    $ra
/* 00399C 80002D9C 00000000 */   nop   

glabel func_80002DA0
/* 0039A0 80002DA0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0039A4 80002DA4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0039A8 80002DA8 AFA40020 */  sw    $a0, 0x20($sp)
/* 0039AC 80002DAC AFA50024 */  sw    $a1, 0x24($sp)
/* 0039B0 80002DB0 AFA60028 */  sw    $a2, 0x28($sp)
/* 0039B4 80002DB4 10A0000A */  beqz  $a1, .L80002DE0
/* 0039B8 80002DB8 AFA7002C */   sw    $a3, 0x2c($sp)
/* 0039BC 80002DBC 3C028000 */  lui   $v0, 0x8000
/* 0039C0 80002DC0 00A2082B */  sltu  $at, $a1, $v0
/* 0039C4 80002DC4 14200006 */  bnez  $at, .L80002DE0
/* 0039C8 80002DC8 3C188000 */   lui   $t8, %hi(D_80000318) # $t8, 0x8000
/* 0039CC 80002DCC 8F180318 */  lw    $t8, %lo(D_80000318)($t8)
/* 0039D0 80002DD0 0302C821 */  addu  $t9, $t8, $v0
/* 0039D4 80002DD4 00B9082B */  sltu  $at, $a1, $t9
/* 0039D8 80002DD8 5420000A */  bnezl $at, .L80002E04
/* 0039DC 80002DDC 8FBF001C */   lw    $ra, 0x1c($sp)
.L80002DE0:
/* 0039E0 80002DE0 8FA80024 */  lw    $t0, 0x24($sp)
/* 0039E4 80002DE4 3C048001 */  lui   $a0, %hi(D_8001206C) # $a0, 0x8001
/* 0039E8 80002DE8 2484206C */  addiu $a0, %lo(D_8001206C) # addiu $a0, $a0, 0x206c
/* 0039EC 80002DEC 8FA50028 */  lw    $a1, 0x28($sp)
/* 0039F0 80002DF0 8FA6002C */  lw    $a2, 0x2c($sp)
/* 0039F4 80002DF4 8FA70020 */  lw    $a3, 0x20($sp)
/* 0039F8 80002DF8 0C00084C */  jal   osSyncPrintf
/* 0039FC 80002DFC AFA80010 */   sw    $t0, 0x10($sp)
/* 003A00 80002E00 8FBF001C */  lw    $ra, 0x1c($sp)
.L80002E04:
/* 003A04 80002E04 27BD0020 */  addiu $sp, $sp, 0x20
/* 003A08 80002E08 03E00008 */  jr    $ra
/* 003A0C 80002E0C 00000000 */   nop   

glabel SyncPrintfWithThreadId
/* 003A10 80002E10 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 003A14 80002E14 AFBF0014 */  sw    $ra, 0x14($sp)
/* 003A18 80002E18 AFA40018 */  sw    $a0, 0x18($sp)
/* 003A1C 80002E1C AFA5001C */  sw    $a1, 0x1c($sp)
/* 003A20 80002E20 0C0013C8 */  jal   osGetThreadId
/* 003A24 80002E24 00002025 */   move  $a0, $zero
/* 003A28 80002E28 3C048001 */  lui   $a0, %hi(D_8001209C) # $a0, 0x8001
/* 003A2C 80002E2C 2484209C */  addiu $a0, %lo(D_8001209C) # addiu $a0, $a0, 0x209c
/* 003A30 80002E30 00402825 */  move  $a1, $v0
/* 003A34 80002E34 8FA60018 */  lw    $a2, 0x18($sp)
/* 003A38 80002E38 0C00084C */  jal   osSyncPrintf
/* 003A3C 80002E3C 8FA7001C */   lw    $a3, 0x1c($sp)
/* 003A40 80002E40 8FBF0014 */  lw    $ra, 0x14($sp)
/* 003A44 80002E44 27BD0018 */  addiu $sp, $sp, 0x18
/* 003A48 80002E48 03E00008 */  jr    $ra
/* 003A4C 80002E4C 00000000 */   nop   

glabel func_80002E50
/* 003A50 80002E50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 003A54 80002E54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 003A58 80002E58 AFA40018 */  sw    $a0, 0x18($sp)
/* 003A5C 80002E5C AFA5001C */  sw    $a1, 0x1c($sp)
/* 003A60 80002E60 0C0013C8 */  jal   osGetThreadId
/* 003A64 80002E64 00002025 */   move  $a0, $zero
/* 003A68 80002E68 3C048001 */  lui   $a0, %hi(D_800120A8) # $a0, 0x8001
/* 003A6C 80002E6C 248420A8 */  addiu $a0, %lo(D_800120A8) # addiu $a0, $a0, 0x20a8
/* 003A70 80002E70 00402825 */  move  $a1, $v0
/* 003A74 80002E74 8FA60018 */  lw    $a2, 0x18($sp)
/* 003A78 80002E78 0C00084C */  jal   osSyncPrintf
/* 003A7C 80002E7C 8FA7001C */   lw    $a3, 0x1c($sp)
/* 003A80 80002E80 8FA40018 */  lw    $a0, 0x18($sp)
/* 003A84 80002E84 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* 003A88 80002E88 8FA5001C */   lw    $a1, 0x1c($sp)
/* 003A8C 80002E8C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 003A90 80002E90 27BD0018 */  addiu $sp, $sp, 0x18
/* 003A94 80002E94 03E00008 */  jr    $ra
/* 003A98 80002E98 00000000 */   nop   

glabel func_80002E9C
/* 003A9C 80002E9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 003AA0 80002EA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 003AA4 80002EA4 3C048001 */  lui   $a0, %hi(D_800120D0) # $a0, 0x8001
/* 003AA8 80002EA8 0C00084C */  jal   osSyncPrintf
/* 003AAC 80002EAC 248420D0 */   addiu $a0, %lo(D_800120D0) # addiu $a0, $a0, 0x20d0
/* 003AB0 80002EB0 3C048001 */  lui   $a0, %hi(D_800120E0) # $a0, 0x8001
/* 003AB4 80002EB4 248420E0 */  addiu $a0, %lo(D_800120E0) # addiu $a0, $a0, 0x20e0
/* 003AB8 80002EB8 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* 003ABC 80002EBC 00002825 */   move  $a1, $zero
/* 003AC0 80002EC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 003AC4 80002EC4 27BD0018 */  addiu $sp, $sp, 0x18
/* 003AC8 80002EC8 03E00008 */  jr    $ra
/* 003ACC 80002ECC 00000000 */   nop   

glabel func_80002ED0
/* 003AD0 80002ED0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 003AD4 80002ED4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 003AD8 80002ED8 0C001846 */  jal   func_80006118
/* 003ADC 80002EDC AFA60020 */   sw    $a2, 0x20($sp)
/* 003AE0 80002EE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 003AE4 80002EE4 8FAE0020 */  lw    $t6, 0x20($sp)
/* 003AE8 80002EE8 27BD0018 */  addiu $sp, $sp, 0x18
/* 003AEC 80002EEC 03E00008 */  jr    $ra
/* 003AF0 80002EF0 004E1021 */   addu  $v0, $v0, $t6

glabel func_80002EF4
/* 003AF4 80002EF4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 003AF8 80002EF8 AFA40018 */  sw    $a0, 0x18($sp)
/* 003AFC 80002EFC 00C03825 */  move  $a3, $a2
/* 003B00 80002F00 00A03025 */  move  $a2, $a1
/* 003B04 80002F04 AFBF0014 */  sw    $ra, 0x14($sp)
/* 003B08 80002F08 AFA5001C */  sw    $a1, 0x1c($sp)
/* 003B0C 80002F0C 3C048000 */  lui   $a0, %hi(func_80002ED0) # $a0, 0x8000
/* 003B10 80002F10 24842ED0 */  addiu $a0, %lo(func_80002ED0) # addiu $a0, $a0, 0x2ed0
/* 003B14 80002F14 0C0014B8 */  jal   func_800052E0
/* 003B18 80002F18 8FA50018 */   lw    $a1, 0x18($sp)
/* 003B1C 80002F1C 04400004 */  bltz  $v0, .L80002F30
/* 003B20 80002F20 00401825 */   move  $v1, $v0
/* 003B24 80002F24 8FAE0018 */  lw    $t6, 0x18($sp)
/* 003B28 80002F28 01C27821 */  addu  $t7, $t6, $v0
/* 003B2C 80002F2C A1E00000 */  sb    $zero, ($t7)
.L80002F30:
/* 003B30 80002F30 8FBF0014 */  lw    $ra, 0x14($sp)
/* 003B34 80002F34 27BD0018 */  addiu $sp, $sp, 0x18
/* 003B38 80002F38 00601025 */  move  $v0, $v1
/* 003B3C 80002F3C 03E00008 */  jr    $ra
/* 003B40 80002F40 00000000 */   nop   

glabel func_80002F44
/* 003B44 80002F44 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 003B48 80002F48 AFA40020 */  sw    $a0, 0x20($sp)
/* 003B4C 80002F4C AFBF0014 */  sw    $ra, 0x14($sp)
/* 003B50 80002F50 AFA50024 */  sw    $a1, 0x24($sp)
/* 003B54 80002F54 AFA60028 */  sw    $a2, 0x28($sp)
/* 003B58 80002F58 AFA7002C */  sw    $a3, 0x2c($sp)
/* 003B5C 80002F5C 3C048000 */  lui   $a0, %hi(func_80002ED0) # $a0, 0x8000
/* 003B60 80002F60 24842ED0 */  addiu $a0, %lo(func_80002ED0) # addiu $a0, $a0, 0x2ed0
/* 003B64 80002F64 27A70028 */  addiu $a3, $sp, 0x28
/* 003B68 80002F68 8FA60024 */  lw    $a2, 0x24($sp)
/* 003B6C 80002F6C 0C0014B8 */  jal   func_800052E0
/* 003B70 80002F70 8FA50020 */   lw    $a1, 0x20($sp)
/* 003B74 80002F74 04400004 */  bltz  $v0, .L80002F88
/* 003B78 80002F78 00401825 */   move  $v1, $v0
/* 003B7C 80002F7C 8FAE0020 */  lw    $t6, 0x20($sp)
/* 003B80 80002F80 01C27821 */  addu  $t7, $t6, $v0
/* 003B84 80002F84 A1E00000 */  sb    $zero, ($t7)
.L80002F88:
/* 003B88 80002F88 8FBF0014 */  lw    $ra, 0x14($sp)
/* 003B8C 80002F8C 27BD0020 */  addiu $sp, $sp, 0x20
/* 003B90 80002F90 00601025 */  move  $v0, $v1
/* 003B94 80002F94 03E00008 */  jr    $ra
/* 003B98 80002F98 00000000 */   nop   
