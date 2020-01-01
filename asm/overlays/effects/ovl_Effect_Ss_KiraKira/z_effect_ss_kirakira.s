.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_809AA810:
/* 000000 809AA810 AFA40000 */  sw    $a0, ($sp)
/* 000004 809AA814 AFA50004 */  sw    $a1, 4($sp)
/* 000008 809AA818 8CEF0000 */  lw    $t7, ($a3)
/* 00000C 809AA81C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 000010 809AA820 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 000014 809AA824 ACCF0000 */  sw    $t7, ($a2)
/* 000018 809AA828 8CEE0004 */  lw    $t6, 4($a3)
/* 00001C 809AA82C ACCE0004 */  sw    $t6, 4($a2)
/* 000020 809AA830 8CEF0008 */  lw    $t7, 8($a3)
/* 000024 809AA834 3C0E8016 */  lui   $t6, 0x8016
/* 000028 809AA838 ACCF0008 */  sw    $t7, 8($a2)
/* 00002C 809AA83C 8CF9000C */  lw    $t9, 0xc($a3)
/* 000030 809AA840 3C0F8016 */  lui   $t7, 0x8016
/* 000034 809AA844 ACD9000C */  sw    $t9, 0xc($a2)
/* 000038 809AA848 8CF80010 */  lw    $t8, 0x10($a3)
/* 00003C 809AA84C ACD80010 */  sw    $t8, 0x10($a2)
/* 000040 809AA850 8CF90014 */  lw    $t9, 0x14($a3)
/* 000044 809AA854 ACD90014 */  sw    $t9, 0x14($a2)
/* 000048 809AA858 8CE90018 */  lw    $t1, 0x18($a3)
/* 00004C 809AA85C ACC90018 */  sw    $t1, 0x18($a2)
/* 000050 809AA860 8CE8001C */  lw    $t0, 0x1c($a3)
/* 000054 809AA864 ACC8001C */  sw    $t0, 0x1c($a2)
/* 000058 809AA868 8CE90020 */  lw    $t1, 0x20($a3)
/* 00005C 809AA86C ACC90020 */  sw    $t1, 0x20($a2)
/* 000060 809AA870 84E20032 */  lh    $v0, 0x32($a3)
/* 000064 809AA874 3C09809B */  lui   $t1, %hi(func_809AAD6C) # $t1, 0x809b
/* 000068 809AA878 2529AD6C */  addiu $t1, %lo(func_809AAD6C) # addiu $t1, $t1, -0x5294
/* 00006C 809AA87C 04410017 */  bgez  $v0, .L809AA8DC
/* 000070 809AA880 A4C2005C */   sh    $v0, 0x5c($a2)
/* 000074 809AA884 3C020403 */  lui   $v0, %hi(D_04037880) # $v0, 0x403
/* 000078 809AA888 84CA005C */  lh    $t2, 0x5c($a2)
/* 00007C 809AA88C 24427880 */  addiu $v0, %lo(D_04037880) # addiu $v0, $v0, 0x7880
/* 000080 809AA890 00026100 */  sll   $t4, $v0, 4
/* 000084 809AA894 000C6F02 */  srl   $t5, $t4, 0x1c
/* 000088 809AA898 000D7080 */  sll   $t6, $t5, 2
/* 00008C 809AA89C 000A5823 */  negu  $t3, $t2
/* 000090 809AA8A0 A4CB005C */  sh    $t3, 0x5c($a2)
/* 000094 809AA8A4 01EE7821 */  addu  $t7, $t7, $t6
/* 000098 809AA8A8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 00009C 809AA8AC 8DEF6FA8 */  lw    $t7, 0x6fa8($t7)
/* 0000A0 809AA8B0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0000A4 809AA8B4 0041C024 */  and   $t8, $v0, $at
/* 0000A8 809AA8B8 3C018000 */  lui   $at, 0x8000
/* 0000AC 809AA8BC 01F8C821 */  addu  $t9, $t7, $t8
/* 0000B0 809AA8C0 03214021 */  addu  $t0, $t9, $at
/* 0000B4 809AA8C4 ACC80038 */  sw    $t0, 0x38($a2)
/* 0000B8 809AA8C8 ACC90024 */  sw    $t1, 0x24($a2)
/* 0000BC 809AA8CC 84EA002E */  lh    $t2, 0x2e($a3)
/* 0000C0 809AA8D0 A4C00056 */  sh    $zero, 0x56($a2)
/* 0000C4 809AA8D4 1000001A */  b     .L809AA940
/* 0000C8 809AA8D8 A4CA0052 */   sh    $t2, 0x52($a2)
.L809AA8DC:
/* 0000CC 809AA8DC 3C020403 */  lui   $v0, %hi(D_04037880) # $v0, 0x403
/* 0000D0 809AA8E0 24427880 */  addiu $v0, %lo(D_04037880) # addiu $v0, $v0, 0x7880
/* 0000D4 809AA8E4 00025900 */  sll   $t3, $v0, 4
/* 0000D8 809AA8E8 000B6702 */  srl   $t4, $t3, 0x1c
/* 0000DC 809AA8EC 000C6880 */  sll   $t5, $t4, 2
/* 0000E0 809AA8F0 01CD7021 */  addu  $t6, $t6, $t5
/* 0000E4 809AA8F4 8DCE6FA8 */  lw    $t6, 0x6fa8($t6)
/* 0000E8 809AA8F8 00417824 */  and   $t7, $v0, $at
/* 0000EC 809AA8FC 3C018000 */  lui   $at, 0x8000
/* 0000F0 809AA900 01CFC021 */  addu  $t8, $t6, $t7
/* 0000F4 809AA904 0301C821 */  addu  $t9, $t8, $at
/* 0000F8 809AA908 ACD90038 */  sw    $t9, 0x38($a2)
/* 0000FC 809AA90C 90E80038 */  lbu   $t0, 0x38($a3)
/* 000100 809AA910 3C0A809B */  lui   $t2, %hi(func_809AACAC) # $t2, 0x809b
/* 000104 809AA914 3C09809B */  lui   $t1, %hi(func_809AABF0) # $t1, 0x809b
/* 000108 809AA918 15000004 */  bnez  $t0, .L809AA92C
/* 00010C 809AA91C 254AACAC */   addiu $t2, %lo(func_809AACAC) # addiu $t2, $t2, -0x5354
/* 000110 809AA920 2529ABF0 */  addiu $t1, %lo(func_809AABF0) # addiu $t1, $t1, -0x5410
/* 000114 809AA924 10000002 */  b     .L809AA930
/* 000118 809AA928 ACC90024 */   sw    $t1, 0x24($a2)
.L809AA92C:
/* 00011C 809AA92C ACCA0024 */  sw    $t2, 0x24($a2)
.L809AA930:
/* 000120 809AA930 90EB002B */  lbu   $t3, 0x2b($a3)
/* 000124 809AA934 A4CB0052 */  sh    $t3, 0x52($a2)
/* 000128 809AA938 84EC002E */  lh    $t4, 0x2e($a3)
/* 00012C 809AA93C A4CC0056 */  sh    $t4, 0x56($a2)
.L809AA940:
/* 000130 809AA940 3C0D809B */  lui   $t5, %hi(func_809AA9AC) # $t5, 0x809b
/* 000134 809AA944 25ADA9AC */  addiu $t5, %lo(func_809AA9AC) # addiu $t5, $t5, -0x5654
/* 000138 809AA948 ACCD0028 */  sw    $t5, 0x28($a2)
/* 00013C 809AA94C 84EE0034 */  lh    $t6, 0x34($a3)
/* 000140 809AA950 24020001 */  li    $v0, 1
/* 000144 809AA954 A4CE0040 */  sh    $t6, 0x40($a2)
/* 000148 809AA958 84EF0036 */  lh    $t7, 0x36($a3)
/* 00014C 809AA95C A4CF0042 */  sh    $t7, 0x42($a2)
/* 000150 809AA960 90F80024 */  lbu   $t8, 0x24($a3)
/* 000154 809AA964 A4D80044 */  sh    $t8, 0x44($a2)
/* 000158 809AA968 90F90025 */  lbu   $t9, 0x25($a3)
/* 00015C 809AA96C A4D90046 */  sh    $t9, 0x46($a2)
/* 000160 809AA970 90E80026 */  lbu   $t0, 0x26($a3)
/* 000164 809AA974 A4C80048 */  sh    $t0, 0x48($a2)
/* 000168 809AA978 90E90027 */  lbu   $t1, 0x27($a3)
/* 00016C 809AA97C A4C9004A */  sh    $t1, 0x4a($a2)
/* 000170 809AA980 90EA0028 */  lbu   $t2, 0x28($a3)
/* 000174 809AA984 A4CA004C */  sh    $t2, 0x4c($a2)
/* 000178 809AA988 90EB0029 */  lbu   $t3, 0x29($a3)
/* 00017C 809AA98C A4CB004E */  sh    $t3, 0x4e($a2)
/* 000180 809AA990 90EC002A */  lbu   $t4, 0x2a($a3)
/* 000184 809AA994 A4CC0050 */  sh    $t4, 0x50($a2)
/* 000188 809AA998 84ED002C */  lh    $t5, 0x2c($a3)
/* 00018C 809AA99C A4CD0054 */  sh    $t5, 0x54($a2)
/* 000190 809AA9A0 8CEE0030 */  lw    $t6, 0x30($a3)
/* 000194 809AA9A4 03E00008 */  jr    $ra
/* 000198 809AA9A8 A4CE0058 */   sh    $t6, 0x58($a2)

