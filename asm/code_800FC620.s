.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800FC620
/* B737C0 800FC620 3C028013 */  lui   $v0, %hi(D_80133BC0) # $v0, 0x8013
/* B737C4 800FC624 8C423BC0 */  lw    $v0, %lo(D_80133BC0)($v0)
/* B737C8 800FC628 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B737CC 800FC62C AFB00020 */  sw    $s0, 0x20($sp)
/* B737D0 800FC630 28410003 */  slti  $at, $v0, 3
/* B737D4 800FC634 00808025 */  move  $s0, $a0
/* B737D8 800FC638 AFBF0024 */  sw    $ra, 0x24($sp)
/* B737DC 800FC63C AFA50054 */  sw    $a1, 0x54($sp)
/* B737E0 800FC640 AFA60058 */  sw    $a2, 0x58($sp)
/* B737E4 800FC644 14200006 */  bnez  $at, .L800FC660
/* B737E8 800FC648 AFA7005C */   sw    $a3, 0x5c($sp)
/* B737EC 800FC64C 3C048015 */  lui   $a0, %hi(D_8014A980) # $a0, 0x8015
/* B737F0 800FC650 0C00084C */  jal   osSyncPrintf
/* B737F4 800FC654 2484A980 */   addiu $a0, %lo(D_8014A980) # addiu $a0, $a0, -0x5680
/* B737F8 800FC658 3C028013 */  lui   $v0, %hi(D_80133BC0) # $v0, 0x8013
/* B737FC 800FC65C 8C423BC0 */  lw    $v0, %lo(D_80133BC0)($v0)
.L800FC660:
/* B73800 800FC660 28410003 */  slti  $at, $v0, 3
/* B73804 800FC664 54200009 */  bnezl $at, .L800FC68C
/* B73808 800FC668 8FB80054 */   lw    $t8, 0x54($sp)
/* B7380C 800FC66C 8FAE0054 */  lw    $t6, 0x54($sp)
/* B73810 800FC670 8FA50060 */  lw    $a1, 0x60($sp)
/* B73814 800FC674 3C048015 */  lui   $a0, %hi(D_8014A9B8) # $a0, 0x8015
/* B73818 800FC678 01D07823 */  subu  $t7, $t6, $s0
/* B7381C 800FC67C 2484A9B8 */  addiu $a0, %lo(D_8014A9B8) # addiu $a0, $a0, -0x5648
/* B73820 800FC680 0C00084C */  jal   osSyncPrintf
/* B73824 800FC684 00AF3021 */   addu  $a2, $a1, $t7
/* B73828 800FC688 8FB80054 */  lw    $t8, 0x54($sp)
.L800FC68C:
/* B7382C 800FC68C 8FA40060 */  lw    $a0, 0x60($sp)
/* B73830 800FC690 02002825 */  move  $a1, $s0
/* B73834 800FC694 03103023 */  subu  $a2, $t8, $s0
/* B73838 800FC698 0086C821 */  addu  $t9, $a0, $a2
/* B7383C 800FC69C 0C0005F0 */  jal   DmaMgr_SendRequest0
/* B73840 800FC6A0 AFB9002C */   sw    $t9, 0x2c($sp)
/* B73844 800FC6A4 3C028013 */  lui   $v0, %hi(D_80133BC0) # $v0, 0x8013
/* B73848 800FC6A8 8C423BC0 */  lw    $v0, %lo(D_80133BC0)($v0)
/* B7384C 800FC6AC 8FA8002C */  lw    $t0, 0x2c($sp)
/* B73850 800FC6B0 3C048015 */  lui   $a0, %hi(D_8014A9EC) # $a0, 0x8015
/* B73854 800FC6B4 28410003 */  slti  $at, $v0, 3
/* B73858 800FC6B8 1420000D */  bnez  $at, .L800FC6F0
/* B7385C 800FC6BC 8D03FFFC */   lw    $v1, -4($t0)
/* B73860 800FC6C0 01038023 */  subu  $s0, $t0, $v1
/* B73864 800FC6C4 8E09000C */  lw    $t1, 0xc($s0)
/* B73868 800FC6C8 8E050000 */  lw    $a1, ($s0)
/* B7386C 800FC6CC 8E060004 */  lw    $a2, 4($s0)
/* B73870 800FC6D0 8E070008 */  lw    $a3, 8($s0)
/* B73874 800FC6D4 AFA30038 */  sw    $v1, 0x38($sp)
/* B73878 800FC6D8 2484A9EC */  addiu $a0, %lo(D_8014A9EC) # addiu $a0, $a0, -0x5614
/* B7387C 800FC6DC 0C00084C */  jal   osSyncPrintf
/* B73880 800FC6E0 AFA90010 */   sw    $t1, 0x10($sp)
/* B73884 800FC6E4 3C028013 */  lui   $v0, %hi(D_80133BC0) # $v0, 0x8013
/* B73888 800FC6E8 8C423BC0 */  lw    $v0, %lo(D_80133BC0)($v0)
/* B7388C 800FC6EC 8FA30038 */  lw    $v1, 0x38($sp)
.L800FC6F0:
/* B73890 800FC6F0 8FAA002C */  lw    $t2, 0x2c($sp)
/* B73894 800FC6F4 28410003 */  slti  $at, $v0, 3
/* B73898 800FC6F8 14200004 */  bnez  $at, .L800FC70C
/* B7389C 800FC6FC 01438023 */   subu  $s0, $t2, $v1
/* B738A0 800FC700 3C048015 */  lui   $a0, %hi(D_8014AA20) # $a0, 0x8015
/* B738A4 800FC704 0C00084C */  jal   osSyncPrintf
/* B738A8 800FC708 2484AA20 */   addiu $a0, %lo(D_8014AA20) # addiu $a0, $a0, -0x55e0
.L800FC70C:
/* B738AC 800FC70C 8FA40060 */  lw    $a0, 0x60($sp)
/* B738B0 800FC710 02002825 */  move  $a1, $s0
/* B738B4 800FC714 0C03F0B0 */  jal   func_800FC2C0
/* B738B8 800FC718 8FA60058 */   lw    $a2, 0x58($sp)
/* B738BC 800FC71C 8E02000C */  lw    $v0, 0xc($s0)
/* B738C0 800FC720 3C0B8013 */  lui   $t3, %hi(D_80133BC0) # $t3, 0x8013
/* B738C4 800FC724 5040000E */  beql  $v0, $zero, .L800FC760
/* B738C8 800FC728 8E0D0010 */   lw    $t5, 0x10($s0)
/* B738CC 800FC72C 8D6B3BC0 */  lw    $t3, %lo(D_80133BC0)($t3)
/* B738D0 800FC730 8FA5002C */  lw    $a1, 0x2c($sp)
/* B738D4 800FC734 3C048015 */  lui   $a0, %hi(D_8014AA38) # $a0, 0x8015
/* B738D8 800FC738 29610003 */  slti  $at, $t3, 3
/* B738DC 800FC73C 14200004 */  bnez  $at, .L800FC750
/* B738E0 800FC740 00453021 */   addu  $a2, $v0, $a1
/* B738E4 800FC744 0C00084C */  jal   osSyncPrintf
/* B738E8 800FC748 2484AA38 */   addiu $a0, %lo(D_8014AA38) # addiu $a0, $a0, -0x55c8
/* B738EC 800FC74C 8E02000C */  lw    $v0, 0xc($s0)
.L800FC750:
/* B738F0 800FC750 8FA4002C */  lw    $a0, 0x2c($sp)
/* B738F4 800FC754 0C001114 */  jal   bzero
/* B738F8 800FC758 00402825 */   move  $a1, $v0
/* B738FC 800FC75C 8E0D0010 */  lw    $t5, 0x10($s0)
.L800FC760:
/* B73900 800FC760 3C188013 */  lui   $t8, %hi(D_80133BC0) # $t8, 0x8013
/* B73904 800FC764 8F183BC0 */  lw    $t8, %lo(D_80133BC0)($t8)
/* B73908 800FC768 000D7080 */  sll   $t6, $t5, 2
/* B7390C 800FC76C 020E7821 */  addu  $t7, $s0, $t6
/* B73910 800FC770 01F03823 */  subu  $a3, $t7, $s0
/* B73914 800FC774 2B010003 */  slti  $at, $t8, 3
/* B73918 800FC778 14200008 */  bnez  $at, .L800FC79C
/* B7391C 800FC77C 24E70014 */   addiu $a3, $a3, 0x14
/* B73920 800FC780 3C048015 */  lui   $a0, %hi(D_8014AA5C) # $a0, 0x8015
/* B73924 800FC784 2484AA5C */  addiu $a0, %lo(D_8014AA5C) # addiu $a0, $a0, -0x55a4
/* B73928 800FC788 02002825 */  move  $a1, $s0
/* B7392C 800FC78C 02073021 */  addu  $a2, $s0, $a3
/* B73930 800FC790 0C00084C */  jal   osSyncPrintf
/* B73934 800FC794 AFA70034 */   sw    $a3, 0x34($sp)
/* B73938 800FC798 8FA70034 */  lw    $a3, 0x34($sp)
.L800FC79C:
/* B7393C 800FC79C 02002025 */  move  $a0, $s0
/* B73940 800FC7A0 0C001114 */  jal   bzero
/* B73944 800FC7A4 00E02825 */   move  $a1, $a3
/* B73948 800FC7A8 8FB9005C */  lw    $t9, 0x5c($sp)
/* B7394C 800FC7AC 8FA80058 */  lw    $t0, 0x58($sp)
/* B73950 800FC7B0 8FA40060 */  lw    $a0, 0x60($sp)
/* B73954 800FC7B4 03288023 */  subu  $s0, $t9, $t0
/* B73958 800FC7B8 0C0011B0 */  jal   osWritebackDCache
/* B7395C 800FC7BC 02002825 */   move  $a1, $s0
/* B73960 800FC7C0 8FA40060 */  lw    $a0, 0x60($sp)
/* B73964 800FC7C4 0C001854 */  jal   osInvalICache
/* B73968 800FC7C8 02002825 */   move  $a1, $s0
/* B7396C 800FC7CC 3C098013 */  lui   $t1, %hi(D_80133BC0) # $t1, 0x8013
/* B73970 800FC7D0 8D293BC0 */  lw    $t1, %lo(D_80133BC0)($t1)
/* B73974 800FC7D4 3C048015 */  lui   $a0, %hi(D_8014AA80) # $a0, 0x8015
/* B73978 800FC7D8 29210003 */  slti  $at, $t1, 3
/* B7397C 800FC7DC 54200004 */  bnezl $at, .L800FC7F0
/* B73980 800FC7E0 8FBF0024 */   lw    $ra, 0x24($sp)
/* B73984 800FC7E4 0C00084C */  jal   osSyncPrintf
/* B73988 800FC7E8 2484AA80 */   addiu $a0, %lo(D_8014AA80) # addiu $a0, $a0, -0x5580
/* B7398C 800FC7EC 8FBF0024 */  lw    $ra, 0x24($sp)
.L800FC7F0:
/* B73990 800FC7F0 02001025 */  move  $v0, $s0
/* B73994 800FC7F4 8FB00020 */  lw    $s0, 0x20($sp)
/* B73998 800FC7F8 03E00008 */  jr    $ra
/* B7399C 800FC7FC 27BD0050 */   addiu $sp, $sp, 0x50

