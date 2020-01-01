glabel func_80062734
/* AD98D4 80062734 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD98D8 80062738 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD98DC 8006273C AFA40020 */  sw    $a0, 0x20($sp)
/* AD98E0 80062740 AFA50024 */  sw    $a1, 0x24($sp)
/* AD98E4 80062744 AFA60028 */  sw    $a2, 0x28($sp)
/* AD98E8 80062748 00E02825 */  move  $a1, $a3
/* AD98EC 8006274C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD98F0 80062750 24840058 */   addiu $a0, $a0, 0x58
/* AD98F4 80062754 8FA40020 */  lw    $a0, 0x20($sp)
/* AD98F8 80062758 8FA50030 */  lw    $a1, 0x30($sp)
/* AD98FC 8006275C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD9900 80062760 24840064 */   addiu $a0, $a0, 0x64
/* AD9904 80062764 8FA40020 */  lw    $a0, 0x20($sp)
/* AD9908 80062768 8FA50024 */  lw    $a1, 0x24($sp)
/* AD990C 8006276C 24840040 */  addiu $a0, $a0, 0x40
/* AD9910 80062770 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD9914 80062774 AFA4001C */   sw    $a0, 0x1c($sp)
/* AD9918 80062778 8FA40020 */  lw    $a0, 0x20($sp)
/* AD991C 8006277C 8FA50028 */  lw    $a1, 0x28($sp)
/* AD9920 80062780 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD9924 80062784 2484004C */   addiu $a0, $a0, 0x4c
/* AD9928 80062788 0C0173B7 */  jal   func_8005CEDC
/* AD992C 8006278C 8FA4001C */   lw    $a0, 0x1c($sp)
/* AD9930 80062790 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD9934 80062794 27BD0020 */  addiu $sp, $sp, 0x20
/* AD9938 80062798 03E00008 */  jr    $ra
/* AD993C 8006279C 00000000 */   nop   

/* AD9940 800627A0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AD9944 800627A4 0005C880 */  sll   $t9, $a1, 2
/* AD9948 800627A8 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD994C 800627AC AFB00028 */  sw    $s0, 0x28($sp)
/* AD9950 800627B0 AFA40048 */  sw    $a0, 0x48($sp)
/* AD9954 800627B4 AFA5004C */  sw    $a1, 0x4c($sp)
/* AD9958 800627B8 AFA60050 */  sw    $a2, 0x50($sp)
/* AD995C 800627BC AFA70054 */  sw    $a3, 0x54($sp)
/* AD9960 800627C0 0325C823 */  subu  $t9, $t9, $a1
/* AD9964 800627C4 8C8F001C */  lw    $t7, 0x1c($a0)
/* AD9968 800627C8 0019C8C0 */  sll   $t9, $t9, 3
/* AD996C 800627CC 0325C823 */  subu  $t9, $t9, $a1
/* AD9970 800627D0 0019C880 */  sll   $t9, $t9, 2
/* AD9974 800627D4 01F98021 */  addu  $s0, $t7, $t9
/* AD9978 800627D8 26040028 */  addiu $a0, $s0, 0x28
/* AD997C 800627DC 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD9980 800627E0 00C02825 */   move  $a1, $a2
/* AD9984 800627E4 26040034 */  addiu $a0, $s0, 0x34
/* AD9988 800627E8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD998C 800627EC 8FA50054 */   lw    $a1, 0x54($sp)
/* AD9990 800627F0 26040040 */  addiu $a0, $s0, 0x40
/* AD9994 800627F4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD9998 800627F8 8FA50058 */   lw    $a1, 0x58($sp)
/* AD999C 800627FC 27A8003C */  addiu $t0, $sp, 0x3c
/* AD99A0 80062800 27A90038 */  addiu $t1, $sp, 0x38
/* AD99A4 80062804 27AA0034 */  addiu $t2, $sp, 0x34
/* AD99A8 80062808 AFAA0018 */  sw    $t2, 0x18($sp)
/* AD99AC 8006280C AFA90014 */  sw    $t1, 0x14($sp)
/* AD99B0 80062810 AFA80010 */  sw    $t0, 0x10($sp)
/* AD99B4 80062814 8FA40050 */  lw    $a0, 0x50($sp)
/* AD99B8 80062818 8FA50054 */  lw    $a1, 0x54($sp)
/* AD99BC 8006281C 8FA60058 */  lw    $a2, 0x58($sp)
/* AD99C0 80062820 0C03322D */  jal   func_800CC8B4
/* AD99C4 80062824 27A70040 */   addiu $a3, $sp, 0x40
/* AD99C8 80062828 C7A40040 */  lwc1  $f4, 0x40($sp)
/* AD99CC 8006282C E604004C */  swc1  $f4, 0x4c($s0)
/* AD99D0 80062830 C7A6003C */  lwc1  $f6, 0x3c($sp)
/* AD99D4 80062834 E6060050 */  swc1  $f6, 0x50($s0)
/* AD99D8 80062838 C7A80038 */  lwc1  $f8, 0x38($sp)
/* AD99DC 8006283C E6080054 */  swc1  $f8, 0x54($s0)
/* AD99E0 80062840 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* AD99E4 80062844 E60A0058 */  swc1  $f10, 0x58($s0)
/* AD99E8 80062848 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD99EC 8006284C 8FB00028 */  lw    $s0, 0x28($sp)
/* AD99F0 80062850 27BD0048 */  addiu $sp, $sp, 0x48
/* AD99F4 80062854 03E00008 */  jr    $ra
/* AD99F8 80062858 00000000 */   nop   