func_809AA9AC:
/* 00019C 809AA9AC 27BDFE20 */  addiu $sp, $sp, -0x1e0
/* 0001A0 809AA9B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0001A4 809AA9B4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0001A8 809AA9B8 AFB00014 */  sw    $s0, 0x14($sp)
/* 0001AC 809AA9BC AFA401E0 */  sw    $a0, 0x1e0($sp)
/* 0001B0 809AA9C0 AFA501E4 */  sw    $a1, 0x1e4($sp)
/* 0001B4 809AA9C4 84CE0056 */  lh    $t6, 0x56($a2)
/* 0001B8 809AA9C8 3C01809B */  lui   $at, %hi(D_809AAE40) # $at, 0x809b
/* 0001BC 809AA9CC C428AE40 */  lwc1  $f8, %lo(D_809AAE40)($at)
/* 0001C0 809AA9D0 448E2000 */  mtc1  $t6, $f4
/* 0001C4 809AA9D4 00C08025 */  move  $s0, $a2
/* 0001C8 809AA9D8 3C06809B */  lui   $a2, %hi(D_809AAE10) # $a2, 0x809b
/* 0001CC 809AA9DC 468021A0 */  cvt.s.w $f6, $f4
/* 0001D0 809AA9E0 24C6AE10 */  addiu $a2, %lo(D_809AAE10) # addiu $a2, $a2, -0x51f0
/* 0001D4 809AA9E4 24070101 */  li    $a3, 257
/* 0001D8 809AA9E8 46083283 */  div.s $f10, $f6, $f8
/* 0001DC 809AA9EC E7AA01D8 */  swc1  $f10, 0x1d8($sp)
/* 0001E0 809AA9F0 8C910000 */  lw    $s1, ($a0)
/* 0001E4 809AA9F4 27A4003C */  addiu $a0, $sp, 0x3c
/* 0001E8 809AA9F8 0C031AB1 */  jal   func_800C6AC4
/* 0001EC 809AA9FC 02202825 */   move  $a1, $s1
/* 0001F0 809AAA00 27A40194 */  addiu $a0, $sp, 0x194
/* 0001F4 809AAA04 8E050000 */  lw    $a1, ($s0)
/* 0001F8 809AAA08 8E060004 */  lw    $a2, 4($s0)
/* 0001FC 809AAA0C 0C029E89 */  jal   func_800A7A24
/* 000200 809AAA10 8E070008 */   lw    $a3, 8($s0)
/* 000204 809AAA14 27A40154 */  addiu $a0, $sp, 0x154
/* 000208 809AAA18 00002825 */  move  $a1, $zero
/* 00020C 809AAA1C 00003025 */  move  $a2, $zero
/* 000210 809AAA20 0C029DC1 */  jal   func_800A7704
/* 000214 809AAA24 86070042 */   lh    $a3, 0x42($s0)
/* 000218 809AAA28 C7A001D8 */  lwc1  $f0, 0x1d8($sp)
/* 00021C 809AAA2C 27A40114 */  addiu $a0, $sp, 0x114
/* 000220 809AAA30 3C073F80 */  lui   $a3, 0x3f80
/* 000224 809AAA34 44050000 */  mfc1  $a1, $f0
/* 000228 809AAA38 44060000 */  mfc1  $a2, $f0
/* 00022C 809AAA3C 0C029DA9 */  jal   func_800A76A4
/* 000230 809AAA40 00000000 */   nop   
/* 000234 809AAA44 8FA501E0 */  lw    $a1, 0x1e0($sp)
/* 000238 809AAA48 3C010001 */  lui   $at, (0x00011DA0 >> 16) # lui $at, 1
/* 00023C 809AAA4C 34211DA0 */  ori   $at, (0x00011DA0 & 0xFFFF) # ori $at, $at, 0x1da0
/* 000240 809AAA50 27A40194 */  addiu $a0, $sp, 0x194
/* 000244 809AAA54 27A600D4 */  addiu $a2, $sp, 0xd4
/* 000248 809AAA58 0C029BE8 */  jal   func_800A6FA0
/* 00024C 809AAA5C 00A12821 */   addu  $a1, $a1, $at
/* 000250 809AAA60 27A400D4 */  addiu $a0, $sp, 0xd4
/* 000254 809AAA64 27A50154 */  addiu $a1, $sp, 0x154
/* 000258 809AAA68 0C029BE8 */  jal   func_800A6FA0
/* 00025C 809AAA6C 27A60094 */   addiu $a2, $sp, 0x94
/* 000260 809AAA70 27A40094 */  addiu $a0, $sp, 0x94
/* 000264 809AAA74 27A50114 */  addiu $a1, $sp, 0x114
/* 000268 809AAA78 0C029BE8 */  jal   func_800A6FA0
/* 00026C 809AAA7C 27A60054 */   addiu $a2, $sp, 0x54
/* 000270 809AAA80 8E2302D0 */  lw    $v1, 0x2d0($s1)
/* 000274 809AAA84 3C19DA38 */  lui   $t9, (0xDA380003 >> 16) # lui $t9, 0xda38
/* 000278 809AAA88 3C088013 */  lui   $t0, %hi(D_8012DB20) # $t0, 0x8013
/* 00027C 809AAA8C 24780008 */  addiu $t8, $v1, 8
/* 000280 809AAA90 AE3802D0 */  sw    $t8, 0x2d0($s1)
/* 000284 809AAA94 2508DB20 */  addiu $t0, %lo(D_8012DB20) # addiu $t0, $t0, -0x24e0
/* 000288 809AAA98 37390003 */  ori   $t9, (0xDA380003 & 0xFFFF) # ori $t9, $t9, 3
/* 00028C 809AAA9C 02202025 */  move  $a0, $s1
/* 000290 809AAAA0 27A50054 */  addiu $a1, $sp, 0x54
/* 000294 809AAAA4 AC790000 */  sw    $t9, ($v1)
/* 000298 809AAAA8 0C029F9C */  jal   func_800A7E70
/* 00029C 809AAAAC AC680004 */   sw    $t0, 4($v1)
/* 0002A0 809AAAB0 10400044 */  beqz  $v0, .L809AABC4
/* 0002A4 809AAAB4 3C0ADA38 */   lui   $t2, (0xDA380003 >> 16) # lui $t2, 0xda38
/* 0002A8 809AAAB8 8E2302D0 */  lw    $v1, 0x2d0($s1)
/* 0002AC 809AAABC 354A0003 */  ori   $t2, (0xDA380003 & 0xFFFF) # ori $t2, $t2, 3
/* 0002B0 809AAAC0 02202025 */  move  $a0, $s1
/* 0002B4 809AAAC4 24690008 */  addiu $t1, $v1, 8
/* 0002B8 809AAAC8 AE2902D0 */  sw    $t1, 0x2d0($s1)
/* 0002BC 809AAACC AC620004 */  sw    $v0, 4($v1)
/* 0002C0 809AAAD0 0C024F05 */  jal   func_80093C14
/* 0002C4 809AAAD4 AC6A0000 */   sw    $t2, ($v1)
/* 0002C8 809AAAD8 8E2302D0 */  lw    $v1, 0x2d0($s1)
/* 0002CC 809AAADC 3C0CFA00 */  lui   $t4, (0xFA008080 >> 16) # lui $t4, 0xfa00
/* 0002D0 809AAAE0 358C8080 */  ori   $t4, (0xFA008080 & 0xFFFF) # ori $t4, $t4, 0x8080
/* 0002D4 809AAAE4 246B0008 */  addiu $t3, $v1, 8
/* 0002D8 809AAAE8 AE2B02D0 */  sw    $t3, 0x2d0($s1)
/* 0002DC 809AAAEC AC6C0000 */  sw    $t4, ($v1)
/* 0002E0 809AAAF0 860D0058 */  lh    $t5, 0x58($s0)
/* 0002E4 809AAAF4 3C01425C */  li    $at, 0x425C0000 # 55.000000
/* 0002E8 809AAAF8 44818000 */  mtc1  $at, $f16
/* 0002EC 809AAAFC 448D9000 */  mtc1  $t5, $f18
/* 0002F0 809AAB00 860E005C */  lh    $t6, 0x5c($s0)
/* 0002F4 809AAB04 860F0046 */  lh    $t7, 0x46($s0)
/* 0002F8 809AAB08 46809120 */  cvt.s.w $f4, $f18
/* 0002FC 809AAB0C 448E4000 */  mtc1  $t6, $f8
/* 000300 809AAB10 860C0044 */  lh    $t4, 0x44($s0)
/* 000304 809AAB14 31F800FF */  andi  $t8, $t7, 0xff
/* 000308 809AAB18 0018CC00 */  sll   $t9, $t8, 0x10
/* 00030C 809AAB1C 468042A0 */  cvt.s.w $f10, $f8
/* 000310 809AAB20 000C6E00 */  sll   $t5, $t4, 0x18
/* 000314 809AAB24 3C0FFB00 */  lui   $t7, 0xfb00
/* 000318 809AAB28 46048183 */  div.s $f6, $f16, $f4
/* 00031C 809AAB2C 460A3482 */  mul.s $f18, $f6, $f10
/* 000320 809AAB30 4600940D */  trunc.w.s $f16, $f18
/* 000324 809AAB34 44088000 */  mfc1  $t0, $f16
/* 000328 809AAB38 00000000 */  nop   
/* 00032C 809AAB3C 250900C8 */  addiu $t1, $t0, 0xc8
/* 000330 809AAB40 312A00FF */  andi  $t2, $t1, 0xff
/* 000334 809AAB44 86090048 */  lh    $t1, 0x48($s0)
/* 000338 809AAB48 014D7025 */  or    $t6, $t2, $t5
/* 00033C 809AAB4C 01D94025 */  or    $t0, $t6, $t9
/* 000340 809AAB50 312B00FF */  andi  $t3, $t1, 0xff
/* 000344 809AAB54 000B6200 */  sll   $t4, $t3, 8
/* 000348 809AAB58 010C5025 */  or    $t2, $t0, $t4
/* 00034C 809AAB5C AC6A0004 */  sw    $t2, 4($v1)
/* 000350 809AAB60 8E2302D0 */  lw    $v1, 0x2d0($s1)
/* 000354 809AAB64 246D0008 */  addiu $t5, $v1, 8
/* 000358 809AAB68 AE2D02D0 */  sw    $t5, 0x2d0($s1)
/* 00035C 809AAB6C AC6F0000 */  sw    $t7, ($v1)
/* 000360 809AAB70 86180052 */  lh    $t8, 0x52($s0)
/* 000364 809AAB74 860C004E */  lh    $t4, 0x4e($s0)
/* 000368 809AAB78 8609004C */  lh    $t1, 0x4c($s0)
/* 00036C 809AAB7C 330E00FF */  andi  $t6, $t8, 0xff
/* 000370 809AAB80 86180050 */  lh    $t8, 0x50($s0)
/* 000374 809AAB84 318A00FF */  andi  $t2, $t4, 0xff
/* 000378 809AAB88 00095E00 */  sll   $t3, $t1, 0x18
/* 00037C 809AAB8C 01CB4025 */  or    $t0, $t6, $t3
/* 000380 809AAB90 000A6C00 */  sll   $t5, $t2, 0x10
/* 000384 809AAB94 331900FF */  andi  $t9, $t8, 0xff
/* 000388 809AAB98 00194A00 */  sll   $t1, $t9, 8
/* 00038C 809AAB9C 010D7825 */  or    $t7, $t0, $t5
/* 000390 809AABA0 01E97025 */  or    $t6, $t7, $t1
/* 000394 809AABA4 AC6E0004 */  sw    $t6, 4($v1)
/* 000398 809AABA8 8E2302D0 */  lw    $v1, 0x2d0($s1)
/* 00039C 809AABAC 3C0CDE00 */  lui   $t4, 0xde00
/* 0003A0 809AABB0 246B0008 */  addiu $t3, $v1, 8
/* 0003A4 809AABB4 AE2B02D0 */  sw    $t3, 0x2d0($s1)
/* 0003A8 809AABB8 AC6C0000 */  sw    $t4, ($v1)
/* 0003AC 809AABBC 8E0A0038 */  lw    $t2, 0x38($s0)
/* 0003B0 809AABC0 AC6A0004 */  sw    $t2, 4($v1)
.L809AABC4:
/* 0003B4 809AABC4 3C06809B */  lui   $a2, %hi(D_809AAE28) # $a2, 0x809b
/* 0003B8 809AABC8 24C6AE28 */  addiu $a2, %lo(D_809AAE28) # addiu $a2, $a2, -0x51d8
/* 0003BC 809AABCC 27A4003C */  addiu $a0, $sp, 0x3c
/* 0003C0 809AABD0 02202825 */  move  $a1, $s1
/* 0003C4 809AABD4 0C031AD5 */  jal   func_800C6B54
/* 0003C8 809AABD8 2407012D */   li    $a3, 301
/* 0003CC 809AABDC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0003D0 809AABE0 8FB00014 */  lw    $s0, 0x14($sp)
/* 0003D4 809AABE4 8FB10018 */  lw    $s1, 0x18($sp)
/* 0003D8 809AABE8 03E00008 */  jr    $ra
/* 0003DC 809AABEC 27BD01E0 */   addiu $sp, $sp, 0x1e0