glabel func_800FC800
/* B739A0 800FC800 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B739A4 800FC804 AFBF0014 */  sw    $ra, 0x14($sp)
/* B739A8 800FC808 14800002 */  bnez  $a0, .L800FC814
/* B739AC 800FC80C 00802825 */   move  $a1, $a0
/* B739B0 800FC810 24050001 */  li    $a1, 1
.L800FC814:
/* B739B4 800FC814 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B739B8 800FC818 3C068013 */  lui   $a2, %hi(D_80134484) # $a2, 0x8013
/* B739BC 800FC81C 24C64484 */  addiu $a2, %lo(D_80134484) # addiu $a2, $a2, 0x4484
/* B739C0 800FC820 24845610 */  addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B739C4 800FC824 0C03F851 */  jal   func_800FE144
/* B739C8 800FC828 00003825 */   move  $a3, $zero
/* B739CC 800FC82C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B739D0 800FC830 27BD0018 */  addiu $sp, $sp, 0x18
/* B739D4 800FC834 03E00008 */  jr    $ra
/* B739D8 800FC838 00000000 */   nop   

glabel func_800FC83C
/* B739DC 800FC83C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B739E0 800FC840 AFBF0014 */  sw    $ra, 0x14($sp)
/* B739E4 800FC844 10800004 */  beqz  $a0, .L800FC858
/* B739E8 800FC848 00802825 */   move  $a1, $a0
/* B739EC 800FC84C 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B739F0 800FC850 0C03F9F9 */  jal   func_800FE7E4
/* B739F4 800FC854 24845610 */   addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
.L800FC858:
/* B739F8 800FC858 8FBF0014 */  lw    $ra, 0x14($sp)
/* B739FC 800FC85C 27BD0018 */  addiu $sp, $sp, 0x18
/* B73A00 800FC860 03E00008 */  jr    $ra
/* B73A04 800FC864 00000000 */   nop   