/* AD99FC 8006285C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD9A00 80062860 0006C880 */  sll   $t9, $a2, 2
/* AD9A04 80062864 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD9A08 80062868 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD9A0C 8006286C AFA60020 */  sw    $a2, 0x20($sp)
/* AD9A10 80062870 0326C823 */  subu  $t9, $t9, $a2
/* AD9A14 80062874 8CAF001C */  lw    $t7, 0x1c($a1)
/* AD9A18 80062878 0019C8C0 */  sll   $t9, $t9, 3
/* AD9A1C 8006287C 0326C823 */  subu  $t9, $t9, $a2
/* AD9A20 80062880 0019C880 */  sll   $t9, $t9, 2
/* AD9A24 80062884 01F91021 */  addu  $v0, $t7, $t9
/* AD9A28 80062888 24450028 */  addiu $a1, $v0, 0x28
/* AD9A2C 8006288C 0C017182 */  jal   func_8005C608
/* AD9A30 80062890 00E03025 */   move  $a2, $a3
/* AD9A34 80062894 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD9A38 80062898 27BD0018 */  addiu $sp, $sp, 0x18
/* AD9A3C 8006289C 03E00008 */  jr    $ra
/* AD9A40 800628A0 00000000 */   nop   

/* AD9A44 800628A4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AD9A48 800628A8 AFBF0034 */  sw    $ra, 0x34($sp)
/* AD9A4C 800628AC AFB60030 */  sw    $s6, 0x30($sp)
/* AD9A50 800628B0 AFB5002C */  sw    $s5, 0x2c($sp)
/* AD9A54 800628B4 AFB40028 */  sw    $s4, 0x28($sp)
/* AD9A58 800628B8 AFB30024 */  sw    $s3, 0x24($sp)
/* AD9A5C 800628BC AFB20020 */  sw    $s2, 0x20($sp)
/* AD9A60 800628C0 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD9A64 800628C4 AFB00018 */  sw    $s0, 0x18($sp)
/* AD9A68 800628C8 8CA20018 */  lw    $v0, 0x18($a1)
/* AD9A6C 800628CC 00A09025 */  move  $s2, $a1
/* AD9A70 800628D0 0080B025 */  move  $s6, $a0
/* AD9A74 800628D4 1840004A */  blez  $v0, .L80062A00
/* AD9A78 800628D8 00009825 */   move  $s3, $zero
/* AD9A7C 800628DC 3C158016 */  lui   $s5, %hi(D_8015CF00) # $s5, 0x8016
/* AD9A80 800628E0 3C148016 */  lui   $s4, %hi(D_8015E648) # $s4, 0x8016
/* AD9A84 800628E4 2694E648 */  addiu $s4, %lo(D_8015E648) # addiu $s4, $s4, -0x19b8
/* AD9A88 800628E8 26B5CF00 */  addiu $s5, %lo(D_8015CF00) # addiu $s5, $s5, -0x3100
/* AD9A8C 800628EC 00008025 */  move  $s0, $zero
.L800628F0:
/* AD9A90 800628F0 8E4E001C */  lw    $t6, 0x1c($s2)
/* AD9A94 800628F4 01D08821 */  addu  $s1, $t6, $s0
/* AD9A98 800628F8 922F003C */  lbu   $t7, 0x3c($s1)
/* AD9A9C 800628FC 56CF003D */  bnel  $s6, $t7, .L800629F4
/* AD9AA0 80062900 26730001 */   addiu $s3, $s3, 1
/* AD9AA4 80062904 86380028 */  lh    $t8, 0x28($s1)
/* AD9AA8 80062908 3C018016 */  lui   $at, %hi(D_8015E648)
/* AD9AAC 8006290C 02802025 */  move  $a0, $s4
/* AD9AB0 80062910 44982000 */  mtc1  $t8, $f4
/* AD9AB4 80062914 02A02825 */  move  $a1, $s5
/* AD9AB8 80062918 468021A0 */  cvt.s.w $f6, $f4
/* AD9ABC 8006291C E426E648 */  swc1  $f6, %lo(D_8015E648)($at)
/* AD9AC0 80062920 8E59001C */  lw    $t9, 0x1c($s2)
/* AD9AC4 80062924 03304021 */  addu  $t0, $t9, $s0
/* AD9AC8 80062928 8509002A */  lh    $t1, 0x2a($t0)
/* AD9ACC 8006292C 44894000 */  mtc1  $t1, $f8
/* AD9AD0 80062930 00000000 */  nop   
/* AD9AD4 80062934 468042A0 */  cvt.s.w $f10, $f8
/* AD9AD8 80062938 E42AE64C */  swc1  $f10, %lo(D_8015E64C)($at)
/* AD9ADC 8006293C 8E4A001C */  lw    $t2, 0x1c($s2)
/* AD9AE0 80062940 3C018016 */  lui   $at, %hi(D_8015E650)
/* AD9AE4 80062944 01505821 */  addu  $t3, $t2, $s0
/* AD9AE8 80062948 856C002C */  lh    $t4, 0x2c($t3)
/* AD9AEC 8006294C 448C8000 */  mtc1  $t4, $f16
/* AD9AF0 80062950 00000000 */  nop   
/* AD9AF4 80062954 468084A0 */  cvt.s.w $f18, $f16
/* AD9AF8 80062958 0C0346BD */  jal   func_800D1AF4
/* AD9AFC 8006295C E432E650 */   swc1  $f18, %lo(D_8015E650)($at)
/* AD9B00 80062960 3C018016 */  lui   $at, %hi(D_8015CF00)
/* AD9B04 80062964 C424CF00 */  lwc1  $f4, %lo(D_8015CF00)($at)
/* AD9B08 80062968 8E4F001C */  lw    $t7, 0x1c($s2)
/* AD9B0C 8006296C 4600218D */  trunc.w.s $f6, $f4
/* AD9B10 80062970 01F0C021 */  addu  $t8, $t7, $s0
/* AD9B14 80062974 440E3000 */  mfc1  $t6, $f6
/* AD9B18 80062978 00000000 */  nop   
/* AD9B1C 8006297C A70E0030 */  sh    $t6, 0x30($t8)
/* AD9B20 80062980 C428CF04 */  lwc1  $f8, %lo(D_8015CF04)($at)
/* AD9B24 80062984 8E49001C */  lw    $t1, 0x1c($s2)
/* AD9B28 80062988 3C018016 */  lui   $at, %hi(D_8015CF08)
/* AD9B2C 8006298C 4600428D */  trunc.w.s $f10, $f8
/* AD9B30 80062990 01305021 */  addu  $t2, $t1, $s0
/* AD9B34 80062994 44085000 */  mfc1  $t0, $f10
/* AD9B38 80062998 00000000 */  nop   
/* AD9B3C 8006299C A5480032 */  sh    $t0, 0x32($t2)
/* AD9B40 800629A0 C430CF08 */  lwc1  $f16, %lo(D_8015CF08)($at)
/* AD9B44 800629A4 8E4D001C */  lw    $t5, 0x1c($s2)
/* AD9B48 800629A8 4600848D */  trunc.w.s $f18, $f16
/* AD9B4C 800629AC 01B07821 */  addu  $t7, $t5, $s0
/* AD9B50 800629B0 440C9000 */  mfc1  $t4, $f18
/* AD9B54 800629B4 00000000 */  nop   
/* AD9B58 800629B8 A5EC0034 */  sh    $t4, 0x34($t7)
/* AD9B5C 800629BC 8E4E001C */  lw    $t6, 0x1c($s2)
/* AD9B60 800629C0 01D08821 */  addu  $s1, $t6, $s0
/* AD9B64 800629C4 8638002E */  lh    $t8, 0x2e($s1)
/* AD9B68 800629C8 C6240038 */  lwc1  $f4, 0x38($s1)
/* AD9B6C 800629CC 44983000 */  mtc1  $t8, $f6
/* AD9B70 800629D0 00000000 */  nop   
/* AD9B74 800629D4 46803220 */  cvt.s.w $f8, $f6
/* AD9B78 800629D8 46082282 */  mul.s $f10, $f4, $f8
/* AD9B7C 800629DC 4600540D */  trunc.w.s $f16, $f10
/* AD9B80 800629E0 44098000 */  mfc1  $t1, $f16
/* AD9B84 800629E4 00000000 */  nop   
/* AD9B88 800629E8 A6290036 */  sh    $t1, 0x36($s1)
/* AD9B8C 800629EC 8E420018 */  lw    $v0, 0x18($s2)
/* AD9B90 800629F0 26730001 */  addiu $s3, $s3, 1
.L800629F4:
/* AD9B94 800629F4 0262082A */  slt   $at, $s3, $v0
/* AD9B98 800629F8 1420FFBD */  bnez  $at, .L800628F0
/* AD9B9C 800629FC 26100040 */   addiu $s0, $s0, 0x40
.L80062A00:
/* AD9BA0 80062A00 8FBF0034 */  lw    $ra, 0x34($sp)
/* AD9BA4 80062A04 8FB00018 */  lw    $s0, 0x18($sp)
/* AD9BA8 80062A08 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD9BAC 80062A0C 8FB20020 */  lw    $s2, 0x20($sp)
/* AD9BB0 80062A10 8FB30024 */  lw    $s3, 0x24($sp)
/* AD9BB4 80062A14 8FB40028 */  lw    $s4, 0x28($sp)
/* AD9BB8 80062A18 8FB5002C */  lw    $s5, 0x2c($sp)
/* AD9BBC 80062A1C 8FB60030 */  lw    $s6, 0x30($sp)
/* AD9BC0 80062A20 03E00008 */  jr    $ra
/* AD9BC4 80062A24 27BD0038 */   addiu $sp, $sp, 0x38