func_809AABF0:
/* 0003E0 809AABF0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0003E4 809AABF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0003E8 809AABF8 AFA40018 */  sw    $a0, 0x18($sp)
/* 0003EC 809AABFC AFA5001C */  sw    $a1, 0x1c($sp)
/* 0003F0 809AAC00 0C03F66B */  jal   Math_Rand_ZeroOne
/* 0003F4 809AAC04 AFA60020 */   sw    $a2, 0x20($sp)
/* 0003F8 809AAC08 3C01809B */  lui   $at, %hi(D_809AAE44) # $at, 0x809b
/* 0003FC 809AAC0C C424AE44 */  lwc1  $f4, %lo(D_809AAE44)($at)
/* 000400 809AAC10 3C01809B */  lui   $at, %hi(D_809AAE48) # $at, 0x809b
/* 000404 809AAC14 C428AE48 */  lwc1  $f8, %lo(D_809AAE48)($at)
/* 000408 809AAC18 46040182 */  mul.s $f6, $f0, $f4
/* 00040C 809AAC1C 8FA60020 */  lw    $a2, 0x20($sp)
/* 000410 809AAC20 46083281 */  sub.s $f10, $f6, $f8
/* 000414 809AAC24 0C03F66B */  jal   Math_Rand_ZeroOne
/* 000418 809AAC28 E4CA0018 */   swc1  $f10, 0x18($a2)
/* 00041C 809AAC2C 3C01809B */  lui   $at, %hi(D_809AAE4C) # $at, 0x809b
/* 000420 809AAC30 C430AE4C */  lwc1  $f16, %lo(D_809AAE4C)($at)
/* 000424 809AAC34 8FA60020 */  lw    $a2, 0x20($sp)
/* 000428 809AAC38 3C01809B */  lui   $at, %hi(D_809AAE50) # $at, 0x809b
/* 00042C 809AAC3C 46100482 */  mul.s $f18, $f0, $f16
/* 000430 809AAC40 84C20054 */  lh    $v0, 0x54($a2)
/* 000434 809AAC44 84CE0052 */  lh    $t6, 0x52($a2)
/* 000438 809AAC48 C424AE50 */  lwc1  $f4, %lo(D_809AAE50)($at)
/* 00043C 809AAC4C 0002C023 */  negu  $t8, $v0
/* 000440 809AAC50 01C27821 */  addu  $t7, $t6, $v0
/* 000444 809AAC54 A4CF0052 */  sh    $t7, 0x52($a2)
/* 000448 809AAC58 46049181 */  sub.s $f6, $f18, $f4
/* 00044C 809AAC5C 84C30052 */  lh    $v1, 0x52($a2)
/* 000450 809AAC60 04610004 */  bgez  $v1, .L809AAC74
/* 000454 809AAC64 E4C60020 */   swc1  $f6, 0x20($a2)
/* 000458 809AAC68 A4C00052 */  sh    $zero, 0x52($a2)
/* 00045C 809AAC6C 10000007 */  b     .L809AAC8C
/* 000460 809AAC70 A4D80054 */   sh    $t8, 0x54($a2)
.L809AAC74:
/* 000464 809AAC74 28610100 */  slti  $at, $v1, 0x100
/* 000468 809AAC78 14200004 */  bnez  $at, .L809AAC8C
/* 00046C 809AAC7C 241900FF */   li    $t9, 255
/* 000470 809AAC80 00024023 */  negu  $t0, $v0
/* 000474 809AAC84 A4D90052 */  sh    $t9, 0x52($a2)
/* 000478 809AAC88 A4C80054 */  sh    $t0, 0x54($a2)
.L809AAC8C:
/* 00047C 809AAC8C 84C90042 */  lh    $t1, 0x42($a2)
/* 000480 809AAC90 84CA0040 */  lh    $t2, 0x40($a2)
/* 000484 809AAC94 012A5821 */  addu  $t3, $t1, $t2
/* 000488 809AAC98 A4CB0042 */  sh    $t3, 0x42($a2)
/* 00048C 809AAC9C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000490 809AACA0 27BD0018 */  addiu $sp, $sp, 0x18
/* 000494 809AACA4 03E00008 */  jr    $ra
/* 000498 809AACA8 00000000 */   nop   

