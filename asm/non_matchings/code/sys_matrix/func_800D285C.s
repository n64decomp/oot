.rdata
glabel D_801465AC
    .asciz "%s %d: [%s] =\n/ %12.6f %12.6f %12.6f %12.6f \\\n| %12.6f %12.6f %12.6f %12.6f |\n| %12.6f %12.6f %12.6f %12.6f |\n\\ %12.6f %12.6f %12.6f %12.6f /\n"
    .balign 4

glabel D_8014663C
    .asciz "mf"
    .balign 4

.text
glabel func_800D285C
/* B499FC 800D285C 27BDFF20 */  addiu $sp, $sp, -0xe0
/* B49A00 800D2860 F7B600A0 */  sdc1  $f22, 0xa0($sp)
/* B49A04 800D2864 3C014700 */  li    $at, 0x47000000 # 0.000000
/* B49A08 800D2868 4481B000 */  mtc1  $at, $f22
/* B49A0C 800D286C AFB600C0 */  sw    $s6, 0xc0($sp)
/* B49A10 800D2870 AFB500BC */  sw    $s5, 0xbc($sp)
/* B49A14 800D2874 F7B40098 */  sdc1  $f20, 0x98($sp)
/* B49A18 800D2878 3C01C700 */  lui   $at, 0xc700
/* B49A1C 800D287C AFBE00C8 */  sw    $fp, 0xc8($sp)
/* B49A20 800D2880 AFB700C4 */  sw    $s7, 0xc4($sp)
/* B49A24 800D2884 AFB400B8 */  sw    $s4, 0xb8($sp)
/* B49A28 800D2888 AFB300B4 */  sw    $s3, 0xb4($sp)
/* B49A2C 800D288C AFB000A8 */  sw    $s0, 0xa8($sp)
/* B49A30 800D2890 3C158014 */  lui   $s5, %hi(D_801465AC) # $s5, 0x8014
/* B49A34 800D2894 3C168014 */  lui   $s6, %hi(D_8014663C)
/* B49A38 800D2898 4481A000 */  mtc1  $at, $f20
/* B49A3C 800D289C 00808025 */  move  $s0, $a0
/* B49A40 800D28A0 00A09825 */  move  $s3, $a1
/* B49A44 800D28A4 00C0A025 */  move  $s4, $a2
/* B49A48 800D28A8 AFBF00CC */  sw    $ra, 0xcc($sp)
/* B49A4C 800D28AC AFB200B0 */  sw    $s2, 0xb0($sp)
/* B49A50 800D28B0 AFB100AC */  sw    $s1, 0xac($sp)
/* B49A54 800D28B4 26D6663C */  addiu $s6, %lo(D_8014663C)
/* B49A58 800D28B8 26B565AC */  addiu $s5, %lo(D_801465AC) # addiu $s5, $s5, 0x65ac
/* B49A5C 800D28BC 24170010 */  li    $s7, 16
/* B49A60 800D28C0 0000F025 */  move  $fp, $zero
/* B49A64 800D28C4 AFA400D4 */  sw    $a0, 0xd4($sp)
.L800D28C8:
/* B49A68 800D28C8 00008825 */  move  $s1, $zero
/* B49A6C 800D28CC 8FB200D4 */  lw    $s2, 0xd4($sp)
.L800D28D0:
/* B49A70 800D28D0 C6400000 */  lwc1  $f0, ($s2)
/* B49A74 800D28D4 4600A03E */  c.le.s $f20, $f0
/* B49A78 800D28D8 00000000 */  nop   
/* B49A7C 800D28DC 45020006 */  bc1fl .L800D28F8
/* B49A80 800D28E0 C6040000 */   lwc1  $f4, ($s0)
/* B49A84 800D28E4 4616003C */  c.lt.s $f0, $f22
/* B49A88 800D28E8 00000000 */  nop   
/* B49A8C 800D28EC 4503003A */  bc1tl .L800D29D8
/* B49A90 800D28F0 26310004 */   addiu $s1, $s1, 4
/* B49A94 800D28F4 C6040000 */  lwc1  $f4, ($s0)
.L800D28F8:
/* B49A98 800D28F8 02A02025 */  move  $a0, $s5
/* B49A9C 800D28FC 02602825 */  move  $a1, $s3
/* B49AA0 800D2900 460021A1 */  cvt.d.s $f6, $f4
/* B49AA4 800D2904 02803025 */  move  $a2, $s4
/* B49AA8 800D2908 F7A60010 */  sdc1  $f6, 0x10($sp)
/* B49AAC 800D290C C6080010 */  lwc1  $f8, 0x10($s0)
/* B49AB0 800D2910 02C03825 */  move  $a3, $s6
/* B49AB4 800D2914 460042A1 */  cvt.d.s $f10, $f8
/* B49AB8 800D2918 F7AA0018 */  sdc1  $f10, 0x18($sp)
/* B49ABC 800D291C C6100020 */  lwc1  $f16, 0x20($s0)
/* B49AC0 800D2920 460084A1 */  cvt.d.s $f18, $f16
/* B49AC4 800D2924 F7B20020 */  sdc1  $f18, 0x20($sp)
/* B49AC8 800D2928 C6040030 */  lwc1  $f4, 0x30($s0)
/* B49ACC 800D292C 460021A1 */  cvt.d.s $f6, $f4
/* B49AD0 800D2930 F7A60028 */  sdc1  $f6, 0x28($sp)
/* B49AD4 800D2934 C6080004 */  lwc1  $f8, 4($s0)
/* B49AD8 800D2938 460042A1 */  cvt.d.s $f10, $f8
/* B49ADC 800D293C F7AA0030 */  sdc1  $f10, 0x30($sp)
/* B49AE0 800D2940 C6100014 */  lwc1  $f16, 0x14($s0)
/* B49AE4 800D2944 460084A1 */  cvt.d.s $f18, $f16
/* B49AE8 800D2948 F7B20038 */  sdc1  $f18, 0x38($sp)
/* B49AEC 800D294C C6040024 */  lwc1  $f4, 0x24($s0)
/* B49AF0 800D2950 460021A1 */  cvt.d.s $f6, $f4
/* B49AF4 800D2954 F7A60040 */  sdc1  $f6, 0x40($sp)
/* B49AF8 800D2958 C6080034 */  lwc1  $f8, 0x34($s0)
/* B49AFC 800D295C 460042A1 */  cvt.d.s $f10, $f8
/* B49B00 800D2960 F7AA0048 */  sdc1  $f10, 0x48($sp)
/* B49B04 800D2964 C6100008 */  lwc1  $f16, 8($s0)
/* B49B08 800D2968 460084A1 */  cvt.d.s $f18, $f16
/* B49B0C 800D296C F7B20050 */  sdc1  $f18, 0x50($sp)
/* B49B10 800D2970 C6040018 */  lwc1  $f4, 0x18($s0)
/* B49B14 800D2974 460021A1 */  cvt.d.s $f6, $f4
/* B49B18 800D2978 F7A60058 */  sdc1  $f6, 0x58($sp)
/* B49B1C 800D297C C6080028 */  lwc1  $f8, 0x28($s0)
/* B49B20 800D2980 460042A1 */  cvt.d.s $f10, $f8
/* B49B24 800D2984 F7AA0060 */  sdc1  $f10, 0x60($sp)
/* B49B28 800D2988 C6100038 */  lwc1  $f16, 0x38($s0)
/* B49B2C 800D298C 460084A1 */  cvt.d.s $f18, $f16
/* B49B30 800D2990 F7B20068 */  sdc1  $f18, 0x68($sp)
/* B49B34 800D2994 C604000C */  lwc1  $f4, 0xc($s0)
/* B49B38 800D2998 460021A1 */  cvt.d.s $f6, $f4
/* B49B3C 800D299C F7A60070 */  sdc1  $f6, 0x70($sp)
/* B49B40 800D29A0 C608001C */  lwc1  $f8, 0x1c($s0)
/* B49B44 800D29A4 460042A1 */  cvt.d.s $f10, $f8
/* B49B48 800D29A8 F7AA0078 */  sdc1  $f10, 0x78($sp)
/* B49B4C 800D29AC C610002C */  lwc1  $f16, 0x2c($s0)
/* B49B50 800D29B0 460084A1 */  cvt.d.s $f18, $f16
/* B49B54 800D29B4 F7B20080 */  sdc1  $f18, 0x80($sp)
/* B49B58 800D29B8 C604003C */  lwc1  $f4, 0x3c($s0)
/* B49B5C 800D29BC 460021A1 */  cvt.d.s $f6, $f4
/* B49B60 800D29C0 0C00084C */  jal   osSyncPrintf
/* B49B64 800D29C4 F7A60088 */   sdc1  $f6, 0x88($sp)
/* B49B68 800D29C8 02602025 */  move  $a0, $s3
/* B49B6C 800D29CC 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* B49B70 800D29D0 02802825 */   move  $a1, $s4
/* B49B74 800D29D4 26310004 */  addiu $s1, $s1, 4
.L800D29D8:
/* B49B78 800D29D8 1637FFBD */  bne   $s1, $s7, .L800D28D0
/* B49B7C 800D29DC 26520004 */   addiu $s2, $s2, 4
/* B49B80 800D29E0 8FAE00D4 */  lw    $t6, 0xd4($sp)
/* B49B84 800D29E4 27DE0001 */  addiu $fp, $fp, 1
/* B49B88 800D29E8 24010004 */  li    $at, 4
/* B49B8C 800D29EC 25CF0010 */  addiu $t7, $t6, 0x10
/* B49B90 800D29F0 17C1FFB5 */  bne   $fp, $at, .L800D28C8
/* B49B94 800D29F4 AFAF00D4 */   sw    $t7, 0xd4($sp)
/* B49B98 800D29F8 8FBF00CC */  lw    $ra, 0xcc($sp)
/* B49B9C 800D29FC 02001025 */  move  $v0, $s0
/* B49BA0 800D2A00 8FB000A8 */  lw    $s0, 0xa8($sp)
/* B49BA4 800D2A04 D7B40098 */  ldc1  $f20, 0x98($sp)
/* B49BA8 800D2A08 D7B600A0 */  ldc1  $f22, 0xa0($sp)
/* B49BAC 800D2A0C 8FB100AC */  lw    $s1, 0xac($sp)
/* B49BB0 800D2A10 8FB200B0 */  lw    $s2, 0xb0($sp)
/* B49BB4 800D2A14 8FB300B4 */  lw    $s3, 0xb4($sp)
/* B49BB8 800D2A18 8FB400B8 */  lw    $s4, 0xb8($sp)
/* B49BBC 800D2A1C 8FB500BC */  lw    $s5, 0xbc($sp)
/* B49BC0 800D2A20 8FB600C0 */  lw    $s6, 0xc0($sp)
/* B49BC4 800D2A24 8FB700C4 */  lw    $s7, 0xc4($sp)
/* B49BC8 800D2A28 8FBE00C8 */  lw    $fp, 0xc8($sp)
/* B49BCC 800D2A2C 03E00008 */  jr    $ra
/* B49BD0 800D2A30 27BD00E0 */   addiu $sp, $sp, 0xe0