glabel func_800FC868
/* B73A08 800FC868 00A60019 */  multu $a1, $a2
/* B73A0C 800FC86C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B73A10 800FC870 AFB10018 */  sw    $s1, 0x18($sp)
/* B73A14 800FC874 AFB30020 */  sw    $s3, 0x20($sp)
/* B73A18 800FC878 AFB2001C */  sw    $s2, 0x1c($sp)
/* B73A1C 800FC87C AFB00014 */  sw    $s0, 0x14($sp)
/* B73A20 800FC880 00E09825 */  move  $s3, $a3
/* B73A24 800FC884 AFBF0024 */  sw    $ra, 0x24($sp)
/* B73A28 800FC888 00808025 */  move  $s0, $a0
/* B73A2C 800FC88C 00C09025 */  move  $s2, $a2
/* B73A30 800FC890 00007012 */  mflo  $t6
/* B73A34 800FC894 008E8821 */  addu  $s1, $a0, $t6
/* B73A38 800FC898 0091082B */  sltu  $at, $a0, $s1
/* B73A3C 800FC89C 50200008 */  beql  $at, $zero, .L800FC8C0
/* B73A40 800FC8A0 8FBF0024 */   lw    $ra, 0x24($sp)
.L800FC8A4:
/* B73A44 800FC8A4 0260F809 */  jalr  $s3
/* B73A48 800FC8A8 02002025 */  move  $a0, $s0
/* B73A4C 800FC8AC 02128021 */  addu  $s0, $s0, $s2
/* B73A50 800FC8B0 0211082B */  sltu  $at, $s0, $s1
/* B73A54 800FC8B4 1420FFFB */  bnez  $at, .L800FC8A4
/* B73A58 800FC8B8 00000000 */   nop   
/* B73A5C 800FC8BC 8FBF0024 */  lw    $ra, 0x24($sp)
.L800FC8C0:
/* B73A60 800FC8C0 8FB00014 */  lw    $s0, 0x14($sp)
/* B73A64 800FC8C4 8FB10018 */  lw    $s1, 0x18($sp)
/* B73A68 800FC8C8 8FB2001C */  lw    $s2, 0x1c($sp)
/* B73A6C 800FC8CC 8FB30020 */  lw    $s3, 0x20($sp)
/* B73A70 800FC8D0 03E00008 */  jr    $ra
/* B73A74 800FC8D4 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800FC8D8
/* B73A78 800FC8D8 00A60019 */  multu $a1, $a2
/* B73A7C 800FC8DC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B73A80 800FC8E0 AFB10018 */  sw    $s1, 0x18($sp)
/* B73A84 800FC8E4 AFB30020 */  sw    $s3, 0x20($sp)
/* B73A88 800FC8E8 AFB2001C */  sw    $s2, 0x1c($sp)
/* B73A8C 800FC8EC AFB00014 */  sw    $s0, 0x14($sp)
/* B73A90 800FC8F0 00E09825 */  move  $s3, $a3
/* B73A94 800FC8F4 AFBF0024 */  sw    $ra, 0x24($sp)
/* B73A98 800FC8F8 00808025 */  move  $s0, $a0
/* B73A9C 800FC8FC 00C09025 */  move  $s2, $a2
/* B73AA0 800FC900 00007012 */  mflo  $t6
/* B73AA4 800FC904 008E8821 */  addu  $s1, $a0, $t6
/* B73AA8 800FC908 0091082B */  sltu  $at, $a0, $s1
/* B73AAC 800FC90C 10200007 */  beqz  $at, .L800FC92C
/* B73AB0 800FC910 02002025 */   move  $a0, $s0
.L800FC914:
/* B73AB4 800FC914 0260F809 */  jalr  $s3
/* B73AB8 800FC918 24050002 */  li    $a1, 2
/* B73ABC 800FC91C 02128021 */  addu  $s0, $s0, $s2
/* B73AC0 800FC920 0211082B */  sltu  $at, $s0, $s1
/* B73AC4 800FC924 5420FFFB */  bnezl $at, .L800FC914
/* B73AC8 800FC928 02002025 */   move  $a0, $s0
.L800FC92C:
/* B73ACC 800FC92C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B73AD0 800FC930 8FB00014 */  lw    $s0, 0x14($sp)
/* B73AD4 800FC934 8FB10018 */  lw    $s1, 0x18($sp)
/* B73AD8 800FC938 8FB2001C */  lw    $s2, 0x1c($sp)
/* B73ADC 800FC93C 8FB30020 */  lw    $s3, 0x20($sp)
/* B73AE0 800FC940 03E00008 */  jr    $ra
/* B73AE4 800FC944 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800FC948
/* B73AE8 800FC948 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B73AEC 800FC94C AFB40040 */  sw    $s4, 0x40($sp)
/* B73AF0 800FC950 AFB3003C */  sw    $s3, 0x3c($sp)
/* B73AF4 800FC954 AFB20038 */  sw    $s2, 0x38($sp)
/* B73AF8 800FC958 00A09025 */  move  $s2, $a1
/* B73AFC 800FC95C 00E09825 */  move  $s3, $a3
/* B73B00 800FC960 0080A025 */  move  $s4, $a0
/* B73B04 800FC964 AFBF0044 */  sw    $ra, 0x44($sp)
/* B73B08 800FC968 AFB10034 */  sw    $s1, 0x34($sp)
/* B73B0C 800FC96C 14800008 */  bnez  $a0, .L800FC990
/* B73B10 800FC970 AFB00030 */   sw    $s0, 0x30($sp)
/* B73B14 800FC974 00A60019 */  multu $a1, $a2
/* B73B18 800FC978 AFA60050 */  sw    $a2, 0x50($sp)
/* B73B1C 800FC97C 00002012 */  mflo  $a0
/* B73B20 800FC980 0C03F200 */  jal   func_800FC800
/* B73B24 800FC984 00000000 */   nop   
/* B73B28 800FC988 8FA60050 */  lw    $a2, 0x50($sp)
/* B73B2C 800FC98C 0040A025 */  move  $s4, $v0
.L800FC990:
/* B73B30 800FC990 52800019 */  beql  $s4, $zero, .L800FC9F8
/* B73B34 800FC994 8FBF0044 */   lw    $ra, 0x44($sp)
/* B73B38 800FC998 52600017 */  beql  $s3, $zero, .L800FC9F8
/* B73B3C 800FC99C 8FBF0044 */   lw    $ra, 0x44($sp)
/* B73B40 800FC9A0 02460019 */  multu $s2, $a2
/* B73B44 800FC9A4 02808025 */  move  $s0, $s4
/* B73B48 800FC9A8 00C09025 */  move  $s2, $a2
/* B73B4C 800FC9AC 00007012 */  mflo  $t6
/* B73B50 800FC9B0 028E8821 */  addu  $s1, $s4, $t6
/* B73B54 800FC9B4 0291082B */  sltu  $at, $s4, $s1
/* B73B58 800FC9B8 1020000E */  beqz  $at, .L800FC9F4
/* B73B5C 800FC9BC 02002025 */   move  $a0, $s0
.L800FC9C0:
/* B73B60 800FC9C0 00002825 */  move  $a1, $zero
/* B73B64 800FC9C4 00003025 */  move  $a2, $zero
/* B73B68 800FC9C8 00003825 */  move  $a3, $zero
/* B73B6C 800FC9CC AFA00010 */  sw    $zero, 0x10($sp)
/* B73B70 800FC9D0 AFA00014 */  sw    $zero, 0x14($sp)
/* B73B74 800FC9D4 AFA00018 */  sw    $zero, 0x18($sp)
/* B73B78 800FC9D8 AFA0001C */  sw    $zero, 0x1c($sp)
/* B73B7C 800FC9DC 0260F809 */  jalr  $s3
/* B73B80 800FC9E0 AFA00020 */  sw    $zero, 0x20($sp)
/* B73B84 800FC9E4 02128021 */  addu  $s0, $s0, $s2
/* B73B88 800FC9E8 0211082B */  sltu  $at, $s0, $s1
/* B73B8C 800FC9EC 5420FFF4 */  bnezl $at, .L800FC9C0
/* B73B90 800FC9F0 02002025 */   move  $a0, $s0
.L800FC9F4:
/* B73B94 800FC9F4 8FBF0044 */  lw    $ra, 0x44($sp)
.L800FC9F8:
/* B73B98 800FC9F8 02801025 */  move  $v0, $s4
/* B73B9C 800FC9FC 8FB40040 */  lw    $s4, 0x40($sp)
/* B73BA0 800FCA00 8FB00030 */  lw    $s0, 0x30($sp)
/* B73BA4 800FCA04 8FB10034 */  lw    $s1, 0x34($sp)
/* B73BA8 800FCA08 8FB20038 */  lw    $s2, 0x38($sp)
/* B73BAC 800FCA0C 8FB3003C */  lw    $s3, 0x3c($sp)
/* B73BB0 800FCA10 03E00008 */  jr    $ra
/* B73BB4 800FCA14 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_800FCA18
/* B73BB8 800FCA18 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B73BBC 800FCA1C AFB40028 */  sw    $s4, 0x28($sp)
/* B73BC0 800FCA20 AFB30024 */  sw    $s3, 0x24($sp)
/* B73BC4 800FCA24 00E09825 */  move  $s3, $a3
/* B73BC8 800FCA28 0080A025 */  move  $s4, $a0
/* B73BCC 800FCA2C AFBF002C */  sw    $ra, 0x2c($sp)
/* B73BD0 800FCA30 AFB20020 */  sw    $s2, 0x20($sp)
/* B73BD4 800FCA34 AFB1001C */  sw    $s1, 0x1c($sp)
/* B73BD8 800FCA38 10800016 */  beqz  $a0, .L800FCA94
/* B73BDC 800FCA3C AFB00018 */   sw    $s0, 0x18($sp)
/* B73BE0 800FCA40 50E00010 */  beql  $a3, $zero, .L800FCA84
/* B73BE4 800FCA44 8FAF0040 */   lw    $t7, 0x40($sp)
/* B73BE8 800FCA48 00A60019 */  multu $a1, $a2
/* B73BEC 800FCA4C 00808825 */  move  $s1, $a0
/* B73BF0 800FCA50 00C09025 */  move  $s2, $a2
/* B73BF4 800FCA54 00007012 */  mflo  $t6
/* B73BF8 800FCA58 008E8021 */  addu  $s0, $a0, $t6
/* B73BFC 800FCA5C 0090082B */  sltu  $at, $a0, $s0
/* B73C00 800FCA60 10200007 */  beqz  $at, .L800FCA80
/* B73C04 800FCA64 02128023 */   subu  $s0, $s0, $s2
.L800FCA68:
/* B73C08 800FCA68 02002025 */  move  $a0, $s0
/* B73C0C 800FCA6C 0260F809 */  jalr  $s3
/* B73C10 800FCA70 24050002 */  li    $a1, 2
/* B73C14 800FCA74 0230082B */  sltu  $at, $s1, $s0
/* B73C18 800FCA78 5420FFFB */  bnezl $at, .L800FCA68
/* B73C1C 800FCA7C 02128023 */   subu  $s0, $s0, $s2
.L800FCA80:
/* B73C20 800FCA80 8FAF0040 */  lw    $t7, 0x40($sp)
.L800FCA84:
/* B73C24 800FCA84 51E00004 */  beql  $t7, $zero, .L800FCA98
/* B73C28 800FCA88 8FBF002C */   lw    $ra, 0x2c($sp)
/* B73C2C 800FCA8C 0C03F20F */  jal   func_800FC83C
/* B73C30 800FCA90 02802025 */   move  $a0, $s4
.L800FCA94:
/* B73C34 800FCA94 8FBF002C */  lw    $ra, 0x2c($sp)
.L800FCA98:
/* B73C38 800FCA98 8FB00018 */  lw    $s0, 0x18($sp)
/* B73C3C 800FCA9C 8FB1001C */  lw    $s1, 0x1c($sp)
/* B73C40 800FCAA0 8FB20020 */  lw    $s2, 0x20($sp)
/* B73C44 800FCAA4 8FB30024 */  lw    $s3, 0x24($sp)
/* B73C48 800FCAA8 8FB40028 */  lw    $s4, 0x28($sp)
/* B73C4C 800FCAAC 03E00008 */  jr    $ra
/* B73C50 800FCAB0 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800FCAB4
/* B73C54 800FCAB4 3C028013 */  lui   $v0, %hi(D_80134480) # $v0, 0x8013
/* B73C58 800FCAB8 8C424480 */  lw    $v0, %lo(D_80134480)($v0)
/* B73C5C 800FCABC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B73C60 800FCAC0 AFB00014 */  sw    $s0, 0x14($sp)
/* B73C64 800FCAC4 AFB10018 */  sw    $s1, 0x18($sp)
/* B73C68 800FCAC8 3C108013 */  lui   $s0, %hi(D_80134480) # $s0, 0x8013
/* B73C6C 800FCACC AFBF001C */  sw    $ra, 0x1c($sp)
/* B73C70 800FCAD0 26104480 */  addiu $s0, %lo(D_80134480) # addiu $s0, $s0, 0x4480
/* B73C74 800FCAD4 1040000C */  beqz  $v0, .L800FCB08
/* B73C78 800FCAD8 00008825 */   move  $s1, $zero
/* B73C7C 800FCADC 02028021 */  addu  $s0, $s0, $v0
.L800FCAE0:
/* B73C80 800FCAE0 8E030004 */  lw    $v1, 4($s0)
/* B73C84 800FCAE4 50600004 */  beql  $v1, $zero, .L800FCAF8
/* B73C88 800FCAE8 8E020000 */   lw    $v0, ($s0)
/* B73C8C 800FCAEC 0060F809 */  jalr  $v1
/* B73C90 800FCAF0 00000000 */  nop   
/* B73C94 800FCAF4 8E020000 */  lw    $v0, ($s0)
.L800FCAF8:
/* B73C98 800FCAF8 AE110000 */  sw    $s1, ($s0)
/* B73C9C 800FCAFC 02008825 */  move  $s1, $s0
/* B73CA0 800FCB00 5440FFF7 */  bnezl $v0, .L800FCAE0
/* B73CA4 800FCB04 02028021 */   addu  $s0, $s0, $v0
.L800FCB08:
/* B73CA8 800FCB08 8FBF001C */  lw    $ra, 0x1c($sp)
/* B73CAC 800FCB0C 3C018013 */  lui   $at, %hi(D_80134480) # $at, 0x8013
/* B73CB0 800FCB10 AC314480 */  sw    $s1, %lo(D_80134480)($at)
/* B73CB4 800FCB14 8FB10018 */  lw    $s1, 0x18($sp)
/* B73CB8 800FCB18 8FB00014 */  lw    $s0, 0x14($sp)
/* B73CBC 800FCB1C 03E00008 */  jr    $ra
/* B73CC0 800FCB20 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_800FCB24
/* B73CC4 800FCB24 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B73CC8 800FCB28 AFBF0014 */  sw    $ra, 0x14($sp)
/* B73CCC 800FCB2C 0C03F639 */  jal   func_800FD8E4
/* B73CD0 800FCB30 00000000 */   nop   
/* B73CD4 800FCB34 0C03F2AD */  jal   func_800FCAB4
/* B73CD8 800FCB38 00000000 */   nop   
/* B73CDC 800FCB3C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B73CE0 800FCB40 27BD0018 */  addiu $sp, $sp, 0x18
/* B73CE4 800FCB44 03E00008 */  jr    $ra
/* B73CE8 800FCB48 00000000 */   nop   