func_809AACAC:
/* 00049C 809AACAC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0004A0 809AACB0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0004A4 809AACB4 AFA40018 */  sw    $a0, 0x18($sp)
/* 0004A8 809AACB8 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0004AC 809AACBC 3C01809B */  lui   $at, %hi(D_809AAE54) # $at, 0x809b
/* 0004B0 809AACC0 C420AE54 */  lwc1  $f0, %lo(D_809AAE54)($at)
/* 0004B4 809AACC4 C4C4000C */  lwc1  $f4, 0xc($a2)
/* 0004B8 809AACC8 C4C80014 */  lwc1  $f8, 0x14($a2)
/* 0004BC 809AACCC 3C01809B */  lui   $at, %hi(D_809AAE58) # $at, 0x809b
/* 0004C0 809AACD0 46002182 */  mul.s $f6, $f4, $f0
/* 0004C4 809AACD4 00000000 */  nop   
/* 0004C8 809AACD8 46004282 */  mul.s $f10, $f8, $f0
/* 0004CC 809AACDC E4C6000C */  swc1  $f6, 0xc($a2)
/* 0004D0 809AACE0 E4CA0014 */  swc1  $f10, 0x14($a2)
/* 0004D4 809AACE4 AFA60020 */  sw    $a2, 0x20($sp)
/* 0004D8 809AACE8 0C00CFC8 */  jal   Math_Rand_CenteredFloat
/* 0004DC 809AACEC C42CAE58 */   lwc1  $f12, %lo(D_809AAE58)($at)
/* 0004E0 809AACF0 8FA60020 */  lw    $a2, 0x20($sp)
/* 0004E4 809AACF4 3C01809B */  lui   $at, %hi(D_809AAE5C) # $at, 0x809b
/* 0004E8 809AACF8 E4C00018 */  swc1  $f0, 0x18($a2)
/* 0004EC 809AACFC 0C00CFC8 */  jal   Math_Rand_CenteredFloat
/* 0004F0 809AAD00 C42CAE5C */   lwc1  $f12, %lo(D_809AAE5C)($at)
/* 0004F4 809AAD04 8FA60020 */  lw    $a2, 0x20($sp)
/* 0004F8 809AAD08 84C20054 */  lh    $v0, 0x54($a2)
/* 0004FC 809AAD0C 84CE0052 */  lh    $t6, 0x52($a2)
/* 000500 809AAD10 E4C00020 */  swc1  $f0, 0x20($a2)
/* 000504 809AAD14 0002C023 */  negu  $t8, $v0
/* 000508 809AAD18 01C27821 */  addu  $t7, $t6, $v0
/* 00050C 809AAD1C A4CF0052 */  sh    $t7, 0x52($a2)
/* 000510 809AAD20 84C30052 */  lh    $v1, 0x52($a2)
/* 000514 809AAD24 04610004 */  bgez  $v1, .L809AAD38
/* 000518 809AAD28 28610100 */   slti  $at, $v1, 0x100
/* 00051C 809AAD2C A4C00052 */  sh    $zero, 0x52($a2)
/* 000520 809AAD30 10000006 */  b     .L809AAD4C
/* 000524 809AAD34 A4D80054 */   sh    $t8, 0x54($a2)
.L809AAD38:
/* 000528 809AAD38 14200004 */  bnez  $at, .L809AAD4C
/* 00052C 809AAD3C 241900FF */   li    $t9, 255
/* 000530 809AAD40 00024023 */  negu  $t0, $v0
/* 000534 809AAD44 A4D90052 */  sh    $t9, 0x52($a2)
/* 000538 809AAD48 A4C80054 */  sh    $t0, 0x54($a2)
.L809AAD4C:
/* 00053C 809AAD4C 84C90042 */  lh    $t1, 0x42($a2)
/* 000540 809AAD50 84CA0040 */  lh    $t2, 0x40($a2)
/* 000544 809AAD54 012A5821 */  addu  $t3, $t1, $t2
/* 000548 809AAD58 A4CB0042 */  sh    $t3, 0x42($a2)
/* 00054C 809AAD5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000550 809AAD60 27BD0018 */  addiu $sp, $sp, 0x18
/* 000554 809AAD64 03E00008 */  jr    $ra
/* 000558 809AAD68 00000000 */   nop   

