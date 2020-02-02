.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800A08A0
/* B17A40 800A08A0 27BDFF98 */  addiu $sp, $sp, -0x68
/* B17A44 800A08A4 AFBF0024 */  sw    $ra, 0x24($sp)
/* B17A48 800A08A8 AFA40068 */  sw    $a0, 0x68($sp)
/* B17A4C 800A08AC AFA5006C */  sw    $a1, 0x6c($sp)
/* B17A50 800A08B0 AFA60070 */  sw    $a2, 0x70($sp)
/* B17A54 800A08B4 AFA70074 */  sw    $a3, 0x74($sp)
/* B17A58 800A08B8 8C850000 */  lw    $a1, ($a0)
/* B17A5C 800A08BC 3C068014 */  lui   $a2, %hi(D_8013FF50) # $a2, 0x8014
/* B17A60 800A08C0 24C6FF50 */  addiu $a2, %lo(D_8013FF50) # addiu $a2, $a2, -0xb0
/* B17A64 800A08C4 27A40038 */  addiu $a0, $sp, 0x38
/* B17A68 800A08C8 24070305 */  li    $a3, 773
/* B17A6C 800A08CC 0C031AB1 */  jal   func_800C6AC4
/* B17A70 800A08D0 AFA50048 */   sw    $a1, 0x48($sp)
/* B17A74 800A08D4 0C034213 */  jal   func_800D084C
/* B17A78 800A08D8 00000000 */   nop   
/* B17A7C 800A08DC 8FB8006C */  lw    $t8, 0x6c($sp)
/* B17A80 800A08E0 8FAF0070 */  lw    $t7, 0x70($sp)
/* B17A84 800A08E4 3C0E8016 */  lui   $t6, %hi(D_80166FA8)
/* B17A88 800A08E8 0018C880 */  sll   $t9, $t8, 2
/* B17A8C 800A08EC 01F94821 */  addu  $t1, $t7, $t9
/* B17A90 800A08F0 8D220000 */  lw    $v0, ($t1)
/* B17A94 800A08F4 270F0001 */  addiu $t7, $t8, 1
/* B17A98 800A08F8 8FA90074 */  lw    $t1, 0x74($sp)
/* B17A9C 800A08FC 00025900 */  sll   $t3, $v0, 4
/* B17AA0 800A0900 000B6702 */  srl   $t4, $t3, 0x1c
/* B17AA4 800A0904 000C6880 */  sll   $t5, $t4, 2
/* B17AA8 800A0908 01CD7021 */  addu  $t6, $t6, $t5
/* B17AAC 800A090C 8DCE6FA8 */  lw    $t6, %lo(D_80166FA8)($t6)
/* B17AB0 800A0910 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B17AB4 800A0914 000F5880 */  sll   $t3, $t7, 2
/* B17AB8 800A0918 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B17ABC 800A091C 016F5823 */  subu  $t3, $t3, $t7
/* B17AC0 800A0920 000B5840 */  sll   $t3, $t3, 1
/* B17AC4 800A0924 00415024 */  and   $t2, $v0, $at
/* B17AC8 800A0928 AFAF006C */  sw    $t7, 0x6c($sp)
/* B17ACC 800A092C 012B6021 */  addu  $t4, $t1, $t3
/* B17AD0 800A0930 014E4021 */  addu  $t0, $t2, $t6
/* B17AD4 800A0934 898A0000 */  lwl   $t2, ($t4)
/* B17AD8 800A0938 998A0003 */  lwr   $t2, 3($t4)
/* B17ADC 800A093C 27B9004C */  addiu $t9, $sp, 0x4c
/* B17AE0 800A0940 3C018000 */  lui   $at, 0x8000
/* B17AE4 800A0944 AF2A0000 */  sw    $t2, ($t9)
/* B17AE8 800A0948 958A0004 */  lhu   $t2, 4($t4)
/* B17AEC 800A094C 01014021 */  addu  $t0, $t0, $at
/* B17AF0 800A0950 27A60060 */  addiu $a2, $sp, 0x60
/* B17AF4 800A0954 A72A0004 */  sh    $t2, 4($t9)
/* B17AF8 800A0958 850E0000 */  lh    $t6, ($t0)
/* B17AFC 800A095C 8FA90084 */  lw    $t1, 0x84($sp)
/* B17B00 800A0960 8FAD0078 */  lw    $t5, 0x78($sp)
/* B17B04 800A0964 448E2000 */  mtc1  $t6, $f4
/* B17B08 800A0968 00095880 */  sll   $t3, $t1, 2
/* B17B0C 800A096C 010BC821 */  addu  $t9, $t0, $t3
/* B17B10 800A0970 468021A0 */  cvt.s.w $f6, $f4
/* B17B14 800A0974 8FA5006C */  lw    $a1, 0x6c($sp)
/* B17B18 800A0978 8FA40068 */  lw    $a0, 0x68($sp)
/* B17B1C 800A097C 27AA004C */  addiu $t2, $sp, 0x4c
/* B17B20 800A0980 27A70054 */  addiu $a3, $sp, 0x54
/* B17B24 800A0984 E7A60054 */  swc1  $f6, 0x54($sp)
/* B17B28 800A0988 85180002 */  lh    $t8, 2($t0)
/* B17B2C 800A098C 44984000 */  mtc1  $t8, $f8
/* B17B30 800A0990 00000000 */  nop   
/* B17B34 800A0994 468042A0 */  cvt.s.w $f10, $f8
/* B17B38 800A0998 E7AA0058 */  swc1  $f10, 0x58($sp)
/* B17B3C 800A099C 850F0004 */  lh    $t7, 4($t0)
/* B17B40 800A09A0 448F8000 */  mtc1  $t7, $f16
/* B17B44 800A09A4 00000000 */  nop   
/* B17B48 800A09A8 468084A0 */  cvt.s.w $f18, $f16
/* B17B4C 800A09AC E7B2005C */  swc1  $f18, 0x5c($sp)
/* B17B50 800A09B0 8F2C0008 */  lw    $t4, 8($t9)
/* B17B54 800A09B4 11A00008 */  beqz  $t5, .L800A09D8
/* B17B58 800A09B8 AFAC0060 */   sw    $t4, 0x60($sp)
/* B17B5C 800A09BC 8FAE0080 */  lw    $t6, 0x80($sp)
/* B17B60 800A09C0 AFAA0010 */  sw    $t2, 0x10($sp)
/* B17B64 800A09C4 AFA80064 */  sw    $t0, 0x64($sp)
/* B17B68 800A09C8 01A0F809 */  jalr  $t5
/* B17B6C 800A09CC AFAE0014 */  sw    $t6, 0x14($sp)
/* B17B70 800A09D0 14400022 */  bnez  $v0, .L800A0A5C
/* B17B74 800A09D4 8FA80064 */   lw    $t0, 0x64($sp)
.L800A09D8:
/* B17B78 800A09D8 27A40054 */  addiu $a0, $sp, 0x54
/* B17B7C 800A09DC 27A5004C */  addiu $a1, $sp, 0x4c
/* B17B80 800A09E0 0C0344D0 */  jal   func_800D1340
/* B17B84 800A09E4 AFA80064 */   sw    $t0, 0x64($sp)
/* B17B88 800A09E8 8FB80060 */  lw    $t8, 0x60($sp)
/* B17B8C 800A09EC 8FA80064 */  lw    $t0, 0x64($sp)
/* B17B90 800A09F0 8FA70048 */  lw    $a3, 0x48($sp)
/* B17B94 800A09F4 13000019 */  beqz  $t8, .L800A0A5C
/* B17B98 800A09F8 3C09DA38 */   lui   $t1, (0xDA380003 >> 16) # lui $t1, 0xda38
/* B17B9C 800A09FC 8CE202C0 */  lw    $v0, 0x2c0($a3)
/* B17BA0 800A0A00 35290003 */  ori   $t1, (0xDA380003 & 0xFFFF) # ori $t1, $t1, 3
/* B17BA4 800A0A04 3C058014 */  lui   $a1, %hi(D_8013FF64) # $a1, 0x8014
/* B17BA8 800A0A08 244F0008 */  addiu $t7, $v0, 8
/* B17BAC 800A0A0C ACEF02C0 */  sw    $t7, 0x2c0($a3)
/* B17BB0 800A0A10 AC490000 */  sw    $t1, ($v0)
/* B17BB4 800A0A14 8FAB0068 */  lw    $t3, 0x68($sp)
/* B17BB8 800A0A18 24A5FF64 */  addiu $a1, %lo(D_8013FF64) # addiu $a1, $a1, -0x9c
/* B17BBC 800A0A1C 24060325 */  li    $a2, 805
/* B17BC0 800A0A20 8D640000 */  lw    $a0, ($t3)
/* B17BC4 800A0A24 AFA80064 */  sw    $t0, 0x64($sp)
/* B17BC8 800A0A28 0C0346A2 */  jal   func_800D1A88
/* B17BCC 800A0A2C AFA20034 */   sw    $v0, 0x34($sp)
/* B17BD0 800A0A30 8FA30034 */  lw    $v1, 0x34($sp)
/* B17BD4 800A0A34 8FA80064 */  lw    $t0, 0x64($sp)
/* B17BD8 800A0A38 3C0ADE00 */  lui   $t2, 0xde00
/* B17BDC 800A0A3C AC620004 */  sw    $v0, 4($v1)
/* B17BE0 800A0A40 8FB90048 */  lw    $t9, 0x48($sp)
/* B17BE4 800A0A44 8F2202C0 */  lw    $v0, 0x2c0($t9)
/* B17BE8 800A0A48 244C0008 */  addiu $t4, $v0, 8
/* B17BEC 800A0A4C AF2C02C0 */  sw    $t4, 0x2c0($t9)
/* B17BF0 800A0A50 AC4A0000 */  sw    $t2, ($v0)
/* B17BF4 800A0A54 8FAE0060 */  lw    $t6, 0x60($sp)
/* B17BF8 800A0A58 AC4E0004 */  sw    $t6, 4($v0)
.L800A0A5C:
/* B17BFC 800A0A5C 8FAD007C */  lw    $t5, 0x7c($sp)
/* B17C00 800A0A60 8FA40068 */  lw    $a0, 0x68($sp)
/* B17C04 800A0A64 8FA5006C */  lw    $a1, 0x6c($sp)
/* B17C08 800A0A68 11A00007 */  beqz  $t5, .L800A0A88
/* B17C0C 800A0A6C 27A60060 */   addiu $a2, $sp, 0x60
/* B17C10 800A0A70 8FB80080 */  lw    $t8, 0x80($sp)
/* B17C14 800A0A74 27A7004C */  addiu $a3, $sp, 0x4c
/* B17C18 800A0A78 AFA80064 */  sw    $t0, 0x64($sp)
/* B17C1C 800A0A7C 01A0F809 */  jalr  $t5
/* B17C20 800A0A80 AFB80010 */  sw    $t8, 0x10($sp)
/* B17C24 800A0A84 8FA80064 */  lw    $t0, 0x64($sp)
.L800A0A88:
/* B17C28 800A0A88 91050006 */  lbu   $a1, 6($t0)
/* B17C2C 800A0A8C 240100FF */  li    $at, 255
/* B17C30 800A0A90 8FA40068 */  lw    $a0, 0x68($sp)
/* B17C34 800A0A94 10A1000D */  beq   $a1, $at, .L800A0ACC
/* B17C38 800A0A98 8FA60070 */   lw    $a2, 0x70($sp)
/* B17C3C 800A0A9C 8FAF0078 */  lw    $t7, 0x78($sp)
/* B17C40 800A0AA0 8FA9007C */  lw    $t1, 0x7c($sp)
/* B17C44 800A0AA4 8FAB0080 */  lw    $t3, 0x80($sp)
/* B17C48 800A0AA8 8FAC0084 */  lw    $t4, 0x84($sp)
/* B17C4C 800A0AAC 8FA70074 */  lw    $a3, 0x74($sp)
/* B17C50 800A0AB0 AFA80064 */  sw    $t0, 0x64($sp)
/* B17C54 800A0AB4 AFAF0010 */  sw    $t7, 0x10($sp)
/* B17C58 800A0AB8 AFA90014 */  sw    $t1, 0x14($sp)
/* B17C5C 800A0ABC AFAB0018 */  sw    $t3, 0x18($sp)
/* B17C60 800A0AC0 0C028228 */  jal   func_800A08A0
/* B17C64 800A0AC4 AFAC001C */   sw    $t4, 0x1c($sp)
/* B17C68 800A0AC8 8FA80064 */  lw    $t0, 0x64($sp)
.L800A0ACC:
/* B17C6C 800A0ACC 0C034221 */  jal   func_800D0884
/* B17C70 800A0AD0 AFA80064 */   sw    $t0, 0x64($sp)
/* B17C74 800A0AD4 8FA80064 */  lw    $t0, 0x64($sp)
/* B17C78 800A0AD8 240100FF */  li    $at, 255
/* B17C7C 800A0ADC 8FA40068 */  lw    $a0, 0x68($sp)
/* B17C80 800A0AE0 91050007 */  lbu   $a1, 7($t0)
/* B17C84 800A0AE4 8FA60070 */  lw    $a2, 0x70($sp)
/* B17C88 800A0AE8 8FA70074 */  lw    $a3, 0x74($sp)
/* B17C8C 800A0AEC 10A10009 */  beq   $a1, $at, .L800A0B14
/* B17C90 800A0AF0 8FB90078 */   lw    $t9, 0x78($sp)
/* B17C94 800A0AF4 8FAA007C */  lw    $t2, 0x7c($sp)
/* B17C98 800A0AF8 8FAE0080 */  lw    $t6, 0x80($sp)
/* B17C9C 800A0AFC 8FB80084 */  lw    $t8, 0x84($sp)
/* B17CA0 800A0B00 AFB90010 */  sw    $t9, 0x10($sp)
/* B17CA4 800A0B04 AFAA0014 */  sw    $t2, 0x14($sp)
/* B17CA8 800A0B08 AFAE0018 */  sw    $t6, 0x18($sp)
/* B17CAC 800A0B0C 0C028228 */  jal   func_800A08A0
/* B17CB0 800A0B10 AFB8001C */   sw    $t8, 0x1c($sp)
.L800A0B14:
/* B17CB4 800A0B14 8FAD0068 */  lw    $t5, 0x68($sp)
/* B17CB8 800A0B18 3C068014 */  lui   $a2, %hi(D_8013FF78) # $a2, 0x8014
/* B17CBC 800A0B1C 24C6FF78 */  addiu $a2, %lo(D_8013FF78) # addiu $a2, $a2, -0x88
/* B17CC0 800A0B20 27A40038 */  addiu $a0, $sp, 0x38
/* B17CC4 800A0B24 24070335 */  li    $a3, 821
/* B17CC8 800A0B28 0C031AD5 */  jal   func_800C6B54
/* B17CCC 800A0B2C 8DA50000 */   lw    $a1, ($t5)
/* B17CD0 800A0B30 8FBF0024 */  lw    $ra, 0x24($sp)
/* B17CD4 800A0B34 27BD0068 */  addiu $sp, $sp, 0x68
/* B17CD8 800A0B38 03E00008 */  jr    $ra
/* B17CDC 800A0B3C 00000000 */   nop   

glabel func_800A0B40
/* B17CE0 800A0B40 27BDFF98 */  addiu $sp, $sp, -0x68
/* B17CE4 800A0B44 AFBF0024 */  sw    $ra, 0x24($sp)
/* B17CE8 800A0B48 AFA40068 */  sw    $a0, 0x68($sp)
/* B17CEC 800A0B4C AFA5006C */  sw    $a1, 0x6c($sp)
/* B17CF0 800A0B50 AFA60070 */  sw    $a2, 0x70($sp)
/* B17CF4 800A0B54 14A0000C */  bnez  $a1, .L800A0B88
/* B17CF8 800A0B58 AFA70074 */   sw    $a3, 0x74($sp)
/* B17CFC 800A0B5C 3C048014 */  lui   $a0, %hi(D_8013FF8C) # $a0, 0x8014
/* B17D00 800A0B60 0C00084C */  jal   osSyncPrintf
/* B17D04 800A0B64 2484FF8C */   addiu $a0, %lo(D_8013FF8C) # addiu $a0, $a0, -0x74
/* B17D08 800A0B68 3C048014 */  lui   $a0, %hi(D_8013FF94) # $a0, 0x8014
/* B17D0C 800A0B6C 0C00084C */  jal   osSyncPrintf
/* B17D10 800A0B70 2484FF94 */   addiu $a0, %lo(D_8013FF94) # addiu $a0, $a0, -0x6c
/* B17D14 800A0B74 3C048014 */  lui   $a0, %hi(D_8013FFB8) # $a0, 0x8014
/* B17D18 800A0B78 0C00084C */  jal   osSyncPrintf
/* B17D1C 800A0B7C 2484FFB8 */   addiu $a0, %lo(D_8013FFB8) # addiu $a0, $a0, -0x48
/* B17D20 800A0B80 10000081 */  b     .L800A0D88
/* B17D24 800A0B84 8FBF0024 */   lw    $ra, 0x24($sp)
.L800A0B88:
/* B17D28 800A0B88 8FAF0068 */  lw    $t7, 0x68($sp)
/* B17D2C 800A0B8C 3C068014 */  lui   $a2, %hi(D_8013FFBC) # $a2, 0x8014
/* B17D30 800A0B90 24C6FFBC */  addiu $a2, %lo(D_8013FFBC) # addiu $a2, $a2, -0x44
/* B17D34 800A0B94 8DE50000 */  lw    $a1, ($t7)
/* B17D38 800A0B98 27A40034 */  addiu $a0, $sp, 0x34
/* B17D3C 800A0B9C 24070351 */  li    $a3, 849
/* B17D40 800A0BA0 0C031AB1 */  jal   func_800C6AC4
/* B17D44 800A0BA4 AFA50044 */   sw    $a1, 0x44($sp)
/* B17D48 800A0BA8 0C034213 */  jal   func_800D084C
/* B17D4C 800A0BAC 00000000 */   nop   
/* B17D50 800A0BB0 8FB8006C */  lw    $t8, 0x6c($sp)
/* B17D54 800A0BB4 3C0B8016 */  lui   $t3, %hi(D_80166FA8)
/* B17D58 800A0BB8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B17D5C 800A0BBC 8F020000 */  lw    $v0, ($t8)
/* B17D60 800A0BC0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B17D64 800A0BC4 8FA30070 */  lw    $v1, 0x70($sp)
/* B17D68 800A0BC8 00024100 */  sll   $t0, $v0, 4
/* B17D6C 800A0BCC 00084F02 */  srl   $t1, $t0, 0x1c
/* B17D70 800A0BD0 00095080 */  sll   $t2, $t1, 2
/* B17D74 800A0BD4 016A5821 */  addu  $t3, $t3, $t2
/* B17D78 800A0BD8 8D6B6FA8 */  lw    $t3, %lo(D_80166FA8)($t3)
/* B17D7C 800A0BDC 0041C824 */  and   $t9, $v0, $at
/* B17D80 800A0BE0 3C018000 */  lui   $at, 0x8000
/* B17D84 800A0BE4 032B6021 */  addu  $t4, $t9, $t3
/* B17D88 800A0BE8 01816821 */  addu  $t5, $t4, $at
/* B17D8C 800A0BEC AFAD0064 */  sw    $t5, 0x64($sp)
/* B17D90 800A0BF0 846E0000 */  lh    $t6, ($v1)
/* B17D94 800A0BF4 27A80048 */  addiu $t0, $sp, 0x48
/* B17D98 800A0BF8 24050001 */  li    $a1, 1
/* B17D9C 800A0BFC 448E2000 */  mtc1  $t6, $f4
/* B17DA0 800A0C00 27A6005C */  addiu $a2, $sp, 0x5c
/* B17DA4 800A0C04 27A70050 */  addiu $a3, $sp, 0x50
/* B17DA8 800A0C08 468021A0 */  cvt.s.w $f6, $f4
/* B17DAC 800A0C0C E7A60050 */  swc1  $f6, 0x50($sp)
/* B17DB0 800A0C10 846F0002 */  lh    $t7, 2($v1)
/* B17DB4 800A0C14 448F4000 */  mtc1  $t7, $f8
/* B17DB8 800A0C18 00000000 */  nop   
/* B17DBC 800A0C1C 468042A0 */  cvt.s.w $f10, $f8
/* B17DC0 800A0C20 E7AA0054 */  swc1  $f10, 0x54($sp)
/* B17DC4 800A0C24 84780004 */  lh    $t8, 4($v1)
/* B17DC8 800A0C28 44988000 */  mtc1  $t8, $f16
/* B17DCC 800A0C2C 27B80048 */  addiu $t8, $sp, 0x48
/* B17DD0 800A0C30 468084A0 */  cvt.s.w $f18, $f16
/* B17DD4 800A0C34 E7B20058 */  swc1  $f18, 0x58($sp)
/* B17DD8 800A0C38 886A0006 */  lwl   $t2, 6($v1)
/* B17DDC 800A0C3C 986A0009 */  lwr   $t2, 9($v1)
/* B17DE0 800A0C40 AD0A0000 */  sw    $t2, ($t0)
/* B17DE4 800A0C44 946A000A */  lhu   $t2, 0xa($v1)
/* B17DE8 800A0C48 A50A0004 */  sh    $t2, 4($t0)
/* B17DEC 800A0C4C 8FAB0080 */  lw    $t3, 0x80($sp)
/* B17DF0 800A0C50 8FB90064 */  lw    $t9, 0x64($sp)
/* B17DF4 800A0C54 8FAF0074 */  lw    $t7, 0x74($sp)
/* B17DF8 800A0C58 000B6080 */  sll   $t4, $t3, 2
/* B17DFC 800A0C5C 032C6821 */  addu  $t5, $t9, $t4
/* B17E00 800A0C60 8DAE0008 */  lw    $t6, 8($t5)
/* B17E04 800A0C64 8FA40068 */  lw    $a0, 0x68($sp)
/* B17E08 800A0C68 11E00006 */  beqz  $t7, .L800A0C84
/* B17E0C 800A0C6C AFAE005C */   sw    $t6, 0x5c($sp)
/* B17E10 800A0C70 8FA8007C */  lw    $t0, 0x7c($sp)
/* B17E14 800A0C74 AFB80010 */  sw    $t8, 0x10($sp)
/* B17E18 800A0C78 01E0F809 */  jalr  $t7
/* B17E1C 800A0C7C AFA80014 */  sw    $t0, 0x14($sp)
/* B17E20 800A0C80 1440001E */  bnez  $v0, .L800A0CFC
.L800A0C84:
/* B17E24 800A0C84 27A40050 */   addiu $a0, $sp, 0x50
/* B17E28 800A0C88 0C0344D0 */  jal   func_800D1340
/* B17E2C 800A0C8C 27A50048 */   addiu $a1, $sp, 0x48
/* B17E30 800A0C90 8FA9005C */  lw    $t1, 0x5c($sp)
/* B17E34 800A0C94 8FA70044 */  lw    $a3, 0x44($sp)
/* B17E38 800A0C98 3C0BDA38 */  lui   $t3, (0xDA380003 >> 16) # lui $t3, 0xda38
/* B17E3C 800A0C9C 51200018 */  beql  $t1, $zero, .L800A0D00
/* B17E40 800A0CA0 8FA20078 */   lw    $v0, 0x78($sp)
/* B17E44 800A0CA4 8CE202C0 */  lw    $v0, 0x2c0($a3)
/* B17E48 800A0CA8 356B0003 */  ori   $t3, (0xDA380003 & 0xFFFF) # ori $t3, $t3, 3
/* B17E4C 800A0CAC 3C058014 */  lui   $a1, %hi(D_8013FFD0) # $a1, 0x8014
/* B17E50 800A0CB0 244A0008 */  addiu $t2, $v0, 8
/* B17E54 800A0CB4 ACEA02C0 */  sw    $t2, 0x2c0($a3)
/* B17E58 800A0CB8 AC4B0000 */  sw    $t3, ($v0)
/* B17E5C 800A0CBC 8FB90068 */  lw    $t9, 0x68($sp)
/* B17E60 800A0CC0 24A5FFD0 */  addiu $a1, %lo(D_8013FFD0) # addiu $a1, $a1, -0x30
/* B17E64 800A0CC4 24060371 */  li    $a2, 881
/* B17E68 800A0CC8 8F240000 */  lw    $a0, ($t9)
/* B17E6C 800A0CCC 0C0346A2 */  jal   func_800D1A88
/* B17E70 800A0CD0 AFA20030 */   sw    $v0, 0x30($sp)
/* B17E74 800A0CD4 8FA30030 */  lw    $v1, 0x30($sp)
/* B17E78 800A0CD8 3C0EDE00 */  lui   $t6, 0xde00
/* B17E7C 800A0CDC AC620004 */  sw    $v0, 4($v1)
/* B17E80 800A0CE0 8FAC0044 */  lw    $t4, 0x44($sp)
/* B17E84 800A0CE4 8D8202C0 */  lw    $v0, 0x2c0($t4)
/* B17E88 800A0CE8 244D0008 */  addiu $t5, $v0, 8
/* B17E8C 800A0CEC AD8D02C0 */  sw    $t5, 0x2c0($t4)
/* B17E90 800A0CF0 AC4E0000 */  sw    $t6, ($v0)
/* B17E94 800A0CF4 8FB8005C */  lw    $t8, 0x5c($sp)
/* B17E98 800A0CF8 AC580004 */  sw    $t8, 4($v0)
.L800A0CFC:
/* B17E9C 800A0CFC 8FA20078 */  lw    $v0, 0x78($sp)
.L800A0D00:
/* B17EA0 800A0D00 8FA40068 */  lw    $a0, 0x68($sp)
/* B17EA4 800A0D04 24050001 */  li    $a1, 1
/* B17EA8 800A0D08 10400006 */  beqz  $v0, .L800A0D24
/* B17EAC 800A0D0C 27A6005C */   addiu $a2, $sp, 0x5c
/* B17EB0 800A0D10 8FA8007C */  lw    $t0, 0x7c($sp)
/* B17EB4 800A0D14 27A70048 */  addiu $a3, $sp, 0x48
/* B17EB8 800A0D18 0040F809 */  jalr  $v0
/* B17EBC 800A0D1C AFA80010 */  sw    $t0, 0x10($sp)
/* B17EC0 800A0D20 8FA20078 */  lw    $v0, 0x78($sp)
.L800A0D24:
/* B17EC4 800A0D24 8FAF0064 */  lw    $t7, 0x64($sp)
/* B17EC8 800A0D28 240100FF */  li    $at, 255
/* B17ECC 800A0D2C 8FA40068 */  lw    $a0, 0x68($sp)
/* B17ED0 800A0D30 91E50006 */  lbu   $a1, 6($t7)
/* B17ED4 800A0D34 8FA6006C */  lw    $a2, 0x6c($sp)
/* B17ED8 800A0D38 8FA70070 */  lw    $a3, 0x70($sp)
/* B17EDC 800A0D3C 10A10008 */  beq   $a1, $at, .L800A0D60
/* B17EE0 800A0D40 8FA90074 */   lw    $t1, 0x74($sp)
/* B17EE4 800A0D44 8FAA007C */  lw    $t2, 0x7c($sp)
/* B17EE8 800A0D48 8FAB0080 */  lw    $t3, 0x80($sp)
/* B17EEC 800A0D4C AFA90010 */  sw    $t1, 0x10($sp)
/* B17EF0 800A0D50 AFA20014 */  sw    $v0, 0x14($sp)
/* B17EF4 800A0D54 AFAA0018 */  sw    $t2, 0x18($sp)
/* B17EF8 800A0D58 0C028228 */  jal   func_800A08A0
/* B17EFC 800A0D5C AFAB001C */   sw    $t3, 0x1c($sp)
.L800A0D60:
/* B17F00 800A0D60 0C034221 */  jal   func_800D0884
/* B17F04 800A0D64 00000000 */   nop   
/* B17F08 800A0D68 8FB90068 */  lw    $t9, 0x68($sp)
/* B17F0C 800A0D6C 3C068014 */  lui   $a2, %hi(D_8013FFE4) # $a2, 0x8014
/* B17F10 800A0D70 24C6FFE4 */  addiu $a2, %lo(D_8013FFE4) # addiu $a2, $a2, -0x1c
/* B17F14 800A0D74 27A40034 */  addiu $a0, $sp, 0x34
/* B17F18 800A0D78 2407037E */  li    $a3, 894
/* B17F1C 800A0D7C 0C031AD5 */  jal   func_800C6B54
/* B17F20 800A0D80 8F250000 */   lw    $a1, ($t9)
/* B17F24 800A0D84 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A0D88:
/* B17F28 800A0D88 27BD0068 */  addiu $sp, $sp, 0x68
/* B17F2C 800A0D8C 03E00008 */  jr    $ra
/* B17F30 800A0D90 00000000 */   nop   

glabel func_800A0D94
/* B17F34 800A0D94 27BDFF90 */  addiu $sp, $sp, -0x70
/* B17F38 800A0D98 AFBF002C */  sw    $ra, 0x2c($sp)
/* B17F3C 800A0D9C AFA40070 */  sw    $a0, 0x70($sp)
/* B17F40 800A0DA0 AFA50074 */  sw    $a1, 0x74($sp)
/* B17F44 800A0DA4 AFA60078 */  sw    $a2, 0x78($sp)
/* B17F48 800A0DA8 0C034213 */  jal   func_800D084C
/* B17F4C 800A0DAC AFA7007C */   sw    $a3, 0x7c($sp)
/* B17F50 800A0DB0 8FAF0074 */  lw    $t7, 0x74($sp)
/* B17F54 800A0DB4 8FAE0078 */  lw    $t6, 0x78($sp)
/* B17F58 800A0DB8 3C0D8016 */  lui   $t5, %hi(D_80166FA8)
/* B17F5C 800A0DBC 000FC080 */  sll   $t8, $t7, 2
/* B17F60 800A0DC0 01D8C821 */  addu  $t9, $t6, $t8
/* B17F64 800A0DC4 8F220000 */  lw    $v0, ($t9)
/* B17F68 800A0DC8 25EE0001 */  addiu $t6, $t7, 1
/* B17F6C 800A0DCC 8FB9007C */  lw    $t9, 0x7c($sp)
/* B17F70 800A0DD0 00025100 */  sll   $t2, $v0, 4
/* B17F74 800A0DD4 000A5F02 */  srl   $t3, $t2, 0x1c
/* B17F78 800A0DD8 000B6080 */  sll   $t4, $t3, 2
/* B17F7C 800A0DDC 01AC6821 */  addu  $t5, $t5, $t4
/* B17F80 800A0DE0 8DAD6FA8 */  lw    $t5, %lo(D_80166FA8)($t5)
/* B17F84 800A0DE4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B17F88 800A0DE8 000E5080 */  sll   $t2, $t6, 2
/* B17F8C 800A0DEC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B17F90 800A0DF0 014E5023 */  subu  $t2, $t2, $t6
/* B17F94 800A0DF4 000A5040 */  sll   $t2, $t2, 1
/* B17F98 800A0DF8 00414824 */  and   $t1, $v0, $at
/* B17F9C 800A0DFC AFAE0074 */  sw    $t6, 0x74($sp)
/* B17FA0 800A0E00 032A5821 */  addu  $t3, $t9, $t2
/* B17FA4 800A0E04 012D1821 */  addu  $v1, $t1, $t5
/* B17FA8 800A0E08 89690000 */  lwl   $t1, ($t3)
/* B17FAC 800A0E0C 99690003 */  lwr   $t1, 3($t3)
/* B17FB0 800A0E10 27B80050 */  addiu $t8, $sp, 0x50
/* B17FB4 800A0E14 3C018000 */  lui   $at, 0x8000
/* B17FB8 800A0E18 AF090000 */  sw    $t1, ($t8)
/* B17FBC 800A0E1C 95690004 */  lhu   $t1, 4($t3)
/* B17FC0 800A0E20 00611821 */  addu  $v1, $v1, $at
/* B17FC4 800A0E24 27A60068 */  addiu $a2, $sp, 0x68
/* B17FC8 800A0E28 A7090004 */  sh    $t1, 4($t8)
/* B17FCC 800A0E2C 846D0000 */  lh    $t5, ($v1)
/* B17FD0 800A0E30 8FB9008C */  lw    $t9, 0x8c($sp)
/* B17FD4 800A0E34 8FAC0080 */  lw    $t4, 0x80($sp)
/* B17FD8 800A0E38 448D2000 */  mtc1  $t5, $f4
/* B17FDC 800A0E3C 00195080 */  sll   $t2, $t9, 2
/* B17FE0 800A0E40 006AC021 */  addu  $t8, $v1, $t2
/* B17FE4 800A0E44 468021A0 */  cvt.s.w $f6, $f4
/* B17FE8 800A0E48 8FA50074 */  lw    $a1, 0x74($sp)
/* B17FEC 800A0E4C 8FA40070 */  lw    $a0, 0x70($sp)
/* B17FF0 800A0E50 27A90050 */  addiu $t1, $sp, 0x50
/* B17FF4 800A0E54 27A70058 */  addiu $a3, $sp, 0x58
/* B17FF8 800A0E58 E7A60058 */  swc1  $f6, 0x58($sp)
/* B17FFC 800A0E5C 846F0002 */  lh    $t7, 2($v1)
/* B18000 800A0E60 448F4000 */  mtc1  $t7, $f8
/* B18004 800A0E64 00000000 */  nop   
/* B18008 800A0E68 468042A0 */  cvt.s.w $f10, $f8
/* B1800C 800A0E6C E7AA005C */  swc1  $f10, 0x5c($sp)
/* B18010 800A0E70 846E0004 */  lh    $t6, 4($v1)
/* B18014 800A0E74 448E8000 */  mtc1  $t6, $f16
/* B18018 800A0E78 00000000 */  nop   
/* B1801C 800A0E7C 468084A0 */  cvt.s.w $f18, $f16
/* B18020 800A0E80 E7B20060 */  swc1  $f18, 0x60($sp)
/* B18024 800A0E84 8F0B0008 */  lw    $t3, 8($t8)
/* B18028 800A0E88 AFA3006C */  sw    $v1, 0x6c($sp)
/* B1802C 800A0E8C AFAB0064 */  sw    $t3, 0x64($sp)
/* B18030 800A0E90 11800007 */  beqz  $t4, .L800A0EB0
/* B18034 800A0E94 AFAB0068 */   sw    $t3, 0x68($sp)
/* B18038 800A0E98 8FAD0088 */  lw    $t5, 0x88($sp)
/* B1803C 800A0E9C AFA90010 */  sw    $t1, 0x10($sp)
/* B18040 800A0EA0 AFA3006C */  sw    $v1, 0x6c($sp)
/* B18044 800A0EA4 0180F809 */  jalr  $t4
/* B18048 800A0EA8 AFAD0014 */  sw    $t5, 0x14($sp)
/* B1804C 800A0EAC 1440003C */  bnez  $v0, .L800A0FA0
.L800A0EB0:
/* B18050 800A0EB0 27A40058 */   addiu $a0, $sp, 0x58
/* B18054 800A0EB4 0C0344D0 */  jal   func_800D1340
/* B18058 800A0EB8 27A50050 */   addiu $a1, $sp, 0x50
/* B1805C 800A0EBC 8FAF0068 */  lw    $t7, 0x68($sp)
/* B18060 800A0EC0 8FAE0090 */  lw    $t6, 0x90($sp)
/* B18064 800A0EC4 3C058014 */  lui   $a1, %hi(D_8013FFF8) # $a1, 0x8014
/* B18068 800A0EC8 11E0002A */  beqz  $t7, .L800A0F74
/* B1806C 800A0ECC 8FAB0064 */   lw    $t3, 0x64($sp)
/* B18070 800A0ED0 8DC40000 */  lw    $a0, ($t6)
/* B18074 800A0ED4 24A5FFF8 */  addiu $a1, %lo(D_8013FFF8) # addiu $a1, $a1, -8
/* B18078 800A0ED8 0C034695 */  jal   func_800D1A54
/* B1807C 800A0EDC 240603B1 */   li    $a2, 945
/* B18080 800A0EE0 8FB90070 */  lw    $t9, 0x70($sp)
/* B18084 800A0EE4 3C068014 */  lui   $a2, %hi(D_8014000C) # $a2, 0x8014
/* B18088 800A0EE8 24C6000C */  addiu $a2, %lo(D_8014000C) # addiu $a2, $a2, 0xc
/* B1808C 800A0EEC 8F250000 */  lw    $a1, ($t9)
/* B18090 800A0EF0 27A4003C */  addiu $a0, $sp, 0x3c
/* B18094 800A0EF4 240703B2 */  li    $a3, 946
/* B18098 800A0EF8 0C031AB1 */  jal   func_800C6AC4
/* B1809C 800A0EFC AFA5004C */   sw    $a1, 0x4c($sp)
/* B180A0 800A0F00 8FA8004C */  lw    $t0, 0x4c($sp)
/* B180A4 800A0F04 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* B180A8 800A0F08 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* B180AC 800A0F0C 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B180B0 800A0F10 3C0CDE00 */  lui   $t4, 0xde00
/* B180B4 800A0F14 3C068014 */  lui   $a2, %hi(D_80140020) # $a2, 0x8014
/* B180B8 800A0F18 246A0008 */  addiu $t2, $v1, 8
/* B180BC 800A0F1C AD0A02C0 */  sw    $t2, 0x2c0($t0)
/* B180C0 800A0F20 AC780000 */  sw    $t8, ($v1)
/* B180C4 800A0F24 8FAB0090 */  lw    $t3, 0x90($sp)
/* B180C8 800A0F28 24C60020 */  addiu $a2, %lo(D_80140020) # addiu $a2, $a2, 0x20
/* B180CC 800A0F2C 27A4003C */  addiu $a0, $sp, 0x3c
/* B180D0 800A0F30 8D690000 */  lw    $t1, ($t3)
/* B180D4 800A0F34 240703B5 */  li    $a3, 949
/* B180D8 800A0F38 AC690004 */  sw    $t1, 4($v1)
/* B180DC 800A0F3C 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B180E0 800A0F40 246D0008 */  addiu $t5, $v1, 8
/* B180E4 800A0F44 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B180E8 800A0F48 AC6C0000 */  sw    $t4, ($v1)
/* B180EC 800A0F4C 8FAF0068 */  lw    $t7, 0x68($sp)
/* B180F0 800A0F50 AC6F0004 */  sw    $t7, 4($v1)
/* B180F4 800A0F54 8FAE0070 */  lw    $t6, 0x70($sp)
/* B180F8 800A0F58 0C031AD5 */  jal   func_800C6B54
/* B180FC 800A0F5C 8DC50000 */   lw    $a1, ($t6)
/* B18100 800A0F60 8FB90090 */  lw    $t9, 0x90($sp)
/* B18104 800A0F64 8F2A0000 */  lw    $t2, ($t9)
/* B18108 800A0F68 25580040 */  addiu $t8, $t2, 0x40
/* B1810C 800A0F6C 1000000C */  b     .L800A0FA0
/* B18110 800A0F70 AF380000 */   sw    $t8, ($t9)
.L800A0F74:
/* B18114 800A0F74 1160000A */  beqz  $t3, .L800A0FA0
/* B18118 800A0F78 8FA90090 */   lw    $t1, 0x90($sp)
/* B1811C 800A0F7C 3C058014 */  lui   $a1, %hi(D_80140034) # $a1, 0x8014
/* B18120 800A0F80 24A50034 */  addiu $a1, %lo(D_80140034) # addiu $a1, $a1, 0x34
/* B18124 800A0F84 8D240000 */  lw    $a0, ($t1)
/* B18128 800A0F88 0C034695 */  jal   func_800D1A54
/* B1812C 800A0F8C 240603BA */   li    $a2, 954
/* B18130 800A0F90 8FAD0090 */  lw    $t5, 0x90($sp)
/* B18134 800A0F94 8DAC0000 */  lw    $t4, ($t5)
/* B18138 800A0F98 258F0040 */  addiu $t7, $t4, 0x40
/* B1813C 800A0F9C ADAF0000 */  sw    $t7, ($t5)
.L800A0FA0:
/* B18140 800A0FA0 8FAE0084 */  lw    $t6, 0x84($sp)
/* B18144 800A0FA4 8FA40070 */  lw    $a0, 0x70($sp)
/* B18148 800A0FA8 8FA50074 */  lw    $a1, 0x74($sp)
/* B1814C 800A0FAC 11C00005 */  beqz  $t6, .L800A0FC4
/* B18150 800A0FB0 27A60064 */   addiu $a2, $sp, 0x64
/* B18154 800A0FB4 8FAA0088 */  lw    $t2, 0x88($sp)
/* B18158 800A0FB8 27A70050 */  addiu $a3, $sp, 0x50
/* B1815C 800A0FBC 01C0F809 */  jalr  $t6
/* B18160 800A0FC0 AFAA0010 */  sw    $t2, 0x10($sp)
.L800A0FC4:
/* B18164 800A0FC4 8FB8006C */  lw    $t8, 0x6c($sp)
/* B18168 800A0FC8 240100FF */  li    $at, 255
/* B1816C 800A0FCC 8FA40070 */  lw    $a0, 0x70($sp)
/* B18170 800A0FD0 93050006 */  lbu   $a1, 6($t8)
/* B18174 800A0FD4 8FA60078 */  lw    $a2, 0x78($sp)
/* B18178 800A0FD8 8FA7007C */  lw    $a3, 0x7c($sp)
/* B1817C 800A0FDC 10A1000B */  beq   $a1, $at, .L800A100C
/* B18180 800A0FE0 8FB90080 */   lw    $t9, 0x80($sp)
/* B18184 800A0FE4 8FAB0084 */  lw    $t3, 0x84($sp)
/* B18188 800A0FE8 8FA90088 */  lw    $t1, 0x88($sp)
/* B1818C 800A0FEC 8FAC008C */  lw    $t4, 0x8c($sp)
/* B18190 800A0FF0 8FAF0090 */  lw    $t7, 0x90($sp)
/* B18194 800A0FF4 AFB90010 */  sw    $t9, 0x10($sp)
/* B18198 800A0FF8 AFAB0014 */  sw    $t3, 0x14($sp)
/* B1819C 800A0FFC AFA90018 */  sw    $t1, 0x18($sp)
/* B181A0 800A1000 AFAC001C */  sw    $t4, 0x1c($sp)
/* B181A4 800A1004 0C028365 */  jal   func_800A0D94
/* B181A8 800A1008 AFAF0020 */   sw    $t7, 0x20($sp)
.L800A100C:
/* B181AC 800A100C 0C034221 */  jal   func_800D0884
/* B181B0 800A1010 00000000 */   nop   
/* B181B4 800A1014 8FAD006C */  lw    $t5, 0x6c($sp)
/* B181B8 800A1018 240100FF */  li    $at, 255
/* B181BC 800A101C 8FA40070 */  lw    $a0, 0x70($sp)
/* B181C0 800A1020 91A50007 */  lbu   $a1, 7($t5)
/* B181C4 800A1024 8FA60078 */  lw    $a2, 0x78($sp)
/* B181C8 800A1028 8FA7007C */  lw    $a3, 0x7c($sp)
/* B181CC 800A102C 10A1000B */  beq   $a1, $at, .L800A105C
/* B181D0 800A1030 8FAA0080 */   lw    $t2, 0x80($sp)
/* B181D4 800A1034 8FAE0084 */  lw    $t6, 0x84($sp)
/* B181D8 800A1038 8FB80088 */  lw    $t8, 0x88($sp)
/* B181DC 800A103C 8FB9008C */  lw    $t9, 0x8c($sp)
/* B181E0 800A1040 8FAB0090 */  lw    $t3, 0x90($sp)
/* B181E4 800A1044 AFAA0010 */  sw    $t2, 0x10($sp)
/* B181E8 800A1048 AFAE0014 */  sw    $t6, 0x14($sp)
/* B181EC 800A104C AFB80018 */  sw    $t8, 0x18($sp)
/* B181F0 800A1050 AFB9001C */  sw    $t9, 0x1c($sp)
/* B181F4 800A1054 0C028365 */  jal   func_800A0D94
/* B181F8 800A1058 AFAB0020 */   sw    $t3, 0x20($sp)
.L800A105C:
/* B181FC 800A105C 8FBF002C */  lw    $ra, 0x2c($sp)
/* B18200 800A1060 27BD0070 */  addiu $sp, $sp, 0x70
/* B18204 800A1064 03E00008 */  jr    $ra
/* B18208 800A1068 00000000 */   nop   

glabel func_800A106C
/* B1820C 800A106C 27BDFF80 */  addiu $sp, $sp, -0x80
/* B18210 800A1070 AFBF002C */  sw    $ra, 0x2c($sp)
/* B18214 800A1074 AFA40080 */  sw    $a0, 0x80($sp)
/* B18218 800A1078 AFA50084 */  sw    $a1, 0x84($sp)
/* B1821C 800A107C AFA60088 */  sw    $a2, 0x88($sp)
/* B18220 800A1080 8C840000 */  lw    $a0, ($a0)
/* B18224 800A1084 0C031A73 */  jal   Graph_Alloc
/* B18228 800A1088 00072980 */   sll   $a1, $a3, 6
/* B1822C 800A108C 8FAF0084 */  lw    $t7, 0x84($sp)
/* B18230 800A1090 AFA20058 */  sw    $v0, 0x58($sp)
/* B18234 800A1094 8FB80080 */  lw    $t8, 0x80($sp)
/* B18238 800A1098 15E0000C */  bnez  $t7, .L800A10CC
/* B1823C 800A109C 27A40044 */   addiu $a0, $sp, 0x44
/* B18240 800A10A0 3C048014 */  lui   $a0, %hi(D_80140048) # $a0, 0x8014
/* B18244 800A10A4 0C00084C */  jal   osSyncPrintf
/* B18248 800A10A8 24840048 */   addiu $a0, %lo(D_80140048) # addiu $a0, $a0, 0x48
/* B1824C 800A10AC 3C048014 */  lui   $a0, %hi(D_80140050) # $a0, 0x8014
/* B18250 800A10B0 0C00084C */  jal   osSyncPrintf
/* B18254 800A10B4 24840050 */   addiu $a0, %lo(D_80140050) # addiu $a0, $a0, 0x50
/* B18258 800A10B8 3C048014 */  lui   $a0, %hi(D_80140074) # $a0, 0x8014
/* B1825C 800A10BC 0C00084C */  jal   osSyncPrintf
/* B18260 800A10C0 24840074 */   addiu $a0, %lo(D_80140074) # addiu $a0, $a0, 0x74
/* B18264 800A10C4 1000009C */  b     .L800A1338
/* B18268 800A10C8 8FBF002C */   lw    $ra, 0x2c($sp)
.L800A10CC:
/* B1826C 800A10CC 8F050000 */  lw    $a1, ($t8)
/* B18270 800A10D0 3C068014 */  lui   $a2, %hi(D_80140078) # $a2, 0x8014
/* B18274 800A10D4 24C60078 */  addiu $a2, %lo(D_80140078) # addiu $a2, $a2, 0x78
/* B18278 800A10D8 240703E8 */  li    $a3, 1000
/* B1827C 800A10DC 0C031AB1 */  jal   func_800C6AC4
/* B18280 800A10E0 AFA50054 */   sw    $a1, 0x54($sp)
/* B18284 800A10E4 8FA80054 */  lw    $t0, 0x54($sp)
/* B18288 800A10E8 3C09DB06 */  lui   $t1, (0xDB060034 >> 16) # lui $t1, 0xdb06
/* B1828C 800A10EC 35290034 */  ori   $t1, (0xDB060034 & 0xFFFF) # ori $t1, $t1, 0x34
/* B18290 800A10F0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B18294 800A10F4 24590008 */  addiu $t9, $v0, 8
/* B18298 800A10F8 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B1829C 800A10FC AC490000 */  sw    $t1, ($v0)
/* B182A0 800A1100 8FAA0058 */  lw    $t2, 0x58($sp)
/* B182A4 800A1104 AC4A0004 */  sw    $t2, 4($v0)
/* B182A8 800A1108 0C034213 */  jal   func_800D084C
/* B182AC 800A110C AFA80054 */   sw    $t0, 0x54($sp)
/* B182B0 800A1110 8FAB0084 */  lw    $t3, 0x84($sp)
/* B182B4 800A1114 3C188016 */  lui   $t8, %hi(D_80166FA8)
/* B182B8 800A1118 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B182BC 800A111C 8D620000 */  lw    $v0, ($t3)
/* B182C0 800A1120 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B182C4 800A1124 8FA30088 */  lw    $v1, 0x88($sp)
/* B182C8 800A1128 00026900 */  sll   $t5, $v0, 4
/* B182CC 800A112C 000D7702 */  srl   $t6, $t5, 0x1c
/* B182D0 800A1130 000E7880 */  sll   $t7, $t6, 2
/* B182D4 800A1134 030FC021 */  addu  $t8, $t8, $t7
/* B182D8 800A1138 8F186FA8 */  lw    $t8, %lo(D_80166FA8)($t8)
/* B182DC 800A113C 00416024 */  and   $t4, $v0, $at
/* B182E0 800A1140 3C018000 */  lui   $at, 0x8000
/* B182E4 800A1144 0198C821 */  addu  $t9, $t4, $t8
/* B182E8 800A1148 03214821 */  addu  $t1, $t9, $at
/* B182EC 800A114C AFA9007C */  sw    $t1, 0x7c($sp)
/* B182F0 800A1150 846A0000 */  lh    $t2, ($v1)
/* B182F4 800A1154 8FA80054 */  lw    $t0, 0x54($sp)
/* B182F8 800A1158 27AE005C */  addiu $t6, $sp, 0x5c
/* B182FC 800A115C 448A2000 */  mtc1  $t2, $f4
/* B18300 800A1160 24050001 */  li    $a1, 1
/* B18304 800A1164 27A60074 */  addiu $a2, $sp, 0x74
/* B18308 800A1168 468021A0 */  cvt.s.w $f6, $f4
/* B1830C 800A116C 27A70064 */  addiu $a3, $sp, 0x64
/* B18310 800A1170 E7A60064 */  swc1  $f6, 0x64($sp)
/* B18314 800A1174 846B0002 */  lh    $t3, 2($v1)
/* B18318 800A1178 448B4000 */  mtc1  $t3, $f8
/* B1831C 800A117C 00000000 */  nop   
/* B18320 800A1180 468042A0 */  cvt.s.w $f10, $f8
/* B18324 800A1184 E7AA0068 */  swc1  $f10, 0x68($sp)
/* B18328 800A1188 846D0004 */  lh    $t5, 4($v1)
/* B1832C 800A118C 448D8000 */  mtc1  $t5, $f16
/* B18330 800A1190 00000000 */  nop   
/* B18334 800A1194 468084A0 */  cvt.s.w $f18, $f16
/* B18338 800A1198 E7B2006C */  swc1  $f18, 0x6c($sp)
/* B1833C 800A119C 886C0006 */  lwl   $t4, 6($v1)
/* B18340 800A11A0 986C0009 */  lwr   $t4, 9($v1)
/* B18344 800A11A4 ADCC0000 */  sw    $t4, ($t6)
/* B18348 800A11A8 946C000A */  lhu   $t4, 0xa($v1)
/* B1834C 800A11AC A5CC0004 */  sh    $t4, 4($t6)
/* B18350 800A11B0 8FB9009C */  lw    $t9, 0x9c($sp)
/* B18354 800A11B4 8FB8007C */  lw    $t8, 0x7c($sp)
/* B18358 800A11B8 8FAD0090 */  lw    $t5, 0x90($sp)
/* B1835C 800A11BC 00194880 */  sll   $t1, $t9, 2
/* B18360 800A11C0 03095021 */  addu  $t2, $t8, $t1
/* B18364 800A11C4 8D4B0008 */  lw    $t3, 8($t2)
/* B18368 800A11C8 8FA40080 */  lw    $a0, 0x80($sp)
/* B1836C 800A11CC 27AE005C */  addiu $t6, $sp, 0x5c
/* B18370 800A11D0 AFAB0070 */  sw    $t3, 0x70($sp)
/* B18374 800A11D4 11A00008 */  beqz  $t5, .L800A11F8
/* B18378 800A11D8 AFAB0074 */   sw    $t3, 0x74($sp)
/* B1837C 800A11DC 8FAF0098 */  lw    $t7, 0x98($sp)
/* B18380 800A11E0 AFAE0010 */  sw    $t6, 0x10($sp)
/* B18384 800A11E4 AFA80054 */  sw    $t0, 0x54($sp)
/* B18388 800A11E8 01A0F809 */  jalr  $t5
/* B1838C 800A11EC AFAF0014 */  sw    $t7, 0x14($sp)
/* B18390 800A11F0 1440002C */  bnez  $v0, .L800A12A4
/* B18394 800A11F4 8FA80054 */   lw    $t0, 0x54($sp)
.L800A11F8:
/* B18398 800A11F8 27A40064 */  addiu $a0, $sp, 0x64
/* B1839C 800A11FC 27A5005C */  addiu $a1, $sp, 0x5c
/* B183A0 800A1200 0C0344D0 */  jal   func_800D1340
/* B183A4 800A1204 AFA80054 */   sw    $t0, 0x54($sp)
/* B183A8 800A1208 8FAC0074 */  lw    $t4, 0x74($sp)
/* B183AC 800A120C 8FA80054 */  lw    $t0, 0x54($sp)
/* B183B0 800A1210 8FA40058 */  lw    $a0, 0x58($sp)
/* B183B4 800A1214 11800019 */  beqz  $t4, .L800A127C
/* B183B8 800A1218 3C058014 */   lui   $a1, %hi(D_8014008C) # $a1, 0x8014
/* B183BC 800A121C 24A5008C */  addiu $a1, %lo(D_8014008C) # addiu $a1, $a1, 0x8c
/* B183C0 800A1220 24060409 */  li    $a2, 1033
/* B183C4 800A1224 0C034695 */  jal   func_800D1A54
/* B183C8 800A1228 AFA80054 */   sw    $t0, 0x54($sp)
/* B183CC 800A122C 8FA80054 */  lw    $t0, 0x54($sp)
/* B183D0 800A1230 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* B183D4 800A1234 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* B183D8 800A1238 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B183DC 800A123C 3C0BDE00 */  lui   $t3, 0xde00
/* B183E0 800A1240 24590008 */  addiu $t9, $v0, 8
/* B183E4 800A1244 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B183E8 800A1248 AC580000 */  sw    $t8, ($v0)
/* B183EC 800A124C 8FA90058 */  lw    $t1, 0x58($sp)
/* B183F0 800A1250 AC490004 */  sw    $t1, 4($v0)
/* B183F4 800A1254 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B183F8 800A1258 244A0008 */  addiu $t2, $v0, 8
/* B183FC 800A125C AD0A02C0 */  sw    $t2, 0x2c0($t0)
/* B18400 800A1260 AC4B0000 */  sw    $t3, ($v0)
/* B18404 800A1264 8FAE0074 */  lw    $t6, 0x74($sp)
/* B18408 800A1268 AC4E0004 */  sw    $t6, 4($v0)
/* B1840C 800A126C 8FAF0058 */  lw    $t7, 0x58($sp)
/* B18410 800A1270 25ED0040 */  addiu $t5, $t7, 0x40
/* B18414 800A1274 1000000B */  b     .L800A12A4
/* B18418 800A1278 AFAD0058 */   sw    $t5, 0x58($sp)
.L800A127C:
/* B1841C 800A127C 8FAC0070 */  lw    $t4, 0x70($sp)
/* B18420 800A1280 3C058014 */  lui   $a1, %hi(D_801400A0) # $a1, 0x8014
/* B18424 800A1284 24A500A0 */  addiu $a1, %lo(D_801400A0) # addiu $a1, $a1, 0xa0
/* B18428 800A1288 11800006 */  beqz  $t4, .L800A12A4
/* B1842C 800A128C 8FA40058 */   lw    $a0, 0x58($sp)
/* B18430 800A1290 0C034695 */  jal   func_800D1A54
/* B18434 800A1294 24060410 */   li    $a2, 1040
/* B18438 800A1298 8FB90058 */  lw    $t9, 0x58($sp)
/* B1843C 800A129C 27380040 */  addiu $t8, $t9, 0x40
/* B18440 800A12A0 AFB80058 */  sw    $t8, 0x58($sp)
.L800A12A4:
/* B18444 800A12A4 8FA20094 */  lw    $v0, 0x94($sp)
/* B18448 800A12A8 8FA40080 */  lw    $a0, 0x80($sp)
/* B1844C 800A12AC 24050001 */  li    $a1, 1
/* B18450 800A12B0 10400006 */  beqz  $v0, .L800A12CC
/* B18454 800A12B4 27A60070 */   addiu $a2, $sp, 0x70
/* B18458 800A12B8 8FA90098 */  lw    $t1, 0x98($sp)
/* B1845C 800A12BC 27A7005C */  addiu $a3, $sp, 0x5c
/* B18460 800A12C0 0040F809 */  jalr  $v0
/* B18464 800A12C4 AFA90010 */  sw    $t1, 0x10($sp)
/* B18468 800A12C8 8FA20094 */  lw    $v0, 0x94($sp)
.L800A12CC:
/* B1846C 800A12CC 8FAA007C */  lw    $t2, 0x7c($sp)
/* B18470 800A12D0 240100FF */  li    $at, 255
/* B18474 800A12D4 8FA40080 */  lw    $a0, 0x80($sp)
/* B18478 800A12D8 91450006 */  lbu   $a1, 6($t2)
/* B1847C 800A12DC 8FA60084 */  lw    $a2, 0x84($sp)
/* B18480 800A12E0 8FA70088 */  lw    $a3, 0x88($sp)
/* B18484 800A12E4 10A1000A */  beq   $a1, $at, .L800A1310
/* B18488 800A12E8 8FAB0090 */   lw    $t3, 0x90($sp)
/* B1848C 800A12EC 8FAE0098 */  lw    $t6, 0x98($sp)
/* B18490 800A12F0 8FAF009C */  lw    $t7, 0x9c($sp)
/* B18494 800A12F4 27AD0058 */  addiu $t5, $sp, 0x58
/* B18498 800A12F8 AFAD0020 */  sw    $t5, 0x20($sp)
/* B1849C 800A12FC AFAB0010 */  sw    $t3, 0x10($sp)
/* B184A0 800A1300 AFA20014 */  sw    $v0, 0x14($sp)
/* B184A4 800A1304 AFAE0018 */  sw    $t6, 0x18($sp)
/* B184A8 800A1308 0C028365 */  jal   func_800A0D94
/* B184AC 800A130C AFAF001C */   sw    $t7, 0x1c($sp)
.L800A1310:
/* B184B0 800A1310 0C034221 */  jal   func_800D0884
/* B184B4 800A1314 00000000 */   nop   
/* B184B8 800A1318 8FAC0080 */  lw    $t4, 0x80($sp)
/* B184BC 800A131C 3C068014 */  lui   $a2, %hi(D_801400B4) # $a2, 0x8014
/* B184C0 800A1320 24C600B4 */  addiu $a2, %lo(D_801400B4) # addiu $a2, $a2, 0xb4
/* B184C4 800A1324 27A40044 */  addiu $a0, $sp, 0x44
/* B184C8 800A1328 2407041D */  li    $a3, 1053
/* B184CC 800A132C 0C031AD5 */  jal   func_800C6B54
/* B184D0 800A1330 8D850000 */   lw    $a1, ($t4)
/* B184D4 800A1334 8FBF002C */  lw    $ra, 0x2c($sp)
.L800A1338:
/* B184D8 800A1338 27BD0080 */  addiu $sp, $sp, 0x80
/* B184DC 800A133C 03E00008 */  jr    $ra
/* B184E0 800A1340 00000000 */   nop   

glabel func_800A1344
/* B184E4 800A1344 27BDFF98 */  addiu $sp, $sp, -0x68
/* B184E8 800A1348 AFBF0024 */  sw    $ra, 0x24($sp)
/* B184EC 800A134C AFA40068 */  sw    $a0, 0x68($sp)
/* B184F0 800A1350 AFA5006C */  sw    $a1, 0x6c($sp)
/* B184F4 800A1354 AFA60070 */  sw    $a2, 0x70($sp)
/* B184F8 800A1358 AFA70074 */  sw    $a3, 0x74($sp)
/* B184FC 800A135C 8C850000 */  lw    $a1, ($a0)
/* B18500 800A1360 3C068014 */  lui   $a2, %hi(D_801400C8) # $a2, 0x8014
/* B18504 800A1364 24C600C8 */  addiu $a2, %lo(D_801400C8) # addiu $a2, $a2, 0xc8
/* B18508 800A1368 27A40038 */  addiu $a0, $sp, 0x38
/* B1850C 800A136C 24070434 */  li    $a3, 1076
/* B18510 800A1370 0C031AB1 */  jal   func_800C6AC4
/* B18514 800A1374 AFA50048 */   sw    $a1, 0x48($sp)
/* B18518 800A1378 0C034213 */  jal   func_800D084C
/* B1851C 800A137C 00000000 */   nop   
/* B18520 800A1380 8FB8006C */  lw    $t8, 0x6c($sp)
/* B18524 800A1384 8FAF0070 */  lw    $t7, 0x70($sp)
/* B18528 800A1388 3C0E8016 */  lui   $t6, %hi(D_80166FA8)
/* B1852C 800A138C 0018C880 */  sll   $t9, $t8, 2
/* B18530 800A1390 01F94821 */  addu  $t1, $t7, $t9
/* B18534 800A1394 8D220000 */  lw    $v0, ($t1)
/* B18538 800A1398 270F0001 */  addiu $t7, $t8, 1
/* B1853C 800A139C 8FA90074 */  lw    $t1, 0x74($sp)
/* B18540 800A13A0 00025900 */  sll   $t3, $v0, 4
/* B18544 800A13A4 000B6702 */  srl   $t4, $t3, 0x1c
/* B18548 800A13A8 000C6880 */  sll   $t5, $t4, 2
/* B1854C 800A13AC 01CD7021 */  addu  $t6, $t6, $t5
/* B18550 800A13B0 8DCE6FA8 */  lw    $t6, %lo(D_80166FA8)($t6)
/* B18554 800A13B4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B18558 800A13B8 000F5880 */  sll   $t3, $t7, 2
/* B1855C 800A13BC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B18560 800A13C0 016F5823 */  subu  $t3, $t3, $t7
/* B18564 800A13C4 000B5840 */  sll   $t3, $t3, 1
/* B18568 800A13C8 00415024 */  and   $t2, $v0, $at
/* B1856C 800A13CC AFAF006C */  sw    $t7, 0x6c($sp)
/* B18570 800A13D0 012B6021 */  addu  $t4, $t1, $t3
/* B18574 800A13D4 014E4021 */  addu  $t0, $t2, $t6
/* B18578 800A13D8 898A0000 */  lwl   $t2, ($t4)
/* B1857C 800A13DC 998A0003 */  lwr   $t2, 3($t4)
/* B18580 800A13E0 27B9004C */  addiu $t9, $sp, 0x4c
/* B18584 800A13E4 3C018000 */  lui   $at, 0x8000
/* B18588 800A13E8 AF2A0000 */  sw    $t2, ($t9)
/* B1858C 800A13EC 958A0004 */  lhu   $t2, 4($t4)
/* B18590 800A13F0 01014021 */  addu  $t0, $t0, $at
/* B18594 800A13F4 27A60060 */  addiu $a2, $sp, 0x60
/* B18598 800A13F8 A72A0004 */  sh    $t2, 4($t9)
/* B1859C 800A13FC 850E0000 */  lh    $t6, ($t0)
/* B185A0 800A1400 8FAB0078 */  lw    $t3, 0x78($sp)
/* B185A4 800A1404 8FA5006C */  lw    $a1, 0x6c($sp)
/* B185A8 800A1408 448E2000 */  mtc1  $t6, $f4
/* B185AC 800A140C 8FA40068 */  lw    $a0, 0x68($sp)
/* B185B0 800A1410 27B9004C */  addiu $t9, $sp, 0x4c
/* B185B4 800A1414 468021A0 */  cvt.s.w $f6, $f4
/* B185B8 800A1418 27A70054 */  addiu $a3, $sp, 0x54
/* B185BC 800A141C E7A60054 */  swc1  $f6, 0x54($sp)
/* B185C0 800A1420 85180002 */  lh    $t8, 2($t0)
/* B185C4 800A1424 44984000 */  mtc1  $t8, $f8
/* B185C8 800A1428 00000000 */  nop   
/* B185CC 800A142C 468042A0 */  cvt.s.w $f10, $f8
/* B185D0 800A1430 E7AA0058 */  swc1  $f10, 0x58($sp)
/* B185D4 800A1434 850F0004 */  lh    $t7, 4($t0)
/* B185D8 800A1438 448F8000 */  mtc1  $t7, $f16
/* B185DC 800A143C 00000000 */  nop   
/* B185E0 800A1440 468084A0 */  cvt.s.w $f18, $f16
/* B185E4 800A1444 E7B2005C */  swc1  $f18, 0x5c($sp)
/* B185E8 800A1448 8D090008 */  lw    $t1, 8($t0)
/* B185EC 800A144C 11600008 */  beqz  $t3, .L800A1470
/* B185F0 800A1450 AFA90060 */   sw    $t1, 0x60($sp)
/* B185F4 800A1454 8FAC0080 */  lw    $t4, 0x80($sp)
/* B185F8 800A1458 AFB90010 */  sw    $t9, 0x10($sp)
/* B185FC 800A145C AFA80064 */  sw    $t0, 0x64($sp)
/* B18600 800A1460 0160F809 */  jalr  $t3
/* B18604 800A1464 AFAC0014 */  sw    $t4, 0x14($sp)
/* B18608 800A1468 14400022 */  bnez  $v0, .L800A14F4
/* B1860C 800A146C 8FA80064 */   lw    $t0, 0x64($sp)
.L800A1470:
/* B18610 800A1470 27A40054 */  addiu $a0, $sp, 0x54
/* B18614 800A1474 27A5004C */  addiu $a1, $sp, 0x4c
/* B18618 800A1478 0C0344D0 */  jal   func_800D1340
/* B1861C 800A147C AFA80064 */   sw    $t0, 0x64($sp)
/* B18620 800A1480 8FAD0060 */  lw    $t5, 0x60($sp)
/* B18624 800A1484 8FA80064 */  lw    $t0, 0x64($sp)
/* B18628 800A1488 8FA70048 */  lw    $a3, 0x48($sp)
/* B1862C 800A148C 11A00019 */  beqz  $t5, .L800A14F4
/* B18630 800A1490 3C0EDA38 */   lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* B18634 800A1494 8CE202C0 */  lw    $v0, 0x2c0($a3)
/* B18638 800A1498 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* B1863C 800A149C 3C058014 */  lui   $a1, %hi(D_801400DC) # $a1, 0x8014
/* B18640 800A14A0 244A0008 */  addiu $t2, $v0, 8
/* B18644 800A14A4 ACEA02C0 */  sw    $t2, 0x2c0($a3)
/* B18648 800A14A8 AC4E0000 */  sw    $t6, ($v0)
/* B1864C 800A14AC 8FB80068 */  lw    $t8, 0x68($sp)
/* B18650 800A14B0 24A500DC */  addiu $a1, %lo(D_801400DC) # addiu $a1, $a1, 0xdc
/* B18654 800A14B4 2406044F */  li    $a2, 1103
/* B18658 800A14B8 8F040000 */  lw    $a0, ($t8)
/* B1865C 800A14BC AFA80064 */  sw    $t0, 0x64($sp)
/* B18660 800A14C0 0C0346A2 */  jal   func_800D1A88
/* B18664 800A14C4 AFA20034 */   sw    $v0, 0x34($sp)
/* B18668 800A14C8 8FA30034 */  lw    $v1, 0x34($sp)
/* B1866C 800A14CC 8FA80064 */  lw    $t0, 0x64($sp)
/* B18670 800A14D0 3C19DE00 */  lui   $t9, 0xde00
/* B18674 800A14D4 AC620004 */  sw    $v0, 4($v1)
/* B18678 800A14D8 8FAF0048 */  lw    $t7, 0x48($sp)
/* B1867C 800A14DC 8DE202C0 */  lw    $v0, 0x2c0($t7)
/* B18680 800A14E0 24490008 */  addiu $t1, $v0, 8
/* B18684 800A14E4 ADE902C0 */  sw    $t1, 0x2c0($t7)
/* B18688 800A14E8 AC590000 */  sw    $t9, ($v0)
/* B1868C 800A14EC 8FAC0060 */  lw    $t4, 0x60($sp)
/* B18690 800A14F0 AC4C0004 */  sw    $t4, 4($v0)
.L800A14F4:
/* B18694 800A14F4 8FAB007C */  lw    $t3, 0x7c($sp)
/* B18698 800A14F8 8FA40068 */  lw    $a0, 0x68($sp)
/* B1869C 800A14FC 8FA5006C */  lw    $a1, 0x6c($sp)
/* B186A0 800A1500 11600007 */  beqz  $t3, .L800A1520
/* B186A4 800A1504 27A60060 */   addiu $a2, $sp, 0x60
/* B186A8 800A1508 8FAD0080 */  lw    $t5, 0x80($sp)
/* B186AC 800A150C 27A7004C */  addiu $a3, $sp, 0x4c
/* B186B0 800A1510 AFA80064 */  sw    $t0, 0x64($sp)
/* B186B4 800A1514 0160F809 */  jalr  $t3
/* B186B8 800A1518 AFAD0010 */  sw    $t5, 0x10($sp)
/* B186BC 800A151C 8FA80064 */  lw    $t0, 0x64($sp)
.L800A1520:
/* B186C0 800A1520 91050006 */  lbu   $a1, 6($t0)
/* B186C4 800A1524 240100FF */  li    $at, 255
/* B186C8 800A1528 8FA40068 */  lw    $a0, 0x68($sp)
/* B186CC 800A152C 10A1000B */  beq   $a1, $at, .L800A155C
/* B186D0 800A1530 8FA60070 */   lw    $a2, 0x70($sp)
/* B186D4 800A1534 8FAA0078 */  lw    $t2, 0x78($sp)
/* B186D8 800A1538 8FAE007C */  lw    $t6, 0x7c($sp)
/* B186DC 800A153C 8FB80080 */  lw    $t8, 0x80($sp)
/* B186E0 800A1540 8FA70074 */  lw    $a3, 0x74($sp)
/* B186E4 800A1544 AFA80064 */  sw    $t0, 0x64($sp)
/* B186E8 800A1548 AFAA0010 */  sw    $t2, 0x10($sp)
/* B186EC 800A154C AFAE0014 */  sw    $t6, 0x14($sp)
/* B186F0 800A1550 0C0284D1 */  jal   func_800A1344
/* B186F4 800A1554 AFB80018 */   sw    $t8, 0x18($sp)
/* B186F8 800A1558 8FA80064 */  lw    $t0, 0x64($sp)
.L800A155C:
/* B186FC 800A155C 0C034221 */  jal   func_800D0884
/* B18700 800A1560 AFA80064 */   sw    $t0, 0x64($sp)
/* B18704 800A1564 8FA80064 */  lw    $t0, 0x64($sp)
/* B18708 800A1568 240100FF */  li    $at, 255
/* B1870C 800A156C 8FA40068 */  lw    $a0, 0x68($sp)
/* B18710 800A1570 91050007 */  lbu   $a1, 7($t0)
/* B18714 800A1574 8FA60070 */  lw    $a2, 0x70($sp)
/* B18718 800A1578 8FA70074 */  lw    $a3, 0x74($sp)
/* B1871C 800A157C 10A10007 */  beq   $a1, $at, .L800A159C
/* B18720 800A1580 8FA90078 */   lw    $t1, 0x78($sp)
/* B18724 800A1584 8FAF007C */  lw    $t7, 0x7c($sp)
/* B18728 800A1588 8FB90080 */  lw    $t9, 0x80($sp)
/* B1872C 800A158C AFA90010 */  sw    $t1, 0x10($sp)
/* B18730 800A1590 AFAF0014 */  sw    $t7, 0x14($sp)
/* B18734 800A1594 0C0284D1 */  jal   func_800A1344
/* B18738 800A1598 AFB90018 */   sw    $t9, 0x18($sp)
.L800A159C:
/* B1873C 800A159C 8FAC0068 */  lw    $t4, 0x68($sp)
/* B18740 800A15A0 3C068014 */  lui   $a2, %hi(D_801400F0) # $a2, 0x8014
/* B18744 800A15A4 24C600F0 */  addiu $a2, %lo(D_801400F0) # addiu $a2, $a2, 0xf0
/* B18748 800A15A8 27A40038 */  addiu $a0, $sp, 0x38
/* B1874C 800A15AC 24070461 */  li    $a3, 1121
/* B18750 800A15B0 0C031AD5 */  jal   func_800C6B54
/* B18754 800A15B4 8D850000 */   lw    $a1, ($t4)
/* B18758 800A15B8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1875C 800A15BC 27BD0068 */  addiu $sp, $sp, 0x68
/* B18760 800A15C0 03E00008 */  jr    $ra
/* B18764 800A15C4 00000000 */   nop   

glabel SkelAnime_Draw
/* B18768 800A15C8 27BDFF98 */  addiu $sp, $sp, -0x68
/* B1876C 800A15CC AFBF0024 */  sw    $ra, 0x24($sp)
/* B18770 800A15D0 AFA40068 */  sw    $a0, 0x68($sp)
/* B18774 800A15D4 AFA5006C */  sw    $a1, 0x6c($sp)
/* B18778 800A15D8 AFA60070 */  sw    $a2, 0x70($sp)
/* B1877C 800A15DC 14A0000C */  bnez  $a1, .L800A1610
/* B18780 800A15E0 AFA70074 */   sw    $a3, 0x74($sp)
/* B18784 800A15E4 3C048014 */  lui   $a0, %hi(D_80140104) # $a0, 0x8014
/* B18788 800A15E8 0C00084C */  jal   osSyncPrintf
/* B1878C 800A15EC 24840104 */   addiu $a0, %lo(D_80140104) # addiu $a0, $a0, 0x104
/* B18790 800A15F0 3C048014 */  lui   $a0, %hi(D_8014010C) # $a0, 0x8014
/* B18794 800A15F4 0C00084C */  jal   osSyncPrintf
/* B18798 800A15F8 2484010C */   addiu $a0, %lo(D_8014010C) # addiu $a0, $a0, 0x10c
/* B1879C 800A15FC 3C048014 */  lui   $a0, %hi(D_8014012C) # $a0, 0x8014
/* B187A0 800A1600 0C00084C */  jal   osSyncPrintf
/* B187A4 800A1604 2484012C */   addiu $a0, %lo(D_8014012C) # addiu $a0, $a0, 0x12c
/* B187A8 800A1608 1000007D */  b     .L800A1800
/* B187AC 800A160C 8FBF0024 */   lw    $ra, 0x24($sp)
.L800A1610:
/* B187B0 800A1610 8FAF0068 */  lw    $t7, 0x68($sp)
/* B187B4 800A1614 3C068014 */  lui   $a2, %hi(D_80140130) # $a2, 0x8014
/* B187B8 800A1618 24C60130 */  addiu $a2, %lo(D_80140130) # addiu $a2, $a2, 0x130
/* B187BC 800A161C 8DE50000 */  lw    $a1, ($t7)
/* B187C0 800A1620 27A40034 */  addiu $a0, $sp, 0x34
/* B187C4 800A1624 2407047C */  li    $a3, 1148
/* B187C8 800A1628 0C031AB1 */  jal   func_800C6AC4
/* B187CC 800A162C AFA50044 */   sw    $a1, 0x44($sp)
/* B187D0 800A1630 0C034213 */  jal   func_800D084C
/* B187D4 800A1634 00000000 */   nop   
/* B187D8 800A1638 8FB8006C */  lw    $t8, 0x6c($sp)
/* B187DC 800A163C 3C0B8016 */  lui   $t3, %hi(D_80166FA8)
/* B187E0 800A1640 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B187E4 800A1644 8F020000 */  lw    $v0, ($t8)
/* B187E8 800A1648 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B187EC 800A164C 8FA30070 */  lw    $v1, 0x70($sp)
/* B187F0 800A1650 00024100 */  sll   $t0, $v0, 4
/* B187F4 800A1654 00084F02 */  srl   $t1, $t0, 0x1c
/* B187F8 800A1658 00095080 */  sll   $t2, $t1, 2
/* B187FC 800A165C 016A5821 */  addu  $t3, $t3, $t2
/* B18800 800A1660 8D6B6FA8 */  lw    $t3, %lo(D_80166FA8)($t3)
/* B18804 800A1664 0041C824 */  and   $t9, $v0, $at
/* B18808 800A1668 3C018000 */  lui   $at, 0x8000
/* B1880C 800A166C 032B6021 */  addu  $t4, $t9, $t3
/* B18810 800A1670 01816821 */  addu  $t5, $t4, $at
/* B18814 800A1674 AFAD0064 */  sw    $t5, 0x64($sp)
/* B18818 800A1678 846E0000 */  lh    $t6, ($v1)
/* B1881C 800A167C 27A80048 */  addiu $t0, $sp, 0x48
/* B18820 800A1680 27AD0048 */  addiu $t5, $sp, 0x48
/* B18824 800A1684 448E2000 */  mtc1  $t6, $f4
/* B18828 800A1688 24050001 */  li    $a1, 1
/* B1882C 800A168C 27A6005C */  addiu $a2, $sp, 0x5c
/* B18830 800A1690 468021A0 */  cvt.s.w $f6, $f4
/* B18834 800A1694 27A70050 */  addiu $a3, $sp, 0x50
/* B18838 800A1698 E7A60050 */  swc1  $f6, 0x50($sp)
/* B1883C 800A169C 846F0002 */  lh    $t7, 2($v1)
/* B18840 800A16A0 448F4000 */  mtc1  $t7, $f8
/* B18844 800A16A4 00000000 */  nop   
/* B18848 800A16A8 468042A0 */  cvt.s.w $f10, $f8
/* B1884C 800A16AC E7AA0054 */  swc1  $f10, 0x54($sp)
/* B18850 800A16B0 84780004 */  lh    $t8, 4($v1)
/* B18854 800A16B4 44988000 */  mtc1  $t8, $f16
/* B18858 800A16B8 00000000 */  nop   
/* B1885C 800A16BC 468084A0 */  cvt.s.w $f18, $f16
/* B18860 800A16C0 E7B20058 */  swc1  $f18, 0x58($sp)
/* B18864 800A16C4 886A0006 */  lwl   $t2, 6($v1)
/* B18868 800A16C8 986A0009 */  lwr   $t2, 9($v1)
/* B1886C 800A16CC AD0A0000 */  sw    $t2, ($t0)
/* B18870 800A16D0 946A000A */  lhu   $t2, 0xa($v1)
/* B18874 800A16D4 A50A0004 */  sh    $t2, 4($t0)
/* B18878 800A16D8 8FB90064 */  lw    $t9, 0x64($sp)
/* B1887C 800A16DC 8FAC0074 */  lw    $t4, 0x74($sp)
/* B18880 800A16E0 8FA40068 */  lw    $a0, 0x68($sp)
/* B18884 800A16E4 8F2B0008 */  lw    $t3, 8($t9)
/* B18888 800A16E8 11800006 */  beqz  $t4, .L800A1704
/* B1888C 800A16EC AFAB005C */   sw    $t3, 0x5c($sp)
/* B18890 800A16F0 8FAE007C */  lw    $t6, 0x7c($sp)
/* B18894 800A16F4 AFAD0010 */  sw    $t5, 0x10($sp)
/* B18898 800A16F8 0180F809 */  jalr  $t4
/* B1889C 800A16FC AFAE0014 */  sw    $t6, 0x14($sp)
/* B188A0 800A1700 1440001E */  bnez  $v0, .L800A177C
.L800A1704:
/* B188A4 800A1704 27A40050 */   addiu $a0, $sp, 0x50
/* B188A8 800A1708 0C0344D0 */  jal   func_800D1340
/* B188AC 800A170C 27A50048 */   addiu $a1, $sp, 0x48
/* B188B0 800A1710 8FAF005C */  lw    $t7, 0x5c($sp)
/* B188B4 800A1714 8FA70044 */  lw    $a3, 0x44($sp)
/* B188B8 800A1718 3C08DA38 */  lui   $t0, (0xDA380003 >> 16) # lui $t0, 0xda38
/* B188BC 800A171C 51E00018 */  beql  $t7, $zero, .L800A1780
/* B188C0 800A1720 8FA20078 */   lw    $v0, 0x78($sp)
/* B188C4 800A1724 8CE202C0 */  lw    $v0, 0x2c0($a3)
/* B188C8 800A1728 35080003 */  ori   $t0, (0xDA380003 & 0xFFFF) # ori $t0, $t0, 3
/* B188CC 800A172C 3C058014 */  lui   $a1, %hi(D_80140144) # $a1, 0x8014
/* B188D0 800A1730 24580008 */  addiu $t8, $v0, 8
/* B188D4 800A1734 ACF802C0 */  sw    $t8, 0x2c0($a3)
/* B188D8 800A1738 AC480000 */  sw    $t0, ($v0)
/* B188DC 800A173C 8FA90068 */  lw    $t1, 0x68($sp)
/* B188E0 800A1740 24A50144 */  addiu $a1, %lo(D_80140144) # addiu $a1, $a1, 0x144
/* B188E4 800A1744 24060498 */  li    $a2, 1176
/* B188E8 800A1748 8D240000 */  lw    $a0, ($t1)
/* B188EC 800A174C 0C0346A2 */  jal   func_800D1A88
/* B188F0 800A1750 AFA20030 */   sw    $v0, 0x30($sp)
/* B188F4 800A1754 8FA30030 */  lw    $v1, 0x30($sp)
/* B188F8 800A1758 3C0BDE00 */  lui   $t3, 0xde00
/* B188FC 800A175C AC620004 */  sw    $v0, 4($v1)
/* B18900 800A1760 8FAA0044 */  lw    $t2, 0x44($sp)
/* B18904 800A1764 8D4202C0 */  lw    $v0, 0x2c0($t2)
/* B18908 800A1768 24590008 */  addiu $t9, $v0, 8
/* B1890C 800A176C AD5902C0 */  sw    $t9, 0x2c0($t2)
/* B18910 800A1770 AC4B0000 */  sw    $t3, ($v0)
/* B18914 800A1774 8FAD005C */  lw    $t5, 0x5c($sp)
/* B18918 800A1778 AC4D0004 */  sw    $t5, 4($v0)
.L800A177C:
/* B1891C 800A177C 8FA20078 */  lw    $v0, 0x78($sp)
.L800A1780:
/* B18920 800A1780 8FA40068 */  lw    $a0, 0x68($sp)
/* B18924 800A1784 24050001 */  li    $a1, 1
/* B18928 800A1788 10400006 */  beqz  $v0, .L800A17A4
/* B1892C 800A178C 27A6005C */   addiu $a2, $sp, 0x5c
/* B18930 800A1790 8FAE007C */  lw    $t6, 0x7c($sp)
/* B18934 800A1794 27A70048 */  addiu $a3, $sp, 0x48
/* B18938 800A1798 0040F809 */  jalr  $v0
/* B1893C 800A179C AFAE0010 */  sw    $t6, 0x10($sp)
/* B18940 800A17A0 8FA20078 */  lw    $v0, 0x78($sp)
.L800A17A4:
/* B18944 800A17A4 8FAC0064 */  lw    $t4, 0x64($sp)
/* B18948 800A17A8 240100FF */  li    $at, 255
/* B1894C 800A17AC 8FA40068 */  lw    $a0, 0x68($sp)
/* B18950 800A17B0 91850006 */  lbu   $a1, 6($t4)
/* B18954 800A17B4 8FA6006C */  lw    $a2, 0x6c($sp)
/* B18958 800A17B8 8FA70070 */  lw    $a3, 0x70($sp)
/* B1895C 800A17BC 10A10006 */  beq   $a1, $at, .L800A17D8
/* B18960 800A17C0 8FAF0074 */   lw    $t7, 0x74($sp)
/* B18964 800A17C4 8FB8007C */  lw    $t8, 0x7c($sp)
/* B18968 800A17C8 AFAF0010 */  sw    $t7, 0x10($sp)
/* B1896C 800A17CC AFA20014 */  sw    $v0, 0x14($sp)
/* B18970 800A17D0 0C0284D1 */  jal   func_800A1344
/* B18974 800A17D4 AFB80018 */   sw    $t8, 0x18($sp)
.L800A17D8:
/* B18978 800A17D8 0C034221 */  jal   func_800D0884
/* B1897C 800A17DC 00000000 */   nop   
/* B18980 800A17E0 8FA80068 */  lw    $t0, 0x68($sp)
/* B18984 800A17E4 3C068014 */  lui   $a2, %hi(D_80140158) # $a2, 0x8014
/* B18988 800A17E8 24C60158 */  addiu $a2, %lo(D_80140158) # addiu $a2, $a2, 0x158
/* B1898C 800A17EC 27A40034 */  addiu $a0, $sp, 0x34
/* B18990 800A17F0 240704A6 */  li    $a3, 1190
/* B18994 800A17F4 0C031AD5 */  jal   func_800C6B54
/* B18998 800A17F8 8D050000 */   lw    $a1, ($t0)
/* B1899C 800A17FC 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A1800:
/* B189A0 800A1800 27BD0068 */  addiu $sp, $sp, 0x68
/* B189A4 800A1804 03E00008 */  jr    $ra
/* B189A8 800A1808 00000000 */   nop   

glabel func_800A180C
/* B189AC 800A180C 27BDFF98 */  addiu $sp, $sp, -0x68
/* B189B0 800A1810 AFBF0024 */  sw    $ra, 0x24($sp)
/* B189B4 800A1814 AFA40068 */  sw    $a0, 0x68($sp)
/* B189B8 800A1818 AFA5006C */  sw    $a1, 0x6c($sp)
/* B189BC 800A181C AFA60070 */  sw    $a2, 0x70($sp)
/* B189C0 800A1820 AFA70074 */  sw    $a3, 0x74($sp)
/* B189C4 800A1824 8C850000 */  lw    $a1, ($a0)
/* B189C8 800A1828 3C068014 */  lui   $a2, %hi(D_8014016C) # $a2, 0x8014
/* B189CC 800A182C 24C6016C */  addiu $a2, %lo(D_8014016C) # addiu $a2, $a2, 0x16c
/* B189D0 800A1830 27A40034 */  addiu $a0, $sp, 0x34
/* B189D4 800A1834 240704BE */  li    $a3, 1214
/* B189D8 800A1838 0C031AB1 */  jal   func_800C6AC4
/* B189DC 800A183C AFA50044 */   sw    $a1, 0x44($sp)
/* B189E0 800A1840 0C034213 */  jal   func_800D084C
/* B189E4 800A1844 00000000 */   nop   
/* B189E8 800A1848 8FB8006C */  lw    $t8, 0x6c($sp)
/* B189EC 800A184C 8FAF0070 */  lw    $t7, 0x70($sp)
/* B189F0 800A1850 3C0D8016 */  lui   $t5, %hi(D_80166FA8)
/* B189F4 800A1854 0018C880 */  sll   $t9, $t8, 2
/* B189F8 800A1858 01F94021 */  addu  $t0, $t7, $t9
/* B189FC 800A185C 8D020000 */  lw    $v0, ($t0)
/* B18A00 800A1860 270E0001 */  addiu $t6, $t8, 1
/* B18A04 800A1864 8FB90074 */  lw    $t9, 0x74($sp)
/* B18A08 800A1868 000E4080 */  sll   $t0, $t6, 2
/* B18A0C 800A186C 00025100 */  sll   $t2, $v0, 4
/* B18A10 800A1870 000A5F02 */  srl   $t3, $t2, 0x1c
/* B18A14 800A1874 010E4023 */  subu  $t0, $t0, $t6
/* B18A18 800A1878 000B6080 */  sll   $t4, $t3, 2
/* B18A1C 800A187C 00084040 */  sll   $t0, $t0, 1
/* B18A20 800A1880 01AC6821 */  addu  $t5, $t5, $t4
/* B18A24 800A1884 AFAE006C */  sw    $t6, 0x6c($sp)
/* B18A28 800A1888 03285021 */  addu  $t2, $t9, $t0
/* B18A2C 800A188C 894C0000 */  lwl   $t4, ($t2)
/* B18A30 800A1890 994C0003 */  lwr   $t4, 3($t2)
/* B18A34 800A1894 8DAD6FA8 */  lw    $t5, %lo(D_80166FA8)($t5)
/* B18A38 800A1898 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B18A3C 800A189C 27AF0048 */  addiu $t7, $sp, 0x48
/* B18A40 800A18A0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B18A44 800A18A4 ADEC0000 */  sw    $t4, ($t7)
/* B18A48 800A18A8 954C0004 */  lhu   $t4, 4($t2)
/* B18A4C 800A18AC 00414824 */  and   $t1, $v0, $at
/* B18A50 800A18B0 3C018000 */  lui   $at, 0x8000
/* B18A54 800A18B4 012D1821 */  addu  $v1, $t1, $t5
/* B18A58 800A18B8 00611821 */  addu  $v1, $v1, $at
/* B18A5C 800A18BC A5EC0004 */  sh    $t4, 4($t7)
/* B18A60 800A18C0 84690000 */  lh    $t1, ($v1)
/* B18A64 800A18C4 8FA80078 */  lw    $t0, 0x78($sp)
/* B18A68 800A18C8 8FA5006C */  lw    $a1, 0x6c($sp)
/* B18A6C 800A18CC 44892000 */  mtc1  $t1, $f4
/* B18A70 800A18D0 8FA40068 */  lw    $a0, 0x68($sp)
/* B18A74 800A18D4 27AF0048 */  addiu $t7, $sp, 0x48
/* B18A78 800A18D8 468021A0 */  cvt.s.w $f6, $f4
/* B18A7C 800A18DC 27A60060 */  addiu $a2, $sp, 0x60
/* B18A80 800A18E0 27A70050 */  addiu $a3, $sp, 0x50
/* B18A84 800A18E4 E7A60050 */  swc1  $f6, 0x50($sp)
/* B18A88 800A18E8 846D0002 */  lh    $t5, 2($v1)
/* B18A8C 800A18EC 448D4000 */  mtc1  $t5, $f8
/* B18A90 800A18F0 00000000 */  nop   
/* B18A94 800A18F4 468042A0 */  cvt.s.w $f10, $f8
/* B18A98 800A18F8 E7AA0054 */  swc1  $f10, 0x54($sp)
/* B18A9C 800A18FC 84780004 */  lh    $t8, 4($v1)
/* B18AA0 800A1900 44988000 */  mtc1  $t8, $f16
/* B18AA4 800A1904 00000000 */  nop   
/* B18AA8 800A1908 468084A0 */  cvt.s.w $f18, $f16
/* B18AAC 800A190C E7B20058 */  swc1  $f18, 0x58($sp)
/* B18AB0 800A1910 8C6E0008 */  lw    $t6, 8($v1)
/* B18AB4 800A1914 AFA30064 */  sw    $v1, 0x64($sp)
/* B18AB8 800A1918 AFAE005C */  sw    $t6, 0x5c($sp)
/* B18ABC 800A191C 11000007 */  beqz  $t0, .L800A193C
/* B18AC0 800A1920 AFAE0060 */   sw    $t6, 0x60($sp)
/* B18AC4 800A1924 8FAA0080 */  lw    $t2, 0x80($sp)
/* B18AC8 800A1928 AFAF0010 */  sw    $t7, 0x10($sp)
/* B18ACC 800A192C AFA30064 */  sw    $v1, 0x64($sp)
/* B18AD0 800A1930 0100F809 */  jalr  $t0
/* B18AD4 800A1934 AFAA0014 */  sw    $t2, 0x14($sp)
/* B18AD8 800A1938 1440002D */  bnez  $v0, .L800A19F0
.L800A193C:
/* B18ADC 800A193C 27A40050 */   addiu $a0, $sp, 0x50
/* B18AE0 800A1940 0C0344D0 */  jal   func_800D1340
/* B18AE4 800A1944 27A50048 */   addiu $a1, $sp, 0x48
/* B18AE8 800A1948 8FAB0060 */  lw    $t3, 0x60($sp)
/* B18AEC 800A194C 8FAC0084 */  lw    $t4, 0x84($sp)
/* B18AF0 800A1950 3C058014 */  lui   $a1, %hi(D_80140180) # $a1, 0x8014
/* B18AF4 800A1954 1160001B */  beqz  $t3, .L800A19C4
/* B18AF8 800A1958 8FA9005C */   lw    $t1, 0x5c($sp)
/* B18AFC 800A195C 8D840000 */  lw    $a0, ($t4)
/* B18B00 800A1960 24A50180 */  addiu $a1, %lo(D_80140180) # addiu $a1, $a1, 0x180
/* B18B04 800A1964 0C034695 */  jal   func_800D1A54
/* B18B08 800A1968 240604DA */   li    $a2, 1242
/* B18B0C 800A196C 8FA40044 */  lw    $a0, 0x44($sp)
/* B18B10 800A1970 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* B18B14 800A1974 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* B18B18 800A1978 8C8302C0 */  lw    $v1, 0x2c0($a0)
/* B18B1C 800A197C 3C0FDE00 */  lui   $t7, 0xde00
/* B18B20 800A1980 24690008 */  addiu $t1, $v1, 8
/* B18B24 800A1984 AC8902C0 */  sw    $t1, 0x2c0($a0)
/* B18B28 800A1988 AC6D0000 */  sw    $t5, ($v1)
/* B18B2C 800A198C 8FB80084 */  lw    $t8, 0x84($sp)
/* B18B30 800A1990 8F0E0000 */  lw    $t6, ($t8)
/* B18B34 800A1994 AC6E0004 */  sw    $t6, 4($v1)
/* B18B38 800A1998 8C8302C0 */  lw    $v1, 0x2c0($a0)
/* B18B3C 800A199C 24790008 */  addiu $t9, $v1, 8
/* B18B40 800A19A0 AC9902C0 */  sw    $t9, 0x2c0($a0)
/* B18B44 800A19A4 AC6F0000 */  sw    $t7, ($v1)
/* B18B48 800A19A8 8FAA0060 */  lw    $t2, 0x60($sp)
/* B18B4C 800A19AC AC6A0004 */  sw    $t2, 4($v1)
/* B18B50 800A19B0 8FA80084 */  lw    $t0, 0x84($sp)
/* B18B54 800A19B4 8D0B0000 */  lw    $t3, ($t0)
/* B18B58 800A19B8 256C0040 */  addiu $t4, $t3, 0x40
/* B18B5C 800A19BC 1000000C */  b     .L800A19F0
/* B18B60 800A19C0 AD0C0000 */   sw    $t4, ($t0)
.L800A19C4:
/* B18B64 800A19C4 1120000A */  beqz  $t1, .L800A19F0
/* B18B68 800A19C8 8FAD0084 */   lw    $t5, 0x84($sp)
/* B18B6C 800A19CC 3C058014 */  lui   $a1, %hi(D_80140194) # $a1, 0x8014
/* B18B70 800A19D0 24A50194 */  addiu $a1, %lo(D_80140194) # addiu $a1, $a1, 0x194
/* B18B74 800A19D4 8DA40000 */  lw    $a0, ($t5)
/* B18B78 800A19D8 0C034695 */  jal   func_800D1A54
/* B18B7C 800A19DC 240604E1 */   li    $a2, 1249
/* B18B80 800A19E0 8FB80084 */  lw    $t8, 0x84($sp)
/* B18B84 800A19E4 8F0E0000 */  lw    $t6, ($t8)
/* B18B88 800A19E8 25D90040 */  addiu $t9, $t6, 0x40
/* B18B8C 800A19EC AF190000 */  sw    $t9, ($t8)
.L800A19F0:
/* B18B90 800A19F0 8FAF007C */  lw    $t7, 0x7c($sp)
/* B18B94 800A19F4 8FA40068 */  lw    $a0, 0x68($sp)
/* B18B98 800A19F8 8FA5006C */  lw    $a1, 0x6c($sp)
/* B18B9C 800A19FC 11E00005 */  beqz  $t7, .L800A1A14
/* B18BA0 800A1A00 27A6005C */   addiu $a2, $sp, 0x5c
/* B18BA4 800A1A04 8FAA0080 */  lw    $t2, 0x80($sp)
/* B18BA8 800A1A08 27A70048 */  addiu $a3, $sp, 0x48
/* B18BAC 800A1A0C 01E0F809 */  jalr  $t7
/* B18BB0 800A1A10 AFAA0010 */  sw    $t2, 0x10($sp)
.L800A1A14:
/* B18BB4 800A1A14 8FAB0064 */  lw    $t3, 0x64($sp)
/* B18BB8 800A1A18 240100FF */  li    $at, 255
/* B18BBC 800A1A1C 8FA40068 */  lw    $a0, 0x68($sp)
/* B18BC0 800A1A20 91650006 */  lbu   $a1, 6($t3)
/* B18BC4 800A1A24 8FA60070 */  lw    $a2, 0x70($sp)
/* B18BC8 800A1A28 8FA70074 */  lw    $a3, 0x74($sp)
/* B18BCC 800A1A2C 10A10009 */  beq   $a1, $at, .L800A1A54
/* B18BD0 800A1A30 8FAC0078 */   lw    $t4, 0x78($sp)
/* B18BD4 800A1A34 8FA8007C */  lw    $t0, 0x7c($sp)
/* B18BD8 800A1A38 8FA90080 */  lw    $t1, 0x80($sp)
/* B18BDC 800A1A3C 8FAD0084 */  lw    $t5, 0x84($sp)
/* B18BE0 800A1A40 AFAC0010 */  sw    $t4, 0x10($sp)
/* B18BE4 800A1A44 AFA80014 */  sw    $t0, 0x14($sp)
/* B18BE8 800A1A48 AFA90018 */  sw    $t1, 0x18($sp)
/* B18BEC 800A1A4C 0C028603 */  jal   func_800A180C
/* B18BF0 800A1A50 AFAD001C */   sw    $t5, 0x1c($sp)
.L800A1A54:
/* B18BF4 800A1A54 0C034221 */  jal   func_800D0884
/* B18BF8 800A1A58 00000000 */   nop   
/* B18BFC 800A1A5C 8FAE0064 */  lw    $t6, 0x64($sp)
/* B18C00 800A1A60 240100FF */  li    $at, 255
/* B18C04 800A1A64 8FA40068 */  lw    $a0, 0x68($sp)
/* B18C08 800A1A68 91C50007 */  lbu   $a1, 7($t6)
/* B18C0C 800A1A6C 8FA60070 */  lw    $a2, 0x70($sp)
/* B18C10 800A1A70 8FA70074 */  lw    $a3, 0x74($sp)
/* B18C14 800A1A74 10A10009 */  beq   $a1, $at, .L800A1A9C
/* B18C18 800A1A78 8FB90078 */   lw    $t9, 0x78($sp)
/* B18C1C 800A1A7C 8FB8007C */  lw    $t8, 0x7c($sp)
/* B18C20 800A1A80 8FAA0080 */  lw    $t2, 0x80($sp)
/* B18C24 800A1A84 8FAF0084 */  lw    $t7, 0x84($sp)
/* B18C28 800A1A88 AFB90010 */  sw    $t9, 0x10($sp)
/* B18C2C 800A1A8C AFB80014 */  sw    $t8, 0x14($sp)
/* B18C30 800A1A90 AFAA0018 */  sw    $t2, 0x18($sp)
/* B18C34 800A1A94 0C028603 */  jal   func_800A180C
/* B18C38 800A1A98 AFAF001C */   sw    $t7, 0x1c($sp)
.L800A1A9C:
/* B18C3C 800A1A9C 8FAB0068 */  lw    $t3, 0x68($sp)
/* B18C40 800A1AA0 3C068014 */  lui   $a2, %hi(D_801401A8) # $a2, 0x8014
/* B18C44 800A1AA4 24C601A8 */  addiu $a2, %lo(D_801401A8) # addiu $a2, $a2, 0x1a8
/* B18C48 800A1AA8 27A40034 */  addiu $a0, $sp, 0x34
/* B18C4C 800A1AAC 240704F1 */  li    $a3, 1265
/* B18C50 800A1AB0 0C031AD5 */  jal   func_800C6B54
/* B18C54 800A1AB4 8D650000 */   lw    $a1, ($t3)
/* B18C58 800A1AB8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B18C5C 800A1ABC 27BD0068 */  addiu $sp, $sp, 0x68
/* B18C60 800A1AC0 03E00008 */  jr    $ra
/* B18C64 800A1AC4 00000000 */   nop   

glabel func_800A1AC8
/* B18C68 800A1AC8 27BDFF88 */  addiu $sp, $sp, -0x78
/* B18C6C 800A1ACC AFBF0024 */  sw    $ra, 0x24($sp)
/* B18C70 800A1AD0 AFA40078 */  sw    $a0, 0x78($sp)
/* B18C74 800A1AD4 AFA5007C */  sw    $a1, 0x7c($sp)
/* B18C78 800A1AD8 AFA60080 */  sw    $a2, 0x80($sp)
/* B18C7C 800A1ADC 8C840000 */  lw    $a0, ($a0)
/* B18C80 800A1AE0 0C031A73 */  jal   Graph_Alloc
/* B18C84 800A1AE4 00072980 */   sll   $a1, $a3, 6
/* B18C88 800A1AE8 8FAF007C */  lw    $t7, 0x7c($sp)
/* B18C8C 800A1AEC AFA20050 */  sw    $v0, 0x50($sp)
/* B18C90 800A1AF0 8FB80078 */  lw    $t8, 0x78($sp)
/* B18C94 800A1AF4 15E0000C */  bnez  $t7, .L800A1B28
/* B18C98 800A1AF8 27A4003C */   addiu $a0, $sp, 0x3c
/* B18C9C 800A1AFC 3C048014 */  lui   $a0, %hi(D_801401BC) # $a0, 0x8014
/* B18CA0 800A1B00 0C00084C */  jal   osSyncPrintf
/* B18CA4 800A1B04 248401BC */   addiu $a0, %lo(D_801401BC) # addiu $a0, $a0, 0x1bc
/* B18CA8 800A1B08 3C048014 */  lui   $a0, %hi(D_801401C4) # $a0, 0x8014
/* B18CAC 800A1B0C 0C00084C */  jal   osSyncPrintf
/* B18CB0 800A1B10 248401C4 */   addiu $a0, %lo(D_801401C4) # addiu $a0, $a0, 0x1c4
/* B18CB4 800A1B14 3C048014 */  lui   $a0, %hi(D_801401E4) # $a0, 0x8014
/* B18CB8 800A1B18 0C00084C */  jal   osSyncPrintf
/* B18CBC 800A1B1C 248401E4 */   addiu $a0, %lo(D_801401E4) # addiu $a0, $a0, 0x1e4
/* B18CC0 800A1B20 10000097 */  b     .L800A1D80
/* B18CC4 800A1B24 8FBF0024 */   lw    $ra, 0x24($sp)
.L800A1B28:
/* B18CC8 800A1B28 8F050000 */  lw    $a1, ($t8)
/* B18CCC 800A1B2C 3C068014 */  lui   $a2, %hi(D_801401E8) # $a2, 0x8014
/* B18CD0 800A1B30 24C601E8 */  addiu $a2, %lo(D_801401E8) # addiu $a2, $a2, 0x1e8
/* B18CD4 800A1B34 2407050E */  li    $a3, 1294
/* B18CD8 800A1B38 0C031AB1 */  jal   func_800C6AC4
/* B18CDC 800A1B3C AFA5004C */   sw    $a1, 0x4c($sp)
/* B18CE0 800A1B40 8FA8004C */  lw    $t0, 0x4c($sp)
/* B18CE4 800A1B44 3C09DB06 */  lui   $t1, (0xDB060034 >> 16) # lui $t1, 0xdb06
/* B18CE8 800A1B48 35290034 */  ori   $t1, (0xDB060034 & 0xFFFF) # ori $t1, $t1, 0x34
/* B18CEC 800A1B4C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B18CF0 800A1B50 24590008 */  addiu $t9, $v0, 8
/* B18CF4 800A1B54 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B18CF8 800A1B58 AC490000 */  sw    $t1, ($v0)
/* B18CFC 800A1B5C 8FAA0050 */  lw    $t2, 0x50($sp)
/* B18D00 800A1B60 AC4A0004 */  sw    $t2, 4($v0)
/* B18D04 800A1B64 0C034213 */  jal   func_800D084C
/* B18D08 800A1B68 AFA8004C */   sw    $t0, 0x4c($sp)
/* B18D0C 800A1B6C 8FAB007C */  lw    $t3, 0x7c($sp)
/* B18D10 800A1B70 3C188016 */  lui   $t8, %hi(D_80166FA8)
/* B18D14 800A1B74 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B18D18 800A1B78 8D620000 */  lw    $v0, ($t3)
/* B18D1C 800A1B7C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B18D20 800A1B80 8FA30080 */  lw    $v1, 0x80($sp)
/* B18D24 800A1B84 00026900 */  sll   $t5, $v0, 4
/* B18D28 800A1B88 000D7702 */  srl   $t6, $t5, 0x1c
/* B18D2C 800A1B8C 000E7880 */  sll   $t7, $t6, 2
/* B18D30 800A1B90 030FC021 */  addu  $t8, $t8, $t7
/* B18D34 800A1B94 8F186FA8 */  lw    $t8, %lo(D_80166FA8)($t8)
/* B18D38 800A1B98 00416024 */  and   $t4, $v0, $at
/* B18D3C 800A1B9C 3C018000 */  lui   $at, 0x8000
/* B18D40 800A1BA0 0198C821 */  addu  $t9, $t4, $t8
/* B18D44 800A1BA4 03214821 */  addu  $t1, $t9, $at
/* B18D48 800A1BA8 AFA90074 */  sw    $t1, 0x74($sp)
/* B18D4C 800A1BAC 846A0000 */  lh    $t2, ($v1)
/* B18D50 800A1BB0 8FA8004C */  lw    $t0, 0x4c($sp)
/* B18D54 800A1BB4 27AE0054 */  addiu $t6, $sp, 0x54
/* B18D58 800A1BB8 448A2000 */  mtc1  $t2, $f4
/* B18D5C 800A1BBC 27AA0054 */  addiu $t2, $sp, 0x54
/* B18D60 800A1BC0 24050001 */  li    $a1, 1
/* B18D64 800A1BC4 468021A0 */  cvt.s.w $f6, $f4
/* B18D68 800A1BC8 27A6006C */  addiu $a2, $sp, 0x6c
/* B18D6C 800A1BCC 27A7005C */  addiu $a3, $sp, 0x5c
/* B18D70 800A1BD0 E7A6005C */  swc1  $f6, 0x5c($sp)
/* B18D74 800A1BD4 846B0002 */  lh    $t3, 2($v1)
/* B18D78 800A1BD8 448B4000 */  mtc1  $t3, $f8
/* B18D7C 800A1BDC 00000000 */  nop   
/* B18D80 800A1BE0 468042A0 */  cvt.s.w $f10, $f8
/* B18D84 800A1BE4 E7AA0060 */  swc1  $f10, 0x60($sp)
/* B18D88 800A1BE8 846D0004 */  lh    $t5, 4($v1)
/* B18D8C 800A1BEC 448D8000 */  mtc1  $t5, $f16
/* B18D90 800A1BF0 00000000 */  nop   
/* B18D94 800A1BF4 468084A0 */  cvt.s.w $f18, $f16
/* B18D98 800A1BF8 E7B20064 */  swc1  $f18, 0x64($sp)
/* B18D9C 800A1BFC 886C0006 */  lwl   $t4, 6($v1)
/* B18DA0 800A1C00 986C0009 */  lwr   $t4, 9($v1)
/* B18DA4 800A1C04 ADCC0000 */  sw    $t4, ($t6)
/* B18DA8 800A1C08 946C000A */  lhu   $t4, 0xa($v1)
/* B18DAC 800A1C0C A5CC0004 */  sh    $t4, 4($t6)
/* B18DB0 800A1C10 8FB80074 */  lw    $t8, 0x74($sp)
/* B18DB4 800A1C14 8FA90088 */  lw    $t1, 0x88($sp)
/* B18DB8 800A1C18 8FA40078 */  lw    $a0, 0x78($sp)
/* B18DBC 800A1C1C 8F190008 */  lw    $t9, 8($t8)
/* B18DC0 800A1C20 AFB90068 */  sw    $t9, 0x68($sp)
/* B18DC4 800A1C24 11200008 */  beqz  $t1, .L800A1C48
/* B18DC8 800A1C28 AFB9006C */   sw    $t9, 0x6c($sp)
/* B18DCC 800A1C2C 8FAB0090 */  lw    $t3, 0x90($sp)
/* B18DD0 800A1C30 AFAA0010 */  sw    $t2, 0x10($sp)
/* B18DD4 800A1C34 AFA8004C */  sw    $t0, 0x4c($sp)
/* B18DD8 800A1C38 0120F809 */  jalr  $t1
/* B18DDC 800A1C3C AFAB0014 */  sw    $t3, 0x14($sp)
/* B18DE0 800A1C40 1440002C */  bnez  $v0, .L800A1CF4
/* B18DE4 800A1C44 8FA8004C */   lw    $t0, 0x4c($sp)
.L800A1C48:
/* B18DE8 800A1C48 27A4005C */  addiu $a0, $sp, 0x5c
/* B18DEC 800A1C4C 27A50054 */  addiu $a1, $sp, 0x54
/* B18DF0 800A1C50 0C0344D0 */  jal   func_800D1340
/* B18DF4 800A1C54 AFA8004C */   sw    $t0, 0x4c($sp)
/* B18DF8 800A1C58 8FAD006C */  lw    $t5, 0x6c($sp)
/* B18DFC 800A1C5C 8FA8004C */  lw    $t0, 0x4c($sp)
/* B18E00 800A1C60 8FA40050 */  lw    $a0, 0x50($sp)
/* B18E04 800A1C64 11A00019 */  beqz  $t5, .L800A1CCC
/* B18E08 800A1C68 3C058014 */   lui   $a1, %hi(D_801401FC) # $a1, 0x8014
/* B18E0C 800A1C6C 24A501FC */  addiu $a1, %lo(D_801401FC) # addiu $a1, $a1, 0x1fc
/* B18E10 800A1C70 2406052F */  li    $a2, 1327
/* B18E14 800A1C74 0C034695 */  jal   func_800D1A54
/* B18E18 800A1C78 AFA8004C */   sw    $t0, 0x4c($sp)
/* B18E1C 800A1C7C 8FA8004C */  lw    $t0, 0x4c($sp)
/* B18E20 800A1C80 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* B18E24 800A1C84 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* B18E28 800A1C88 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B18E2C 800A1C8C 3C19DE00 */  lui   $t9, 0xde00
/* B18E30 800A1C90 244E0008 */  addiu $t6, $v0, 8
/* B18E34 800A1C94 AD0E02C0 */  sw    $t6, 0x2c0($t0)
/* B18E38 800A1C98 AC4F0000 */  sw    $t7, ($v0)
/* B18E3C 800A1C9C 8FAC0050 */  lw    $t4, 0x50($sp)
/* B18E40 800A1CA0 AC4C0004 */  sw    $t4, 4($v0)
/* B18E44 800A1CA4 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B18E48 800A1CA8 24580008 */  addiu $t8, $v0, 8
/* B18E4C 800A1CAC AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B18E50 800A1CB0 AC590000 */  sw    $t9, ($v0)
/* B18E54 800A1CB4 8FAA006C */  lw    $t2, 0x6c($sp)
/* B18E58 800A1CB8 AC4A0004 */  sw    $t2, 4($v0)
/* B18E5C 800A1CBC 8FAB0050 */  lw    $t3, 0x50($sp)
/* B18E60 800A1CC0 25690040 */  addiu $t1, $t3, 0x40
/* B18E64 800A1CC4 1000000B */  b     .L800A1CF4
/* B18E68 800A1CC8 AFA90050 */   sw    $t1, 0x50($sp)
.L800A1CCC:
/* B18E6C 800A1CCC 8FAD0068 */  lw    $t5, 0x68($sp)
/* B18E70 800A1CD0 3C058014 */  lui   $a1, %hi(D_80140210) # $a1, 0x8014
/* B18E74 800A1CD4 24A50210 */  addiu $a1, %lo(D_80140210) # addiu $a1, $a1, 0x210
/* B18E78 800A1CD8 11A00006 */  beqz  $t5, .L800A1CF4
/* B18E7C 800A1CDC 8FA40050 */   lw    $a0, 0x50($sp)
/* B18E80 800A1CE0 0C034695 */  jal   func_800D1A54
/* B18E84 800A1CE4 24060536 */   li    $a2, 1334
/* B18E88 800A1CE8 8FAE0050 */  lw    $t6, 0x50($sp)
/* B18E8C 800A1CEC 25CF0040 */  addiu $t7, $t6, 0x40
/* B18E90 800A1CF0 AFAF0050 */  sw    $t7, 0x50($sp)
.L800A1CF4:
/* B18E94 800A1CF4 8FA2008C */  lw    $v0, 0x8c($sp)
/* B18E98 800A1CF8 8FA40078 */  lw    $a0, 0x78($sp)
/* B18E9C 800A1CFC 24050001 */  li    $a1, 1
/* B18EA0 800A1D00 10400006 */  beqz  $v0, .L800A1D1C
/* B18EA4 800A1D04 27A60068 */   addiu $a2, $sp, 0x68
/* B18EA8 800A1D08 8FAC0090 */  lw    $t4, 0x90($sp)
/* B18EAC 800A1D0C 27A70054 */  addiu $a3, $sp, 0x54
/* B18EB0 800A1D10 0040F809 */  jalr  $v0
/* B18EB4 800A1D14 AFAC0010 */  sw    $t4, 0x10($sp)
/* B18EB8 800A1D18 8FA2008C */  lw    $v0, 0x8c($sp)
.L800A1D1C:
/* B18EBC 800A1D1C 8FB80074 */  lw    $t8, 0x74($sp)
/* B18EC0 800A1D20 240100FF */  li    $at, 255
/* B18EC4 800A1D24 8FA40078 */  lw    $a0, 0x78($sp)
/* B18EC8 800A1D28 93050006 */  lbu   $a1, 6($t8)
/* B18ECC 800A1D2C 8FA6007C */  lw    $a2, 0x7c($sp)
/* B18ED0 800A1D30 8FA70080 */  lw    $a3, 0x80($sp)
/* B18ED4 800A1D34 10A10008 */  beq   $a1, $at, .L800A1D58
/* B18ED8 800A1D38 8FB90088 */   lw    $t9, 0x88($sp)
/* B18EDC 800A1D3C 8FAA0090 */  lw    $t2, 0x90($sp)
/* B18EE0 800A1D40 27AB0050 */  addiu $t3, $sp, 0x50
/* B18EE4 800A1D44 AFAB001C */  sw    $t3, 0x1c($sp)
/* B18EE8 800A1D48 AFB90010 */  sw    $t9, 0x10($sp)
/* B18EEC 800A1D4C AFA20014 */  sw    $v0, 0x14($sp)
/* B18EF0 800A1D50 0C028603 */  jal   func_800A180C
/* B18EF4 800A1D54 AFAA0018 */   sw    $t2, 0x18($sp)
.L800A1D58:
/* B18EF8 800A1D58 0C034221 */  jal   func_800D0884
/* B18EFC 800A1D5C 00000000 */   nop   
/* B18F00 800A1D60 8FA90078 */  lw    $t1, 0x78($sp)
/* B18F04 800A1D64 3C068014 */  lui   $a2, %hi(D_80140224) # $a2, 0x8014
/* B18F08 800A1D68 24C60224 */  addiu $a2, %lo(D_80140224) # addiu $a2, $a2, 0x224
/* B18F0C 800A1D6C 27A4003C */  addiu $a0, $sp, 0x3c
/* B18F10 800A1D70 24070543 */  li    $a3, 1347
/* B18F14 800A1D74 0C031AD5 */  jal   func_800C6B54
/* B18F18 800A1D78 8D250000 */   lw    $a1, ($t1)
/* B18F1C 800A1D7C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A1D80:
/* B18F20 800A1D80 27BD0078 */  addiu $sp, $sp, 0x78
/* B18F24 800A1D84 03E00008 */  jr    $ra
/* B18F28 800A1D88 00000000 */   nop   

glabel func_800A1D8C
/* B18F2C 800A1D8C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B18F30 800A1D90 00047100 */  sll   $t6, $a0, 4
/* B18F34 800A1D94 3C098016 */  lui   $t1, %hi(D_80166FA8) # $t1, 0x8016
/* B18F38 800A1D98 000E7F02 */  srl   $t7, $t6, 0x1c
/* B18F3C 800A1D9C 25296FA8 */  addiu $t1, %lo(D_80166FA8) # addiu $t1, $t1, 0x6fa8
/* B18F40 800A1DA0 000FC080 */  sll   $t8, $t7, 2
/* B18F44 800A1DA4 0138C821 */  addu  $t9, $t1, $t8
/* B18F48 800A1DA8 8F2D0000 */  lw    $t5, ($t9)
/* B18F4C 800A1DAC 3C0A00FF */  lui   $t2, (0x00FFFFFF >> 16) # lui $t2, 0xff
/* B18F50 800A1DB0 354AFFFF */  ori   $t2, (0x00FFFFFF & 0xFFFF) # ori $t2, $t2, 0xffff
/* B18F54 800A1DB4 008A7024 */  and   $t6, $a0, $t2
/* B18F58 800A1DB8 3C0B8000 */  lui   $t3, 0x8000
/* B18F5C 800A1DBC 01AE7821 */  addu  $t7, $t5, $t6
/* B18F60 800A1DC0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B18F64 800A1DC4 AFBE0038 */  sw    $fp, 0x38($sp)
/* B18F68 800A1DC8 AFB70034 */  sw    $s7, 0x34($sp)
/* B18F6C 800A1DCC AFB60030 */  sw    $s6, 0x30($sp)
/* B18F70 800A1DD0 AFB5002C */  sw    $s5, 0x2c($sp)
/* B18F74 800A1DD4 AFB40028 */  sw    $s4, 0x28($sp)
/* B18F78 800A1DD8 AFB30024 */  sw    $s3, 0x24($sp)
/* B18F7C 800A1DDC AFB20020 */  sw    $s2, 0x20($sp)
/* B18F80 800A1DE0 AFB1001C */  sw    $s1, 0x1c($sp)
/* B18F84 800A1DE4 AFB00018 */  sw    $s0, 0x18($sp)
/* B18F88 800A1DE8 01EB1021 */  addu  $v0, $t7, $t3
/* B18F8C 800A1DEC 8C430008 */  lw    $v1, 8($v0)
/* B18F90 800A1DF0 8C480004 */  lw    $t0, 4($v0)
/* B18F94 800A1DF4 00E08025 */  move  $s0, $a3
/* B18F98 800A1DF8 0003C100 */  sll   $t8, $v1, 4
/* B18F9C 800A1DFC 0018CF02 */  srl   $t9, $t8, 0x1c
/* B18FA0 800A1E00 00196880 */  sll   $t5, $t9, 2
/* B18FA4 800A1E04 012D7021 */  addu  $t6, $t1, $t5
/* B18FA8 800A1E08 8DCF0000 */  lw    $t7, ($t6)
/* B18FAC 800A1E0C 006AC024 */  and   $t8, $v1, $t2
/* B18FB0 800A1E10 00086900 */  sll   $t5, $t0, 4
/* B18FB4 800A1E14 01F8C821 */  addu  $t9, $t7, $t8
/* B18FB8 800A1E18 000D7702 */  srl   $t6, $t5, 0x1c
/* B18FBC 800A1E1C 000E7880 */  sll   $t7, $t6, 2
/* B18FC0 800A1E20 032B8821 */  addu  $s1, $t9, $t3
/* B18FC4 800A1E24 012FC021 */  addu  $t8, $t1, $t7
/* B18FC8 800A1E28 8F190000 */  lw    $t9, ($t8)
/* B18FCC 800A1E2C 010A6824 */  and   $t5, $t0, $t2
/* B18FD0 800A1E30 00C0B025 */  move  $s6, $a2
/* B18FD4 800A1E34 032D7021 */  addu  $t6, $t9, $t5
/* B18FD8 800A1E38 01CB9021 */  addu  $s2, $t6, $t3
/* B18FDC 800A1E3C 944C000C */  lhu   $t4, 0xc($v0)
/* B18FE0 800A1E40 18C00055 */  blez  $a2, .L800A1F98
/* B18FE4 800A1E44 0000A025 */   move  $s4, $zero
/* B18FE8 800A1E48 00057840 */  sll   $t7, $a1, 1
/* B18FEC 800A1E4C 3C1E8014 */  lui   $fp, %hi(D_8014024C) # $fp, 0x8014
/* B18FF0 800A1E50 3C178014 */  lui   $s7, %hi(D_80140238) # $s7, 0x8014
/* B18FF4 800A1E54 26F70238 */  addiu $s7, %lo(D_80140238) # addiu $s7, $s7, 0x238
/* B18FF8 800A1E58 27DE024C */  addiu $fp, %lo(D_8014024C) # addiu $fp, $fp, 0x24c
/* B18FFC 800A1E5C 01F29821 */  addu  $s3, $t7, $s2
/* B19000 800A1E60 0180A825 */  move  $s5, $t4
.L800A1E64:
/* B19004 800A1E64 12000007 */  beqz  $s0, .L800A1E84
/* B19008 800A1E68 02E02025 */   move  $a0, $s7
/* B1900C 800A1E6C 12200005 */  beqz  $s1, .L800A1E84
/* B19010 800A1E70 00000000 */   nop   
/* B19014 800A1E74 12600003 */  beqz  $s3, .L800A1E84
/* B19018 800A1E78 00000000 */   nop   
/* B1901C 800A1E7C 5640001F */  bnezl $s2, .L800A1EFC
/* B19020 800A1E80 96220000 */   lhu   $v0, ($s1)
.L800A1E84:
/* B19024 800A1E84 0C000B84 */  jal   SyncPrintfWithThreadId
/* B19028 800A1E88 24050570 */   li    $a1, 1392
/* B1902C 800A1E8C 03C02025 */  move  $a0, $fp
/* B19030 800A1E90 0C00084C */  jal   osSyncPrintf
/* B19034 800A1E94 02002825 */   move  $a1, $s0
/* B19038 800A1E98 3C048014 */  lui   $a0, %hi(D_80140258) # $a0, 0x8014
/* B1903C 800A1E9C 24840258 */  addiu $a0, %lo(D_80140258) # addiu $a0, $a0, 0x258
/* B19040 800A1EA0 0C000B84 */  jal   SyncPrintfWithThreadId
/* B19044 800A1EA4 24050571 */   li    $a1, 1393
/* B19048 800A1EA8 3C048014 */  lui   $a0, %hi(D_8014026C) # $a0, 0x8014
/* B1904C 800A1EAC 2484026C */  addiu $a0, %lo(D_8014026C) # addiu $a0, $a0, 0x26c
/* B19050 800A1EB0 0C00084C */  jal   osSyncPrintf
/* B19054 800A1EB4 02202825 */   move  $a1, $s1
/* B19058 800A1EB8 3C048014 */  lui   $a0, %hi(D_8014027C) # $a0, 0x8014
/* B1905C 800A1EBC 2484027C */  addiu $a0, %lo(D_8014027C) # addiu $a0, $a0, 0x27c
/* B19060 800A1EC0 0C000B84 */  jal   SyncPrintfWithThreadId
/* B19064 800A1EC4 24050572 */   li    $a1, 1394
/* B19068 800A1EC8 3C048014 */  lui   $a0, %hi(D_80140290) # $a0, 0x8014
/* B1906C 800A1ECC 24840290 */  addiu $a0, %lo(D_80140290) # addiu $a0, $a0, 0x290
/* B19070 800A1ED0 0C00084C */  jal   osSyncPrintf
/* B19074 800A1ED4 02602825 */   move  $a1, $s3
/* B19078 800A1ED8 3C048014 */  lui   $a0, %hi(D_801402A4) # $a0, 0x8014
/* B1907C 800A1EDC 248402A4 */  addiu $a0, %lo(D_801402A4) # addiu $a0, $a0, 0x2a4
/* B19080 800A1EE0 0C000B84 */  jal   SyncPrintfWithThreadId
/* B19084 800A1EE4 24050573 */   li    $a1, 1395
/* B19088 800A1EE8 3C048014 */  lui   $a0, %hi(D_801402B8) # $a0, 0x8014
/* B1908C 800A1EEC 248402B8 */  addiu $a0, %lo(D_801402B8) # addiu $a0, $a0, 0x2b8
/* B19090 800A1EF0 0C00084C */  jal   osSyncPrintf
/* B19094 800A1EF4 02402825 */   move  $a1, $s2
/* B19098 800A1EF8 96220000 */  lhu   $v0, ($s1)
.L800A1EFC:
/* B1909C 800A1EFC 26940001 */  addiu $s4, $s4, 1
/* B190A0 800A1F00 0055082A */  slt   $at, $v0, $s5
/* B190A4 800A1F04 14200006 */  bnez  $at, .L800A1F20
/* B190A8 800A1F08 00027040 */   sll   $t6, $v0, 1
/* B190AC 800A1F0C 0002C040 */  sll   $t8, $v0, 1
/* B190B0 800A1F10 0278C821 */  addu  $t9, $s3, $t8
/* B190B4 800A1F14 872D0000 */  lh    $t5, ($t9)
/* B190B8 800A1F18 10000004 */  b     .L800A1F2C
/* B190BC 800A1F1C A60D0000 */   sh    $t5, ($s0)
.L800A1F20:
/* B190C0 800A1F20 024E7821 */  addu  $t7, $s2, $t6
/* B190C4 800A1F24 85F80000 */  lh    $t8, ($t7)
/* B190C8 800A1F28 A6180000 */  sh    $t8, ($s0)
.L800A1F2C:
/* B190CC 800A1F2C 96220002 */  lhu   $v0, 2($s1)
/* B190D0 800A1F30 0055082A */  slt   $at, $v0, $s5
/* B190D4 800A1F34 14200006 */  bnez  $at, .L800A1F50
/* B190D8 800A1F38 00027840 */   sll   $t7, $v0, 1
/* B190DC 800A1F3C 0002C840 */  sll   $t9, $v0, 1
/* B190E0 800A1F40 02796821 */  addu  $t5, $s3, $t9
/* B190E4 800A1F44 85AE0000 */  lh    $t6, ($t5)
/* B190E8 800A1F48 10000004 */  b     .L800A1F5C
/* B190EC 800A1F4C A60E0002 */   sh    $t6, 2($s0)
.L800A1F50:
/* B190F0 800A1F50 024FC021 */  addu  $t8, $s2, $t7
/* B190F4 800A1F54 87190000 */  lh    $t9, ($t8)
/* B190F8 800A1F58 A6190002 */  sh    $t9, 2($s0)
.L800A1F5C:
/* B190FC 800A1F5C 96220004 */  lhu   $v0, 4($s1)
/* B19100 800A1F60 26310006 */  addiu $s1, $s1, 6
/* B19104 800A1F64 0055082A */  slt   $at, $v0, $s5
/* B19108 800A1F68 14200006 */  bnez  $at, .L800A1F84
/* B1910C 800A1F6C 0002C040 */   sll   $t8, $v0, 1
/* B19110 800A1F70 00026840 */  sll   $t5, $v0, 1
/* B19114 800A1F74 026D7021 */  addu  $t6, $s3, $t5
/* B19118 800A1F78 85CF0000 */  lh    $t7, ($t6)
/* B1911C 800A1F7C 10000004 */  b     .L800A1F90
/* B19120 800A1F80 A60F0004 */   sh    $t7, 4($s0)
.L800A1F84:
/* B19124 800A1F84 0258C821 */  addu  $t9, $s2, $t8
/* B19128 800A1F88 872D0000 */  lh    $t5, ($t9)
/* B1912C 800A1F8C A60D0004 */  sh    $t5, 4($s0)
.L800A1F90:
/* B19130 800A1F90 1696FFB4 */  bne   $s4, $s6, .L800A1E64
/* B19134 800A1F94 26100006 */   addiu $s0, $s0, 6
.L800A1F98:
/* B19138 800A1F98 8FBF003C */  lw    $ra, 0x3c($sp)
/* B1913C 800A1F9C 8FB00018 */  lw    $s0, 0x18($sp)
/* B19140 800A1FA0 8FB1001C */  lw    $s1, 0x1c($sp)
/* B19144 800A1FA4 8FB20020 */  lw    $s2, 0x20($sp)
/* B19148 800A1FA8 8FB30024 */  lw    $s3, 0x24($sp)
/* B1914C 800A1FAC 8FB40028 */  lw    $s4, 0x28($sp)
/* B19150 800A1FB0 8FB5002C */  lw    $s5, 0x2c($sp)
/* B19154 800A1FB4 8FB60030 */  lw    $s6, 0x30($sp)
/* B19158 800A1FB8 8FB70034 */  lw    $s7, 0x34($sp)
/* B1915C 800A1FBC 8FBE0038 */  lw    $fp, 0x38($sp)
/* B19160 800A1FC0 03E00008 */  jr    $ra
/* B19164 800A1FC4 27BD0040 */   addiu $sp, $sp, 0x40

glabel func_800A1FC8
/* B19168 800A1FC8 00047100 */  sll   $t6, $a0, 4
/* B1916C 800A1FCC 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19170 800A1FD0 000FC080 */  sll   $t8, $t7, 2
/* B19174 800A1FD4 3C198016 */  lui   $t9, %hi(D_80166FA8)
/* B19178 800A1FD8 0338C821 */  addu  $t9, $t9, $t8
/* B1917C 800A1FDC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19180 800A1FE0 8F396FA8 */  lw    $t9, %lo(D_80166FA8)($t9)
/* B19184 800A1FE4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19188 800A1FE8 00814024 */  and   $t0, $a0, $at
/* B1918C 800A1FEC 3C018000 */  lui   $at, 0x8000
/* B19190 800A1FF0 03281821 */  addu  $v1, $t9, $t0
/* B19194 800A1FF4 00611821 */  addu  $v1, $v1, $at
/* B19198 800A1FF8 03E00008 */  jr    $ra
/* B1919C 800A1FFC 84620000 */   lh    $v0, ($v1)

glabel SkelAnime_GetFrameCount
/* B191A0 800A2000 00047100 */  sll   $t6, $a0, 4
/* B191A4 800A2004 000E7F02 */  srl   $t7, $t6, 0x1c
/* B191A8 800A2008 000FC080 */  sll   $t8, $t7, 2
/* B191AC 800A200C 3C198016 */  lui   $t9, %hi(D_80166FA8)
/* B191B0 800A2010 0338C821 */  addu  $t9, $t9, $t8
/* B191B4 800A2014 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B191B8 800A2018 8F396FA8 */  lw    $t9, %lo(D_80166FA8)($t9)
/* B191BC 800A201C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B191C0 800A2020 00814024 */  and   $t0, $a0, $at
/* B191C4 800A2024 3C018000 */  lui   $at, 0x8000
/* B191C8 800A2028 03281821 */  addu  $v1, $t9, $t0
/* B191CC 800A202C 00611821 */  addu  $v1, $v1, $at
/* B191D0 800A2030 94620000 */  lhu   $v0, ($v1)
/* B191D4 800A2034 2442FFFF */  addiu $v0, $v0, -1
/* B191D8 800A2038 00021400 */  sll   $v0, $v0, 0x10
/* B191DC 800A203C 03E00008 */  jr    $ra
/* B191E0 800A2040 00021403 */   sra   $v0, $v0, 0x10

glabel func_800A2044
/* B191E4 800A2044 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B191E8 800A2048 AFBF002C */  sw    $ra, 0x2c($sp)
/* B191EC 800A204C AFB00028 */  sw    $s0, 0x28($sp)
/* B191F0 800A2050 AFA40058 */  sw    $a0, 0x58($sp)
/* B191F4 800A2054 AFA5005C */  sw    $a1, 0x5c($sp)
/* B191F8 800A2058 AFA60060 */  sw    $a2, 0x60($sp)
/* B191FC 800A205C 0C034213 */  jal   func_800D084C
/* B19200 800A2060 AFA70064 */   sw    $a3, 0x64($sp)
/* B19204 800A2064 8FAF005C */  lw    $t7, 0x5c($sp)
/* B19208 800A2068 8FAE0060 */  lw    $t6, 0x60($sp)
/* B1920C 800A206C 3C0C8016 */  lui   $t4, %hi(D_80166FA8)
/* B19210 800A2070 000FC080 */  sll   $t8, $t7, 2
/* B19214 800A2074 01D8C821 */  addu  $t9, $t6, $t8
/* B19218 800A2078 8F220000 */  lw    $v0, ($t9)
/* B1921C 800A207C 25ED0001 */  addiu $t5, $t7, 1
/* B19220 800A2080 8FB80064 */  lw    $t8, 0x64($sp)
/* B19224 800A2084 000DC880 */  sll   $t9, $t5, 2
/* B19228 800A2088 00024900 */  sll   $t1, $v0, 4
/* B1922C 800A208C 00095702 */  srl   $t2, $t1, 0x1c
/* B19230 800A2090 032DC823 */  subu  $t9, $t9, $t5
/* B19234 800A2094 000A5880 */  sll   $t3, $t2, 2
/* B19238 800A2098 0019C840 */  sll   $t9, $t9, 1
/* B1923C 800A209C 018B6021 */  addu  $t4, $t4, $t3
/* B19240 800A20A0 AFAD005C */  sw    $t5, 0x5c($sp)
/* B19244 800A20A4 03194821 */  addu  $t1, $t8, $t9
/* B19248 800A20A8 892B0000 */  lwl   $t3, ($t1)
/* B1924C 800A20AC 992B0003 */  lwr   $t3, 3($t1)
/* B19250 800A20B0 8D8C6FA8 */  lw    $t4, %lo(D_80166FA8)($t4)
/* B19254 800A20B4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19258 800A20B8 27AE003C */  addiu $t6, $sp, 0x3c
/* B1925C 800A20BC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19260 800A20C0 ADCB0000 */  sw    $t3, ($t6)
/* B19264 800A20C4 952B0004 */  lhu   $t3, 4($t1)
/* B19268 800A20C8 00414024 */  and   $t0, $v0, $at
/* B1926C 800A20CC 3C018000 */  lui   $at, 0x8000
/* B19270 800A20D0 010C8021 */  addu  $s0, $t0, $t4
/* B19274 800A20D4 02018021 */  addu  $s0, $s0, $at
/* B19278 800A20D8 A5CB0004 */  sh    $t3, 4($t6)
/* B1927C 800A20DC 86080000 */  lh    $t0, ($s0)
/* B19280 800A20E0 8FB80068 */  lw    $t8, 0x68($sp)
/* B19284 800A20E4 8FA5005C */  lw    $a1, 0x5c($sp)
/* B19288 800A20E8 44882000 */  mtc1  $t0, $f4
/* B1928C 800A20EC 8FA40058 */  lw    $a0, 0x58($sp)
/* B19290 800A20F0 27A90074 */  addiu $t1, $sp, 0x74
/* B19294 800A20F4 468021A0 */  cvt.s.w $f6, $f4
/* B19298 800A20F8 27B9003C */  addiu $t9, $sp, 0x3c
/* B1929C 800A20FC 27A60050 */  addiu $a2, $sp, 0x50
/* B192A0 800A2100 27A70044 */  addiu $a3, $sp, 0x44
/* B192A4 800A2104 E7A60044 */  swc1  $f6, 0x44($sp)
/* B192A8 800A2108 860C0002 */  lh    $t4, 2($s0)
/* B192AC 800A210C 448C4000 */  mtc1  $t4, $f8
/* B192B0 800A2110 00000000 */  nop   
/* B192B4 800A2114 468042A0 */  cvt.s.w $f10, $f8
/* B192B8 800A2118 E7AA0048 */  swc1  $f10, 0x48($sp)
/* B192BC 800A211C 860F0004 */  lh    $t7, 4($s0)
/* B192C0 800A2120 448F8000 */  mtc1  $t7, $f16
/* B192C4 800A2124 00000000 */  nop   
/* B192C8 800A2128 468084A0 */  cvt.s.w $f18, $f16
/* B192CC 800A212C E7B2004C */  swc1  $f18, 0x4c($sp)
/* B192D0 800A2130 8E0D0008 */  lw    $t5, 8($s0)
/* B192D4 800A2134 13000007 */  beqz  $t8, .L800A2154
/* B192D8 800A2138 AFAD0050 */   sw    $t5, 0x50($sp)
/* B192DC 800A213C 8FAE0070 */  lw    $t6, 0x70($sp)
/* B192E0 800A2140 AFB90010 */  sw    $t9, 0x10($sp)
/* B192E4 800A2144 AFA90018 */  sw    $t1, 0x18($sp)
/* B192E8 800A2148 0300F809 */  jalr  $t8
/* B192EC 800A214C AFAE0014 */  sw    $t6, 0x14($sp)
/* B192F0 800A2150 1440001B */  bnez  $v0, .L800A21C0
.L800A2154:
/* B192F4 800A2154 27A40044 */   addiu $a0, $sp, 0x44
/* B192F8 800A2158 0C0344D0 */  jal   func_800D1340
/* B192FC 800A215C 27A5003C */   addiu $a1, $sp, 0x3c
/* B19300 800A2160 8FAA0050 */  lw    $t2, 0x50($sp)
/* B19304 800A2164 8FAB0074 */  lw    $t3, 0x74($sp)
/* B19308 800A2168 3C0CDA38 */  lui   $t4, (0xDA380003 >> 16) # lui $t4, 0xda38
/* B1930C 800A216C 11400014 */  beqz  $t2, .L800A21C0
/* B19310 800A2170 25680008 */   addiu $t0, $t3, 8
/* B19314 800A2174 AFA80074 */  sw    $t0, 0x74($sp)
/* B19318 800A2178 358C0003 */  ori   $t4, (0xDA380003 & 0xFFFF) # ori $t4, $t4, 3
/* B1931C 800A217C AD6C0000 */  sw    $t4, ($t3)
/* B19320 800A2180 8FAF0058 */  lw    $t7, 0x58($sp)
/* B19324 800A2184 3C058014 */  lui   $a1, %hi(D_801402C4) # $a1, 0x8014
/* B19328 800A2188 24A502C4 */  addiu $a1, %lo(D_801402C4) # addiu $a1, $a1, 0x2c4
/* B1932C 800A218C 8DE40000 */  lw    $a0, ($t7)
/* B19330 800A2190 AFAB0038 */  sw    $t3, 0x38($sp)
/* B19334 800A2194 0C0346A2 */  jal   func_800D1A88
/* B19338 800A2198 240605D1 */   li    $a2, 1489
/* B1933C 800A219C 8FA30038 */  lw    $v1, 0x38($sp)
/* B19340 800A21A0 3C0EDE00 */  lui   $t6, 0xde00
/* B19344 800A21A4 AC620004 */  sw    $v0, 4($v1)
/* B19348 800A21A8 8FAD0074 */  lw    $t5, 0x74($sp)
/* B1934C 800A21AC 25B90008 */  addiu $t9, $t5, 8
/* B19350 800A21B0 AFB90074 */  sw    $t9, 0x74($sp)
/* B19354 800A21B4 ADAE0000 */  sw    $t6, ($t5)
/* B19358 800A21B8 8FA90050 */  lw    $t1, 0x50($sp)
/* B1935C 800A21BC ADA90004 */  sw    $t1, 4($t5)
.L800A21C0:
/* B19360 800A21C0 8FB8006C */  lw    $t8, 0x6c($sp)
/* B19364 800A21C4 8FA40058 */  lw    $a0, 0x58($sp)
/* B19368 800A21C8 8FA5005C */  lw    $a1, 0x5c($sp)
/* B1936C 800A21CC 13000007 */  beqz  $t8, .L800A21EC
/* B19370 800A21D0 27A60050 */   addiu $a2, $sp, 0x50
/* B19374 800A21D4 8FAA0070 */  lw    $t2, 0x70($sp)
/* B19378 800A21D8 27AB0074 */  addiu $t3, $sp, 0x74
/* B1937C 800A21DC AFAB0014 */  sw    $t3, 0x14($sp)
/* B19380 800A21E0 27A7003C */  addiu $a3, $sp, 0x3c
/* B19384 800A21E4 0300F809 */  jalr  $t8
/* B19388 800A21E8 AFAA0010 */  sw    $t2, 0x10($sp)
.L800A21EC:
/* B1938C 800A21EC 92050006 */  lbu   $a1, 6($s0)
/* B19390 800A21F0 240100FF */  li    $at, 255
/* B19394 800A21F4 8FA40058 */  lw    $a0, 0x58($sp)
/* B19398 800A21F8 10A1000C */  beq   $a1, $at, .L800A222C
/* B1939C 800A21FC 8FA60060 */   lw    $a2, 0x60($sp)
/* B193A0 800A2200 8FA80068 */  lw    $t0, 0x68($sp)
/* B193A4 800A2204 8FAC006C */  lw    $t4, 0x6c($sp)
/* B193A8 800A2208 8FAF0070 */  lw    $t7, 0x70($sp)
/* B193AC 800A220C 8FAD0074 */  lw    $t5, 0x74($sp)
/* B193B0 800A2210 8FA70064 */  lw    $a3, 0x64($sp)
/* B193B4 800A2214 AFA80010 */  sw    $t0, 0x10($sp)
/* B193B8 800A2218 AFAC0014 */  sw    $t4, 0x14($sp)
/* B193BC 800A221C AFAF0018 */  sw    $t7, 0x18($sp)
/* B193C0 800A2220 0C028811 */  jal   func_800A2044
/* B193C4 800A2224 AFAD001C */   sw    $t5, 0x1c($sp)
/* B193C8 800A2228 AFA20074 */  sw    $v0, 0x74($sp)
.L800A222C:
/* B193CC 800A222C 0C034221 */  jal   func_800D0884
/* B193D0 800A2230 00000000 */   nop   
/* B193D4 800A2234 92050007 */  lbu   $a1, 7($s0)
/* B193D8 800A2238 240100FF */  li    $at, 255
/* B193DC 800A223C 8FA40058 */  lw    $a0, 0x58($sp)
/* B193E0 800A2240 10A1000C */  beq   $a1, $at, .L800A2274
/* B193E4 800A2244 8FA60060 */   lw    $a2, 0x60($sp)
/* B193E8 800A2248 8FB90068 */  lw    $t9, 0x68($sp)
/* B193EC 800A224C 8FAE006C */  lw    $t6, 0x6c($sp)
/* B193F0 800A2250 8FA90070 */  lw    $t1, 0x70($sp)
/* B193F4 800A2254 8FAA0074 */  lw    $t2, 0x74($sp)
/* B193F8 800A2258 8FA70064 */  lw    $a3, 0x64($sp)
/* B193FC 800A225C AFB90010 */  sw    $t9, 0x10($sp)
/* B19400 800A2260 AFAE0014 */  sw    $t6, 0x14($sp)
/* B19404 800A2264 AFA90018 */  sw    $t1, 0x18($sp)
/* B19408 800A2268 0C028811 */  jal   func_800A2044
/* B1940C 800A226C AFAA001C */   sw    $t2, 0x1c($sp)
/* B19410 800A2270 AFA20074 */  sw    $v0, 0x74($sp)
.L800A2274:
/* B19414 800A2274 8FBF002C */  lw    $ra, 0x2c($sp)
/* B19418 800A2278 8FA20074 */  lw    $v0, 0x74($sp)
/* B1941C 800A227C 8FB00028 */  lw    $s0, 0x28($sp)
/* B19420 800A2280 03E00008 */  jr    $ra
/* B19424 800A2284 27BD0058 */   addiu $sp, $sp, 0x58

glabel func_800A2288
/* B19428 800A2288 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B1942C 800A228C AFBF0024 */  sw    $ra, 0x24($sp)
/* B19430 800A2290 AFA40058 */  sw    $a0, 0x58($sp)
/* B19434 800A2294 AFA5005C */  sw    $a1, 0x5c($sp)
/* B19438 800A2298 AFA60060 */  sw    $a2, 0x60($sp)
/* B1943C 800A229C 14A0000C */  bnez  $a1, .L800A22D0
/* B19440 800A22A0 AFA70064 */   sw    $a3, 0x64($sp)
/* B19444 800A22A4 3C048014 */  lui   $a0, %hi(D_801402D8) # $a0, 0x8014
/* B19448 800A22A8 0C00084C */  jal   osSyncPrintf
/* B1944C 800A22AC 248402D8 */   addiu $a0, %lo(D_801402D8) # addiu $a0, $a0, 0x2d8
/* B19450 800A22B0 3C048014 */  lui   $a0, %hi(D_801402E0) # $a0, 0x8014
/* B19454 800A22B4 0C00084C */  jal   osSyncPrintf
/* B19458 800A22B8 248402E0 */   addiu $a0, %lo(D_801402E0) # addiu $a0, $a0, 0x2e0
/* B1945C 800A22BC 3C048014 */  lui   $a0, %hi(D_80140310) # $a0, 0x8014
/* B19460 800A22C0 0C00084C */  jal   osSyncPrintf
/* B19464 800A22C4 24840310 */   addiu $a0, %lo(D_80140310) # addiu $a0, $a0, 0x310
/* B19468 800A22C8 10000071 */  b     .L800A2490
/* B1946C 800A22CC 00001025 */   move  $v0, $zero
.L800A22D0:
/* B19470 800A22D0 0C034213 */  jal   func_800D084C
/* B19474 800A22D4 00000000 */   nop   
/* B19478 800A22D8 8FAF005C */  lw    $t7, 0x5c($sp)
/* B1947C 800A22DC 3C0A8016 */  lui   $t2, %hi(D_80166FA8)
/* B19480 800A22E0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19484 800A22E4 8DE20000 */  lw    $v0, ($t7)
/* B19488 800A22E8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1948C 800A22EC 8FA30060 */  lw    $v1, 0x60($sp)
/* B19490 800A22F0 0002C900 */  sll   $t9, $v0, 4
/* B19494 800A22F4 00194702 */  srl   $t0, $t9, 0x1c
/* B19498 800A22F8 00084880 */  sll   $t1, $t0, 2
/* B1949C 800A22FC 01495021 */  addu  $t2, $t2, $t1
/* B194A0 800A2300 8D4A6FA8 */  lw    $t2, %lo(D_80166FA8)($t2)
/* B194A4 800A2304 0041C024 */  and   $t8, $v0, $at
/* B194A8 800A2308 3C018000 */  lui   $at, 0x8000
/* B194AC 800A230C 030A5821 */  addu  $t3, $t8, $t2
/* B194B0 800A2310 01616021 */  addu  $t4, $t3, $at
/* B194B4 800A2314 AFAC0054 */  sw    $t4, 0x54($sp)
/* B194B8 800A2318 846D0000 */  lh    $t5, ($v1)
/* B194BC 800A231C 27B90038 */  addiu $t9, $sp, 0x38
/* B194C0 800A2320 27AC0038 */  addiu $t4, $sp, 0x38
/* B194C4 800A2324 448D2000 */  mtc1  $t5, $f4
/* B194C8 800A2328 24050001 */  li    $a1, 1
/* B194CC 800A232C 27A6004C */  addiu $a2, $sp, 0x4c
/* B194D0 800A2330 468021A0 */  cvt.s.w $f6, $f4
/* B194D4 800A2334 27A70040 */  addiu $a3, $sp, 0x40
/* B194D8 800A2338 E7A60040 */  swc1  $f6, 0x40($sp)
/* B194DC 800A233C 846E0002 */  lh    $t6, 2($v1)
/* B194E0 800A2340 448E4000 */  mtc1  $t6, $f8
/* B194E4 800A2344 27AE0070 */  addiu $t6, $sp, 0x70
/* B194E8 800A2348 468042A0 */  cvt.s.w $f10, $f8
/* B194EC 800A234C E7AA0044 */  swc1  $f10, 0x44($sp)
/* B194F0 800A2350 846F0004 */  lh    $t7, 4($v1)
/* B194F4 800A2354 448F8000 */  mtc1  $t7, $f16
/* B194F8 800A2358 00000000 */  nop   
/* B194FC 800A235C 468084A0 */  cvt.s.w $f18, $f16
/* B19500 800A2360 E7B20048 */  swc1  $f18, 0x48($sp)
/* B19504 800A2364 88690006 */  lwl   $t1, 6($v1)
/* B19508 800A2368 98690009 */  lwr   $t1, 9($v1)
/* B1950C 800A236C AF290000 */  sw    $t1, ($t9)
/* B19510 800A2370 9469000A */  lhu   $t1, 0xa($v1)
/* B19514 800A2374 A7290004 */  sh    $t1, 4($t9)
/* B19518 800A2378 8FB80054 */  lw    $t8, 0x54($sp)
/* B1951C 800A237C 8FAB0064 */  lw    $t3, 0x64($sp)
/* B19520 800A2380 8FA40058 */  lw    $a0, 0x58($sp)
/* B19524 800A2384 8F0A0008 */  lw    $t2, 8($t8)
/* B19528 800A2388 11600007 */  beqz  $t3, .L800A23A8
/* B1952C 800A238C AFAA004C */   sw    $t2, 0x4c($sp)
/* B19530 800A2390 8FAD006C */  lw    $t5, 0x6c($sp)
/* B19534 800A2394 AFAC0010 */  sw    $t4, 0x10($sp)
/* B19538 800A2398 AFAE0018 */  sw    $t6, 0x18($sp)
/* B1953C 800A239C 0160F809 */  jalr  $t3
/* B19540 800A23A0 AFAD0014 */  sw    $t5, 0x14($sp)
/* B19544 800A23A4 1440001B */  bnez  $v0, .L800A2414
.L800A23A8:
/* B19548 800A23A8 27A40040 */   addiu $a0, $sp, 0x40
/* B1954C 800A23AC 0C0344D0 */  jal   func_800D1340
/* B19550 800A23B0 27A50038 */   addiu $a1, $sp, 0x38
/* B19554 800A23B4 8FAF004C */  lw    $t7, 0x4c($sp)
/* B19558 800A23B8 8FB90070 */  lw    $t9, 0x70($sp)
/* B1955C 800A23BC 3C09DA38 */  lui   $t1, (0xDA380003 >> 16) # lui $t1, 0xda38
/* B19560 800A23C0 11E00014 */  beqz  $t7, .L800A2414
/* B19564 800A23C4 27280008 */   addiu $t0, $t9, 8
/* B19568 800A23C8 AFA80070 */  sw    $t0, 0x70($sp)
/* B1956C 800A23CC 35290003 */  ori   $t1, (0xDA380003 & 0xFFFF) # ori $t1, $t1, 3
/* B19570 800A23D0 AF290000 */  sw    $t1, ($t9)
/* B19574 800A23D4 8FB80058 */  lw    $t8, 0x58($sp)
/* B19578 800A23D8 3C058014 */  lui   $a1, %hi(D_80140314) # $a1, 0x8014
/* B1957C 800A23DC 24A50314 */  addiu $a1, %lo(D_80140314) # addiu $a1, $a1, 0x314
/* B19580 800A23E0 8F040000 */  lw    $a0, ($t8)
/* B19584 800A23E4 AFB90034 */  sw    $t9, 0x34($sp)
/* B19588 800A23E8 0C0346A2 */  jal   func_800D1A88
/* B1958C 800A23EC 24060616 */   li    $a2, 1558
/* B19590 800A23F0 8FA30034 */  lw    $v1, 0x34($sp)
/* B19594 800A23F4 3C0DDE00 */  lui   $t5, 0xde00
/* B19598 800A23F8 AC620004 */  sw    $v0, 4($v1)
/* B1959C 800A23FC 8FAA0070 */  lw    $t2, 0x70($sp)
/* B195A0 800A2400 254C0008 */  addiu $t4, $t2, 8
/* B195A4 800A2404 AFAC0070 */  sw    $t4, 0x70($sp)
/* B195A8 800A2408 AD4D0000 */  sw    $t5, ($t2)
/* B195AC 800A240C 8FAE004C */  lw    $t6, 0x4c($sp)
/* B195B0 800A2410 AD4E0004 */  sw    $t6, 4($t2)
.L800A2414:
/* B195B4 800A2414 8FA20068 */  lw    $v0, 0x68($sp)
/* B195B8 800A2418 8FA40058 */  lw    $a0, 0x58($sp)
/* B195BC 800A241C 24050001 */  li    $a1, 1
/* B195C0 800A2420 10400008 */  beqz  $v0, .L800A2444
/* B195C4 800A2424 27A6004C */   addiu $a2, $sp, 0x4c
/* B195C8 800A2428 8FAB006C */  lw    $t3, 0x6c($sp)
/* B195CC 800A242C 27AF0070 */  addiu $t7, $sp, 0x70
/* B195D0 800A2430 AFAF0014 */  sw    $t7, 0x14($sp)
/* B195D4 800A2434 27A70038 */  addiu $a3, $sp, 0x38
/* B195D8 800A2438 0040F809 */  jalr  $v0
/* B195DC 800A243C AFAB0010 */  sw    $t3, 0x10($sp)
/* B195E0 800A2440 8FA20068 */  lw    $v0, 0x68($sp)
.L800A2444:
/* B195E4 800A2444 8FB90054 */  lw    $t9, 0x54($sp)
/* B195E8 800A2448 240100FF */  li    $at, 255
/* B195EC 800A244C 8FA40058 */  lw    $a0, 0x58($sp)
/* B195F0 800A2450 93250006 */  lbu   $a1, 6($t9)
/* B195F4 800A2454 8FA6005C */  lw    $a2, 0x5c($sp)
/* B195F8 800A2458 8FA70060 */  lw    $a3, 0x60($sp)
/* B195FC 800A245C 10A10009 */  beq   $a1, $at, .L800A2484
/* B19600 800A2460 8FA80064 */   lw    $t0, 0x64($sp)
/* B19604 800A2464 8FA9006C */  lw    $t1, 0x6c($sp)
/* B19608 800A2468 8FB80070 */  lw    $t8, 0x70($sp)
/* B1960C 800A246C AFA80010 */  sw    $t0, 0x10($sp)
/* B19610 800A2470 AFA20014 */  sw    $v0, 0x14($sp)
/* B19614 800A2474 AFA90018 */  sw    $t1, 0x18($sp)
/* B19618 800A2478 0C028811 */  jal   func_800A2044
/* B1961C 800A247C AFB8001C */   sw    $t8, 0x1c($sp)
/* B19620 800A2480 AFA20070 */  sw    $v0, 0x70($sp)
.L800A2484:
/* B19624 800A2484 0C034221 */  jal   func_800D0884
/* B19628 800A2488 00000000 */   nop   
/* B1962C 800A248C 8FA20070 */  lw    $v0, 0x70($sp)
.L800A2490:
/* B19630 800A2490 8FBF0024 */  lw    $ra, 0x24($sp)
/* B19634 800A2494 27BD0058 */  addiu $sp, $sp, 0x58
/* B19638 800A2498 03E00008 */  jr    $ra
/* B1963C 800A249C 00000000 */   nop   

glabel func_800A24A0
/* B19640 800A24A0 27BDFF98 */  addiu $sp, $sp, -0x68
/* B19644 800A24A4 AFBF0034 */  sw    $ra, 0x34($sp)
/* B19648 800A24A8 AFB00030 */  sw    $s0, 0x30($sp)
/* B1964C 800A24AC AFA40068 */  sw    $a0, 0x68($sp)
/* B19650 800A24B0 AFA5006C */  sw    $a1, 0x6c($sp)
/* B19654 800A24B4 AFA60070 */  sw    $a2, 0x70($sp)
/* B19658 800A24B8 0C034213 */  jal   func_800D084C
/* B1965C 800A24BC AFA70074 */   sw    $a3, 0x74($sp)
/* B19660 800A24C0 8FAF006C */  lw    $t7, 0x6c($sp)
/* B19664 800A24C4 8FAE0070 */  lw    $t6, 0x70($sp)
/* B19668 800A24C8 3C0C8016 */  lui   $t4, %hi(D_80166FA8)
/* B1966C 800A24CC 000FC080 */  sll   $t8, $t7, 2
/* B19670 800A24D0 01D8C821 */  addu  $t9, $t6, $t8
/* B19674 800A24D4 8F220000 */  lw    $v0, ($t9)
/* B19678 800A24D8 25ED0001 */  addiu $t5, $t7, 1
/* B1967C 800A24DC 8FB80074 */  lw    $t8, 0x74($sp)
/* B19680 800A24E0 000DC880 */  sll   $t9, $t5, 2
/* B19684 800A24E4 00024900 */  sll   $t1, $v0, 4
/* B19688 800A24E8 00095702 */  srl   $t2, $t1, 0x1c
/* B1968C 800A24EC 032DC823 */  subu  $t9, $t9, $t5
/* B19690 800A24F0 000A5880 */  sll   $t3, $t2, 2
/* B19694 800A24F4 0019C840 */  sll   $t9, $t9, 1
/* B19698 800A24F8 018B6021 */  addu  $t4, $t4, $t3
/* B1969C 800A24FC AFAD006C */  sw    $t5, 0x6c($sp)
/* B196A0 800A2500 03194821 */  addu  $t1, $t8, $t9
/* B196A4 800A2504 892B0000 */  lwl   $t3, ($t1)
/* B196A8 800A2508 992B0003 */  lwr   $t3, 3($t1)
/* B196AC 800A250C 8D8C6FA8 */  lw    $t4, %lo(D_80166FA8)($t4)
/* B196B0 800A2510 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B196B4 800A2514 27AE0048 */  addiu $t6, $sp, 0x48
/* B196B8 800A2518 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B196BC 800A251C ADCB0000 */  sw    $t3, ($t6)
/* B196C0 800A2520 952B0004 */  lhu   $t3, 4($t1)
/* B196C4 800A2524 00414024 */  and   $t0, $v0, $at
/* B196C8 800A2528 3C018000 */  lui   $at, 0x8000
/* B196CC 800A252C 010C8021 */  addu  $s0, $t0, $t4
/* B196D0 800A2530 02018021 */  addu  $s0, $s0, $at
/* B196D4 800A2534 A5CB0004 */  sh    $t3, 4($t6)
/* B196D8 800A2538 86080000 */  lh    $t0, ($s0)
/* B196DC 800A253C 8FB90078 */  lw    $t9, 0x78($sp)
/* B196E0 800A2540 8FA5006C */  lw    $a1, 0x6c($sp)
/* B196E4 800A2544 44882000 */  mtc1  $t0, $f4
/* B196E8 800A2548 8FA40068 */  lw    $a0, 0x68($sp)
/* B196EC 800A254C 27AE0048 */  addiu $t6, $sp, 0x48
/* B196F0 800A2550 468021A0 */  cvt.s.w $f6, $f4
/* B196F4 800A2554 27AA0088 */  addiu $t2, $sp, 0x88
/* B196F8 800A2558 27A60060 */  addiu $a2, $sp, 0x60
/* B196FC 800A255C 27A70050 */  addiu $a3, $sp, 0x50
/* B19700 800A2560 E7A60050 */  swc1  $f6, 0x50($sp)
/* B19704 800A2564 860C0002 */  lh    $t4, 2($s0)
/* B19708 800A2568 448C4000 */  mtc1  $t4, $f8
/* B1970C 800A256C 00000000 */  nop   
/* B19710 800A2570 468042A0 */  cvt.s.w $f10, $f8
/* B19714 800A2574 E7AA0054 */  swc1  $f10, 0x54($sp)
/* B19718 800A2578 860F0004 */  lh    $t7, 4($s0)
/* B1971C 800A257C 448F8000 */  mtc1  $t7, $f16
/* B19720 800A2580 00000000 */  nop   
/* B19724 800A2584 468084A0 */  cvt.s.w $f18, $f16
/* B19728 800A2588 E7B20058 */  swc1  $f18, 0x58($sp)
/* B1972C 800A258C 8E0D0008 */  lw    $t5, 8($s0)
/* B19730 800A2590 AFAD005C */  sw    $t5, 0x5c($sp)
/* B19734 800A2594 13200007 */  beqz  $t9, .L800A25B4
/* B19738 800A2598 AFAD0060 */   sw    $t5, 0x60($sp)
/* B1973C 800A259C 8FA90080 */  lw    $t1, 0x80($sp)
/* B19740 800A25A0 AFAE0010 */  sw    $t6, 0x10($sp)
/* B19744 800A25A4 AFAA0018 */  sw    $t2, 0x18($sp)
/* B19748 800A25A8 0320F809 */  jalr  $t9
/* B1974C 800A25AC AFA90014 */  sw    $t1, 0x14($sp)
/* B19750 800A25B0 1440002C */  bnez  $v0, .L800A2664
.L800A25B4:
/* B19754 800A25B4 27A40050 */   addiu $a0, $sp, 0x50
/* B19758 800A25B8 0C0344D0 */  jal   func_800D1340
/* B1975C 800A25BC 27A50048 */   addiu $a1, $sp, 0x48
/* B19760 800A25C0 8FAB0060 */  lw    $t3, 0x60($sp)
/* B19764 800A25C4 8FA80084 */  lw    $t0, 0x84($sp)
/* B19768 800A25C8 3C058014 */  lui   $a1, %hi(D_80140328) # $a1, 0x8014
/* B1976C 800A25CC 1160001A */  beqz  $t3, .L800A2638
/* B19770 800A25D0 8FAD005C */   lw    $t5, 0x5c($sp)
/* B19774 800A25D4 8D040000 */  lw    $a0, ($t0)
/* B19778 800A25D8 24A50328 */  addiu $a1, %lo(D_80140328) # addiu $a1, $a1, 0x328
/* B1977C 800A25DC 0C034695 */  jal   func_800D1A54
/* B19780 800A25E0 24060657 */   li    $a2, 1623
/* B19784 800A25E4 8FAC0088 */  lw    $t4, 0x88($sp)
/* B19788 800A25E8 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* B1978C 800A25EC 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* B19790 800A25F0 258F0008 */  addiu $t7, $t4, 8
/* B19794 800A25F4 AFAF0088 */  sw    $t7, 0x88($sp)
/* B19798 800A25F8 AD8D0000 */  sw    $t5, ($t4)
/* B1979C 800A25FC 8FB80084 */  lw    $t8, 0x84($sp)
/* B197A0 800A2600 3C19DE00 */  lui   $t9, 0xde00
/* B197A4 800A2604 8F0E0000 */  lw    $t6, ($t8)
/* B197A8 800A2608 AD8E0004 */  sw    $t6, 4($t4)
/* B197AC 800A260C 8FA90088 */  lw    $t1, 0x88($sp)
/* B197B0 800A2610 252A0008 */  addiu $t2, $t1, 8
/* B197B4 800A2614 AFAA0088 */  sw    $t2, 0x88($sp)
/* B197B8 800A2618 AD390000 */  sw    $t9, ($t1)
/* B197BC 800A261C 8FAB0060 */  lw    $t3, 0x60($sp)
/* B197C0 800A2620 AD2B0004 */  sw    $t3, 4($t1)
/* B197C4 800A2624 8FA80084 */  lw    $t0, 0x84($sp)
/* B197C8 800A2628 8D0C0000 */  lw    $t4, ($t0)
/* B197CC 800A262C 258F0040 */  addiu $t7, $t4, 0x40
/* B197D0 800A2630 1000000C */  b     .L800A2664
/* B197D4 800A2634 AD0F0000 */   sw    $t7, ($t0)
.L800A2638:
/* B197D8 800A2638 11A0000A */  beqz  $t5, .L800A2664
/* B197DC 800A263C 8FB80084 */   lw    $t8, 0x84($sp)
/* B197E0 800A2640 3C058014 */  lui   $a1, %hi(D_8014033C) # $a1, 0x8014
/* B197E4 800A2644 24A5033C */  addiu $a1, %lo(D_8014033C) # addiu $a1, $a1, 0x33c
/* B197E8 800A2648 8F040000 */  lw    $a0, ($t8)
/* B197EC 800A264C 0C034695 */  jal   func_800D1A54
/* B197F0 800A2650 2406065E */   li    $a2, 1630
/* B197F4 800A2654 8FAE0084 */  lw    $t6, 0x84($sp)
/* B197F8 800A2658 8DC90000 */  lw    $t1, ($t6)
/* B197FC 800A265C 252A0040 */  addiu $t2, $t1, 0x40
/* B19800 800A2660 ADCA0000 */  sw    $t2, ($t6)
.L800A2664:
/* B19804 800A2664 8FB9007C */  lw    $t9, 0x7c($sp)
/* B19808 800A2668 8FA40068 */  lw    $a0, 0x68($sp)
/* B1980C 800A266C 8FA5006C */  lw    $a1, 0x6c($sp)
/* B19810 800A2670 13200007 */  beqz  $t9, .L800A2690
/* B19814 800A2674 27A6005C */   addiu $a2, $sp, 0x5c
/* B19818 800A2678 8FAB0080 */  lw    $t3, 0x80($sp)
/* B1981C 800A267C 27AC0088 */  addiu $t4, $sp, 0x88
/* B19820 800A2680 AFAC0014 */  sw    $t4, 0x14($sp)
/* B19824 800A2684 27A70048 */  addiu $a3, $sp, 0x48
/* B19828 800A2688 0320F809 */  jalr  $t9
/* B1982C 800A268C AFAB0010 */  sw    $t3, 0x10($sp)
.L800A2690:
/* B19830 800A2690 92050006 */  lbu   $a1, 6($s0)
/* B19834 800A2694 240100FF */  li    $at, 255
/* B19838 800A2698 8FA40068 */  lw    $a0, 0x68($sp)
/* B1983C 800A269C 10A1000E */  beq   $a1, $at, .L800A26D8
/* B19840 800A26A0 8FA60070 */   lw    $a2, 0x70($sp)
/* B19844 800A26A4 8FAF0078 */  lw    $t7, 0x78($sp)
/* B19848 800A26A8 8FA8007C */  lw    $t0, 0x7c($sp)
/* B1984C 800A26AC 8FAD0080 */  lw    $t5, 0x80($sp)
/* B19850 800A26B0 8FB80084 */  lw    $t8, 0x84($sp)
/* B19854 800A26B4 8FA90088 */  lw    $t1, 0x88($sp)
/* B19858 800A26B8 8FA70074 */  lw    $a3, 0x74($sp)
/* B1985C 800A26BC AFAF0010 */  sw    $t7, 0x10($sp)
/* B19860 800A26C0 AFA80014 */  sw    $t0, 0x14($sp)
/* B19864 800A26C4 AFAD0018 */  sw    $t5, 0x18($sp)
/* B19868 800A26C8 AFB8001C */  sw    $t8, 0x1c($sp)
/* B1986C 800A26CC 0C028928 */  jal   func_800A24A0
/* B19870 800A26D0 AFA90020 */   sw    $t1, 0x20($sp)
/* B19874 800A26D4 AFA20088 */  sw    $v0, 0x88($sp)
.L800A26D8:
/* B19878 800A26D8 0C034221 */  jal   func_800D0884
/* B1987C 800A26DC 00000000 */   nop   
/* B19880 800A26E0 92050007 */  lbu   $a1, 7($s0)
/* B19884 800A26E4 240100FF */  li    $at, 255
/* B19888 800A26E8 8FA40068 */  lw    $a0, 0x68($sp)
/* B1988C 800A26EC 10A1000E */  beq   $a1, $at, .L800A2728
/* B19890 800A26F0 8FA60070 */   lw    $a2, 0x70($sp)
/* B19894 800A26F4 8FAA0078 */  lw    $t2, 0x78($sp)
/* B19898 800A26F8 8FAE007C */  lw    $t6, 0x7c($sp)
/* B1989C 800A26FC 8FAB0080 */  lw    $t3, 0x80($sp)
/* B198A0 800A2700 8FAC0084 */  lw    $t4, 0x84($sp)
/* B198A4 800A2704 8FB90088 */  lw    $t9, 0x88($sp)
/* B198A8 800A2708 8FA70074 */  lw    $a3, 0x74($sp)
/* B198AC 800A270C AFAA0010 */  sw    $t2, 0x10($sp)
/* B198B0 800A2710 AFAE0014 */  sw    $t6, 0x14($sp)
/* B198B4 800A2714 AFAB0018 */  sw    $t3, 0x18($sp)
/* B198B8 800A2718 AFAC001C */  sw    $t4, 0x1c($sp)
/* B198BC 800A271C 0C028928 */  jal   func_800A24A0
/* B198C0 800A2720 AFB90020 */   sw    $t9, 0x20($sp)
/* B198C4 800A2724 AFA20088 */  sw    $v0, 0x88($sp)
.L800A2728:
/* B198C8 800A2728 8FBF0034 */  lw    $ra, 0x34($sp)
/* B198CC 800A272C 8FA20088 */  lw    $v0, 0x88($sp)
/* B198D0 800A2730 8FB00030 */  lw    $s0, 0x30($sp)
/* B198D4 800A2734 03E00008 */  jr    $ra
/* B198D8 800A2738 27BD0068 */   addiu $sp, $sp, 0x68

glabel func_800A273C
/* B198DC 800A273C 27BDFF98 */  addiu $sp, $sp, -0x68
/* B198E0 800A2740 AFBF002C */  sw    $ra, 0x2c($sp)
/* B198E4 800A2744 AFA40068 */  sw    $a0, 0x68($sp)
/* B198E8 800A2748 AFA5006C */  sw    $a1, 0x6c($sp)
/* B198EC 800A274C AFA60070 */  sw    $a2, 0x70($sp)
/* B198F0 800A2750 8C840000 */  lw    $a0, ($a0)
/* B198F4 800A2754 0C031A73 */  jal   Graph_Alloc
/* B198F8 800A2758 00072980 */   sll   $a1, $a3, 6
/* B198FC 800A275C 8FAF006C */  lw    $t7, 0x6c($sp)
/* B19900 800A2760 8FB80084 */  lw    $t8, 0x84($sp)
/* B19904 800A2764 AFA20040 */  sw    $v0, 0x40($sp)
/* B19908 800A2768 15E0000C */  bnez  $t7, .L800A279C
/* B1990C 800A276C 27190008 */   addiu $t9, $t8, 8
/* B19910 800A2770 3C048014 */  lui   $a0, %hi(D_80140350) # $a0, 0x8014
/* B19914 800A2774 0C00084C */  jal   osSyncPrintf
/* B19918 800A2778 24840350 */   addiu $a0, %lo(D_80140350) # addiu $a0, $a0, 0x350
/* B1991C 800A277C 3C048014 */  lui   $a0, %hi(D_80140358) # $a0, 0x8014
/* B19920 800A2780 0C00084C */  jal   osSyncPrintf
/* B19924 800A2784 24840358 */   addiu $a0, %lo(D_80140358) # addiu $a0, $a0, 0x358
/* B19928 800A2788 3C048014 */  lui   $a0, %hi(D_8014038C) # $a0, 0x8014
/* B1992C 800A278C 0C00084C */  jal   osSyncPrintf
/* B19930 800A2790 2484038C */   addiu $a0, %lo(D_8014038C) # addiu $a0, $a0, 0x38c
/* B19934 800A2794 10000085 */  b     .L800A29AC
/* B19938 800A2798 00001025 */   move  $v0, $zero
.L800A279C:
/* B1993C 800A279C 3C08DB06 */  lui   $t0, (0xDB060034 >> 16) # lui $t0, 0xdb06
/* B19940 800A27A0 35080034 */  ori   $t0, (0xDB060034 & 0xFFFF) # ori $t0, $t0, 0x34
/* B19944 800A27A4 AFB90084 */  sw    $t9, 0x84($sp)
/* B19948 800A27A8 AF080000 */  sw    $t0, ($t8)
/* B1994C 800A27AC 8FA90040 */  lw    $t1, 0x40($sp)
/* B19950 800A27B0 0C034213 */  jal   func_800D084C
/* B19954 800A27B4 AF090004 */   sw    $t1, 4($t8)
/* B19958 800A27B8 8FAA006C */  lw    $t2, 0x6c($sp)
/* B1995C 800A27BC 3C0F8016 */  lui   $t7, %hi(D_80166FA8)
/* B19960 800A27C0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19964 800A27C4 8D420000 */  lw    $v0, ($t2)
/* B19968 800A27C8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1996C 800A27CC 8FA30070 */  lw    $v1, 0x70($sp)
/* B19970 800A27D0 00026100 */  sll   $t4, $v0, 4
/* B19974 800A27D4 000C6F02 */  srl   $t5, $t4, 0x1c
/* B19978 800A27D8 000D7080 */  sll   $t6, $t5, 2
/* B1997C 800A27DC 01EE7821 */  addu  $t7, $t7, $t6
/* B19980 800A27E0 8DEF6FA8 */  lw    $t7, %lo(D_80166FA8)($t7)
/* B19984 800A27E4 00415824 */  and   $t3, $v0, $at
/* B19988 800A27E8 3C018000 */  lui   $at, 0x8000
/* B1998C 800A27EC 016FC021 */  addu  $t8, $t3, $t7
/* B19990 800A27F0 0301C821 */  addu  $t9, $t8, $at
/* B19994 800A27F4 AFB90064 */  sw    $t9, 0x64($sp)
/* B19998 800A27F8 84680000 */  lh    $t0, ($v1)
/* B1999C 800A27FC 27AC0044 */  addiu $t4, $sp, 0x44
/* B199A0 800A2800 27B90044 */  addiu $t9, $sp, 0x44
/* B199A4 800A2804 44882000 */  mtc1  $t0, $f4
/* B199A8 800A2808 24050001 */  li    $a1, 1
/* B199AC 800A280C 27A6005C */  addiu $a2, $sp, 0x5c
/* B199B0 800A2810 468021A0 */  cvt.s.w $f6, $f4
/* B199B4 800A2814 27A7004C */  addiu $a3, $sp, 0x4c
/* B199B8 800A2818 E7A6004C */  swc1  $f6, 0x4c($sp)
/* B199BC 800A281C 84690002 */  lh    $t1, 2($v1)
/* B199C0 800A2820 44894000 */  mtc1  $t1, $f8
/* B199C4 800A2824 27A90084 */  addiu $t1, $sp, 0x84
/* B199C8 800A2828 468042A0 */  cvt.s.w $f10, $f8
/* B199CC 800A282C E7AA0050 */  swc1  $f10, 0x50($sp)
/* B199D0 800A2830 846A0004 */  lh    $t2, 4($v1)
/* B199D4 800A2834 448A8000 */  mtc1  $t2, $f16
/* B199D8 800A2838 00000000 */  nop   
/* B199DC 800A283C 468084A0 */  cvt.s.w $f18, $f16
/* B199E0 800A2840 E7B20054 */  swc1  $f18, 0x54($sp)
/* B199E4 800A2844 886E0006 */  lwl   $t6, 6($v1)
/* B199E8 800A2848 986E0009 */  lwr   $t6, 9($v1)
/* B199EC 800A284C AD8E0000 */  sw    $t6, ($t4)
/* B199F0 800A2850 946E000A */  lhu   $t6, 0xa($v1)
/* B199F4 800A2854 A58E0004 */  sh    $t6, 4($t4)
/* B199F8 800A2858 8FAB0064 */  lw    $t3, 0x64($sp)
/* B199FC 800A285C 8FB80078 */  lw    $t8, 0x78($sp)
/* B19A00 800A2860 8FA40068 */  lw    $a0, 0x68($sp)
/* B19A04 800A2864 8D6F0008 */  lw    $t7, 8($t3)
/* B19A08 800A2868 AFAF0058 */  sw    $t7, 0x58($sp)
/* B19A0C 800A286C 13000007 */  beqz  $t8, .L800A288C
/* B19A10 800A2870 AFAF005C */   sw    $t7, 0x5c($sp)
/* B19A14 800A2874 8FA80080 */  lw    $t0, 0x80($sp)
/* B19A18 800A2878 AFB90010 */  sw    $t9, 0x10($sp)
/* B19A1C 800A287C AFA90018 */  sw    $t1, 0x18($sp)
/* B19A20 800A2880 0300F809 */  jalr  $t8
/* B19A24 800A2884 AFA80014 */  sw    $t0, 0x14($sp)
/* B19A28 800A2888 14400027 */  bnez  $v0, .L800A2928
.L800A288C:
/* B19A2C 800A288C 27A4004C */   addiu $a0, $sp, 0x4c
/* B19A30 800A2890 0C0344D0 */  jal   func_800D1340
/* B19A34 800A2894 27A50044 */   addiu $a1, $sp, 0x44
/* B19A38 800A2898 8FAA005C */  lw    $t2, 0x5c($sp)
/* B19A3C 800A289C 8FA40040 */  lw    $a0, 0x40($sp)
/* B19A40 800A28A0 3C058014 */  lui   $a1, %hi(D_80140390) # $a1, 0x8014
/* B19A44 800A28A4 11400017 */  beqz  $t2, .L800A2904
/* B19A48 800A28A8 8FAC0058 */   lw    $t4, 0x58($sp)
/* B19A4C 800A28AC 24A50390 */  addiu $a1, %lo(D_80140390) # addiu $a1, $a1, 0x390
/* B19A50 800A28B0 0C034695 */  jal   func_800D1A54
/* B19A54 800A28B4 240606AE */   li    $a2, 1710
/* B19A58 800A28B8 8FAC0084 */  lw    $t4, 0x84($sp)
/* B19A5C 800A28BC 3C0EDA38 */  lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* B19A60 800A28C0 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* B19A64 800A28C4 258D0008 */  addiu $t5, $t4, 8
/* B19A68 800A28C8 AFAD0084 */  sw    $t5, 0x84($sp)
/* B19A6C 800A28CC AD8E0000 */  sw    $t6, ($t4)
/* B19A70 800A28D0 8FAB0040 */  lw    $t3, 0x40($sp)
/* B19A74 800A28D4 3C08DE00 */  lui   $t0, 0xde00
/* B19A78 800A28D8 AD8B0004 */  sw    $t3, 4($t4)
/* B19A7C 800A28DC 8FAF0084 */  lw    $t7, 0x84($sp)
/* B19A80 800A28E0 25F90008 */  addiu $t9, $t7, 8
/* B19A84 800A28E4 AFB90084 */  sw    $t9, 0x84($sp)
/* B19A88 800A28E8 ADE80000 */  sw    $t0, ($t7)
/* B19A8C 800A28EC 8FA9005C */  lw    $t1, 0x5c($sp)
/* B19A90 800A28F0 ADE90004 */  sw    $t1, 4($t7)
/* B19A94 800A28F4 8FB80040 */  lw    $t8, 0x40($sp)
/* B19A98 800A28F8 270A0040 */  addiu $t2, $t8, 0x40
/* B19A9C 800A28FC 1000000A */  b     .L800A2928
/* B19AA0 800A2900 AFAA0040 */   sw    $t2, 0x40($sp)
.L800A2904:
/* B19AA4 800A2904 11800008 */  beqz  $t4, .L800A2928
/* B19AA8 800A2908 8FA40040 */   lw    $a0, 0x40($sp)
/* B19AAC 800A290C 3C058014 */  lui   $a1, %hi(D_801403A4) # $a1, 0x8014
/* B19AB0 800A2910 24A503A4 */  addiu $a1, %lo(D_801403A4) # addiu $a1, $a1, 0x3a4
/* B19AB4 800A2914 0C034695 */  jal   func_800D1A54
/* B19AB8 800A2918 240606B5 */   li    $a2, 1717
/* B19ABC 800A291C 8FAD0040 */  lw    $t5, 0x40($sp)
/* B19AC0 800A2920 25AE0040 */  addiu $t6, $t5, 0x40
/* B19AC4 800A2924 AFAE0040 */  sw    $t6, 0x40($sp)
.L800A2928:
/* B19AC8 800A2928 8FA2007C */  lw    $v0, 0x7c($sp)
/* B19ACC 800A292C 8FA40068 */  lw    $a0, 0x68($sp)
/* B19AD0 800A2930 24050001 */  li    $a1, 1
/* B19AD4 800A2934 10400008 */  beqz  $v0, .L800A2958
/* B19AD8 800A2938 27A60058 */   addiu $a2, $sp, 0x58
/* B19ADC 800A293C 8FAB0080 */  lw    $t3, 0x80($sp)
/* B19AE0 800A2940 27AF0084 */  addiu $t7, $sp, 0x84
/* B19AE4 800A2944 AFAF0014 */  sw    $t7, 0x14($sp)
/* B19AE8 800A2948 27A70044 */  addiu $a3, $sp, 0x44
/* B19AEC 800A294C 0040F809 */  jalr  $v0
/* B19AF0 800A2950 AFAB0010 */  sw    $t3, 0x10($sp)
/* B19AF4 800A2954 8FA2007C */  lw    $v0, 0x7c($sp)
.L800A2958:
/* B19AF8 800A2958 8FB90064 */  lw    $t9, 0x64($sp)
/* B19AFC 800A295C 240100FF */  li    $at, 255
/* B19B00 800A2960 8FA40068 */  lw    $a0, 0x68($sp)
/* B19B04 800A2964 93250006 */  lbu   $a1, 6($t9)
/* B19B08 800A2968 8FA6006C */  lw    $a2, 0x6c($sp)
/* B19B0C 800A296C 8FA70070 */  lw    $a3, 0x70($sp)
/* B19B10 800A2970 10A1000B */  beq   $a1, $at, .L800A29A0
/* B19B14 800A2974 8FA80078 */   lw    $t0, 0x78($sp)
/* B19B18 800A2978 8FA90080 */  lw    $t1, 0x80($sp)
/* B19B1C 800A297C 8FAA0084 */  lw    $t2, 0x84($sp)
/* B19B20 800A2980 27B80040 */  addiu $t8, $sp, 0x40
/* B19B24 800A2984 AFB8001C */  sw    $t8, 0x1c($sp)
/* B19B28 800A2988 AFA80010 */  sw    $t0, 0x10($sp)
/* B19B2C 800A298C AFA20014 */  sw    $v0, 0x14($sp)
/* B19B30 800A2990 AFA90018 */  sw    $t1, 0x18($sp)
/* B19B34 800A2994 0C028928 */  jal   func_800A24A0
/* B19B38 800A2998 AFAA0020 */   sw    $t2, 0x20($sp)
/* B19B3C 800A299C AFA20084 */  sw    $v0, 0x84($sp)
.L800A29A0:
/* B19B40 800A29A0 0C034221 */  jal   func_800D0884
/* B19B44 800A29A4 00000000 */   nop   
/* B19B48 800A29A8 8FA20084 */  lw    $v0, 0x84($sp)
.L800A29AC:
/* B19B4C 800A29AC 8FBF002C */  lw    $ra, 0x2c($sp)
/* B19B50 800A29B0 27BD0068 */  addiu $sp, $sp, 0x68
/* B19B54 800A29B4 03E00008 */  jr    $ra
/* B19B58 800A29B8 00000000 */   nop   

glabel func_800A29BC
/* B19B5C 800A29BC 00047100 */  sll   $t6, $a0, 4
/* B19B60 800A29C0 3C0B8016 */  lui   $t3, %hi(D_80166FA8) # $t3, 0x8016
/* B19B64 800A29C4 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19B68 800A29C8 256B6FA8 */  addiu $t3, %lo(D_80166FA8) # addiu $t3, $t3, 0x6fa8
/* B19B6C 800A29CC 000FC080 */  sll   $t8, $t7, 2
/* B19B70 800A29D0 0178C821 */  addu  $t9, $t3, $t8
/* B19B74 800A29D4 8F2E0000 */  lw    $t6, ($t9)
/* B19B78 800A29D8 3C0C00FF */  lui   $t4, (0x00FFFFFF >> 16) # lui $t4, 0xff
/* B19B7C 800A29DC 358CFFFF */  ori   $t4, (0x00FFFFFF & 0xFFFF) # ori $t4, $t4, 0xffff
/* B19B80 800A29E0 008C7824 */  and   $t7, $a0, $t4
/* B19B84 800A29E4 3C0D8000 */  lui   $t5, 0x8000
/* B19B88 800A29E8 01CFC021 */  addu  $t8, $t6, $t7
/* B19B8C 800A29EC 030D1021 */  addu  $v0, $t8, $t5
/* B19B90 800A29F0 8C480008 */  lw    $t0, 8($v0)
/* B19B94 800A29F4 8C4A0004 */  lw    $t2, 4($v0)
/* B19B98 800A29F8 84430002 */  lh    $v1, 2($v0)
/* B19B9C 800A29FC 0008C900 */  sll   $t9, $t0, 4
/* B19BA0 800A2A00 00197702 */  srl   $t6, $t9, 0x1c
/* B19BA4 800A2A04 000E7880 */  sll   $t7, $t6, 2
/* B19BA8 800A2A08 016FC021 */  addu  $t8, $t3, $t7
/* B19BAC 800A2A0C 8F190000 */  lw    $t9, ($t8)
/* B19BB0 800A2A10 010C7024 */  and   $t6, $t0, $t4
/* B19BB4 800A2A14 000AC100 */  sll   $t8, $t2, 4
/* B19BB8 800A2A18 032E7821 */  addu  $t7, $t9, $t6
/* B19BBC 800A2A1C 0018CF02 */  srl   $t9, $t8, 0x1c
/* B19BC0 800A2A20 01ED3821 */  addu  $a3, $t7, $t5
/* B19BC4 800A2A24 00197080 */  sll   $t6, $t9, 2
/* B19BC8 800A2A28 016E7821 */  addu  $t7, $t3, $t6
/* B19BCC 800A2A2C 8DF80000 */  lw    $t8, ($t7)
/* B19BD0 800A2A30 84EF0000 */  lh    $t7, ($a3)
/* B19BD4 800A2A34 014CC824 */  and   $t9, $t2, $t4
/* B19BD8 800A2A38 03197021 */  addu  $t6, $t8, $t9
/* B19BDC 800A2A3C 00AF082A */  slt   $at, $a1, $t7
/* B19BE0 800A2A40 10200009 */  beqz  $at, .L800A2A68
/* B19BE4 800A2A44 01CD4821 */   addu  $t1, $t6, $t5
/* B19BE8 800A2A48 84EE0002 */  lh    $t6, 2($a3)
/* B19BEC 800A2A4C 0005C040 */  sll   $t8, $a1, 1
/* B19BF0 800A2A50 0309C821 */  addu  $t9, $t8, $t1
/* B19BF4 800A2A54 000E7840 */  sll   $t7, $t6, 1
/* B19BF8 800A2A58 032FC021 */  addu  $t8, $t9, $t7
/* B19BFC 800A2A5C 870E0000 */  lh    $t6, ($t8)
/* B19C00 800A2A60 10000006 */  b     .L800A2A7C
/* B19C04 800A2A64 A4CE0000 */   sh    $t6, ($a2)
.L800A2A68:
/* B19C08 800A2A68 84F90002 */  lh    $t9, 2($a3)
/* B19C0C 800A2A6C 00197840 */  sll   $t7, $t9, 1
/* B19C10 800A2A70 012FC021 */  addu  $t8, $t1, $t7
/* B19C14 800A2A74 870E0000 */  lh    $t6, ($t8)
/* B19C18 800A2A78 A4CE0000 */  sh    $t6, ($a2)
.L800A2A7C:
/* B19C1C 800A2A7C 84F90004 */  lh    $t9, 4($a3)
/* B19C20 800A2A80 24020001 */  li    $v0, 1
/* B19C24 800A2A84 30640001 */  andi  $a0, $v1, 1
/* B19C28 800A2A88 00B9082A */  slt   $at, $a1, $t9
/* B19C2C 800A2A8C 5020000A */  beql  $at, $zero, .L800A2AB8
/* B19C30 800A2A90 84F80006 */   lh    $t8, 6($a3)
/* B19C34 800A2A94 84EE0006 */  lh    $t6, 6($a3)
/* B19C38 800A2A98 00057840 */  sll   $t7, $a1, 1
/* B19C3C 800A2A9C 01E9C021 */  addu  $t8, $t7, $t1
/* B19C40 800A2AA0 000EC840 */  sll   $t9, $t6, 1
/* B19C44 800A2AA4 03197821 */  addu  $t7, $t8, $t9
/* B19C48 800A2AA8 85EE0000 */  lh    $t6, ($t7)
/* B19C4C 800A2AAC 10000006 */  b     .L800A2AC8
/* B19C50 800A2AB0 A4CE0002 */   sh    $t6, 2($a2)
/* B19C54 800A2AB4 84F80006 */  lh    $t8, 6($a3)
.L800A2AB8:
/* B19C58 800A2AB8 0018C840 */  sll   $t9, $t8, 1
/* B19C5C 800A2ABC 01397821 */  addu  $t7, $t1, $t9
/* B19C60 800A2AC0 85EE0000 */  lh    $t6, ($t7)
/* B19C64 800A2AC4 A4CE0002 */  sh    $t6, 2($a2)
.L800A2AC8:
/* B19C68 800A2AC8 84F80008 */  lh    $t8, 8($a3)
/* B19C6C 800A2ACC 00B8082A */  slt   $at, $a1, $t8
/* B19C70 800A2AD0 5020000A */  beql  $at, $zero, .L800A2AFC
/* B19C74 800A2AD4 84EF000A */   lh    $t7, 0xa($a3)
/* B19C78 800A2AD8 84EE000A */  lh    $t6, 0xa($a3)
/* B19C7C 800A2ADC 0005C840 */  sll   $t9, $a1, 1
/* B19C80 800A2AE0 03297821 */  addu  $t7, $t9, $t1
/* B19C84 800A2AE4 000EC040 */  sll   $t8, $t6, 1
/* B19C88 800A2AE8 01F8C821 */  addu  $t9, $t7, $t8
/* B19C8C 800A2AEC 872E0000 */  lh    $t6, ($t9)
/* B19C90 800A2AF0 10000006 */  b     .L800A2B0C
/* B19C94 800A2AF4 A4CE0004 */   sh    $t6, 4($a2)
/* B19C98 800A2AF8 84EF000A */  lh    $t7, 0xa($a3)
.L800A2AFC:
/* B19C9C 800A2AFC 000FC040 */  sll   $t8, $t7, 1
/* B19CA0 800A2B00 0138C821 */  addu  $t9, $t1, $t8
/* B19CA4 800A2B04 872E0000 */  lh    $t6, ($t9)
/* B19CA8 800A2B08 A4CE0004 */  sh    $t6, 4($a2)
.L800A2B0C:
/* B19CAC 800A2B0C 24C60006 */  addiu $a2, $a2, 6
/* B19CB0 800A2B10 186000A8 */  blez  $v1, .L800A2DB4
/* B19CB4 800A2B14 24E7000C */   addiu $a3, $a3, 0xc
/* B19CB8 800A2B18 5080003A */  beql  $a0, $zero, .L800A2C04
/* B19CBC 800A2B1C 84F80000 */   lh    $t8, ($a3)
/* B19CC0 800A2B20 84EF0000 */  lh    $t7, ($a3)
/* B19CC4 800A2B24 24020002 */  li    $v0, 2
/* B19CC8 800A2B28 00AF082A */  slt   $at, $a1, $t7
/* B19CCC 800A2B2C 5020000A */  beql  $at, $zero, .L800A2B58
/* B19CD0 800A2B30 84F90002 */   lh    $t9, 2($a3)
/* B19CD4 800A2B34 84EE0002 */  lh    $t6, 2($a3)
/* B19CD8 800A2B38 0005C040 */  sll   $t8, $a1, 1
/* B19CDC 800A2B3C 0309C821 */  addu  $t9, $t8, $t1
/* B19CE0 800A2B40 000E7840 */  sll   $t7, $t6, 1
/* B19CE4 800A2B44 032FC021 */  addu  $t8, $t9, $t7
/* B19CE8 800A2B48 870E0000 */  lh    $t6, ($t8)
/* B19CEC 800A2B4C 10000006 */  b     .L800A2B68
/* B19CF0 800A2B50 A4CE0000 */   sh    $t6, ($a2)
/* B19CF4 800A2B54 84F90002 */  lh    $t9, 2($a3)
.L800A2B58:
/* B19CF8 800A2B58 00197840 */  sll   $t7, $t9, 1
/* B19CFC 800A2B5C 012FC021 */  addu  $t8, $t1, $t7
/* B19D00 800A2B60 870E0000 */  lh    $t6, ($t8)
/* B19D04 800A2B64 A4CE0000 */  sh    $t6, ($a2)
.L800A2B68:
/* B19D08 800A2B68 84F90004 */  lh    $t9, 4($a3)
/* B19D0C 800A2B6C 00B9082A */  slt   $at, $a1, $t9
/* B19D10 800A2B70 5020000A */  beql  $at, $zero, .L800A2B9C
/* B19D14 800A2B74 84F80006 */   lh    $t8, 6($a3)
/* B19D18 800A2B78 84EE0006 */  lh    $t6, 6($a3)
/* B19D1C 800A2B7C 00057840 */  sll   $t7, $a1, 1
/* B19D20 800A2B80 01E9C021 */  addu  $t8, $t7, $t1
/* B19D24 800A2B84 000EC840 */  sll   $t9, $t6, 1
/* B19D28 800A2B88 03197821 */  addu  $t7, $t8, $t9
/* B19D2C 800A2B8C 85EE0000 */  lh    $t6, ($t7)
/* B19D30 800A2B90 10000006 */  b     .L800A2BAC
/* B19D34 800A2B94 A4CE0002 */   sh    $t6, 2($a2)
/* B19D38 800A2B98 84F80006 */  lh    $t8, 6($a3)
.L800A2B9C:
/* B19D3C 800A2B9C 0018C840 */  sll   $t9, $t8, 1
/* B19D40 800A2BA0 01397821 */  addu  $t7, $t1, $t9
/* B19D44 800A2BA4 85EE0000 */  lh    $t6, ($t7)
/* B19D48 800A2BA8 A4CE0002 */  sh    $t6, 2($a2)
.L800A2BAC:
/* B19D4C 800A2BAC 84F80008 */  lh    $t8, 8($a3)
/* B19D50 800A2BB0 00B8082A */  slt   $at, $a1, $t8
/* B19D54 800A2BB4 5020000A */  beql  $at, $zero, .L800A2BE0
/* B19D58 800A2BB8 84EF000A */   lh    $t7, 0xa($a3)
/* B19D5C 800A2BBC 84EE000A */  lh    $t6, 0xa($a3)
/* B19D60 800A2BC0 0005C840 */  sll   $t9, $a1, 1
/* B19D64 800A2BC4 03297821 */  addu  $t7, $t9, $t1
/* B19D68 800A2BC8 000EC040 */  sll   $t8, $t6, 1
/* B19D6C 800A2BCC 01F8C821 */  addu  $t9, $t7, $t8
/* B19D70 800A2BD0 872E0000 */  lh    $t6, ($t9)
/* B19D74 800A2BD4 10000006 */  b     .L800A2BF0
/* B19D78 800A2BD8 A4CE0004 */   sh    $t6, 4($a2)
/* B19D7C 800A2BDC 84EF000A */  lh    $t7, 0xa($a3)
.L800A2BE0:
/* B19D80 800A2BE0 000FC040 */  sll   $t8, $t7, 1
/* B19D84 800A2BE4 0138C821 */  addu  $t9, $t1, $t8
/* B19D88 800A2BE8 872E0000 */  lh    $t6, ($t9)
/* B19D8C 800A2BEC A4CE0004 */  sh    $t6, 4($a2)
.L800A2BF0:
/* B19D90 800A2BF0 246F0001 */  addiu $t7, $v1, 1
/* B19D94 800A2BF4 24E7000C */  addiu $a3, $a3, 0xc
/* B19D98 800A2BF8 11E2006E */  beq   $t7, $v0, .L800A2DB4
/* B19D9C 800A2BFC 24C60006 */   addiu $a2, $a2, 6
.L800A2C00:
/* B19DA0 800A2C00 84F80000 */  lh    $t8, ($a3)
.L800A2C04:
/* B19DA4 800A2C04 24420002 */  addiu $v0, $v0, 2
/* B19DA8 800A2C08 00B8082A */  slt   $at, $a1, $t8
/* B19DAC 800A2C0C 5020000A */  beql  $at, $zero, .L800A2C38
/* B19DB0 800A2C10 84EE0002 */   lh    $t6, 2($a3)
/* B19DB4 800A2C14 84EF0002 */  lh    $t7, 2($a3)
/* B19DB8 800A2C18 0005C840 */  sll   $t9, $a1, 1
/* B19DBC 800A2C1C 03297021 */  addu  $t6, $t9, $t1
/* B19DC0 800A2C20 000FC040 */  sll   $t8, $t7, 1
/* B19DC4 800A2C24 01D8C821 */  addu  $t9, $t6, $t8
/* B19DC8 800A2C28 872F0000 */  lh    $t7, ($t9)
/* B19DCC 800A2C2C 10000006 */  b     .L800A2C48
/* B19DD0 800A2C30 A4CF0000 */   sh    $t7, ($a2)
/* B19DD4 800A2C34 84EE0002 */  lh    $t6, 2($a3)
.L800A2C38:
/* B19DD8 800A2C38 000EC040 */  sll   $t8, $t6, 1
/* B19DDC 800A2C3C 0138C821 */  addu  $t9, $t1, $t8
/* B19DE0 800A2C40 872F0000 */  lh    $t7, ($t9)
/* B19DE4 800A2C44 A4CF0000 */  sh    $t7, ($a2)
.L800A2C48:
/* B19DE8 800A2C48 84EE0004 */  lh    $t6, 4($a3)
/* B19DEC 800A2C4C 00AE082A */  slt   $at, $a1, $t6
/* B19DF0 800A2C50 5020000A */  beql  $at, $zero, .L800A2C7C
/* B19DF4 800A2C54 84F90006 */   lh    $t9, 6($a3)
/* B19DF8 800A2C58 84EF0006 */  lh    $t7, 6($a3)
/* B19DFC 800A2C5C 0005C040 */  sll   $t8, $a1, 1
/* B19E00 800A2C60 0309C821 */  addu  $t9, $t8, $t1
/* B19E04 800A2C64 000F7040 */  sll   $t6, $t7, 1
/* B19E08 800A2C68 032EC021 */  addu  $t8, $t9, $t6
/* B19E0C 800A2C6C 870F0000 */  lh    $t7, ($t8)
/* B19E10 800A2C70 10000006 */  b     .L800A2C8C
/* B19E14 800A2C74 A4CF0002 */   sh    $t7, 2($a2)
/* B19E18 800A2C78 84F90006 */  lh    $t9, 6($a3)
.L800A2C7C:
/* B19E1C 800A2C7C 00197040 */  sll   $t6, $t9, 1
/* B19E20 800A2C80 012EC021 */  addu  $t8, $t1, $t6
/* B19E24 800A2C84 870F0000 */  lh    $t7, ($t8)
/* B19E28 800A2C88 A4CF0002 */  sh    $t7, 2($a2)
.L800A2C8C:
/* B19E2C 800A2C8C 84F90008 */  lh    $t9, 8($a3)
/* B19E30 800A2C90 00B9082A */  slt   $at, $a1, $t9
/* B19E34 800A2C94 5020000A */  beql  $at, $zero, .L800A2CC0
/* B19E38 800A2C98 84F8000A */   lh    $t8, 0xa($a3)
/* B19E3C 800A2C9C 84EF000A */  lh    $t7, 0xa($a3)
/* B19E40 800A2CA0 00057040 */  sll   $t6, $a1, 1
/* B19E44 800A2CA4 01C9C021 */  addu  $t8, $t6, $t1
/* B19E48 800A2CA8 000FC840 */  sll   $t9, $t7, 1
/* B19E4C 800A2CAC 03197021 */  addu  $t6, $t8, $t9
/* B19E50 800A2CB0 85CF0000 */  lh    $t7, ($t6)
/* B19E54 800A2CB4 10000006 */  b     .L800A2CD0
/* B19E58 800A2CB8 A4CF0004 */   sh    $t7, 4($a2)
/* B19E5C 800A2CBC 84F8000A */  lh    $t8, 0xa($a3)
.L800A2CC0:
/* B19E60 800A2CC0 0018C840 */  sll   $t9, $t8, 1
/* B19E64 800A2CC4 01397021 */  addu  $t6, $t1, $t9
/* B19E68 800A2CC8 85CF0000 */  lh    $t7, ($t6)
/* B19E6C 800A2CCC A4CF0004 */  sh    $t7, 4($a2)
.L800A2CD0:
/* B19E70 800A2CD0 84F8000C */  lh    $t8, 0xc($a3)
/* B19E74 800A2CD4 24E7000C */  addiu $a3, $a3, 0xc
/* B19E78 800A2CD8 24C60006 */  addiu $a2, $a2, 6
/* B19E7C 800A2CDC 00B8082A */  slt   $at, $a1, $t8
/* B19E80 800A2CE0 5020000A */  beql  $at, $zero, .L800A2D0C
/* B19E84 800A2CE4 84EE0002 */   lh    $t6, 2($a3)
/* B19E88 800A2CE8 84EF0002 */  lh    $t7, 2($a3)
/* B19E8C 800A2CEC 0005C840 */  sll   $t9, $a1, 1
/* B19E90 800A2CF0 03297021 */  addu  $t6, $t9, $t1
/* B19E94 800A2CF4 000FC040 */  sll   $t8, $t7, 1
/* B19E98 800A2CF8 01D8C821 */  addu  $t9, $t6, $t8
/* B19E9C 800A2CFC 872F0000 */  lh    $t7, ($t9)
/* B19EA0 800A2D00 10000006 */  b     .L800A2D1C
/* B19EA4 800A2D04 A4CF0000 */   sh    $t7, ($a2)
/* B19EA8 800A2D08 84EE0002 */  lh    $t6, 2($a3)
.L800A2D0C:
/* B19EAC 800A2D0C 000EC040 */  sll   $t8, $t6, 1
/* B19EB0 800A2D10 0138C821 */  addu  $t9, $t1, $t8
/* B19EB4 800A2D14 872F0000 */  lh    $t7, ($t9)
/* B19EB8 800A2D18 A4CF0000 */  sh    $t7, ($a2)
.L800A2D1C:
/* B19EBC 800A2D1C 84EE0004 */  lh    $t6, 4($a3)
/* B19EC0 800A2D20 00AE082A */  slt   $at, $a1, $t6
/* B19EC4 800A2D24 5020000A */  beql  $at, $zero, .L800A2D50
/* B19EC8 800A2D28 84F90006 */   lh    $t9, 6($a3)
/* B19ECC 800A2D2C 84EF0006 */  lh    $t7, 6($a3)
/* B19ED0 800A2D30 0005C040 */  sll   $t8, $a1, 1
/* B19ED4 800A2D34 0309C821 */  addu  $t9, $t8, $t1
/* B19ED8 800A2D38 000F7040 */  sll   $t6, $t7, 1
/* B19EDC 800A2D3C 032EC021 */  addu  $t8, $t9, $t6
/* B19EE0 800A2D40 870F0000 */  lh    $t7, ($t8)
/* B19EE4 800A2D44 10000006 */  b     .L800A2D60
/* B19EE8 800A2D48 A4CF0002 */   sh    $t7, 2($a2)
/* B19EEC 800A2D4C 84F90006 */  lh    $t9, 6($a3)
.L800A2D50:
/* B19EF0 800A2D50 00197040 */  sll   $t6, $t9, 1
/* B19EF4 800A2D54 012EC021 */  addu  $t8, $t1, $t6
/* B19EF8 800A2D58 870F0000 */  lh    $t7, ($t8)
/* B19EFC 800A2D5C A4CF0002 */  sh    $t7, 2($a2)
.L800A2D60:
/* B19F00 800A2D60 84F90008 */  lh    $t9, 8($a3)
/* B19F04 800A2D64 00B9082A */  slt   $at, $a1, $t9
/* B19F08 800A2D68 5020000A */  beql  $at, $zero, .L800A2D94
/* B19F0C 800A2D6C 84F8000A */   lh    $t8, 0xa($a3)
/* B19F10 800A2D70 84EF000A */  lh    $t7, 0xa($a3)
/* B19F14 800A2D74 00057040 */  sll   $t6, $a1, 1
/* B19F18 800A2D78 01C9C021 */  addu  $t8, $t6, $t1
/* B19F1C 800A2D7C 000FC840 */  sll   $t9, $t7, 1
/* B19F20 800A2D80 03197021 */  addu  $t6, $t8, $t9
/* B19F24 800A2D84 85CF0000 */  lh    $t7, ($t6)
/* B19F28 800A2D88 10000006 */  b     .L800A2DA4
/* B19F2C 800A2D8C A4CF0004 */   sh    $t7, 4($a2)
/* B19F30 800A2D90 84F8000A */  lh    $t8, 0xa($a3)
.L800A2D94:
/* B19F34 800A2D94 0018C840 */  sll   $t9, $t8, 1
/* B19F38 800A2D98 01397021 */  addu  $t6, $t1, $t9
/* B19F3C 800A2D9C 85CF0000 */  lh    $t7, ($t6)
/* B19F40 800A2DA0 A4CF0004 */  sh    $t7, 4($a2)
.L800A2DA4:
/* B19F44 800A2DA4 24780001 */  addiu $t8, $v1, 1
/* B19F48 800A2DA8 24E7000C */  addiu $a3, $a3, 0xc
/* B19F4C 800A2DAC 1702FF94 */  bne   $t8, $v0, .L800A2C00
/* B19F50 800A2DB0 24C60006 */   addiu $a2, $a2, 6
.L800A2DB4:
/* B19F54 800A2DB4 03E00008 */  jr    $ra
/* B19F58 800A2DB8 00601025 */   move  $v0, $v1

glabel func_800A2DBC
/* B19F5C 800A2DBC 00047100 */  sll   $t6, $a0, 4
/* B19F60 800A2DC0 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19F64 800A2DC4 000FC080 */  sll   $t8, $t7, 2
/* B19F68 800A2DC8 3C198016 */  lui   $t9, %hi(D_80166FA8)
/* B19F6C 800A2DCC 0338C821 */  addu  $t9, $t9, $t8
/* B19F70 800A2DD0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19F74 800A2DD4 8F396FA8 */  lw    $t9, %lo(D_80166FA8)($t9)
/* B19F78 800A2DD8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19F7C 800A2DDC 00814024 */  and   $t0, $a0, $at
/* B19F80 800A2DE0 3C018000 */  lui   $at, 0x8000
/* B19F84 800A2DE4 03281821 */  addu  $v1, $t9, $t0
/* B19F88 800A2DE8 00611821 */  addu  $v1, $v1, $at
/* B19F8C 800A2DEC 03E00008 */  jr    $ra
/* B19F90 800A2DF0 84620002 */   lh    $v0, 2($v1)

glabel func_800A2DF4
/* B19F94 800A2DF4 00047100 */  sll   $t6, $a0, 4
/* B19F98 800A2DF8 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19F9C 800A2DFC 000FC080 */  sll   $t8, $t7, 2
/* B19FA0 800A2E00 3C198016 */  lui   $t9, %hi(D_80166FA8)
/* B19FA4 800A2E04 0338C821 */  addu  $t9, $t9, $t8
/* B19FA8 800A2E08 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19FAC 800A2E0C 8F396FA8 */  lw    $t9, %lo(D_80166FA8)($t9)
/* B19FB0 800A2E10 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19FB4 800A2E14 00814024 */  and   $t0, $a0, $at
/* B19FB8 800A2E18 3C018000 */  lui   $at, 0x8000
/* B19FBC 800A2E1C 03281821 */  addu  $v1, $t9, $t0
/* B19FC0 800A2E20 00611821 */  addu  $v1, $v1, $at
/* B19FC4 800A2E24 03E00008 */  jr    $ra
/* B19FC8 800A2E28 84620000 */   lh    $v0, ($v1)

glabel func_800A2E2C
/* B19FCC 800A2E2C 00047100 */  sll   $t6, $a0, 4
/* B19FD0 800A2E30 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19FD4 800A2E34 000FC080 */  sll   $t8, $t7, 2
/* B19FD8 800A2E38 3C198016 */  lui   $t9, %hi(D_80166FA8)
/* B19FDC 800A2E3C 0338C821 */  addu  $t9, $t9, $t8
/* B19FE0 800A2E40 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19FE4 800A2E44 8F396FA8 */  lw    $t9, %lo(D_80166FA8)($t9)
/* B19FE8 800A2E48 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19FEC 800A2E4C 00814024 */  and   $t0, $a0, $at
/* B19FF0 800A2E50 3C018000 */  lui   $at, 0x8000
/* B19FF4 800A2E54 03281821 */  addu  $v1, $t9, $t0
/* B19FF8 800A2E58 00611821 */  addu  $v1, $v1, $at
/* B19FFC 800A2E5C 84620000 */  lh    $v0, ($v1)
/* B1A000 800A2E60 2442FFFF */  addiu $v0, $v0, -1
/* B1A004 800A2E64 00021400 */  sll   $v0, $v0, 0x10
/* B1A008 800A2E68 03E00008 */  jr    $ra
/* B1A00C 800A2E6C 00021403 */   sra   $v0, $v0, 0x10

glabel func_800A2E70
/* B1A010 800A2E70 27BDFFF8 */  addiu $sp, $sp, -8
/* B1A014 800A2E74 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1A018 800A2E78 C7AC0018 */  lwc1  $f12, 0x18($sp)
/* B1A01C 800A2E7C 44812000 */  mtc1  $at, $f4
/* B1A020 800A2E80 AFB00004 */  sw    $s0, 4($sp)
/* B1A024 800A2E84 00A08025 */  move  $s0, $a1
/* B1A028 800A2E88 4604603C */  c.lt.s $f12, $f4
/* B1A02C 800A2E8C 00000000 */  nop   
/* B1A030 800A2E90 450000E6 */  bc1f  .L800A322C
/* B1A034 800A2E94 00000000 */   nop   
/* B1A038 800A2E98 18800111 */  blez  $a0, .L800A32E0
/* B1A03C 800A2E9C 00001025 */   move  $v0, $zero
/* B1A040 800A2EA0 30830001 */  andi  $v1, $a0, 1
/* B1A044 800A2EA4 50600030 */  beql  $v1, $zero, .L800A2F68
/* B1A048 800A2EA8 24420002 */   addiu $v0, $v0, 2
/* B1A04C 800A2EAC 84C30000 */  lh    $v1, ($a2)
/* B1A050 800A2EB0 84EE0000 */  lh    $t6, ($a3)
/* B1A054 800A2EB4 24020001 */  li    $v0, 1
/* B1A058 800A2EB8 26100006 */  addiu $s0, $s0, 6
/* B1A05C 800A2EBC 01C32823 */  subu  $a1, $t6, $v1
/* B1A060 800A2EC0 00052C00 */  sll   $a1, $a1, 0x10
/* B1A064 800A2EC4 00052C03 */  sra   $a1, $a1, 0x10
/* B1A068 800A2EC8 44853000 */  mtc1  $a1, $f6
/* B1A06C 800A2ECC 24C60006 */  addiu $a2, $a2, 6
/* B1A070 800A2ED0 24E70006 */  addiu $a3, $a3, 6
/* B1A074 800A2ED4 46803220 */  cvt.s.w $f8, $f6
/* B1A078 800A2ED8 460C4282 */  mul.s $f10, $f8, $f12
/* B1A07C 800A2EDC 4600540D */  trunc.w.s $f16, $f10
/* B1A080 800A2EE0 44088000 */  mfc1  $t0, $f16
/* B1A084 800A2EE4 00000000 */  nop   
/* B1A088 800A2EE8 01034821 */  addu  $t1, $t0, $v1
/* B1A08C 800A2EEC A609FFFA */  sh    $t1, -6($s0)
/* B1A090 800A2EF0 84EAFFFC */  lh    $t2, -4($a3)
/* B1A094 800A2EF4 84C3FFFC */  lh    $v1, -4($a2)
/* B1A098 800A2EF8 01432823 */  subu  $a1, $t2, $v1
/* B1A09C 800A2EFC 00052C00 */  sll   $a1, $a1, 0x10
/* B1A0A0 800A2F00 00052C03 */  sra   $a1, $a1, 0x10
/* B1A0A4 800A2F04 44859000 */  mtc1  $a1, $f18
/* B1A0A8 800A2F08 00000000 */  nop   
/* B1A0AC 800A2F0C 46809120 */  cvt.s.w $f4, $f18
/* B1A0B0 800A2F10 460C2182 */  mul.s $f6, $f4, $f12
/* B1A0B4 800A2F14 4600320D */  trunc.w.s $f8, $f6
/* B1A0B8 800A2F18 440E4000 */  mfc1  $t6, $f8
/* B1A0BC 800A2F1C 00000000 */  nop   
/* B1A0C0 800A2F20 01C37821 */  addu  $t7, $t6, $v1
/* B1A0C4 800A2F24 A60FFFFC */  sh    $t7, -4($s0)
/* B1A0C8 800A2F28 84F8FFFE */  lh    $t8, -2($a3)
/* B1A0CC 800A2F2C 84C3FFFE */  lh    $v1, -2($a2)
/* B1A0D0 800A2F30 03032823 */  subu  $a1, $t8, $v1
/* B1A0D4 800A2F34 00052C00 */  sll   $a1, $a1, 0x10
/* B1A0D8 800A2F38 00052C03 */  sra   $a1, $a1, 0x10
/* B1A0DC 800A2F3C 44855000 */  mtc1  $a1, $f10
/* B1A0E0 800A2F40 00000000 */  nop   
/* B1A0E4 800A2F44 46805420 */  cvt.s.w $f16, $f10
/* B1A0E8 800A2F48 460C8482 */  mul.s $f18, $f16, $f12
/* B1A0EC 800A2F4C 4600910D */  trunc.w.s $f4, $f18
/* B1A0F0 800A2F50 440A2000 */  mfc1  $t2, $f4
/* B1A0F4 800A2F54 00000000 */  nop   
/* B1A0F8 800A2F58 01435821 */  addu  $t3, $t2, $v1
/* B1A0FC 800A2F5C 104400E0 */  beq   $v0, $a0, .L800A32E0
/* B1A100 800A2F60 A60BFFFE */   sh    $t3, -2($s0)
/* B1A104 800A2F64 24420002 */  addiu $v0, $v0, 2
.L800A2F68:
/* B1A108 800A2F68 84C30000 */  lh    $v1, ($a2)
/* B1A10C 800A2F6C 10440059 */  beq   $v0, $a0, .L800A30D4
/* B1A110 800A2F70 84EC0000 */   lh    $t4, ($a3)
.L800A2F74:
/* B1A114 800A2F74 01832823 */  subu  $a1, $t4, $v1
/* B1A118 800A2F78 00052C00 */  sll   $a1, $a1, 0x10
/* B1A11C 800A2F7C 00052C03 */  sra   $a1, $a1, 0x10
/* B1A120 800A2F80 44859000 */  mtc1  $a1, $f18
/* B1A124 800A2F84 24420002 */  addiu $v0, $v0, 2
/* B1A128 800A2F88 2610000C */  addiu $s0, $s0, 0xc
/* B1A12C 800A2F8C 468094A0 */  cvt.s.w $f18, $f18
/* B1A130 800A2F90 24C6000C */  addiu $a2, $a2, 0xc
/* B1A134 800A2F94 24E7000C */  addiu $a3, $a3, 0xc
/* B1A138 800A2F98 460C9482 */  mul.s $f18, $f18, $f12
/* B1A13C 800A2F9C 4600948D */  trunc.w.s $f18, $f18
/* B1A140 800A2FA0 44189000 */  mfc1  $t8, $f18
/* B1A144 800A2FA4 00000000 */  nop   
/* B1A148 800A2FA8 0303C821 */  addu  $t9, $t8, $v1
/* B1A14C 800A2FAC A619FFF4 */  sh    $t9, -0xc($s0)
/* B1A150 800A2FB0 84C3FFF6 */  lh    $v1, -0xa($a2)
/* B1A154 800A2FB4 84E8FFF6 */  lh    $t0, -0xa($a3)
/* B1A158 800A2FB8 01032823 */  subu  $a1, $t0, $v1
/* B1A15C 800A2FBC 00052C00 */  sll   $a1, $a1, 0x10
/* B1A160 800A2FC0 00052C03 */  sra   $a1, $a1, 0x10
/* B1A164 800A2FC4 44859000 */  mtc1  $a1, $f18
/* B1A168 800A2FC8 00000000 */  nop   
/* B1A16C 800A2FCC 468094A0 */  cvt.s.w $f18, $f18
/* B1A170 800A2FD0 460C9482 */  mul.s $f18, $f18, $f12
/* B1A174 800A2FD4 4600948D */  trunc.w.s $f18, $f18
/* B1A178 800A2FD8 440C9000 */  mfc1  $t4, $f18
/* B1A17C 800A2FDC 00000000 */  nop   
/* B1A180 800A2FE0 01836821 */  addu  $t5, $t4, $v1
/* B1A184 800A2FE4 A60DFFF6 */  sh    $t5, -0xa($s0)
/* B1A188 800A2FE8 84C3FFF8 */  lh    $v1, -8($a2)
/* B1A18C 800A2FEC 84EEFFF8 */  lh    $t6, -8($a3)
/* B1A190 800A2FF0 01C32823 */  subu  $a1, $t6, $v1
/* B1A194 800A2FF4 00052C00 */  sll   $a1, $a1, 0x10
/* B1A198 800A2FF8 00052C03 */  sra   $a1, $a1, 0x10
/* B1A19C 800A2FFC 44859000 */  mtc1  $a1, $f18
/* B1A1A0 800A3000 00000000 */  nop   
/* B1A1A4 800A3004 468094A0 */  cvt.s.w $f18, $f18
/* B1A1A8 800A3008 460C9482 */  mul.s $f18, $f18, $f12
/* B1A1AC 800A300C 4600948D */  trunc.w.s $f18, $f18
/* B1A1B0 800A3010 44089000 */  mfc1  $t0, $f18
/* B1A1B4 800A3014 00000000 */  nop   
/* B1A1B8 800A3018 01034821 */  addu  $t1, $t0, $v1
/* B1A1BC 800A301C A609FFF8 */  sh    $t1, -8($s0)
/* B1A1C0 800A3020 84C3FFFA */  lh    $v1, -6($a2)
/* B1A1C4 800A3024 84EAFFFA */  lh    $t2, -6($a3)
/* B1A1C8 800A3028 01432823 */  subu  $a1, $t2, $v1
/* B1A1CC 800A302C 00052C00 */  sll   $a1, $a1, 0x10
/* B1A1D0 800A3030 00052C03 */  sra   $a1, $a1, 0x10
/* B1A1D4 800A3034 44859000 */  mtc1  $a1, $f18
/* B1A1D8 800A3038 00000000 */  nop   
/* B1A1DC 800A303C 468094A0 */  cvt.s.w $f18, $f18
/* B1A1E0 800A3040 460C9482 */  mul.s $f18, $f18, $f12
/* B1A1E4 800A3044 4600948D */  trunc.w.s $f18, $f18
/* B1A1E8 800A3048 440E9000 */  mfc1  $t6, $f18
/* B1A1EC 800A304C 00000000 */  nop   
/* B1A1F0 800A3050 01C37821 */  addu  $t7, $t6, $v1
/* B1A1F4 800A3054 A60FFFFA */  sh    $t7, -6($s0)
/* B1A1F8 800A3058 84C3FFFC */  lh    $v1, -4($a2)
/* B1A1FC 800A305C 84F8FFFC */  lh    $t8, -4($a3)
/* B1A200 800A3060 03032823 */  subu  $a1, $t8, $v1
/* B1A204 800A3064 00052C00 */  sll   $a1, $a1, 0x10
/* B1A208 800A3068 00052C03 */  sra   $a1, $a1, 0x10
/* B1A20C 800A306C 44859000 */  mtc1  $a1, $f18
/* B1A210 800A3070 00000000 */  nop   
/* B1A214 800A3074 468094A0 */  cvt.s.w $f18, $f18
/* B1A218 800A3078 460C9482 */  mul.s $f18, $f18, $f12
/* B1A21C 800A307C 4600948D */  trunc.w.s $f18, $f18
/* B1A220 800A3080 440A9000 */  mfc1  $t2, $f18
/* B1A224 800A3084 00000000 */  nop   
/* B1A228 800A3088 01435821 */  addu  $t3, $t2, $v1
/* B1A22C 800A308C A60BFFFC */  sh    $t3, -4($s0)
/* B1A230 800A3090 84C3FFFE */  lh    $v1, -2($a2)
/* B1A234 800A3094 84ECFFFE */  lh    $t4, -2($a3)
/* B1A238 800A3098 01832823 */  subu  $a1, $t4, $v1
/* B1A23C 800A309C 00052C00 */  sll   $a1, $a1, 0x10
/* B1A240 800A30A0 00052C03 */  sra   $a1, $a1, 0x10
/* B1A244 800A30A4 44859000 */  mtc1  $a1, $f18
/* B1A248 800A30A8 00000000 */  nop   
/* B1A24C 800A30AC 468094A0 */  cvt.s.w $f18, $f18
/* B1A250 800A30B0 460C9482 */  mul.s $f18, $f18, $f12
/* B1A254 800A30B4 4600948D */  trunc.w.s $f18, $f18
/* B1A258 800A30B8 44189000 */  mfc1  $t8, $f18
/* B1A25C 800A30BC 00000000 */  nop   
/* B1A260 800A30C0 0303C821 */  addu  $t9, $t8, $v1
/* B1A264 800A30C4 A619FFFE */  sh    $t9, -2($s0)
/* B1A268 800A30C8 84C30000 */  lh    $v1, ($a2)
/* B1A26C 800A30CC 1444FFA9 */  bne   $v0, $a0, .L800A2F74
/* B1A270 800A30D0 84EC0000 */   lh    $t4, ($a3)
.L800A30D4:
/* B1A274 800A30D4 01832823 */  subu  $a1, $t4, $v1
/* B1A278 800A30D8 00052C00 */  sll   $a1, $a1, 0x10
/* B1A27C 800A30DC 00052C03 */  sra   $a1, $a1, 0x10
/* B1A280 800A30E0 44859000 */  mtc1  $a1, $f18
/* B1A284 800A30E4 2610000C */  addiu $s0, $s0, 0xc
/* B1A288 800A30E8 24C6000C */  addiu $a2, $a2, 0xc
/* B1A28C 800A30EC 468094A0 */  cvt.s.w $f18, $f18
/* B1A290 800A30F0 24E7000C */  addiu $a3, $a3, 0xc
/* B1A294 800A30F4 460C9482 */  mul.s $f18, $f18, $f12
/* B1A298 800A30F8 4600948D */  trunc.w.s $f18, $f18
/* B1A29C 800A30FC 44189000 */  mfc1  $t8, $f18
/* B1A2A0 800A3100 00000000 */  nop   
/* B1A2A4 800A3104 0303C821 */  addu  $t9, $t8, $v1
/* B1A2A8 800A3108 A619FFF4 */  sh    $t9, -0xc($s0)
/* B1A2AC 800A310C 84C3FFF6 */  lh    $v1, -0xa($a2)
/* B1A2B0 800A3110 84E8FFF6 */  lh    $t0, -0xa($a3)
/* B1A2B4 800A3114 01032823 */  subu  $a1, $t0, $v1
/* B1A2B8 800A3118 00052C00 */  sll   $a1, $a1, 0x10
/* B1A2BC 800A311C 00052C03 */  sra   $a1, $a1, 0x10
/* B1A2C0 800A3120 44859000 */  mtc1  $a1, $f18
/* B1A2C4 800A3124 00000000 */  nop   
/* B1A2C8 800A3128 468094A0 */  cvt.s.w $f18, $f18
/* B1A2CC 800A312C 460C9482 */  mul.s $f18, $f18, $f12
/* B1A2D0 800A3130 4600948D */  trunc.w.s $f18, $f18
/* B1A2D4 800A3134 440C9000 */  mfc1  $t4, $f18
/* B1A2D8 800A3138 00000000 */  nop   
/* B1A2DC 800A313C 01836821 */  addu  $t5, $t4, $v1
/* B1A2E0 800A3140 A60DFFF6 */  sh    $t5, -0xa($s0)
/* B1A2E4 800A3144 84C3FFF8 */  lh    $v1, -8($a2)
/* B1A2E8 800A3148 84EEFFF8 */  lh    $t6, -8($a3)
/* B1A2EC 800A314C 01C32823 */  subu  $a1, $t6, $v1
/* B1A2F0 800A3150 00052C00 */  sll   $a1, $a1, 0x10
/* B1A2F4 800A3154 00052C03 */  sra   $a1, $a1, 0x10
/* B1A2F8 800A3158 44859000 */  mtc1  $a1, $f18
/* B1A2FC 800A315C 00000000 */  nop   
/* B1A300 800A3160 468094A0 */  cvt.s.w $f18, $f18
/* B1A304 800A3164 460C9482 */  mul.s $f18, $f18, $f12
/* B1A308 800A3168 4600948D */  trunc.w.s $f18, $f18
/* B1A30C 800A316C 44089000 */  mfc1  $t0, $f18
/* B1A310 800A3170 00000000 */  nop   
/* B1A314 800A3174 01034821 */  addu  $t1, $t0, $v1
/* B1A318 800A3178 A609FFF8 */  sh    $t1, -8($s0)
/* B1A31C 800A317C 84EAFFFA */  lh    $t2, -6($a3)
/* B1A320 800A3180 84C3FFFA */  lh    $v1, -6($a2)
/* B1A324 800A3184 01432823 */  subu  $a1, $t2, $v1
/* B1A328 800A3188 00052C00 */  sll   $a1, $a1, 0x10
/* B1A32C 800A318C 00052C03 */  sra   $a1, $a1, 0x10
/* B1A330 800A3190 44859000 */  mtc1  $a1, $f18
/* B1A334 800A3194 00000000 */  nop   
/* B1A338 800A3198 468094A0 */  cvt.s.w $f18, $f18
/* B1A33C 800A319C 460C9482 */  mul.s $f18, $f18, $f12
/* B1A340 800A31A0 4600948D */  trunc.w.s $f18, $f18
/* B1A344 800A31A4 440E9000 */  mfc1  $t6, $f18
/* B1A348 800A31A8 00000000 */  nop   
/* B1A34C 800A31AC 01C37821 */  addu  $t7, $t6, $v1
/* B1A350 800A31B0 A60FFFFA */  sh    $t7, -6($s0)
/* B1A354 800A31B4 84F8FFFC */  lh    $t8, -4($a3)
/* B1A358 800A31B8 84C3FFFC */  lh    $v1, -4($a2)
/* B1A35C 800A31BC 03032823 */  subu  $a1, $t8, $v1
/* B1A360 800A31C0 00052C00 */  sll   $a1, $a1, 0x10
/* B1A364 800A31C4 00052C03 */  sra   $a1, $a1, 0x10
/* B1A368 800A31C8 44859000 */  mtc1  $a1, $f18
/* B1A36C 800A31CC 00000000 */  nop   
/* B1A370 800A31D0 468094A0 */  cvt.s.w $f18, $f18
/* B1A374 800A31D4 460C9482 */  mul.s $f18, $f18, $f12
/* B1A378 800A31D8 4600948D */  trunc.w.s $f18, $f18
/* B1A37C 800A31DC 440A9000 */  mfc1  $t2, $f18
/* B1A380 800A31E0 00000000 */  nop   
/* B1A384 800A31E4 01435821 */  addu  $t3, $t2, $v1
/* B1A388 800A31E8 A60BFFFC */  sh    $t3, -4($s0)
/* B1A38C 800A31EC 84ECFFFE */  lh    $t4, -2($a3)
/* B1A390 800A31F0 84C3FFFE */  lh    $v1, -2($a2)
/* B1A394 800A31F4 01832823 */  subu  $a1, $t4, $v1
/* B1A398 800A31F8 00052C00 */  sll   $a1, $a1, 0x10
/* B1A39C 800A31FC 00052C03 */  sra   $a1, $a1, 0x10
/* B1A3A0 800A3200 44859000 */  mtc1  $a1, $f18
/* B1A3A4 800A3204 00000000 */  nop   
/* B1A3A8 800A3208 468094A0 */  cvt.s.w $f18, $f18
/* B1A3AC 800A320C 460C9482 */  mul.s $f18, $f18, $f12
/* B1A3B0 800A3210 4600948D */  trunc.w.s $f18, $f18
/* B1A3B4 800A3214 44189000 */  mfc1  $t8, $f18
/* B1A3B8 800A3218 00000000 */  nop   
/* B1A3BC 800A321C 0303C821 */  addu  $t9, $t8, $v1
/* B1A3C0 800A3220 A619FFFE */  sh    $t9, -2($s0)
/* B1A3C4 800A3224 1000002F */  b     .L800A32E4
/* B1A3C8 800A3228 8FB00004 */   lw    $s0, 4($sp)
.L800A322C:
/* B1A3CC 800A322C 1880002C */  blez  $a0, .L800A32E0
/* B1A3D0 800A3230 00001025 */   move  $v0, $zero
/* B1A3D4 800A3234 30850003 */  andi  $a1, $a0, 3
/* B1A3D8 800A3238 10A0000D */  beqz  $a1, .L800A3270
/* B1A3DC 800A323C 00A01825 */   move  $v1, $a1
.L800A3240:
/* B1A3E0 800A3240 84E80000 */  lh    $t0, ($a3)
/* B1A3E4 800A3244 24420001 */  addiu $v0, $v0, 1
/* B1A3E8 800A3248 26100006 */  addiu $s0, $s0, 6
/* B1A3EC 800A324C A608FFFA */  sh    $t0, -6($s0)
/* B1A3F0 800A3250 84E90002 */  lh    $t1, 2($a3)
/* B1A3F4 800A3254 24E70006 */  addiu $a3, $a3, 6
/* B1A3F8 800A3258 A609FFFC */  sh    $t1, -4($s0)
/* B1A3FC 800A325C 84EAFFFE */  lh    $t2, -2($a3)
/* B1A400 800A3260 1462FFF7 */  bne   $v1, $v0, .L800A3240
/* B1A404 800A3264 A60AFFFE */   sh    $t2, -2($s0)
/* B1A408 800A3268 5044001E */  beql  $v0, $a0, .L800A32E4
/* B1A40C 800A326C 8FB00004 */   lw    $s0, 4($sp)
.L800A3270:
/* B1A410 800A3270 84EB0000 */  lh    $t3, ($a3)
/* B1A414 800A3274 24420004 */  addiu $v0, $v0, 4
/* B1A418 800A3278 26100018 */  addiu $s0, $s0, 0x18
/* B1A41C 800A327C A60BFFE8 */  sh    $t3, -0x18($s0)
/* B1A420 800A3280 84EC0002 */  lh    $t4, 2($a3)
/* B1A424 800A3284 24E70018 */  addiu $a3, $a3, 0x18
/* B1A428 800A3288 A60CFFEA */  sh    $t4, -0x16($s0)
/* B1A42C 800A328C 84EDFFEC */  lh    $t5, -0x14($a3)
/* B1A430 800A3290 A60DFFEC */  sh    $t5, -0x14($s0)
/* B1A434 800A3294 84EEFFEE */  lh    $t6, -0x12($a3)
/* B1A438 800A3298 A60EFFEE */  sh    $t6, -0x12($s0)
/* B1A43C 800A329C 84EFFFF0 */  lh    $t7, -0x10($a3)
/* B1A440 800A32A0 A60FFFF0 */  sh    $t7, -0x10($s0)
/* B1A444 800A32A4 84F8FFF2 */  lh    $t8, -0xe($a3)
/* B1A448 800A32A8 A618FFF2 */  sh    $t8, -0xe($s0)
/* B1A44C 800A32AC 84F9FFF4 */  lh    $t9, -0xc($a3)
/* B1A450 800A32B0 A619FFF4 */  sh    $t9, -0xc($s0)
/* B1A454 800A32B4 84E8FFF6 */  lh    $t0, -0xa($a3)
/* B1A458 800A32B8 A608FFF6 */  sh    $t0, -0xa($s0)
/* B1A45C 800A32BC 84E9FFF8 */  lh    $t1, -8($a3)
/* B1A460 800A32C0 A609FFF8 */  sh    $t1, -8($s0)
/* B1A464 800A32C4 84EAFFFA */  lh    $t2, -6($a3)
/* B1A468 800A32C8 A60AFFFA */  sh    $t2, -6($s0)
/* B1A46C 800A32CC 84EBFFFC */  lh    $t3, -4($a3)
/* B1A470 800A32D0 A60BFFFC */  sh    $t3, -4($s0)
/* B1A474 800A32D4 84ECFFFE */  lh    $t4, -2($a3)
/* B1A478 800A32D8 1444FFE5 */  bne   $v0, $a0, .L800A3270
/* B1A47C 800A32DC A60CFFFE */   sh    $t4, -2($s0)
.L800A32E0:
/* B1A480 800A32E0 8FB00004 */  lw    $s0, 4($sp)
.L800A32E4:
/* B1A484 800A32E4 03E00008 */  jr    $ra
/* B1A488 800A32E8 27BD0008 */   addiu $sp, $sp, 8

glabel func_800A32EC
/* B1A48C 800A32EC 03E00008 */  jr    $ra
/* B1A490 800A32F0 A4800000 */   sh    $zero, ($a0)

glabel func_800A32F4
/* B1A494 800A32F4 3C028016 */  lui   $v0, %hi(D_801600B0) # $v0, 0x8016
/* B1A498 800A32F8 244200B0 */  addiu $v0, %lo(D_801600B0) # addiu $v0, $v0, 0xb0
/* B1A49C 800A32FC 8C4E0000 */  lw    $t6, ($v0)
/* B1A4A0 800A3300 AFA40000 */  sw    $a0, ($sp)
/* B1A4A4 800A3304 000E7840 */  sll   $t7, $t6, 1
/* B1A4A8 800A3308 03E00008 */  jr    $ra
/* B1A4AC 800A330C AC4F0000 */   sw    $t7, ($v0)

glabel func_800A3310
/* B1A4B0 800A3310 3C028013 */  lui   $v0, %hi(D_8012A480) # $v0, 0x8013
/* B1A4B4 800A3314 2442A480 */  addiu $v0, %lo(D_8012A480) # addiu $v0, $v0, -0x5b80
/* B1A4B8 800A3318 3C0F8016 */  lui   $t7, %hi(D_801600B0) # $t7, 0x8016
/* B1A4BC 800A331C 8DEF00B0 */  lw    $t7, %lo(D_801600B0)($t7)
/* B1A4C0 800A3320 8C4E0000 */  lw    $t6, ($v0)
/* B1A4C4 800A3324 AFA40000 */  sw    $a0, ($sp)
/* B1A4C8 800A3328 01CFC025 */  or    $t8, $t6, $t7
/* B1A4CC 800A332C 03E00008 */  jr    $ra
/* B1A4D0 800A3330 AC580000 */   sw    $t8, ($v0)

glabel func_800A3334
/* B1A4D4 800A3334 84830000 */  lh    $v1, ($a0)
/* B1A4D8 800A3338 00A03025 */  move  $a2, $a1
/* B1A4DC 800A333C 28610032 */  slti  $at, $v1, 0x32
/* B1A4E0 800A3340 14200003 */  bnez  $at, .L800A3350
/* B1A4E4 800A3344 246E0001 */   addiu $t6, $v1, 1
/* B1A4E8 800A3348 03E00008 */  jr    $ra
/* B1A4EC 800A334C 00001025 */   move  $v0, $zero

.L800A3350:
/* B1A4F0 800A3350 00037980 */  sll   $t7, $v1, 6
/* B1A4F4 800A3354 008F2821 */  addu  $a1, $a0, $t7
/* B1A4F8 800A3358 A48E0000 */  sh    $t6, ($a0)
/* B1A4FC 800A335C A0A60004 */  sb    $a2, 4($a1)
/* B1A500 800A3360 24A20004 */  addiu $v0, $a1, 4
/* B1A504 800A3364 03E00008 */  jr    $ra
/* B1A508 800A3368 00000000 */   nop   

glabel func_800A336C
/* B1A50C 800A336C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B1A510 800A3370 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A514 800A3374 AFBF002C */  sw    $ra, 0x2c($sp)
/* B1A518 800A3378 AFA40040 */  sw    $a0, 0x40($sp)
/* B1A51C 800A337C AFA50044 */  sw    $a1, 0x44($sp)
/* B1A520 800A3380 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A524 800A3384 AFA60048 */  sw    $a2, 0x48($sp)
/* B1A528 800A3388 AFA7004C */  sw    $a3, 0x4c($sp)
/* B1A52C 800A338C 00812021 */  addu  $a0, $a0, $at
/* B1A530 800A3390 0C028CCD */  jal   func_800A3334
/* B1A534 800A3394 00002825 */   move  $a1, $zero
/* B1A538 800A3398 10400033 */  beqz  $v0, .L800A3468
/* B1A53C 800A339C 8FA70044 */   lw    $a3, 0x44($sp)
/* B1A540 800A33A0 00077100 */  sll   $t6, $a3, 4
/* B1A544 800A33A4 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1A548 800A33A8 000FC080 */  sll   $t8, $t7, 2
/* B1A54C 800A33AC 3C198016 */  lui   $t9, %hi(D_80166FA8)
/* B1A550 800A33B0 0338C821 */  addu  $t9, $t9, $t8
/* B1A554 800A33B4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1A558 800A33B8 8F396FA8 */  lw    $t9, %lo(D_80166FA8)($t9)
/* B1A55C 800A33BC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1A560 800A33C0 00E14024 */  and   $t0, $a3, $at
/* B1A564 800A33C4 3C018000 */  lui   $at, 0x8000
/* B1A568 800A33C8 03284821 */  addu  $t1, $t9, $t0
/* B1A56C 800A33CC 01215021 */  addu  $t2, $t1, $at
/* B1A570 800A33D0 24440024 */  addiu $a0, $v0, 0x24
/* B1A574 800A33D4 AFAA0038 */  sw    $t2, 0x38($sp)
/* B1A578 800A33D8 AFA40030 */  sw    $a0, 0x30($sp)
/* B1A57C 800A33DC 2445003C */  addiu $a1, $v0, 0x3c
/* B1A580 800A33E0 24060001 */  li    $a2, 1
/* B1A584 800A33E4 0C001874 */  jal   osCreateMesgQueue
/* B1A588 800A33E8 AFA2003C */   sw    $v0, 0x3c($sp)
/* B1A58C 800A33EC 8FA7004C */  lw    $a3, 0x4c($sp)
/* B1A590 800A33F0 8FB90048 */  lw    $t9, 0x48($sp)
/* B1A594 800A33F4 8FAB0038 */  lw    $t3, 0x38($sp)
/* B1A598 800A33F8 00E00821 */  addu  $at, $a3, $zero
/* B1A59C 800A33FC 00073880 */  sll   $a3, $a3, 2
/* B1A5A0 800A3400 00E13823 */  subu  $a3, $a3, $at
/* B1A5A4 800A3404 00073840 */  sll   $a3, $a3, 1
/* B1A5A8 800A3408 24E70002 */  addiu $a3, $a3, 2
/* B1A5AC 800A340C 00F90019 */  multu $a3, $t9
/* B1A5B0 800A3410 8D6C0004 */  lw    $t4, 4($t3)
/* B1A5B4 800A3414 3C0D004E */  lui   $t5, %hi(_link_animetionSegmentRomStart) # $t5, 0x4e
/* B1A5B8 800A3418 25AD5C00 */  addiu $t5, %lo(_link_animetionSegmentRomStart) # addiu $t5, $t5, 0x5c00
/* B1A5BC 800A341C 3C0F0700 */  lui   $t7, 0x700
/* B1A5C0 800A3420 8FA3003C */  lw    $v1, 0x3c($sp)
/* B1A5C4 800A3424 8FA90030 */  lw    $t1, 0x30($sp)
/* B1A5C8 800A3428 25EF0000 */  addiu $t7, $t7, 0
/* B1A5CC 800A342C 3C0A8014 */  lui   $t2, %hi(D_801403B8) # $t2, 0x8014
/* B1A5D0 800A3430 018D7021 */  addu  $t6, $t4, $t5
/* B1A5D4 800A3434 01CFC023 */  subu  $t8, $t6, $t7
/* B1A5D8 800A3438 254A03B8 */  addiu $t2, %lo(D_801403B8) # addiu $t2, $t2, 0x3b8
/* B1A5DC 800A343C 240B07D4 */  li    $t3, 2004
/* B1A5E0 800A3440 00004012 */  mflo  $t0
/* B1A5E4 800A3444 03083021 */  addu  $a2, $t8, $t0
/* B1A5E8 800A3448 AFAB0020 */  sw    $t3, 0x20($sp)
/* B1A5EC 800A344C AFAA001C */  sw    $t2, 0x1c($sp)
/* B1A5F0 800A3450 AFA00018 */  sw    $zero, 0x18($sp)
/* B1A5F4 800A3454 AFA00010 */  sw    $zero, 0x10($sp)
/* B1A5F8 800A3458 8FA50050 */  lw    $a1, 0x50($sp)
/* B1A5FC 800A345C 24640004 */  addiu $a0, $v1, 4
/* B1A600 800A3460 0C000697 */  jal   DmaMgr_SendRequest2
/* B1A604 800A3464 AFA90014 */   sw    $t1, 0x14($sp)
.L800A3468:
/* B1A608 800A3468 8FBF002C */  lw    $ra, 0x2c($sp)
/* B1A60C 800A346C 27BD0040 */  addiu $sp, $sp, 0x40
/* B1A610 800A3470 03E00008 */  jr    $ra
/* B1A614 800A3474 00000000 */   nop   

glabel func_800A3478
/* B1A618 800A3478 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A61C 800A347C 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A620 800A3480 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A624 800A3484 AFA40018 */  sw    $a0, 0x18($sp)
/* B1A628 800A3488 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A62C 800A348C 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A630 800A3490 AFA60020 */  sw    $a2, 0x20($sp)
/* B1A634 800A3494 AFA70024 */  sw    $a3, 0x24($sp)
/* B1A638 800A3498 00812021 */  addu  $a0, $a0, $at
/* B1A63C 800A349C 0C028CCD */  jal   func_800A3334
/* B1A640 800A34A0 24050001 */   li    $a1, 1
/* B1A644 800A34A4 10400009 */  beqz  $v0, .L800A34CC
/* B1A648 800A34A8 3C0E8016 */   lui   $t6, %hi(D_801600B0) # $t6, 0x8016
/* B1A64C 800A34AC 8DCE00B0 */  lw    $t6, %lo(D_801600B0)($t6)
/* B1A650 800A34B0 A04E0004 */  sb    $t6, 4($v0)
/* B1A654 800A34B4 8FAF001C */  lw    $t7, 0x1c($sp)
/* B1A658 800A34B8 A04F0005 */  sb    $t7, 5($v0)
/* B1A65C 800A34BC 8FB80020 */  lw    $t8, 0x20($sp)
/* B1A660 800A34C0 AC580008 */  sw    $t8, 8($v0)
/* B1A664 800A34C4 8FB90024 */  lw    $t9, 0x24($sp)
/* B1A668 800A34C8 AC59000C */  sw    $t9, 0xc($v0)
.L800A34CC:
/* B1A66C 800A34CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A670 800A34D0 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A674 800A34D4 03E00008 */  jr    $ra
/* B1A678 800A34D8 00000000 */   nop   

glabel func_800A34DC
/* B1A67C 800A34DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A680 800A34E0 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A684 800A34E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A688 800A34E8 AFA40018 */  sw    $a0, 0x18($sp)
/* B1A68C 800A34EC AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A690 800A34F0 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A694 800A34F4 AFA60020 */  sw    $a2, 0x20($sp)
/* B1A698 800A34F8 AFA70024 */  sw    $a3, 0x24($sp)
/* B1A69C 800A34FC 00812021 */  addu  $a0, $a0, $at
/* B1A6A0 800A3500 0C028CCD */  jal   func_800A3334
/* B1A6A4 800A3504 24050002 */   li    $a1, 2
/* B1A6A8 800A3508 1040000B */  beqz  $v0, .L800A3538
/* B1A6AC 800A350C 3C0E8016 */   lui   $t6, %hi(D_801600B0) # $t6, 0x8016
/* B1A6B0 800A3510 8DCE00B0 */  lw    $t6, %lo(D_801600B0)($t6)
/* B1A6B4 800A3514 A04E0004 */  sb    $t6, 4($v0)
/* B1A6B8 800A3518 8FAF001C */  lw    $t7, 0x1c($sp)
/* B1A6BC 800A351C A04F0005 */  sb    $t7, 5($v0)
/* B1A6C0 800A3520 8FB80020 */  lw    $t8, 0x20($sp)
/* B1A6C4 800A3524 AC580008 */  sw    $t8, 8($v0)
/* B1A6C8 800A3528 8FB90024 */  lw    $t9, 0x24($sp)
/* B1A6CC 800A352C AC59000C */  sw    $t9, 0xc($v0)
/* B1A6D0 800A3530 C7A40028 */  lwc1  $f4, 0x28($sp)
/* B1A6D4 800A3534 E4440010 */  swc1  $f4, 0x10($v0)
.L800A3538:
/* B1A6D8 800A3538 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A6DC 800A353C 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A6E0 800A3540 03E00008 */  jr    $ra
/* B1A6E4 800A3544 00000000 */   nop   

glabel func_800A3548
/* B1A6E8 800A3548 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A6EC 800A354C 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A6F0 800A3550 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A6F4 800A3554 AFA40018 */  sw    $a0, 0x18($sp)
/* B1A6F8 800A3558 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A6FC 800A355C 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A700 800A3560 AFA60020 */  sw    $a2, 0x20($sp)
/* B1A704 800A3564 AFA70024 */  sw    $a3, 0x24($sp)
/* B1A708 800A3568 00812021 */  addu  $a0, $a0, $at
/* B1A70C 800A356C 0C028CCD */  jal   func_800A3334
/* B1A710 800A3570 24050003 */   li    $a1, 3
/* B1A714 800A3574 1040000B */  beqz  $v0, .L800A35A4
/* B1A718 800A3578 3C0E8016 */   lui   $t6, %hi(D_801600B0) # $t6, 0x8016
/* B1A71C 800A357C 8DCE00B0 */  lw    $t6, %lo(D_801600B0)($t6)
/* B1A720 800A3580 A04E0004 */  sb    $t6, 4($v0)
/* B1A724 800A3584 8FAF001C */  lw    $t7, 0x1c($sp)
/* B1A728 800A3588 A04F0005 */  sb    $t7, 5($v0)
/* B1A72C 800A358C 8FB80020 */  lw    $t8, 0x20($sp)
/* B1A730 800A3590 AC580008 */  sw    $t8, 8($v0)
/* B1A734 800A3594 8FB90024 */  lw    $t9, 0x24($sp)
/* B1A738 800A3598 AC59000C */  sw    $t9, 0xc($v0)
/* B1A73C 800A359C 8FA80028 */  lw    $t0, 0x28($sp)
/* B1A740 800A35A0 AC480010 */  sw    $t0, 0x10($v0)
.L800A35A4:
/* B1A744 800A35A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A748 800A35A8 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A74C 800A35AC 03E00008 */  jr    $ra
/* B1A750 800A35B0 00000000 */   nop   

glabel func_800A35B4
/* B1A754 800A35B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A758 800A35B8 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A75C 800A35BC AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A760 800A35C0 AFA40018 */  sw    $a0, 0x18($sp)
/* B1A764 800A35C4 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A768 800A35C8 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A76C 800A35CC AFA60020 */  sw    $a2, 0x20($sp)
/* B1A770 800A35D0 AFA70024 */  sw    $a3, 0x24($sp)
/* B1A774 800A35D4 00812021 */  addu  $a0, $a0, $at
/* B1A778 800A35D8 0C028CCD */  jal   func_800A3334
/* B1A77C 800A35DC 24050004 */   li    $a1, 4
/* B1A780 800A35E0 1040000B */  beqz  $v0, .L800A3610
/* B1A784 800A35E4 3C0E8016 */   lui   $t6, %hi(D_801600B0) # $t6, 0x8016
/* B1A788 800A35E8 8DCE00B0 */  lw    $t6, %lo(D_801600B0)($t6)
/* B1A78C 800A35EC A04E0004 */  sb    $t6, 4($v0)
/* B1A790 800A35F0 8FAF001C */  lw    $t7, 0x1c($sp)
/* B1A794 800A35F4 A04F0005 */  sb    $t7, 5($v0)
/* B1A798 800A35F8 8FB80020 */  lw    $t8, 0x20($sp)
/* B1A79C 800A35FC AC580008 */  sw    $t8, 8($v0)
/* B1A7A0 800A3600 8FB90024 */  lw    $t9, 0x24($sp)
/* B1A7A4 800A3604 AC59000C */  sw    $t9, 0xc($v0)
/* B1A7A8 800A3608 8FA80028 */  lw    $t0, 0x28($sp)
/* B1A7AC 800A360C AC480010 */  sw    $t0, 0x10($v0)
.L800A3610:
/* B1A7B0 800A3610 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A7B4 800A3614 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A7B8 800A3618 03E00008 */  jr    $ra
/* B1A7BC 800A361C 00000000 */   nop   

glabel func_800A3620
/* B1A7C0 800A3620 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A7C4 800A3624 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A7C8 800A3628 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A7CC 800A362C AFA40018 */  sw    $a0, 0x18($sp)
/* B1A7D0 800A3630 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A7D4 800A3634 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A7D8 800A3638 AFA60020 */  sw    $a2, 0x20($sp)
/* B1A7DC 800A363C AFA70024 */  sw    $a3, 0x24($sp)
/* B1A7E0 800A3640 00812021 */  addu  $a0, $a0, $at
/* B1A7E4 800A3644 0C028CCD */  jal   func_800A3334
/* B1A7E8 800A3648 24050005 */   li    $a1, 5
/* B1A7EC 800A364C 10400006 */  beqz  $v0, .L800A3668
/* B1A7F0 800A3650 8FAE001C */   lw    $t6, 0x1c($sp)
/* B1A7F4 800A3654 AC4E0004 */  sw    $t6, 4($v0)
/* B1A7F8 800A3658 8FAF0020 */  lw    $t7, 0x20($sp)
/* B1A7FC 800A365C AC4F0008 */  sw    $t7, 8($v0)
/* B1A800 800A3660 C7A40024 */  lwc1  $f4, 0x24($sp)
/* B1A804 800A3664 E444000C */  swc1  $f4, 0xc($v0)
.L800A3668:
/* B1A808 800A3668 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A80C 800A366C 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A810 800A3670 03E00008 */  jr    $ra
/* B1A814 800A3674 00000000 */   nop   

glabel func_800A3678
/* B1A818 800A3678 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A81C 800A367C AFA40018 */  sw    $a0, 0x18($sp)
/* B1A820 800A3680 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A824 800A3684 24A40020 */  addiu $a0, $a1, 0x20
/* B1A828 800A3688 00002825 */  move  $a1, $zero
/* B1A82C 800A368C 0C000CA0 */  jal   osRecvMesg
/* B1A830 800A3690 24060001 */   li    $a2, 1
/* B1A834 800A3694 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A838 800A3698 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A83C 800A369C 03E00008 */  jr    $ra
/* B1A840 800A36A0 00000000 */   nop   

glabel func_800A36A4
/* B1A844 800A36A4 AFA40000 */  sw    $a0, ($sp)
/* B1A848 800A36A8 3C0F8013 */  lui   $t7, %hi(D_8012A480) # $t7, 0x8013
/* B1A84C 800A36AC 8DEFA480 */  lw    $t7, %lo(D_8012A480)($t7)
/* B1A850 800A36B0 90AE0000 */  lbu   $t6, ($a1)
/* B1A854 800A36B4 00A01025 */  move  $v0, $a1
/* B1A858 800A36B8 01CFC024 */  and   $t8, $t6, $t7
/* B1A85C 800A36BC 17000013 */  bnez  $t8, .L800A370C
/* B1A860 800A36C0 00000000 */   nop   
/* B1A864 800A36C4 90B90001 */  lbu   $t9, 1($a1)
/* B1A868 800A36C8 8CA30004 */  lw    $v1, 4($a1)
/* B1A86C 800A36CC 8CA40008 */  lw    $a0, 8($a1)
/* B1A870 800A36D0 1B20000E */  blez  $t9, .L800A370C
/* B1A874 800A36D4 00003025 */   move  $a2, $zero
/* B1A878 800A36D8 88890000 */  lwl   $t1, ($a0)
.L800A36DC:
/* B1A87C 800A36DC 98890003 */  lwr   $t1, 3($a0)
/* B1A880 800A36E0 24C60001 */  addiu $a2, $a2, 1
/* B1A884 800A36E4 24630006 */  addiu $v1, $v1, 6
/* B1A888 800A36E8 A869FFFA */  swl   $t1, -6($v1)
/* B1A88C 800A36EC B869FFFD */  swr   $t1, -3($v1)
/* B1A890 800A36F0 94890004 */  lhu   $t1, 4($a0)
/* B1A894 800A36F4 24840006 */  addiu $a0, $a0, 6
/* B1A898 800A36F8 A469FFFE */  sh    $t1, -2($v1)
/* B1A89C 800A36FC 904A0001 */  lbu   $t2, 1($v0)
/* B1A8A0 800A3700 00CA082A */  slt   $at, $a2, $t2
/* B1A8A4 800A3704 5420FFF5 */  bnezl $at, .L800A36DC
/* B1A8A8 800A3708 88890000 */   lwl   $t1, ($a0)
.L800A370C:
/* B1A8AC 800A370C 03E00008 */  jr    $ra
/* B1A8B0 800A3710 00000000 */   nop   

glabel func_800A3714
/* B1A8B4 800A3714 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1A8B8 800A3718 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1A8BC 800A371C AFB00020 */  sw    $s0, 0x20($sp)
/* B1A8C0 800A3720 AFA40028 */  sw    $a0, 0x28($sp)
/* B1A8C4 800A3724 3C0F8013 */  lui   $t7, %hi(D_8012A480) # $t7, 0x8013
/* B1A8C8 800A3728 8DEFA480 */  lw    $t7, %lo(D_8012A480)($t7)
/* B1A8CC 800A372C 90AE0000 */  lbu   $t6, ($a1)
/* B1A8D0 800A3730 00A08025 */  move  $s0, $a1
/* B1A8D4 800A3734 01CFC024 */  and   $t8, $t6, $t7
/* B1A8D8 800A3738 57000009 */  bnezl $t8, .L800A3760
/* B1A8DC 800A373C 8FBF0024 */   lw    $ra, 0x24($sp)
/* B1A8E0 800A3740 90A40001 */  lbu   $a0, 1($a1)
/* B1A8E4 800A3744 8CA50004 */  lw    $a1, 4($a1)
/* B1A8E8 800A3748 C604000C */  lwc1  $f4, 0xc($s0)
/* B1A8EC 800A374C 8E070008 */  lw    $a3, 8($s0)
/* B1A8F0 800A3750 00A03025 */  move  $a2, $a1
/* B1A8F4 800A3754 0C028B9C */  jal   func_800A2E70
/* B1A8F8 800A3758 E7A40010 */   swc1  $f4, 0x10($sp)
/* B1A8FC 800A375C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A3760:
/* B1A900 800A3760 8FB00020 */  lw    $s0, 0x20($sp)
/* B1A904 800A3764 27BD0028 */  addiu $sp, $sp, 0x28
/* B1A908 800A3768 03E00008 */  jr    $ra
/* B1A90C 800A376C 00000000 */   nop   

glabel func_800A3770
/* B1A910 800A3770 AFA40000 */  sw    $a0, ($sp)
/* B1A914 800A3774 3C0F8013 */  lui   $t7, %hi(D_8012A480) # $t7, 0x8013
/* B1A918 800A3778 8DEFA480 */  lw    $t7, %lo(D_8012A480)($t7)
/* B1A91C 800A377C 90AE0000 */  lbu   $t6, ($a1)
/* B1A920 800A3780 00A01025 */  move  $v0, $a1
/* B1A924 800A3784 00003825 */  move  $a3, $zero
/* B1A928 800A3788 01CFC024 */  and   $t8, $t6, $t7
/* B1A92C 800A378C 17000016 */  bnez  $t8, .L800A37E8
/* B1A930 800A3790 00000000 */   nop   
/* B1A934 800A3794 90B90001 */  lbu   $t9, 1($a1)
/* B1A938 800A3798 8CA30004 */  lw    $v1, 4($a1)
/* B1A93C 800A379C 8CA40008 */  lw    $a0, 8($a1)
/* B1A940 800A37A0 1B200011 */  blez  $t9, .L800A37E8
/* B1A944 800A37A4 8CA6000C */   lw    $a2, 0xc($a1)
.L800A37A8:
/* B1A948 800A37A8 90C50000 */  lbu   $a1, ($a2)
/* B1A94C 800A37AC 24C60001 */  addiu $a2, $a2, 1
/* B1A950 800A37B0 50A00008 */  beql  $a1, $zero, .L800A37D4
/* B1A954 800A37B4 904A0001 */   lbu   $t2, 1($v0)
/* B1A958 800A37B8 88890000 */  lwl   $t1, ($a0)
/* B1A95C 800A37BC 98890003 */  lwr   $t1, 3($a0)
/* B1A960 800A37C0 A8690000 */  swl   $t1, ($v1)
/* B1A964 800A37C4 B8690003 */  swr   $t1, 3($v1)
/* B1A968 800A37C8 94890004 */  lhu   $t1, 4($a0)
/* B1A96C 800A37CC A4690004 */  sh    $t1, 4($v1)
/* B1A970 800A37D0 904A0001 */  lbu   $t2, 1($v0)
.L800A37D4:
/* B1A974 800A37D4 24E70001 */  addiu $a3, $a3, 1
/* B1A978 800A37D8 24630006 */  addiu $v1, $v1, 6
/* B1A97C 800A37DC 00EA082A */  slt   $at, $a3, $t2
/* B1A980 800A37E0 1420FFF1 */  bnez  $at, .L800A37A8
/* B1A984 800A37E4 24840006 */   addiu $a0, $a0, 6
.L800A37E8:
/* B1A988 800A37E8 03E00008 */  jr    $ra
/* B1A98C 800A37EC 00000000 */   nop   

glabel func_800A37F0
/* B1A990 800A37F0 AFA40000 */  sw    $a0, ($sp)
/* B1A994 800A37F4 3C0F8013 */  lui   $t7, %hi(D_8012A480) # $t7, 0x8013
/* B1A998 800A37F8 8DEFA480 */  lw    $t7, %lo(D_8012A480)($t7)
/* B1A99C 800A37FC 90AE0000 */  lbu   $t6, ($a1)
/* B1A9A0 800A3800 00A01025 */  move  $v0, $a1
/* B1A9A4 800A3804 00003825 */  move  $a3, $zero
/* B1A9A8 800A3808 01CFC024 */  and   $t8, $t6, $t7
/* B1A9AC 800A380C 17000017 */  bnez  $t8, .L800A386C
/* B1A9B0 800A3810 00000000 */   nop   
/* B1A9B4 800A3814 90B90001 */  lbu   $t9, 1($a1)
/* B1A9B8 800A3818 8CA30004 */  lw    $v1, 4($a1)
/* B1A9BC 800A381C 8CA40008 */  lw    $a0, 8($a1)
/* B1A9C0 800A3820 1B200012 */  blez  $t9, .L800A386C
/* B1A9C4 800A3824 8CA6000C */   lw    $a2, 0xc($a1)
.L800A3828:
/* B1A9C8 800A3828 90C50000 */  lbu   $a1, ($a2)
/* B1A9CC 800A382C 24C60001 */  addiu $a2, $a2, 1
/* B1A9D0 800A3830 2CA50001 */  sltiu $a1, $a1, 1
/* B1A9D4 800A3834 50A00008 */  beql  $a1, $zero, .L800A3858
/* B1A9D8 800A3838 904A0001 */   lbu   $t2, 1($v0)
/* B1A9DC 800A383C 88890000 */  lwl   $t1, ($a0)
/* B1A9E0 800A3840 98890003 */  lwr   $t1, 3($a0)
/* B1A9E4 800A3844 A8690000 */  swl   $t1, ($v1)
/* B1A9E8 800A3848 B8690003 */  swr   $t1, 3($v1)
/* B1A9EC 800A384C 94890004 */  lhu   $t1, 4($a0)
/* B1A9F0 800A3850 A4690004 */  sh    $t1, 4($v1)
/* B1A9F4 800A3854 904A0001 */  lbu   $t2, 1($v0)
.L800A3858:
/* B1A9F8 800A3858 24E70001 */  addiu $a3, $a3, 1
/* B1A9FC 800A385C 24630006 */  addiu $v1, $v1, 6
/* B1AA00 800A3860 00EA082A */  slt   $at, $a3, $t2
/* B1AA04 800A3864 1420FFF0 */  bnez  $at, .L800A3828
/* B1AA08 800A3868 24840006 */   addiu $a0, $a0, 6
.L800A386C:
/* B1AA0C 800A386C 03E00008 */  jr    $ra
/* B1AA10 800A3870 00000000 */   nop   

glabel func_800A3874
/* B1AA14 800A3874 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1AA18 800A3878 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1AA1C 800A387C AFA40030 */  sw    $a0, 0x30($sp)
/* B1AA20 800A3880 8CA20000 */  lw    $v0, ($a1)
/* B1AA24 800A3884 8CA40004 */  lw    $a0, 4($a1)
/* B1AA28 800A3888 00A03825 */  move  $a3, $a1
/* B1AA2C 800A388C 844600B6 */  lh    $a2, 0xb6($v0)
/* B1AA30 800A3890 AFA70034 */  sw    $a3, 0x34($sp)
/* B1AA34 800A3894 27A5001C */  addiu $a1, $sp, 0x1c
/* B1AA38 800A3898 0C02953F */  jal   func_800A54FC
/* B1AA3C 800A389C AFA20028 */   sw    $v0, 0x28($sp)
/* B1AA40 800A38A0 8FA20028 */  lw    $v0, 0x28($sp)
/* B1AA44 800A38A4 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* B1AA48 800A38A8 8FA70034 */  lw    $a3, 0x34($sp)
/* B1AA4C 800A38AC C4460050 */  lwc1  $f6, 0x50($v0)
/* B1AA50 800A38B0 C44A0024 */  lwc1  $f10, 0x24($v0)
/* B1AA54 800A38B4 46062202 */  mul.s $f8, $f4, $f6
/* B1AA58 800A38B8 C4440054 */  lwc1  $f4, 0x54($v0)
/* B1AA5C 800A38BC 46085400 */  add.s $f16, $f10, $f8
/* B1AA60 800A38C0 E4500024 */  swc1  $f16, 0x24($v0)
/* B1AA64 800A38C4 C7B20020 */  lwc1  $f18, 0x20($sp)
/* B1AA68 800A38C8 C4EA0008 */  lwc1  $f10, 8($a3)
/* B1AA6C 800A38CC C4500028 */  lwc1  $f16, 0x28($v0)
/* B1AA70 800A38D0 46049182 */  mul.s $f6, $f18, $f4
/* B1AA74 800A38D4 00000000 */  nop   
/* B1AA78 800A38D8 460A3202 */  mul.s $f8, $f6, $f10
/* B1AA7C 800A38DC C4460058 */  lwc1  $f6, 0x58($v0)
/* B1AA80 800A38E0 46088480 */  add.s $f18, $f16, $f8
/* B1AA84 800A38E4 C450002C */  lwc1  $f16, 0x2c($v0)
/* B1AA88 800A38E8 E4520028 */  swc1  $f18, 0x28($v0)
/* B1AA8C 800A38EC C7A40024 */  lwc1  $f4, 0x24($sp)
/* B1AA90 800A38F0 46062282 */  mul.s $f10, $f4, $f6
/* B1AA94 800A38F4 460A8200 */  add.s $f8, $f16, $f10
/* B1AA98 800A38F8 E448002C */  swc1  $f8, 0x2c($v0)
/* B1AA9C 800A38FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1AAA0 800A3900 27BD0030 */  addiu $sp, $sp, 0x30
/* B1AAA4 800A3904 03E00008 */  jr    $ra
/* B1AAA8 800A3908 00000000 */   nop   

glabel func_800A390C
/* B1AAAC 800A390C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1AAB0 800A3910 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1AAB4 800A3914 AFB30020 */  sw    $s3, 0x20($sp)
/* B1AAB8 800A3918 AFB2001C */  sw    $s2, 0x1c($sp)
/* B1AABC 800A391C AFB10018 */  sw    $s1, 0x18($sp)
/* B1AAC0 800A3920 AFB00014 */  sw    $s0, 0x14($sp)
/* B1AAC4 800A3924 84AE0000 */  lh    $t6, ($a1)
/* B1AAC8 800A3928 00A08825 */  move  $s1, $a1
/* B1AACC 800A392C 00809025 */  move  $s2, $a0
/* B1AAD0 800A3930 11C00012 */  beqz  $t6, .L800A397C
/* B1AAD4 800A3934 24B00004 */   addiu $s0, $a1, 4
/* B1AAD8 800A3938 3C138013 */  lui   $s3, %hi(D_8012A484) # $s3, 0x8013
/* B1AADC 800A393C 2673A484 */  addiu $s3, %lo(D_8012A484) # addiu $s3, $s3, -0x5b7c
/* B1AAE0 800A3940 920F0000 */  lbu   $t7, ($s0)
.L800A3944:
/* B1AAE4 800A3944 02402025 */  move  $a0, $s2
/* B1AAE8 800A3948 26050004 */  addiu $a1, $s0, 4
/* B1AAEC 800A394C 000FC080 */  sll   $t8, $t7, 2
/* B1AAF0 800A3950 0278C821 */  addu  $t9, $s3, $t8
/* B1AAF4 800A3954 8F390000 */  lw    $t9, ($t9)
/* B1AAF8 800A3958 0320F809 */  jalr  $t9
/* B1AAFC 800A395C 00000000 */  nop   
/* B1AB00 800A3960 86280000 */  lh    $t0, ($s1)
/* B1AB04 800A3964 26100040 */  addiu $s0, $s0, 0x40
/* B1AB08 800A3968 2509FFFF */  addiu $t1, $t0, -1
/* B1AB0C 800A396C A6290000 */  sh    $t1, ($s1)
/* B1AB10 800A3970 862A0000 */  lh    $t2, ($s1)
/* B1AB14 800A3974 5540FFF3 */  bnezl $t2, .L800A3944
/* B1AB18 800A3978 920F0000 */   lbu   $t7, ($s0)
.L800A397C:
/* B1AB1C 800A397C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1AB20 800A3980 240B0001 */  li    $t3, 1
/* B1AB24 800A3984 3C018016 */  lui   $at, %hi(D_801600B0) # $at, 0x8016
/* B1AB28 800A3988 AC2B00B0 */  sw    $t3, %lo(D_801600B0)($at)
/* B1AB2C 800A398C 3C018013 */  lui   $at, %hi(D_8012A480) # $at, 0x8013
/* B1AB30 800A3990 8FB00014 */  lw    $s0, 0x14($sp)
/* B1AB34 800A3994 8FB10018 */  lw    $s1, 0x18($sp)
/* B1AB38 800A3998 8FB2001C */  lw    $s2, 0x1c($sp)
/* B1AB3C 800A399C 8FB30020 */  lw    $s3, 0x20($sp)
/* B1AB40 800A39A0 AC20A480 */  sw    $zero, %lo(D_8012A480)($at)
/* B1AB44 800A39A4 03E00008 */  jr    $ra
/* B1AB48 800A39A8 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800A39AC
/* B1AB4C 800A39AC 00067100 */  sll   $t6, $a2, 4
/* B1AB50 800A39B0 3C098016 */  lui   $t1, %hi(D_80166FA8) # $t1, 0x8016
/* B1AB54 800A39B4 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1AB58 800A39B8 25296FA8 */  addiu $t1, %lo(D_80166FA8) # addiu $t1, $t1, 0x6fa8
/* B1AB5C 800A39BC 000FC080 */  sll   $t8, $t7, 2
/* B1AB60 800A39C0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B1AB64 800A39C4 0138C821 */  addu  $t9, $t1, $t8
/* B1AB68 800A39C8 8F2C0000 */  lw    $t4, ($t9)
/* B1AB6C 800A39CC 3C0A00FF */  lui   $t2, (0x00FFFFFF >> 16) # lui $t2, 0xff
/* B1AB70 800A39D0 354AFFFF */  ori   $t2, (0x00FFFFFF & 0xFFFF) # ori $t2, $t2, 0xffff
/* B1AB74 800A39D4 00CA6824 */  and   $t5, $a2, $t2
/* B1AB78 800A39D8 8FAF0050 */  lw    $t7, 0x50($sp)
/* B1AB7C 800A39DC 3C0B8000 */  lui   $t3, 0x8000
/* B1AB80 800A39E0 018D7021 */  addu  $t6, $t4, $t5
/* B1AB84 800A39E4 AFBF002C */  sw    $ra, 0x2c($sp)
/* B1AB88 800A39E8 AFB00028 */  sw    $s0, 0x28($sp)
/* B1AB8C 800A39EC AFA40040 */  sw    $a0, 0x40($sp)
/* B1AB90 800A39F0 AFA7004C */  sw    $a3, 0x4c($sp)
/* B1AB94 800A39F4 01CB4021 */  addu  $t0, $t6, $t3
/* B1AB98 800A39F8 91020004 */  lbu   $v0, 4($t0)
/* B1AB9C 800A39FC A0AF0034 */  sb    $t7, 0x34($a1)
/* B1ABA0 800A3A00 8FB80050 */  lw    $t8, 0x50($sp)
/* B1ABA4 800A3A04 8FAC0050 */  lw    $t4, 0x50($sp)
/* B1ABA8 800A3A08 00A08025 */  move  $s0, $a1
/* B1ABAC 800A3A0C 33190002 */  andi  $t9, $t8, 2
/* B1ABB0 800A3A10 13200003 */  beqz  $t9, .L800A3A20
/* B1ABB4 800A3A14 318D0001 */   andi  $t5, $t4, 1
/* B1ABB8 800A3A18 10000002 */  b     .L800A3A24
/* B1ABBC 800A3A1C 00401825 */   move  $v1, $v0
.L800A3A20:
/* B1ABC0 800A3A20 24030001 */  li    $v1, 1
.L800A3A24:
/* B1ABC4 800A3A24 11A00002 */  beqz  $t5, .L800A3A30
/* B1ABC8 800A3A28 8FAE0050 */   lw    $t6, 0x50($sp)
/* B1ABCC 800A3A2C 00621821 */  addu  $v1, $v1, $v0
.L800A3A30:
/* B1ABD0 800A3A30 31CF0004 */  andi  $t7, $t6, 4
/* B1ABD4 800A3A34 11E00002 */  beqz  $t7, .L800A3A40
/* B1ABD8 800A3A38 2406093C */   li    $a2, 2364
/* B1ABDC 800A3A3C 00621821 */  addu  $v1, $v1, $v0
.L800A3A40:
/* B1ABE0 800A3A40 A2030000 */  sb    $v1, ($s0)
/* B1ABE4 800A3A44 91180008 */  lbu   $t8, 8($t0)
/* B1ABE8 800A3A48 00032880 */  sll   $a1, $v1, 2
/* B1ABEC 800A3A4C 00A32823 */  subu  $a1, $a1, $v1
/* B1ABF0 800A3A50 A2180002 */  sb    $t8, 2($s0)
/* B1ABF4 800A3A54 8D020000 */  lw    $v0, ($t0)
/* B1ABF8 800A3A58 00052840 */  sll   $a1, $a1, 1
/* B1ABFC 800A3A5C 00A02025 */  move  $a0, $a1
/* B1AC00 800A3A60 0002C900 */  sll   $t9, $v0, 4
/* B1AC04 800A3A64 00196702 */  srl   $t4, $t9, 0x1c
/* B1AC08 800A3A68 000C6880 */  sll   $t5, $t4, 2
/* B1AC0C 800A3A6C 012D7021 */  addu  $t6, $t1, $t5
/* B1AC10 800A3A70 8DCF0000 */  lw    $t7, ($t6)
/* B1AC14 800A3A74 004AC024 */  and   $t8, $v0, $t2
/* B1AC18 800A3A78 01F8C821 */  addu  $t9, $t7, $t8
/* B1AC1C 800A3A7C 032B6021 */  addu  $t4, $t9, $t3
/* B1AC20 800A3A80 AE0C0004 */  sw    $t4, 4($s0)
/* B1AC24 800A3A84 8FAD0050 */  lw    $t5, 0x50($sp)
/* B1AC28 800A3A88 8FAF0054 */  lw    $t7, 0x54($sp)
/* B1AC2C 800A3A8C 8FB8005C */  lw    $t8, 0x5c($sp)
/* B1AC30 800A3A90 31AE0008 */  andi  $t6, $t5, 8
/* B1AC34 800A3A94 11C00002 */  beqz  $t6, .L800A3AA0
/* B1AC38 800A3A98 00000000 */   nop   
/* B1AC3C 800A3A9C 24A40002 */  addiu $a0, $a1, 2
.L800A3AA0:
/* B1AC40 800A3AA0 15E0000C */  bnez  $t7, .L800A3AD4
/* B1AC44 800A3AA4 3C058014 */   lui   $a1, %hi(D_801403CC) # $a1, 0x8014
/* B1AC48 800A3AA8 24A503CC */  addiu $a1, %lo(D_801403CC) # addiu $a1, $a1, 0x3cc
/* B1AC4C 800A3AAC 0C01EBB8 */  jal   func_8007AEE0
/* B1AC50 800A3AB0 AFA40030 */   sw    $a0, 0x30($sp)
/* B1AC54 800A3AB4 8FA40030 */  lw    $a0, 0x30($sp)
/* B1AC58 800A3AB8 3C058014 */  lui   $a1, %hi(D_801403E0) # $a1, 0x8014
/* B1AC5C 800A3ABC AE020020 */  sw    $v0, 0x20($s0)
/* B1AC60 800A3AC0 24A503E0 */  addiu $a1, %lo(D_801403E0) # addiu $a1, $a1, 0x3e0
/* B1AC64 800A3AC4 0C01EBB8 */  jal   func_8007AEE0
/* B1AC68 800A3AC8 2406093D */   li    $a2, 2365
/* B1AC6C 800A3ACC 10000011 */  b     .L800A3B14
/* B1AC70 800A3AD0 AE020024 */   sw    $v0, 0x24($s0)
.L800A3AD4:
/* B1AC74 800A3AD4 13030006 */  beq   $t8, $v1, .L800A3AF0
/* B1AC78 800A3AD8 3C048014 */   lui   $a0, %hi(D_801403F4) # $a0, 0x8014
/* B1AC7C 800A3ADC 3C058014 */  lui   $a1, %hi(D_80140410) # $a1, 0x8014
/* B1AC80 800A3AE0 24A50410 */  addiu $a1, %lo(D_80140410) # addiu $a1, $a1, 0x410
/* B1AC84 800A3AE4 248403F4 */  addiu $a0, %lo(D_801403F4) # addiu $a0, $a0, 0x3f4
/* B1AC88 800A3AE8 0C0007FC */  jal   __assert
/* B1AC8C 800A3AEC 24060941 */   li    $a2, 2369
.L800A3AF0:
/* B1AC90 800A3AF0 8FB90054 */  lw    $t9, 0x54($sp)
/* B1AC94 800A3AF4 2402FFF0 */  li    $v0, -16
/* B1AC98 800A3AF8 272C000F */  addiu $t4, $t9, 0xf
/* B1AC9C 800A3AFC 01826824 */  and   $t5, $t4, $v0
/* B1ACA0 800A3B00 AE0D0020 */  sw    $t5, 0x20($s0)
/* B1ACA4 800A3B04 8FAE0058 */  lw    $t6, 0x58($sp)
/* B1ACA8 800A3B08 25CF000F */  addiu $t7, $t6, 0xf
/* B1ACAC 800A3B0C 01E2C024 */  and   $t8, $t7, $v0
/* B1ACB0 800A3B10 AE180024 */  sw    $t8, 0x24($s0)
.L800A3B14:
/* B1ACB4 800A3B14 8E190020 */  lw    $t9, 0x20($s0)
/* B1ACB8 800A3B18 3C048014 */  lui   $a0, %hi(D_80140424)
/* B1ACBC 800A3B1C 13200004 */  beqz  $t9, .L800A3B30
/* B1ACC0 800A3B20 00000000 */   nop   
/* B1ACC4 800A3B24 8E0C0024 */  lw    $t4, 0x24($s0)
/* B1ACC8 800A3B28 5580000A */  bnezl $t4, .L800A3B54
/* B1ACCC 800A3B2C 44800000 */   mtc1  $zero, $f0
.L800A3B30:
/* B1ACD0 800A3B30 0C00084C */  jal   osSyncPrintf
/* B1ACD4 800A3B34 24840424 */   addiu $a0, %lo(D_80140424)
/* B1ACD8 800A3B38 3C048014 */  lui   $a0, %hi(D_8014042C) # $a0, 0x8014
/* B1ACDC 800A3B3C 0C00084C */  jal   osSyncPrintf
/* B1ACE0 800A3B40 2484042C */   addiu $a0, %lo(D_8014042C) # addiu $a0, $a0, 0x42c
/* B1ACE4 800A3B44 3C048014 */  lui   $a0, %hi(D_80140460)
/* B1ACE8 800A3B48 0C00084C */  jal   osSyncPrintf
/* B1ACEC 800A3B4C 24840460 */   addiu $a0, %lo(D_80140460) # addiu $a0, $a0, 0x460
/* B1ACF0 800A3B50 44800000 */  mtc1  $zero, $f0
.L800A3B54:
/* B1ACF4 800A3B54 8FA40040 */  lw    $a0, 0x40($sp)
/* B1ACF8 800A3B58 02002825 */  move  $a1, $s0
/* B1ACFC 800A3B5C 8FA6004C */  lw    $a2, 0x4c($sp)
/* B1AD00 800A3B60 3C073F80 */  lui   $a3, 0x3f80
/* B1AD04 800A3B64 AFA00018 */  sw    $zero, 0x18($sp)
/* B1AD08 800A3B68 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1AD0C 800A3B6C E7A00014 */  swc1  $f0, 0x14($sp)
/* B1AD10 800A3B70 0C028FC2 */  jal   func_800A3F08
/* B1AD14 800A3B74 E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1AD18 800A3B78 8FBF002C */  lw    $ra, 0x2c($sp)
/* B1AD1C 800A3B7C 8FB00028 */  lw    $s0, 0x28($sp)
/* B1AD20 800A3B80 27BD0040 */  addiu $sp, $sp, 0x40
/* B1AD24 800A3B84 03E00008 */  jr    $ra
/* B1AD28 800A3B88 00000000 */   nop   

glabel func_800A3B8C
/* B1AD2C 800A3B8C 908E0001 */  lbu   $t6, 1($a0)
/* B1AD30 800A3B90 3C18800A */  lui   $t8, %hi(func_800A3E0C)
/* B1AD34 800A3B94 44802000 */  mtc1  $zero, $f4
/* B1AD38 800A3B98 29C10002 */  slti  $at, $t6, 2
/* B1AD3C 800A3B9C 10200005 */  beqz  $at, .L800A3BB4
/* B1AD40 800A3BA0 27183E0C */   addiu $t8, %lo(func_800A3E0C)
/* B1AD44 800A3BA4 3C0F800A */  lui   $t7, %hi(func_800A3D70) # $t7, 0x800a
/* B1AD48 800A3BA8 25EF3D70 */  addiu $t7, %lo(func_800A3D70) # addiu $t7, $t7, 0x3d70
/* B1AD4C 800A3BAC 10000002 */  b     .L800A3BB8
/* B1AD50 800A3BB0 AC8F0030 */   sw    $t7, 0x30($a0)
.L800A3BB4:
/* B1AD54 800A3BB4 AC980030 */  sw    $t8, 0x30($a0)
.L800A3BB8:
/* B1AD58 800A3BB8 03E00008 */  jr    $ra
/* B1AD5C 800A3BBC E4840028 */   swc1  $f4, 0x28($a0)

glabel func_800A3BC0
/* B1AD60 800A3BC0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1AD64 800A3BC4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1AD68 800A3BC8 8CB90030 */  lw    $t9, 0x30($a1)
/* B1AD6C 800A3BCC 0320F809 */  jalr  $t9
/* B1AD70 800A3BD0 00000000 */  nop   
/* B1AD74 800A3BD4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1AD78 800A3BD8 27BD0018 */  addiu $sp, $sp, 0x18
/* B1AD7C 800A3BDC 03E00008 */  jr    $ra
/* B1AD80 800A3BE0 00000000 */   nop   

glabel func_800A3BE4
/* B1AD84 800A3BE4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1AD88 800A3BE8 3C0E8016 */  lui   $t6, %hi(D_80160110)
/* B1AD8C 800A3BEC 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B1AD90 800A3BF0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1AD94 800A3BF4 AFB00020 */  sw    $s0, 0x20($sp)
/* B1AD98 800A3BF8 AFA40030 */  sw    $a0, 0x30($sp)
/* B1AD9C 800A3BFC 85CF0110 */  lh    $t7, %lo(D_80160110)($t6)
/* B1ADA0 800A3C00 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B1ADA4 800A3C04 44814000 */  mtc1  $at, $f8
/* B1ADA8 800A3C08 448F2000 */  mtc1  $t7, $f4
/* B1ADAC 800A3C0C C4AA002C */  lwc1  $f10, 0x2c($a1)
/* B1ADB0 800A3C10 C4A00028 */  lwc1  $f0, 0x28($a1)
/* B1ADB4 800A3C14 468021A0 */  cvt.s.w $f6, $f4
/* B1ADB8 800A3C18 44802000 */  mtc1  $zero, $f4
/* B1ADBC 800A3C1C 46000306 */  mov.s $f12, $f0
/* B1ADC0 800A3C20 00A08025 */  move  $s0, $a1
/* B1ADC4 800A3C24 00A02025 */  move  $a0, $a1
/* B1ADC8 800A3C28 46083082 */  mul.s $f2, $f6, $f8
/* B1ADCC 800A3C2C 00000000 */  nop   
/* B1ADD0 800A3C30 46025402 */  mul.s $f16, $f10, $f2
/* B1ADD4 800A3C34 46100481 */  sub.s $f18, $f0, $f16
/* B1ADD8 800A3C38 E4B20028 */  swc1  $f18, 0x28($a1)
/* B1ADDC 800A3C3C C4A00028 */  lwc1  $f0, 0x28($a1)
/* B1ADE0 800A3C40 4604003E */  c.le.s $f0, $f4
/* B1ADE4 800A3C44 00000000 */  nop   
/* B1ADE8 800A3C48 45000005 */  bc1f  .L800A3C60
/* B1ADEC 800A3C4C 00000000 */   nop   
/* B1ADF0 800A3C50 0C028EE3 */  jal   func_800A3B8C
/* B1ADF4 800A3C54 E7AC002C */   swc1  $f12, 0x2c($sp)
/* B1ADF8 800A3C58 C7AC002C */  lwc1  $f12, 0x2c($sp)
/* B1ADFC 800A3C5C C6000028 */  lwc1  $f0, 0x28($s0)
.L800A3C60:
/* B1AE00 800A3C60 460C0203 */  div.s $f8, $f0, $f12
/* B1AE04 800A3C64 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1AE08 800A3C68 44813000 */  mtc1  $at, $f6
/* B1AE0C 800A3C6C 92050000 */  lbu   $a1, ($s0)
/* B1AE10 800A3C70 8E060020 */  lw    $a2, 0x20($s0)
/* B1AE14 800A3C74 8E070024 */  lw    $a3, 0x24($s0)
/* B1AE18 800A3C78 8FA40030 */  lw    $a0, 0x30($sp)
/* B1AE1C 800A3C7C 46083281 */  sub.s $f10, $f6, $f8
/* B1AE20 800A3C80 0C028D37 */  jal   func_800A34DC
/* B1AE24 800A3C84 E7AA0010 */   swc1  $f10, 0x10($sp)
/* B1AE28 800A3C88 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1AE2C 800A3C8C 8FB00020 */  lw    $s0, 0x20($sp)
/* B1AE30 800A3C90 27BD0030 */  addiu $sp, $sp, 0x30
/* B1AE34 800A3C94 03E00008 */  jr    $ra
/* B1AE38 800A3C98 00001025 */   move  $v0, $zero

glabel func_800A3C9C
/* B1AE3C 800A3C9C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1AE40 800A3CA0 AFB00020 */  sw    $s0, 0x20($sp)
/* B1AE44 800A3CA4 00A08025 */  move  $s0, $a1
/* B1AE48 800A3CA8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1AE4C 800A3CAC AFA40028 */  sw    $a0, 0x28($sp)
/* B1AE50 800A3CB0 C6040018 */  lwc1  $f4, 0x18($s0)
/* B1AE54 800A3CB4 8E0F0020 */  lw    $t7, 0x20($s0)
/* B1AE58 800A3CB8 92070000 */  lbu   $a3, ($s0)
/* B1AE5C 800A3CBC 4600218D */  trunc.w.s $f6, $f4
/* B1AE60 800A3CC0 8CA50008 */  lw    $a1, 8($a1)
/* B1AE64 800A3CC4 AFAF0010 */  sw    $t7, 0x10($sp)
/* B1AE68 800A3CC8 44063000 */  mfc1  $a2, $f6
/* B1AE6C 800A3CCC 0C028CDB */  jal   func_800A336C
/* B1AE70 800A3CD0 00000000 */   nop   
/* B1AE74 800A3CD4 C6000028 */  lwc1  $f0, 0x28($s0)
/* B1AE78 800A3CD8 44804000 */  mtc1  $zero, $f8
/* B1AE7C 800A3CDC 3C188016 */  lui   $t8, %hi(gGameInfo)
/* B1AE80 800A3CE0 46004032 */  c.eq.s $f8, $f0
/* B1AE84 800A3CE4 00000000 */  nop   
/* B1AE88 800A3CE8 4503001D */  bc1tl .L800A3D60
/* B1AE8C 800A3CEC 8FBF0024 */   lw    $ra, 0x24($sp)
/* B1AE90 800A3CF0 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* B1AE94 800A3CF4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B1AE98 800A3CF8 44819000 */  mtc1  $at, $f18
/* B1AE9C 800A3CFC 87190110 */  lh    $t9, 0x110($t8)
/* B1AEA0 800A3D00 C604002C */  lwc1  $f4, 0x2c($s0)
/* B1AEA4 800A3D04 44806000 */  mtc1  $zero, $f12
/* B1AEA8 800A3D08 44995000 */  mtc1  $t9, $f10
/* B1AEAC 800A3D0C 00000000 */  nop   
/* B1AEB0 800A3D10 46805420 */  cvt.s.w $f16, $f10
/* B1AEB4 800A3D14 46128082 */  mul.s $f2, $f16, $f18
/* B1AEB8 800A3D18 00000000 */  nop   
/* B1AEBC 800A3D1C 46022182 */  mul.s $f6, $f4, $f2
/* B1AEC0 800A3D20 46060201 */  sub.s $f8, $f0, $f6
/* B1AEC4 800A3D24 E6080028 */  swc1  $f8, 0x28($s0)
/* B1AEC8 800A3D28 C6000028 */  lwc1  $f0, 0x28($s0)
/* B1AECC 800A3D2C 8FA40028 */  lw    $a0, 0x28($sp)
/* B1AED0 800A3D30 460C003E */  c.le.s $f0, $f12
/* B1AED4 800A3D34 00000000 */  nop   
/* B1AED8 800A3D38 45000003 */  bc1f  .L800A3D48
/* B1AEDC 800A3D3C 00000000 */   nop   
/* B1AEE0 800A3D40 10000006 */  b     .L800A3D5C
/* B1AEE4 800A3D44 E60C0028 */   swc1  $f12, 0x28($s0)
.L800A3D48:
/* B1AEE8 800A3D48 92050000 */  lbu   $a1, ($s0)
/* B1AEEC 800A3D4C 8E060020 */  lw    $a2, 0x20($s0)
/* B1AEF0 800A3D50 8E070024 */  lw    $a3, 0x24($s0)
/* B1AEF4 800A3D54 0C028D37 */  jal   func_800A34DC
/* B1AEF8 800A3D58 E7A00010 */   swc1  $f0, 0x10($sp)
.L800A3D5C:
/* B1AEFC 800A3D5C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A3D60:
/* B1AF00 800A3D60 8FB00020 */  lw    $s0, 0x20($sp)
/* B1AF04 800A3D64 27BD0028 */  addiu $sp, $sp, 0x28
/* B1AF08 800A3D68 03E00008 */  jr    $ra
/* B1AF0C 800A3D6C 00000000 */   nop   

glabel func_800A3D70
/* B1AF10 800A3D70 3C0E8016 */  lui   $t6, %hi(D_80160110)
/* B1AF14 800A3D74 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B1AF18 800A3D78 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1AF1C 800A3D7C AFBF0014 */  sw    $ra, 0x14($sp)
/* B1AF20 800A3D80 85CF0110 */  lh    $t7, %lo(D_80160110)($t6)
/* B1AF24 800A3D84 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B1AF28 800A3D88 44814000 */  mtc1  $at, $f8
/* B1AF2C 800A3D8C 448F2000 */  mtc1  $t7, $f4
/* B1AF30 800A3D90 C4B0001C */  lwc1  $f16, 0x1c($a1)
/* B1AF34 800A3D94 C4AA0018 */  lwc1  $f10, 0x18($a1)
/* B1AF38 800A3D98 468021A0 */  cvt.s.w $f6, $f4
/* B1AF3C 800A3D9C 46083082 */  mul.s $f2, $f6, $f8
/* B1AF40 800A3DA0 44803000 */  mtc1  $zero, $f6
/* B1AF44 800A3DA4 46028482 */  mul.s $f18, $f16, $f2
/* B1AF48 800A3DA8 46125100 */  add.s $f4, $f10, $f18
/* B1AF4C 800A3DAC E4A40018 */  swc1  $f4, 0x18($a1)
/* B1AF50 800A3DB0 C4A00018 */  lwc1  $f0, 0x18($a1)
/* B1AF54 800A3DB4 4606003C */  c.lt.s $f0, $f6
/* B1AF58 800A3DB8 00000000 */  nop   
/* B1AF5C 800A3DBC 45020006 */  bc1fl .L800A3DD8
/* B1AF60 800A3DC0 C4A20014 */   lwc1  $f2, 0x14($a1)
/* B1AF64 800A3DC4 C4A80014 */  lwc1  $f8, 0x14($a1)
/* B1AF68 800A3DC8 46080400 */  add.s $f16, $f0, $f8
/* B1AF6C 800A3DCC 10000008 */  b     .L800A3DF0
/* B1AF70 800A3DD0 E4B00018 */   swc1  $f16, 0x18($a1)
/* B1AF74 800A3DD4 C4A20014 */  lwc1  $f2, 0x14($a1)
.L800A3DD8:
/* B1AF78 800A3DD8 4600103E */  c.le.s $f2, $f0
/* B1AF7C 800A3DDC 00000000 */  nop   
/* B1AF80 800A3DE0 45000003 */  bc1f  .L800A3DF0
/* B1AF84 800A3DE4 00000000 */   nop   
/* B1AF88 800A3DE8 46020281 */  sub.s $f10, $f0, $f2
/* B1AF8C 800A3DEC E4AA0018 */  swc1  $f10, 0x18($a1)
.L800A3DF0:
/* B1AF90 800A3DF0 0C028F27 */  jal   func_800A3C9C
/* B1AF94 800A3DF4 00000000 */   nop   
/* B1AF98 800A3DF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1AF9C 800A3DFC 27BD0018 */  addiu $sp, $sp, 0x18
/* B1AFA0 800A3E00 00001025 */  move  $v0, $zero
/* B1AFA4 800A3E04 03E00008 */  jr    $ra
/* B1AFA8 800A3E08 00000000 */   nop   

glabel func_800A3E0C
/* B1AFAC 800A3E0C 3C0E8016 */  lui   $t6, %hi(D_80160110)
/* B1AFB0 800A3E10 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B1AFB4 800A3E14 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1AFB8 800A3E18 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1AFBC 800A3E1C 85CF0110 */  lh    $t7, %lo(D_80160110)($t6)
/* B1AFC0 800A3E20 C4A00018 */  lwc1  $f0, 0x18($a1)
/* B1AFC4 800A3E24 C4AC0010 */  lwc1  $f12, 0x10($a1)
/* B1AFC8 800A3E28 448F2000 */  mtc1  $t7, $f4
/* B1AFCC 800A3E2C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B1AFD0 800A3E30 46006032 */  c.eq.s $f12, $f0
/* B1AFD4 800A3E34 44814000 */  mtc1  $at, $f8
/* B1AFD8 800A3E38 468021A0 */  cvt.s.w $f6, $f4
/* B1AFDC 800A3E3C 46083382 */  mul.s $f14, $f6, $f8
/* B1AFE0 800A3E40 45020006 */  bc1fl .L800A3E5C
/* B1AFE4 800A3E44 C4A2001C */   lwc1  $f2, 0x1c($a1)
/* B1AFE8 800A3E48 0C028F27 */  jal   func_800A3C9C
/* B1AFEC 800A3E4C 00000000 */   nop   
/* B1AFF0 800A3E50 10000021 */  b     .L800A3ED8
/* B1AFF4 800A3E54 24020001 */   li    $v0, 1
/* B1AFF8 800A3E58 C4A2001C */  lwc1  $f2, 0x1c($a1)
.L800A3E5C:
/* B1AFFC 800A3E5C 44808000 */  mtc1  $zero, $f16
/* B1B000 800A3E60 460E1282 */  mul.s $f10, $f2, $f14
/* B1B004 800A3E64 460A0480 */  add.s $f18, $f0, $f10
/* B1B008 800A3E68 E4B20018 */  swc1  $f18, 0x18($a1)
/* B1B00C 800A3E6C C4A00018 */  lwc1  $f0, 0x18($a1)
/* B1B010 800A3E70 460C0101 */  sub.s $f4, $f0, $f12
/* B1B014 800A3E74 46022182 */  mul.s $f6, $f4, $f2
/* B1B018 800A3E78 4606803C */  c.lt.s $f16, $f6
/* B1B01C 800A3E7C 00000000 */  nop   
/* B1B020 800A3E80 45020004 */  bc1fl .L800A3E94
/* B1B024 800A3E84 4610003C */   c.lt.s $f0, $f16
/* B1B028 800A3E88 10000010 */  b     .L800A3ECC
/* B1B02C 800A3E8C E4AC0018 */   swc1  $f12, 0x18($a1)
/* B1B030 800A3E90 4610003C */  c.lt.s $f0, $f16
.L800A3E94:
/* B1B034 800A3E94 00000000 */  nop   
/* B1B038 800A3E98 45020006 */  bc1fl .L800A3EB4
/* B1B03C 800A3E9C C4A20014 */   lwc1  $f2, 0x14($a1)
/* B1B040 800A3EA0 C4A80014 */  lwc1  $f8, 0x14($a1)
/* B1B044 800A3EA4 46080280 */  add.s $f10, $f0, $f8
/* B1B048 800A3EA8 10000008 */  b     .L800A3ECC
/* B1B04C 800A3EAC E4AA0018 */   swc1  $f10, 0x18($a1)
/* B1B050 800A3EB0 C4A20014 */  lwc1  $f2, 0x14($a1)
.L800A3EB4:
/* B1B054 800A3EB4 4600103E */  c.le.s $f2, $f0
/* B1B058 800A3EB8 00000000 */  nop   
/* B1B05C 800A3EBC 45000003 */  bc1f  .L800A3ECC
/* B1B060 800A3EC0 00000000 */   nop   
/* B1B064 800A3EC4 46020481 */  sub.s $f18, $f0, $f2
/* B1B068 800A3EC8 E4B20018 */  swc1  $f18, 0x18($a1)
.L800A3ECC:
/* B1B06C 800A3ECC 0C028F27 */  jal   func_800A3C9C
/* B1B070 800A3ED0 00000000 */   nop   
/* B1B074 800A3ED4 00001025 */  move  $v0, $zero
.L800A3ED8:
/* B1B078 800A3ED8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1B07C 800A3EDC 27BD0018 */  addiu $sp, $sp, 0x18
/* B1B080 800A3EE0 03E00008 */  jr    $ra
/* B1B084 800A3EE4 00000000 */   nop   

glabel func_800A3EE8
/* B1B088 800A3EE8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1B08C 800A3EEC 44810000 */  mtc1  $at, $f0
/* B1B090 800A3EF0 44866000 */  mtc1  $a2, $f12
/* B1B094 800A3EF4 AFA40000 */  sw    $a0, ($sp)
/* B1B098 800A3EF8 E4A00028 */  swc1  $f0, 0x28($a1)
/* B1B09C 800A3EFC 460C0103 */  div.s $f4, $f0, $f12
/* B1B0A0 800A3F00 03E00008 */  jr    $ra
/* B1B0A4 800A3F04 E4A4002C */   swc1  $f4, 0x2c($a1)

glabel func_800A3F08
/* B1B0A8 800A3F08 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B0AC 800A3F0C C7AC0044 */  lwc1  $f12, 0x44($sp)
/* B1B0B0 800A3F10 44802000 */  mtc1  $zero, $f4
/* B1B0B4 800A3F14 93AE0043 */  lbu   $t6, 0x43($sp)
/* B1B0B8 800A3F18 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B0BC 800A3F1C 46046032 */  c.eq.s $f12, $f4
/* B1B0C0 800A3F20 AFB10020 */  sw    $s1, 0x20($sp)
/* B1B0C4 800A3F24 AFB0001C */  sw    $s0, 0x1c($sp)
/* B1B0C8 800A3F28 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B0CC 800A3F2C AFA70034 */  sw    $a3, 0x34($sp)
/* B1B0D0 800A3F30 00A08025 */  move  $s0, $a1
/* B1B0D4 800A3F34 00C08825 */  move  $s1, $a2
/* B1B0D8 800A3F38 4501002D */  bc1t  .L800A3FF0
/* B1B0DC 800A3F3C A0AE0001 */   sb    $t6, 1($a1)
/* B1B0E0 800A3F40 8CAF0008 */  lw    $t7, 8($a1)
/* B1B0E4 800A3F44 C7A60038 */  lwc1  $f6, 0x38($sp)
/* B1B0E8 800A3F48 54CF0007 */  bnel  $a2, $t7, .L800A3F68
/* B1B0EC 800A3F4C 44805000 */   mtc1  $zero, $f10
/* B1B0F0 800A3F50 C4A80018 */  lwc1  $f8, 0x18($a1)
/* B1B0F4 800A3F54 46083032 */  c.eq.s $f6, $f8
/* B1B0F8 800A3F58 00000000 */  nop   
/* B1B0FC 800A3F5C 45010024 */  bc1t  .L800A3FF0
/* B1B100 800A3F60 00000000 */   nop   
/* B1B104 800A3F64 44805000 */  mtc1  $zero, $f10
.L800A3F68:
/* B1B108 800A3F68 3C18800A */  lui   $t8, %hi(func_800A3BE4) # $t8, 0x800a
/* B1B10C 800A3F6C 02002025 */  move  $a0, $s0
/* B1B110 800A3F70 460A603C */  c.lt.s $f12, $f10
/* B1B114 800A3F74 27183BE4 */  addiu $t8, %lo(func_800A3BE4) # addiu $t8, $t8, 0x3be4
/* B1B118 800A3F78 4502000B */  bc1fl .L800A3FA8
/* B1B11C 800A3F7C AE180030 */   sw    $t8, 0x30($s0)
/* B1B120 800A3F80 0C028EE3 */  jal   func_800A3B8C
/* B1B124 800A3F84 E7AC0044 */   swc1  $f12, 0x44($sp)
/* B1B128 800A3F88 02002025 */  move  $a0, $s0
/* B1B12C 800A3F8C 8E050024 */  lw    $a1, 0x24($s0)
/* B1B130 800A3F90 0C0295DD */  jal   func_800A5774
/* B1B134 800A3F94 8E060020 */   lw    $a2, 0x20($s0)
/* B1B138 800A3F98 C7AC0044 */  lwc1  $f12, 0x44($sp)
/* B1B13C 800A3F9C 1000000D */  b     .L800A3FD4
/* B1B140 800A3FA0 46006307 */   neg.s $f12, $f12
/* B1B144 800A3FA4 AE180030 */  sw    $t8, 0x30($s0)
.L800A3FA8:
/* B1B148 800A3FA8 C7B00038 */  lwc1  $f16, 0x38($sp)
/* B1B14C 800A3FAC 8E080024 */  lw    $t0, 0x24($s0)
/* B1B150 800A3FB0 92070000 */  lbu   $a3, ($s0)
/* B1B154 800A3FB4 4600848D */  trunc.w.s $f18, $f16
/* B1B158 800A3FB8 E7AC0044 */  swc1  $f12, 0x44($sp)
/* B1B15C 800A3FBC 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B160 800A3FC0 02202825 */  move  $a1, $s1
/* B1B164 800A3FC4 44069000 */  mfc1  $a2, $f18
/* B1B168 800A3FC8 0C028CDB */  jal   func_800A336C
/* B1B16C 800A3FCC AFA80010 */   sw    $t0, 0x10($sp)
/* B1B170 800A3FD0 C7AC0044 */  lwc1  $f12, 0x44($sp)
.L800A3FD4:
/* B1B174 800A3FD4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1B178 800A3FD8 44810000 */  mtc1  $at, $f0
/* B1B17C 800A3FDC 00000000 */  nop   
/* B1B180 800A3FE0 460C0103 */  div.s $f4, $f0, $f12
/* B1B184 800A3FE4 E6000028 */  swc1  $f0, 0x28($s0)
/* B1B188 800A3FE8 10000010 */  b     .L800A402C
/* B1B18C 800A3FEC E604002C */   swc1  $f4, 0x2c($s0)
.L800A3FF0:
/* B1B190 800A3FF0 0C028EE3 */  jal   func_800A3B8C
/* B1B194 800A3FF4 02002025 */   move  $a0, $s0
/* B1B198 800A3FF8 C7A60038 */  lwc1  $f6, 0x38($sp)
/* B1B19C 800A3FFC 8E0A0020 */  lw    $t2, 0x20($s0)
/* B1B1A0 800A4000 92070000 */  lbu   $a3, ($s0)
/* B1B1A4 800A4004 4600320D */  trunc.w.s $f8, $f6
/* B1B1A8 800A4008 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B1AC 800A400C 02202825 */  move  $a1, $s1
/* B1B1B0 800A4010 AFAA0010 */  sw    $t2, 0x10($sp)
/* B1B1B4 800A4014 44064000 */  mfc1  $a2, $f8
/* B1B1B8 800A4018 0C028CDB */  jal   func_800A336C
/* B1B1BC 800A401C 00000000 */   nop   
/* B1B1C0 800A4020 44805000 */  mtc1  $zero, $f10
/* B1B1C4 800A4024 00000000 */  nop   
/* B1B1C8 800A4028 E60A0028 */  swc1  $f10, 0x28($s0)
.L800A402C:
/* B1B1CC 800A402C AE110008 */  sw    $s1, 8($s0)
/* B1B1D0 800A4030 C7B00038 */  lwc1  $f16, 0x38($sp)
/* B1B1D4 800A4034 02202025 */  move  $a0, $s1
/* B1B1D8 800A4038 E610000C */  swc1  $f16, 0xc($s0)
/* B1B1DC 800A403C C7B20038 */  lwc1  $f18, 0x38($sp)
/* B1B1E0 800A4040 E6120018 */  swc1  $f18, 0x18($s0)
/* B1B1E4 800A4044 C7A4003C */  lwc1  $f4, 0x3c($sp)
/* B1B1E8 800A4048 0C0287F2 */  jal   func_800A1FC8
/* B1B1EC 800A404C E6040010 */   swc1  $f4, 0x10($s0)
/* B1B1F0 800A4050 44823000 */  mtc1  $v0, $f6
/* B1B1F4 800A4054 00000000 */  nop   
/* B1B1F8 800A4058 46803220 */  cvt.s.w $f8, $f6
/* B1B1FC 800A405C E6080014 */  swc1  $f8, 0x14($s0)
/* B1B200 800A4060 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* B1B204 800A4064 E60A001C */  swc1  $f10, 0x1c($s0)
/* B1B208 800A4068 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B20C 800A406C 8FB10020 */  lw    $s1, 0x20($sp)
/* B1B210 800A4070 8FB0001C */  lw    $s0, 0x1c($sp)
/* B1B214 800A4074 03E00008 */  jr    $ra
/* B1B218 800A4078 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800A407C
/* B1B21C 800A407C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B220 800A4080 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B224 800A4084 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B228 800A4088 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1B22C 800A408C AFA60030 */  sw    $a2, 0x30($sp)
/* B1B230 800A4090 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1B234 800A4094 00C02025 */   move  $a0, $a2
/* B1B238 800A4098 44822000 */  mtc1  $v0, $f4
/* B1B23C 800A409C 44800000 */  mtc1  $zero, $f0
/* B1B240 800A40A0 240E0002 */  li    $t6, 2
/* B1B244 800A40A4 468021A0 */  cvt.s.w $f6, $f4
/* B1B248 800A40A8 AFAE0018 */  sw    $t6, 0x18($sp)
/* B1B24C 800A40AC 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B250 800A40B0 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1B254 800A40B4 8FA60030 */  lw    $a2, 0x30($sp)
/* B1B258 800A40B8 3C073F80 */  lui   $a3, 0x3f80
/* B1B25C 800A40BC E7A60014 */  swc1  $f6, 0x14($sp)
/* B1B260 800A40C0 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1B264 800A40C4 0C028FC2 */  jal   func_800A3F08
/* B1B268 800A40C8 E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1B26C 800A40CC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B270 800A40D0 27BD0028 */  addiu $sp, $sp, 0x28
/* B1B274 800A40D4 03E00008 */  jr    $ra
/* B1B278 800A40D8 00000000 */   nop   

glabel func_800A40DC
/* B1B27C 800A40DC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B280 800A40E0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B284 800A40E4 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B288 800A40E8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1B28C 800A40EC AFA60030 */  sw    $a2, 0x30($sp)
/* B1B290 800A40F0 AFA70034 */  sw    $a3, 0x34($sp)
/* B1B294 800A40F4 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1B298 800A40F8 00C02025 */   move  $a0, $a2
/* B1B29C 800A40FC 44822000 */  mtc1  $v0, $f4
/* B1B2A0 800A4100 44800000 */  mtc1  $zero, $f0
/* B1B2A4 800A4104 240E0002 */  li    $t6, 2
/* B1B2A8 800A4108 468021A0 */  cvt.s.w $f6, $f4
/* B1B2AC 800A410C AFAE0018 */  sw    $t6, 0x18($sp)
/* B1B2B0 800A4110 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B2B4 800A4114 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1B2B8 800A4118 8FA60030 */  lw    $a2, 0x30($sp)
/* B1B2BC 800A411C 8FA70034 */  lw    $a3, 0x34($sp)
/* B1B2C0 800A4120 E7A60014 */  swc1  $f6, 0x14($sp)
/* B1B2C4 800A4124 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1B2C8 800A4128 0C028FC2 */  jal   func_800A3F08
/* B1B2CC 800A412C E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1B2D0 800A4130 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B2D4 800A4134 27BD0028 */  addiu $sp, $sp, 0x28
/* B1B2D8 800A4138 03E00008 */  jr    $ra
/* B1B2DC 800A413C 00000000 */   nop   

glabel func_800A4140
/* B1B2E0 800A4140 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B2E4 800A4144 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B2E8 800A4148 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B2EC 800A414C AFA5002C */  sw    $a1, 0x2c($sp)
/* B1B2F0 800A4150 AFA60030 */  sw    $a2, 0x30($sp)
/* B1B2F4 800A4154 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1B2F8 800A4158 00C02025 */   move  $a0, $a2
/* B1B2FC 800A415C 44822000 */  mtc1  $v0, $f4
/* B1B300 800A4160 44800000 */  mtc1  $zero, $f0
/* B1B304 800A4164 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B308 800A4168 468021A0 */  cvt.s.w $f6, $f4
/* B1B30C 800A416C 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1B310 800A4170 8FA60030 */  lw    $a2, 0x30($sp)
/* B1B314 800A4174 3C073F80 */  lui   $a3, 0x3f80
/* B1B318 800A4178 AFA00018 */  sw    $zero, 0x18($sp)
/* B1B31C 800A417C E7A00010 */  swc1  $f0, 0x10($sp)
/* B1B320 800A4180 E7A60014 */  swc1  $f6, 0x14($sp)
/* B1B324 800A4184 0C028FC2 */  jal   func_800A3F08
/* B1B328 800A4188 E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1B32C 800A418C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B330 800A4190 27BD0028 */  addiu $sp, $sp, 0x28
/* B1B334 800A4194 03E00008 */  jr    $ra
/* B1B338 800A4198 00000000 */   nop   

glabel func_800A419C
/* B1B33C 800A419C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B340 800A41A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B344 800A41A4 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B348 800A41A8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1B34C 800A41AC AFA60030 */  sw    $a2, 0x30($sp)
/* B1B350 800A41B0 AFA70034 */  sw    $a3, 0x34($sp)
/* B1B354 800A41B4 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1B358 800A41B8 00C02025 */   move  $a0, $a2
/* B1B35C 800A41BC 44822000 */  mtc1  $v0, $f4
/* B1B360 800A41C0 44800000 */  mtc1  $zero, $f0
/* B1B364 800A41C4 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B368 800A41C8 468021A0 */  cvt.s.w $f6, $f4
/* B1B36C 800A41CC 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1B370 800A41D0 8FA60030 */  lw    $a2, 0x30($sp)
/* B1B374 800A41D4 8FA70034 */  lw    $a3, 0x34($sp)
/* B1B378 800A41D8 AFA00018 */  sw    $zero, 0x18($sp)
/* B1B37C 800A41DC E7A00010 */  swc1  $f0, 0x10($sp)
/* B1B380 800A41E0 E7A60014 */  swc1  $f6, 0x14($sp)
/* B1B384 800A41E4 0C028FC2 */  jal   func_800A3F08
/* B1B388 800A41E8 E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1B38C 800A41EC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B390 800A41F0 27BD0028 */  addiu $sp, $sp, 0x28
/* B1B394 800A41F4 03E00008 */  jr    $ra
/* B1B398 800A41F8 00000000 */   nop   

glabel func_800A41FC
/* B1B39C 800A41FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1B3A0 800A4200 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1B3A4 800A4204 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1B3A8 800A4208 00A07025 */  move  $t6, $a1
/* B1B3AC 800A420C 8DC60024 */  lw    $a2, 0x24($t6)
/* B1B3B0 800A4210 8DC70020 */  lw    $a3, 0x20($t6)
/* B1B3B4 800A4214 0C028D1E */  jal   func_800A3478
/* B1B3B8 800A4218 90A50000 */   lbu   $a1, ($a1)
/* B1B3BC 800A421C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1B3C0 800A4220 27BD0018 */  addiu $sp, $sp, 0x18
/* B1B3C4 800A4224 03E00008 */  jr    $ra
/* B1B3C8 800A4228 00000000 */   nop   

glabel func_800A422C
/* B1B3CC 800A422C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1B3D0 800A4230 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1B3D4 800A4234 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1B3D8 800A4238 00A07025 */  move  $t6, $a1
/* B1B3DC 800A423C 8DC60020 */  lw    $a2, 0x20($t6)
/* B1B3E0 800A4240 8DC70024 */  lw    $a3, 0x24($t6)
/* B1B3E4 800A4244 0C028D1E */  jal   func_800A3478
/* B1B3E8 800A4248 90A50000 */   lbu   $a1, ($a1)
/* B1B3EC 800A424C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1B3F0 800A4250 27BD0018 */  addiu $sp, $sp, 0x18
/* B1B3F4 800A4254 03E00008 */  jr    $ra
/* B1B3F8 800A4258 00000000 */   nop   

glabel func_800A425C
/* B1B3FC 800A425C 44876000 */  mtc1  $a3, $f12
/* B1B400 800A4260 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B404 800A4264 AFA50024 */  sw    $a1, 0x24($sp)
/* B1B408 800A4268 4600610D */  trunc.w.s $f4, $f12
/* B1B40C 800A426C 8FAF0024 */  lw    $t7, 0x24($sp)
/* B1B410 800A4270 AFA60028 */  sw    $a2, 0x28($sp)
/* B1B414 800A4274 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B418 800A4278 8DF80024 */  lw    $t8, 0x24($t7)
/* B1B41C 800A427C 00C02825 */  move  $a1, $a2
/* B1B420 800A4280 44062000 */  mfc1  $a2, $f4
/* B1B424 800A4284 91E70000 */  lbu   $a3, ($t7)
/* B1B428 800A4288 0C028CDB */  jal   func_800A336C
/* B1B42C 800A428C AFB80010 */   sw    $t8, 0x10($sp)
/* B1B430 800A4290 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1B434 800A4294 27BD0020 */  addiu $sp, $sp, 0x20
/* B1B438 800A4298 03E00008 */  jr    $ra
/* B1B43C 800A429C 00000000 */   nop   

glabel func_800A42A0
/* B1B440 800A42A0 44876000 */  mtc1  $a3, $f12
/* B1B444 800A42A4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B448 800A42A8 AFA50024 */  sw    $a1, 0x24($sp)
/* B1B44C 800A42AC 4600610D */  trunc.w.s $f4, $f12
/* B1B450 800A42B0 8FAF0024 */  lw    $t7, 0x24($sp)
/* B1B454 800A42B4 AFA60028 */  sw    $a2, 0x28($sp)
/* B1B458 800A42B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B45C 800A42BC 8DF80020 */  lw    $t8, 0x20($t7)
/* B1B460 800A42C0 00C02825 */  move  $a1, $a2
/* B1B464 800A42C4 44062000 */  mfc1  $a2, $f4
/* B1B468 800A42C8 91E70000 */  lbu   $a3, ($t7)
/* B1B46C 800A42CC 0C028CDB */  jal   func_800A336C
/* B1B470 800A42D0 AFB80010 */   sw    $t8, 0x10($sp)
/* B1B474 800A42D4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1B478 800A42D8 27BD0020 */  addiu $sp, $sp, 0x20
/* B1B47C 800A42DC 03E00008 */  jr    $ra
/* B1B480 800A42E0 00000000 */   nop   

glabel func_800A42E4
/* B1B484 800A42E4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B488 800A42E8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B48C 800A42EC AFA50024 */  sw    $a1, 0x24($sp)
/* B1B490 800A42F0 00A07025 */  move  $t6, $a1
/* B1B494 800A42F4 44866000 */  mtc1  $a2, $f12
/* B1B498 800A42F8 8DC60020 */  lw    $a2, 0x20($t6)
/* B1B49C 800A42FC 8DC70024 */  lw    $a3, 0x24($t6)
/* B1B4A0 800A4300 90A50000 */  lbu   $a1, ($a1)
/* B1B4A4 800A4304 0C028D37 */  jal   func_800A34DC
/* B1B4A8 800A4308 E7AC0010 */   swc1  $f12, 0x10($sp)
/* B1B4AC 800A430C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1B4B0 800A4310 27BD0020 */  addiu $sp, $sp, 0x20
/* B1B4B4 800A4314 03E00008 */  jr    $ra
/* B1B4B8 800A4318 00000000 */   nop   

glabel func_800A431C
/* B1B4BC 800A431C 44876000 */  mtc1  $a3, $f12
/* B1B4C0 800A4320 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1B4C4 800A4324 AFB00020 */  sw    $s0, 0x20($sp)
/* B1B4C8 800A4328 4600610D */  trunc.w.s $f4, $f12
/* B1B4CC 800A432C 00A08025 */  move  $s0, $a1
/* B1B4D0 800A4330 AFA60038 */  sw    $a2, 0x38($sp)
/* B1B4D4 800A4334 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B4D8 800A4338 AFA40030 */  sw    $a0, 0x30($sp)
/* B1B4DC 800A433C 8E0F0020 */  lw    $t7, 0x20($s0)
/* B1B4E0 800A4340 00C02825 */  move  $a1, $a2
/* B1B4E4 800A4344 44062000 */  mfc1  $a2, $f4
/* B1B4E8 800A4348 92070000 */  lbu   $a3, ($s0)
/* B1B4EC 800A434C 0C028CDB */  jal   func_800A336C
/* B1B4F0 800A4350 AFAF0010 */   sw    $t7, 0x10($sp)
/* B1B4F4 800A4354 C7A60044 */  lwc1  $f6, 0x44($sp)
/* B1B4F8 800A4358 8FA2004C */  lw    $v0, 0x4c($sp)
/* B1B4FC 800A435C 2401FFF0 */  li    $at, -16
/* B1B500 800A4360 4600320D */  trunc.w.s $f8, $f6
/* B1B504 800A4364 2442000F */  addiu $v0, $v0, 0xf
/* B1B508 800A4368 00411024 */  and   $v0, $v0, $at
/* B1B50C 800A436C 92070000 */  lbu   $a3, ($s0)
/* B1B510 800A4370 44064000 */  mfc1  $a2, $f8
/* B1B514 800A4374 AFA20028 */  sw    $v0, 0x28($sp)
/* B1B518 800A4378 AFA20010 */  sw    $v0, 0x10($sp)
/* B1B51C 800A437C 8FA40030 */  lw    $a0, 0x30($sp)
/* B1B520 800A4380 0C028CDB */  jal   func_800A336C
/* B1B524 800A4384 8FA50040 */   lw    $a1, 0x40($sp)
/* B1B528 800A4388 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* B1B52C 800A438C 92050000 */  lbu   $a1, ($s0)
/* B1B530 800A4390 8E060020 */  lw    $a2, 0x20($s0)
/* B1B534 800A4394 8FA40030 */  lw    $a0, 0x30($sp)
/* B1B538 800A4398 8FA70028 */  lw    $a3, 0x28($sp)
/* B1B53C 800A439C 0C028D37 */  jal   func_800A34DC
/* B1B540 800A43A0 E7AA0010 */   swc1  $f10, 0x10($sp)
/* B1B544 800A43A4 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B548 800A43A8 8FB00020 */  lw    $s0, 0x20($sp)
/* B1B54C 800A43AC 27BD0030 */  addiu $sp, $sp, 0x30
/* B1B550 800A43B0 03E00008 */  jr    $ra
/* B1B554 800A43B4 00000000 */   nop   

glabel func_800A43B8
/* B1B558 800A43B8 44876000 */  mtc1  $a3, $f12
/* B1B55C 800A43BC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1B560 800A43C0 AFB00020 */  sw    $s0, 0x20($sp)
/* B1B564 800A43C4 4600610D */  trunc.w.s $f4, $f12
/* B1B568 800A43C8 00A08025 */  move  $s0, $a1
/* B1B56C 800A43CC AFA60038 */  sw    $a2, 0x38($sp)
/* B1B570 800A43D0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B574 800A43D4 AFA40030 */  sw    $a0, 0x30($sp)
/* B1B578 800A43D8 8E0F0024 */  lw    $t7, 0x24($s0)
/* B1B57C 800A43DC 00C02825 */  move  $a1, $a2
/* B1B580 800A43E0 44062000 */  mfc1  $a2, $f4
/* B1B584 800A43E4 92070000 */  lbu   $a3, ($s0)
/* B1B588 800A43E8 0C028CDB */  jal   func_800A336C
/* B1B58C 800A43EC AFAF0010 */   sw    $t7, 0x10($sp)
/* B1B590 800A43F0 C7A60044 */  lwc1  $f6, 0x44($sp)
/* B1B594 800A43F4 8FA2004C */  lw    $v0, 0x4c($sp)
/* B1B598 800A43F8 2401FFF0 */  li    $at, -16
/* B1B59C 800A43FC 4600320D */  trunc.w.s $f8, $f6
/* B1B5A0 800A4400 2442000F */  addiu $v0, $v0, 0xf
/* B1B5A4 800A4404 00411024 */  and   $v0, $v0, $at
/* B1B5A8 800A4408 92070000 */  lbu   $a3, ($s0)
/* B1B5AC 800A440C 44064000 */  mfc1  $a2, $f8
/* B1B5B0 800A4410 AFA20028 */  sw    $v0, 0x28($sp)
/* B1B5B4 800A4414 AFA20010 */  sw    $v0, 0x10($sp)
/* B1B5B8 800A4418 8FA40030 */  lw    $a0, 0x30($sp)
/* B1B5BC 800A441C 0C028CDB */  jal   func_800A336C
/* B1B5C0 800A4420 8FA50040 */   lw    $a1, 0x40($sp)
/* B1B5C4 800A4424 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* B1B5C8 800A4428 92050000 */  lbu   $a1, ($s0)
/* B1B5CC 800A442C 8E060024 */  lw    $a2, 0x24($s0)
/* B1B5D0 800A4430 8FA40030 */  lw    $a0, 0x30($sp)
/* B1B5D4 800A4434 8FA70028 */  lw    $a3, 0x28($sp)
/* B1B5D8 800A4438 0C028D37 */  jal   func_800A34DC
/* B1B5DC 800A443C E7AA0010 */   swc1  $f10, 0x10($sp)
/* B1B5E0 800A4440 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B5E4 800A4444 8FB00020 */  lw    $s0, 0x20($sp)
/* B1B5E8 800A4448 27BD0030 */  addiu $sp, $sp, 0x30
/* B1B5EC 800A444C 03E00008 */  jr    $ra
/* B1B5F0 800A4450 00000000 */   nop   

glabel func_800A4454
/* B1B5F4 800A4454 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1B5F8 800A4458 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1B5FC 800A445C 240E0002 */  li    $t6, 2
/* B1B600 800A4460 0C028EE3 */  jal   func_800A3B8C
/* B1B604 800A4464 A08E0001 */   sb    $t6, 1($a0)
/* B1B608 800A4468 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1B60C 800A446C 27BD0018 */  addiu $sp, $sp, 0x18
/* B1B610 800A4470 03E00008 */  jr    $ra
/* B1B614 800A4474 00000000 */   nop   

glabel func_800A4478
/* B1B618 800A4478 44866000 */  mtc1  $a2, $f12
/* B1B61C 800A447C C484001C */  lwc1  $f4, 0x1c($a0)
/* B1B620 800A4480 C4860018 */  lwc1  $f6, 0x18($a0)
/* B1B624 800A4484 44808000 */  mtc1  $zero, $f16
/* B1B628 800A4488 460C2002 */  mul.s $f0, $f4, $f12
/* B1B62C 800A448C 44857000 */  mtc1  $a1, $f14
/* B1B630 800A4490 00001025 */  move  $v0, $zero
/* B1B634 800A4494 46003081 */  sub.s $f2, $f6, $f0
/* B1B638 800A4498 4610103C */  c.lt.s $f2, $f16
/* B1B63C 800A449C 00000000 */  nop   
/* B1B640 800A44A0 45020005 */  bc1fl .L800A44B8
/* B1B644 800A44A4 C48C0014 */   lwc1  $f12, 0x14($a0)
/* B1B648 800A44A8 C48C0014 */  lwc1  $f12, 0x14($a0)
/* B1B64C 800A44AC 10000007 */  b     .L800A44CC
/* B1B650 800A44B0 460C1080 */   add.s $f2, $f2, $f12
/* B1B654 800A44B4 C48C0014 */  lwc1  $f12, 0x14($a0)
.L800A44B8:
/* B1B658 800A44B8 4602603E */  c.le.s $f12, $f2
/* B1B65C 800A44BC 00000000 */  nop   
/* B1B660 800A44C0 45020003 */  bc1fl .L800A44D0
/* B1B664 800A44C4 46107032 */   c.eq.s $f14, $f16
/* B1B668 800A44C8 460C1081 */  sub.s $f2, $f2, $f12
.L800A44CC:
/* B1B66C 800A44CC 46107032 */  c.eq.s $f14, $f16
.L800A44D0:
/* B1B670 800A44D0 46001200 */  add.s $f8, $f2, $f0
/* B1B674 800A44D4 45020007 */  bc1fl .L800A44F4
/* B1B678 800A44D8 460E4301 */   sub.s $f12, $f8, $f14
/* B1B67C 800A44DC 4600803C */  c.lt.s $f16, $f0
/* B1B680 800A44E0 00000000 */  nop   
/* B1B684 800A44E4 45020003 */  bc1fl .L800A44F4
/* B1B688 800A44E8 460E4301 */   sub.s $f12, $f8, $f14
/* B1B68C 800A44EC 46006386 */  mov.s $f14, $f12
/* B1B690 800A44F0 460E4301 */  sub.s $f12, $f8, $f14
.L800A44F4:
/* B1B694 800A44F4 46006282 */  mul.s $f10, $f12, $f0
/* B1B698 800A44F8 460A803E */  c.le.s $f16, $f10
/* B1B69C 800A44FC 00000000 */  nop   
/* B1B6A0 800A4500 45000009 */  bc1f  .L800A4528
/* B1B6A4 800A4504 00000000 */   nop   
/* B1B6A8 800A4508 46006481 */  sub.s $f18, $f12, $f0
/* B1B6AC 800A450C 46009102 */  mul.s $f4, $f18, $f0
/* B1B6B0 800A4510 4610203C */  c.lt.s $f4, $f16
/* B1B6B4 800A4514 00000000 */  nop   
/* B1B6B8 800A4518 45000003 */  bc1f  .L800A4528
/* B1B6BC 800A451C 00000000 */   nop   
/* B1B6C0 800A4520 03E00008 */  jr    $ra
/* B1B6C4 800A4524 24020001 */   li    $v0, 1
.L800A4528:
/* B1B6C8 800A4528 03E00008 */  jr    $ra
/* B1B6CC 800A452C 00000000 */   nop   

glabel func_800A4530
/* B1B6D0 800A4530 3C0E8016 */  lui   $t6, %hi(D_80160110)
/* B1B6D4 800A4534 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B1B6D8 800A4538 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1B6DC 800A453C AFBF0014 */  sw    $ra, 0x14($sp)
/* B1B6E0 800A4540 85CF0110 */  lh    $t7, %lo(D_80160110)($t6)
/* B1B6E4 800A4544 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B1B6E8 800A4548 44814000 */  mtc1  $at, $f8
/* B1B6EC 800A454C 448F2000 */  mtc1  $t7, $f4
/* B1B6F0 800A4550 44856000 */  mtc1  $a1, $f12
/* B1B6F4 800A4554 468021A0 */  cvt.s.w $f6, $f4
/* B1B6F8 800A4558 44056000 */  mfc1  $a1, $f12
/* B1B6FC 800A455C 46083002 */  mul.s $f0, $f6, $f8
/* B1B700 800A4560 44060000 */  mfc1  $a2, $f0
/* B1B704 800A4564 0C02911E */  jal   func_800A4478
/* B1B708 800A4568 00000000 */   nop   
/* B1B70C 800A456C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1B710 800A4570 27BD0018 */  addiu $sp, $sp, 0x18
/* B1B714 800A4574 03E00008 */  jr    $ra
/* B1B718 800A4578 00000000 */   nop   

glabel SkelAnime_Init
/* B1B71C 800A457C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B720 800A4580 AFA40020 */  sw    $a0, 0x20($sp)
/* B1B724 800A4584 00067100 */  sll   $t6, $a2, 4
/* B1B728 800A4588 3C048016 */  lui   $a0, %hi(D_80166FA8) # $a0, 0x8016
/* B1B72C 800A458C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1B730 800A4590 24846FA8 */  addiu $a0, %lo(D_80166FA8) # addiu $a0, $a0, 0x6fa8
/* B1B734 800A4594 000FC080 */  sll   $t8, $t7, 2
/* B1B738 800A4598 0098C821 */  addu  $t9, $a0, $t8
/* B1B73C 800A459C 8F2A0000 */  lw    $t2, ($t9)
/* B1B740 800A45A0 3C0800FF */  lui   $t0, (0x00FFFFFF >> 16) # lui $t0, 0xff
/* B1B744 800A45A4 3508FFFF */  ori   $t0, (0x00FFFFFF & 0xFFFF) # ori $t0, $t0, 0xffff
/* B1B748 800A45A8 00C85824 */  and   $t3, $a2, $t0
/* B1B74C 800A45AC 3C098000 */  lui   $t1, 0x8000
/* B1B750 800A45B0 014B6021 */  addu  $t4, $t2, $t3
/* B1B754 800A45B4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B758 800A45B8 AFB00018 */  sw    $s0, 0x18($sp)
/* B1B75C 800A45BC AFA7002C */  sw    $a3, 0x2c($sp)
/* B1B760 800A45C0 01891021 */  addu  $v0, $t4, $t1
/* B1B764 800A45C4 904D0004 */  lbu   $t5, 4($v0)
/* B1B768 800A45C8 00A08025 */  move  $s0, $a1
/* B1B76C 800A45CC 24060B98 */  li    $a2, 2968
/* B1B770 800A45D0 25AE0001 */  addiu $t6, $t5, 1
/* B1B774 800A45D4 A0AE0000 */  sb    $t6, ($a1)
/* B1B778 800A45D8 8C430000 */  lw    $v1, ($v0)
/* B1B77C 800A45DC 00037900 */  sll   $t7, $v1, 4
/* B1B780 800A45E0 000FC702 */  srl   $t8, $t7, 0x1c
/* B1B784 800A45E4 0018C880 */  sll   $t9, $t8, 2
/* B1B788 800A45E8 00995021 */  addu  $t2, $a0, $t9
/* B1B78C 800A45EC 8D4B0000 */  lw    $t3, ($t2)
/* B1B790 800A45F0 00686024 */  and   $t4, $v1, $t0
/* B1B794 800A45F4 016C6821 */  addu  $t5, $t3, $t4
/* B1B798 800A45F8 01A97021 */  addu  $t6, $t5, $t1
/* B1B79C 800A45FC ACAE0004 */  sw    $t6, 4($a1)
/* B1B7A0 800A4600 8FAF0030 */  lw    $t7, 0x30($sp)
/* B1B7A4 800A4604 8FB80038 */  lw    $t8, 0x38($sp)
/* B1B7A8 800A4608 55E00016 */  bnezl $t7, .L800A4664
/* B1B7AC 800A460C 92190000 */   lbu   $t9, ($s0)
/* B1B7B0 800A4610 90A40000 */  lbu   $a0, ($a1)
/* B1B7B4 800A4614 3C058014 */  lui   $a1, %hi(D_80140464) # $a1, 0x8014
/* B1B7B8 800A4618 24A50464 */  addiu $a1, %lo(D_80140464) # addiu $a1, $a1, 0x464
/* B1B7BC 800A461C 00800821 */  addu  $at, $a0, $zero
/* B1B7C0 800A4620 00042080 */  sll   $a0, $a0, 2
/* B1B7C4 800A4624 00812023 */  subu  $a0, $a0, $at
/* B1B7C8 800A4628 0C01EBB8 */  jal   func_8007AEE0
/* B1B7CC 800A462C 00042040 */   sll   $a0, $a0, 1
/* B1B7D0 800A4630 92040000 */  lbu   $a0, ($s0)
/* B1B7D4 800A4634 3C058014 */  lui   $a1, %hi(D_80140478) # $a1, 0x8014
/* B1B7D8 800A4638 AE020020 */  sw    $v0, 0x20($s0)
/* B1B7DC 800A463C 00800821 */  addu  $at, $a0, $zero
/* B1B7E0 800A4640 00042080 */  sll   $a0, $a0, 2
/* B1B7E4 800A4644 00812023 */  subu  $a0, $a0, $at
/* B1B7E8 800A4648 00042040 */  sll   $a0, $a0, 1
/* B1B7EC 800A464C 24A50478 */  addiu $a1, %lo(D_80140478) # addiu $a1, $a1, 0x478
/* B1B7F0 800A4650 0C01EBB8 */  jal   func_8007AEE0
/* B1B7F4 800A4654 24060B99 */   li    $a2, 2969
/* B1B7F8 800A4658 1000000D */  b     .L800A4690
/* B1B7FC 800A465C AE020024 */   sw    $v0, 0x24($s0)
/* B1B800 800A4660 92190000 */  lbu   $t9, ($s0)
.L800A4664:
/* B1B804 800A4664 3C048014 */  lui   $a0, %hi(D_8014048C) # $a0, 0x8014
/* B1B808 800A4668 2484048C */  addiu $a0, %lo(D_8014048C) # addiu $a0, $a0, 0x48c
/* B1B80C 800A466C 13190004 */  beq   $t8, $t9, .L800A4680
/* B1B810 800A4670 3C058014 */   lui   $a1, %hi(D_801404B0) # $a1, 0x8014
/* B1B814 800A4674 24A504B0 */  addiu $a1, %lo(D_801404B0) # addiu $a1, $a1, 0x4b0
/* B1B818 800A4678 0C0007FC */  jal   __assert
/* B1B81C 800A467C 24060B9D */   li    $a2, 2973
.L800A4680:
/* B1B820 800A4680 8FAA0030 */  lw    $t2, 0x30($sp)
/* B1B824 800A4684 AE0A0020 */  sw    $t2, 0x20($s0)
/* B1B828 800A4688 8FAB0034 */  lw    $t3, 0x34($sp)
/* B1B82C 800A468C AE0B0024 */  sw    $t3, 0x24($s0)
.L800A4690:
/* B1B830 800A4690 8E0C0020 */  lw    $t4, 0x20($s0)
/* B1B834 800A4694 3C048014 */  lui   $a0, %hi(D_801404C4) # $a0, 0x8014
/* B1B838 800A4698 11800004 */  beqz  $t4, .L800A46AC
/* B1B83C 800A469C 00000000 */   nop   
/* B1B840 800A46A0 8E0D0024 */  lw    $t5, 0x24($s0)
/* B1B844 800A46A4 55A0000A */  bnezl $t5, .L800A46D0
/* B1B848 800A46A8 8FAE002C */   lw    $t6, 0x2c($sp)
.L800A46AC:
/* B1B84C 800A46AC 0C00084C */  jal   osSyncPrintf
/* B1B850 800A46B0 248404C4 */   addiu $a0, %lo(D_801404C4) # addiu $a0, $a0, 0x4c4
/* B1B854 800A46B4 3C048014 */  lui   $a0, %hi(D_801404CC) # $a0, 0x8014
/* B1B858 800A46B8 0C00084C */  jal   osSyncPrintf
/* B1B85C 800A46BC 248404CC */   addiu $a0, %lo(D_801404CC) # addiu $a0, $a0, 0x4cc
/* B1B860 800A46C0 3C048014 */  lui   $a0, %hi(D_801404FC) # $a0, 0x8014
/* B1B864 800A46C4 0C00084C */  jal   osSyncPrintf
/* B1B868 800A46C8 248404FC */   addiu $a0, %lo(D_801404FC) # addiu $a0, $a0, 0x4fc
/* B1B86C 800A46CC 8FAE002C */  lw    $t6, 0x2c($sp)
.L800A46D0:
/* B1B870 800A46D0 02002025 */  move  $a0, $s0
/* B1B874 800A46D4 51C00004 */  beql  $t6, $zero, .L800A46E8
/* B1B878 800A46D8 8FBF001C */   lw    $ra, 0x1c($sp)
/* B1B87C 800A46DC 0C0294BE */  jal   func_800A52F8
/* B1B880 800A46E0 01C02825 */   move  $a1, $t6
/* B1B884 800A46E4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A46E8:
/* B1B888 800A46E8 8FB00018 */  lw    $s0, 0x18($sp)
/* B1B88C 800A46EC 27BD0020 */  addiu $sp, $sp, 0x20
/* B1B890 800A46F0 03E00008 */  jr    $ra
/* B1B894 800A46F4 00000000 */   nop   

glabel func_800A46F8
/* B1B898 800A46F8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B89C 800A46FC AFA40020 */  sw    $a0, 0x20($sp)
/* B1B8A0 800A4700 00067100 */  sll   $t6, $a2, 4
/* B1B8A4 800A4704 3C048016 */  lui   $a0, %hi(D_80166FA8) # $a0, 0x8016
/* B1B8A8 800A4708 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1B8AC 800A470C 24846FA8 */  addiu $a0, %lo(D_80166FA8) # addiu $a0, $a0, 0x6fa8
/* B1B8B0 800A4710 000FC080 */  sll   $t8, $t7, 2
/* B1B8B4 800A4714 0098C821 */  addu  $t9, $a0, $t8
/* B1B8B8 800A4718 8F2A0000 */  lw    $t2, ($t9)
/* B1B8BC 800A471C 3C0800FF */  lui   $t0, (0x00FFFFFF >> 16) # lui $t0, 0xff
/* B1B8C0 800A4720 3508FFFF */  ori   $t0, (0x00FFFFFF & 0xFFFF) # ori $t0, $t0, 0xffff
/* B1B8C4 800A4724 00C85824 */  and   $t3, $a2, $t0
/* B1B8C8 800A4728 3C098000 */  lui   $t1, 0x8000
/* B1B8CC 800A472C 014B6021 */  addu  $t4, $t2, $t3
/* B1B8D0 800A4730 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B8D4 800A4734 AFB00018 */  sw    $s0, 0x18($sp)
/* B1B8D8 800A4738 AFA7002C */  sw    $a3, 0x2c($sp)
/* B1B8DC 800A473C 01891021 */  addu  $v0, $t4, $t1
/* B1B8E0 800A4740 904D0004 */  lbu   $t5, 4($v0)
/* B1B8E4 800A4744 00A08025 */  move  $s0, $a1
/* B1B8E8 800A4748 24060BE7 */  li    $a2, 3047
/* B1B8EC 800A474C 25AE0001 */  addiu $t6, $t5, 1
/* B1B8F0 800A4750 A0AE0000 */  sb    $t6, ($a1)
/* B1B8F4 800A4754 904F0008 */  lbu   $t7, 8($v0)
/* B1B8F8 800A4758 A0AF0002 */  sb    $t7, 2($a1)
/* B1B8FC 800A475C 8C430000 */  lw    $v1, ($v0)
/* B1B900 800A4760 0003C100 */  sll   $t8, $v1, 4
/* B1B904 800A4764 0018CF02 */  srl   $t9, $t8, 0x1c
/* B1B908 800A4768 00195080 */  sll   $t2, $t9, 2
/* B1B90C 800A476C 008A5821 */  addu  $t3, $a0, $t2
/* B1B910 800A4770 8D6C0000 */  lw    $t4, ($t3)
/* B1B914 800A4774 00686824 */  and   $t5, $v1, $t0
/* B1B918 800A4778 018D7021 */  addu  $t6, $t4, $t5
/* B1B91C 800A477C 01C97821 */  addu  $t7, $t6, $t1
/* B1B920 800A4780 ACAF0004 */  sw    $t7, 4($a1)
/* B1B924 800A4784 8FB80030 */  lw    $t8, 0x30($sp)
/* B1B928 800A4788 8FB90038 */  lw    $t9, 0x38($sp)
/* B1B92C 800A478C 57000016 */  bnezl $t8, .L800A47E8
/* B1B930 800A4790 920A0000 */   lbu   $t2, ($s0)
/* B1B934 800A4794 90A40000 */  lbu   $a0, ($a1)
/* B1B938 800A4798 3C058014 */  lui   $a1, %hi(D_80140500) # $a1, 0x8014
/* B1B93C 800A479C 24A50500 */  addiu $a1, %lo(D_80140500) # addiu $a1, $a1, 0x500
/* B1B940 800A47A0 00800821 */  addu  $at, $a0, $zero
/* B1B944 800A47A4 00042080 */  sll   $a0, $a0, 2
/* B1B948 800A47A8 00812023 */  subu  $a0, $a0, $at
/* B1B94C 800A47AC 0C01EBB8 */  jal   func_8007AEE0
/* B1B950 800A47B0 00042040 */   sll   $a0, $a0, 1
/* B1B954 800A47B4 92040000 */  lbu   $a0, ($s0)
/* B1B958 800A47B8 3C058014 */  lui   $a1, %hi(D_80140514) # $a1, 0x8014
/* B1B95C 800A47BC AE020020 */  sw    $v0, 0x20($s0)
/* B1B960 800A47C0 00800821 */  addu  $at, $a0, $zero
/* B1B964 800A47C4 00042080 */  sll   $a0, $a0, 2
/* B1B968 800A47C8 00812023 */  subu  $a0, $a0, $at
/* B1B96C 800A47CC 00042040 */  sll   $a0, $a0, 1
/* B1B970 800A47D0 24A50514 */  addiu $a1, %lo(D_80140514) # addiu $a1, $a1, 0x514
/* B1B974 800A47D4 0C01EBB8 */  jal   func_8007AEE0
/* B1B978 800A47D8 24060BE8 */   li    $a2, 3048
/* B1B97C 800A47DC 1000000D */  b     .L800A4814
/* B1B980 800A47E0 AE020024 */   sw    $v0, 0x24($s0)
/* B1B984 800A47E4 920A0000 */  lbu   $t2, ($s0)
.L800A47E8:
/* B1B988 800A47E8 3C048014 */  lui   $a0, %hi(D_80140528) # $a0, 0x8014
/* B1B98C 800A47EC 24840528 */  addiu $a0, %lo(D_80140528) # addiu $a0, $a0, 0x528
/* B1B990 800A47F0 132A0004 */  beq   $t9, $t2, .L800A4804
/* B1B994 800A47F4 3C058014 */   lui   $a1, %hi(D_8014054C) # $a1, 0x8014
/* B1B998 800A47F8 24A5054C */  addiu $a1, %lo(D_8014054C) # addiu $a1, $a1, 0x54c
/* B1B99C 800A47FC 0C0007FC */  jal   __assert
/* B1B9A0 800A4800 24060BEC */   li    $a2, 3052
.L800A4804:
/* B1B9A4 800A4804 8FAB0030 */  lw    $t3, 0x30($sp)
/* B1B9A8 800A4808 AE0B0020 */  sw    $t3, 0x20($s0)
/* B1B9AC 800A480C 8FAC0034 */  lw    $t4, 0x34($sp)
/* B1B9B0 800A4810 AE0C0024 */  sw    $t4, 0x24($s0)
.L800A4814:
/* B1B9B4 800A4814 8E0D0020 */  lw    $t5, 0x20($s0)
/* B1B9B8 800A4818 3C048014 */  lui   $a0, %hi(D_80140560) # $a0, 0x8014
/* B1B9BC 800A481C 11A00004 */  beqz  $t5, .L800A4830
/* B1B9C0 800A4820 00000000 */   nop   
/* B1B9C4 800A4824 8E0E0024 */  lw    $t6, 0x24($s0)
/* B1B9C8 800A4828 55C0000A */  bnezl $t6, .L800A4854
/* B1B9CC 800A482C 8FAF002C */   lw    $t7, 0x2c($sp)
.L800A4830:
/* B1B9D0 800A4830 0C00084C */  jal   osSyncPrintf
/* B1B9D4 800A4834 24840560 */   addiu $a0, %lo(D_80140560) # addiu $a0, $a0, 0x560
/* B1B9D8 800A4838 3C048014 */  lui   $a0, %hi(D_80140568) # $a0, 0x8014
/* B1B9DC 800A483C 0C00084C */  jal   osSyncPrintf
/* B1B9E0 800A4840 24840568 */   addiu $a0, %lo(D_80140568) # addiu $a0, $a0, 0x568
/* B1B9E4 800A4844 3C048014 */  lui   $a0, %hi(D_8014059C) # $a0, 0x8014
/* B1B9E8 800A4848 0C00084C */  jal   osSyncPrintf
/* B1B9EC 800A484C 2484059C */   addiu $a0, %lo(D_8014059C) # addiu $a0, $a0, 0x59c
/* B1B9F0 800A4850 8FAF002C */  lw    $t7, 0x2c($sp)
.L800A4854:
/* B1B9F4 800A4854 02002025 */  move  $a0, $s0
/* B1B9F8 800A4858 51E00004 */  beql  $t7, $zero, .L800A486C
/* B1B9FC 800A485C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B1BA00 800A4860 0C0294BE */  jal   func_800A52F8
/* B1BA04 800A4864 01E02825 */   move  $a1, $t7
/* B1BA08 800A4868 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A486C:
/* B1BA0C 800A486C 8FB00018 */  lw    $s0, 0x18($sp)
/* B1BA10 800A4870 27BD0020 */  addiu $sp, $sp, 0x20
/* B1BA14 800A4874 03E00008 */  jr    $ra
/* B1BA18 800A4878 00000000 */   nop   

glabel func_800A487C
/* B1BA1C 800A487C 00067900 */  sll   $t7, $a2, 4
/* B1BA20 800A4880 3C088016 */  lui   $t0, %hi(D_80166FA8) # $t0, 0x8016
/* B1BA24 800A4884 000FC702 */  srl   $t8, $t7, 0x1c
/* B1BA28 800A4888 25086FA8 */  addiu $t0, %lo(D_80166FA8) # addiu $t0, $t0, 0x6fa8
/* B1BA2C 800A488C 0018C880 */  sll   $t9, $t8, 2
/* B1BA30 800A4890 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1BA34 800A4894 01195821 */  addu  $t3, $t0, $t9
/* B1BA38 800A4898 8D6C0000 */  lw    $t4, ($t3)
/* B1BA3C 800A489C 3C0900FF */  lui   $t1, (0x00FFFFFF >> 16) # lui $t1, 0xff
/* B1BA40 800A48A0 3529FFFF */  ori   $t1, (0x00FFFFFF & 0xFFFF) # ori $t1, $t1, 0xffff
/* B1BA44 800A48A4 00C96824 */  and   $t5, $a2, $t1
/* B1BA48 800A48A8 3C0A8000 */  lui   $t2, 0x8000
/* B1BA4C 800A48AC 018D7821 */  addu  $t7, $t4, $t5
/* B1BA50 800A48B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1BA54 800A48B4 AFB00018 */  sw    $s0, 0x18($sp)
/* B1BA58 800A48B8 AFA40020 */  sw    $a0, 0x20($sp)
/* B1BA5C 800A48BC AFA60028 */  sw    $a2, 0x28($sp)
/* B1BA60 800A48C0 AFA7002C */  sw    $a3, 0x2c($sp)
/* B1BA64 800A48C4 01EA1021 */  addu  $v0, $t7, $t2
/* B1BA68 800A48C8 90580004 */  lbu   $t8, 4($v0)
/* B1BA6C 800A48CC 00A08025 */  move  $s0, $a1
/* B1BA70 800A48D0 24060C30 */  li    $a2, 3120
/* B1BA74 800A48D4 27190001 */  addiu $t9, $t8, 1
/* B1BA78 800A48D8 A0B90000 */  sb    $t9, ($a1)
/* B1BA7C 800A48DC 8C430000 */  lw    $v1, ($v0)
/* B1BA80 800A48E0 90A40000 */  lbu   $a0, ($a1)
/* B1BA84 800A48E4 00035900 */  sll   $t3, $v1, 4
/* B1BA88 800A48E8 000B7702 */  srl   $t6, $t3, 0x1c
/* B1BA8C 800A48EC 000E6080 */  sll   $t4, $t6, 2
/* B1BA90 800A48F0 010C6821 */  addu  $t5, $t0, $t4
/* B1BA94 800A48F4 8DAF0000 */  lw    $t7, ($t5)
/* B1BA98 800A48F8 0069C024 */  and   $t8, $v1, $t1
/* B1BA9C 800A48FC 00800821 */  addu  $at, $a0, $zero
/* B1BAA0 800A4900 01F8C821 */  addu  $t9, $t7, $t8
/* B1BAA4 800A4904 032A5821 */  addu  $t3, $t9, $t2
/* B1BAA8 800A4908 ACAB0004 */  sw    $t3, 4($a1)
/* B1BAAC 800A490C 00042080 */  sll   $a0, $a0, 2
/* B1BAB0 800A4910 00812023 */  subu  $a0, $a0, $at
/* B1BAB4 800A4914 3C058014 */  lui   $a1, %hi(D_801405A0) # $a1, 0x8014
/* B1BAB8 800A4918 24A505A0 */  addiu $a1, %lo(D_801405A0) # addiu $a1, $a1, 0x5a0
/* B1BABC 800A491C 0C01EBB8 */  jal   func_8007AEE0
/* B1BAC0 800A4920 00042040 */   sll   $a0, $a0, 1
/* B1BAC4 800A4924 92040000 */  lbu   $a0, ($s0)
/* B1BAC8 800A4928 3C058014 */  lui   $a1, %hi(D_801405B4) # $a1, 0x8014
/* B1BACC 800A492C AE020020 */  sw    $v0, 0x20($s0)
/* B1BAD0 800A4930 00800821 */  addu  $at, $a0, $zero
/* B1BAD4 800A4934 00042080 */  sll   $a0, $a0, 2
/* B1BAD8 800A4938 00812023 */  subu  $a0, $a0, $at
/* B1BADC 800A493C 00042040 */  sll   $a0, $a0, 1
/* B1BAE0 800A4940 24A505B4 */  addiu $a1, %lo(D_801405B4) # addiu $a1, $a1, 0x5b4
/* B1BAE4 800A4944 0C01EBB8 */  jal   func_8007AEE0
/* B1BAE8 800A4948 24060C31 */   li    $a2, 3121
/* B1BAEC 800A494C 8E0E0020 */  lw    $t6, 0x20($s0)
/* B1BAF0 800A4950 AE020024 */  sw    $v0, 0x24($s0)
/* B1BAF4 800A4954 3C048014 */  lui   $a0, %hi(D_801405C8) # $a0, 0x8014
/* B1BAF8 800A4958 11C00003 */  beqz  $t6, .L800A4968
/* B1BAFC 800A495C 00000000 */   nop   
/* B1BB00 800A4960 5440000A */  bnezl $v0, .L800A498C
/* B1BB04 800A4964 8FA5002C */   lw    $a1, 0x2c($sp)
.L800A4968:
/* B1BB08 800A4968 0C00084C */  jal   osSyncPrintf
/* B1BB0C 800A496C 248405C8 */   addiu $a0, %lo(D_801405C8) # addiu $a0, $a0, 0x5c8
/* B1BB10 800A4970 3C048014 */  lui   $a0, %hi(D_801405D0) # $a0, 0x8014
/* B1BB14 800A4974 0C00084C */  jal   osSyncPrintf
/* B1BB18 800A4978 248405D0 */   addiu $a0, %lo(D_801405D0) # addiu $a0, $a0, 0x5d0
/* B1BB1C 800A497C 3C048014 */  lui   $a0, %hi(D_80140604) # $a0, 0x8014
/* B1BB20 800A4980 0C00084C */  jal   osSyncPrintf
/* B1BB24 800A4984 24840604 */   addiu $a0, %lo(D_80140604) # addiu $a0, $a0, 0x604
/* B1BB28 800A4988 8FA5002C */  lw    $a1, 0x2c($sp)
.L800A498C:
/* B1BB2C 800A498C 50A00004 */  beql  $a1, $zero, .L800A49A0
/* B1BB30 800A4990 8FBF001C */   lw    $ra, 0x1c($sp)
/* B1BB34 800A4994 0C0294BE */  jal   func_800A52F8
/* B1BB38 800A4998 02002025 */   move  $a0, $s0
/* B1BB3C 800A499C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A49A0:
/* B1BB40 800A49A0 8FB00018 */  lw    $s0, 0x18($sp)
/* B1BB44 800A49A4 27BD0020 */  addiu $sp, $sp, 0x20
/* B1BB48 800A49A8 03E00008 */  jr    $ra
/* B1BB4C 800A49AC 00000000 */   nop   

glabel func_800A49B0
/* B1BB50 800A49B0 90820001 */  lbu   $v0, 1($a0)
/* B1BB54 800A49B4 3C0E800A */  lui   $t6, %hi(func_800A4D9C) # $t6, 0x800a
/* B1BB58 800A49B8 25CE4D9C */  addiu $t6, %lo(func_800A4D9C) # addiu $t6, $t6, 0x4d9c
/* B1BB5C 800A49BC 28410002 */  slti  $at, $v0, 2
/* B1BB60 800A49C0 50200004 */  beql  $at, $zero, .L800A49D4
/* B1BB64 800A49C4 28410004 */   slti  $at, $v0, 4
/* B1BB68 800A49C8 03E00008 */  jr    $ra
/* B1BB6C 800A49CC AC8E0030 */   sw    $t6, 0x30($a0)
/* B1BB70 800A49D0 28410004 */  slti  $at, $v0, 4
.L800A49D4:
/* B1BB74 800A49D4 10200005 */  beqz  $at, .L800A49EC
/* B1BB78 800A49D8 3C18800A */   lui   $t8, %hi(func_800A4E38)
/* B1BB7C 800A49DC 3C0F800A */  lui   $t7, %hi(func_800A4EE0) # $t7, 0x800a
/* B1BB80 800A49E0 25EF4EE0 */  addiu $t7, %lo(func_800A4EE0) # addiu $t7, $t7, 0x4ee0
/* B1BB84 800A49E4 03E00008 */  jr    $ra
/* B1BB88 800A49E8 AC8F0030 */   sw    $t7, 0x30($a0)
.L800A49EC:
/* B1BB8C 800A49EC 27184E38 */  addiu $t8, %lo(func_800A4E38)
/* B1BB90 800A49F0 AC980030 */  sw    $t8, 0x30($a0)
/* B1BB94 800A49F4 03E00008 */  jr    $ra
/* B1BB98 800A49F8 00000000 */   nop   

glabel SkelAnime_FrameUpdateMatrix
/* B1BB9C 800A49FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1BBA0 800A4A00 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1BBA4 800A4A04 8C990030 */  lw    $t9, 0x30($a0)
/* B1BBA8 800A4A08 0320F809 */  jalr  $t9
/* B1BBAC 800A4A0C 00000000 */  nop   
/* B1BBB0 800A4A10 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1BBB4 800A4A14 27BD0018 */  addiu $sp, $sp, 0x18
/* B1BBB8 800A4A18 03E00008 */  jr    $ra
/* B1BBBC 800A4A1C 00000000 */   nop   

glabel func_800A4A20
/* B1BBC0 800A4A20 3C0E8016 */  lui   $t6, %hi(D_80160110)
/* B1BBC4 800A4A24 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B1BBC8 800A4A28 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1BBCC 800A4A2C AFBF0024 */  sw    $ra, 0x24($sp)
/* B1BBD0 800A4A30 AFB00020 */  sw    $s0, 0x20($sp)
/* B1BBD4 800A4A34 85CF0110 */  lh    $t7, %lo(D_80160110)($t6)
/* B1BBD8 800A4A38 3C018014 */  lui   $at, %hi(D_80140668)
/* B1BBDC 800A4A3C C4280668 */  lwc1  $f8, %lo(D_80140668)($at)
/* B1BBE0 800A4A40 448F2000 */  mtc1  $t7, $f4
/* B1BBE4 800A4A44 C48A002C */  lwc1  $f10, 0x2c($a0)
/* B1BBE8 800A4A48 C4800028 */  lwc1  $f0, 0x28($a0)
/* B1BBEC 800A4A4C 468021A0 */  cvt.s.w $f6, $f4
/* B1BBF0 800A4A50 44802000 */  mtc1  $zero, $f4
/* B1BBF4 800A4A54 46000306 */  mov.s $f12, $f0
/* B1BBF8 800A4A58 00808025 */  move  $s0, $a0
/* B1BBFC 800A4A5C 46083082 */  mul.s $f2, $f6, $f8
/* B1BC00 800A4A60 00000000 */  nop   
/* B1BC04 800A4A64 46025402 */  mul.s $f16, $f10, $f2
/* B1BC08 800A4A68 46100481 */  sub.s $f18, $f0, $f16
/* B1BC0C 800A4A6C E4920028 */  swc1  $f18, 0x28($a0)
/* B1BC10 800A4A70 C4800028 */  lwc1  $f0, 0x28($a0)
/* B1BC14 800A4A74 4604003E */  c.le.s $f0, $f4
/* B1BC18 800A4A78 00000000 */  nop   
/* B1BC1C 800A4A7C 45000007 */  bc1f  .L800A4A9C
/* B1BC20 800A4A80 00000000 */   nop   
/* B1BC24 800A4A84 0C02926C */  jal   func_800A49B0
/* B1BC28 800A4A88 E7AC002C */   swc1  $f12, 0x2c($sp)
/* B1BC2C 800A4A8C 44803000 */  mtc1  $zero, $f6
/* B1BC30 800A4A90 C7AC002C */  lwc1  $f12, 0x2c($sp)
/* B1BC34 800A4A94 E6060028 */  swc1  $f6, 0x28($s0)
/* B1BC38 800A4A98 C6000028 */  lwc1  $f0, 0x28($s0)
.L800A4A9C:
/* B1BC3C 800A4A9C 460C0283 */  div.s $f10, $f0, $f12
/* B1BC40 800A4AA0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1BC44 800A4AA4 44814000 */  mtc1  $at, $f8
/* B1BC48 800A4AA8 8E050020 */  lw    $a1, 0x20($s0)
/* B1BC4C 800A4AAC 92040000 */  lbu   $a0, ($s0)
/* B1BC50 800A4AB0 8E070024 */  lw    $a3, 0x24($s0)
/* B1BC54 800A4AB4 00A03025 */  move  $a2, $a1
/* B1BC58 800A4AB8 460A4401 */  sub.s $f16, $f8, $f10
/* B1BC5C 800A4ABC 0C028B9C */  jal   func_800A2E70
/* B1BC60 800A4AC0 E7B00010 */   swc1  $f16, 0x10($sp)
/* B1BC64 800A4AC4 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1BC68 800A4AC8 8FB00020 */  lw    $s0, 0x20($sp)
/* B1BC6C 800A4ACC 27BD0030 */  addiu $sp, $sp, 0x30
/* B1BC70 800A4AD0 03E00008 */  jr    $ra
/* B1BC74 800A4AD4 00001025 */   move  $v0, $zero

glabel func_800A4AD8
/* B1BC78 800A4AD8 3C0F8016 */  lui   $t7, %hi(D_80160110)
/* B1BC7C 800A4ADC 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* B1BC80 800A4AE0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1BC84 800A4AE4 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1BC88 800A4AE8 AFB00020 */  sw    $s0, 0x20($sp)
/* B1BC8C 800A4AEC 85F80110 */  lh    $t8, %lo(D_80160110)($t7)
/* B1BC90 800A4AF0 3C014680 */  li    $at, 0x46800000 # 0.000000
/* B1BC94 800A4AF4 44812000 */  mtc1  $at, $f4
/* B1BC98 800A4AF8 44985000 */  mtc1  $t8, $f10
/* B1BC9C 800A4AFC C4800028 */  lwc1  $f0, 0x28($a0)
/* B1BCA0 800A4B00 3C018014 */  lui   $at, %hi(D_8014066C)
/* B1BCA4 800A4B04 46805420 */  cvt.s.w $f16, $f10
/* B1BCA8 800A4B08 46040182 */  mul.s $f6, $f0, $f4
/* B1BCAC 800A4B0C C432066C */  lwc1  $f18, %lo(D_8014066C)($at)
/* B1BCB0 800A4B10 C484002C */  lwc1  $f4, 0x2c($a0)
/* B1BCB4 800A4B14 44805000 */  mtc1  $zero, $f10
/* B1BCB8 800A4B18 00808025 */  move  $s0, $a0
/* B1BCBC 800A4B1C 46128082 */  mul.s $f2, $f16, $f18
/* B1BCC0 800A4B20 4600320D */  trunc.w.s $f8, $f6
/* B1BCC4 800A4B24 46022182 */  mul.s $f6, $f4, $f2
/* B1BCC8 800A4B28 44064000 */  mfc1  $a2, $f8
/* B1BCCC 800A4B2C 00000000 */  nop   
/* B1BCD0 800A4B30 00063400 */  sll   $a2, $a2, 0x10
/* B1BCD4 800A4B34 46060201 */  sub.s $f8, $f0, $f6
/* B1BCD8 800A4B38 00063403 */  sra   $a2, $a2, 0x10
/* B1BCDC 800A4B3C E4880028 */  swc1  $f8, 0x28($a0)
/* B1BCE0 800A4B40 C4800028 */  lwc1  $f0, 0x28($a0)
/* B1BCE4 800A4B44 460A003E */  c.le.s $f0, $f10
/* B1BCE8 800A4B48 00000000 */  nop   
/* B1BCEC 800A4B4C 45020008 */  bc1fl .L800A4B70
/* B1BCF0 800A4B50 3C014680 */   li    $at, 0x46800000 # 0.000000
/* B1BCF4 800A4B54 0C02926C */  jal   func_800A49B0
/* B1BCF8 800A4B58 A7A6002E */   sh    $a2, 0x2e($sp)
/* B1BCFC 800A4B5C 44808000 */  mtc1  $zero, $f16
/* B1BD00 800A4B60 87A6002E */  lh    $a2, 0x2e($sp)
/* B1BD04 800A4B64 E6100028 */  swc1  $f16, 0x28($s0)
/* B1BD08 800A4B68 C6000028 */  lwc1  $f0, 0x28($s0)
/* B1BD0C 800A4B6C 3C014680 */  li    $at, 0x46800000 # 0.000000
.L800A4B70:
/* B1BD10 800A4B70 44819000 */  mtc1  $at, $f18
/* B1BD14 800A4B74 82080003 */  lb    $t0, 3($s0)
/* B1BD18 800A4B78 00062400 */  sll   $a0, $a2, 0x10
/* B1BD1C 800A4B7C 46120102 */  mul.s $f4, $f0, $f18
/* B1BD20 800A4B80 00042403 */  sra   $a0, $a0, 0x10
/* B1BD24 800A4B84 4600218D */  trunc.w.s $f6, $f4
/* B1BD28 800A4B88 44053000 */  mfc1  $a1, $f6
/* B1BD2C 800A4B8C 00000000 */  nop   
/* B1BD30 800A4B90 00052C00 */  sll   $a1, $a1, 0x10
/* B1BD34 800A4B94 05010011 */  bgez  $t0, .L800A4BDC
/* B1BD38 800A4B98 00052C03 */   sra   $a1, $a1, 0x10
/* B1BD3C 800A4B9C 00062400 */  sll   $a0, $a2, 0x10
/* B1BD40 800A4BA0 00042403 */  sra   $a0, $a0, 0x10
/* B1BD44 800A4BA4 0C01DE0D */  jal   Math_Coss
/* B1BD48 800A4BA8 A7A5002C */   sh    $a1, 0x2c($sp)
/* B1BD4C 800A4BAC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1BD50 800A4BB0 44814000 */  mtc1  $at, $f8
/* B1BD54 800A4BB4 87A5002C */  lh    $a1, 0x2c($sp)
/* B1BD58 800A4BB8 46004281 */  sub.s $f10, $f8, $f0
/* B1BD5C 800A4BBC 00052400 */  sll   $a0, $a1, 0x10
/* B1BD60 800A4BC0 00042403 */  sra   $a0, $a0, 0x10
/* B1BD64 800A4BC4 0C01DE0D */  jal   Math_Coss
/* B1BD68 800A4BC8 E7AA0028 */   swc1  $f10, 0x28($sp)
/* B1BD6C 800A4BCC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1BD70 800A4BD0 44818000 */  mtc1  $at, $f16
/* B1BD74 800A4BD4 10000009 */  b     .L800A4BFC
/* B1BD78 800A4BD8 46008081 */   sub.s $f2, $f16, $f0
.L800A4BDC:
/* B1BD7C 800A4BDC 0C01DE1C */  jal   Math_Sins
/* B1BD80 800A4BE0 A7A5002C */   sh    $a1, 0x2c($sp)
/* B1BD84 800A4BE4 87A5002C */  lh    $a1, 0x2c($sp)
/* B1BD88 800A4BE8 E7A00028 */  swc1  $f0, 0x28($sp)
/* B1BD8C 800A4BEC 00052400 */  sll   $a0, $a1, 0x10
/* B1BD90 800A4BF0 0C01DE1C */  jal   Math_Sins
/* B1BD94 800A4BF4 00042403 */   sra   $a0, $a0, 0x10
/* B1BD98 800A4BF8 46000086 */  mov.s $f2, $f0
.L800A4BFC:
/* B1BD9C 800A4BFC 44809000 */  mtc1  $zero, $f18
/* B1BDA0 800A4C00 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1BDA4 800A4C04 44813000 */  mtc1  $at, $f6
/* B1BDA8 800A4C08 46121032 */  c.eq.s $f2, $f18
/* B1BDAC 800A4C0C C7A40028 */  lwc1  $f4, 0x28($sp)
/* B1BDB0 800A4C10 45030004 */  bc1tl .L800A4C24
/* B1BDB4 800A4C14 44801000 */   mtc1  $zero, $f2
/* B1BDB8 800A4C18 10000003 */  b     .L800A4C28
/* B1BDBC 800A4C1C 46041083 */   div.s $f2, $f2, $f4
/* B1BDC0 800A4C20 44801000 */  mtc1  $zero, $f2
.L800A4C24:
/* B1BDC4 800A4C24 00000000 */  nop   
.L800A4C28:
/* B1BDC8 800A4C28 46023201 */  sub.s $f8, $f6, $f2
/* B1BDCC 800A4C2C 8E050020 */  lw    $a1, 0x20($s0)
/* B1BDD0 800A4C30 92040000 */  lbu   $a0, ($s0)
/* B1BDD4 800A4C34 8E070024 */  lw    $a3, 0x24($s0)
/* B1BDD8 800A4C38 E7A80010 */  swc1  $f8, 0x10($sp)
/* B1BDDC 800A4C3C 0C028B9C */  jal   func_800A2E70
/* B1BDE0 800A4C40 00A03025 */   move  $a2, $a1
/* B1BDE4 800A4C44 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1BDE8 800A4C48 8FB00020 */  lw    $s0, 0x20($sp)
/* B1BDEC 800A4C4C 27BD0030 */  addiu $sp, $sp, 0x30
/* B1BDF0 800A4C50 03E00008 */  jr    $ra
/* B1BDF4 800A4C54 00001025 */   move  $v0, $zero

glabel func_800A4C58
/* B1BDF8 800A4C58 27BDFD70 */  addiu $sp, $sp, -0x290
/* B1BDFC 800A4C5C AFB00020 */  sw    $s0, 0x20($sp)
/* B1BE00 800A4C60 00808025 */  move  $s0, $a0
/* B1BE04 800A4C64 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1BE08 800A4C68 C6040018 */  lwc1  $f4, 0x18($s0)
/* B1BE0C 800A4C6C 8E070020 */  lw    $a3, 0x20($s0)
/* B1BE10 800A4C70 92060000 */  lbu   $a2, ($s0)
/* B1BE14 800A4C74 4600218D */  trunc.w.s $f6, $f4
/* B1BE18 800A4C78 8C840008 */  lw    $a0, 8($a0)
/* B1BE1C 800A4C7C 44053000 */  mfc1  $a1, $f6
/* B1BE20 800A4C80 0C028763 */  jal   func_800A1D8C
/* B1BE24 800A4C84 00000000 */   nop   
/* B1BE28 800A4C88 920F0001 */  lbu   $t7, 1($s0)
/* B1BE2C 800A4C8C 27A70038 */  addiu $a3, $sp, 0x38
/* B1BE30 800A4C90 31F80001 */  andi  $t8, $t7, 1
/* B1BE34 800A4C94 5300001B */  beql  $t8, $zero, .L800A4D04
/* B1BE38 800A4C98 C6000028 */   lwc1  $f0, 0x28($s0)
/* B1BE3C 800A4C9C C6000018 */  lwc1  $f0, 0x18($s0)
/* B1BE40 800A4CA0 C6120014 */  lwc1  $f18, 0x14($s0)
/* B1BE44 800A4CA4 4600020D */  trunc.w.s $f8, $f0
/* B1BE48 800A4CA8 4600910D */  trunc.w.s $f4, $f18
/* B1BE4C 800A4CAC 44054000 */  mfc1  $a1, $f8
/* B1BE50 800A4CB0 00000000 */  nop   
/* B1BE54 800A4CB4 44855000 */  mtc1  $a1, $f10
/* B1BE58 800A4CB8 44092000 */  mfc1  $t1, $f4
/* B1BE5C 800A4CBC 24A50001 */  addiu $a1, $a1, 1
/* B1BE60 800A4CC0 46805420 */  cvt.s.w $f16, $f10
/* B1BE64 800A4CC4 00A9082A */  slt   $at, $a1, $t1
/* B1BE68 800A4CC8 14200002 */  bnez  $at, .L800A4CD4
/* B1BE6C 800A4CCC 46100081 */   sub.s $f2, $f0, $f16
/* B1BE70 800A4CD0 00002825 */  move  $a1, $zero
.L800A4CD4:
/* B1BE74 800A4CD4 8E040008 */  lw    $a0, 8($s0)
/* B1BE78 800A4CD8 92060000 */  lbu   $a2, ($s0)
/* B1BE7C 800A4CDC 0C028763 */  jal   func_800A1D8C
/* B1BE80 800A4CE0 E7A20030 */   swc1  $f2, 0x30($sp)
/* B1BE84 800A4CE4 C7A20030 */  lwc1  $f2, 0x30($sp)
/* B1BE88 800A4CE8 8E050020 */  lw    $a1, 0x20($s0)
/* B1BE8C 800A4CEC 92040000 */  lbu   $a0, ($s0)
/* B1BE90 800A4CF0 27A70038 */  addiu $a3, $sp, 0x38
/* B1BE94 800A4CF4 E7A20010 */  swc1  $f2, 0x10($sp)
/* B1BE98 800A4CF8 0C028B9C */  jal   func_800A2E70
/* B1BE9C 800A4CFC 00A03025 */   move  $a2, $a1
/* B1BEA0 800A4D00 C6000028 */  lwc1  $f0, 0x28($s0)
.L800A4D04:
/* B1BEA4 800A4D04 44803000 */  mtc1  $zero, $f6
/* B1BEA8 800A4D08 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* B1BEAC 800A4D0C 46003032 */  c.eq.s $f6, $f0
/* B1BEB0 800A4D10 00000000 */  nop   
/* B1BEB4 800A4D14 4503001D */  bc1tl .L800A4D8C
/* B1BEB8 800A4D18 8FBF0024 */   lw    $ra, 0x24($sp)
/* B1BEBC 800A4D1C 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* B1BEC0 800A4D20 3C018014 */  lui   $at, %hi(D_80140670)
/* B1BEC4 800A4D24 C4300670 */  lwc1  $f16, %lo(D_80140670)($at)
/* B1BEC8 800A4D28 854B0110 */  lh    $t3, 0x110($t2)
/* B1BECC 800A4D2C C612002C */  lwc1  $f18, 0x2c($s0)
/* B1BED0 800A4D30 44806000 */  mtc1  $zero, $f12
/* B1BED4 800A4D34 448B4000 */  mtc1  $t3, $f8
/* B1BED8 800A4D38 00000000 */  nop   
/* B1BEDC 800A4D3C 468042A0 */  cvt.s.w $f10, $f8
/* B1BEE0 800A4D40 46105082 */  mul.s $f2, $f10, $f16
/* B1BEE4 800A4D44 00000000 */  nop   
/* B1BEE8 800A4D48 46029102 */  mul.s $f4, $f18, $f2
/* B1BEEC 800A4D4C 46040181 */  sub.s $f6, $f0, $f4
/* B1BEF0 800A4D50 E6060028 */  swc1  $f6, 0x28($s0)
/* B1BEF4 800A4D54 C6000028 */  lwc1  $f0, 0x28($s0)
/* B1BEF8 800A4D58 460C003E */  c.le.s $f0, $f12
/* B1BEFC 800A4D5C 00000000 */  nop   
/* B1BF00 800A4D60 45000003 */  bc1f  .L800A4D70
/* B1BF04 800A4D64 00000000 */   nop   
/* B1BF08 800A4D68 10000007 */  b     .L800A4D88
/* B1BF0C 800A4D6C E60C0028 */   swc1  $f12, 0x28($s0)
.L800A4D70:
/* B1BF10 800A4D70 8E050020 */  lw    $a1, 0x20($s0)
/* B1BF14 800A4D74 92040000 */  lbu   $a0, ($s0)
/* B1BF18 800A4D78 8E070024 */  lw    $a3, 0x24($s0)
/* B1BF1C 800A4D7C E7A00010 */  swc1  $f0, 0x10($sp)
/* B1BF20 800A4D80 0C028B9C */  jal   func_800A2E70
/* B1BF24 800A4D84 00A03025 */   move  $a2, $a1
.L800A4D88:
/* B1BF28 800A4D88 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A4D8C:
/* B1BF2C 800A4D8C 8FB00020 */  lw    $s0, 0x20($sp)
/* B1BF30 800A4D90 27BD0290 */  addiu $sp, $sp, 0x290
/* B1BF34 800A4D94 03E00008 */  jr    $ra
/* B1BF38 800A4D98 00000000 */   nop   

glabel func_800A4D9C
/* B1BF3C 800A4D9C 3C0E8016 */  lui   $t6, %hi(D_80160110)
/* B1BF40 800A4DA0 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B1BF44 800A4DA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1BF48 800A4DA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1BF4C 800A4DAC 85CF0110 */  lh    $t7, %lo(D_80160110)($t6)
/* B1BF50 800A4DB0 3C018014 */  lui   $at, %hi(D_80140674)
/* B1BF54 800A4DB4 C4280674 */  lwc1  $f8, %lo(D_80140674)($at)
/* B1BF58 800A4DB8 448F2000 */  mtc1  $t7, $f4
/* B1BF5C 800A4DBC C490001C */  lwc1  $f16, 0x1c($a0)
/* B1BF60 800A4DC0 C48A0018 */  lwc1  $f10, 0x18($a0)
/* B1BF64 800A4DC4 468021A0 */  cvt.s.w $f6, $f4
/* B1BF68 800A4DC8 46083082 */  mul.s $f2, $f6, $f8
/* B1BF6C 800A4DCC 44803000 */  mtc1  $zero, $f6
/* B1BF70 800A4DD0 46028482 */  mul.s $f18, $f16, $f2
/* B1BF74 800A4DD4 46125100 */  add.s $f4, $f10, $f18
/* B1BF78 800A4DD8 E4840018 */  swc1  $f4, 0x18($a0)
/* B1BF7C 800A4DDC C4800018 */  lwc1  $f0, 0x18($a0)
/* B1BF80 800A4DE0 4606003C */  c.lt.s $f0, $f6
/* B1BF84 800A4DE4 00000000 */  nop   
/* B1BF88 800A4DE8 45020006 */  bc1fl .L800A4E04
/* B1BF8C 800A4DEC C4820014 */   lwc1  $f2, 0x14($a0)
/* B1BF90 800A4DF0 C4880014 */  lwc1  $f8, 0x14($a0)
/* B1BF94 800A4DF4 46080400 */  add.s $f16, $f0, $f8
/* B1BF98 800A4DF8 10000008 */  b     .L800A4E1C
/* B1BF9C 800A4DFC E4900018 */   swc1  $f16, 0x18($a0)
/* B1BFA0 800A4E00 C4820014 */  lwc1  $f2, 0x14($a0)
.L800A4E04:
/* B1BFA4 800A4E04 4600103E */  c.le.s $f2, $f0
/* B1BFA8 800A4E08 00000000 */  nop   
/* B1BFAC 800A4E0C 45000003 */  bc1f  .L800A4E1C
/* B1BFB0 800A4E10 00000000 */   nop   
/* B1BFB4 800A4E14 46020281 */  sub.s $f10, $f0, $f2
/* B1BFB8 800A4E18 E48A0018 */  swc1  $f10, 0x18($a0)
.L800A4E1C:
/* B1BFBC 800A4E1C 0C029316 */  jal   func_800A4C58
/* B1BFC0 800A4E20 00000000 */   nop   
/* B1BFC4 800A4E24 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1BFC8 800A4E28 27BD0018 */  addiu $sp, $sp, 0x18
/* B1BFCC 800A4E2C 00001025 */  move  $v0, $zero
/* B1BFD0 800A4E30 03E00008 */  jr    $ra
/* B1BFD4 800A4E34 00000000 */   nop   

glabel func_800A4E38
/* B1BFD8 800A4E38 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B1BFDC 800A4E3C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B1BFE0 800A4E40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1BFE4 800A4E44 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1BFE8 800A4E48 85CF0110 */  lh    $t7, 0x110($t6)
/* B1BFEC 800A4E4C 3C018014 */  lui   $at, %hi(D_80140678)
/* B1BFF0 800A4E50 C4280678 */  lwc1  $f8, %lo(D_80140678)($at)
/* B1BFF4 800A4E54 448F2000 */  mtc1  $t7, $f4
/* B1BFF8 800A4E58 C490001C */  lwc1  $f16, 0x1c($a0)
/* B1BFFC 800A4E5C C48A0018 */  lwc1  $f10, 0x18($a0)
/* B1C000 800A4E60 468021A0 */  cvt.s.w $f6, $f4
/* B1C004 800A4E64 C48C000C */  lwc1  $f12, 0xc($a0)
/* B1C008 800A4E68 46083082 */  mul.s $f2, $f6, $f8
/* B1C00C 800A4E6C 00000000 */  nop   
/* B1C010 800A4E70 46028482 */  mul.s $f18, $f16, $f2
/* B1C014 800A4E74 46125100 */  add.s $f4, $f10, $f18
/* B1C018 800A4E78 E4840018 */  swc1  $f4, 0x18($a0)
/* B1C01C 800A4E7C C4800018 */  lwc1  $f0, 0x18($a0)
/* B1C020 800A4E80 460C003C */  c.lt.s $f0, $f12
/* B1C024 800A4E84 00000000 */  nop   
/* B1C028 800A4E88 45000006 */  bc1f  .L800A4EA4
/* B1C02C 800A4E8C 00000000 */   nop   
/* B1C030 800A4E90 460C0181 */  sub.s $f6, $f0, $f12
/* B1C034 800A4E94 C4880010 */  lwc1  $f8, 0x10($a0)
/* B1C038 800A4E98 46083400 */  add.s $f16, $f6, $f8
/* B1C03C 800A4E9C 10000009 */  b     .L800A4EC4
/* B1C040 800A4EA0 E4900018 */   swc1  $f16, 0x18($a0)
.L800A4EA4:
/* B1C044 800A4EA4 C4820010 */  lwc1  $f2, 0x10($a0)
/* B1C048 800A4EA8 4600103E */  c.le.s $f2, $f0
/* B1C04C 800A4EAC 00000000 */  nop   
/* B1C050 800A4EB0 45000004 */  bc1f  .L800A4EC4
/* B1C054 800A4EB4 00000000 */   nop   
/* B1C058 800A4EB8 46020281 */  sub.s $f10, $f0, $f2
/* B1C05C 800A4EBC 460C5480 */  add.s $f18, $f10, $f12
/* B1C060 800A4EC0 E4920018 */  swc1  $f18, 0x18($a0)
.L800A4EC4:
/* B1C064 800A4EC4 0C029316 */  jal   func_800A4C58
/* B1C068 800A4EC8 00000000 */   nop   
/* B1C06C 800A4ECC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1C070 800A4ED0 27BD0018 */  addiu $sp, $sp, 0x18
/* B1C074 800A4ED4 00001025 */  move  $v0, $zero
/* B1C078 800A4ED8 03E00008 */  jr    $ra
/* B1C07C 800A4EDC 00000000 */   nop   

glabel func_800A4EE0
/* B1C080 800A4EE0 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B1C084 800A4EE4 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B1C088 800A4EE8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1C08C 800A4EEC AFBF001C */  sw    $ra, 0x1c($sp)
/* B1C090 800A4EF0 AFB00018 */  sw    $s0, 0x18($sp)
/* B1C094 800A4EF4 85CF0110 */  lh    $t7, 0x110($t6)
/* B1C098 800A4EF8 C4800018 */  lwc1  $f0, 0x18($a0)
/* B1C09C 800A4EFC C48C0010 */  lwc1  $f12, 0x10($a0)
/* B1C0A0 800A4F00 448F2000 */  mtc1  $t7, $f4
/* B1C0A4 800A4F04 3C018014 */  lui   $at, %hi(D_8014067C)
/* B1C0A8 800A4F08 46006032 */  c.eq.s $f12, $f0
/* B1C0AC 800A4F0C C428067C */  lwc1  $f8, %lo(D_8014067C)($at)
/* B1C0B0 800A4F10 468021A0 */  cvt.s.w $f6, $f4
/* B1C0B4 800A4F14 00808025 */  move  $s0, $a0
/* B1C0B8 800A4F18 46083382 */  mul.s $f14, $f6, $f8
/* B1C0BC 800A4F1C 4502000D */  bc1fl .L800A4F54
/* B1C0C0 800A4F20 C602001C */   lwc1  $f2, 0x1c($s0)
/* B1C0C4 800A4F24 4600028D */  trunc.w.s $f10, $f0
/* B1C0C8 800A4F28 8C840008 */  lw    $a0, 8($a0)
/* B1C0CC 800A4F2C 92060000 */  lbu   $a2, ($s0)
/* B1C0D0 800A4F30 8E070020 */  lw    $a3, 0x20($s0)
/* B1C0D4 800A4F34 44055000 */  mfc1  $a1, $f10
/* B1C0D8 800A4F38 0C028763 */  jal   func_800A1D8C
/* B1C0DC 800A4F3C 00000000 */   nop   
/* B1C0E0 800A4F40 0C029316 */  jal   func_800A4C58
/* B1C0E4 800A4F44 02002025 */   move  $a0, $s0
/* B1C0E8 800A4F48 10000021 */  b     .L800A4FD0
/* B1C0EC 800A4F4C 24020001 */   li    $v0, 1
/* B1C0F0 800A4F50 C602001C */  lwc1  $f2, 0x1c($s0)
.L800A4F54:
/* B1C0F4 800A4F54 44808000 */  mtc1  $zero, $f16
/* B1C0F8 800A4F58 460E1482 */  mul.s $f18, $f2, $f14
/* B1C0FC 800A4F5C 46120100 */  add.s $f4, $f0, $f18
/* B1C100 800A4F60 E6040018 */  swc1  $f4, 0x18($s0)
/* B1C104 800A4F64 C6000018 */  lwc1  $f0, 0x18($s0)
/* B1C108 800A4F68 460C0181 */  sub.s $f6, $f0, $f12
/* B1C10C 800A4F6C 46023202 */  mul.s $f8, $f6, $f2
/* B1C110 800A4F70 4608803C */  c.lt.s $f16, $f8
/* B1C114 800A4F74 00000000 */  nop   
/* B1C118 800A4F78 45020004 */  bc1fl .L800A4F8C
/* B1C11C 800A4F7C 4610003C */   c.lt.s $f0, $f16
/* B1C120 800A4F80 10000010 */  b     .L800A4FC4
/* B1C124 800A4F84 E60C0018 */   swc1  $f12, 0x18($s0)
/* B1C128 800A4F88 4610003C */  c.lt.s $f0, $f16
.L800A4F8C:
/* B1C12C 800A4F8C 00000000 */  nop   
/* B1C130 800A4F90 45020006 */  bc1fl .L800A4FAC
/* B1C134 800A4F94 C6020014 */   lwc1  $f2, 0x14($s0)
/* B1C138 800A4F98 C60A0014 */  lwc1  $f10, 0x14($s0)
/* B1C13C 800A4F9C 460A0480 */  add.s $f18, $f0, $f10
/* B1C140 800A4FA0 10000008 */  b     .L800A4FC4
/* B1C144 800A4FA4 E6120018 */   swc1  $f18, 0x18($s0)
/* B1C148 800A4FA8 C6020014 */  lwc1  $f2, 0x14($s0)
.L800A4FAC:
/* B1C14C 800A4FAC 4600103E */  c.le.s $f2, $f0
/* B1C150 800A4FB0 00000000 */  nop   
/* B1C154 800A4FB4 45000003 */  bc1f  .L800A4FC4
/* B1C158 800A4FB8 00000000 */   nop   
/* B1C15C 800A4FBC 46020101 */  sub.s $f4, $f0, $f2
/* B1C160 800A4FC0 E6040018 */  swc1  $f4, 0x18($s0)
.L800A4FC4:
/* B1C164 800A4FC4 0C029316 */  jal   func_800A4C58
/* B1C168 800A4FC8 02002025 */   move  $a0, $s0
/* B1C16C 800A4FCC 00001025 */  move  $v0, $zero
.L800A4FD0:
/* B1C170 800A4FD0 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1C174 800A4FD4 8FB00018 */  lw    $s0, 0x18($sp)
/* B1C178 800A4FD8 27BD0020 */  addiu $sp, $sp, 0x20
/* B1C17C 800A4FDC 03E00008 */  jr    $ra
/* B1C180 800A4FE0 00000000 */   nop   

glabel func_800A4FE4
/* B1C184 800A4FE4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1C188 800A4FE8 C7AC0038 */  lwc1  $f12, 0x38($sp)
/* B1C18C 800A4FEC 44802000 */  mtc1  $zero, $f4
/* B1C190 800A4FF0 93AE0037 */  lbu   $t6, 0x37($sp)
/* B1C194 800A4FF4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1C198 800A4FF8 46046032 */  c.eq.s $f12, $f4
/* B1C19C 800A4FFC AFB00018 */  sw    $s0, 0x18($sp)
/* B1C1A0 800A5000 AFA50024 */  sw    $a1, 0x24($sp)
/* B1C1A4 800A5004 AFA60028 */  sw    $a2, 0x28($sp)
/* B1C1A8 800A5008 AFA7002C */  sw    $a3, 0x2c($sp)
/* B1C1AC 800A500C 00808025 */  move  $s0, $a0
/* B1C1B0 800A5010 45010035 */  bc1t  .L800A50E8
/* B1C1B4 800A5014 A08E0001 */   sb    $t6, 1($a0)
/* B1C1B8 800A5018 8FAF0024 */  lw    $t7, 0x24($sp)
/* B1C1BC 800A501C 8C980008 */  lw    $t8, 8($a0)
/* B1C1C0 800A5020 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* B1C1C4 800A5024 55F80007 */  bnel  $t7, $t8, .L800A5044
/* B1C1C8 800A5028 44805000 */   mtc1  $zero, $f10
/* B1C1CC 800A502C C4880018 */  lwc1  $f8, 0x18($a0)
/* B1C1D0 800A5030 46083032 */  c.eq.s $f6, $f8
/* B1C1D4 800A5034 00000000 */  nop   
/* B1C1D8 800A5038 4501002B */  bc1t  .L800A50E8
/* B1C1DC 800A503C 00000000 */   nop   
/* B1C1E0 800A5040 44805000 */  mtc1  $zero, $f10
.L800A5044:
/* B1C1E4 800A5044 02002025 */  move  $a0, $s0
/* B1C1E8 800A5048 83A2003F */  lb    $v0, 0x3f($sp)
/* B1C1EC 800A504C 460A603C */  c.lt.s $f12, $f10
/* B1C1F0 800A5050 00000000 */  nop   
/* B1C1F4 800A5054 4500000A */  bc1f  .L800A5080
/* B1C1F8 800A5058 00000000 */   nop   
/* B1C1FC 800A505C 0C02926C */  jal   func_800A49B0
/* B1C200 800A5060 E7AC0038 */   swc1  $f12, 0x38($sp)
/* B1C204 800A5064 02002025 */  move  $a0, $s0
/* B1C208 800A5068 8E050024 */  lw    $a1, 0x24($s0)
/* B1C20C 800A506C 0C0295DD */  jal   func_800A5774
/* B1C210 800A5070 8E060020 */   lw    $a2, 0x20($s0)
/* B1C214 800A5074 C7AC0038 */  lwc1  $f12, 0x38($sp)
/* B1C218 800A5078 10000014 */  b     .L800A50CC
/* B1C21C 800A507C 46006307 */   neg.s $f12, $f12
.L800A5080:
/* B1C220 800A5080 10400006 */  beqz  $v0, .L800A509C
/* B1C224 800A5084 3C08800A */   lui   $t0, %hi(func_800A4A20) # $t0, 0x800A
/* B1C228 800A5088 3C19800A */  lui   $t9, %hi(func_800A4AD8) # $t9, 0x800A
/* B1C22C 800A508C 27394AD8 */  addiu $t9, %lo(func_800A4AD8) # addiu $t9, $t9, 0x4ad8
/* B1C230 800A5090 AE190030 */  sw    $t9, 0x30($s0)
/* B1C234 800A5094 10000003 */  b     .L800A50A4
/* B1C238 800A5098 A2020003 */   sb    $v0, 3($s0)
.L800A509C:
/* B1C23C 800A509C 25084A20 */  addiu $t0, %lo(func_800A4A20) # addiu $t0, $t0, 0x4a20
/* B1C240 800A50A0 AE080030 */  sw    $t0, 0x30($s0)
.L800A50A4:
/* B1C244 800A50A4 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* B1C248 800A50A8 92060000 */  lbu   $a2, ($s0)
/* B1C24C 800A50AC 8E070024 */  lw    $a3, 0x24($s0)
/* B1C250 800A50B0 4600848D */  trunc.w.s $f18, $f16
/* B1C254 800A50B4 E7AC0038 */  swc1  $f12, 0x38($sp)
/* B1C258 800A50B8 8FA40024 */  lw    $a0, 0x24($sp)
/* B1C25C 800A50BC 44059000 */  mfc1  $a1, $f18
/* B1C260 800A50C0 0C028763 */  jal   func_800A1D8C
/* B1C264 800A50C4 00000000 */   nop   
/* B1C268 800A50C8 C7AC0038 */  lwc1  $f12, 0x38($sp)
.L800A50CC:
/* B1C26C 800A50CC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1C270 800A50D0 44813000 */  mtc1  $at, $f6
/* B1C274 800A50D4 44812000 */  mtc1  $at, $f4
/* B1C278 800A50D8 460C3203 */  div.s $f8, $f6, $f12
/* B1C27C 800A50DC E6040028 */  swc1  $f4, 0x28($s0)
/* B1C280 800A50E0 1000000E */  b     .L800A511C
/* B1C284 800A50E4 E608002C */   swc1  $f8, 0x2c($s0)
.L800A50E8:
/* B1C288 800A50E8 0C02926C */  jal   func_800A49B0
/* B1C28C 800A50EC 02002025 */   move  $a0, $s0
/* B1C290 800A50F0 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* B1C294 800A50F4 8FA40024 */  lw    $a0, 0x24($sp)
/* B1C298 800A50F8 92060000 */  lbu   $a2, ($s0)
/* B1C29C 800A50FC 4600540D */  trunc.w.s $f16, $f10
/* B1C2A0 800A5100 8E070020 */  lw    $a3, 0x20($s0)
/* B1C2A4 800A5104 44058000 */  mfc1  $a1, $f16
/* B1C2A8 800A5108 0C028763 */  jal   func_800A1D8C
/* B1C2AC 800A510C 00000000 */   nop   
/* B1C2B0 800A5110 44809000 */  mtc1  $zero, $f18
/* B1C2B4 800A5114 00000000 */  nop   
/* B1C2B8 800A5118 E6120028 */  swc1  $f18, 0x28($s0)
.L800A511C:
/* B1C2BC 800A511C 8FAB0024 */  lw    $t3, 0x24($sp)
/* B1C2C0 800A5120 AE0B0008 */  sw    $t3, 8($s0)
/* B1C2C4 800A5124 C7A4002C */  lwc1  $f4, 0x2c($sp)
/* B1C2C8 800A5128 E604000C */  swc1  $f4, 0xc($s0)
/* B1C2CC 800A512C C7A60030 */  lwc1  $f6, 0x30($sp)
/* B1C2D0 800A5130 E6060010 */  swc1  $f6, 0x10($s0)
/* B1C2D4 800A5134 0C0287F2 */  jal   func_800A1FC8
/* B1C2D8 800A5138 8FA40024 */   lw    $a0, 0x24($sp)
/* B1C2DC 800A513C 44824000 */  mtc1  $v0, $f8
/* B1C2E0 800A5140 92030001 */  lbu   $v1, 1($s0)
/* B1C2E4 800A5144 468042A0 */  cvt.s.w $f10, $f8
/* B1C2E8 800A5148 28610004 */  slti  $at, $v1, 4
/* B1C2EC 800A514C 14200004 */  bnez  $at, .L800A5160
/* B1C2F0 800A5150 E60A0014 */   swc1  $f10, 0x14($s0)
/* B1C2F4 800A5154 44808000 */  mtc1  $zero, $f16
/* B1C2F8 800A5158 1000000A */  b     .L800A5184
/* B1C2FC 800A515C E6100018 */   swc1  $f16, 0x18($s0)
.L800A5160:
/* B1C300 800A5160 C7B2002C */  lwc1  $f18, 0x2c($sp)
/* B1C304 800A5164 28610002 */  slti  $at, $v1, 2
/* B1C308 800A5168 10200006 */  beqz  $at, .L800A5184
/* B1C30C 800A516C E6120018 */   swc1  $f18, 0x18($s0)
/* B1C310 800A5170 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1C314 800A5174 44813000 */  mtc1  $at, $f6
/* B1C318 800A5178 C6040014 */  lwc1  $f4, 0x14($s0)
/* B1C31C 800A517C 46062201 */  sub.s $f8, $f4, $f6
/* B1C320 800A5180 E6080010 */  swc1  $f8, 0x10($s0)
.L800A5184:
/* B1C324 800A5184 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* B1C328 800A5188 E60A001C */  swc1  $f10, 0x1c($s0)
/* B1C32C 800A518C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1C330 800A5190 8FB00018 */  lw    $s0, 0x18($sp)
/* B1C334 800A5194 27BD0020 */  addiu $sp, $sp, 0x20
/* B1C338 800A5198 03E00008 */  jr    $ra
/* B1C33C 800A519C 00000000 */   nop   

glabel SkelAnime_ChangeAnimation
/* B1C340 800A51A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C344 800A51A4 44866000 */  mtc1  $a2, $f12
/* B1C348 800A51A8 44877000 */  mtc1  $a3, $f14
/* B1C34C 800A51AC C7A40038 */  lwc1  $f4, 0x38($sp)
/* B1C350 800A51B0 93AE003F */  lbu   $t6, 0x3f($sp)
/* B1C354 800A51B4 C7A60040 */  lwc1  $f6, 0x40($sp)
/* B1C358 800A51B8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C35C 800A51BC 44066000 */  mfc1  $a2, $f12
/* B1C360 800A51C0 44077000 */  mfc1  $a3, $f14
/* B1C364 800A51C4 AFA0001C */  sw    $zero, 0x1c($sp)
/* B1C368 800A51C8 E7A40010 */  swc1  $f4, 0x10($sp)
/* B1C36C 800A51CC AFAE0014 */  sw    $t6, 0x14($sp)
/* B1C370 800A51D0 0C0293F9 */  jal   func_800A4FE4
/* B1C374 800A51D4 E7A60018 */   swc1  $f6, 0x18($sp)
/* B1C378 800A51D8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C37C 800A51DC 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C380 800A51E0 03E00008 */  jr    $ra
/* B1C384 800A51E4 00000000 */   nop   

glabel func_800A51E8
/* B1C388 800A51E8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C38C 800A51EC AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C390 800A51F0 AFA40028 */  sw    $a0, 0x28($sp)
/* B1C394 800A51F4 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C398 800A51F8 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1C39C 800A51FC 00A02025 */   move  $a0, $a1
/* B1C3A0 800A5200 44822000 */  mtc1  $v0, $f4
/* B1C3A4 800A5204 44800000 */  mtc1  $zero, $f0
/* B1C3A8 800A5208 240E0002 */  li    $t6, 2
/* B1C3AC 800A520C 468021A0 */  cvt.s.w $f6, $f4
/* B1C3B0 800A5210 44070000 */  mfc1  $a3, $f0
/* B1C3B4 800A5214 AFAE0014 */  sw    $t6, 0x14($sp)
/* B1C3B8 800A5218 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C3BC 800A521C 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C3C0 800A5220 3C063F80 */  lui   $a2, 0x3f80
/* B1C3C4 800A5224 E7A60010 */  swc1  $f6, 0x10($sp)
/* B1C3C8 800A5228 0C029468 */  jal   SkelAnime_ChangeAnimation
/* B1C3CC 800A522C E7A00018 */   swc1  $f0, 0x18($sp)
/* B1C3D0 800A5230 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C3D4 800A5234 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C3D8 800A5238 03E00008 */  jr    $ra
/* B1C3DC 800A523C 00000000 */   nop   

glabel func_800A5240
/* B1C3E0 800A5240 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C3E4 800A5244 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C3E8 800A5248 AFA40028 */  sw    $a0, 0x28($sp)
/* B1C3EC 800A524C AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C3F0 800A5250 AFA60030 */  sw    $a2, 0x30($sp)
/* B1C3F4 800A5254 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1C3F8 800A5258 00A02025 */   move  $a0, $a1
/* B1C3FC 800A525C 44822000 */  mtc1  $v0, $f4
/* B1C400 800A5260 C7A80030 */  lwc1  $f8, 0x30($sp)
/* B1C404 800A5264 240E0002 */  li    $t6, 2
/* B1C408 800A5268 468021A0 */  cvt.s.w $f6, $f4
/* B1C40C 800A526C AFAE0014 */  sw    $t6, 0x14($sp)
/* B1C410 800A5270 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C414 800A5274 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C418 800A5278 3C063F80 */  lui   $a2, 0x3f80
/* B1C41C 800A527C 24070000 */  li    $a3, 0
/* B1C420 800A5280 E7A60010 */  swc1  $f6, 0x10($sp)
/* B1C424 800A5284 0C029468 */  jal   SkelAnime_ChangeAnimation
/* B1C428 800A5288 E7A80018 */   swc1  $f8, 0x18($sp)
/* B1C42C 800A528C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C430 800A5290 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C434 800A5294 03E00008 */  jr    $ra
/* B1C438 800A5298 00000000 */   nop   

glabel func_800A529C
/* B1C43C 800A529C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C440 800A52A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C444 800A52A4 AFA40028 */  sw    $a0, 0x28($sp)
/* B1C448 800A52A8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C44C 800A52AC AFA60030 */  sw    $a2, 0x30($sp)
/* B1C450 800A52B0 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1C454 800A52B4 00A02025 */   move  $a0, $a1
/* B1C458 800A52B8 44822000 */  mtc1  $v0, $f4
/* B1C45C 800A52BC 44800000 */  mtc1  $zero, $f0
/* B1C460 800A52C0 240E0002 */  li    $t6, 2
/* B1C464 800A52C4 468021A0 */  cvt.s.w $f6, $f4
/* B1C468 800A52C8 44070000 */  mfc1  $a3, $f0
/* B1C46C 800A52CC AFAE0014 */  sw    $t6, 0x14($sp)
/* B1C470 800A52D0 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C474 800A52D4 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C478 800A52D8 8FA60030 */  lw    $a2, 0x30($sp)
/* B1C47C 800A52DC E7A60010 */  swc1  $f6, 0x10($sp)
/* B1C480 800A52E0 0C029468 */  jal   SkelAnime_ChangeAnimation
/* B1C484 800A52E4 E7A00018 */   swc1  $f0, 0x18($sp)
/* B1C488 800A52E8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C48C 800A52EC 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C490 800A52F0 03E00008 */  jr    $ra
/* B1C494 800A52F4 00000000 */   nop   

glabel func_800A52F8
/* B1C498 800A52F8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C49C 800A52FC AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C4A0 800A5300 AFA40028 */  sw    $a0, 0x28($sp)
/* B1C4A4 800A5304 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C4A8 800A5308 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1C4AC 800A530C 00A02025 */   move  $a0, $a1
/* B1C4B0 800A5310 44822000 */  mtc1  $v0, $f4
/* B1C4B4 800A5314 44800000 */  mtc1  $zero, $f0
/* B1C4B8 800A5318 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C4BC 800A531C 468021A0 */  cvt.s.w $f6, $f4
/* B1C4C0 800A5320 44070000 */  mfc1  $a3, $f0
/* B1C4C4 800A5324 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C4C8 800A5328 3C063F80 */  lui   $a2, 0x3f80
/* B1C4CC 800A532C AFA00014 */  sw    $zero, 0x14($sp)
/* B1C4D0 800A5330 E7A00018 */  swc1  $f0, 0x18($sp)
/* B1C4D4 800A5334 0C029468 */  jal   SkelAnime_ChangeAnimation
/* B1C4D8 800A5338 E7A60010 */   swc1  $f6, 0x10($sp)
/* B1C4DC 800A533C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C4E0 800A5340 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C4E4 800A5344 03E00008 */  jr    $ra
/* B1C4E8 800A5348 00000000 */   nop   

glabel func_800A534C
/* B1C4EC 800A534C 44800000 */  mtc1  $zero, $f0
/* B1C4F0 800A5350 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C4F4 800A5354 44866000 */  mtc1  $a2, $f12
/* B1C4F8 800A5358 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C4FC 800A535C 44070000 */  mfc1  $a3, $f0
/* B1C500 800A5360 3C063F80 */  lui   $a2, 0x3f80
/* B1C504 800A5364 AFA00014 */  sw    $zero, 0x14($sp)
/* B1C508 800A5368 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1C50C 800A536C 0C029468 */  jal   SkelAnime_ChangeAnimation
/* B1C510 800A5370 E7AC0018 */   swc1  $f12, 0x18($sp)
/* B1C514 800A5374 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C518 800A5378 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C51C 800A537C 03E00008 */  jr    $ra
/* B1C520 800A5380 00000000 */   nop   

glabel func_800A5384
/* B1C524 800A5384 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C528 800A5388 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C52C 800A538C AFA40028 */  sw    $a0, 0x28($sp)
/* B1C530 800A5390 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C534 800A5394 AFA60030 */  sw    $a2, 0x30($sp)
/* B1C538 800A5398 0C028800 */  jal   SkelAnime_GetFrameCount
/* B1C53C 800A539C 00A02025 */   move  $a0, $a1
/* B1C540 800A53A0 44822000 */  mtc1  $v0, $f4
/* B1C544 800A53A4 44800000 */  mtc1  $zero, $f0
/* B1C548 800A53A8 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C54C 800A53AC 468021A0 */  cvt.s.w $f6, $f4
/* B1C550 800A53B0 44070000 */  mfc1  $a3, $f0
/* B1C554 800A53B4 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C558 800A53B8 8FA60030 */  lw    $a2, 0x30($sp)
/* B1C55C 800A53BC AFA00014 */  sw    $zero, 0x14($sp)
/* B1C560 800A53C0 E7A00018 */  swc1  $f0, 0x18($sp)
/* B1C564 800A53C4 0C029468 */  jal   SkelAnime_ChangeAnimation
/* B1C568 800A53C8 E7A60010 */   swc1  $f6, 0x10($sp)
/* B1C56C 800A53CC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C570 800A53D0 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C574 800A53D4 03E00008 */  jr    $ra
/* B1C578 800A53D8 00000000 */   nop   

glabel func_800A53DC
/* B1C57C 800A53DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1C580 800A53E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1C584 800A53E4 C4840014 */  lwc1  $f4, 0x14($a0)
/* B1C588 800A53E8 240E0002 */  li    $t6, 2
/* B1C58C 800A53EC A08E0001 */  sb    $t6, 1($a0)
/* B1C590 800A53F0 0C02926C */  jal   func_800A49B0
/* B1C594 800A53F4 E4840010 */   swc1  $f4, 0x10($a0)
/* B1C598 800A53F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1C59C 800A53FC 27BD0018 */  addiu $sp, $sp, 0x18
/* B1C5A0 800A5400 03E00008 */  jr    $ra
/* B1C5A4 800A5404 00000000 */   nop   

glabel func_800A5408
/* B1C5A8 800A5408 C486001C */  lwc1  $f6, 0x1c($a0)
/* B1C5AC 800A540C C480000C */  lwc1  $f0, 0xc($a0)
/* B1C5B0 800A5410 C4840010 */  lwc1  $f4, 0x10($a0)
/* B1C5B4 800A5414 46003207 */  neg.s $f8, $f6
/* B1C5B8 800A5418 E4800010 */  swc1  $f0, 0x10($a0)
/* B1C5BC 800A541C E488001C */  swc1  $f8, 0x1c($a0)
/* B1C5C0 800A5420 03E00008 */  jr    $ra
/* B1C5C4 800A5424 E484000C */   swc1  $f4, 0xc($a0)

glabel func_800A5428
/* B1C5C8 800A5428 27BDFFF8 */  addiu $sp, $sp, -8
/* B1C5CC 800A542C AFB00004 */  sw    $s0, 4($sp)
/* B1C5D0 800A5430 90830000 */  lbu   $v1, ($a0)
/* B1C5D4 800A5434 00A08025 */  move  $s0, $a1
/* B1C5D8 800A5438 00001025 */  move  $v0, $zero
/* B1C5DC 800A543C 58600012 */  blezl $v1, .L800A5488
/* B1C5E0 800A5440 8FB00004 */   lw    $s0, 4($sp)
.L800A5444:
/* B1C5E4 800A5444 90E50000 */  lbu   $a1, ($a3)
/* B1C5E8 800A5448 24420001 */  addiu $v0, $v0, 1
/* B1C5EC 800A544C 24E70001 */  addiu $a3, $a3, 1
/* B1C5F0 800A5450 50A00009 */  beql  $a1, $zero, .L800A5478
/* B1C5F4 800A5454 0043082A */   slt   $at, $v0, $v1
/* B1C5F8 800A5458 88CF0000 */  lwl   $t7, ($a2)
/* B1C5FC 800A545C 98CF0003 */  lwr   $t7, 3($a2)
/* B1C600 800A5460 AA0F0000 */  swl   $t7, ($s0)
/* B1C604 800A5464 BA0F0003 */  swr   $t7, 3($s0)
/* B1C608 800A5468 94CF0004 */  lhu   $t7, 4($a2)
/* B1C60C 800A546C A60F0004 */  sh    $t7, 4($s0)
/* B1C610 800A5470 90830000 */  lbu   $v1, ($a0)
/* B1C614 800A5474 0043082A */  slt   $at, $v0, $v1
.L800A5478:
/* B1C618 800A5478 26100006 */  addiu $s0, $s0, 6
/* B1C61C 800A547C 1420FFF1 */  bnez  $at, .L800A5444
/* B1C620 800A5480 24C60006 */   addiu $a2, $a2, 6
/* B1C624 800A5484 8FB00004 */  lw    $s0, 4($sp)
.L800A5488:
/* B1C628 800A5488 03E00008 */  jr    $ra
/* B1C62C 800A548C 27BD0008 */   addiu $sp, $sp, 8

glabel func_800A5490
/* B1C630 800A5490 27BDFFF8 */  addiu $sp, $sp, -8
/* B1C634 800A5494 AFB00004 */  sw    $s0, 4($sp)
/* B1C638 800A5498 90830000 */  lbu   $v1, ($a0)
/* B1C63C 800A549C 00A08025 */  move  $s0, $a1
/* B1C640 800A54A0 00001025 */  move  $v0, $zero
/* B1C644 800A54A4 58600013 */  blezl $v1, .L800A54F4
/* B1C648 800A54A8 8FB00004 */   lw    $s0, 4($sp)
.L800A54AC:
/* B1C64C 800A54AC 90E50000 */  lbu   $a1, ($a3)
/* B1C650 800A54B0 24420001 */  addiu $v0, $v0, 1
/* B1C654 800A54B4 24E70001 */  addiu $a3, $a3, 1
/* B1C658 800A54B8 2CA50001 */  sltiu $a1, $a1, 1
/* B1C65C 800A54BC 50A00009 */  beql  $a1, $zero, .L800A54E4
/* B1C660 800A54C0 0043082A */   slt   $at, $v0, $v1
/* B1C664 800A54C4 88CF0000 */  lwl   $t7, ($a2)
/* B1C668 800A54C8 98CF0003 */  lwr   $t7, 3($a2)
/* B1C66C 800A54CC AA0F0000 */  swl   $t7, ($s0)
/* B1C670 800A54D0 BA0F0003 */  swr   $t7, 3($s0)
/* B1C674 800A54D4 94CF0004 */  lhu   $t7, 4($a2)
/* B1C678 800A54D8 A60F0004 */  sh    $t7, 4($s0)
/* B1C67C 800A54DC 90830000 */  lbu   $v1, ($a0)
/* B1C680 800A54E0 0043082A */  slt   $at, $v0, $v1
.L800A54E4:
/* B1C684 800A54E4 26100006 */  addiu $s0, $s0, 6
/* B1C688 800A54E8 1420FFF0 */  bnez  $at, .L800A54AC
/* B1C68C 800A54EC 24C60006 */   addiu $a2, $a2, 6
/* B1C690 800A54F0 8FB00004 */  lw    $s0, 4($sp)
.L800A54F4:
/* B1C694 800A54F4 03E00008 */  jr    $ra
/* B1C698 800A54F8 27BD0008 */   addiu $sp, $sp, 8

glabel func_800A54FC
/* B1C69C 800A54FC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B1C6A0 800A5500 AFBF0034 */  sw    $ra, 0x34($sp)
/* B1C6A4 800A5504 AFB10030 */  sw    $s1, 0x30($sp)
/* B1C6A8 800A5508 AFB0002C */  sw    $s0, 0x2c($sp)
/* B1C6AC 800A550C F7B80020 */  sdc1  $f24, 0x20($sp)
/* B1C6B0 800A5510 F7B60018 */  sdc1  $f22, 0x18($sp)
/* B1C6B4 800A5514 F7B40010 */  sdc1  $f20, 0x10($sp)
/* B1C6B8 800A5518 AFA60040 */  sw    $a2, 0x40($sp)
/* B1C6BC 800A551C 908E0035 */  lbu   $t6, 0x35($a0)
/* B1C6C0 800A5520 00808025 */  move  $s0, $a0
/* B1C6C4 800A5524 00A08825 */  move  $s1, $a1
/* B1C6C8 800A5528 31CF0010 */  andi  $t7, $t6, 0x10
/* B1C6CC 800A552C 51E00007 */  beql  $t7, $zero, .L800A554C
/* B1C6D0 800A5530 8E020020 */   lw    $v0, 0x20($s0)
/* B1C6D4 800A5534 44800000 */  mtc1  $zero, $f0
/* B1C6D8 800A5538 00000000 */  nop   
/* B1C6DC 800A553C E4A00008 */  swc1  $f0, 8($a1)
/* B1C6E0 800A5540 10000030 */  b     .L800A5604
/* B1C6E4 800A5544 E4A00000 */   swc1  $f0, ($a1)
/* B1C6E8 800A5548 8E020020 */  lw    $v0, 0x20($s0)
.L800A554C:
/* B1C6EC 800A554C 87A40042 */  lh    $a0, 0x42($sp)
/* B1C6F0 800A5550 84580000 */  lh    $t8, ($v0)
/* B1C6F4 800A5554 84590004 */  lh    $t9, 4($v0)
/* B1C6F8 800A5558 44982000 */  mtc1  $t8, $f4
/* B1C6FC 800A555C 44993000 */  mtc1  $t9, $f6
/* B1C700 800A5560 46802520 */  cvt.s.w $f20, $f4
/* B1C704 800A5564 0C01DE1C */  jal   Math_Sins
/* B1C708 800A5568 468035A0 */   cvt.s.w $f22, $f6
/* B1C70C 800A556C 46000606 */  mov.s $f24, $f0
/* B1C710 800A5570 0C01DE0D */  jal   Math_Coss
/* B1C714 800A5574 87A40042 */   lh    $a0, 0x42($sp)
/* B1C718 800A5578 4600A202 */  mul.s $f8, $f20, $f0
/* B1C71C 800A557C 00000000 */  nop   
/* B1C720 800A5580 4618B282 */  mul.s $f10, $f22, $f24
/* B1C724 800A5584 00000000 */  nop   
/* B1C728 800A5588 4600B482 */  mul.s $f18, $f22, $f0
/* B1C72C 800A558C 00000000 */  nop   
/* B1C730 800A5590 4618A102 */  mul.s $f4, $f20, $f24
/* B1C734 800A5594 460A4400 */  add.s $f16, $f8, $f10
/* B1C738 800A5598 E6300000 */  swc1  $f16, ($s1)
/* B1C73C 800A559C 46049181 */  sub.s $f6, $f18, $f4
/* B1C740 800A55A0 E6260008 */  swc1  $f6, 8($s1)
/* B1C744 800A55A4 86080038 */  lh    $t0, 0x38($s0)
/* B1C748 800A55A8 8609003C */  lh    $t1, 0x3c($s0)
/* B1C74C 800A55AC 86040036 */  lh    $a0, 0x36($s0)
/* B1C750 800A55B0 44884000 */  mtc1  $t0, $f8
/* B1C754 800A55B4 44895000 */  mtc1  $t1, $f10
/* B1C758 800A55B8 46804520 */  cvt.s.w $f20, $f8
/* B1C75C 800A55BC 0C01DE1C */  jal   Math_Sins
/* B1C760 800A55C0 468055A0 */   cvt.s.w $f22, $f10
/* B1C764 800A55C4 46000606 */  mov.s $f24, $f0
/* B1C768 800A55C8 0C01DE0D */  jal   Math_Coss
/* B1C76C 800A55CC 86040036 */   lh    $a0, 0x36($s0)
/* B1C770 800A55D0 4600A402 */  mul.s $f16, $f20, $f0
/* B1C774 800A55D4 C6260000 */  lwc1  $f6, ($s1)
/* B1C778 800A55D8 4618B482 */  mul.s $f18, $f22, $f24
/* B1C77C 800A55DC 46128100 */  add.s $f4, $f16, $f18
/* B1C780 800A55E0 4600B282 */  mul.s $f10, $f22, $f0
/* B1C784 800A55E4 44800000 */  mtc1  $zero, $f0
/* B1C788 800A55E8 4618A402 */  mul.s $f16, $f20, $f24
/* B1C78C 800A55EC 46043201 */  sub.s $f8, $f6, $f4
/* B1C790 800A55F0 C6260008 */  lwc1  $f6, 8($s1)
/* B1C794 800A55F4 E6280000 */  swc1  $f8, ($s1)
/* B1C798 800A55F8 46105481 */  sub.s $f18, $f10, $f16
/* B1C79C 800A55FC 46123101 */  sub.s $f4, $f6, $f18
/* B1C7A0 800A5600 E6240008 */  swc1  $f4, 8($s1)
.L800A5604:
/* B1C7A4 800A5604 87AA0042 */  lh    $t2, 0x42($sp)
/* B1C7A8 800A5608 8E020020 */  lw    $v0, 0x20($s0)
/* B1C7AC 800A560C 860C003E */  lh    $t4, 0x3e($s0)
/* B1C7B0 800A5610 A60A0036 */  sh    $t2, 0x36($s0)
/* B1C7B4 800A5614 844B0000 */  lh    $t3, ($v0)
/* B1C7B8 800A5618 A60B0038 */  sh    $t3, 0x38($s0)
/* B1C7BC 800A561C A44C0000 */  sh    $t4, ($v0)
/* B1C7C0 800A5620 8E020020 */  lw    $v0, 0x20($s0)
/* B1C7C4 800A5624 860E0042 */  lh    $t6, 0x42($s0)
/* B1C7C8 800A5628 844D0004 */  lh    $t5, 4($v0)
/* B1C7CC 800A562C A60D003C */  sh    $t5, 0x3c($s0)
/* B1C7D0 800A5630 A44E0004 */  sh    $t6, 4($v0)
/* B1C7D4 800A5634 92030035 */  lbu   $v1, 0x35($s0)
/* B1C7D8 800A5638 306F0002 */  andi  $t7, $v1, 2
/* B1C7DC 800A563C 11E00013 */  beqz  $t7, .L800A568C
/* B1C7E0 800A5640 30780010 */   andi  $t8, $v1, 0x10
/* B1C7E4 800A5644 53000004 */  beql  $t8, $zero, .L800A5658
/* B1C7E8 800A5648 8E190020 */   lw    $t9, 0x20($s0)
/* B1C7EC 800A564C 10000009 */  b     .L800A5674
/* B1C7F0 800A5650 E6200004 */   swc1  $f0, 4($s1)
/* B1C7F4 800A5654 8E190020 */  lw    $t9, 0x20($s0)
.L800A5658:
/* B1C7F8 800A5658 8609003A */  lh    $t1, 0x3a($s0)
/* B1C7FC 800A565C 87280002 */  lh    $t0, 2($t9)
/* B1C800 800A5660 01095023 */  subu  $t2, $t0, $t1
/* B1C804 800A5664 448A4000 */  mtc1  $t2, $f8
/* B1C808 800A5668 00000000 */  nop   
/* B1C80C 800A566C 468042A0 */  cvt.s.w $f10, $f8
/* B1C810 800A5670 E62A0004 */  swc1  $f10, 4($s1)
.L800A5674:
/* B1C814 800A5674 8E020020 */  lw    $v0, 0x20($s0)
/* B1C818 800A5678 860C0040 */  lh    $t4, 0x40($s0)
/* B1C81C 800A567C 844B0002 */  lh    $t3, 2($v0)
/* B1C820 800A5680 A60B003A */  sh    $t3, 0x3a($s0)
/* B1C824 800A5684 10000005 */  b     .L800A569C
/* B1C828 800A5688 A44C0002 */   sh    $t4, 2($v0)
.L800A568C:
/* B1C82C 800A568C E6200004 */  swc1  $f0, 4($s1)
/* B1C830 800A5690 8E0D0020 */  lw    $t5, 0x20($s0)
/* B1C834 800A5694 85AE0002 */  lh    $t6, 2($t5)
/* B1C838 800A5698 A60E003A */  sh    $t6, 0x3a($s0)
.L800A569C:
/* B1C83C 800A569C 920F0035 */  lbu   $t7, 0x35($s0)
/* B1C840 800A56A0 31F8FFEF */  andi  $t8, $t7, 0xffef
/* B1C844 800A56A4 A2180035 */  sb    $t8, 0x35($s0)
/* B1C848 800A56A8 8FBF0034 */  lw    $ra, 0x34($sp)
/* B1C84C 800A56AC 8FB10030 */  lw    $s1, 0x30($sp)
/* B1C850 800A56B0 8FB0002C */  lw    $s0, 0x2c($sp)
/* B1C854 800A56B4 D7B80020 */  ldc1  $f24, 0x20($sp)
/* B1C858 800A56B8 D7B60018 */  ldc1  $f22, 0x18($sp)
/* B1C85C 800A56BC D7B40010 */  ldc1  $f20, 0x10($sp)
/* B1C860 800A56C0 03E00008 */  jr    $ra
/* B1C864 800A56C4 27BD0038 */   addiu $sp, $sp, 0x38

glabel func_800A56C8
/* B1C868 800A56C8 44856000 */  mtc1  $a1, $f12
/* B1C86C 800A56CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1C870 800A56D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1C874 800A56D4 44056000 */  mfc1  $a1, $f12
/* B1C878 800A56D8 0C02911E */  jal   func_800A4478
/* B1C87C 800A56DC 3C063F80 */   lui   $a2, 0x3f80
/* B1C880 800A56E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1C884 800A56E4 27BD0018 */  addiu $sp, $sp, 0x18
/* B1C888 800A56E8 03E00008 */  jr    $ra
/* B1C88C 800A56EC 00000000 */   nop   

glabel func_800A56F0
/* B1C890 800A56F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1C894 800A56F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1C898 800A56F8 AFA40018 */  sw    $a0, 0x18($sp)
/* B1C89C 800A56FC AFA5001C */  sw    $a1, 0x1c($sp)
/* B1C8A0 800A5700 8C870020 */  lw    $a3, 0x20($a0)
/* B1C8A4 800A5704 3C058014 */  lui   $a1, %hi(D_80140608) # $a1, 0x8014
/* B1C8A8 800A5708 24A50608 */  addiu $a1, %lo(D_80140608) # addiu $a1, $a1, 0x608
/* B1C8AC 800A570C 10E00006 */  beqz  $a3, .L800A5728
/* B1C8B0 800A5710 3C048014 */   lui   $a0, %hi(D_8014061C) # $a0, 0x8014
/* B1C8B4 800A5714 00E02025 */  move  $a0, $a3
/* B1C8B8 800A5718 0C01EC35 */  jal   func_8007B0D4
/* B1C8BC 800A571C 24060E91 */   li    $a2, 3729
/* B1C8C0 800A5720 10000004 */  b     .L800A5734
/* B1C8C4 800A5724 8FAF0018 */   lw    $t7, 0x18($sp)
.L800A5728:
/* B1C8C8 800A5728 0C00084C */  jal   osSyncPrintf
/* B1C8CC 800A572C 2484061C */   addiu $a0, %lo(D_8014061C) # addiu $a0, $a0, 0x61c
/* B1C8D0 800A5730 8FAF0018 */  lw    $t7, 0x18($sp)
.L800A5734:
/* B1C8D4 800A5734 3C058014 */  lui   $a1, %hi(D_80140638) # $a1, 0x8014
/* B1C8D8 800A5738 24A50638 */  addiu $a1, %lo(D_80140638) # addiu $a1, $a1, 0x638
/* B1C8DC 800A573C 8DE40024 */  lw    $a0, 0x24($t7)
/* B1C8E0 800A5740 10800005 */  beqz  $a0, .L800A5758
/* B1C8E4 800A5744 00000000 */   nop   
/* B1C8E8 800A5748 0C01EC35 */  jal   func_8007B0D4
/* B1C8EC 800A574C 24060E93 */   li    $a2, 3731
/* B1C8F0 800A5750 10000005 */  b     .L800A5768
/* B1C8F4 800A5754 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A5758:
/* B1C8F8 800A5758 3C048014 */  lui   $a0, %hi(D_8014064C) # $a0, 0x8014
/* B1C8FC 800A575C 0C00084C */  jal   osSyncPrintf
/* B1C900 800A5760 2484064C */   addiu $a0, %lo(D_8014064C) # addiu $a0, $a0, 0x64c
/* B1C904 800A5764 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A5768:
/* B1C908 800A5768 27BD0018 */  addiu $sp, $sp, 0x18
/* B1C90C 800A576C 03E00008 */  jr    $ra
/* B1C910 800A5770 00000000 */   nop   

glabel func_800A5774
/* B1C914 800A5774 908E0000 */  lbu   $t6, ($a0)
/* B1C918 800A5778 00001025 */  move  $v0, $zero
/* B1C91C 800A577C 19C0000E */  blez  $t6, .L800A57B8
/* B1C920 800A5780 00000000 */   nop   
/* B1C924 800A5784 88D80000 */  lwl   $t8, ($a2)
.L800A5788:
/* B1C928 800A5788 98D80003 */  lwr   $t8, 3($a2)
/* B1C92C 800A578C 24420001 */  addiu $v0, $v0, 1
/* B1C930 800A5790 24A50006 */  addiu $a1, $a1, 6
/* B1C934 800A5794 A8B8FFFA */  swl   $t8, -6($a1)
/* B1C938 800A5798 B8B8FFFD */  swr   $t8, -3($a1)
/* B1C93C 800A579C 94D80004 */  lhu   $t8, 4($a2)
/* B1C940 800A57A0 24C60006 */  addiu $a2, $a2, 6
/* B1C944 800A57A4 A4B8FFFE */  sh    $t8, -2($a1)
/* B1C948 800A57A8 90990000 */  lbu   $t9, ($a0)
/* B1C94C 800A57AC 0059082A */  slt   $at, $v0, $t9
/* B1C950 800A57B0 5420FFF5 */  bnezl $at, .L800A5788
/* B1C954 800A57B4 88D80000 */   lwl   $t8, ($a2)
.L800A57B8:
/* B1C958 800A57B8 03E00008 */  jr    $ra
/* B1C95C 800A57BC 00000000 */   nop   