func_809AAD6C:
/* 00055C 809AAD6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000560 809AAD70 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000564 809AAD74 AFA40018 */  sw    $a0, 0x18($sp)
/* 000568 809AAD78 AFA5001C */  sw    $a1, 0x1c($sp)
/* 00056C 809AAD7C 84CE0058 */  lh    $t6, 0x58($a2)
/* 000570 809AAD80 3C014700 */  li    $at, 0x47000000 # 32768.000000
/* 000574 809AAD84 44812000 */  mtc1  $at, $f4
/* 000578 809AAD88 448E3000 */  mtc1  $t6, $f6
/* 00057C 809AAD8C 84CF005C */  lh    $t7, 0x5c($a2)
/* 000580 809AAD90 AFA60020 */  sw    $a2, 0x20($sp)
/* 000584 809AAD94 46803220 */  cvt.s.w $f8, $f6
/* 000588 809AAD98 448F8000 */  mtc1  $t7, $f16
/* 00058C 809AAD9C 00000000 */  nop   
/* 000590 809AADA0 468084A0 */  cvt.s.w $f18, $f16
/* 000594 809AADA4 46082283 */  div.s $f10, $f4, $f8
/* 000598 809AADA8 46125182 */  mul.s $f6, $f10, $f18
/* 00059C 809AADAC 4600310D */  trunc.w.s $f4, $f6
/* 0005A0 809AADB0 44042000 */  mfc1  $a0, $f4
/* 0005A4 809AADB4 00000000 */  nop   
/* 0005A8 809AADB8 00042400 */  sll   $a0, $a0, 0x10
/* 0005AC 809AADBC 0C01DE1C */  jal   Math_Sins
/* 0005B0 809AADC0 00042403 */   sra   $a0, $a0, 0x10
/* 0005B4 809AADC4 8FA60020 */  lw    $a2, 0x20($sp)
/* 0005B8 809AADC8 84D90052 */  lh    $t9, 0x52($a2)
/* 0005BC 809AADCC 44994000 */  mtc1  $t9, $f8
/* 0005C0 809AADD0 00000000 */  nop   
/* 0005C4 809AADD4 46804420 */  cvt.s.w $f16, $f8
/* 0005C8 809AADD8 46100282 */  mul.s $f10, $f0, $f16
/* 0005CC 809AADDC 4600548D */  trunc.w.s $f18, $f10
/* 0005D0 809AADE0 44099000 */  mfc1  $t1, $f18
/* 0005D4 809AADE4 00000000 */  nop   
/* 0005D8 809AADE8 A4C90056 */  sh    $t1, 0x56($a2)
/* 0005DC 809AADEC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0005E0 809AADF0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0005E4 809AADF4 03E00008 */  jr    $ra
/* 0005E8 809AADF8 00000000 */   nop   

.section .data

D_809AAE00:
.incbin "baserom/ovl_Effect_Ss_KiraKira", 0x5F0, 0x10
D_809AAE10:
.incbin "baserom/ovl_Effect_Ss_KiraKira", 0x600, 0x18
D_809AAE28:
.incbin "baserom/ovl_Effect_Ss_KiraKira", 0x618, 0x18
D_809AAE40:
.incbin "baserom/ovl_Effect_Ss_KiraKira", 0x630, 0x4
D_809AAE44:
.incbin "baserom/ovl_Effect_Ss_KiraKira", 0x634, 0x4
D_809AAE48:
.incbin "baserom/ovl_Effect_Ss_KiraKira", 0x638, 0x04
D_809AAE4C:
.incbin "baserom/ovl_Effect_Ss_KiraKira", 0x63C, 0x04
D_809AAE50:
.incbin "baserom/ovl_Effect_Ss_KiraKira", 0x640, 0x04
D_809AAE54:
.incbin "baserom/ovl_Effect_Ss_KiraKira", 0x644, 0x04
D_809AAE58:
.incbin "baserom/ovl_Effect_Ss_KiraKira", 0x648, 0x04
D_809AAE5C:
.incbin "baserom/ovl_Effect_Ss_KiraKira", 0x64C, 0x94
