.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_801069B0
/* B7DB50 801069B0 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* B7DB54 801069B4 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* B7DB58 801069B8 8CAF0000 */  lw    $t7, ($a1)
/* B7DB5C 801069BC 240E00BD */  li    $t6, 189
/* B7DB60 801069C0 241800B8 */  li    $t8, 184
/* B7DB64 801069C4 A5EE0F6E */  sh    $t6, 0xf6e($t7)
/* B7DB68 801069C8 8CB90000 */  lw    $t9, ($a1)
/* B7DB6C 801069CC 240800B3 */  li    $t0, 179
/* B7DB70 801069D0 240A00AE */  li    $t2, 174
/* B7DB74 801069D4 A7380F70 */  sh    $t8, 0xf70($t9)
/* B7DB78 801069D8 8CA90000 */  lw    $t1, ($a1)
/* B7DB7C 801069DC 240C00A9 */  li    $t4, 169
/* B7DB80 801069E0 3C038015 */  lui   $v1, %hi(D_80153958) # $v1, 0x8015
/* B7DB84 801069E4 A5280F72 */  sh    $t0, 0xf72($t1)
/* B7DB88 801069E8 8CAB0000 */  lw    $t3, ($a1)
/* B7DB8C 801069EC 240E00FF */  li    $t6, 255
/* B7DB90 801069F0 3C018015 */  lui   $at, %hi(D_8015394C) # $at, 0x8015
/* B7DB94 801069F4 A56A0F74 */  sh    $t2, 0xf74($t3)
/* B7DB98 801069F8 8CAD0000 */  lw    $t5, ($a1)
/* B7DB9C 801069FC 24633958 */  addiu $v1, %lo(D_80153958) # addiu $v1, $v1, 0x3958
/* B7DBA0 80106A00 240F0050 */  li    $t7, 80
/* B7DBA4 80106A04 A5AC0F76 */  sh    $t4, 0xf76($t5)
/* B7DBA8 80106A08 A02E394C */  sb    $t6, %lo(D_8015394C)($at)
/* B7DBAC 80106A0C A4600010 */  sh    $zero, 0x10($v1)
/* B7DBB0 80106A10 84620010 */  lh    $v0, 0x10($v1)
/* B7DBB4 80106A14 3C018017 */  lui   $at, %hi(D_801759A8) # $at, 0x8017
/* B7DBB8 80106A18 240600FF */  li    $a2, 255
/* B7DBBC 80106A1C A462000E */  sh    $v0, 0xe($v1)
/* B7DBC0 80106A20 A462000C */  sh    $v0, 0xc($v1)
/* B7DBC4 80106A24 A462000A */  sh    $v0, 0xa($v1)
/* B7DBC8 80106A28 A4620008 */  sh    $v0, 8($v1)
/* B7DBCC 80106A2C A4620006 */  sh    $v0, 6($v1)
/* B7DBD0 80106A30 A4620004 */  sh    $v0, 4($v1)
/* B7DBD4 80106A34 A4620002 */  sh    $v0, 2($v1)
/* B7DBD8 80106A38 A4620000 */  sh    $v0, ($v1)
/* B7DBDC 80106A3C A42F59A8 */  sh    $t7, %lo(D_801759A8)($at)
/* B7DBE0 80106A40 3C018017 */  lui   $at, %hi(D_801759AC) # $at, 0x8017
/* B7DBE4 80106A44 A42659AC */  sh    $a2, %lo(D_801759AC)($at)
/* B7DBE8 80106A48 3C018017 */  lui   $at, %hi(D_801759AA) # $at, 0x8017
/* B7DBEC 80106A4C 24180096 */  li    $t8, 150
/* B7DBF0 80106A50 A43859AA */  sh    $t8, %lo(D_801759AA)($at)
/* B7DBF4 80106A54 2404000A */  li    $a0, 10
/* B7DBF8 80106A58 3C018017 */  lui   $at, %hi(D_801759AE) # $at, 0x8017
/* B7DBFC 80106A5C A42459AE */  sh    $a0, %lo(D_801759AE)($at)
/* B7DC00 80106A60 3C018017 */  lui   $at, %hi(D_801759B2) # $at, 0x8017
/* B7DC04 80106A64 A42459B2 */  sh    $a0, %lo(D_801759B2)($at)
/* B7DC08 80106A68 3C018017 */  lui   $at, %hi(D_801759B0) # $at, 0x8017
/* B7DC0C 80106A6C A42459B0 */  sh    $a0, %lo(D_801759B0)($at)
/* B7DC10 80106A70 3C018017 */  lui   $at, %hi(D_801759B4) # $at, 0x8017
/* B7DC14 80106A74 A42659B4 */  sh    $a2, %lo(D_801759B4)($at)
/* B7DC18 80106A78 3C018017 */  lui   $at, %hi(D_801759B8) # $at, 0x8017
/* B7DC1C 80106A7C A42659B8 */  sh    $a2, %lo(D_801759B8)($at)
/* B7DC20 80106A80 3C018017 */  lui   $at, %hi(D_801759B6) # $at, 0x8017
/* B7DC24 80106A84 24190032 */  li    $t9, 50
/* B7DC28 80106A88 A43959B6 */  sh    $t9, %lo(D_801759B6)($at)
/* B7DC2C 80106A8C 3C018017 */  lui   $at, %hi(D_801759BA) # $at, 0x8017
/* B7DC30 80106A90 A42459BA */  sh    $a0, %lo(D_801759BA)($at)
/* B7DC34 80106A94 3C018017 */  lui   $at, %hi(D_801759BE) # $at, 0x8017
/* B7DC38 80106A98 A42459BE */  sh    $a0, %lo(D_801759BE)($at)
/* B7DC3C 80106A9C 3C018017 */  lui   $at, %hi(D_801759BC)
/* B7DC40 80106AA0 03E00008 */  jr    $ra
/* B7DC44 80106AA4 A42459BC */   sh    $a0, %lo(D_801759BC)($at)

glabel func_80106AA8
/* B7DC48 80106AA8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B7DC4C 80106AAC 3C010001 */  lui   $at, 1
/* B7DC50 80106AB0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B7DC54 80106AB4 AFB00018 */  sw    $s0, 0x18($sp)
/* B7DC58 80106AB8 00811021 */  addu  $v0, $a0, $at
/* B7DC5C 80106ABC 904E03DC */  lbu   $t6, 0x3dc($v0)
/* B7DC60 80106AC0 00240821 */  addu  $at, $at, $a0
/* B7DC64 80106AC4 00802825 */  move  $a1, $a0
/* B7DC68 80106AC8 25CF0001 */  addiu $t7, $t6, 1
/* B7DC6C 80106ACC A02F03DC */  sb    $t7, 0x3dc($at)
/* B7DC70 80106AD0 905803DC */  lbu   $t8, 0x3dc($v0)
/* B7DC74 80106AD4 2401002E */  li    $at, 46
/* B7DC78 80106AD8 24040001 */  li    $a0, 1
/* B7DC7C 80106ADC 17010019 */  bne   $t8, $at, .L80106B44
/* B7DC80 80106AE0 24B020D8 */   addiu $s0, $a1, 0x20d8
/* B7DC84 80106AE4 0C03B616 */  jal   func_800ED858
/* B7DC88 80106AE8 AFA50030 */   sw    $a1, 0x30($sp)
/* B7DC8C 80106AEC 0C03B8F5 */  jal   func_800EE3D4
/* B7DC90 80106AF0 00000000 */   nop   
/* B7DC94 80106AF4 8FA50030 */  lw    $a1, 0x30($sp)
/* B7DC98 80106AF8 3C068015 */  lui   $a2, %hi(D_8014B2F8) # $a2, 0x8015
/* B7DC9C 80106AFC 24C6B2F8 */  addiu $a2, %lo(D_8014B2F8) # addiu $a2, $a2, -0x4d08
/* B7DCA0 80106B00 24B020D8 */  addiu $s0, $a1, 0x20d8
/* B7DCA4 80106B04 26017FFF */  addiu $at, $s0, 0x7fff
/* B7DCA8 80106B08 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B7DCAC 80106B0C A4C00000 */  sh    $zero, ($a2)
/* B7DCB0 80106B10 34018000 */  li    $at, 32768
/* B7DCB4 80106B14 02011821 */  addu  $v1, $s0, $at
/* B7DCB8 80106B18 8C6862B8 */  lw    $t0, 0x62b8($v1)
/* B7DCBC 80106B1C 84D90000 */  lh    $t9, ($a2)
/* B7DCC0 80106B20 3404A000 */  li    $a0, 40960
/* B7DCC4 80106B24 A1190002 */  sb    $t9, 2($t0)
/* B7DCC8 80106B28 0C03B301 */  jal   func_800ECC04
/* B7DCCC 80106B2C AFA30024 */   sw    $v1, 0x24($sp)
/* B7DCD0 80106B30 8FA30024 */  lw    $v1, 0x24($sp)
/* B7DCD4 80106B34 26017FFF */  addiu $at, $s0, 0x7fff
/* B7DCD8 80106B38 946963D4 */  lhu   $t1, 0x63d4($v1)
/* B7DCDC 80106B3C 1000001B */  b     .L80106BAC
/* B7DCE0 80106B40 A42963D3 */   sh    $t1, 0x63d3($at)
.L80106B44:
/* B7DCE4 80106B44 34018000 */  li    $at, 32768
/* B7DCE8 80106B48 02011821 */  addu  $v1, $s0, $at
/* B7DCEC 80106B4C 906A6304 */  lbu   $t2, 0x6304($v1)
/* B7DCF0 80106B50 2401002C */  li    $at, 44
/* B7DCF4 80106B54 24040006 */  li    $a0, 6
/* B7DCF8 80106B58 15410014 */  bne   $t2, $at, .L80106BAC
/* B7DCFC 80106B5C 00000000 */   nop   
/* B7DD00 80106B60 0C03B616 */  jal   func_800ED858
/* B7DD04 80106B64 AFA30024 */   sw    $v1, 0x24($sp)
/* B7DD08 80106B68 0C03B8FE */  jal   func_800EE3F8
/* B7DD0C 80106B6C 00000000 */   nop   
/* B7DD10 80106B70 8FA30024 */  lw    $v1, 0x24($sp)
/* B7DD14 80106B74 3C068015 */  lui   $a2, %hi(D_8014B2F8) # $a2, 0x8015
/* B7DD18 80106B78 26017FFF */  addiu $at, $s0, 0x7fff
/* B7DD1C 80106B7C AC2262B9 */  sw    $v0, 0x62b9($at)
/* B7DD20 80106B80 24C6B2F8 */  addiu $a2, %lo(D_8014B2F8) # addiu $a2, $a2, -0x4d08
/* B7DD24 80106B84 A4C00000 */  sh    $zero, ($a2)
/* B7DD28 80106B88 84CB0000 */  lh    $t3, ($a2)
/* B7DD2C 80106B8C 8C6C62B8 */  lw    $t4, 0x62b8($v1)
/* B7DD30 80106B90 2404000E */  li    $a0, 14
/* B7DD34 80106B94 24050001 */  li    $a1, 1
/* B7DD38 80106B98 0C03B64F */  jal   func_800ED93C
/* B7DD3C 80106B9C A18B0002 */   sb    $t3, 2($t4)
/* B7DD40 80106BA0 240D0002 */  li    $t5, 2
/* B7DD44 80106BA4 26017FFF */  addiu $at, $s0, 0x7fff
/* B7DD48 80106BA8 A02D63E8 */  sb    $t5, 0x63e8($at)
.L80106BAC:
/* B7DD4C 80106BAC 0C041A6C */  jal   func_801069B0
/* B7DD50 80106BB0 00000000 */   nop   
/* B7DD54 80106BB4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B7DD58 80106BB8 8FB00018 */  lw    $s0, 0x18($sp)
/* B7DD5C 80106BBC 27BD0030 */  addiu $sp, $sp, 0x30
/* B7DD60 80106BC0 03E00008 */  jr    $ra
/* B7DD64 80106BC4 00000000 */   nop   

glabel func_80106BC8
/* B7DD68 80106BC8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B7DD6C 80106BCC AFBF001C */  sw    $ra, 0x1c($sp)
/* B7DD70 80106BD0 AFA40030 */  sw    $a0, 0x30($sp)
/* B7DD74 80106BD4 948F0020 */  lhu   $t7, 0x20($a0)
/* B7DD78 80106BD8 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* B7DD7C 80106BDC 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* B7DD80 80106BE0 01E1C027 */  nor   $t8, $t7, $at
/* B7DD84 80106BE4 13000008 */  beqz  $t8, .L80106C08
/* B7DD88 80106BE8 2401BFFF */   li    $at, -16385
/* B7DD8C 80106BEC 01E1C827 */  nor   $t9, $t7, $at
/* B7DD90 80106BF0 13200005 */  beqz  $t9, .L80106C08
/* B7DD94 80106BF4 01E01025 */   move  $v0, $t7
/* B7DD98 80106BF8 2401FFF7 */  li    $at, -9
/* B7DD9C 80106BFC 01E14027 */  nor   $t0, $t7, $at
/* B7DDA0 80106C00 55000012 */  bnezl $t0, .L80106C4C
/* B7DDA4 80106C04 3C01FFFF */   lui   $at, 0xffff
.L80106C08:
/* B7DDA8 80106C08 8FAA0030 */  lw    $t2, 0x30($sp)
/* B7DDAC 80106C0C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7DDB0 80106C10 3C098013 */  lui   $t1, %hi(D_801333E8) # $t1, 0x8013
/* B7DDB4 80106C14 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7DDB8 80106C18 252933E8 */  addiu $t1, %lo(D_801333E8) # addiu $t1, $t1, 0x33e8
/* B7DDBC 80106C1C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7DDC0 80106C20 254B0014 */  addiu $t3, $t2, 0x14
/* B7DDC4 80106C24 AFAB0024 */  sw    $t3, 0x24($sp)
/* B7DDC8 80106C28 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7DDCC 80106C2C AFA90014 */  sw    $t1, 0x14($sp)
/* B7DDD0 80106C30 AFA70010 */  sw    $a3, 0x10($sp)
/* B7DDD4 80106C34 24044818 */  li    $a0, 18456
/* B7DDD8 80106C38 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7DDDC 80106C3C 24060004 */   li    $a2, 4
/* B7DDE0 80106C40 8FAC0024 */  lw    $t4, 0x24($sp)
/* B7DDE4 80106C44 9582000C */  lhu   $v0, 0xc($t4)
/* B7DDE8 80106C48 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
.L80106C4C:
/* B7DDEC 80106C4C 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* B7DDF0 80106C50 00411827 */  nor   $v1, $v0, $at
/* B7DDF4 80106C54 2C630001 */  sltiu $v1, $v1, 1
/* B7DDF8 80106C58 14600008 */  bnez  $v1, .L80106C7C
/* B7DDFC 80106C5C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B7DE00 80106C60 2401BFFF */  li    $at, -16385
/* B7DE04 80106C64 00411827 */  nor   $v1, $v0, $at
/* B7DE08 80106C68 2C630001 */  sltiu $v1, $v1, 1
/* B7DE0C 80106C6C 14600003 */  bnez  $v1, .L80106C7C
/* B7DE10 80106C70 2401FFF7 */   li    $at, -9
/* B7DE14 80106C74 00411827 */  nor   $v1, $v0, $at
/* B7DE18 80106C78 2C630001 */  sltiu $v1, $v1, 1
.L80106C7C:
/* B7DE1C 80106C7C 306200FF */  andi  $v0, $v1, 0xff
/* B7DE20 80106C80 03E00008 */  jr    $ra
/* B7DE24 80106C84 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_80106C88
/* B7DE28 80106C88 94830020 */  lhu   $v1, 0x20($a0)
/* B7DE2C 80106C8C 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* B7DE30 80106C90 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* B7DE34 80106C94 00611827 */  nor   $v1, $v1, $at
/* B7DE38 80106C98 2C630001 */  sltiu $v1, $v1, 1
/* B7DE3C 80106C9C 14600009 */  bnez  $v1, .L80106CC4
/* B7DE40 80106CA0 00000000 */   nop   
/* B7DE44 80106CA4 94820020 */  lhu   $v0, 0x20($a0)
/* B7DE48 80106CA8 2401BFFF */  li    $at, -16385
/* B7DE4C 80106CAC 00411827 */  nor   $v1, $v0, $at
/* B7DE50 80106CB0 2C630001 */  sltiu $v1, $v1, 1
/* B7DE54 80106CB4 14600003 */  bnez  $v1, .L80106CC4
/* B7DE58 80106CB8 2401FFF7 */   li    $at, -9
/* B7DE5C 80106CBC 00411827 */  nor   $v1, $v0, $at
/* B7DE60 80106CC0 2C630001 */  sltiu $v1, $v1, 1
.L80106CC4:
/* B7DE64 80106CC4 03E00008 */  jr    $ra
/* B7DE68 80106CC8 306200FF */   andi  $v0, $v1, 0xff

glabel func_80106CCC
/* B7DE6C 80106CCC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B7DE70 80106CD0 3C0F0001 */  lui   $t7, 1
/* B7DE74 80106CD4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B7DE78 80106CD8 AFA40020 */  sw    $a0, 0x20($sp)
/* B7DE7C 80106CDC 01E47821 */  addu  $t7, $t7, $a0
/* B7DE80 80106CE0 8DEF03D8 */  lw    $t7, 0x3d8($t7)
/* B7DE84 80106CE4 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7DE88 80106CE8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7DE8C 80106CEC 11E00010 */  beqz  $t7, .L80106D30
/* B7DE90 80106CF0 248220D8 */   addiu $v0, $a0, 0x20d8
/* B7DE94 80106CF4 24417FFF */  addiu $at, $v0, 0x7fff
/* B7DE98 80106CF8 24180002 */  li    $t8, 2
/* B7DE9C 80106CFC 24190036 */  li    $t9, 54
/* B7DEA0 80106D00 3C088013 */  lui   $t0, %hi(D_801333E8) # $t0, 0x8013
/* B7DEA4 80106D04 A03863E8 */  sb    $t8, 0x63e8($at)
/* B7DEA8 80106D08 A0396305 */  sb    $t9, 0x6305($at)
/* B7DEAC 80106D0C A02063E5 */  sb    $zero, 0x63e5($at)
/* B7DEB0 80106D10 250833E8 */  addiu $t0, %lo(D_801333E8) # addiu $t0, $t0, 0x33e8
/* B7DEB4 80106D14 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7DEB8 80106D18 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7DEBC 80106D1C AFA80014 */  sw    $t0, 0x14($sp)
/* B7DEC0 80106D20 AFA70010 */  sw    $a3, 0x10($sp)
/* B7DEC4 80106D24 00002025 */  move  $a0, $zero
/* B7DEC8 80106D28 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7DECC 80106D2C 24060004 */   li    $a2, 4
.L80106D30:
/* B7DED0 80106D30 8FBF001C */  lw    $ra, 0x1c($sp)
/* B7DED4 80106D34 27BD0020 */  addiu $sp, $sp, 0x20
/* B7DED8 80106D38 03E00008 */  jr    $ra
/* B7DEDC 80106D3C 00000000 */   nop   

glabel func_80106D40
/* B7DEE0 80106D40 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B7DEE4 80106D44 AFBF001C */  sw    $ra, 0x1c($sp)
/* B7DEE8 80106D48 AFA40020 */  sw    $a0, 0x20($sp)
/* B7DEEC 80106D4C AFA50024 */  sw    $a1, 0x24($sp)
/* B7DEF0 80106D50 808F0029 */  lb    $t7, 0x29($a0)
/* B7DEF4 80106D54 3C188015 */  lui   $t8, %hi(D_80153984) # $t8, 0x8015
/* B7DEF8 80106D58 8FAC0020 */  lw    $t4, 0x20($sp)
/* B7DEFC 80106D5C 29E1001E */  slti  $at, $t7, 0x1e
/* B7DF00 80106D60 54200021 */  bnezl $at, .L80106DE8
/* B7DF04 80106D64 81820029 */   lb    $v0, 0x29($t4)
/* B7DF08 80106D68 87183984 */  lh    $t8, %lo(D_80153984)($t8)
/* B7DF0C 80106D6C 24190001 */  li    $t9, 1
/* B7DF10 80106D70 3C018015 */  lui   $at, %hi(D_80153984) # $at, 0x8015
/* B7DF14 80106D74 1700001B */  bnez  $t8, .L80106DE4
/* B7DF18 80106D78 248320D8 */   addiu $v1, $a0, 0x20d8
/* B7DF1C 80106D7C A4393984 */  sh    $t9, %lo(D_80153984)($at)
/* B7DF20 80106D80 34018000 */  li    $at, 32768
/* B7DF24 80106D84 00611021 */  addu  $v0, $v1, $at
/* B7DF28 80106D88 904863E5 */  lbu   $t0, 0x63e5($v0)
/* B7DF2C 80106D8C 24617FFF */  addiu $at, $v1, 0x7fff
/* B7DF30 80106D90 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7DF34 80106D94 2509FFFF */  addiu $t1, $t0, -1
/* B7DF38 80106D98 A02963E6 */  sb    $t1, 0x63e6($at)
/* B7DF3C 80106D9C 904A63E5 */  lbu   $t2, 0x63e5($v0)
/* B7DF40 80106DA0 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7DF44 80106DA4 24044809 */  li    $a0, 18441
/* B7DF48 80106DA8 29410081 */  slti  $at, $t2, 0x81
/* B7DF4C 80106DAC 14200004 */  bnez  $at, .L80106DC0
/* B7DF50 80106DB0 3C058013 */   lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7DF54 80106DB4 24617FFF */  addiu $at, $v1, 0x7fff
/* B7DF58 80106DB8 10000037 */  b     .L80106E98
/* B7DF5C 80106DBC A02063E6 */   sb    $zero, 0x63e6($at)
.L80106DC0:
/* B7DF60 80106DC0 3C0B8013 */  lui   $t3, %hi(D_801333E8) # $t3, 0x8013
/* B7DF64 80106DC4 256B33E8 */  addiu $t3, %lo(D_801333E8) # addiu $t3, $t3, 0x33e8
/* B7DF68 80106DC8 AFAB0014 */  sw    $t3, 0x14($sp)
/* B7DF6C 80106DCC 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7DF70 80106DD0 24060004 */  li    $a2, 4
/* B7DF74 80106DD4 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7DF78 80106DD8 AFA70010 */   sw    $a3, 0x10($sp)
/* B7DF7C 80106DDC 1000002E */  b     .L80106E98
/* B7DF80 80106DE0 00000000 */   nop   
.L80106DE4:
/* B7DF84 80106DE4 81820029 */  lb    $v0, 0x29($t4)
.L80106DE8:
/* B7DF88 80106DE8 3C0D8015 */  lui   $t5, %hi(D_80153984) # $t5, 0x8015
/* B7DF8C 80106DEC 2841FFE3 */  slti  $at, $v0, -0x1d
/* B7DF90 80106DF0 10200021 */  beqz  $at, .L80106E78
/* B7DF94 80106DF4 00000000 */   nop   
/* B7DF98 80106DF8 85AD3984 */  lh    $t5, %lo(D_80153984)($t5)
/* B7DF9C 80106DFC 240F0001 */  li    $t7, 1
/* B7DFA0 80106E00 3C018015 */  lui   $at, %hi(D_80153984) # $at, 0x8015
/* B7DFA4 80106E04 15A0001C */  bnez  $t5, .L80106E78
/* B7DFA8 80106E08 258320D8 */   addiu $v1, $t4, 0x20d8
/* B7DFAC 80106E0C A42F3984 */  sh    $t7, %lo(D_80153984)($at)
/* B7DFB0 80106E10 34018000 */  li    $at, 32768
/* B7DFB4 80106E14 00611021 */  addu  $v0, $v1, $at
/* B7DFB8 80106E18 905863E5 */  lbu   $t8, 0x63e5($v0)
/* B7DFBC 80106E1C 24617FFF */  addiu $at, $v1, 0x7fff
/* B7DFC0 80106E20 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7DFC4 80106E24 27190001 */  addiu $t9, $t8, 1
/* B7DFC8 80106E28 A03963E6 */  sb    $t9, 0x63e6($at)
/* B7DFCC 80106E2C 904863E5 */  lbu   $t0, 0x63e5($v0)
/* B7DFD0 80106E30 93AE0027 */  lbu   $t6, 0x27($sp)
/* B7DFD4 80106E34 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7DFD8 80106E38 24044809 */  li    $a0, 18441
/* B7DFDC 80106E3C 01C8082A */  slt   $at, $t6, $t0
/* B7DFE0 80106E40 10200004 */  beqz  $at, .L80106E54
/* B7DFE4 80106E44 3C058013 */   lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7DFE8 80106E48 24617FFF */  addiu $at, $v1, 0x7fff
/* B7DFEC 80106E4C 10000012 */  b     .L80106E98
/* B7DFF0 80106E50 A02E63E6 */   sb    $t6, 0x63e6($at)
.L80106E54:
/* B7DFF4 80106E54 3C098013 */  lui   $t1, %hi(D_801333E8) # $t1, 0x8013
/* B7DFF8 80106E58 252933E8 */  addiu $t1, %lo(D_801333E8) # addiu $t1, $t1, 0x33e8
/* B7DFFC 80106E5C AFA90014 */  sw    $t1, 0x14($sp)
/* B7E000 80106E60 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7E004 80106E64 24060004 */  li    $a2, 4
/* B7E008 80106E68 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7E00C 80106E6C AFA70010 */   sw    $a3, 0x10($sp)
/* B7E010 80106E70 10000009 */  b     .L80106E98
/* B7E014 80106E74 00000000 */   nop   
.L80106E78:
/* B7E018 80106E78 04400003 */  bltz  $v0, .L80106E88
/* B7E01C 80106E7C 00021823 */   negu  $v1, $v0
/* B7E020 80106E80 10000001 */  b     .L80106E88
/* B7E024 80106E84 00401825 */   move  $v1, $v0
.L80106E88:
/* B7E028 80106E88 2861001E */  slti  $at, $v1, 0x1e
/* B7E02C 80106E8C 10200002 */  beqz  $at, .L80106E98
/* B7E030 80106E90 3C018015 */   lui   $at, %hi(D_80153984) # $at, 0x8015
/* B7E034 80106E94 A4203984 */  sh    $zero, %lo(D_80153984)($at)
.L80106E98:
/* B7E038 80106E98 3C048016 */  lui   $a0, %hi(gGameInfo) # $a0, 0x8016
/* B7E03C 80106E9C 2484FA90 */  addiu $a0, %lo(gGameInfo) # addiu $a0, $a0, -0x570
/* B7E040 80106EA0 8C8A0000 */  lw    $t2, ($a0)
/* B7E044 80106EA4 8FA30020 */  lw    $v1, 0x20($sp)
/* B7E048 80106EA8 854B0B18 */  lh    $t3, 0xb18($t2)
/* B7E04C 80106EAC 246320D8 */  addiu $v1, $v1, 0x20d8
/* B7E050 80106EB0 24617FFF */  addiu $at, $v1, 0x7fff
/* B7E054 80106EB4 A42B63D9 */  sh    $t3, 0x63d9($at)
/* B7E058 80106EB8 93AD0027 */  lbu   $t5, 0x27($sp)
/* B7E05C 80106EBC 34018000 */  li    $at, 32768
/* B7E060 80106EC0 00611021 */  addu  $v0, $v1, $at
/* B7E064 80106EC4 24010001 */  li    $at, 1
/* B7E068 80106EC8 55A1000A */  bnel  $t5, $at, .L80106EF4
/* B7E06C 80106ECC 904963E5 */   lbu   $t1, 0x63e5($v0)
/* B7E070 80106ED0 904C63E5 */  lbu   $t4, 0x63e5($v0)
/* B7E074 80106ED4 8C8F0000 */  lw    $t7, ($a0)
/* B7E078 80106ED8 24617FFF */  addiu $at, $v1, 0x7fff
/* B7E07C 80106EDC 000CC040 */  sll   $t8, $t4, 1
/* B7E080 80106EE0 01F8C821 */  addu  $t9, $t7, $t8
/* B7E084 80106EE4 87280B1C */  lh    $t0, 0xb1c($t9)
/* B7E088 80106EE8 10000008 */  b     .L80106F0C
/* B7E08C 80106EEC A42863DB */   sh    $t0, 0x63db($at)
/* B7E090 80106EF0 904963E5 */  lbu   $t1, 0x63e5($v0)
.L80106EF4:
/* B7E094 80106EF4 8C8E0000 */  lw    $t6, ($a0)
/* B7E098 80106EF8 24617FFF */  addiu $at, $v1, 0x7fff
/* B7E09C 80106EFC 00095040 */  sll   $t2, $t1, 1
/* B7E0A0 80106F00 01CA5821 */  addu  $t3, $t6, $t2
/* B7E0A4 80106F04 856D0B1A */  lh    $t5, 0xb1a($t3)
/* B7E0A8 80106F08 A42D63DB */  sh    $t5, 0x63db($at)
.L80106F0C:
/* B7E0AC 80106F0C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B7E0B0 80106F10 27BD0020 */  addiu $sp, $sp, 0x20
/* B7E0B4 80106F14 03E00008 */  jr    $ra
/* B7E0B8 80106F18 00000000 */   nop   

glabel func_80106F1C
/* B7E0BC 80106F1C AFA50004 */  sw    $a1, 4($sp)
/* B7E0C0 80106F20 AFA60008 */  sw    $a2, 8($sp)
/* B7E0C4 80106F24 3C010001 */  lui   $at, 1
/* B7E0C8 80106F28 8CC20000 */  lw    $v0, ($a2)
/* B7E0CC 80106F2C 00811821 */  addu  $v1, $a0, $at
/* B7E0D0 80106F30 846704B0 */  lh    $a3, 0x4b0($v1)
/* B7E0D4 80106F34 846804B2 */  lh    $t0, 0x4b2($v1)
/* B7E0D8 80106F38 00401825 */  move  $v1, $v0
/* B7E0DC 80106F3C 3C06E700 */  lui   $a2, 0xe700
/* B7E0E0 80106F40 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* B7E0E4 80106F44 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* B7E0E8 80106F48 AC660000 */  sw    $a2, ($v1)
/* B7E0EC 80106F4C AC600004 */  sw    $zero, 4($v1)
/* B7E0F0 80106F50 8CA30000 */  lw    $v1, ($a1)
/* B7E0F4 80106F54 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* B7E0F8 80106F58 44810000 */  mtc1  $at, $f0
/* B7E0FC 80106F5C 846F0B06 */  lh    $t7, 0xb06($v1)
/* B7E100 80106F60 3C014180 */  li    $at, 0x41800000 # 0.000000
/* B7E104 80106F64 44815000 */  mtc1  $at, $f10
/* B7E108 80106F68 448F2000 */  mtc1  $t7, $f4
/* B7E10C 80106F6C 3C098017 */  lui   $t1, %hi(D_801759A0) # $t1, 0x8017
/* B7E110 80106F70 252959A0 */  addiu $t1, %lo(D_801759A0) # addiu $t1, $t1, 0x59a0
/* B7E114 80106F74 468021A0 */  cvt.s.w $f6, $f4
/* B7E118 80106F78 3C014480 */  li    $at, 0x44800000 # 0.000000
/* B7E11C 80106F7C 44812000 */  mtc1  $at, $f4
/* B7E120 80106F80 3C0A8017 */  lui   $t2, %hi(D_801759A4) # $t2, 0x8017
/* B7E124 80106F84 254A59A4 */  addiu $t2, %lo(D_801759A4) # addiu $t2, $t2, 0x59a4
/* B7E128 80106F88 24420008 */  addiu $v0, $v0, 8
/* B7E12C 80106F8C 46003203 */  div.s $f8, $f6, $f0
/* B7E130 80106F90 3C18FD90 */  lui   $t8, 0xfd90
/* B7E134 80106F94 3C0E0708 */  lui   $t6, (0x07080200 >> 16) # lui $t6, 0x708
/* B7E138 80106F98 35CE0200 */  ori   $t6, (0x07080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* B7E13C 80106F9C 3401A0D8 */  li    $at, 41176
/* B7E140 80106FA0 460A4402 */  mul.s $f16, $f8, $f10
/* B7E144 80106FA4 4600848D */  trunc.w.s $f18, $f16
/* B7E148 80106FA8 44199000 */  mfc1  $t9, $f18
/* B7E14C 80106FAC 00000000 */  nop   
/* B7E150 80106FB0 AD390000 */  sw    $t9, ($t1)
/* B7E154 80106FB4 846D0B06 */  lh    $t5, 0xb06($v1)
/* B7E158 80106FB8 00401825 */  move  $v1, $v0
/* B7E15C 80106FBC 24420008 */  addiu $v0, $v0, 8
/* B7E160 80106FC0 448D3000 */  mtc1  $t5, $f6
/* B7E164 80106FC4 3C0DF590 */  lui   $t5, 0xf590
/* B7E168 80106FC8 46803220 */  cvt.s.w $f8, $f6
/* B7E16C 80106FCC 46004283 */  div.s $f10, $f8, $f0
/* B7E170 80106FD0 460A2403 */  div.s $f16, $f4, $f10
/* B7E174 80106FD4 4600848D */  trunc.w.s $f18, $f16
/* B7E178 80106FD8 440F9000 */  mfc1  $t7, $f18
/* B7E17C 80106FDC 00000000 */  nop   
/* B7E180 80106FE0 AD4F0000 */  sw    $t7, ($t2)
/* B7E184 80106FE4 AC780000 */  sw    $t8, ($v1)
/* B7E188 80106FE8 8FB90004 */  lw    $t9, 4($sp)
/* B7E18C 80106FEC 3C0FE600 */  lui   $t7, 0xe600
/* B7E190 80106FF0 3C18F300 */  lui   $t8, 0xf300
/* B7E194 80106FF4 AC790004 */  sw    $t9, 4($v1)
/* B7E198 80106FF8 00401825 */  move  $v1, $v0
/* B7E19C 80106FFC AC6D0000 */  sw    $t5, ($v1)
/* B7E1A0 80107000 AC6E0004 */  sw    $t6, 4($v1)
/* B7E1A4 80107004 24420008 */  addiu $v0, $v0, 8
/* B7E1A8 80107008 00401825 */  move  $v1, $v0
/* B7E1AC 8010700C AC6F0000 */  sw    $t7, ($v1)
/* B7E1B0 80107010 AC600004 */  sw    $zero, 4($v1)
/* B7E1B4 80107014 24420008 */  addiu $v0, $v0, 8
/* B7E1B8 80107018 00401825 */  move  $v1, $v0
/* B7E1BC 8010701C 3C190703 */  lui   $t9, (0x0703F800 >> 16) # lui $t9, 0x703
/* B7E1C0 80107020 3739F800 */  ori   $t9, (0x0703F800 & 0xFFFF) # ori $t9, $t9, 0xf800
/* B7E1C4 80107024 AC790004 */  sw    $t9, 4($v1)
/* B7E1C8 80107028 AC780000 */  sw    $t8, ($v1)
/* B7E1CC 8010702C 24420008 */  addiu $v0, $v0, 8
/* B7E1D0 80107030 00401825 */  move  $v1, $v0
/* B7E1D4 80107034 AC660000 */  sw    $a2, ($v1)
/* B7E1D8 80107038 AC600004 */  sw    $zero, 4($v1)
/* B7E1DC 8010703C 24420008 */  addiu $v0, $v0, 8
/* B7E1E0 80107040 00401825 */  move  $v1, $v0
/* B7E1E4 80107044 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* B7E1E8 80107048 3C0DF580 */  lui   $t5, (0xF5800200 >> 16) # lui $t5, 0xf580
/* B7E1EC 8010704C 35AD0200 */  ori   $t5, (0xF5800200 & 0xFFFF) # ori $t5, $t5, 0x200
/* B7E1F0 80107050 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* B7E1F4 80107054 AC6E0004 */  sw    $t6, 4($v1)
/* B7E1F8 80107058 AC6D0000 */  sw    $t5, ($v1)
/* B7E1FC 8010705C 24420008 */  addiu $v0, $v0, 8
/* B7E200 80107060 00401825 */  move  $v1, $v0
/* B7E204 80107064 3C180003 */  lui   $t8, (0x0003C03C >> 16) # lui $t8, 3
/* B7E208 80107068 3718C03C */  ori   $t8, (0x0003C03C & 0xFFFF) # ori $t8, $t8, 0xc03c
/* B7E20C 8010706C 3C0FF200 */  lui   $t7, 0xf200
/* B7E210 80107070 AC6F0000 */  sw    $t7, ($v1)
/* B7E214 80107074 AC780004 */  sw    $t8, 4($v1)
/* B7E218 80107078 00811821 */  addu  $v1, $a0, $at
/* B7E21C 8010707C 907962FD */  lbu   $t9, 0x62fd($v1)
/* B7E220 80107080 24420008 */  addiu $v0, $v0, 8
/* B7E224 80107084 24010005 */  li    $at, 5
/* B7E228 80107088 13210032 */  beq   $t9, $at, .L80107154
/* B7E22C 8010708C 00402025 */   move  $a0, $v0
/* B7E230 80107090 3C0DFA00 */  lui   $t5, 0xfa00
/* B7E234 80107094 AC8D0000 */  sw    $t5, ($a0)
/* B7E238 80107098 846E63E2 */  lh    $t6, 0x63e2($v1)
/* B7E23C 8010709C 3C01E400 */  lui   $at, 0xe400
/* B7E240 801070A0 24420008 */  addiu $v0, $v0, 8
/* B7E244 801070A4 31CF00FF */  andi  $t7, $t6, 0xff
/* B7E248 801070A8 AC8F0004 */  sw    $t7, 4($a0)
/* B7E24C 801070AC 8CB80000 */  lw    $t8, ($a1)
/* B7E250 801070B0 8D2C0000 */  lw    $t4, ($t1)
/* B7E254 801070B4 00402025 */  move  $a0, $v0
/* B7E258 801070B8 870B0B0C */  lh    $t3, 0xb0c($t8)
/* B7E25C 801070BC 24420008 */  addiu $v0, $v0, 8
/* B7E260 801070C0 0168C821 */  addu  $t9, $t3, $t0
/* B7E264 801070C4 032C6821 */  addu  $t5, $t9, $t4
/* B7E268 801070C8 000D7080 */  sll   $t6, $t5, 2
/* B7E26C 801070CC 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B7E270 801070D0 00EBC821 */  addu  $t9, $a3, $t3
/* B7E274 801070D4 032C6821 */  addu  $t5, $t9, $t4
/* B7E278 801070D8 000D7080 */  sll   $t6, $t5, 2
/* B7E27C 801070DC 01E1C025 */  or    $t8, $t7, $at
/* B7E280 801070E0 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B7E284 801070E4 000FCB00 */  sll   $t9, $t7, 0xc
/* B7E288 801070E8 03196825 */  or    $t5, $t8, $t9
/* B7E28C 801070EC AC8D0000 */  sw    $t5, ($a0)
/* B7E290 801070F0 8CAE0000 */  lw    $t6, ($a1)
/* B7E294 801070F4 85CB0B0C */  lh    $t3, 0xb0c($t6)
/* B7E298 801070F8 01687821 */  addu  $t7, $t3, $t0
/* B7E29C 801070FC 000FC080 */  sll   $t8, $t7, 2
/* B7E2A0 80107100 00EB6821 */  addu  $t5, $a3, $t3
/* B7E2A4 80107104 000D7080 */  sll   $t6, $t5, 2
/* B7E2A8 80107108 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B7E2AC 8010710C 33190FFF */  andi  $t9, $t8, 0xfff
/* B7E2B0 80107110 000FC300 */  sll   $t8, $t7, 0xc
/* B7E2B4 80107114 03386825 */  or    $t5, $t9, $t8
/* B7E2B8 80107118 AC8D0004 */  sw    $t5, 4($a0)
/* B7E2BC 8010711C 00402025 */  move  $a0, $v0
/* B7E2C0 80107120 3C0EE100 */  lui   $t6, 0xe100
/* B7E2C4 80107124 AC8E0000 */  sw    $t6, ($a0)
/* B7E2C8 80107128 AC800004 */  sw    $zero, 4($a0)
/* B7E2CC 8010712C 24420008 */  addiu $v0, $v0, 8
/* B7E2D0 80107130 00402025 */  move  $a0, $v0
/* B7E2D4 80107134 3C0FF100 */  lui   $t7, 0xf100
/* B7E2D8 80107138 AC8F0000 */  sw    $t7, ($a0)
/* B7E2DC 8010713C 8D450000 */  lw    $a1, ($t2)
/* B7E2E0 80107140 24420008 */  addiu $v0, $v0, 8
/* B7E2E4 80107144 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B7E2E8 80107148 0005CC00 */  sll   $t9, $a1, 0x10
/* B7E2EC 8010714C 0325C025 */  or    $t8, $t9, $a1
/* B7E2F0 80107150 AC980004 */  sw    $t8, 4($a0)
.L80107154:
/* B7E2F4 80107154 00402025 */  move  $a0, $v0
/* B7E2F8 80107158 AC860000 */  sw    $a2, ($a0)
/* B7E2FC 8010715C AC800004 */  sw    $zero, 4($a0)
/* B7E300 80107160 24420008 */  addiu $v0, $v0, 8
/* B7E304 80107164 00402025 */  move  $a0, $v0
/* B7E308 80107168 3C0DFA00 */  lui   $t5, 0xfa00
/* B7E30C 8010716C AC8D0000 */  sw    $t5, ($a0)
/* B7E310 80107170 847863DE */  lh    $t8, 0x63de($v1)
/* B7E314 80107174 846F63DC */  lh    $t7, 0x63dc($v1)
/* B7E318 80107178 3C01E400 */  lui   $at, 0xe400
/* B7E31C 8010717C 330D00FF */  andi  $t5, $t8, 0xff
/* B7E320 80107180 847863E0 */  lh    $t8, 0x63e0($v1)
/* B7E324 80107184 000D7400 */  sll   $t6, $t5, 0x10
/* B7E328 80107188 000FCE00 */  sll   $t9, $t7, 0x18
/* B7E32C 8010718C 330D00FF */  andi  $t5, $t8, 0xff
/* B7E330 80107190 847863E2 */  lh    $t8, 0x63e2($v1)
/* B7E334 80107194 032E7825 */  or    $t7, $t9, $t6
/* B7E338 80107198 000DCA00 */  sll   $t9, $t5, 8
/* B7E33C 8010719C 01F97025 */  or    $t6, $t7, $t9
/* B7E340 801071A0 330D00FF */  andi  $t5, $t8, 0xff
/* B7E344 801071A4 01CD7825 */  or    $t7, $t6, $t5
/* B7E348 801071A8 AC8F0004 */  sw    $t7, 4($a0)
/* B7E34C 801071AC 8D2C0000 */  lw    $t4, ($t1)
/* B7E350 801071B0 24420008 */  addiu $v0, $v0, 8
/* B7E354 801071B4 00401825 */  move  $v1, $v0
/* B7E358 801071B8 00ECC821 */  addu  $t9, $a3, $t4
/* B7E35C 801071BC 0019C080 */  sll   $t8, $t9, 2
/* B7E360 801071C0 330E0FFF */  andi  $t6, $t8, 0xfff
/* B7E364 801071C4 000E6B00 */  sll   $t5, $t6, 0xc
/* B7E368 801071C8 010CC821 */  addu  $t9, $t0, $t4
/* B7E36C 801071CC 0019C080 */  sll   $t8, $t9, 2
/* B7E370 801071D0 330E0FFF */  andi  $t6, $t8, 0xfff
/* B7E374 801071D4 01A17825 */  or    $t7, $t5, $at
/* B7E378 801071D8 01EE6825 */  or    $t5, $t7, $t6
/* B7E37C 801071DC 0007C880 */  sll   $t9, $a3, 2
/* B7E380 801071E0 33380FFF */  andi  $t8, $t9, 0xfff
/* B7E384 801071E4 AC6D0000 */  sw    $t5, ($v1)
/* B7E388 801071E8 00087080 */  sll   $t6, $t0, 2
/* B7E38C 801071EC 31CD0FFF */  andi  $t5, $t6, 0xfff
/* B7E390 801071F0 00187B00 */  sll   $t7, $t8, 0xc
/* B7E394 801071F4 01EDC825 */  or    $t9, $t7, $t5
/* B7E398 801071F8 AC790004 */  sw    $t9, 4($v1)
/* B7E39C 801071FC 24420008 */  addiu $v0, $v0, 8
/* B7E3A0 80107200 00401825 */  move  $v1, $v0
/* B7E3A4 80107204 3C18E100 */  lui   $t8, 0xe100
/* B7E3A8 80107208 AC780000 */  sw    $t8, ($v1)
/* B7E3AC 8010720C AC600004 */  sw    $zero, 4($v1)
/* B7E3B0 80107210 24420008 */  addiu $v0, $v0, 8
/* B7E3B4 80107214 00401825 */  move  $v1, $v0
/* B7E3B8 80107218 3C0EF100 */  lui   $t6, 0xf100
/* B7E3BC 8010721C AC6E0000 */  sw    $t6, ($v1)
/* B7E3C0 80107220 8D450000 */  lw    $a1, ($t2)
/* B7E3C4 80107224 24420008 */  addiu $v0, $v0, 8
/* B7E3C8 80107228 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B7E3CC 8010722C 00057C00 */  sll   $t7, $a1, 0x10
/* B7E3D0 80107230 01E56825 */  or    $t5, $t7, $a1
/* B7E3D4 80107234 AC6D0004 */  sw    $t5, 4($v1)
/* B7E3D8 80107238 8FB90008 */  lw    $t9, 8($sp)
/* B7E3DC 8010723C 03E00008 */  jr    $ra
/* B7E3E0 80107240 AF220000 */   sw    $v0, ($t9)

glabel func_80107244
/* B7E3E4 80107244 3C078016 */  lui   $a3, %hi(gGameInfo) # $a3, 0x8016
/* B7E3E8 80107248 24E7FA90 */  addiu $a3, %lo(gGameInfo) # addiu $a3, $a3, -0x570
/* B7E3EC 8010724C 8CE50000 */  lw    $a1, ($a3)
/* B7E3F0 80107250 34018000 */  li    $at, 32768
/* B7E3F4 80107254 00811021 */  addu  $v0, $a0, $at
/* B7E3F8 80107258 904363E7 */  lbu   $v1, 0x63e7($v0)
/* B7E3FC 8010725C 84AE0B28 */  lh    $t6, 0xb28($a1)
/* B7E400 80107260 84AF0B2A */  lh    $t7, 0xb2a($a1)
/* B7E404 80107264 3C018015 */  lui   $at, %hi(D_80153988)
/* B7E408 80107268 448E2000 */  mtc1  $t6, $f4
/* B7E40C 8010726C 00031880 */  sll   $v1, $v1, 2
/* B7E410 80107270 00230821 */  addu  $at, $at, $v1
/* B7E414 80107274 C4223988 */  lwc1  $f2, %lo(D_80153988)($at)
/* B7E418 80107278 468021A0 */  cvt.s.w $f6, $f4
/* B7E41C 8010727C 448F4000 */  mtc1  $t7, $f8
/* B7E420 80107280 84B90B2E */  lh    $t9, 0xb2e($a1)
/* B7E424 80107284 3C018015 */  lui   $at, %hi(D_801539A8)
/* B7E428 80107288 00230821 */  addu  $at, $at, $v1
/* B7E42C 8010728C 46021300 */  add.s $f12, $f2, $f2
/* B7E430 80107290 C43039A8 */  lwc1  $f16, %lo(D_801539A8)($at)
/* B7E434 80107294 84B80B2C */  lh    $t8, 0xb2c($a1)
/* B7E438 80107298 468042A0 */  cvt.s.w $f10, $f8
/* B7E43C 8010729C 46066002 */  mul.s $f0, $f12, $f6
/* B7E440 801072A0 44994000 */  mtc1  $t9, $f8
/* B7E444 801072A4 44982000 */  mtc1  $t8, $f4
/* B7E448 801072A8 27BDFFF0 */  addiu $sp, $sp, -0x10
/* B7E44C 801072AC 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B7E450 801072B0 460A8382 */  mul.s $f14, $f16, $f10
/* B7E454 801072B4 468042A0 */  cvt.s.w $f10, $f8
/* B7E458 801072B8 468021A0 */  cvt.s.w $f6, $f4
/* B7E45C 801072BC 46105103 */  div.s $f4, $f10, $f16
/* B7E460 801072C0 460C3483 */  div.s $f18, $f6, $f12
/* B7E464 801072C4 E7A40000 */  swc1  $f4, ($sp)
/* B7E468 801072C8 84A60B26 */  lh    $a2, 0xb26($a1)
/* B7E46C 801072CC 44812000 */  mtc1  $at, $f4
/* B7E470 801072D0 44863000 */  mtc1  $a2, $f6
/* B7E474 801072D4 00000000 */  nop   
/* B7E478 801072D8 46803220 */  cvt.s.w $f8, $f6
/* B7E47C 801072DC 46088282 */  mul.s $f10, $f16, $f8
/* B7E480 801072E0 46045180 */  add.s $f6, $f10, $f4
/* B7E484 801072E4 4600320D */  trunc.w.s $f8, $f6
/* B7E488 801072E8 44094000 */  mfc1  $t1, $f8
/* B7E48C 801072EC 00000000 */  nop   
/* B7E490 801072F0 00095400 */  sll   $t2, $t1, 0x10
/* B7E494 801072F4 000A5C03 */  sra   $t3, $t2, 0x10
/* B7E498 801072F8 00CB6023 */  subu  $t4, $a2, $t3
/* B7E49C 801072FC 05810003 */  bgez  $t4, .L8010730C
/* B7E4A0 80107300 000C6843 */   sra   $t5, $t4, 1
/* B7E4A4 80107304 25810001 */  addiu $at, $t4, 1
/* B7E4A8 80107308 00016843 */  sra   $t5, $at, 1
.L8010730C:
/* B7E4AC 8010730C 01A67021 */  addu  $t6, $t5, $a2
/* B7E4B0 80107310 A4AE0F16 */  sh    $t6, 0xf16($a1)
/* B7E4B4 80107314 84586404 */  lh    $t8, 0x6404($v0)
/* B7E4B8 80107318 844F6406 */  lh    $t7, 0x6406($v0)
/* B7E4BC 8010731C 07010003 */  bgez  $t8, .L8010732C
/* B7E4C0 80107320 0018C8C3 */   sra   $t9, $t8, 3
/* B7E4C4 80107324 27010007 */  addiu $at, $t8, 7
/* B7E4C8 80107328 0001C8C3 */  sra   $t9, $at, 3
.L8010732C:
/* B7E4CC 8010732C 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E4D0 80107330 01F94021 */  addu  $t0, $t7, $t9
/* B7E4D4 80107334 A4286407 */  sh    $t0, 0x6407($at)
/* B7E4D8 80107338 904963E7 */  lbu   $t1, 0x63e7($v0)
/* B7E4DC 8010733C 252A0001 */  addiu $t2, $t1, 1
/* B7E4E0 80107340 A02A63E8 */  sb    $t2, 0x63e8($at)
/* B7E4E4 80107344 904B63E7 */  lbu   $t3, 0x63e7($v0)
/* B7E4E8 80107348 24010008 */  li    $at, 8
/* B7E4EC 8010734C 5561000D */  bnel  $t3, $at, .L80107384
/* B7E4F0 80107350 3C013F00 */   lui   $at, 0x3f00
/* B7E4F4 80107354 8CE50000 */  lw    $a1, ($a3)
/* B7E4F8 80107358 240E0003 */  li    $t6, 3
/* B7E4FC 8010735C 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E500 80107360 84AC0B24 */  lh    $t4, 0xb24($a1)
/* B7E504 80107364 A4AC0F14 */  sh    $t4, 0xf14($a1)
/* B7E508 80107368 8CE50000 */  lw    $a1, ($a3)
/* B7E50C 8010736C 84AD0B26 */  lh    $t5, 0xb26($a1)
/* B7E510 80107370 A4AD0F16 */  sh    $t5, 0xf16($a1)
/* B7E514 80107374 A02E6305 */  sb    $t6, 0x6305($at)
/* B7E518 80107378 84586404 */  lh    $t8, 0x6404($v0)
/* B7E51C 8010737C A4386407 */  sh    $t8, 0x6407($at)
/* B7E520 80107380 3C013F00 */  li    $at, 0x3F000000 # 0.000000
.L80107384:
/* B7E524 80107384 44815000 */  mtc1  $at, $f10
/* B7E528 80107388 8CEB0000 */  lw    $t3, ($a3)
/* B7E52C 8010738C 460A0100 */  add.s $f4, $f0, $f10
/* B7E530 80107390 4600218D */  trunc.w.s $f6, $f4
/* B7E534 80107394 44193000 */  mfc1  $t9, $f6
/* B7E538 80107398 00000000 */  nop   
/* B7E53C 8010739C 00194400 */  sll   $t0, $t9, 0x10
/* B7E540 801073A0 00084C03 */  sra   $t1, $t0, 0x10
/* B7E544 801073A4 05210003 */  bgez  $t1, .L801073B4
/* B7E548 801073A8 00095043 */   sra   $t2, $t1, 1
/* B7E54C 801073AC 25210001 */  addiu $at, $t1, 1
/* B7E550 801073B0 00015043 */  sra   $t2, $at, 1
.L801073B4:
/* B7E554 801073B4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B7E558 801073B8 44814000 */  mtc1  $at, $f8
/* B7E55C 801073BC 44813000 */  mtc1  $at, $f6
/* B7E560 801073C0 A56A04C0 */  sh    $t2, 0x4c0($t3)
/* B7E564 801073C4 46087280 */  add.s $f10, $f14, $f8
/* B7E568 801073C8 8CEE0000 */  lw    $t6, ($a3)
/* B7E56C 801073CC 46069200 */  add.s $f8, $f18, $f6
/* B7E570 801073D0 44813000 */  mtc1  $at, $f6
/* B7E574 801073D4 4600510D */  trunc.w.s $f4, $f10
/* B7E578 801073D8 4600428D */  trunc.w.s $f10, $f8
/* B7E57C 801073DC 440D2000 */  mfc1  $t5, $f4
/* B7E580 801073E0 00000000 */  nop   
/* B7E584 801073E4 A5CD04C2 */  sh    $t5, 0x4c2($t6)
/* B7E588 801073E8 8CF90000 */  lw    $t9, ($a3)
/* B7E58C 801073EC 440F5000 */  mfc1  $t7, $f10
/* B7E590 801073F0 00000000 */  nop   
/* B7E594 801073F4 A72F04B4 */  sh    $t7, 0x4b4($t9)
/* B7E598 801073F8 C7A40000 */  lwc1  $f4, ($sp)
/* B7E59C 801073FC 8CEA0000 */  lw    $t2, ($a3)
/* B7E5A0 80107400 46062200 */  add.s $f8, $f4, $f6
/* B7E5A4 80107404 4600428D */  trunc.w.s $f10, $f8
/* B7E5A8 80107408 44095000 */  mfc1  $t1, $f10
/* B7E5AC 8010740C 00000000 */  nop   
/* B7E5B0 80107410 A54904B6 */  sh    $t1, 0x4b6($t2)
/* B7E5B4 80107414 8CE50000 */  lw    $a1, ($a3)
/* B7E5B8 80107418 84AB0B24 */  lh    $t3, 0xb24($a1)
/* B7E5BC 8010741C 84AC0B28 */  lh    $t4, 0xb28($a1)
/* B7E5C0 80107420 84AE04C0 */  lh    $t6, 0x4c0($a1)
/* B7E5C4 80107424 27BD0010 */  addiu $sp, $sp, 0x10
/* B7E5C8 80107428 016C6821 */  addu  $t5, $t3, $t4
/* B7E5CC 8010742C 05C10003 */  bgez  $t6, .L8010743C
/* B7E5D0 80107430 000EC043 */   sra   $t8, $t6, 1
/* B7E5D4 80107434 25C10001 */  addiu $at, $t6, 1
/* B7E5D8 80107438 0001C043 */  sra   $t8, $at, 1
.L8010743C:
/* B7E5DC 8010743C 01B87823 */  subu  $t7, $t5, $t8
/* B7E5E0 80107440 03E00008 */  jr    $ra
/* B7E5E4 80107444 A4AF0F14 */   sh    $t7, 0xf14($a1)

glabel func_80107448
/* B7E5E8 80107448 3C028016 */  lui   $v0, %hi(gSaveContext+0x1409) # $v0, 0x8016
/* B7E5EC 8010744C 9042FA69 */  lbu   $v0, %lo(gSaveContext+0x1409)($v0)
/* B7E5F0 80107450 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B7E5F4 80107454 3C038015 */  lui   $v1, %hi(D_801538F0) # $v1, 0x8015
/* B7E5F8 80107458 AFBF0024 */  sw    $ra, 0x24($sp)
/* B7E5FC 8010745C AFA40040 */  sw    $a0, 0x40($sp)
/* B7E600 80107460 AFA50044 */  sw    $a1, 0x44($sp)
/* B7E604 80107464 30A6FFFF */  andi  $a2, $a1, 0xffff
/* B7E608 80107468 14400021 */  bnez  $v0, .L801074F0
/* B7E60C 8010746C 8C6338F0 */   lw    $v1, %lo(D_801538F0)($v1)
/* B7E610 80107470 94620000 */  lhu   $v0, ($v1)
/* B7E614 80107474 3404FFFF */  li    $a0, 65535
/* B7E618 80107478 8C6B0004 */  lw    $t3, 4($v1)
/* B7E61C 8010747C 10820042 */  beq   $a0, $v0, .L80107588
/* B7E620 80107480 00C02825 */   move  $a1, $a2
.L80107484:
/* B7E624 80107484 54A20015 */  bnel  $a1, $v0, .L801074DC
/* B7E628 80107488 94620008 */   lhu   $v0, 8($v1)
/* B7E62C 8010748C 8FA20040 */  lw    $v0, 0x40($sp)
/* B7E630 80107490 906E0002 */  lbu   $t6, 2($v1)
/* B7E634 80107494 8C690004 */  lw    $t1, 4($v1)
/* B7E638 80107498 3C048015 */  lui   $a0, %hi(D_80153D90) # $a0, 0x8015
/* B7E63C 8010749C A04E2208 */  sb    $t6, 0x2208($v0)
/* B7E640 801074A0 8C6A000C */  lw    $t2, 0xc($v1)
/* B7E644 801074A4 012B3023 */  subu  $a2, $t1, $t3
/* B7E648 801074A8 AC462200 */  sw    $a2, 0x2200($v0)
/* B7E64C 801074AC 01493823 */  subu  $a3, $t2, $t1
/* B7E650 801074B0 AC472204 */  sw    $a3, 0x2204($v0)
/* B7E654 801074B4 24630008 */  addiu $v1, $v1, 8
/* B7E658 801074B8 AFAB0014 */  sw    $t3, 0x14($sp)
/* B7E65C 801074BC 24843D90 */  addiu $a0, %lo(D_80153D90) # addiu $a0, $a0, 0x3d90
/* B7E660 801074C0 24422200 */  addiu $v0, $v0, 0x2200
/* B7E664 801074C4 AFA90010 */  sw    $t1, 0x10($sp)
/* B7E668 801074C8 0C00084C */  jal   osSyncPrintf
/* B7E66C 801074CC AFAA0018 */   sw    $t2, 0x18($sp)
/* B7E670 801074D0 10000052 */  b     .L8010761C
/* B7E674 801074D4 8FBF0024 */   lw    $ra, 0x24($sp)
/* B7E678 801074D8 94620008 */  lhu   $v0, 8($v1)
.L801074DC:
/* B7E67C 801074DC 24630008 */  addiu $v1, $v1, 8
/* B7E680 801074E0 1482FFE8 */  bne   $a0, $v0, .L80107484
/* B7E684 801074E4 00000000 */   nop   
/* B7E688 801074E8 10000027 */  b     .L80107588
/* B7E68C 801074EC 00000000 */   nop   
.L801074F0:
/* B7E690 801074F0 24010001 */  li    $at, 1
/* B7E694 801074F4 14410004 */  bne   $v0, $at, .L80107508
/* B7E698 801074F8 3C088015 */   lui   $t0, %hi(D_801538F8)
/* B7E69C 801074FC 3C088015 */  lui   $t0, %hi(D_801538F4) # $t0, 0x8015
/* B7E6A0 80107500 10000002 */  b     .L8010750C
/* B7E6A4 80107504 8D0838F4 */   lw    $t0, %lo(D_801538F4)($t0)
.L80107508:
/* B7E6A8 80107508 8D0838F8 */  lw    $t0, %lo(D_801538F8)($t0)
.L8010750C:
/* B7E6AC 8010750C 94620000 */  lhu   $v0, ($v1)
/* B7E6B0 80107510 3404FFFF */  li    $a0, 65535
/* B7E6B4 80107514 8C6B0004 */  lw    $t3, 4($v1)
/* B7E6B8 80107518 1082001B */  beq   $a0, $v0, .L80107588
/* B7E6BC 8010751C 00C02825 */   move  $a1, $a2
.L80107520:
/* B7E6C0 80107520 54A20015 */  bnel  $a1, $v0, .L80107578
/* B7E6C4 80107524 94620008 */   lhu   $v0, 8($v1)
/* B7E6C8 80107528 8FA20040 */  lw    $v0, 0x40($sp)
/* B7E6CC 8010752C 906F0002 */  lbu   $t7, 2($v1)
/* B7E6D0 80107530 8D090000 */  lw    $t1, ($t0)
/* B7E6D4 80107534 3C048015 */  lui   $a0, %hi(D_80153DEC) # $a0, 0x8015
/* B7E6D8 80107538 A04F2208 */  sb    $t7, 0x2208($v0)
/* B7E6DC 8010753C 8D0A0004 */  lw    $t2, 4($t0)
/* B7E6E0 80107540 012B3023 */  subu  $a2, $t1, $t3
/* B7E6E4 80107544 AC462200 */  sw    $a2, 0x2200($v0)
/* B7E6E8 80107548 01493823 */  subu  $a3, $t2, $t1
/* B7E6EC 8010754C AC472204 */  sw    $a3, 0x2204($v0)
/* B7E6F0 80107550 25080004 */  addiu $t0, $t0, 4
/* B7E6F4 80107554 AFAB0014 */  sw    $t3, 0x14($sp)
/* B7E6F8 80107558 24843DEC */  addiu $a0, %lo(D_80153DEC) # addiu $a0, $a0, 0x3dec
/* B7E6FC 8010755C 24422200 */  addiu $v0, $v0, 0x2200
/* B7E700 80107560 AFA90010 */  sw    $t1, 0x10($sp)
/* B7E704 80107564 0C00084C */  jal   osSyncPrintf
/* B7E708 80107568 AFAA0018 */   sw    $t2, 0x18($sp)
/* B7E70C 8010756C 1000002B */  b     .L8010761C
/* B7E710 80107570 8FBF0024 */   lw    $ra, 0x24($sp)
/* B7E714 80107574 94620008 */  lhu   $v0, 8($v1)
.L80107578:
/* B7E718 80107578 24630008 */  addiu $v1, $v1, 8
/* B7E71C 8010757C 25080004 */  addiu $t0, $t0, 4
/* B7E720 80107580 1482FFE7 */  bne   $a0, $v0, .L80107520
/* B7E724 80107584 00000000 */   nop   
.L80107588:
/* B7E728 80107588 3C048015 */  lui   $a0, %hi(D_80153E48) # $a0, 0x8015
/* B7E72C 8010758C 24843E48 */  addiu $a0, %lo(D_80153E48) # addiu $a0, $a0, 0x3e48
/* B7E730 80107590 00C02825 */  move  $a1, $a2
/* B7E734 80107594 0C00084C */  jal   osSyncPrintf
/* B7E738 80107598 AFAB0028 */   sw    $t3, 0x28($sp)
/* B7E73C 8010759C 3C028016 */  lui   $v0, %hi(gSaveContext+0x1409) # $v0, 0x8016
/* B7E740 801075A0 9042FA69 */  lbu   $v0, %lo(gSaveContext+0x1409)($v0)
/* B7E744 801075A4 3C038015 */  lui   $v1, %hi(D_801538F0) # $v1, 0x8015
/* B7E748 801075A8 8FA40040 */  lw    $a0, 0x40($sp)
/* B7E74C 801075AC 8FAB0028 */  lw    $t3, 0x28($sp)
/* B7E750 801075B0 14400008 */  bnez  $v0, .L801075D4
/* B7E754 801075B4 8C6338F0 */   lw    $v1, %lo(D_801538F0)($v1)
/* B7E758 801075B8 90780002 */  lbu   $t8, 2($v1)
/* B7E75C 801075BC 8C690004 */  lw    $t1, 4($v1)
/* B7E760 801075C0 24822200 */  addiu $v0, $a0, 0x2200
/* B7E764 801075C4 A0580008 */  sb    $t8, 8($v0)
/* B7E768 801075C8 24630008 */  addiu $v1, $v1, 8
/* B7E76C 801075CC 1000000E */  b     .L80107608
/* B7E770 801075D0 8C6A0004 */   lw    $t2, 4($v1)
.L801075D4:
/* B7E774 801075D4 24010001 */  li    $at, 1
/* B7E778 801075D8 14410004 */  bne   $v0, $at, .L801075EC
/* B7E77C 801075DC 3C088015 */   lui   $t0, %hi(D_801538F8)
/* B7E780 801075E0 3C088015 */  lui   $t0, %hi(D_801538F4) # $t0, 0x8015
/* B7E784 801075E4 10000002 */  b     .L801075F0
/* B7E788 801075E8 8D0838F4 */   lw    $t0, %lo(D_801538F4)($t0)
.L801075EC:
/* B7E78C 801075EC 8D0838F8 */  lw    $t0, %lo(D_801538F8)($t0)
.L801075F0:
/* B7E790 801075F0 90790002 */  lbu   $t9, 2($v1)
/* B7E794 801075F4 8D090000 */  lw    $t1, ($t0)
/* B7E798 801075F8 24822200 */  addiu $v0, $a0, 0x2200
/* B7E79C 801075FC A0590008 */  sb    $t9, 8($v0)
/* B7E7A0 80107600 25080004 */  addiu $t0, $t0, 4
/* B7E7A4 80107604 8D0A0000 */  lw    $t2, ($t0)
.L80107608:
/* B7E7A8 80107608 012B6023 */  subu  $t4, $t1, $t3
/* B7E7AC 8010760C 01496823 */  subu  $t5, $t2, $t1
/* B7E7B0 80107610 AC4C0000 */  sw    $t4, ($v0)
/* B7E7B4 80107614 AC4D0004 */  sw    $t5, 4($v0)
/* B7E7B8 80107618 8FBF0024 */  lw    $ra, 0x24($sp)
.L8010761C:
/* B7E7BC 8010761C 27BD0040 */  addiu $sp, $sp, 0x40
/* B7E7C0 80107620 03E00008 */  jr    $ra
/* B7E7C4 80107624 00000000 */   nop   

glabel func_80107628
/* B7E7C8 80107628 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B7E7CC 8010762C 3C028015 */  lui   $v0, %hi(D_801538FC) # $v0, 0x8015
/* B7E7D0 80107630 8C4238FC */  lw    $v0, %lo(D_801538FC)($v0)
/* B7E7D4 80107634 AFBF0024 */  sw    $ra, 0x24($sp)
/* B7E7D8 80107638 AFA40028 */  sw    $a0, 0x28($sp)
/* B7E7DC 8010763C AFA5002C */  sw    $a1, 0x2c($sp)
/* B7E7E0 80107640 94430000 */  lhu   $v1, ($v0)
/* B7E7E4 80107644 3406FFFF */  li    $a2, 65535
/* B7E7E8 80107648 30A7FFFF */  andi  $a3, $a1, 0xffff
/* B7E7EC 8010764C 10C3001B */  beq   $a2, $v1, .L801076BC
/* B7E7F0 80107650 8C4A0004 */   lw    $t2, 4($v0)
/* B7E7F4 80107654 00E02825 */  move  $a1, $a3
.L80107658:
/* B7E7F8 80107658 54A30015 */  bnel  $a1, $v1, .L801076B0
/* B7E7FC 8010765C 94430008 */   lhu   $v1, 8($v0)
/* B7E800 80107660 8FA30028 */  lw    $v1, 0x28($sp)
/* B7E804 80107664 904E0002 */  lbu   $t6, 2($v0)
/* B7E808 80107668 8C480004 */  lw    $t0, 4($v0)
/* B7E80C 8010766C 3C048015 */  lui   $a0, %hi(D_80153E74) # $a0, 0x8015
/* B7E810 80107670 A06E2208 */  sb    $t6, 0x2208($v1)
/* B7E814 80107674 8C49000C */  lw    $t1, 0xc($v0)
/* B7E818 80107678 010A3023 */  subu  $a2, $t0, $t2
/* B7E81C 8010767C AC662200 */  sw    $a2, 0x2200($v1)
/* B7E820 80107680 01283823 */  subu  $a3, $t1, $t0
/* B7E824 80107684 AC672204 */  sw    $a3, 0x2204($v1)
/* B7E828 80107688 24420008 */  addiu $v0, $v0, 8
/* B7E82C 8010768C AFAA0014 */  sw    $t2, 0x14($sp)
/* B7E830 80107690 24843E74 */  addiu $a0, %lo(D_80153E74) # addiu $a0, $a0, 0x3e74
/* B7E834 80107694 24632200 */  addiu $v1, $v1, 0x2200
/* B7E838 80107698 AFA80010 */  sw    $t0, 0x10($sp)
/* B7E83C 8010769C 0C00084C */  jal   osSyncPrintf
/* B7E840 801076A0 AFA90018 */   sw    $t1, 0x18($sp)
/* B7E844 801076A4 10000006 */  b     .L801076C0
/* B7E848 801076A8 8FBF0024 */   lw    $ra, 0x24($sp)
/* B7E84C 801076AC 94430008 */  lhu   $v1, 8($v0)
.L801076B0:
/* B7E850 801076B0 24420008 */  addiu $v0, $v0, 8
/* B7E854 801076B4 14C3FFE8 */  bne   $a2, $v1, .L80107658
/* B7E858 801076B8 00000000 */   nop   
.L801076BC:
/* B7E85C 801076BC 8FBF0024 */  lw    $ra, 0x24($sp)
.L801076C0:
/* B7E860 801076C0 27BD0028 */  addiu $sp, $sp, 0x28
/* B7E864 801076C4 03E00008 */  jr    $ra
/* B7E868 801076C8 00000000 */   nop   

glabel func_801076CC
/* B7E86C 801076CC AFA50004 */  sw    $a1, 4($sp)
/* B7E870 801076D0 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B7E874 801076D4 2CA10008 */  sltiu $at, $a1, 8
/* B7E878 801076D8 10200096 */  beqz  $at, .L80107934
/* B7E87C 801076DC 00057080 */   sll   $t6, $a1, 2
/* B7E880 801076E0 3C018015 */  lui   $at, %hi(jtbl_80154B28)
/* B7E884 801076E4 002E0821 */  addu  $at, $at, $t6
/* B7E888 801076E8 8C2E4B28 */  lw    $t6, %lo(jtbl_80154B28)($at)
/* B7E88C 801076EC 01C00008 */  jr    $t6
/* B7E890 801076F0 00000000 */   nop   
glabel L801076F4
/* B7E894 801076F4 248F7FFF */  addiu $t7, $a0, 0x7fff
/* B7E898 801076F8 91EF62FE */  lbu   $t7, 0x62fe($t7)
/* B7E89C 801076FC 24010001 */  li    $at, 1
/* B7E8A0 80107700 2402003C */  li    $v0, 60
/* B7E8A4 80107704 15E10008 */  bne   $t7, $at, .L80107728
/* B7E8A8 80107708 240500FF */   li    $a1, 255
/* B7E8AC 8010770C 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E8B0 80107710 240500FF */  li    $a1, 255
/* B7E8B4 80107714 24180078 */  li    $t8, 120
/* B7E8B8 80107718 A42563DD */  sh    $a1, 0x63dd($at)
/* B7E8BC 8010771C A43863DF */  sh    $t8, 0x63df($at)
/* B7E8C0 80107720 03E00008 */  jr    $ra
/* B7E8C4 80107724 A42063E1 */   sh    $zero, 0x63e1($at)
.L80107728:
/* B7E8C8 80107728 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E8CC 8010772C A42563DD */  sh    $a1, 0x63dd($at)
/* B7E8D0 80107730 A42263DF */  sh    $v0, 0x63df($at)
/* B7E8D4 80107734 03E00008 */  jr    $ra
/* B7E8D8 80107738 A42263E1 */   sh    $v0, 0x63e1($at)

glabel func_8010773C
/* B7E8DC 8010773C 24997FFF */  addiu $t9, $a0, 0x7fff
/* B7E8E0 80107740 933962FE */  lbu   $t9, 0x62fe($t9)
/* B7E8E4 80107744 24010001 */  li    $at, 1
/* B7E8E8 80107748 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B7E8EC 8010774C 1721000E */  bne   $t9, $at, .L80107788
/* B7E8F0 80107750 2442FA90 */   addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B7E8F4 80107754 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B7E8F8 80107758 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B7E8FC 8010775C 8C480000 */  lw    $t0, ($v0)
/* B7E900 80107760 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E904 80107764 85090F56 */  lh    $t1, 0xf56($t0)
/* B7E908 80107768 A42963DD */  sh    $t1, 0x63dd($at)
/* B7E90C 8010776C 8C4A0000 */  lw    $t2, ($v0)
/* B7E910 80107770 854B0F58 */  lh    $t3, 0xf58($t2)
/* B7E914 80107774 A42B63DF */  sh    $t3, 0x63df($at)
/* B7E918 80107778 8C4C0000 */  lw    $t4, ($v0)
/* B7E91C 8010777C 858D0F5A */  lh    $t5, 0xf5a($t4)
/* B7E920 80107780 03E00008 */  jr    $ra
/* B7E924 80107784 A42D63E1 */   sh    $t5, 0x63e1($at)
.L80107788:
/* B7E928 80107788 8C4E0000 */  lw    $t6, ($v0)
/* B7E92C 8010778C 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E930 80107790 85CF0F5C */  lh    $t7, 0xf5c($t6)
/* B7E934 80107794 A42F63DD */  sh    $t7, 0x63dd($at)
/* B7E938 80107798 8C580000 */  lw    $t8, ($v0)
/* B7E93C 8010779C 87190F5E */  lh    $t9, 0xf5e($t8)
/* B7E940 801077A0 A43963DF */  sh    $t9, 0x63df($at)
/* B7E944 801077A4 8C480000 */  lw    $t0, ($v0)
/* B7E948 801077A8 85090F60 */  lh    $t1, 0xf60($t0)
/* B7E94C 801077AC 03E00008 */  jr    $ra
/* B7E950 801077B0 A42963E1 */   sh    $t1, 0x63e1($at)

glabel func_801077B4
/* B7E954 801077B4 248A7FFF */  addiu $t2, $a0, 0x7fff
/* B7E958 801077B8 914A62FE */  lbu   $t2, 0x62fe($t2)
/* B7E95C 801077BC 24010001 */  li    $at, 1
/* B7E960 801077C0 240500FF */  li    $a1, 255
/* B7E964 801077C4 15410009 */  bne   $t2, $at, .L801077EC
/* B7E968 801077C8 240D0050 */   li    $t5, 80
/* B7E96C 801077CC 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E970 801077D0 240500FF */  li    $a1, 255
/* B7E974 801077D4 240B0050 */  li    $t3, 80
/* B7E978 801077D8 240C006E */  li    $t4, 110
/* B7E97C 801077DC A42B63DD */  sh    $t3, 0x63dd($at)
/* B7E980 801077E0 A42C63DF */  sh    $t4, 0x63df($at)
/* B7E984 801077E4 03E00008 */  jr    $ra
/* B7E988 801077E8 A42563E1 */   sh    $a1, 0x63e1($at)
.L801077EC:
/* B7E98C 801077EC 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E990 801077F0 240E005A */  li    $t6, 90
/* B7E994 801077F4 A42D63DD */  sh    $t5, 0x63dd($at)
/* B7E998 801077F8 A42E63DF */  sh    $t6, 0x63df($at)
/* B7E99C 801077FC 03E00008 */  jr    $ra
/* B7E9A0 80107800 A42563E1 */   sh    $a1, 0x63e1($at)

glabel func_80107804
/* B7E9A4 80107804 24827FFF */  addiu $v0, $a0, 0x7fff
/* B7E9A8 80107808 904262FE */  lbu   $v0, 0x62fe($v0)
/* B7E9AC 8010780C 24010001 */  li    $at, 1
/* B7E9B0 80107810 240500FF */  li    $a1, 255
/* B7E9B4 80107814 14410007 */  bne   $v0, $at, .L80107834
/* B7E9B8 80107818 240F005A */   li    $t7, 90
/* B7E9BC 8010781C 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E9C0 80107820 241800B4 */  li    $t8, 180
/* B7E9C4 80107824 A42F63DD */  sh    $t7, 0x63dd($at)
/* B7E9C8 80107828 A43863DF */  sh    $t8, 0x63df($at)
/* B7E9CC 8010782C 03E00008 */  jr    $ra
/* B7E9D0 80107830 A42563E1 */   sh    $a1, 0x63e1($at)
.L80107834:
/* B7E9D4 80107834 24010005 */  li    $at, 5
/* B7E9D8 80107838 14410009 */  bne   $v0, $at, .L80107860
/* B7E9DC 8010783C 240500FF */   li    $a1, 255
/* B7E9E0 80107840 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E9E4 80107844 24190050 */  li    $t9, 80
/* B7E9E8 80107848 24080096 */  li    $t0, 150
/* B7E9EC 8010784C 240900B4 */  li    $t1, 180
/* B7E9F0 80107850 A43963DD */  sh    $t9, 0x63dd($at)
/* B7E9F4 80107854 A42863DF */  sh    $t0, 0x63df($at)
/* B7E9F8 80107858 03E00008 */  jr    $ra
/* B7E9FC 8010785C A42963E1 */   sh    $t1, 0x63e1($at)
.L80107860:
/* B7EA00 80107860 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EA04 80107864 240A0064 */  li    $t2, 100
/* B7EA08 80107868 240B00B4 */  li    $t3, 180
/* B7EA0C 8010786C A42A63DD */  sh    $t2, 0x63dd($at)
/* B7EA10 80107870 A42B63DF */  sh    $t3, 0x63df($at)
/* B7EA14 80107874 03E00008 */  jr    $ra
/* B7EA18 80107878 A42563E1 */   sh    $a1, 0x63e1($at)

glabel func_8010787C
/* B7EA1C 8010787C 248C7FFF */  addiu $t4, $a0, 0x7fff
/* B7EA20 80107880 918C62FE */  lbu   $t4, 0x62fe($t4)
/* B7EA24 80107884 24010001 */  li    $at, 1
/* B7EA28 80107888 240500FF */  li    $a1, 255
/* B7EA2C 8010788C 15810009 */  bne   $t4, $at, .L801078B4
/* B7EA30 80107890 240F0096 */   li    $t7, 150
/* B7EA34 80107894 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EA38 80107898 240500FF */  li    $a1, 255
/* B7EA3C 8010789C 240D00D2 */  li    $t5, 210
/* B7EA40 801078A0 240E0064 */  li    $t6, 100
/* B7EA44 801078A4 A42D63DD */  sh    $t5, 0x63dd($at)
/* B7EA48 801078A8 A42E63DF */  sh    $t6, 0x63df($at)
/* B7EA4C 801078AC 03E00008 */  jr    $ra
/* B7EA50 801078B0 A42563E1 */   sh    $a1, 0x63e1($at)
.L801078B4:
/* B7EA54 801078B4 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EA58 801078B8 241800B4 */  li    $t8, 180
/* B7EA5C 801078BC A42563DD */  sh    $a1, 0x63dd($at)
/* B7EA60 801078C0 A42F63DF */  sh    $t7, 0x63df($at)
/* B7EA64 801078C4 03E00008 */  jr    $ra
/* B7EA68 801078C8 A43863E1 */   sh    $t8, 0x63e1($at)

glabel func_801078CC
/* B7EA6C 801078CC 24997FFF */  addiu $t9, $a0, 0x7fff
/* B7EA70 801078D0 933962FE */  lbu   $t9, 0x62fe($t9)
/* B7EA74 801078D4 24010001 */  li    $at, 1
/* B7EA78 801078D8 240500FF */  li    $a1, 255
/* B7EA7C 801078DC 17210008 */  bne   $t9, $at, .L80107900
/* B7EA80 801078E0 240900E1 */   li    $t1, 225
/* B7EA84 801078E4 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EA88 801078E8 240500FF */  li    $a1, 255
/* B7EA8C 801078EC 2408001E */  li    $t0, 30
/* B7EA90 801078F0 A42563DD */  sh    $a1, 0x63dd($at)
/* B7EA94 801078F4 A42563DF */  sh    $a1, 0x63df($at)
/* B7EA98 801078F8 03E00008 */  jr    $ra
/* B7EA9C 801078FC A42863E1 */   sh    $t0, 0x63e1($at)
.L80107900:
/* B7EAA0 80107900 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EAA4 80107904 240A0032 */  li    $t2, 50
/* B7EAA8 80107908 A42963DD */  sh    $t1, 0x63dd($at)
/* B7EAAC 8010790C A42563DF */  sh    $a1, 0x63df($at)
/* B7EAB0 80107910 03E00008 */  jr    $ra
/* B7EAB4 80107914 A42A63E1 */   sh    $t2, 0x63e1($at)

glabel func_80107918
/* B7EAB8 80107918 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EABC 8010791C A42063E1 */  sh    $zero, 0x63e1($at)
/* B7EAC0 80107920 24837FFF */  addiu $v1, $a0, 0x7fff
/* B7EAC4 80107924 846363E1 */  lh    $v1, 0x63e1($v1)
/* B7EAC8 80107928 A42363DF */  sh    $v1, 0x63df($at)
/* B7EACC 8010792C 03E00008 */  jr    $ra
/* B7EAD0 80107930 A42363DD */   sh    $v1, 0x63dd($at)
.L80107934:
glabel L80107934
/* B7EAD4 80107934 34018000 */  li    $at, 32768
/* B7EAD8 80107938 00811021 */  addu  $v0, $a0, $at
/* B7EADC 8010793C 904B62FD */  lbu   $t3, 0x62fd($v0)
/* B7EAE0 80107940 24010005 */  li    $at, 5
/* B7EAE4 80107944 240500FF */  li    $a1, 255
/* B7EAE8 80107948 15610006 */  bne   $t3, $at, .L80107964
/* B7EAEC 8010794C 24817FFF */   addiu $at, $a0, 0x7fff
/* B7EAF0 80107950 A42063E1 */  sh    $zero, 0x63e1($at)
/* B7EAF4 80107954 844363E0 */  lh    $v1, 0x63e0($v0)
/* B7EAF8 80107958 A42363DF */  sh    $v1, 0x63df($at)
/* B7EAFC 8010795C 03E00008 */  jr    $ra
/* B7EB00 80107960 A42363DD */   sh    $v1, 0x63dd($at)
.L80107964:
/* B7EB04 80107964 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EB08 80107968 A42563E1 */  sh    $a1, 0x63e1($at)
/* B7EB0C 8010796C 844363E0 */  lh    $v1, 0x63e0($v0)
/* B7EB10 80107970 A42363DF */  sh    $v1, 0x63df($at)
/* B7EB14 80107974 A42363DD */  sh    $v1, 0x63dd($at)
/* B7EB18 80107978 03E00008 */  jr    $ra
/* B7EB1C 8010797C 00000000 */   nop   

glabel func_80107980
/* B7EB20 80107980 27BDFF90 */  addiu $sp, $sp, -0x70
/* B7EB24 80107984 3C0F8015 */  lui   $t7, %hi(D_8014B308) # $t7, 0x8015
/* B7EB28 80107988 85EFB308 */  lh    $t7, %lo(D_8014B308)($t7)
/* B7EB2C 8010798C AFA40070 */  sw    $a0, 0x70($sp)
/* B7EB30 80107990 AFA50074 */  sw    $a1, 0x74($sp)
/* B7EB34 80107994 AFA60078 */  sw    $a2, 0x78($sp)
/* B7EB38 80107998 AFA7007C */  sw    $a3, 0x7c($sp)
/* B7EB3C 8010799C 8CA20000 */  lw    $v0, ($a1)
/* B7EB40 801079A0 15E001C2 */  bnez  $t7, .L801080AC
/* B7EB44 801079A4 00A07025 */   move  $t6, $a1
/* B7EB48 801079A8 3C068015 */  lui   $a2, %hi(D_801539F0) # $a2, 0x8015
/* B7EB4C 801079AC 84C639F0 */  lh    $a2, %lo(D_801539F0)($a2)
/* B7EB50 801079B0 3C188015 */  lui   $t8, %hi(D_801539C8) # $t8, 0x8015
/* B7EB54 801079B4 271839C8 */  addiu $t8, %lo(D_801539C8) # addiu $t8, $t8, 0x39c8
/* B7EB58 801079B8 00C00821 */  addu  $at, $a2, $zero
/* B7EB5C 801079BC 00063080 */  sll   $a2, $a2, 2
/* B7EB60 801079C0 00C13023 */  subu  $a2, $a2, $at
/* B7EB64 801079C4 00063040 */  sll   $a2, $a2, 1
/* B7EB68 801079C8 3C0A8015 */  lui   $t2, %hi(D_801539E0) # $t2, 0x8015
/* B7EB6C 801079CC 00D82021 */  addu  $a0, $a2, $t8
/* B7EB70 801079D0 854A39E0 */  lh    $t2, %lo(D_801539E0)($t2)
/* B7EB74 801079D4 84850000 */  lh    $a1, ($a0)
/* B7EB78 801079D8 3C088015 */  lui   $t0, %hi(D_801539EC) # $t0, 0x8015
/* B7EB7C 801079DC 3C098015 */  lui   $t1, %hi(D_801539E4) # $t1, 0x8015
/* B7EB80 801079E0 01453823 */  subu  $a3, $t2, $a1
/* B7EB84 801079E4 04E20004 */  bltzl $a3, .L801079F8
/* B7EB88 801079E8 00071823 */   negu  $v1, $a3
/* B7EB8C 801079EC 10000002 */  b     .L801079F8
/* B7EB90 801079F0 00E01825 */   move  $v1, $a3
/* B7EB94 801079F4 00071823 */  negu  $v1, $a3
.L801079F8:
/* B7EB98 801079F8 850839EC */  lh    $t0, %lo(D_801539EC)($t0)
/* B7EB9C 801079FC 852939E4 */  lh    $t1, %lo(D_801539E4)($t1)
/* B7EBA0 80107A00 848B0002 */  lh    $t3, 2($a0)
/* B7EBA4 80107A04 0068001A */  div   $zero, $v1, $t0
/* B7EBA8 80107A08 00006812 */  mflo  $t5
/* B7EBAC 80107A0C 000D6C00 */  sll   $t5, $t5, 0x10
/* B7EBB0 80107A10 15000002 */  bnez  $t0, .L80107A1C
/* B7EBB4 80107A14 00000000 */   nop   
/* B7EBB8 80107A18 0007000D */  break 7
.L80107A1C:
/* B7EBBC 80107A1C 2401FFFF */  li    $at, -1
/* B7EBC0 80107A20 15010004 */  bne   $t0, $at, .L80107A34
/* B7EBC4 80107A24 3C018000 */   lui   $at, 0x8000
/* B7EBC8 80107A28 14610002 */  bne   $v1, $at, .L80107A34
/* B7EBCC 80107A2C 00000000 */   nop   
/* B7EBD0 80107A30 0006000D */  break 6
.L80107A34:
/* B7EBD4 80107A34 012B3823 */  subu  $a3, $t1, $t3
/* B7EBD8 80107A38 04E00003 */  bltz  $a3, .L80107A48
/* B7EBDC 80107A3C 000D6C03 */   sra   $t5, $t5, 0x10
/* B7EBE0 80107A40 10000002 */  b     .L80107A4C
/* B7EBE4 80107A44 00E01825 */   move  $v1, $a3
.L80107A48:
/* B7EBE8 80107A48 00071823 */  negu  $v1, $a3
.L80107A4C:
/* B7EBEC 80107A4C 0068001A */  div   $zero, $v1, $t0
/* B7EBF0 80107A50 3C078015 */  lui   $a3, %hi(D_801539E8) # $a3, 0x8015
/* B7EBF4 80107A54 84E739E8 */  lh    $a3, %lo(D_801539E8)($a3)
/* B7EBF8 80107A58 848C0004 */  lh    $t4, 4($a0)
/* B7EBFC 80107A5C 15000002 */  bnez  $t0, .L80107A68
/* B7EC00 80107A60 00000000 */   nop   
/* B7EC04 80107A64 0007000D */  break 7
.L80107A68:
/* B7EC08 80107A68 2401FFFF */  li    $at, -1
/* B7EC0C 80107A6C 15010004 */  bne   $t0, $at, .L80107A80
/* B7EC10 80107A70 3C018000 */   lui   $at, 0x8000
/* B7EC14 80107A74 14610002 */  bne   $v1, $at, .L80107A80
/* B7EC18 80107A78 00000000 */   nop   
/* B7EC1C 80107A7C 0006000D */  break 6
.L80107A80:
/* B7EC20 80107A80 00EC7023 */  subu  $t6, $a3, $t4
/* B7EC24 80107A84 0000C812 */  mflo  $t9
/* B7EC28 80107A88 A7B90060 */  sh    $t9, 0x60($sp)
/* B7EC2C 80107A8C AFAE0000 */  sw    $t6, ($sp)
/* B7EC30 80107A90 05C00003 */  bltz  $t6, .L80107AA0
/* B7EC34 80107A94 01C07825 */   move  $t7, $t6
/* B7EC38 80107A98 10000003 */  b     .L80107AA8
/* B7EC3C 80107A9C 01E01825 */   move  $v1, $t7
.L80107AA0:
/* B7EC40 80107AA0 8FA30000 */  lw    $v1, ($sp)
/* B7EC44 80107AA4 00031823 */  negu  $v1, $v1
.L80107AA8:
/* B7EC48 80107AA8 0145082A */  slt   $at, $t2, $a1
/* B7EC4C 80107AAC 54200006 */  bnezl $at, .L80107AC8
/* B7EC50 80107AB0 014D5021 */   addu  $t2, $t2, $t5
/* B7EC54 80107AB4 014D5023 */  subu  $t2, $t2, $t5
/* B7EC58 80107AB8 000A5400 */  sll   $t2, $t2, 0x10
/* B7EC5C 80107ABC 10000004 */  b     .L80107AD0
/* B7EC60 80107AC0 000A5403 */   sra   $t2, $t2, 0x10
/* B7EC64 80107AC4 014D5021 */  addu  $t2, $t2, $t5
.L80107AC8:
/* B7EC68 80107AC8 000A5400 */  sll   $t2, $t2, 0x10
/* B7EC6C 80107ACC 000A5403 */  sra   $t2, $t2, 0x10
.L80107AD0:
/* B7EC70 80107AD0 012B082A */  slt   $at, $t1, $t3
/* B7EC74 80107AD4 14200006 */  bnez  $at, .L80107AF0
/* B7EC78 80107AD8 3C0D8015 */   lui   $t5, %hi(D_801539F4) # $t5, 0x8015
/* B7EC7C 80107ADC 87B80060 */  lh    $t8, 0x60($sp)
/* B7EC80 80107AE0 01384823 */  subu  $t1, $t1, $t8
/* B7EC84 80107AE4 00094C00 */  sll   $t1, $t1, 0x10
/* B7EC88 80107AE8 10000005 */  b     .L80107B00
/* B7EC8C 80107AEC 00094C03 */   sra   $t1, $t1, 0x10
.L80107AF0:
/* B7EC90 80107AF0 87B90060 */  lh    $t9, 0x60($sp)
/* B7EC94 80107AF4 01394821 */  addu  $t1, $t1, $t9
/* B7EC98 80107AF8 00094C00 */  sll   $t1, $t1, 0x10
/* B7EC9C 80107AFC 00094C03 */  sra   $t1, $t1, 0x10
.L80107B00:
/* B7ECA0 80107B00 00EC082A */  slt   $at, $a3, $t4
/* B7ECA4 80107B04 14200013 */  bnez  $at, .L80107B54
/* B7ECA8 80107B08 00000000 */   nop   
/* B7ECAC 80107B0C 0068001A */  div   $zero, $v1, $t0
/* B7ECB0 80107B10 00007012 */  mflo  $t6
/* B7ECB4 80107B14 000E7C00 */  sll   $t7, $t6, 0x10
/* B7ECB8 80107B18 000FC403 */  sra   $t8, $t7, 0x10
/* B7ECBC 80107B1C 00F83823 */  subu  $a3, $a3, $t8
/* B7ECC0 80107B20 00073C00 */  sll   $a3, $a3, 0x10
/* B7ECC4 80107B24 15000002 */  bnez  $t0, .L80107B30
/* B7ECC8 80107B28 00000000 */   nop   
/* B7ECCC 80107B2C 0007000D */  break 7
.L80107B30:
/* B7ECD0 80107B30 2401FFFF */  li    $at, -1
/* B7ECD4 80107B34 15010004 */  bne   $t0, $at, .L80107B48
/* B7ECD8 80107B38 3C018000 */   lui   $at, 0x8000
/* B7ECDC 80107B3C 14610002 */  bne   $v1, $at, .L80107B48
/* B7ECE0 80107B40 00000000 */   nop   
/* B7ECE4 80107B44 0006000D */  break 6
.L80107B48:
/* B7ECE8 80107B48 00073C03 */  sra   $a3, $a3, 0x10
/* B7ECEC 80107B4C 10000012 */  b     .L80107B98
/* B7ECF0 80107B50 AFA5000C */   sw    $a1, 0xc($sp)
.L80107B54:
/* B7ECF4 80107B54 0068001A */  div   $zero, $v1, $t0
/* B7ECF8 80107B58 0000C812 */  mflo  $t9
/* B7ECFC 80107B5C 00197400 */  sll   $t6, $t9, 0x10
/* B7ED00 80107B60 000E7C03 */  sra   $t7, $t6, 0x10
/* B7ED04 80107B64 00EF3821 */  addu  $a3, $a3, $t7
/* B7ED08 80107B68 00073C00 */  sll   $a3, $a3, 0x10
/* B7ED0C 80107B6C 00073C03 */  sra   $a3, $a3, 0x10
/* B7ED10 80107B70 15000002 */  bnez  $t0, .L80107B7C
/* B7ED14 80107B74 00000000 */   nop   
/* B7ED18 80107B78 0007000D */  break 7
.L80107B7C:
/* B7ED1C 80107B7C 2401FFFF */  li    $at, -1
/* B7ED20 80107B80 15010004 */  bne   $t0, $at, .L80107B94
/* B7ED24 80107B84 3C018000 */   lui   $at, 0x8000
/* B7ED28 80107B88 14610002 */  bne   $v1, $at, .L80107B94
/* B7ED2C 80107B8C 00000000 */   nop   
/* B7ED30 80107B90 0006000D */  break 6
.L80107B94:
/* B7ED34 80107B94 AFA5000C */  sw    $a1, 0xc($sp)
.L80107B98:
/* B7ED38 80107B98 3C188015 */  lui   $t8, %hi(D_801539D4) # $t8, 0x8015
/* B7ED3C 80107B9C 271839D4 */  addiu $t8, %lo(D_801539D4) # addiu $t8, $t8, 0x39d4
/* B7ED40 80107BA0 00D82821 */  addu  $a1, $a2, $t8
/* B7ED44 80107BA4 85AD39F4 */  lh    $t5, %lo(D_801539F4)($t5)
/* B7ED48 80107BA8 84B90000 */  lh    $t9, ($a1)
/* B7ED4C 80107BAC 3C018015 */  lui   $at, %hi(D_801539E4)
/* B7ED50 80107BB0 01B92023 */  subu  $a0, $t5, $t9
/* B7ED54 80107BB4 AFB90000 */  sw    $t9, ($sp)
/* B7ED58 80107BB8 04800008 */  bltz  $a0, .L80107BDC
/* B7ED5C 80107BBC 03207025 */   move  $t6, $t9
/* B7ED60 80107BC0 3C018015 */  lui   $at, %hi(D_801539E4) # $at, 0x8015
/* B7ED64 80107BC4 A42939E4 */  sh    $t1, %lo(D_801539E4)($at)
/* B7ED68 80107BC8 3C018015 */  lui   $at, %hi(D_801539E4) # $at, 0x8015
/* B7ED6C 80107BCC A42A39E0 */  sh    $t2, %lo(D_801539E0)($at)
/* B7ED70 80107BD0 00801825 */  move  $v1, $a0
/* B7ED74 80107BD4 10000006 */  b     .L80107BF0
/* B7ED78 80107BD8 AFAB0008 */   sw    $t3, 8($sp)
.L80107BDC:
/* B7ED7C 80107BDC A42939E4 */  sh    $t1, %lo(D_801539E4)($at)
/* B7ED80 80107BE0 3C018015 */  lui   $at, %hi(D_801539E0) # $at, 0x8015
/* B7ED84 80107BE4 A42A39E0 */  sh    $t2, %lo(D_801539E0)($at)
/* B7ED88 80107BE8 00041823 */  negu  $v1, $a0
/* B7ED8C 80107BEC AFAB0008 */  sw    $t3, 8($sp)
.L80107BF0:
/* B7ED90 80107BF0 0068001A */  div   $zero, $v1, $t0
/* B7ED94 80107BF4 3C098015 */  lui   $t1, %hi(D_801539F8) # $t1, 0x8015
/* B7ED98 80107BF8 852939F8 */  lh    $t1, %lo(D_801539F8)($t1)
/* B7ED9C 80107BFC 84AB0002 */  lh    $t3, 2($a1)
/* B7EDA0 80107C00 00003012 */  mflo  $a2
/* B7EDA4 80107C04 00063400 */  sll   $a2, $a2, 0x10
/* B7EDA8 80107C08 15000002 */  bnez  $t0, .L80107C14
/* B7EDAC 80107C0C 00000000 */   nop   
/* B7EDB0 80107C10 0007000D */  break 7
.L80107C14:
/* B7EDB4 80107C14 2401FFFF */  li    $at, -1
/* B7EDB8 80107C18 15010004 */  bne   $t0, $at, .L80107C2C
/* B7EDBC 80107C1C 3C018000 */   lui   $at, 0x8000
/* B7EDC0 80107C20 14610002 */  bne   $v1, $at, .L80107C2C
/* B7EDC4 80107C24 00000000 */   nop   
/* B7EDC8 80107C28 0006000D */  break 6
.L80107C2C:
/* B7EDCC 80107C2C 012B2023 */  subu  $a0, $t1, $t3
/* B7EDD0 80107C30 04800006 */  bltz  $a0, .L80107C4C
/* B7EDD4 80107C34 00063403 */   sra   $a2, $a2, 0x10
/* B7EDD8 80107C38 3C018015 */  lui   $at, %hi(D_801539E8) # $at, 0x8015
/* B7EDDC 80107C3C A42739E8 */  sh    $a3, %lo(D_801539E8)($at)
/* B7EDE0 80107C40 00801825 */  move  $v1, $a0
/* B7EDE4 80107C44 10000005 */  b     .L80107C5C
/* B7EDE8 80107C48 AFAC0004 */   sw    $t4, 4($sp)
.L80107C4C:
/* B7EDEC 80107C4C 3C018015 */  lui   $at, %hi(D_801539E8) # $at, 0x8015
/* B7EDF0 80107C50 A42739E8 */  sh    $a3, %lo(D_801539E8)($at)
/* B7EDF4 80107C54 00041823 */  negu  $v1, $a0
/* B7EDF8 80107C58 AFAC0004 */  sw    $t4, 4($sp)
.L80107C5C:
/* B7EDFC 80107C5C 0068001A */  div   $zero, $v1, $t0
/* B7EE00 80107C60 3C0A8015 */  lui   $t2, %hi(D_801539FC) # $t2, 0x8015
/* B7EE04 80107C64 854A39FC */  lh    $t2, %lo(D_801539FC)($t2)
/* B7EE08 80107C68 84AC0004 */  lh    $t4, 4($a1)
/* B7EE0C 80107C6C 00003812 */  mflo  $a3
/* B7EE10 80107C70 00073C00 */  sll   $a3, $a3, 0x10
/* B7EE14 80107C74 15000002 */  bnez  $t0, .L80107C80
/* B7EE18 80107C78 00000000 */   nop   
/* B7EE1C 80107C7C 0007000D */  break 7
.L80107C80:
/* B7EE20 80107C80 2401FFFF */  li    $at, -1
/* B7EE24 80107C84 15010004 */  bne   $t0, $at, .L80107C98
/* B7EE28 80107C88 3C018000 */   lui   $at, 0x8000
/* B7EE2C 80107C8C 14610002 */  bne   $v1, $at, .L80107C98
/* B7EE30 80107C90 00000000 */   nop   
/* B7EE34 80107C94 0006000D */  break 6
.L80107C98:
/* B7EE38 80107C98 014C2023 */  subu  $a0, $t2, $t4
/* B7EE3C 80107C9C 04800003 */  bltz  $a0, .L80107CAC
/* B7EE40 80107CA0 00073C03 */   sra   $a3, $a3, 0x10
/* B7EE44 80107CA4 10000002 */  b     .L80107CB0
/* B7EE48 80107CA8 00801825 */   move  $v1, $a0
.L80107CAC:
/* B7EE4C 80107CAC 00041823 */  negu  $v1, $a0
.L80107CB0:
/* B7EE50 80107CB0 8FA40000 */  lw    $a0, ($sp)
/* B7EE54 80107CB4 01A4082A */  slt   $at, $t5, $a0
/* B7EE58 80107CB8 54200006 */  bnezl $at, .L80107CD4
/* B7EE5C 80107CBC 01A66821 */   addu  $t5, $t5, $a2
/* B7EE60 80107CC0 01A66823 */  subu  $t5, $t5, $a2
/* B7EE64 80107CC4 000D6C00 */  sll   $t5, $t5, 0x10
/* B7EE68 80107CC8 10000004 */  b     .L80107CDC
/* B7EE6C 80107CCC 000D6C03 */   sra   $t5, $t5, 0x10
/* B7EE70 80107CD0 01A66821 */  addu  $t5, $t5, $a2
.L80107CD4:
/* B7EE74 80107CD4 000D6C00 */  sll   $t5, $t5, 0x10
/* B7EE78 80107CD8 000D6C03 */  sra   $t5, $t5, 0x10
.L80107CDC:
/* B7EE7C 80107CDC 012B082A */  slt   $at, $t1, $t3
/* B7EE80 80107CE0 54200006 */  bnezl $at, .L80107CFC
/* B7EE84 80107CE4 01274821 */   addu  $t1, $t1, $a3
/* B7EE88 80107CE8 01274823 */  subu  $t1, $t1, $a3
/* B7EE8C 80107CEC 00094C00 */  sll   $t1, $t1, 0x10
/* B7EE90 80107CF0 10000004 */  b     .L80107D04
/* B7EE94 80107CF4 00094C03 */   sra   $t1, $t1, 0x10
/* B7EE98 80107CF8 01274821 */  addu  $t1, $t1, $a3
.L80107CFC:
/* B7EE9C 80107CFC 00094C00 */  sll   $t1, $t1, 0x10
/* B7EEA0 80107D00 00094C03 */  sra   $t1, $t1, 0x10
.L80107D04:
/* B7EEA4 80107D04 014C082A */  slt   $at, $t2, $t4
/* B7EEA8 80107D08 14200013 */  bnez  $at, .L80107D58
/* B7EEAC 80107D0C 00000000 */   nop   
/* B7EEB0 80107D10 0068001A */  div   $zero, $v1, $t0
/* B7EEB4 80107D14 00007812 */  mflo  $t7
/* B7EEB8 80107D18 000FC400 */  sll   $t8, $t7, 0x10
/* B7EEBC 80107D1C 0018CC03 */  sra   $t9, $t8, 0x10
/* B7EEC0 80107D20 01595023 */  subu  $t2, $t2, $t9
/* B7EEC4 80107D24 000A5400 */  sll   $t2, $t2, 0x10
/* B7EEC8 80107D28 15000002 */  bnez  $t0, .L80107D34
/* B7EECC 80107D2C 00000000 */   nop   
/* B7EED0 80107D30 0007000D */  break 7
.L80107D34:
/* B7EED4 80107D34 2401FFFF */  li    $at, -1
/* B7EED8 80107D38 15010004 */  bne   $t0, $at, .L80107D4C
/* B7EEDC 80107D3C 3C018000 */   lui   $at, 0x8000
/* B7EEE0 80107D40 14610002 */  bne   $v1, $at, .L80107D4C
/* B7EEE4 80107D44 00000000 */   nop   
/* B7EEE8 80107D48 0006000D */  break 6
.L80107D4C:
/* B7EEEC 80107D4C 000A5403 */  sra   $t2, $t2, 0x10
/* B7EEF0 80107D50 10000012 */  b     .L80107D9C
/* B7EEF4 80107D54 2508FFFF */   addiu $t0, $t0, -1
.L80107D58:
/* B7EEF8 80107D58 0068001A */  div   $zero, $v1, $t0
/* B7EEFC 80107D5C 00007012 */  mflo  $t6
/* B7EF00 80107D60 000E7C00 */  sll   $t7, $t6, 0x10
/* B7EF04 80107D64 000FC403 */  sra   $t8, $t7, 0x10
/* B7EF08 80107D68 01585021 */  addu  $t2, $t2, $t8
/* B7EF0C 80107D6C 000A5400 */  sll   $t2, $t2, 0x10
/* B7EF10 80107D70 000A5403 */  sra   $t2, $t2, 0x10
/* B7EF14 80107D74 15000002 */  bnez  $t0, .L80107D80
/* B7EF18 80107D78 00000000 */   nop   
/* B7EF1C 80107D7C 0007000D */  break 7
.L80107D80:
/* B7EF20 80107D80 2401FFFF */  li    $at, -1
/* B7EF24 80107D84 15010004 */  bne   $t0, $at, .L80107D98
/* B7EF28 80107D88 3C018000 */   lui   $at, 0x8000
/* B7EF2C 80107D8C 14610002 */  bne   $v1, $at, .L80107D98
/* B7EF30 80107D90 00000000 */   nop   
/* B7EF34 80107D94 0006000D */  break 6
.L80107D98:
/* B7EF38 80107D98 2508FFFF */  addiu $t0, $t0, -1
.L80107D9C:
/* B7EF3C 80107D9C 00084400 */  sll   $t0, $t0, 0x10
/* B7EF40 80107DA0 00084403 */  sra   $t0, $t0, 0x10
/* B7EF44 80107DA4 3C018015 */  lui   $at, %hi(D_801539EC) # $at, 0x8015
/* B7EF48 80107DA8 15000018 */  bnez  $t0, .L80107E0C
/* B7EF4C 80107DAC A42839EC */   sh    $t0, %lo(D_801539EC)($at)
/* B7EF50 80107DB0 8FB9000C */  lw    $t9, 0xc($sp)
/* B7EF54 80107DB4 8FAE0008 */  lw    $t6, 8($sp)
/* B7EF58 80107DB8 3C018015 */  lui   $at, %hi(D_801539E0) # $at, 0x8015
/* B7EF5C 80107DBC A43939E0 */  sh    $t9, %lo(D_801539E0)($at)
/* B7EF60 80107DC0 8FAF0004 */  lw    $t7, 4($sp)
/* B7EF64 80107DC4 3C018015 */  lui   $at, %hi(D_801539E4) # $at, 0x8015
/* B7EF68 80107DC8 3C188015 */  lui   $t8, %hi(D_801539F0) # $t8, 0x8015
/* B7EF6C 80107DCC 871839F0 */  lh    $t8, %lo(D_801539F0)($t8)
/* B7EF70 80107DD0 A42E39E4 */  sh    $t6, %lo(D_801539E4)($at)
/* B7EF74 80107DD4 3C018015 */  lui   $at, %hi(D_801539E8) # $at, 0x8015
/* B7EF78 80107DD8 A42F39E8 */  sh    $t7, %lo(D_801539E8)($at)
/* B7EF7C 80107DDC 3C018015 */  lui   $at, %hi(D_801539F0) # $at, 0x8015
/* B7EF80 80107DE0 3B190001 */  xori  $t9, $t8, 1
/* B7EF84 80107DE4 A43939F0 */  sh    $t9, %lo(D_801539F0)($at)
/* B7EF88 80107DE8 00046C00 */  sll   $t5, $a0, 0x10
/* B7EF8C 80107DEC 000B4C00 */  sll   $t1, $t3, 0x10
/* B7EF90 80107DF0 000C5400 */  sll   $t2, $t4, 0x10
/* B7EF94 80107DF4 2408000C */  li    $t0, 12
/* B7EF98 80107DF8 3C018015 */  lui   $at, %hi(D_801539EC) # $at, 0x8015
/* B7EF9C 80107DFC 000D6C03 */  sra   $t5, $t5, 0x10
/* B7EFA0 80107E00 00094C03 */  sra   $t1, $t1, 0x10
/* B7EFA4 80107E04 000A5403 */  sra   $t2, $t2, 0x10
/* B7EFA8 80107E08 A42839EC */  sh    $t0, %lo(D_801539EC)($at)
.L80107E0C:
/* B7EFAC 80107E0C 00402025 */  move  $a0, $v0
/* B7EFB0 80107E10 3C03E700 */  lui   $v1, 0xe700
/* B7EFB4 80107E14 AC830000 */  sw    $v1, ($a0)
/* B7EFB8 80107E18 AC800004 */  sw    $zero, 4($a0)
/* B7EFBC 80107E1C 24420008 */  addiu $v0, $v0, 8
/* B7EFC0 80107E20 00402025 */  move  $a0, $v0
/* B7EFC4 80107E24 3C0EFC30 */  lui   $t6, (0xFC309661 >> 16) # lui $t6, 0xfc30
/* B7EFC8 80107E28 3C0F552E */  lui   $t7, (0x552EFF7F >> 16) # lui $t7, 0x552e
/* B7EFCC 80107E2C 35EFFF7F */  ori   $t7, (0x552EFF7F & 0xFFFF) # ori $t7, $t7, 0xff7f
/* B7EFD0 80107E30 35CE9661 */  ori   $t6, (0xFC309661 & 0xFFFF) # ori $t6, $t6, 0x9661
/* B7EFD4 80107E34 AC8E0000 */  sw    $t6, ($a0)
/* B7EFD8 80107E38 AC8F0004 */  sw    $t7, 4($a0)
/* B7EFDC 80107E3C 24420008 */  addiu $v0, $v0, 8
/* B7EFE0 80107E40 00402025 */  move  $a0, $v0
/* B7EFE4 80107E44 3C18FA00 */  lui   $t8, 0xfa00
/* B7EFE8 80107E48 AC980000 */  sw    $t8, ($a0)
/* B7EFEC 80107E4C 3C188015 */  lui   $t8, %hi(D_801539E4) # $t8, 0x8015
/* B7EFF0 80107E50 3C198015 */  lui   $t9, %hi(D_801539E0) # $t9, 0x8015
/* B7EFF4 80107E54 872E39E0 */  lh    $t6, %lo(D_801539E0)($t9)
/* B7EFF8 80107E58 871839E4 */  lh    $t8, %lo(D_801539E4)($t8)
/* B7EFFC 80107E5C 3C018015 */  lui   $at, %hi(D_801539F8) # $at, 0x8015
/* B7F000 80107E60 000E7E00 */  sll   $t7, $t6, 0x18
/* B7F004 80107E64 331900FF */  andi  $t9, $t8, 0xff
/* B7F008 80107E68 00197400 */  sll   $t6, $t9, 0x10
/* B7F00C 80107E6C 3C198015 */  lui   $t9, %hi(D_801539E8) # $t9, 0x8015
/* B7F010 80107E70 873939E8 */  lh    $t9, %lo(D_801539E8)($t9)
/* B7F014 80107E74 01EEC025 */  or    $t8, $t7, $t6
/* B7F018 80107E78 24420008 */  addiu $v0, $v0, 8
/* B7F01C 80107E7C 332F00FF */  andi  $t7, $t9, 0xff
/* B7F020 80107E80 000F7200 */  sll   $t6, $t7, 8
/* B7F024 80107E84 030EC825 */  or    $t9, $t8, $t6
/* B7F028 80107E88 372F00FF */  ori   $t7, $t9, 0xff
/* B7F02C 80107E8C AC8F0004 */  sw    $t7, 4($a0)
/* B7F030 80107E90 3C18FB00 */  lui   $t8, 0xfb00
/* B7F034 80107E94 AC580000 */  sw    $t8, ($v0)
/* B7F038 80107E98 312F00FF */  andi  $t7, $t1, 0xff
/* B7F03C 80107E9C 000FC400 */  sll   $t8, $t7, 0x10
/* B7F040 80107EA0 000DCE00 */  sll   $t9, $t5, 0x18
/* B7F044 80107EA4 03387025 */  or    $t6, $t9, $t8
/* B7F048 80107EA8 314F00FF */  andi  $t7, $t2, 0xff
/* B7F04C 80107EAC 000FCA00 */  sll   $t9, $t7, 8
/* B7F050 80107EB0 01D9C025 */  or    $t8, $t6, $t9
/* B7F054 80107EB4 370F00FF */  ori   $t7, $t8, 0xff
/* B7F058 80107EB8 AC4F0004 */  sw    $t7, 4($v0)
/* B7F05C 80107EBC A42939F8 */  sh    $t1, %lo(D_801539F8)($at)
/* B7F060 80107EC0 3C018015 */  lui   $at, %hi(D_801539FC) # $at, 0x8015
/* B7F064 80107EC4 8FA40070 */  lw    $a0, 0x70($sp)
/* B7F068 80107EC8 A42A39FC */  sh    $t2, %lo(D_801539FC)($at)
/* B7F06C 80107ECC 3C018015 */  lui   $at, %hi(D_801539F4) # $at, 0x8015
/* B7F070 80107ED0 24450008 */  addiu $a1, $v0, 8
/* B7F074 80107ED4 A42D39F4 */  sh    $t5, %lo(D_801539F4)($at)
/* B7F078 80107ED8 3C0EFD90 */  lui   $t6, 0xfd90
/* B7F07C 80107EDC 24995E08 */  addiu $t9, $a0, 0x5e08
/* B7F080 80107EE0 ACB90004 */  sw    $t9, 4($a1)
/* B7F084 80107EE4 ACAE0000 */  sw    $t6, ($a1)
/* B7F088 80107EE8 24A20008 */  addiu $v0, $a1, 8
/* B7F08C 80107EEC 00402825 */  move  $a1, $v0
/* B7F090 80107EF0 3C0F0708 */  lui   $t7, (0x07080200 >> 16) # lui $t7, 0x708
/* B7F094 80107EF4 35EF0200 */  ori   $t7, (0x07080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* B7F098 80107EF8 3C18F590 */  lui   $t8, 0xf590
/* B7F09C 80107EFC ACB80000 */  sw    $t8, ($a1)
/* B7F0A0 80107F00 ACAF0004 */  sw    $t7, 4($a1)
/* B7F0A4 80107F04 24420008 */  addiu $v0, $v0, 8
/* B7F0A8 80107F08 00402825 */  move  $a1, $v0
/* B7F0AC 80107F0C 3C0EE600 */  lui   $t6, 0xe600
/* B7F0B0 80107F10 ACAE0000 */  sw    $t6, ($a1)
/* B7F0B4 80107F14 ACA00004 */  sw    $zero, 4($a1)
/* B7F0B8 80107F18 24420008 */  addiu $v0, $v0, 8
/* B7F0BC 80107F1C 00402825 */  move  $a1, $v0
/* B7F0C0 80107F20 3C180703 */  lui   $t8, (0x0703F800 >> 16) # lui $t8, 0x703
/* B7F0C4 80107F24 3718F800 */  ori   $t8, (0x0703F800 & 0xFFFF) # ori $t8, $t8, 0xf800
/* B7F0C8 80107F28 3C19F300 */  lui   $t9, 0xf300
/* B7F0CC 80107F2C ACB90000 */  sw    $t9, ($a1)
/* B7F0D0 80107F30 ACB80004 */  sw    $t8, 4($a1)
/* B7F0D4 80107F34 24420008 */  addiu $v0, $v0, 8
/* B7F0D8 80107F38 00402825 */  move  $a1, $v0
/* B7F0DC 80107F3C ACA30000 */  sw    $v1, ($a1)
/* B7F0E0 80107F40 24420008 */  addiu $v0, $v0, 8
/* B7F0E4 80107F44 00401825 */  move  $v1, $v0
/* B7F0E8 80107F48 ACA00004 */  sw    $zero, 4($a1)
/* B7F0EC 80107F4C 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* B7F0F0 80107F50 3C0FF580 */  lui   $t7, (0xF5800200 >> 16) # lui $t7, 0xf580
/* B7F0F4 80107F54 35EF0200 */  ori   $t7, (0xF5800200 & 0xFFFF) # ori $t7, $t7, 0x200
/* B7F0F8 80107F58 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* B7F0FC 80107F5C AC6E0004 */  sw    $t6, 4($v1)
/* B7F100 80107F60 AC6F0000 */  sw    $t7, ($v1)
/* B7F104 80107F64 24420008 */  addiu $v0, $v0, 8
/* B7F108 80107F68 00401825 */  move  $v1, $v0
/* B7F10C 80107F6C 3C180003 */  lui   $t8, (0x0003C03C >> 16) # lui $t8, 3
/* B7F110 80107F70 3718C03C */  ori   $t8, (0x0003C03C & 0xFFFF) # ori $t8, $t8, 0xc03c
/* B7F114 80107F74 3C19F200 */  lui   $t9, 0xf200
/* B7F118 80107F78 AC790000 */  sw    $t9, ($v1)
/* B7F11C 80107F7C AC780004 */  sw    $t8, 4($v1)
/* B7F120 80107F80 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B7F124 80107F84 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* B7F128 80107F88 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* B7F12C 80107F8C 44810000 */  mtc1  $at, $f0
/* B7F130 80107F90 846F0B06 */  lh    $t7, 0xb06($v1)
/* B7F134 80107F94 3C014180 */  li    $at, 0x41800000 # 0.000000
/* B7F138 80107F98 44815000 */  mtc1  $at, $f10
/* B7F13C 80107F9C 448F2000 */  mtc1  $t7, $f4
/* B7F140 80107FA0 3C068017 */  lui   $a2, %hi(D_801759A0) # $a2, 0x8017
/* B7F144 80107FA4 24C659A0 */  addiu $a2, %lo(D_801759A0) # addiu $a2, $a2, 0x59a0
/* B7F148 80107FA8 468021A0 */  cvt.s.w $f6, $f4
/* B7F14C 80107FAC 3C014480 */  li    $at, 0x44800000 # 0.000000
/* B7F150 80107FB0 44812000 */  mtc1  $at, $f4
/* B7F154 80107FB4 87A8007A */  lh    $t0, 0x7a($sp)
/* B7F158 80107FB8 3C078017 */  lui   $a3, %hi(D_801759A4) # $a3, 0x8017
/* B7F15C 80107FBC 87A9007E */  lh    $t1, 0x7e($sp)
/* B7F160 80107FC0 46003203 */  div.s $f8, $f6, $f0
/* B7F164 80107FC4 24E759A4 */  addiu $a3, %lo(D_801759A4) # addiu $a3, $a3, 0x59a4
/* B7F168 80107FC8 3C01E400 */  lui   $at, 0xe400
/* B7F16C 80107FCC 24420008 */  addiu $v0, $v0, 8
/* B7F170 80107FD0 460A4402 */  mul.s $f16, $f8, $f10
/* B7F174 80107FD4 4600848D */  trunc.w.s $f18, $f16
/* B7F178 80107FD8 44059000 */  mfc1  $a1, $f18
/* B7F17C 80107FDC 00000000 */  nop   
/* B7F180 80107FE0 ACC50000 */  sw    $a1, ($a2)
/* B7F184 80107FE4 84780B06 */  lh    $t8, 0xb06($v1)
/* B7F188 80107FE8 0105C821 */  addu  $t9, $t0, $a1
/* B7F18C 80107FEC 00401825 */  move  $v1, $v0
/* B7F190 80107FF0 44983000 */  mtc1  $t8, $f6
/* B7F194 80107FF4 0019C080 */  sll   $t8, $t9, 2
/* B7F198 80107FF8 330F0FFF */  andi  $t7, $t8, 0xfff
/* B7F19C 80107FFC 46803220 */  cvt.s.w $f8, $f6
/* B7F1A0 80108000 0125C021 */  addu  $t8, $t1, $a1
/* B7F1A4 80108004 24420008 */  addiu $v0, $v0, 8
/* B7F1A8 80108008 46004283 */  div.s $f10, $f8, $f0
/* B7F1AC 8010800C 460A2403 */  div.s $f16, $f4, $f10
/* B7F1B0 80108010 4600848D */  trunc.w.s $f18, $f16
/* B7F1B4 80108014 440E9000 */  mfc1  $t6, $f18
/* B7F1B8 80108018 00000000 */  nop   
/* B7F1BC 8010801C ACEE0000 */  sw    $t6, ($a3)
/* B7F1C0 80108020 000F7300 */  sll   $t6, $t7, 0xc
/* B7F1C4 80108024 01C1C825 */  or    $t9, $t6, $at
/* B7F1C8 80108028 00187880 */  sll   $t7, $t8, 2
/* B7F1CC 8010802C 31EE0FFF */  andi  $t6, $t7, 0xfff
/* B7F1D0 80108030 032EC025 */  or    $t8, $t9, $t6
/* B7F1D4 80108034 00087880 */  sll   $t7, $t0, 2
/* B7F1D8 80108038 31F90FFF */  andi  $t9, $t7, 0xfff
/* B7F1DC 8010803C AC780000 */  sw    $t8, ($v1)
/* B7F1E0 80108040 0009C080 */  sll   $t8, $t1, 2
/* B7F1E4 80108044 330F0FFF */  andi  $t7, $t8, 0xfff
/* B7F1E8 80108048 00197300 */  sll   $t6, $t9, 0xc
/* B7F1EC 8010804C 01CFC825 */  or    $t9, $t6, $t7
/* B7F1F0 80108050 AC790004 */  sw    $t9, 4($v1)
/* B7F1F4 80108054 00401825 */  move  $v1, $v0
/* B7F1F8 80108058 3C18E100 */  lui   $t8, 0xe100
/* B7F1FC 8010805C AC780000 */  sw    $t8, ($v1)
/* B7F200 80108060 AC600004 */  sw    $zero, 4($v1)
/* B7F204 80108064 24420008 */  addiu $v0, $v0, 8
/* B7F208 80108068 00401825 */  move  $v1, $v0
/* B7F20C 8010806C 3C0EF100 */  lui   $t6, 0xf100
/* B7F210 80108070 AC6E0000 */  sw    $t6, ($v1)
/* B7F214 80108074 8CE50000 */  lw    $a1, ($a3)
/* B7F218 80108078 24420008 */  addiu $v0, $v0, 8
/* B7F21C 8010807C 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B7F220 80108080 00057C00 */  sll   $t7, $a1, 0x10
/* B7F224 80108084 01E5C825 */  or    $t9, $t7, $a1
/* B7F228 80108088 AC790004 */  sw    $t9, 4($v1)
/* B7F22C 8010808C 248320D8 */  addiu $v1, $a0, 0x20d8
/* B7F230 80108090 24787FFF */  addiu $t8, $v1, 0x7fff
/* B7F234 80108094 931863E8 */  lbu   $t8, 0x63e8($t8)
/* B7F238 80108098 24617FFF */  addiu $at, $v1, 0x7fff
/* B7F23C 8010809C 270E0001 */  addiu $t6, $t8, 1
/* B7F240 801080A0 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B7F244 801080A4 8FAF0074 */  lw    $t7, 0x74($sp)
/* B7F248 801080A8 ADE20000 */  sw    $v0, ($t7)
.L801080AC:
/* B7F24C 801080AC 03E00008 */  jr    $ra
/* B7F250 801080B0 27BD0070 */   addiu $sp, $sp, 0x70

glabel func_801080B4
/* B7F254 801080B4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B7F258 801080B8 3C180001 */  lui   $t8, 1
/* B7F25C 801080BC AFBF001C */  sw    $ra, 0x1c($sp)
/* B7F260 801080C0 AFA40028 */  sw    $a0, 0x28($sp)
/* B7F264 801080C4 AFA5002C */  sw    $a1, 0x2c($sp)
/* B7F268 801080C8 AFA60030 */  sw    $a2, 0x30($sp)
/* B7F26C 801080CC AFA70034 */  sw    $a3, 0x34($sp)
/* B7F270 801080D0 0304C021 */  addu  $t8, $t8, $a0
/* B7F274 801080D4 931803DC */  lbu   $t8, 0x3dc($t8)
/* B7F278 801080D8 24010006 */  li    $at, 6
/* B7F27C 801080DC 8CC30000 */  lw    $v1, ($a2)
/* B7F280 801080E0 1701000D */  bne   $t8, $at, .L80108118
/* B7F284 801080E4 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7F288 801080E8 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B7F28C 801080EC 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B7F290 801080F0 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7F294 801080F4 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7F298 801080F8 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7F29C 801080FC AFA70010 */  sw    $a3, 0x10($sp)
/* B7F2A0 80108100 AFB90014 */  sw    $t9, 0x14($sp)
/* B7F2A4 80108104 00002025 */  move  $a0, $zero
/* B7F2A8 80108108 24060004 */  li    $a2, 4
/* B7F2AC 8010810C 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7F2B0 80108110 AFA30020 */   sw    $v1, 0x20($sp)
/* B7F2B4 80108114 8FA30020 */  lw    $v1, 0x20($sp)
.L80108118:
/* B7F2B8 80108118 00601025 */  move  $v0, $v1
/* B7F2BC 8010811C 3C09E700 */  lui   $t1, 0xe700
/* B7F2C0 80108120 AC490000 */  sw    $t1, ($v0)
/* B7F2C4 80108124 AC400004 */  sw    $zero, 4($v0)
/* B7F2C8 80108128 24630008 */  addiu $v1, $v1, 8
/* B7F2CC 8010812C 00601025 */  move  $v0, $v1
/* B7F2D0 80108130 3C0AFC11 */  lui   $t2, (0xFC119623 >> 16) # lui $t2, 0xfc11
/* B7F2D4 80108134 3C0BFF2F */  lui   $t3, (0xFF2FFFFF >> 16) # lui $t3, 0xff2f
/* B7F2D8 80108138 356BFFFF */  ori   $t3, (0xFF2FFFFF & 0xFFFF) # ori $t3, $t3, 0xffff
/* B7F2DC 8010813C 354A9623 */  ori   $t2, (0xFC119623 & 0xFFFF) # ori $t2, $t2, 0x9623
/* B7F2E0 80108140 AC4A0000 */  sw    $t2, ($v0)
/* B7F2E4 80108144 AC4B0004 */  sw    $t3, 4($v0)
/* B7F2E8 80108148 24630008 */  addiu $v1, $v1, 8
/* B7F2EC 8010814C 00601025 */  move  $v0, $v1
/* B7F2F0 80108150 3C0CFA00 */  lui   $t4, 0xfa00
/* B7F2F4 80108154 AC4C0000 */  sw    $t4, ($v0)
/* B7F2F8 80108158 8FA80028 */  lw    $t0, 0x28($sp)
/* B7F2FC 8010815C 34018000 */  li    $at, 32768
/* B7F300 80108160 24630008 */  addiu $v1, $v1, 8
/* B7F304 80108164 250820D8 */  addiu $t0, $t0, 0x20d8
/* B7F308 80108168 01013821 */  addu  $a3, $t0, $at
/* B7F30C 8010816C 84ED63E2 */  lh    $t5, 0x63e2($a3)
/* B7F310 80108170 2401FF00 */  li    $at, -256
/* B7F314 80108174 3C068016 */  lui   $a2, %hi(gGameInfo) # $a2, 0x8016
/* B7F318 80108178 31AE00FF */  andi  $t6, $t5, 0xff
/* B7F31C 8010817C 01C17825 */  or    $t7, $t6, $at
/* B7F320 80108180 AC4F0004 */  sw    $t7, 4($v0)
/* B7F324 80108184 97B8002E */  lhu   $t8, 0x2e($sp)
/* B7F328 80108188 00601025 */  move  $v0, $v1
/* B7F32C 8010818C 3C0CFD18 */  lui   $t4, 0xfd18
/* B7F330 80108190 2B010066 */  slti  $at, $t8, 0x66
/* B7F334 80108194 1420002C */  bnez  $at, .L80108248
/* B7F338 80108198 24C6FA90 */   addiu $a2, %lo(gGameInfo) # addiu $a2, $a2, -0x570
/* B7F33C 8010819C 00601025 */  move  $v0, $v1
/* B7F340 801081A0 3C19FD18 */  lui   $t9, 0xfd18
/* B7F344 801081A4 AC590000 */  sw    $t9, ($v0)
/* B7F348 801081A8 8CEA62B0 */  lw    $t2, 0x62b0($a3)
/* B7F34C 801081AC 24630008 */  addiu $v1, $v1, 8
/* B7F350 801081B0 3C0CF518 */  lui   $t4, 0xf518
/* B7F354 801081B4 254B1000 */  addiu $t3, $t2, 0x1000
/* B7F358 801081B8 AC4B0004 */  sw    $t3, 4($v0)
/* B7F35C 801081BC 00601025 */  move  $v0, $v1
/* B7F360 801081C0 3C0D0700 */  lui   $t5, 0x700
/* B7F364 801081C4 AC4D0004 */  sw    $t5, 4($v0)
/* B7F368 801081C8 AC4C0000 */  sw    $t4, ($v0)
/* B7F36C 801081CC 24630008 */  addiu $v1, $v1, 8
/* B7F370 801081D0 00601025 */  move  $v0, $v1
/* B7F374 801081D4 3C0EE600 */  lui   $t6, 0xe600
/* B7F378 801081D8 AC4E0000 */  sw    $t6, ($v0)
/* B7F37C 801081DC AC400004 */  sw    $zero, 4($v0)
/* B7F380 801081E0 24630008 */  addiu $v1, $v1, 8
/* B7F384 801081E4 00601025 */  move  $v0, $v1
/* B7F388 801081E8 3C180723 */  lui   $t8, (0x0723F0AB >> 16) # lui $t8, 0x723
/* B7F38C 801081EC 3718F0AB */  ori   $t8, (0x0723F0AB & 0xFFFF) # ori $t8, $t8, 0xf0ab
/* B7F390 801081F0 3C0FF300 */  lui   $t7, 0xf300
/* B7F394 801081F4 AC4F0000 */  sw    $t7, ($v0)
/* B7F398 801081F8 AC580004 */  sw    $t8, 4($v0)
/* B7F39C 801081FC 24630008 */  addiu $v1, $v1, 8
/* B7F3A0 80108200 00601025 */  move  $v0, $v1
/* B7F3A4 80108204 AC490000 */  sw    $t1, ($v0)
/* B7F3A8 80108208 AC400004 */  sw    $zero, 4($v0)
/* B7F3AC 8010820C 24630008 */  addiu $v1, $v1, 8
/* B7F3B0 80108210 00601025 */  move  $v0, $v1
/* B7F3B4 80108214 3C19F518 */  lui   $t9, (0xF5180C00 >> 16) # lui $t9, 0xf518
/* B7F3B8 80108218 37390C00 */  ori   $t9, (0xF5180C00 & 0xFFFF) # ori $t9, $t9, 0xc00
/* B7F3BC 8010821C AC590000 */  sw    $t9, ($v0)
/* B7F3C0 80108220 AC400004 */  sw    $zero, 4($v0)
/* B7F3C4 80108224 24630008 */  addiu $v1, $v1, 8
/* B7F3C8 80108228 00601025 */  move  $v0, $v1
/* B7F3CC 8010822C 3C0B0005 */  lui   $t3, (0x0005C05C >> 16) # lui $t3, 5
/* B7F3D0 80108230 356BC05C */  ori   $t3, (0x0005C05C & 0xFFFF) # ori $t3, $t3, 0xc05c
/* B7F3D4 80108234 3C0AF200 */  lui   $t2, 0xf200
/* B7F3D8 80108238 AC4A0000 */  sw    $t2, ($v0)
/* B7F3DC 8010823C AC4B0004 */  sw    $t3, 4($v0)
/* B7F3E0 80108240 10000029 */  b     .L801082E8
/* B7F3E4 80108244 24630008 */   addiu $v1, $v1, 8
.L80108248:
/* B7F3E8 80108248 AC4C0000 */  sw    $t4, ($v0)
/* B7F3EC 8010824C 8CED62B0 */  lw    $t5, 0x62b0($a3)
/* B7F3F0 80108250 24630008 */  addiu $v1, $v1, 8
/* B7F3F4 80108254 3C0FF518 */  lui   $t7, 0xf518
/* B7F3F8 80108258 25AE1000 */  addiu $t6, $t5, 0x1000
/* B7F3FC 8010825C AC4E0004 */  sw    $t6, 4($v0)
/* B7F400 80108260 00601025 */  move  $v0, $v1
/* B7F404 80108264 3C180700 */  lui   $t8, 0x700
/* B7F408 80108268 AC580004 */  sw    $t8, 4($v0)
/* B7F40C 8010826C AC4F0000 */  sw    $t7, ($v0)
/* B7F410 80108270 24630008 */  addiu $v1, $v1, 8
/* B7F414 80108274 00601025 */  move  $v0, $v1
/* B7F418 80108278 3C19E600 */  lui   $t9, 0xe600
/* B7F41C 8010827C AC590000 */  sw    $t9, ($v0)
/* B7F420 80108280 AC400004 */  sw    $zero, 4($v0)
/* B7F424 80108284 24630008 */  addiu $v1, $v1, 8
/* B7F428 80108288 00601025 */  move  $v0, $v1
/* B7F42C 8010828C 3C0B073F */  lui   $t3, (0x073FF080 >> 16) # lui $t3, 0x73f
/* B7F430 80108290 356BF080 */  ori   $t3, (0x073FF080 & 0xFFFF) # ori $t3, $t3, 0xf080
/* B7F434 80108294 3C0AF300 */  lui   $t2, 0xf300
/* B7F438 80108298 AC4A0000 */  sw    $t2, ($v0)
/* B7F43C 8010829C AC4B0004 */  sw    $t3, 4($v0)
/* B7F440 801082A0 24630008 */  addiu $v1, $v1, 8
/* B7F444 801082A4 00601025 */  move  $v0, $v1
/* B7F448 801082A8 AC490000 */  sw    $t1, ($v0)
/* B7F44C 801082AC AC400004 */  sw    $zero, 4($v0)
/* B7F450 801082B0 24630008 */  addiu $v1, $v1, 8
/* B7F454 801082B4 00601025 */  move  $v0, $v1
/* B7F458 801082B8 3C0CF518 */  lui   $t4, (0xF5181000 >> 16) # lui $t4, 0xf518
/* B7F45C 801082BC 358C1000 */  ori   $t4, (0xF5181000 & 0xFFFF) # ori $t4, $t4, 0x1000
/* B7F460 801082C0 AC4C0000 */  sw    $t4, ($v0)
/* B7F464 801082C4 AC400004 */  sw    $zero, 4($v0)
/* B7F468 801082C8 24630008 */  addiu $v1, $v1, 8
/* B7F46C 801082CC 00601025 */  move  $v0, $v1
/* B7F470 801082D0 3C0E0007 */  lui   $t6, (0x0007C07C >> 16) # lui $t6, 7
/* B7F474 801082D4 35CEC07C */  ori   $t6, (0x0007C07C & 0xFFFF) # ori $t6, $t6, 0xc07c
/* B7F478 801082D8 3C0DF200 */  lui   $t5, 0xf200
/* B7F47C 801082DC AC4D0000 */  sw    $t5, ($v0)
/* B7F480 801082E0 AC4E0004 */  sw    $t6, 4($v0)
/* B7F484 801082E4 24630008 */  addiu $v1, $v1, 8
.L801082E8:
/* B7F488 801082E8 8CC20000 */  lw    $v0, ($a2)
/* B7F48C 801082EC 84EF63D8 */  lh    $t7, 0x63d8($a3)
/* B7F490 801082F0 3C01E400 */  lui   $at, 0xe400
/* B7F494 801082F4 84580522 */  lh    $t8, 0x522($v0)
/* B7F498 801082F8 8445052A */  lh    $a1, 0x52a($v0)
/* B7F49C 801082FC 844E0524 */  lh    $t6, 0x524($v0)
/* B7F4A0 80108300 01F8C821 */  addu  $t9, $t7, $t8
/* B7F4A4 80108304 03255021 */  addu  $t2, $t9, $a1
/* B7F4A8 80108308 00AE7821 */  addu  $t7, $a1, $t6
/* B7F4AC 8010830C 000FC080 */  sll   $t8, $t7, 2
/* B7F4B0 80108310 000A5880 */  sll   $t3, $t2, 2
/* B7F4B4 80108314 316C0FFF */  andi  $t4, $t3, 0xfff
/* B7F4B8 80108318 33190FFF */  andi  $t9, $t8, 0xfff
/* B7F4BC 8010831C 03215025 */  or    $t2, $t9, $at
/* B7F4C0 80108320 000C6B00 */  sll   $t5, $t4, 0xc
/* B7F4C4 80108324 014D5825 */  or    $t3, $t2, $t5
/* B7F4C8 80108328 00602025 */  move  $a0, $v1
/* B7F4CC 8010832C AC8B0000 */  sw    $t3, ($a0)
/* B7F4D0 80108330 8CC20000 */  lw    $v0, ($a2)
/* B7F4D4 80108334 84EC63D8 */  lh    $t4, 0x63d8($a3)
/* B7F4D8 80108338 24630008 */  addiu $v1, $v1, 8
/* B7F4DC 8010833C 844E0522 */  lh    $t6, 0x522($v0)
/* B7F4E0 80108340 844D0524 */  lh    $t5, 0x524($v0)
/* B7F4E4 80108344 00601025 */  move  $v0, $v1
/* B7F4E8 80108348 018E7821 */  addu  $t7, $t4, $t6
/* B7F4EC 8010834C 000FC080 */  sll   $t8, $t7, 2
/* B7F4F0 80108350 33190FFF */  andi  $t9, $t8, 0xfff
/* B7F4F4 80108354 000D5880 */  sll   $t3, $t5, 2
/* B7F4F8 80108358 316C0FFF */  andi  $t4, $t3, 0xfff
/* B7F4FC 8010835C 00195300 */  sll   $t2, $t9, 0xc
/* B7F500 80108360 018A7025 */  or    $t6, $t4, $t2
/* B7F504 80108364 AC8E0004 */  sw    $t6, 4($a0)
/* B7F508 80108368 3C0FE100 */  lui   $t7, 0xe100
/* B7F50C 8010836C AC4F0000 */  sw    $t7, ($v0)
/* B7F510 80108370 AC400004 */  sw    $zero, 4($v0)
/* B7F514 80108374 24630008 */  addiu $v1, $v1, 8
/* B7F518 80108378 00601025 */  move  $v0, $v1
/* B7F51C 8010837C 97A40036 */  lhu   $a0, 0x36($sp)
/* B7F520 80108380 3C190400 */  lui   $t9, (0x04000400 >> 16) # lui $t9, 0x400
/* B7F524 80108384 37390400 */  ori   $t9, (0x04000400 & 0xFFFF) # ori $t9, $t9, 0x400
/* B7F528 80108388 3C18F100 */  lui   $t8, 0xf100
/* B7F52C 8010838C AC580000 */  sw    $t8, ($v0)
/* B7F530 80108390 AC590004 */  sw    $t9, 4($v0)
/* B7F534 80108394 24630008 */  addiu $v1, $v1, 8
/* B7F538 80108398 00601025 */  move  $v0, $v1
/* B7F53C 8010839C AC490000 */  sw    $t1, ($v0)
/* B7F540 801083A0 AC400004 */  sw    $zero, 4($v0)
/* B7F544 801083A4 24630008 */  addiu $v1, $v1, 8
/* B7F548 801083A8 00601025 */  move  $v0, $v1
/* B7F54C 801083AC 3C0BFF2D */  lui   $t3, (0xFF2DFEFF >> 16) # lui $t3, 0xff2d
/* B7F550 801083B0 3C0DFCFF */  lui   $t5, (0xFCFF97FF >> 16) # lui $t5, 0xfcff
/* B7F554 801083B4 35AD97FF */  ori   $t5, (0xFCFF97FF & 0xFFFF) # ori $t5, $t5, 0x97ff
/* B7F558 801083B8 356BFEFF */  ori   $t3, (0xFF2DFEFF & 0xFFFF) # ori $t3, $t3, 0xfeff
/* B7F55C 801083BC AC4B0004 */  sw    $t3, 4($v0)
/* B7F560 801083C0 AC4D0000 */  sw    $t5, ($v0)
/* B7F564 801083C4 84EC63D8 */  lh    $t4, 0x63d8($a3)
/* B7F568 801083C8 25017FFF */  addiu $at, $t0, 0x7fff
/* B7F56C 801083CC 24630008 */  addiu $v1, $v1, 8
/* B7F570 801083D0 258A0020 */  addiu $t2, $t4, 0x20
/* B7F574 801083D4 A42A63D9 */  sh    $t2, 0x63d9($at)
/* B7F578 801083D8 8FAE0030 */  lw    $t6, 0x30($sp)
/* B7F57C 801083DC 24840001 */  addiu $a0, $a0, 1
/* B7F580 801083E0 3082FFFF */  andi  $v0, $a0, 0xffff
/* B7F584 801083E4 ADC30000 */  sw    $v1, ($t6)
/* B7F588 801083E8 8FBF001C */  lw    $ra, 0x1c($sp)
/* B7F58C 801083EC 27BD0028 */  addiu $sp, $sp, 0x28
/* B7F590 801083F0 03E00008 */  jr    $ra
/* B7F594 801083F4 00000000 */   nop   

glabel func_801083F8
/* B7F598 801083F8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B7F59C 801083FC 3C0E0001 */  lui   $t6, 1
/* B7F5A0 80108400 AFBF001C */  sw    $ra, 0x1c($sp)
/* B7F5A4 80108404 AFB00018 */  sw    $s0, 0x18($sp)
/* B7F5A8 80108408 01C47021 */  addu  $t6, $t6, $a0
/* B7F5AC 8010840C 91CE03DC */  lbu   $t6, 0x3dc($t6)
/* B7F5B0 80108410 24010006 */  li    $at, 6
/* B7F5B4 80108414 240F0001 */  li    $t7, 1
/* B7F5B8 80108418 15C100A0 */  bne   $t6, $at, .L8010869C
/* B7F5BC 8010841C 249020D8 */   addiu $s0, $a0, 0x20d8
/* B7F5C0 80108420 3C010001 */  lui   $at, 1
/* B7F5C4 80108424 00240821 */  addu  $at, $at, $a0
/* B7F5C8 80108428 A42F04C6 */  sh    $t7, 0x4c6($at)
/* B7F5CC 8010842C 34018000 */  li    $at, 32768
/* B7F5D0 80108430 0201C021 */  addu  $t8, $s0, $at
/* B7F5D4 80108434 AFB80024 */  sw    $t8, 0x24($sp)
/* B7F5D8 80108438 970563F0 */  lhu   $a1, 0x63f0($t8)
/* B7F5DC 8010843C 2401002A */  li    $at, 42
/* B7F5E0 80108440 24080021 */  li    $t0, 33
/* B7F5E4 80108444 14A10007 */  bne   $a1, $at, .L80108464
/* B7F5E8 80108448 3C048015 */   lui   $a0, %hi(D_80153ED0) # $a0, 0x8015
/* B7F5EC 8010844C 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F5F0 80108450 A0286305 */  sb    $t0, 0x6305($at)
/* B7F5F4 80108454 0C00084C */  jal   osSyncPrintf
/* B7F5F8 80108458 24843ED0 */   addiu $a0, %lo(D_80153ED0) # addiu $a0, $a0, 0x3ed0
/* B7F5FC 8010845C 1000008B */  b     .L8010868C
/* B7F600 80108460 8FB90024 */   lw    $t9, 0x24($sp)
.L80108464:
/* B7F604 80108464 2401002B */  li    $at, 43
/* B7F608 80108468 14A10021 */  bne   $a1, $at, .L801084F0
/* B7F60C 8010846C 3C048015 */   lui   $a0, %hi(D_80153EFC) # $a0, 0x8015
/* B7F610 80108470 0C00084C */  jal   osSyncPrintf
/* B7F614 80108474 24843EFC */   addiu $a0, %lo(D_80153EFC) # addiu $a0, $a0, 0x3efc
/* B7F618 80108478 0C03B616 */  jal   func_800ED858
/* B7F61C 8010847C 24040001 */   li    $a0, 1
/* B7F620 80108480 0C03B616 */  jal   func_800ED858
/* B7F624 80108484 24040001 */   li    $a0, 1
/* B7F628 80108488 0C03B8FE */  jal   func_800EE3F8
/* B7F62C 8010848C 00000000 */   nop   
/* B7F630 80108490 3C038015 */  lui   $v1, %hi(D_8014B2FC) # $v1, 0x8015
/* B7F634 80108494 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F638 80108498 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B7F63C 8010849C 2463B2FC */  addiu $v1, %lo(D_8014B2FC) # addiu $v1, $v1, -0x4d04
/* B7F640 801084A0 A4600000 */  sh    $zero, ($v1)
/* B7F644 801084A4 84690000 */  lh    $t1, ($v1)
/* B7F648 801084A8 3C048015 */  lui   $a0, %hi(D_8014B2F8) # $a0, 0x8015
/* B7F64C 801084AC 8FAB0024 */  lw    $t3, 0x24($sp)
/* B7F650 801084B0 2484B2F8 */  addiu $a0, %lo(D_8014B2F8) # addiu $a0, $a0, -0x4d08
/* B7F654 801084B4 A4890000 */  sh    $t1, ($a0)
/* B7F658 801084B8 848A0000 */  lh    $t2, ($a0)
/* B7F65C 801084BC 8D6C62B8 */  lw    $t4, 0x62b8($t3)
/* B7F660 801084C0 0C041A6C */  jal   func_801069B0
/* B7F664 801084C4 A18A0002 */   sb    $t2, 2($t4)
/* B7F668 801084C8 240D0003 */  li    $t5, 3
/* B7F66C 801084CC 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F670 801084D0 240E0023 */  li    $t6, 35
/* B7F674 801084D4 A02D63E8 */  sb    $t5, 0x63e8($at)
/* B7F678 801084D8 A02E6305 */  sb    $t6, 0x6305($at)
/* B7F67C 801084DC 2404000F */  li    $a0, 15
/* B7F680 801084E0 0C03B64F */  jal   func_800ED93C
/* B7F684 801084E4 24050001 */   li    $a1, 1
/* B7F688 801084E8 10000068 */  b     .L8010868C
/* B7F68C 801084EC 8FB90024 */   lw    $t9, 0x24($sp)
.L801084F0:
/* B7F690 801084F0 2401002C */  li    $at, 44
/* B7F694 801084F4 14A10008 */  bne   $a1, $at, .L80108518
/* B7F698 801084F8 240F0024 */   li    $t7, 36
/* B7F69C 801084FC 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F6A0 80108500 3C048015 */  lui   $a0, %hi(D_80153F28) # $a0, 0x8015
/* B7F6A4 80108504 A02F6305 */  sb    $t7, 0x6305($at)
/* B7F6A8 80108508 0C00084C */  jal   osSyncPrintf
/* B7F6AC 8010850C 24843F28 */   addiu $a0, %lo(D_80153F28) # addiu $a0, $a0, 0x3f28
/* B7F6B0 80108510 1000005E */  b     .L8010868C
/* B7F6B4 80108514 8FB90024 */   lw    $t9, 0x24($sp)
.L80108518:
/* B7F6B8 80108518 2401002D */  li    $at, 45
/* B7F6BC 8010851C 14A10021 */  bne   $a1, $at, .L801085A4
/* B7F6C0 80108520 3C048015 */   lui   $a0, %hi(D_80153F54) # $a0, 0x8015
/* B7F6C4 80108524 0C00084C */  jal   osSyncPrintf
/* B7F6C8 80108528 24843F54 */   addiu $a0, %lo(D_80153F54) # addiu $a0, $a0, 0x3f54
/* B7F6CC 8010852C 0C03B616 */  jal   func_800ED858
/* B7F6D0 80108530 24040001 */   li    $a0, 1
/* B7F6D4 80108534 0C03B616 */  jal   func_800ED858
/* B7F6D8 80108538 24040001 */   li    $a0, 1
/* B7F6DC 8010853C 0C03B8FE */  jal   func_800EE3F8
/* B7F6E0 80108540 00000000 */   nop   
/* B7F6E4 80108544 3C038015 */  lui   $v1, %hi(D_8014B2FC) # $v1, 0x8015
/* B7F6E8 80108548 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F6EC 8010854C AC2262B9 */  sw    $v0, 0x62b9($at)
/* B7F6F0 80108550 2463B2FC */  addiu $v1, %lo(D_8014B2FC) # addiu $v1, $v1, -0x4d04
/* B7F6F4 80108554 A4600000 */  sh    $zero, ($v1)
/* B7F6F8 80108558 84780000 */  lh    $t8, ($v1)
/* B7F6FC 8010855C 3C048015 */  lui   $a0, %hi(D_8014B2F8) # $a0, 0x8015
/* B7F700 80108560 8FA80024 */  lw    $t0, 0x24($sp)
/* B7F704 80108564 2484B2F8 */  addiu $a0, %lo(D_8014B2F8) # addiu $a0, $a0, -0x4d08
/* B7F708 80108568 A4980000 */  sh    $t8, ($a0)
/* B7F70C 8010856C 84990000 */  lh    $t9, ($a0)
/* B7F710 80108570 8D0962B8 */  lw    $t1, 0x62b8($t0)
/* B7F714 80108574 0C041A6C */  jal   func_801069B0
/* B7F718 80108578 A1390002 */   sb    $t9, 2($t1)
/* B7F71C 8010857C 240B0003 */  li    $t3, 3
/* B7F720 80108580 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F724 80108584 240A0028 */  li    $t2, 40
/* B7F728 80108588 A02B63E8 */  sb    $t3, 0x63e8($at)
/* B7F72C 8010858C A02A6305 */  sb    $t2, 0x6305($at)
/* B7F730 80108590 2404000D */  li    $a0, 13
/* B7F734 80108594 0C03B64F */  jal   func_800ED93C
/* B7F738 80108598 24050001 */   li    $a1, 1
/* B7F73C 8010859C 1000003B */  b     .L8010868C
/* B7F740 801085A0 8FB90024 */   lw    $t9, 0x24($sp)
.L801085A4:
/* B7F744 801085A4 2401002E */  li    $at, 46
/* B7F748 801085A8 14A10008 */  bne   $a1, $at, .L801085CC
/* B7F74C 801085AC 240C0029 */   li    $t4, 41
/* B7F750 801085B0 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F754 801085B4 3C048015 */  lui   $a0, %hi(D_80153F74) # $a0, 0x8015
/* B7F758 801085B8 A02C6305 */  sb    $t4, 0x6305($at)
/* B7F75C 801085BC 0C00084C */  jal   osSyncPrintf
/* B7F760 801085C0 24843F74 */   addiu $a0, %lo(D_80153F74) # addiu $a0, $a0, 0x3f74
/* B7F764 801085C4 10000031 */  b     .L8010868C
/* B7F768 801085C8 8FB90024 */   lw    $t9, 0x24($sp)
.L801085CC:
/* B7F76C 801085CC 2401002F */  li    $at, 47
/* B7F770 801085D0 14A10009 */  bne   $a1, $at, .L801085F8
/* B7F774 801085D4 3C048015 */   lui   $a0, %hi(D_80153FC0)
/* B7F778 801085D8 240D0031 */  li    $t5, 49
/* B7F77C 801085DC 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F780 801085E0 3C048015 */  lui   $a0, %hi(D_80153FA0) # $a0, 0x8015
/* B7F784 801085E4 A02D6305 */  sb    $t5, 0x6305($at)
/* B7F788 801085E8 0C00084C */  jal   osSyncPrintf
/* B7F78C 801085EC 24843FA0 */   addiu $a0, %lo(D_80153FA0) # addiu $a0, $a0, 0x3fa0
/* B7F790 801085F0 10000026 */  b     .L8010868C
/* B7F794 801085F4 8FB90024 */   lw    $t9, 0x24($sp)
.L801085F8:
/* B7F798 801085F8 0C00084C */  jal   osSyncPrintf
/* B7F79C 801085FC 24843FC0 */   addiu $a0, %lo(D_80153FC0)
/* B7F7A0 80108600 8FAE0024 */  lw    $t6, 0x24($sp)
/* B7F7A4 80108604 3C048015 */  lui   $a0, %hi(D_80153FD0) # $a0, 0x8015
/* B7F7A8 80108608 24010001 */  li    $at, 1
/* B7F7AC 8010860C 95C563F0 */  lhu   $a1, 0x63f0($t6)
/* B7F7B0 80108610 240F0009 */  li    $t7, 9
/* B7F7B4 80108614 24843FD0 */  addiu $a0, %lo(D_80153FD0) # addiu $a0, $a0, 0x3fd0
/* B7F7B8 80108618 50A00005 */  beql  $a1, $zero, .L80108630
/* B7F7BC 8010861C 26017FFF */   addiu $at, $s0, 0x7fff
/* B7F7C0 80108620 10A10002 */  beq   $a1, $at, .L8010862C
/* B7F7C4 80108624 28A10022 */   slti  $at, $a1, 0x22
/* B7F7C8 80108628 14200005 */  bnez  $at, .L80108640
.L8010862C:
/* B7F7CC 8010862C 26017FFF */   addiu $at, $s0, 0x7fff
.L80108630:
/* B7F7D0 80108630 0C00084C */  jal   osSyncPrintf
/* B7F7D4 80108634 A02F6305 */   sb    $t7, 0x6305($at)
/* B7F7D8 80108638 10000014 */  b     .L8010868C
/* B7F7DC 8010863C 8FB90024 */   lw    $t9, 0x24($sp)
.L80108640:
/* B7F7E0 80108640 28A10002 */  slti  $at, $a1, 2
/* B7F7E4 80108644 1420000B */  bnez  $at, .L80108674
/* B7F7E8 80108648 2408000B */   li    $t0, 11
/* B7F7EC 8010864C 28A1000E */  slti  $at, $a1, 0xe
/* B7F7F0 80108650 10200008 */  beqz  $at, .L80108674
/* B7F7F4 80108654 2418000A */   li    $t8, 10
/* B7F7F8 80108658 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F7FC 8010865C 3C048015 */  lui   $a0, %hi(D_80153FE4) # $a0, 0x8015
/* B7F800 80108660 A0386305 */  sb    $t8, 0x6305($at)
/* B7F804 80108664 0C00084C */  jal   osSyncPrintf
/* B7F808 80108668 24843FE4 */   addiu $a0, %lo(D_80153FE4) # addiu $a0, $a0, 0x3fe4
/* B7F80C 8010866C 10000007 */  b     .L8010868C
/* B7F810 80108670 8FB90024 */   lw    $t9, 0x24($sp)
.L80108674:
/* B7F814 80108674 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F818 80108678 3C048015 */  lui   $a0, %hi(D_80153FF8) # $a0, 0x8015
/* B7F81C 8010867C A0286305 */  sb    $t0, 0x6305($at)
/* B7F820 80108680 0C00084C */  jal   osSyncPrintf
/* B7F824 80108684 24843FF8 */   addiu $a0, %lo(D_80153FF8) # addiu $a0, $a0, 0x3ff8
/* B7F828 80108688 8FB90024 */  lw    $t9, 0x24($sp)
.L8010868C:
/* B7F82C 8010868C 3C048015 */  lui   $a0, %hi(D_8015400C) # $a0, 0x8015
/* B7F830 80108690 2484400C */  addiu $a0, %lo(D_8015400C) # addiu $a0, $a0, 0x400c
/* B7F834 80108694 0C00084C */  jal   osSyncPrintf
/* B7F838 80108698 93256304 */   lbu   $a1, 0x6304($t9)
.L8010869C:
/* B7F83C 8010869C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B7F840 801086A0 8FB00018 */  lw    $s0, 0x18($sp)
/* B7F844 801086A4 27BD0030 */  addiu $sp, $sp, 0x30
/* B7F848 801086A8 03E00008 */  jr    $ra
/* B7F84C 801086AC 00000000 */   nop   

glabel func_801086B0
/* B7F850 801086B0 27BDFEC8 */  addiu $sp, $sp, -0x138
/* B7F854 801086B4 AFB7003C */  sw    $s7, 0x3c($sp)
/* B7F858 801086B8 3C178016 */  lui   $s7, %hi(gGameInfo) # $s7, 0x8016
/* B7F85C 801086BC AFBF0044 */  sw    $ra, 0x44($sp)
/* B7F860 801086C0 AFBE0040 */  sw    $fp, 0x40($sp)
/* B7F864 801086C4 AFB60038 */  sw    $s6, 0x38($sp)
/* B7F868 801086C8 AFB50034 */  sw    $s5, 0x34($sp)
/* B7F86C 801086CC AFB40030 */  sw    $s4, 0x30($sp)
/* B7F870 801086D0 AFB3002C */  sw    $s3, 0x2c($sp)
/* B7F874 801086D4 AFB20028 */  sw    $s2, 0x28($sp)
/* B7F878 801086D8 AFB10024 */  sw    $s1, 0x24($sp)
/* B7F87C 801086DC AFB00020 */  sw    $s0, 0x20($sp)
/* B7F880 801086E0 AFA5013C */  sw    $a1, 0x13c($sp)
/* B7F884 801086E4 8CAF0000 */  lw    $t7, ($a1)
/* B7F888 801086E8 26F7FA90 */  addiu $s7, %lo(gGameInfo) # addiu $s7, $s7, -0x570
/* B7F88C 801086EC 8EF80000 */  lw    $t8, ($s7)
/* B7F890 801086F0 AFAF0120 */  sw    $t7, 0x120($sp)
/* B7F894 801086F4 3C010001 */  lui   $at, 1
/* B7F898 801086F8 87190B00 */  lh    $t9, 0xb00($t8)
/* B7F89C 801086FC 00240821 */  addu  $at, $at, $a0
/* B7F8A0 80108700 3C0E8015 */  lui   $t6, %hi(D_8014B308) # $t6, 0x8015
/* B7F8A4 80108704 A43904B0 */  sh    $t9, 0x4b0($at)
/* B7F8A8 80108708 85CEB308 */  lh    $t6, %lo(D_8014B308)($t6)
/* B7F8AC 8010870C 249120D8 */  addiu $s1, $a0, 0x20d8
/* B7F8B0 80108710 0220B025 */  move  $s6, $s1
/* B7F8B4 80108714 15C00006 */  bnez  $t6, .L80108730
/* B7F8B8 80108718 34158000 */   li    $s5, 32768
/* B7F8BC 8010871C 8EEF0000 */  lw    $t7, ($s7)
/* B7F8C0 80108720 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F8C4 80108724 85F80B02 */  lh    $t8, 0xb02($t7)
/* B7F8C8 80108728 10000005 */  b     .L80108740
/* B7F8CC 8010872C A43863DB */   sh    $t8, 0x63db($at)
.L80108730:
/* B7F8D0 80108730 8EF90000 */  lw    $t9, ($s7)
/* B7F8D4 80108734 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F8D8 80108738 872E0496 */  lh    $t6, 0x496($t9)
/* B7F8DC 8010873C A42E63DB */  sh    $t6, 0x63db($at)
.L80108740:
/* B7F8E0 80108740 02358021 */  addu  $s0, $s1, $s5
/* B7F8E4 80108744 920F62FD */  lbu   $t7, 0x62fd($s0)
/* B7F8E8 80108748 24010005 */  li    $at, 5
/* B7F8EC 8010874C 241800FF */  li    $t8, 255
/* B7F8F0 80108750 15E10007 */  bne   $t7, $at, .L80108770
/* B7F8F4 80108754 241E0002 */   li    $fp, 2
/* B7F8F8 80108758 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F8FC 8010875C A42063E1 */  sh    $zero, 0x63e1($at)
/* B7F900 80108760 860763E0 */  lh    $a3, 0x63e0($s0)
/* B7F904 80108764 A42763DF */  sh    $a3, 0x63df($at)
/* B7F908 80108768 10000006 */  b     .L80108784
/* B7F90C 8010876C A42763DD */   sh    $a3, 0x63dd($at)
.L80108770:
/* B7F910 80108770 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F914 80108774 A43863E1 */  sh    $t8, 0x63e1($at)
/* B7F918 80108778 860763E0 */  lh    $a3, 0x63e0($s0)
/* B7F91C 8010877C A42763DF */  sh    $a3, 0x63df($at)
/* B7F920 80108780 A42763DD */  sh    $a3, 0x63dd($at)
.L80108784:
/* B7F924 80108784 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F928 80108788 A42063D1 */  sh    $zero, 0x63d1($at)
/* B7F92C 8010878C A7A00128 */  sh    $zero, 0x128($sp)
/* B7F930 80108790 961963D2 */  lhu   $t9, 0x63d2($s0)
/* B7F934 80108794 00009025 */  move  $s2, $zero
/* B7F938 80108798 24140006 */  li    $s4, 6
/* B7F93C 8010879C 1B200458 */  blez  $t9, .L80109900
/* B7F940 801087A0 240D0004 */   li    $t5, 4
/* B7F944 801087A4 AFA40138 */  sw    $a0, 0x138($sp)
/* B7F948 801087A8 240C000D */  li    $t4, 13
/* B7F94C 801087AC 240B000C */  li    $t3, 12
/* B7F950 801087B0 240A000B */  li    $t2, 11
/* B7F954 801087B4 2409000A */  li    $t1, 10
/* B7F958 801087B8 24080009 */  li    $t0, 9
/* B7F95C 801087BC 02327021 */  addu  $t6, $s1, $s2
.L801087C0:
/* B7F960 801087C0 01D57821 */  addu  $t7, $t6, $s5
/* B7F964 801087C4 91E26306 */  lbu   $v0, 0x6306($t7)
/* B7F968 801087C8 2458FFFF */  addiu $t8, $v0, -1
/* B7F96C 801087CC 2F010020 */  sltiu $at, $t8, 0x20
/* B7F970 801087D0 10200404 */  beqz  $at, .L801097E4
/* B7F974 801087D4 0018C080 */   sll   $t8, $t8, 2
/* B7F978 801087D8 3C018015 */  lui   $at, %hi(jtbl_80154B48)
/* B7F97C 801087DC 00380821 */  addu  $at, $at, $t8
/* B7F980 801087E0 8C384B48 */  lw    $t8, %lo(jtbl_80154B48)($at)
/* B7F984 801087E4 03000008 */  jr    $t8
/* B7F988 801087E8 00000000 */   nop   
glabel L801087EC
/* B7F98C 801087EC 8EF90000 */  lw    $t9, ($s7)
/* B7F990 801087F0 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F994 801087F4 872E0B00 */  lh    $t6, 0xb00($t9)
/* B7F998 801087F8 A42E63D9 */  sh    $t6, 0x63d9($at)
/* B7F99C 801087FC 920263E6 */  lbu   $v0, 0x63e6($s0)
/* B7F9A0 80108800 34018000 */  li    $at, 32768
/* B7F9A4 80108804 02C19821 */  addu  $s3, $s6, $at
/* B7F9A8 80108808 24010001 */  li    $at, 1
/* B7F9AC 8010880C 10410003 */  beq   $v0, $at, .L8010881C
/* B7F9B0 80108810 24010003 */   li    $at, 3
/* B7F9B4 80108814 14410006 */  bne   $v0, $at, .L80108830
/* B7F9B8 80108818 00000000 */   nop   
.L8010881C:
/* B7F9BC 8010881C 860F63D8 */  lh    $t7, 0x63d8($s0)
/* B7F9C0 80108820 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F9C4 80108824 25F80020 */  addiu $t8, $t7, 0x20
/* B7F9C8 80108828 A43863D9 */  sh    $t8, 0x63d9($at)
/* B7F9CC 8010882C 920263E6 */  lbu   $v0, 0x63e6($s0)
.L80108830:
/* B7F9D0 80108830 57C2000B */  bnel  $fp, $v0, .L80108860
/* B7F9D4 80108834 8EEF0000 */   lw    $t7, ($s7)
/* B7F9D8 80108838 8EEE0000 */  lw    $t6, ($s7)
/* B7F9DC 8010883C 861963DA */  lh    $t9, 0x63da($s0)
/* B7F9E0 80108840 85CF0B02 */  lh    $t7, 0xb02($t6)
/* B7F9E4 80108844 532F0006 */  beql  $t9, $t7, .L80108860
/* B7F9E8 80108848 8EEF0000 */   lw    $t7, ($s7)
/* B7F9EC 8010884C 861863D8 */  lh    $t8, 0x63d8($s0)
/* B7F9F0 80108850 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F9F4 80108854 270E0020 */  addiu $t6, $t8, 0x20
/* B7F9F8 80108858 A42E63D9 */  sh    $t6, 0x63d9($at)
/* B7F9FC 8010885C 8EEF0000 */  lw    $t7, ($s7)
.L80108860:
/* B7FA00 80108860 861963DA */  lh    $t9, 0x63da($s0)
/* B7FA04 80108864 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FA08 80108868 85F80B04 */  lh    $t8, 0xb04($t7)
/* B7FA0C 8010886C 03387021 */  addu  $t6, $t9, $t8
/* B7FA10 80108870 A42E63DB */  sh    $t6, 0x63db($at)
/* B7FA14 80108874 1000041D */  b     .L801098EC
/* B7FA18 80108878 966363D2 */   lhu   $v1, 0x63d2($s3)
glabel L8010887C
/* B7FA1C 8010887C 26420001 */  addiu $v0, $s2, 1
/* B7FA20 80108880 3047FFFF */  andi  $a3, $v0, 0xffff
/* B7FA24 80108884 02277821 */  addu  $t7, $s1, $a3
/* B7FA28 80108888 01F5C821 */  addu  $t9, $t7, $s5
/* B7FA2C 8010888C 93256306 */  lbu   $a1, 0x6306($t9)
/* B7FA30 80108890 34018000 */  li    $at, 32768
/* B7FA34 80108894 02C19821 */  addu  $s3, $s6, $at
/* B7FA38 80108898 30A5000F */  andi  $a1, $a1, 0xf
/* B7FA3C 8010889C 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B7FA40 801088A0 3052FFFF */  andi  $s2, $v0, 0xffff
/* B7FA44 801088A4 0C041DB3 */  jal   func_801076CC
/* B7FA48 801088A8 02202025 */   move  $a0, $s1
/* B7FA4C 801088AC 24080009 */  li    $t0, 9
/* B7FA50 801088B0 2409000A */  li    $t1, 10
/* B7FA54 801088B4 240A000B */  li    $t2, 11
/* B7FA58 801088B8 240B000C */  li    $t3, 12
/* B7FA5C 801088BC 240C000D */  li    $t4, 13
/* B7FA60 801088C0 240D0004 */  li    $t5, 4
/* B7FA64 801088C4 10000409 */  b     .L801098EC
/* B7FA68 801088C8 966363D2 */   lhu   $v1, 0x63d2($s3)
glabel L801088CC
/* B7FA6C 801088CC 861863D8 */  lh    $t8, 0x63d8($s0)
/* B7FA70 801088D0 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FA74 801088D4 26C37FFF */  addiu $v1, $s6, 0x7fff
/* B7FA78 801088D8 270E0006 */  addiu $t6, $t8, 6
/* B7FA7C 801088DC A42E63D9 */  sh    $t6, 0x63d9($at)
/* B7FA80 801088E0 10000402 */  b     .L801098EC
/* B7FA84 801088E4 946363D3 */   lhu   $v1, 0x63d3($v1)
glabel L801088E8
/* B7FA88 801088E8 920F6304 */  lbu   $t7, 0x6304($s0)
/* B7FA8C 801088EC 3C198015 */  lui   $t9, %hi(D_8014B300) # $t9, 0x8015
/* B7FA90 801088F0 568F0021 */  bnel  $s4, $t7, .L80108978
/* B7FA94 801088F4 8FB80120 */   lw    $t8, 0x120($sp)
/* B7FA98 801088F8 9339B300 */  lbu   $t9, %lo(D_8014B300)($t9)
/* B7FA9C 801088FC 00002025 */  move  $a0, $zero
/* B7FAA0 80108900 240E0004 */  li    $t6, 4
/* B7FAA4 80108904 17200016 */  bnez  $t9, .L80108960
/* B7FAA8 80108908 26217FFF */   addiu $at, $s1, 0x7fff
/* B7FAAC 8010890C 8FAF0138 */  lw    $t7, 0x138($sp)
/* B7FAB0 80108910 3C188013 */  lui   $t8, %hi(D_801333E0)
/* B7FAB4 80108914 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B7FAB8 80108918 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B7FABC 8010891C 270733E0 */  addiu $a3, $t8, %lo(D_801333E0)
/* B7FAC0 80108920 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7FAC4 80108924 25F92200 */  addiu $t9, $t7, 0x2200
/* B7FAC8 80108928 AFB90058 */  sw    $t9, 0x58($sp)
/* B7FACC 8010892C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7FAD0 80108930 AFA70010 */  sw    $a3, 0x10($sp)
/* B7FAD4 80108934 AFAE0014 */  sw    $t6, 0x14($sp)
/* B7FAD8 80108938 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7FADC 8010893C 24060004 */   li    $a2, 4
/* B7FAE0 80108940 24180034 */  li    $t8, 52
/* B7FAE4 80108944 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FAE8 80108948 A0386305 */  sb    $t8, 0x6305($at)
/* B7FAEC 8010894C 8FA40058 */  lw    $a0, 0x58($sp)
/* B7FAF0 80108950 0C01BBAF */  jal   func_8006EEBC
/* B7FAF4 80108954 00002825 */   move  $a1, $zero
/* B7FAF8 80108958 10000007 */  b     .L80108978
/* B7FAFC 8010895C 8FB80120 */   lw    $t8, 0x120($sp)
.L80108960:
/* B7FB00 80108960 A02E6305 */  sb    $t6, 0x6305($at)
/* B7FB04 80108964 A42063D7 */  sh    $zero, 0x63d7($at)
/* B7FB08 80108968 960F63CE */  lhu   $t7, 0x63ce($s0)
/* B7FB0C 8010896C 25F90001 */  addiu $t9, $t7, 1
/* B7FB10 80108970 A43963CF */  sh    $t9, 0x63cf($at)
/* B7FB14 80108974 8FB80120 */  lw    $t8, 0x120($sp)
.L80108978:
/* B7FB18 80108978 8FAE013C */  lw    $t6, 0x13c($sp)
/* B7FB1C 8010897C 100003EE */  b     .L80109938
/* B7FB20 80108980 ADD80000 */   sw    $t8, ($t6)
glabel L80108984
/* B7FB24 80108984 26420001 */  addiu $v0, $s2, 1
/* B7FB28 80108988 3047FFFF */  andi  $a3, $v0, 0xffff
/* B7FB2C 8010898C 0227C821 */  addu  $t9, $s1, $a3
/* B7FB30 80108990 0335C021 */  addu  $t8, $t9, $s5
/* B7FB34 80108994 930E6306 */  lbu   $t6, 0x6306($t8)
/* B7FB38 80108998 860F63D8 */  lh    $t7, 0x63d8($s0)
/* B7FB3C 8010899C 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FB40 801089A0 26C37FFF */  addiu $v1, $s6, 0x7fff
/* B7FB44 801089A4 01EEC821 */  addu  $t9, $t7, $t6
/* B7FB48 801089A8 A43963D9 */  sh    $t9, 0x63d9($at)
/* B7FB4C 801089AC 3052FFFF */  andi  $s2, $v0, 0xffff
/* B7FB50 801089B0 100003CE */  b     .L801098EC
/* B7FB54 801089B4 946363D3 */   lhu   $v1, 0x63d3($v1)
glabel L801089B8
/* B7FB58 801089B8 24180030 */  li    $t8, 48
/* B7FB5C 801089BC 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FB60 801089C0 A03863E5 */  sb    $t8, 0x63e5($at)
/* B7FB64 801089C4 920F6304 */  lbu   $t7, 0x6304($s0)
/* B7FB68 801089C8 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7FB6C 801089CC 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7FB70 801089D0 168F0012 */  bne   $s4, $t7, .L80108A1C
/* B7FB74 801089D4 00002025 */   move  $a0, $zero
/* B7FB78 801089D8 8FB80138 */  lw    $t8, 0x138($sp)
/* B7FB7C 801089DC 3C0E8013 */  lui   $t6, %hi(D_801333E0)
/* B7FB80 801089E0 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B7FB84 801089E4 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B7FB88 801089E8 25C733E0 */  addiu $a3, $t6, %lo(D_801333E0)
/* B7FB8C 801089EC 270F2200 */  addiu $t7, $t8, 0x2200
/* B7FB90 801089F0 AFAF0058 */  sw    $t7, 0x58($sp)
/* B7FB94 801089F4 AFA70010 */  sw    $a3, 0x10($sp)
/* B7FB98 801089F8 AFB90014 */  sw    $t9, 0x14($sp)
/* B7FB9C 801089FC 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7FBA0 80108A00 24060004 */   li    $a2, 4
/* B7FBA4 80108A04 240E0035 */  li    $t6, 53
/* B7FBA8 80108A08 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FBAC 80108A0C A02E6305 */  sb    $t6, 0x6305($at)
/* B7FBB0 80108A10 8FA40058 */  lw    $a0, 0x58($sp)
/* B7FBB4 80108A14 0C01BBAF */  jal   func_8006EEBC
/* B7FBB8 80108A18 00002825 */   move  $a1, $zero
.L80108A1C:
/* B7FBBC 80108A1C 8FB90120 */  lw    $t9, 0x120($sp)
/* B7FBC0 80108A20 8FB8013C */  lw    $t8, 0x13c($sp)
/* B7FBC4 80108A24 100003C4 */  b     .L80109938
/* B7FBC8 80108A28 AF190000 */   sw    $t9, ($t8)
glabel L80108A2C
/* B7FBCC 80108A2C 960F63D2 */  lhu   $t7, 0x63d2($s0)
/* B7FBD0 80108A30 264E0001 */  addiu $t6, $s2, 1
/* B7FBD4 80108A34 55EE0028 */  bnel  $t7, $t6, .L80108AD8
/* B7FBD8 80108A38 26C37FFF */   addiu $v1, $s6, 0x7fff
/* B7FBDC 80108A3C 92026304 */  lbu   $v0, 0x6304($s0)
/* B7FBE0 80108A40 3244FFFF */  andi  $a0, $s2, 0xffff
/* B7FBE4 80108A44 12820005 */  beq   $s4, $v0, .L80108A5C
/* B7FBE8 80108A48 28410009 */   slti  $at, $v0, 9
/* B7FBEC 80108A4C 14200021 */  bnez  $at, .L80108AD4
/* B7FBF0 80108A50 28410021 */   slti  $at, $v0, 0x21
/* B7FBF4 80108A54 50200020 */  beql  $at, $zero, .L80108AD8
/* B7FBF8 80108A58 26C37FFF */   addiu $v1, $s6, 0x7fff
.L80108A5C:
/* B7FBFC 80108A5C 0224C821 */  addu  $t9, $s1, $a0
/* B7FC00 80108A60 0335C021 */  addu  $t8, $t9, $s5
/* B7FC04 80108A64 93026306 */  lbu   $v0, 0x6306($t8)
/* B7FC08 80108A68 16820004 */  bne   $s4, $v0, .L80108A7C
/* B7FC0C 80108A6C 00000000 */   nop   
/* B7FC10 80108A70 24840002 */  addiu $a0, $a0, 2
/* B7FC14 80108A74 1000FFF9 */  b     .L80108A5C
/* B7FC18 80108A78 3084FFFF */   andi  $a0, $a0, 0xffff
.L80108A7C:
/* B7FC1C 80108A7C 51020011 */  beql  $t0, $v0, .L80108AC4
/* B7FC20 80108A80 248FFFFF */   addiu $t7, $a0, -1
/* B7FC24 80108A84 5122000F */  beql  $t1, $v0, .L80108AC4
/* B7FC28 80108A88 248FFFFF */   addiu $t7, $a0, -1
/* B7FC2C 80108A8C 5142000D */  beql  $t2, $v0, .L80108AC4
/* B7FC30 80108A90 248FFFFF */   addiu $t7, $a0, -1
/* B7FC34 80108A94 5162000B */  beql  $t3, $v0, .L80108AC4
/* B7FC38 80108A98 248FFFFF */   addiu $t7, $a0, -1
/* B7FC3C 80108A9C 51820009 */  beql  $t4, $v0, .L80108AC4
/* B7FC40 80108AA0 248FFFFF */   addiu $t7, $a0, -1
/* B7FC44 80108AA4 51A20007 */  beql  $t5, $v0, .L80108AC4
/* B7FC48 80108AA8 248FFFFF */   addiu $t7, $a0, -1
/* B7FC4C 80108AAC 53C20005 */  beql  $fp, $v0, .L80108AC4
/* B7FC50 80108AB0 248FFFFF */   addiu $t7, $a0, -1
/* B7FC54 80108AB4 24840001 */  addiu $a0, $a0, 1
/* B7FC58 80108AB8 1000FFE8 */  b     .L80108A5C
/* B7FC5C 80108ABC 3084FFFF */   andi  $a0, $a0, 0xffff
/* B7FC60 80108AC0 248FFFFF */  addiu $t7, $a0, -1
.L80108AC4:
/* B7FC64 80108AC4 25EE0001 */  addiu $t6, $t7, 1
/* B7FC68 80108AC8 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FC6C 80108ACC 31F2FFFF */  andi  $s2, $t7, 0xffff
/* B7FC70 80108AD0 A42E63D3 */  sh    $t6, 0x63d3($at)
.L80108AD4:
glabel L80108AD4
/* B7FC74 80108AD4 26C37FFF */  addiu $v1, $s6, 0x7fff
.L80108AD8:
/* B7FC78 80108AD8 10000384 */  b     .L801098EC
/* B7FC7C 80108ADC 946363D3 */   lhu   $v1, 0x63d3($v1)
glabel L80108AE0
/* B7FC80 80108AE0 961963D2 */  lhu   $t9, 0x63d2($s0)
/* B7FC84 80108AE4 26580001 */  addiu $t8, $s2, 1
/* B7FC88 80108AE8 26C37FFF */  addiu $v1, $s6, 0x7fff
/* B7FC8C 80108AEC 1738000F */  bne   $t9, $t8, .L80108B2C
/* B7FC90 80108AF0 00000000 */   nop   
/* B7FC94 80108AF4 920F6304 */  lbu   $t7, 0x6304($s0)
/* B7FC98 80108AF8 240E0007 */  li    $t6, 7
/* B7FC9C 80108AFC 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FCA0 80108B00 568F0007 */  bnel  $s4, $t7, .L80108B20
/* B7FCA4 80108B04 8FB90120 */   lw    $t9, 0x120($sp)
/* B7FCA8 80108B08 A02E6305 */  sb    $t6, 0x6305($at)
/* B7FCAC 80108B0C 8FA40138 */  lw    $a0, 0x138($sp)
/* B7FCB0 80108B10 00002825 */  move  $a1, $zero
/* B7FCB4 80108B14 0C01BBAF */  jal   func_8006EEBC
/* B7FCB8 80108B18 24842200 */   addiu $a0, $a0, 0x2200
/* B7FCBC 80108B1C 8FB90120 */  lw    $t9, 0x120($sp)
.L80108B20:
/* B7FCC0 80108B20 8FB8013C */  lw    $t8, 0x13c($sp)
/* B7FCC4 80108B24 10000384 */  b     .L80109938
/* B7FCC8 80108B28 AF190000 */   sw    $t9, ($t8)
.L80108B2C:
/* B7FCCC 80108B2C 1000036F */  b     .L801098EC
/* B7FCD0 80108B30 946363D3 */   lhu   $v1, 0x63d3($v1)
glabel L80108B34
/* B7FCD4 80108B34 920F6304 */  lbu   $t7, 0x6304($s0)
/* B7FCD8 80108B38 26470001 */  addiu $a3, $s2, 1
/* B7FCDC 80108B3C 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B7FCE0 80108B40 168F0007 */  bne   $s4, $t7, .L80108B60
/* B7FCE4 80108B44 02277021 */   addu  $t6, $s1, $a3
/* B7FCE8 80108B48 01D5C821 */  addu  $t9, $t6, $s5
/* B7FCEC 80108B4C 93386306 */  lbu   $t8, 0x6306($t9)
/* B7FCF0 80108B50 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FCF4 80108B54 240F0008 */  li    $t7, 8
/* B7FCF8 80108B58 A02F6305 */  sb    $t7, 0x6305($at)
/* B7FCFC 80108B5C A03863E8 */  sb    $t8, 0x63e8($at)
.L80108B60:
/* B7FD00 80108B60 8FAE0120 */  lw    $t6, 0x120($sp)
/* B7FD04 80108B64 8FB9013C */  lw    $t9, 0x13c($sp)
/* B7FD08 80108B68 10000373 */  b     .L80109938
/* B7FD0C 80108B6C AF2E0000 */   sw    $t6, ($t9)
glabel L80108B70
/* B7FD10 80108B70 92186304 */  lbu   $t8, 0x6304($s0)
/* B7FD14 80108B74 240F0035 */  li    $t7, 53
/* B7FD18 80108B78 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FD1C 80108B7C 1698001F */  bne   $s4, $t8, .L80108BFC
/* B7FD20 80108B80 240E0060 */   li    $t6, 96
/* B7FD24 80108B84 0232C821 */  addu  $t9, $s1, $s2
/* B7FD28 80108B88 A02F6305 */  sb    $t7, 0x6305($at)
/* B7FD2C 80108B8C A02E63E5 */  sb    $t6, 0x63e5($at)
/* B7FD30 80108B90 03351821 */  addu  $v1, $t9, $s5
/* B7FD34 80108B94 3C048015 */  lui   $a0, %hi(D_8015401C) # $a0, 0x8015
/* B7FD38 80108B98 2484401C */  addiu $a0, %lo(D_8015401C) # addiu $a0, $a0, 0x401c
/* B7FD3C 80108B9C 90656307 */  lbu   $a1, 0x6307($v1)
/* B7FD40 80108BA0 0C00084C */  jal   osSyncPrintf
/* B7FD44 80108BA4 90666308 */   lbu   $a2, 0x6308($v1)
/* B7FD48 80108BA8 26420001 */  addiu $v0, $s2, 1
/* B7FD4C 80108BAC 3047FFFF */  andi  $a3, $v0, 0xffff
/* B7FD50 80108BB0 0227C021 */  addu  $t8, $s1, $a3
/* B7FD54 80108BB4 03157821 */  addu  $t7, $t8, $s5
/* B7FD58 80108BB8 91EE6306 */  lbu   $t6, 0x6306($t7)
/* B7FD5C 80108BBC 24470001 */  addiu $a3, $v0, 1
/* B7FD60 80108BC0 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FD64 80108BC4 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B7FD68 80108BC8 000ECA00 */  sll   $t9, $t6, 8
/* B7FD6C 80108BCC A03963E8 */  sb    $t9, 0x63e8($at)
/* B7FD70 80108BD0 02277821 */  addu  $t7, $s1, $a3
/* B7FD74 80108BD4 01F57021 */  addu  $t6, $t7, $s5
/* B7FD78 80108BD8 91D96306 */  lbu   $t9, 0x6306($t6)
/* B7FD7C 80108BDC 921863E7 */  lbu   $t8, 0x63e7($s0)
/* B7FD80 80108BE0 3C048015 */  lui   $a0, %hi(D_80154030) # $a0, 0x8015
/* B7FD84 80108BE4 24844030 */  addiu $a0, %lo(D_80154030) # addiu $a0, $a0, 0x4030
/* B7FD88 80108BE8 03197825 */  or    $t7, $t8, $t9
/* B7FD8C 80108BEC A02F63E8 */  sb    $t7, 0x63e8($at)
/* B7FD90 80108BF0 920563E7 */  lbu   $a1, 0x63e7($s0)
/* B7FD94 80108BF4 0C00084C */  jal   osSyncPrintf
/* B7FD98 80108BF8 00A03025 */   move  $a2, $a1
.L80108BFC:
/* B7FD9C 80108BFC 8FAE0120 */  lw    $t6, 0x120($sp)
/* B7FDA0 80108C00 8FB8013C */  lw    $t8, 0x13c($sp)
/* B7FDA4 80108C04 1000034C */  b     .L80109938
/* B7FDA8 80108C08 AF0E0000 */   sw    $t6, ($t8)
glabel L80108C0C
/* B7FDAC 80108C0C AFB20050 */  sw    $s2, 0x50($sp)
/* B7FDB0 80108C10 92196304 */  lbu   $t9, 0x6304($s0)
/* B7FDB4 80108C14 34018000 */  li    $at, 32768
/* B7FDB8 80108C18 02C19821 */  addu  $s3, $s6, $at
/* B7FDBC 80108C1C 16990021 */  bne   $s4, $t9, .L80108CA4
/* B7FDC0 80108C20 3C0F8015 */   lui   $t7, %hi(D_8014B318) # $t7, 0x8015
/* B7FDC4 80108C24 85EFB318 */  lh    $t7, %lo(D_8014B318)($t7)
/* B7FDC8 80108C28 240E0001 */  li    $t6, 1
/* B7FDCC 80108C2C 3C018015 */  lui   $at, %hi(D_8014B318) # $at, 0x8015
/* B7FDD0 80108C30 15E0001C */  bnez  $t7, .L80108CA4
/* B7FDD4 80108C34 3C048015 */   lui   $a0, %hi(D_80154040) # $a0, 0x8015
/* B7FDD8 80108C38 A42EB318 */  sh    $t6, %lo(D_8014B318)($at)
/* B7FDDC 80108C3C 0C00084C */  jal   osSyncPrintf
/* B7FDE0 80108C40 24844040 */   addiu $a0, %lo(D_80154040) # addiu $a0, $a0, 0x4040
/* B7FDE4 80108C44 8FB80050 */  lw    $t8, 0x50($sp)
/* B7FDE8 80108C48 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7FDEC 80108C4C 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B7FDF0 80108C50 0238C821 */  addu  $t9, $s1, $t8
/* B7FDF4 80108C54 03351821 */  addu  $v1, $t9, $s5
/* B7FDF8 80108C58 90626307 */  lbu   $v0, 0x6307($v1)
/* B7FDFC 80108C5C 906F6308 */  lbu   $t7, 0x6308($v1)
/* B7FE00 80108C60 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7FE04 80108C64 00021200 */  sll   $v0, $v0, 8
/* B7FE08 80108C68 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B7FE0C 80108C6C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7FE10 80108C70 01E22025 */  or    $a0, $t7, $v0
/* B7FE14 80108C74 3084FFFF */  andi  $a0, $a0, 0xffff
/* B7FE18 80108C78 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7FE1C 80108C7C AFAE0014 */  sw    $t6, 0x14($sp)
/* B7FE20 80108C80 AFA70010 */  sw    $a3, 0x10($sp)
/* B7FE24 80108C84 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7FE28 80108C88 24060004 */   li    $a2, 4
/* B7FE2C 80108C8C 24080009 */  li    $t0, 9
/* B7FE30 80108C90 2409000A */  li    $t1, 10
/* B7FE34 80108C94 240A000B */  li    $t2, 11
/* B7FE38 80108C98 240B000C */  li    $t3, 12
/* B7FE3C 80108C9C 240C000D */  li    $t4, 13
/* B7FE40 80108CA0 240D0004 */  li    $t5, 4
.L80108CA4:
/* B7FE44 80108CA4 8FB20050 */  lw    $s2, 0x50($sp)
/* B7FE48 80108CA8 966363D2 */  lhu   $v1, 0x63d2($s3)
/* B7FE4C 80108CAC 26520002 */  addiu $s2, $s2, 2
/* B7FE50 80108CB0 1000030E */  b     .L801098EC
/* B7FE54 80108CB4 3252FFFF */   andi  $s2, $s2, 0xffff
glabel L80108CB8
/* B7FE58 80108CB8 0232C021 */  addu  $t8, $s1, $s2
/* B7FE5C 80108CBC 0315C821 */  addu  $t9, $t8, $s5
/* B7FE60 80108CC0 34018000 */  li    $at, 32768
/* B7FE64 80108CC4 02C19821 */  addu  $s3, $s6, $at
/* B7FE68 80108CC8 93256307 */  lbu   $a1, 0x6307($t9)
/* B7FE6C 80108CCC 8FA40138 */  lw    $a0, 0x138($sp)
/* B7FE70 80108CD0 27A60120 */  addiu $a2, $sp, 0x120
/* B7FE74 80108CD4 0C04202D */  jal   func_801080B4
/* B7FE78 80108CD8 3247FFFF */   andi  $a3, $s2, 0xffff
/* B7FE7C 80108CDC 24080009 */  li    $t0, 9
/* B7FE80 80108CE0 2409000A */  li    $t1, 10
/* B7FE84 80108CE4 240A000B */  li    $t2, 11
/* B7FE88 80108CE8 240B000C */  li    $t3, 12
/* B7FE8C 80108CEC 240C000D */  li    $t4, 13
/* B7FE90 80108CF0 240D0004 */  li    $t5, 4
/* B7FE94 80108CF4 3052FFFF */  andi  $s2, $v0, 0xffff
/* B7FE98 80108CF8 100002FC */  b     .L801098EC
/* B7FE9C 80108CFC 966363D2 */   lhu   $v1, 0x63d2($s3)
glabel L80108D00
/* B7FEA0 80108D00 920F6304 */  lbu   $t7, 0x6304($s0)
/* B7FEA4 80108D04 34018000 */  li    $at, 32768
/* B7FEA8 80108D08 02C19821 */  addu  $s3, $s6, $at
/* B7FEAC 80108D0C 168F0011 */  bne   $s4, $t7, .L80108D54
/* B7FEB0 80108D10 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7FEB4 80108D14 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B7FEB8 80108D18 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B7FEBC 80108D1C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7FEC0 80108D20 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7FEC4 80108D24 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7FEC8 80108D28 AFA70010 */  sw    $a3, 0x10($sp)
/* B7FECC 80108D2C AFAE0014 */  sw    $t6, 0x14($sp)
/* B7FED0 80108D30 00002025 */  move  $a0, $zero
/* B7FED4 80108D34 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7FED8 80108D38 24060004 */   li    $a2, 4
/* B7FEDC 80108D3C 24080009 */  li    $t0, 9
/* B7FEE0 80108D40 2409000A */  li    $t1, 10
/* B7FEE4 80108D44 240A000B */  li    $t2, 11
/* B7FEE8 80108D48 240B000C */  li    $t3, 12
/* B7FEEC 80108D4C 240C000D */  li    $t4, 13
/* B7FEF0 80108D50 240D0004 */  li    $t5, 4
.L80108D54:
/* B7FEF4 80108D54 8FB80120 */  lw    $t8, 0x120($sp)
/* B7FEF8 80108D58 3C0FE700 */  lui   $t7, 0xe700
/* B7FEFC 80108D5C 3C01E400 */  lui   $at, 0xe400
/* B7FF00 80108D60 27190008 */  addiu $t9, $t8, 8
/* B7FF04 80108D64 AFB90120 */  sw    $t9, 0x120($sp)
/* B7FF08 80108D68 AF000004 */  sw    $zero, 4($t8)
/* B7FF0C 80108D6C AF0F0000 */  sw    $t7, ($t8)
/* B7FF10 80108D70 8FAE0120 */  lw    $t6, 0x120($sp)
/* B7FF14 80108D74 3C0FFF2F */  lui   $t7, (0xFF2FFFFF >> 16) # lui $t7, 0xff2f
/* B7FF18 80108D78 3C19FC11 */  lui   $t9, (0xFC119623 >> 16) # lui $t9, 0xfc11
/* B7FF1C 80108D7C 25D80008 */  addiu $t8, $t6, 8
/* B7FF20 80108D80 AFB80120 */  sw    $t8, 0x120($sp)
/* B7FF24 80108D84 37399623 */  ori   $t9, (0xFC119623 & 0xFFFF) # ori $t9, $t9, 0x9623
/* B7FF28 80108D88 35EFFFFF */  ori   $t7, (0xFF2FFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* B7FF2C 80108D8C ADCF0004 */  sw    $t7, 4($t6)
/* B7FF30 80108D90 ADD90000 */  sw    $t9, ($t6)
/* B7FF34 80108D94 8FA30120 */  lw    $v1, 0x120($sp)
/* B7FF38 80108D98 3C19FA00 */  lui   $t9, 0xfa00
/* B7FF3C 80108D9C 24780008 */  addiu $t8, $v1, 8
/* B7FF40 80108DA0 AFB80120 */  sw    $t8, 0x120($sp)
/* B7FF44 80108DA4 AC790000 */  sw    $t9, ($v1)
/* B7FF48 80108DA8 920F63F9 */  lbu   $t7, 0x63f9($s0)
/* B7FF4C 80108DAC 3C188015 */  lui   $t8, %hi(D_80153930) # $t8, 0x8015
/* B7FF50 80108DB0 27183930 */  addiu $t8, %lo(D_80153930) # addiu $t8, $t8, 0x3930
/* B7FF54 80108DB4 000F7080 */  sll   $t6, $t7, 2
/* B7FF58 80108DB8 01CF7023 */  subu  $t6, $t6, $t7
/* B7FF5C 80108DBC 000E7040 */  sll   $t6, $t6, 1
/* B7FF60 80108DC0 01D81021 */  addu  $v0, $t6, $t8
/* B7FF64 80108DC4 84590004 */  lh    $t9, 4($v0)
/* B7FF68 80108DC8 332F00FF */  andi  $t7, $t9, 0xff
/* B7FF6C 80108DCC 84590000 */  lh    $t9, ($v0)
/* B7FF70 80108DD0 000F7200 */  sll   $t6, $t7, 8
/* B7FF74 80108DD4 00197E00 */  sll   $t7, $t9, 0x18
/* B7FF78 80108DD8 84590002 */  lh    $t9, 2($v0)
/* B7FF7C 80108DDC 01CFC025 */  or    $t8, $t6, $t7
/* B7FF80 80108DE0 332E00FF */  andi  $t6, $t9, 0xff
/* B7FF84 80108DE4 000E7C00 */  sll   $t7, $t6, 0x10
/* B7FF88 80108DE8 860E63E2 */  lh    $t6, 0x63e2($s0)
/* B7FF8C 80108DEC 030FC825 */  or    $t9, $t8, $t7
/* B7FF90 80108DF0 31D800FF */  andi  $t8, $t6, 0xff
/* B7FF94 80108DF4 03387825 */  or    $t7, $t9, $t8
/* B7FF98 80108DF8 AC6F0004 */  sw    $t7, 4($v1)
/* B7FF9C 80108DFC 8FA20120 */  lw    $v0, 0x120($sp)
/* B7FFA0 80108E00 3C18FD90 */  lui   $t8, 0xfd90
/* B7FFA4 80108E04 3C038015 */  lui   $v1, %hi(D_80153948) # $v1, 0x8015
/* B7FFA8 80108E08 24590008 */  addiu $t9, $v0, 8
/* B7FFAC 80108E0C AFB90120 */  sw    $t9, 0x120($sp)
/* B7FFB0 80108E10 AC580000 */  sw    $t8, ($v0)
/* B7FFB4 80108E14 8E0F62B0 */  lw    $t7, 0x62b0($s0)
/* B7FFB8 80108E18 24633948 */  addiu $v1, %lo(D_80153948) # addiu $v1, $v1, 0x3948
/* B7FFBC 80108E1C 25EE1000 */  addiu $t6, $t7, 0x1000
/* B7FFC0 80108E20 AC4E0004 */  sw    $t6, 4($v0)
/* B7FFC4 80108E24 8FB90120 */  lw    $t9, 0x120($sp)
/* B7FFC8 80108E28 3C0E0700 */  lui   $t6, 0x700
/* B7FFCC 80108E2C 3C0FF590 */  lui   $t7, 0xf590
/* B7FFD0 80108E30 27380008 */  addiu $t8, $t9, 8
/* B7FFD4 80108E34 AFB80120 */  sw    $t8, 0x120($sp)
/* B7FFD8 80108E38 AF2E0004 */  sw    $t6, 4($t9)
/* B7FFDC 80108E3C AF2F0000 */  sw    $t7, ($t9)
/* B7FFE0 80108E40 8FB90120 */  lw    $t9, 0x120($sp)
/* B7FFE4 80108E44 3C0FE600 */  lui   $t7, 0xe600
/* B7FFE8 80108E48 27380008 */  addiu $t8, $t9, 8
/* B7FFEC 80108E4C AFB80120 */  sw    $t8, 0x120($sp)
/* B7FFF0 80108E50 AF200004 */  sw    $zero, 4($t9)
/* B7FFF4 80108E54 AF2F0000 */  sw    $t7, ($t9)
/* B7FFF8 80108E58 8FAE0120 */  lw    $t6, 0x120($sp)
/* B7FFFC 80108E5C 3C0F0747 */  lui   $t7, (0x0747F156 >> 16) # lui $t7, 0x747
/* B80000 80108E60 35EFF156 */  ori   $t7, (0x0747F156 & 0xFFFF) # ori $t7, $t7, 0xf156
/* B80004 80108E64 25D90008 */  addiu $t9, $t6, 8
/* B80008 80108E68 AFB90120 */  sw    $t9, 0x120($sp)
/* B8000C 80108E6C 3C18F300 */  lui   $t8, 0xf300
/* B80010 80108E70 ADD80000 */  sw    $t8, ($t6)
/* B80014 80108E74 ADCF0004 */  sw    $t7, 4($t6)
/* B80018 80108E78 8FAE0120 */  lw    $t6, 0x120($sp)
/* B8001C 80108E7C 3C18E700 */  lui   $t8, 0xe700
/* B80020 80108E80 25D90008 */  addiu $t9, $t6, 8
/* B80024 80108E84 AFB90120 */  sw    $t9, 0x120($sp)
/* B80028 80108E88 ADC00004 */  sw    $zero, 4($t6)
/* B8002C 80108E8C ADD80000 */  sw    $t8, ($t6)
/* B80030 80108E90 8FAF0120 */  lw    $t7, 0x120($sp)
/* B80034 80108E94 3C19F580 */  lui   $t9, (0xF5800C00 >> 16) # lui $t9, 0xf580
/* B80038 80108E98 37390C00 */  ori   $t9, (0xF5800C00 & 0xFFFF) # ori $t9, $t9, 0xc00
/* B8003C 80108E9C 25EE0008 */  addiu $t6, $t7, 8
/* B80040 80108EA0 AFAE0120 */  sw    $t6, 0x120($sp)
/* B80044 80108EA4 ADE00004 */  sw    $zero, 4($t7)
/* B80048 80108EA8 ADF90000 */  sw    $t9, ($t7)
/* B8004C 80108EAC 8FB80120 */  lw    $t8, 0x120($sp)
/* B80050 80108EB0 3C190017 */  lui   $t9, (0x0017C0BC >> 16) # lui $t9, 0x17
/* B80054 80108EB4 3739C0BC */  ori   $t9, (0x0017C0BC & 0xFFFF) # ori $t9, $t9, 0xc0bc
/* B80058 80108EB8 270F0008 */  addiu $t7, $t8, 8
/* B8005C 80108EBC AFAF0120 */  sw    $t7, 0x120($sp)
/* B80060 80108EC0 3C0EF200 */  lui   $t6, 0xf200
/* B80064 80108EC4 AF0E0000 */  sw    $t6, ($t8)
/* B80068 80108EC8 AF190004 */  sw    $t9, 4($t8)
/* B8006C 80108ECC 8FA20120 */  lw    $v0, 0x120($sp)
/* B80070 80108ED0 244F0008 */  addiu $t7, $v0, 8
/* B80074 80108ED4 AFAF0120 */  sw    $t7, 0x120($sp)
/* B80078 80108ED8 920E63FA */  lbu   $t6, 0x63fa($s0)
/* B8007C 80108EDC 000EC840 */  sll   $t9, $t6, 1
/* B80080 80108EE0 8EEE0000 */  lw    $t6, ($s7)
/* B80084 80108EE4 0079C021 */  addu  $t8, $v1, $t9
/* B80088 80108EE8 870F0000 */  lh    $t7, ($t8)
/* B8008C 80108EEC 85D90B0E */  lh    $t9, 0xb0e($t6)
/* B80090 80108EF0 01F9C021 */  addu  $t8, $t7, $t9
/* B80094 80108EF4 270E0030 */  addiu $t6, $t8, 0x30
/* B80098 80108EF8 000E7880 */  sll   $t7, $t6, 2
/* B8009C 80108EFC 860E63D8 */  lh    $t6, 0x63d8($s0)
/* B800A0 80108F00 31F90FFF */  andi  $t9, $t7, 0xfff
/* B800A4 80108F04 0321C025 */  or    $t8, $t9, $at
/* B800A8 80108F08 25CF0061 */  addiu $t7, $t6, 0x61
/* B800AC 80108F0C 000FC880 */  sll   $t9, $t7, 2
/* B800B0 80108F10 332E0FFF */  andi  $t6, $t9, 0xfff
/* B800B4 80108F14 000E7B00 */  sll   $t7, $t6, 0xc
/* B800B8 80108F18 030FC825 */  or    $t9, $t8, $t7
/* B800BC 80108F1C AC590000 */  sw    $t9, ($v0)
/* B800C0 80108F20 920E63FA */  lbu   $t6, 0x63fa($s0)
/* B800C4 80108F24 000EC040 */  sll   $t8, $t6, 1
/* B800C8 80108F28 8EEE0000 */  lw    $t6, ($s7)
/* B800CC 80108F2C 00787821 */  addu  $t7, $v1, $t8
/* B800D0 80108F30 85F90000 */  lh    $t9, ($t7)
/* B800D4 80108F34 85D80B0E */  lh    $t8, 0xb0e($t6)
/* B800D8 80108F38 3C038015 */  lui   $v1, %hi(D_80153948) # $v1, 0x8015
/* B800DC 80108F3C 24633948 */  addiu $v1, %lo(D_80153948) # addiu $v1, $v1, 0x3948
/* B800E0 80108F40 03387821 */  addu  $t7, $t9, $t8
/* B800E4 80108F44 861863D8 */  lh    $t8, 0x63d8($s0)
/* B800E8 80108F48 000F7080 */  sll   $t6, $t7, 2
/* B800EC 80108F4C 31D90FFF */  andi  $t9, $t6, 0xfff
/* B800F0 80108F50 270F0001 */  addiu $t7, $t8, 1
/* B800F4 80108F54 000F7080 */  sll   $t6, $t7, 2
/* B800F8 80108F58 31D80FFF */  andi  $t8, $t6, 0xfff
/* B800FC 80108F5C 00187B00 */  sll   $t7, $t8, 0xc
/* B80100 80108F60 032F7025 */  or    $t6, $t9, $t7
/* B80104 80108F64 AC4E0004 */  sw    $t6, 4($v0)
/* B80108 80108F68 8FB80120 */  lw    $t8, 0x120($sp)
/* B8010C 80108F6C 3C0FE100 */  lui   $t7, 0xe100
/* B80110 80108F70 27190008 */  addiu $t9, $t8, 8
/* B80114 80108F74 AFB90120 */  sw    $t9, 0x120($sp)
/* B80118 80108F78 AF000004 */  sw    $zero, 4($t8)
/* B8011C 80108F7C AF0F0000 */  sw    $t7, ($t8)
/* B80120 80108F80 8FAE0120 */  lw    $t6, 0x120($sp)
/* B80124 80108F84 3C0F0400 */  lui   $t7, (0x04000400 >> 16) # lui $t7, 0x400
/* B80128 80108F88 35EF0400 */  ori   $t7, (0x04000400 & 0xFFFF) # ori $t7, $t7, 0x400
/* B8012C 80108F8C 25D80008 */  addiu $t8, $t6, 8
/* B80130 80108F90 AFB80120 */  sw    $t8, 0x120($sp)
/* B80134 80108F94 3C19F100 */  lui   $t9, 0xf100
/* B80138 80108F98 ADD90000 */  sw    $t9, ($t6)
/* B8013C 80108F9C ADCF0004 */  sw    $t7, 4($t6)
/* B80140 80108FA0 8FA20120 */  lw    $v0, 0x120($sp)
/* B80144 80108FA4 3C19FD90 */  lui   $t9, 0xfd90
/* B80148 80108FA8 24580008 */  addiu $t8, $v0, 8
/* B8014C 80108FAC AFB80120 */  sw    $t8, 0x120($sp)
/* B80150 80108FB0 AC590000 */  sw    $t9, ($v0)
/* B80154 80108FB4 8E0F62B0 */  lw    $t7, 0x62b0($s0)
/* B80158 80108FB8 25EE1900 */  addiu $t6, $t7, 0x1900
/* B8015C 80108FBC AC4E0004 */  sw    $t6, 4($v0)
/* B80160 80108FC0 8FB80120 */  lw    $t8, 0x120($sp)
/* B80164 80108FC4 3C0E0700 */  lui   $t6, 0x700
/* B80168 80108FC8 3C0FF590 */  lui   $t7, 0xf590
/* B8016C 80108FCC 27190008 */  addiu $t9, $t8, 8
/* B80170 80108FD0 AFB90120 */  sw    $t9, 0x120($sp)
/* B80174 80108FD4 AF0E0004 */  sw    $t6, 4($t8)
/* B80178 80108FD8 AF0F0000 */  sw    $t7, ($t8)
/* B8017C 80108FDC 8FB80120 */  lw    $t8, 0x120($sp)
/* B80180 80108FE0 3C0FE600 */  lui   $t7, 0xe600
/* B80184 80108FE4 27190008 */  addiu $t9, $t8, 8
/* B80188 80108FE8 AFB90120 */  sw    $t9, 0x120($sp)
/* B8018C 80108FEC AF000004 */  sw    $zero, 4($t8)
/* B80190 80108FF0 AF0F0000 */  sw    $t7, ($t8)
/* B80194 80108FF4 8FAE0120 */  lw    $t6, 0x120($sp)
/* B80198 80108FF8 3C0F0747 */  lui   $t7, (0x0747F156 >> 16) # lui $t7, 0x747
/* B8019C 80108FFC 35EFF156 */  ori   $t7, (0x0747F156 & 0xFFFF) # ori $t7, $t7, 0xf156
/* B801A0 80109000 25D80008 */  addiu $t8, $t6, 8
/* B801A4 80109004 AFB80120 */  sw    $t8, 0x120($sp)
/* B801A8 80109008 3C19F300 */  lui   $t9, 0xf300
/* B801AC 8010900C ADD90000 */  sw    $t9, ($t6)
/* B801B0 80109010 ADCF0004 */  sw    $t7, 4($t6)
/* B801B4 80109014 8FAE0120 */  lw    $t6, 0x120($sp)
/* B801B8 80109018 3C19E700 */  lui   $t9, 0xe700
/* B801BC 8010901C 25D80008 */  addiu $t8, $t6, 8
/* B801C0 80109020 AFB80120 */  sw    $t8, 0x120($sp)
/* B801C4 80109024 ADC00004 */  sw    $zero, 4($t6)
/* B801C8 80109028 ADD90000 */  sw    $t9, ($t6)
/* B801CC 8010902C 8FAF0120 */  lw    $t7, 0x120($sp)
/* B801D0 80109030 3C18F580 */  lui   $t8, (0xF5800C00 >> 16) # lui $t8, 0xf580
/* B801D4 80109034 37180C00 */  ori   $t8, (0xF5800C00 & 0xFFFF) # ori $t8, $t8, 0xc00
/* B801D8 80109038 25EE0008 */  addiu $t6, $t7, 8
/* B801DC 8010903C AFAE0120 */  sw    $t6, 0x120($sp)
/* B801E0 80109040 ADE00004 */  sw    $zero, 4($t7)
/* B801E4 80109044 ADF80000 */  sw    $t8, ($t7)
/* B801E8 80109048 8FB90120 */  lw    $t9, 0x120($sp)
/* B801EC 8010904C 3C180017 */  lui   $t8, (0x0017C0BC >> 16) # lui $t8, 0x17
/* B801F0 80109050 3718C0BC */  ori   $t8, (0x0017C0BC & 0xFFFF) # ori $t8, $t8, 0xc0bc
/* B801F4 80109054 272F0008 */  addiu $t7, $t9, 8
/* B801F8 80109058 AFAF0120 */  sw    $t7, 0x120($sp)
/* B801FC 8010905C 3C0EF200 */  lui   $t6, 0xf200
/* B80200 80109060 AF2E0000 */  sw    $t6, ($t9)
/* B80204 80109064 AF380004 */  sw    $t8, 4($t9)
/* B80208 80109068 8FA20120 */  lw    $v0, 0x120($sp)
/* B8020C 8010906C 244F0008 */  addiu $t7, $v0, 8
/* B80210 80109070 AFAF0120 */  sw    $t7, 0x120($sp)
/* B80214 80109074 920E63FA */  lbu   $t6, 0x63fa($s0)
/* B80218 80109078 000EC040 */  sll   $t8, $t6, 1
/* B8021C 8010907C 8EEE0000 */  lw    $t6, ($s7)
/* B80220 80109080 0078C821 */  addu  $t9, $v1, $t8
/* B80224 80109084 872F0000 */  lh    $t7, ($t9)
/* B80228 80109088 85D80B0E */  lh    $t8, 0xb0e($t6)
/* B8022C 8010908C 01F8C821 */  addu  $t9, $t7, $t8
/* B80230 80109090 272E0030 */  addiu $t6, $t9, 0x30
/* B80234 80109094 000E7880 */  sll   $t7, $t6, 2
/* B80238 80109098 860E63D8 */  lh    $t6, 0x63d8($s0)
/* B8023C 8010909C 31F80FFF */  andi  $t8, $t7, 0xfff
/* B80240 801090A0 0301C825 */  or    $t9, $t8, $at
/* B80244 801090A4 25CF00C2 */  addiu $t7, $t6, 0xc2
/* B80248 801090A8 000FC080 */  sll   $t8, $t7, 2
/* B8024C 801090AC 330E0FFF */  andi  $t6, $t8, 0xfff
/* B80250 801090B0 000E7B00 */  sll   $t7, $t6, 0xc
/* B80254 801090B4 032FC025 */  or    $t8, $t9, $t7
/* B80258 801090B8 AC580000 */  sw    $t8, ($v0)
/* B8025C 801090BC 920E63FA */  lbu   $t6, 0x63fa($s0)
/* B80260 801090C0 000EC840 */  sll   $t9, $t6, 1
/* B80264 801090C4 8EEE0000 */  lw    $t6, ($s7)
/* B80268 801090C8 00797821 */  addu  $t7, $v1, $t9
/* B8026C 801090CC 85F80000 */  lh    $t8, ($t7)
/* B80270 801090D0 85D90B0E */  lh    $t9, 0xb0e($t6)
/* B80274 801090D4 03197821 */  addu  $t7, $t8, $t9
/* B80278 801090D8 861963D8 */  lh    $t9, 0x63d8($s0)
/* B8027C 801090DC 000F7080 */  sll   $t6, $t7, 2
/* B80280 801090E0 31D80FFF */  andi  $t8, $t6, 0xfff
/* B80284 801090E4 272F0061 */  addiu $t7, $t9, 0x61
/* B80288 801090E8 000F7080 */  sll   $t6, $t7, 2
/* B8028C 801090EC 31D90FFF */  andi  $t9, $t6, 0xfff
/* B80290 801090F0 00197B00 */  sll   $t7, $t9, 0xc
/* B80294 801090F4 030F7025 */  or    $t6, $t8, $t7
/* B80298 801090F8 AC4E0004 */  sw    $t6, 4($v0)
/* B8029C 801090FC 8FB90120 */  lw    $t9, 0x120($sp)
/* B802A0 80109100 3C0FE100 */  lui   $t7, 0xe100
/* B802A4 80109104 27380008 */  addiu $t8, $t9, 8
/* B802A8 80109108 AFB80120 */  sw    $t8, 0x120($sp)
/* B802AC 8010910C AF200004 */  sw    $zero, 4($t9)
/* B802B0 80109110 AF2F0000 */  sw    $t7, ($t9)
/* B802B4 80109114 8FAE0120 */  lw    $t6, 0x120($sp)
/* B802B8 80109118 3C0F0400 */  lui   $t7, (0x04000400 >> 16) # lui $t7, 0x400
/* B802BC 8010911C 35EF0400 */  ori   $t7, (0x04000400 & 0xFFFF) # ori $t7, $t7, 0x400
/* B802C0 80109120 25D90008 */  addiu $t9, $t6, 8
/* B802C4 80109124 AFB90120 */  sw    $t9, 0x120($sp)
/* B802C8 80109128 3C18F100 */  lui   $t8, 0xf100
/* B802CC 8010912C ADD80000 */  sw    $t8, ($t6)
/* B802D0 80109130 ADCF0004 */  sw    $t7, 4($t6)
/* B802D4 80109134 8FAE0120 */  lw    $t6, 0x120($sp)
/* B802D8 80109138 3C18E700 */  lui   $t8, 0xe700
/* B802DC 8010913C 25D90008 */  addiu $t9, $t6, 8
/* B802E0 80109140 AFB90120 */  sw    $t9, 0x120($sp)
/* B802E4 80109144 ADC00004 */  sw    $zero, 4($t6)
/* B802E8 80109148 ADD80000 */  sw    $t8, ($t6)
/* B802EC 8010914C 8FAF0120 */  lw    $t7, 0x120($sp)
/* B802F0 80109150 3C19FA00 */  lui   $t9, 0xfa00
/* B802F4 80109154 01E01825 */  move  $v1, $t7
/* B802F8 80109158 25EE0008 */  addiu $t6, $t7, 8
/* B802FC 8010915C AFAE0120 */  sw    $t6, 0x120($sp)
/* B80300 80109160 AC790000 */  sw    $t9, ($v1)
/* B80304 80109164 921863F8 */  lbu   $t8, 0x63f8($s0)
/* B80308 80109168 3C0E8015 */  lui   $t6, %hi(D_80153900) # $t6, 0x8015
/* B8030C 8010916C 25CE3900 */  addiu $t6, %lo(D_80153900) # addiu $t6, $t6, 0x3900
/* B80310 80109170 00187880 */  sll   $t7, $t8, 2
/* B80314 80109174 01F87823 */  subu  $t7, $t7, $t8
/* B80318 80109178 000F7840 */  sll   $t7, $t7, 1
/* B8031C 8010917C 01EE1021 */  addu  $v0, $t7, $t6
/* B80320 80109180 84590004 */  lh    $t9, 4($v0)
/* B80324 80109184 3C01E400 */  lui   $at, 0xe400
/* B80328 80109188 333800FF */  andi  $t8, $t9, 0xff
/* B8032C 8010918C 84590000 */  lh    $t9, ($v0)
/* B80330 80109190 00187A00 */  sll   $t7, $t8, 8
/* B80334 80109194 0019C600 */  sll   $t8, $t9, 0x18
/* B80338 80109198 84590002 */  lh    $t9, 2($v0)
/* B8033C 8010919C 01F87025 */  or    $t6, $t7, $t8
/* B80340 801091A0 332F00FF */  andi  $t7, $t9, 0xff
/* B80344 801091A4 000FC400 */  sll   $t8, $t7, 0x10
/* B80348 801091A8 860F63E2 */  lh    $t7, 0x63e2($s0)
/* B8034C 801091AC 01D8C825 */  or    $t9, $t6, $t8
/* B80350 801091B0 31EE00FF */  andi  $t6, $t7, 0xff
/* B80354 801091B4 032EC025 */  or    $t8, $t9, $t6
/* B80358 801091B8 AC780004 */  sw    $t8, 4($v1)
/* B8035C 801091BC 8FA20120 */  lw    $v0, 0x120($sp)
/* B80360 801091C0 3C0EFD90 */  lui   $t6, 0xfd90
/* B80364 801091C4 24590008 */  addiu $t9, $v0, 8
/* B80368 801091C8 AFB90120 */  sw    $t9, 0x120($sp)
/* B8036C 801091CC AC4E0000 */  sw    $t6, ($v0)
/* B80370 801091D0 8E1862B0 */  lw    $t8, 0x62b0($s0)
/* B80374 801091D4 270F1000 */  addiu $t7, $t8, 0x1000
/* B80378 801091D8 AC4F0004 */  sw    $t7, 4($v0)
/* B8037C 801091DC 8FB90120 */  lw    $t9, 0x120($sp)
/* B80380 801091E0 3C0F0700 */  lui   $t7, 0x700
/* B80384 801091E4 3C18F590 */  lui   $t8, 0xf590
/* B80388 801091E8 272E0008 */  addiu $t6, $t9, 8
/* B8038C 801091EC AFAE0120 */  sw    $t6, 0x120($sp)
/* B80390 801091F0 AF2F0004 */  sw    $t7, 4($t9)
/* B80394 801091F4 AF380000 */  sw    $t8, ($t9)
/* B80398 801091F8 8FB90120 */  lw    $t9, 0x120($sp)
/* B8039C 801091FC 3C18E600 */  lui   $t8, 0xe600
/* B803A0 80109200 272E0008 */  addiu $t6, $t9, 8
/* B803A4 80109204 AFAE0120 */  sw    $t6, 0x120($sp)
/* B803A8 80109208 AF200004 */  sw    $zero, 4($t9)
/* B803AC 8010920C AF380000 */  sw    $t8, ($t9)
/* B803B0 80109210 8FAF0120 */  lw    $t7, 0x120($sp)
/* B803B4 80109214 3C180747 */  lui   $t8, (0x0747F156 >> 16) # lui $t8, 0x747
/* B803B8 80109218 3718F156 */  ori   $t8, (0x0747F156 & 0xFFFF) # ori $t8, $t8, 0xf156
/* B803BC 8010921C 25F90008 */  addiu $t9, $t7, 8
/* B803C0 80109220 AFB90120 */  sw    $t9, 0x120($sp)
/* B803C4 80109224 3C0EF300 */  lui   $t6, 0xf300
/* B803C8 80109228 ADEE0000 */  sw    $t6, ($t7)
/* B803CC 8010922C ADF80004 */  sw    $t8, 4($t7)
/* B803D0 80109230 8FAF0120 */  lw    $t7, 0x120($sp)
/* B803D4 80109234 3C0EE700 */  lui   $t6, 0xe700
/* B803D8 80109238 25F90008 */  addiu $t9, $t7, 8
/* B803DC 8010923C AFB90120 */  sw    $t9, 0x120($sp)
/* B803E0 80109240 ADE00004 */  sw    $zero, 4($t7)
/* B803E4 80109244 ADEE0000 */  sw    $t6, ($t7)
/* B803E8 80109248 8FB80120 */  lw    $t8, 0x120($sp)
/* B803EC 8010924C 3C19F580 */  lui   $t9, (0xF5800C00 >> 16) # lui $t9, 0xf580
/* B803F0 80109250 37390C00 */  ori   $t9, (0xF5800C00 & 0xFFFF) # ori $t9, $t9, 0xc00
/* B803F4 80109254 270F0008 */  addiu $t7, $t8, 8
/* B803F8 80109258 AFAF0120 */  sw    $t7, 0x120($sp)
/* B803FC 8010925C AF000004 */  sw    $zero, 4($t8)
/* B80400 80109260 AF190000 */  sw    $t9, ($t8)
/* B80404 80109264 8FAE0120 */  lw    $t6, 0x120($sp)
/* B80408 80109268 3C190017 */  lui   $t9, (0x0017C0BC >> 16) # lui $t9, 0x17
/* B8040C 8010926C 3739C0BC */  ori   $t9, (0x0017C0BC & 0xFFFF) # ori $t9, $t9, 0xc0bc
/* B80410 80109270 25D80008 */  addiu $t8, $t6, 8
/* B80414 80109274 AFB80120 */  sw    $t8, 0x120($sp)
/* B80418 80109278 3C0FF200 */  lui   $t7, 0xf200
/* B8041C 8010927C ADCF0000 */  sw    $t7, ($t6)
/* B80420 80109280 ADD90004 */  sw    $t9, 4($t6)
/* B80424 80109284 8FA20120 */  lw    $v0, 0x120($sp)
/* B80428 80109288 8EEF0000 */  lw    $t7, ($s7)
/* B8042C 8010928C 24580008 */  addiu $t8, $v0, 8
/* B80430 80109290 AFB80120 */  sw    $t8, 0x120($sp)
/* B80434 80109294 85F90B0E */  lh    $t9, 0xb0e($t7)
/* B80438 80109298 272E0030 */  addiu $t6, $t9, 0x30
/* B8043C 8010929C 000EC080 */  sll   $t8, $t6, 2
/* B80440 801092A0 860E63D8 */  lh    $t6, 0x63d8($s0)
/* B80444 801092A4 330F0FFF */  andi  $t7, $t8, 0xfff
/* B80448 801092A8 01E1C825 */  or    $t9, $t7, $at
/* B8044C 801092AC 25D80060 */  addiu $t8, $t6, 0x60
/* B80450 801092B0 00187880 */  sll   $t7, $t8, 2
/* B80454 801092B4 31EE0FFF */  andi  $t6, $t7, 0xfff
/* B80458 801092B8 000EC300 */  sll   $t8, $t6, 0xc
/* B8045C 801092BC 03387825 */  or    $t7, $t9, $t8
/* B80460 801092C0 AC4F0000 */  sw    $t7, ($v0)
/* B80464 801092C4 8EEE0000 */  lw    $t6, ($s7)
/* B80468 801092C8 85D90B0E */  lh    $t9, 0xb0e($t6)
/* B8046C 801092CC 860E63D8 */  lh    $t6, 0x63d8($s0)
/* B80470 801092D0 0019C080 */  sll   $t8, $t9, 2
/* B80474 801092D4 330F0FFF */  andi  $t7, $t8, 0xfff
/* B80478 801092D8 000EC880 */  sll   $t9, $t6, 2
/* B8047C 801092DC 33380FFF */  andi  $t8, $t9, 0xfff
/* B80480 801092E0 00187300 */  sll   $t6, $t8, 0xc
/* B80484 801092E4 01EEC825 */  or    $t9, $t7, $t6
/* B80488 801092E8 AC590004 */  sw    $t9, 4($v0)
/* B8048C 801092EC 8FB80120 */  lw    $t8, 0x120($sp)
/* B80490 801092F0 3C0EE100 */  lui   $t6, 0xe100
/* B80494 801092F4 270F0008 */  addiu $t7, $t8, 8
/* B80498 801092F8 AFAF0120 */  sw    $t7, 0x120($sp)
/* B8049C 801092FC AF000004 */  sw    $zero, 4($t8)
/* B804A0 80109300 AF0E0000 */  sw    $t6, ($t8)
/* B804A4 80109304 8FB90120 */  lw    $t9, 0x120($sp)
/* B804A8 80109308 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* B804AC 8010930C 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* B804B0 80109310 27380008 */  addiu $t8, $t9, 8
/* B804B4 80109314 AFB80120 */  sw    $t8, 0x120($sp)
/* B804B8 80109318 3C0FF100 */  lui   $t7, 0xf100
/* B804BC 8010931C AF2F0000 */  sw    $t7, ($t9)
/* B804C0 80109320 AF2E0004 */  sw    $t6, 4($t9)
/* B804C4 80109324 8FA20120 */  lw    $v0, 0x120($sp)
/* B804C8 80109328 3C0FFD90 */  lui   $t7, 0xfd90
/* B804CC 8010932C 24580008 */  addiu $t8, $v0, 8
/* B804D0 80109330 AFB80120 */  sw    $t8, 0x120($sp)
/* B804D4 80109334 AC4F0000 */  sw    $t7, ($v0)
/* B804D8 80109338 8E0E62B0 */  lw    $t6, 0x62b0($s0)
/* B804DC 8010933C 25D91900 */  addiu $t9, $t6, 0x1900
/* B804E0 80109340 AC590004 */  sw    $t9, 4($v0)
/* B804E4 80109344 8FB80120 */  lw    $t8, 0x120($sp)
/* B804E8 80109348 3C190700 */  lui   $t9, 0x700
/* B804EC 8010934C 3C0EF590 */  lui   $t6, 0xf590
/* B804F0 80109350 270F0008 */  addiu $t7, $t8, 8
/* B804F4 80109354 AFAF0120 */  sw    $t7, 0x120($sp)
/* B804F8 80109358 AF190004 */  sw    $t9, 4($t8)
/* B804FC 8010935C AF0E0000 */  sw    $t6, ($t8)
/* B80500 80109360 8FB80120 */  lw    $t8, 0x120($sp)
/* B80504 80109364 3C0EE600 */  lui   $t6, 0xe600
/* B80508 80109368 270F0008 */  addiu $t7, $t8, 8
/* B8050C 8010936C AFAF0120 */  sw    $t7, 0x120($sp)
/* B80510 80109370 AF000004 */  sw    $zero, 4($t8)
/* B80514 80109374 AF0E0000 */  sw    $t6, ($t8)
/* B80518 80109378 8FB90120 */  lw    $t9, 0x120($sp)
/* B8051C 8010937C 3C0E0747 */  lui   $t6, (0x0747F156 >> 16) # lui $t6, 0x747
/* B80520 80109380 35CEF156 */  ori   $t6, (0x0747F156 & 0xFFFF) # ori $t6, $t6, 0xf156
/* B80524 80109384 27380008 */  addiu $t8, $t9, 8
/* B80528 80109388 AFB80120 */  sw    $t8, 0x120($sp)
/* B8052C 8010938C 3C0FF300 */  lui   $t7, 0xf300
/* B80530 80109390 AF2F0000 */  sw    $t7, ($t9)
/* B80534 80109394 AF2E0004 */  sw    $t6, 4($t9)
/* B80538 80109398 8FB90120 */  lw    $t9, 0x120($sp)
/* B8053C 8010939C 3C0FE700 */  lui   $t7, 0xe700
/* B80540 801093A0 27380008 */  addiu $t8, $t9, 8
/* B80544 801093A4 AFB80120 */  sw    $t8, 0x120($sp)
/* B80548 801093A8 AF200004 */  sw    $zero, 4($t9)
/* B8054C 801093AC AF2F0000 */  sw    $t7, ($t9)
/* B80550 801093B0 8FAE0120 */  lw    $t6, 0x120($sp)
/* B80554 801093B4 3C18F580 */  lui   $t8, (0xF5800C00 >> 16) # lui $t8, 0xf580
/* B80558 801093B8 37180C00 */  ori   $t8, (0xF5800C00 & 0xFFFF) # ori $t8, $t8, 0xc00
/* B8055C 801093BC 25D90008 */  addiu $t9, $t6, 8
/* B80560 801093C0 AFB90120 */  sw    $t9, 0x120($sp)
/* B80564 801093C4 ADC00004 */  sw    $zero, 4($t6)
/* B80568 801093C8 ADD80000 */  sw    $t8, ($t6)
/* B8056C 801093CC 8FAF0120 */  lw    $t7, 0x120($sp)
/* B80570 801093D0 3C180017 */  lui   $t8, (0x0017C0BC >> 16) # lui $t8, 0x17
/* B80574 801093D4 3718C0BC */  ori   $t8, (0x0017C0BC & 0xFFFF) # ori $t8, $t8, 0xc0bc
/* B80578 801093D8 25EE0008 */  addiu $t6, $t7, 8
/* B8057C 801093DC AFAE0120 */  sw    $t6, 0x120($sp)
/* B80580 801093E0 3C19F200 */  lui   $t9, 0xf200
/* B80584 801093E4 ADF90000 */  sw    $t9, ($t7)
/* B80588 801093E8 ADF80004 */  sw    $t8, 4($t7)
/* B8058C 801093EC 8FA20120 */  lw    $v0, 0x120($sp)
/* B80590 801093F0 8EF90000 */  lw    $t9, ($s7)
/* B80594 801093F4 244E0008 */  addiu $t6, $v0, 8
/* B80598 801093F8 AFAE0120 */  sw    $t6, 0x120($sp)
/* B8059C 801093FC 87380B0E */  lh    $t8, 0xb0e($t9)
/* B805A0 80109400 270F0030 */  addiu $t7, $t8, 0x30
/* B805A4 80109404 000F7080 */  sll   $t6, $t7, 2
/* B805A8 80109408 860F63D8 */  lh    $t7, 0x63d8($s0)
/* B805AC 8010940C 31D90FFF */  andi  $t9, $t6, 0xfff
/* B805B0 80109410 0321C025 */  or    $t8, $t9, $at
/* B805B4 80109414 25EE00C0 */  addiu $t6, $t7, 0xc0
/* B805B8 80109418 000EC880 */  sll   $t9, $t6, 2
/* B805BC 8010941C 332F0FFF */  andi  $t7, $t9, 0xfff
/* B805C0 80109420 000F7300 */  sll   $t6, $t7, 0xc
/* B805C4 80109424 030EC825 */  or    $t9, $t8, $t6
/* B805C8 80109428 AC590000 */  sw    $t9, ($v0)
/* B805CC 8010942C 8EEF0000 */  lw    $t7, ($s7)
/* B805D0 80109430 26217FFF */  addiu $at, $s1, 0x7fff
/* B805D4 80109434 85F80B0E */  lh    $t8, 0xb0e($t7)
/* B805D8 80109438 860F63D8 */  lh    $t7, 0x63d8($s0)
/* B805DC 8010943C 00187080 */  sll   $t6, $t8, 2
/* B805E0 80109440 31D90FFF */  andi  $t9, $t6, 0xfff
/* B805E4 80109444 25F80060 */  addiu $t8, $t7, 0x60
/* B805E8 80109448 00187080 */  sll   $t6, $t8, 2
/* B805EC 8010944C 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B805F0 80109450 000FC300 */  sll   $t8, $t7, 0xc
/* B805F4 80109454 03387025 */  or    $t6, $t9, $t8
/* B805F8 80109458 AC4E0004 */  sw    $t6, 4($v0)
/* B805FC 8010945C 8FAF0120 */  lw    $t7, 0x120($sp)
/* B80600 80109460 3C18E100 */  lui   $t8, 0xe100
/* B80604 80109464 25F90008 */  addiu $t9, $t7, 8
/* B80608 80109468 AFB90120 */  sw    $t9, 0x120($sp)
/* B8060C 8010946C ADE00004 */  sw    $zero, 4($t7)
/* B80610 80109470 ADF80000 */  sw    $t8, ($t7)
/* B80614 80109474 8FAE0120 */  lw    $t6, 0x120($sp)
/* B80618 80109478 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* B8061C 8010947C 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* B80620 80109480 25CF0008 */  addiu $t7, $t6, 8
/* B80624 80109484 AFAF0120 */  sw    $t7, 0x120($sp)
/* B80628 80109488 3C19F100 */  lui   $t9, 0xf100
/* B8062C 8010948C ADD90000 */  sw    $t9, ($t6)
/* B80630 80109490 ADD80004 */  sw    $t8, 4($t6)
/* B80634 80109494 8FAE0120 */  lw    $t6, 0x120($sp)
/* B80638 80109498 3C19E700 */  lui   $t9, 0xe700
/* B8063C 8010949C 25CF0008 */  addiu $t7, $t6, 8
/* B80640 801094A0 AFAF0120 */  sw    $t7, 0x120($sp)
/* B80644 801094A4 ADC00004 */  sw    $zero, 4($t6)
/* B80648 801094A8 ADD90000 */  sw    $t9, ($t6)
/* B8064C 801094AC 8FB80120 */  lw    $t8, 0x120($sp)
/* B80650 801094B0 3C19FF2D */  lui   $t9, (0xFF2DFEFF >> 16) # lui $t9, 0xff2d
/* B80654 801094B4 3C0FFCFF */  lui   $t7, (0xFCFF97FF >> 16) # lui $t7, 0xfcff
/* B80658 801094B8 270E0008 */  addiu $t6, $t8, 8
/* B8065C 801094BC AFAE0120 */  sw    $t6, 0x120($sp)
/* B80660 801094C0 35EF97FF */  ori   $t7, (0xFCFF97FF & 0xFFFF) # ori $t7, $t7, 0x97ff
/* B80664 801094C4 3739FEFF */  ori   $t9, (0xFF2DFEFF & 0xFFFF) # ori $t9, $t9, 0xfeff
/* B80668 801094C8 AF190004 */  sw    $t9, 4($t8)
/* B8066C 801094CC AF0F0000 */  sw    $t7, ($t8)
/* B80670 801094D0 861863D8 */  lh    $t8, 0x63d8($s0)
/* B80674 801094D4 270E0020 */  addiu $t6, $t8, 0x20
/* B80678 801094D8 A42E63D9 */  sh    $t6, 0x63d9($at)
/* B8067C 801094DC 10000103 */  b     .L801098EC
/* B80680 801094E0 966363D2 */   lhu   $v1, 0x63d2($s3)
glabel L801094E4
/* B80684 801094E4 26420001 */  addiu $v0, $s2, 1
/* B80688 801094E8 3047FFFF */  andi  $a3, $v0, 0xffff
/* B8068C 801094EC 02277821 */  addu  $t7, $s1, $a3
/* B80690 801094F0 01F5C821 */  addu  $t9, $t7, $s5
/* B80694 801094F4 93386306 */  lbu   $t8, 0x6306($t9)
/* B80698 801094F8 26217FFF */  addiu $at, $s1, 0x7fff
/* B8069C 801094FC 26C37FFF */  addiu $v1, $s6, 0x7fff
/* B806A0 80109500 A43863EB */  sh    $t8, 0x63eb($at)
/* B806A4 80109504 3052FFFF */  andi  $s2, $v0, 0xffff
/* B806A8 80109508 100000F8 */  b     .L801098EC
/* B806AC 8010950C 946363D3 */   lhu   $v1, 0x63d3($v1)
glabel L80109510
/* B806B0 80109510 240E0001 */  li    $t6, 1
/* B806B4 80109514 26217FFF */  addiu $at, $s1, 0x7fff
/* B806B8 80109518 A42E63D7 */  sh    $t6, 0x63d7($at)
/* B806BC 8010951C 26C37FFF */  addiu $v1, $s6, 0x7fff
/* B806C0 80109520 100000F2 */  b     .L801098EC
/* B806C4 80109524 946363D3 */   lhu   $v1, 0x63d3($v1)
glabel L80109528
/* B806C8 80109528 240F0010 */  li    $t7, 16
/* B806CC 8010952C 26217FFF */  addiu $at, $s1, 0x7fff
/* B806D0 80109530 A02F63E5 */  sb    $t7, 0x63e5($at)
/* B806D4 80109534 92196304 */  lbu   $t9, 0x6304($s0)
/* B806D8 80109538 34018000 */  li    $at, 32768
/* B806DC 8010953C 02C19821 */  addu  $s3, $s6, $at
/* B806E0 80109540 16990010 */  bne   $s4, $t9, .L80109584
/* B806E4 80109544 26217FFF */   addiu $at, $s1, 0x7fff
/* B806E8 80109548 961862F8 */  lhu   $t8, 0x62f8($s0)
/* B806EC 8010954C 240E0004 */  li    $t6, 4
/* B806F0 80109550 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B806F4 80109554 A02063E6 */  sb    $zero, 0x63e6($at)
/* B806F8 80109558 A43862FB */  sh    $t8, 0x62fb($at)
/* B806FC 8010955C 8FA40138 */  lw    $a0, 0x138($sp)
/* B80700 80109560 24050002 */  li    $a1, 2
/* B80704 80109564 0C01BBAF */  jal   func_8006EEBC
/* B80708 80109568 24842200 */   addiu $a0, $a0, 0x2200
/* B8070C 8010956C 24080009 */  li    $t0, 9
/* B80710 80109570 2409000A */  li    $t1, 10
/* B80714 80109574 240A000B */  li    $t2, 11
/* B80718 80109578 240B000C */  li    $t3, 12
/* B8071C 8010957C 240C000D */  li    $t4, 13
/* B80720 80109580 240D0004 */  li    $t5, 4
.L80109584:
/* B80724 80109584 100000D9 */  b     .L801098EC
/* B80728 80109588 966363D2 */   lhu   $v1, 0x63d2($s3)
glabel L8010958C
/* B8072C 8010958C 240F0020 */  li    $t7, 32
/* B80730 80109590 26217FFF */  addiu $at, $s1, 0x7fff
/* B80734 80109594 A02F63E5 */  sb    $t7, 0x63e5($at)
/* B80738 80109598 92196304 */  lbu   $t9, 0x6304($s0)
/* B8073C 8010959C 34018000 */  li    $at, 32768
/* B80740 801095A0 02C19821 */  addu  $s3, $s6, $at
/* B80744 801095A4 16990010 */  bne   $s4, $t9, .L801095E8
/* B80748 801095A8 26217FFF */   addiu $at, $s1, 0x7fff
/* B8074C 801095AC 961862F8 */  lhu   $t8, 0x62f8($s0)
/* B80750 801095B0 240E0004 */  li    $t6, 4
/* B80754 801095B4 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B80758 801095B8 A02063E6 */  sb    $zero, 0x63e6($at)
/* B8075C 801095BC A43862FB */  sh    $t8, 0x62fb($at)
/* B80760 801095C0 8FA40138 */  lw    $a0, 0x138($sp)
/* B80764 801095C4 24050002 */  li    $a1, 2
/* B80768 801095C8 0C01BBAF */  jal   func_8006EEBC
/* B8076C 801095CC 24842200 */   addiu $a0, $a0, 0x2200
/* B80770 801095D0 24080009 */  li    $t0, 9
/* B80774 801095D4 2409000A */  li    $t1, 10
/* B80778 801095D8 240A000B */  li    $t2, 11
/* B8077C 801095DC 240B000C */  li    $t3, 12
/* B80780 801095E0 240C000D */  li    $t4, 13
/* B80784 801095E4 240D0004 */  li    $t5, 4
.L801095E8:
/* B80788 801095E8 100000C0 */  b     .L801098EC
/* B8078C 801095EC 966363D2 */   lhu   $v1, 0x63d2($s3)
glabel L801095F0
/* B80790 801095F0 920F6304 */  lbu   $t7, 0x6304($s0)
/* B80794 801095F4 24190035 */  li    $t9, 53
/* B80798 801095F8 26217FFF */  addiu $at, $s1, 0x7fff
/* B8079C 801095FC 568F001D */  bnel  $s4, $t7, .L80109674
/* B807A0 80109600 8FB90120 */   lw    $t9, 0x120($sp)
/* B807A4 80109604 A0396305 */  sb    $t9, 0x6305($at)
/* B807A8 80109608 921863E4 */  lbu   $t8, 0x63e4($s0)
/* B807AC 8010960C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B807B0 80109610 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B807B4 80109614 17000016 */  bnez  $t8, .L80109670
/* B807B8 80109618 2404482E */   li    $a0, 18478
/* B807BC 8010961C 8FB90138 */  lw    $t9, 0x138($sp)
/* B807C0 80109620 3C0E8013 */  lui   $t6, %hi(D_801333E0)
/* B807C4 80109624 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B807C8 80109628 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B807CC 8010962C 25C733E0 */  addiu $a3, $t6, %lo(D_801333E0)
/* B807D0 80109630 27382200 */  addiu $t8, $t9, 0x2200
/* B807D4 80109634 AFB80058 */  sw    $t8, 0x58($sp)
/* B807D8 80109638 AFA70010 */  sw    $a3, 0x10($sp)
/* B807DC 8010963C AFAF0014 */  sw    $t7, 0x14($sp)
/* B807E0 80109640 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B807E4 80109644 24060004 */   li    $a2, 4
/* B807E8 80109648 8FA40058 */  lw    $a0, 0x58($sp)
/* B807EC 8010964C 0C01BBAF */  jal   func_8006EEBC
/* B807F0 80109650 24050001 */   li    $a1, 1
/* B807F4 80109654 8FAE0138 */  lw    $t6, 0x138($sp)
/* B807F8 80109658 91CF1D6C */  lbu   $t7, 0x1d6c($t6)
/* B807FC 8010965C 01C02025 */  move  $a0, $t6
/* B80800 80109660 55E00004 */  bnezl $t7, .L80109674
/* B80804 80109664 8FB90120 */   lw    $t9, 0x120($sp)
/* B80808 80109668 0C021BC0 */  jal   func_80086F00
/* B8080C 8010966C 24050003 */   li    $a1, 3
.L80109670:
/* B80810 80109670 8FB90120 */  lw    $t9, 0x120($sp)
.L80109674:
/* B80814 80109674 8FB8013C */  lw    $t8, 0x13c($sp)
/* B80818 80109678 100000AF */  b     .L80109938
/* B8081C 8010967C AF190000 */   sw    $t9, ($t8)
glabel L80109680
/* B80820 80109680 960F63D2 */  lhu   $t7, 0x63d2($s0)
/* B80824 80109684 264E0001 */  addiu $t6, $s2, 1
/* B80828 80109688 26C37FFF */  addiu $v1, $s6, 0x7fff
/* B8082C 8010968C 15EE0007 */  bne   $t7, $t6, .L801096AC
/* B80830 80109690 00000000 */   nop   
/* B80834 80109694 0C0420FE */  jal   func_801083F8
/* B80838 80109698 8FA40138 */   lw    $a0, 0x138($sp)
/* B8083C 8010969C 8FB90120 */  lw    $t9, 0x120($sp)
/* B80840 801096A0 8FB8013C */  lw    $t8, 0x13c($sp)
/* B80844 801096A4 100000A4 */  b     .L80109938
/* B80848 801096A8 AF190000 */   sw    $t9, ($t8)
.L801096AC:
/* B8084C 801096AC 1000008F */  b     .L801098EC
/* B80850 801096B0 946363D3 */   lhu   $v1, 0x63d3($v1)
glabel L801096B4
/* B80854 801096B4 920F6304 */  lbu   $t7, 0x6304($s0)
/* B80858 801096B8 240E0035 */  li    $t6, 53
/* B8085C 801096BC 26217FFF */  addiu $at, $s1, 0x7fff
/* B80860 801096C0 168F0014 */  bne   $s4, $t7, .L80109714
/* B80864 801096C4 24190060 */   li    $t9, 96
/* B80868 801096C8 26470001 */  addiu $a3, $s2, 1
/* B8086C 801096CC 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B80870 801096D0 0227C021 */  addu  $t8, $s1, $a3
/* B80874 801096D4 A02E6305 */  sb    $t6, 0x6305($at)
/* B80878 801096D8 A03963E5 */  sb    $t9, 0x63e5($at)
/* B8087C 801096DC 03157821 */  addu  $t7, $t8, $s5
/* B80880 801096E0 91EE6306 */  lbu   $t6, 0x6306($t7)
/* B80884 801096E4 24050001 */  li    $a1, 1
/* B80888 801096E8 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B8088C 801096EC 8FA40138 */  lw    $a0, 0x138($sp)
/* B80890 801096F0 0C01BBAF */  jal   func_8006EEBC
/* B80894 801096F4 24842200 */   addiu $a0, $a0, 0x2200
/* B80898 801096F8 8FB90138 */  lw    $t9, 0x138($sp)
/* B8089C 801096FC 93381D6C */  lbu   $t8, 0x1d6c($t9)
/* B808A0 80109700 03202025 */  move  $a0, $t9
/* B808A4 80109704 57000004 */  bnezl $t8, .L80109718
/* B808A8 80109708 8FAF0120 */   lw    $t7, 0x120($sp)
/* B808AC 8010970C 0C021BC0 */  jal   func_80086F00
/* B808B0 80109710 24050003 */   li    $a1, 3
.L80109714:
/* B808B4 80109714 8FAF0120 */  lw    $t7, 0x120($sp)
.L80109718:
/* B808B8 80109718 8FAE013C */  lw    $t6, 0x13c($sp)
/* B808BC 8010971C 10000086 */  b     .L80109938
/* B808C0 80109720 ADCF0000 */   sw    $t7, ($t6)
glabel L80109724
/* B808C4 80109724 92186304 */  lbu   $t8, 0x6304($s0)
/* B808C8 80109728 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B808CC 8010972C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B808D0 80109730 1698000E */  bne   $s4, $t8, .L8010976C
/* B808D4 80109734 00002025 */   move  $a0, $zero
/* B808D8 80109738 3C198013 */  lui   $t9, %hi(D_801333E0)
/* B808DC 8010973C 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B808E0 80109740 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B808E4 80109744 272733E0 */  addiu $a3, $t9, %lo(D_801333E0)
/* B808E8 80109748 AFA70010 */  sw    $a3, 0x10($sp)
/* B808EC 8010974C AFAF0014 */  sw    $t7, 0x14($sp)
/* B808F0 80109750 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B808F4 80109754 24060004 */   li    $a2, 4
/* B808F8 80109758 26217FFF */  addiu $at, $s1, 0x7fff
/* B808FC 8010975C 240E0035 */  li    $t6, 53
/* B80900 80109760 24180040 */  li    $t8, 64
/* B80904 80109764 A02E6305 */  sb    $t6, 0x6305($at)
/* B80908 80109768 A03863E5 */  sb    $t8, 0x63e5($at)
.L8010976C:
/* B8090C 8010976C 8FB90120 */  lw    $t9, 0x120($sp)
/* B80910 80109770 8FAF013C */  lw    $t7, 0x13c($sp)
/* B80914 80109774 10000070 */  b     .L80109938
/* B80918 80109778 ADF90000 */   sw    $t9, ($t7)
glabel L8010977C
/* B8091C 8010977C 920E6304 */  lbu   $t6, 0x6304($s0)
/* B80920 80109780 24180035 */  li    $t8, 53
/* B80924 80109784 26217FFF */  addiu $at, $s1, 0x7fff
/* B80928 80109788 168E0012 */  bne   $s4, $t6, .L801097D4
/* B8092C 8010978C 24190050 */   li    $t9, 80
/* B80930 80109790 A0386305 */  sb    $t8, 0x6305($at)
/* B80934 80109794 A03963E5 */  sb    $t9, 0x63e5($at)
/* B80938 80109798 8FA40138 */  lw    $a0, 0x138($sp)
/* B8093C 8010979C 00002825 */  move  $a1, $zero
/* B80940 801097A0 0C01BBAF */  jal   func_8006EEBC
/* B80944 801097A4 24842200 */   addiu $a0, $a0, 0x2200
/* B80948 801097A8 3C0F8013 */  lui   $t7, %hi(D_801333E0)
/* B8094C 801097AC 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B80950 801097B0 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B80954 801097B4 25E733E0 */  addiu $a3, $t7, %lo(D_801333E0)
/* B80958 801097B8 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B8095C 801097BC 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B80960 801097C0 AFA70010 */  sw    $a3, 0x10($sp)
/* B80964 801097C4 AFAE0014 */  sw    $t6, 0x14($sp)
/* B80968 801097C8 2404482E */  li    $a0, 18478
/* B8096C 801097CC 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B80970 801097D0 24060004 */   li    $a2, 4
.L801097D4:
/* B80974 801097D4 8FB80120 */  lw    $t8, 0x120($sp)
/* B80978 801097D8 8FB9013C */  lw    $t9, 0x13c($sp)
/* B8097C 801097DC 10000056 */  b     .L80109938
/* B80980 801097E0 AF380000 */   sw    $t8, ($t9)
.L801097E4:
glabel L801097E4
/* B80984 801097E4 8FAF0138 */  lw    $t7, 0x138($sp)
/* B80988 801097E8 34018000 */  li    $at, 32768
/* B8098C 801097EC 02C19821 */  addu  $s3, $s6, $at
/* B80990 801097F0 25EE2200 */  addiu $t6, $t7, 0x2200
/* B80994 801097F4 AFAE0058 */  sw    $t6, 0x58($sp)
/* B80998 801097F8 92186304 */  lbu   $t8, 0x6304($s0)
/* B8099C 801097FC 56980016 */  bnel  $s4, $t8, .L80109858
/* B809A0 80109800 8FAF0058 */   lw    $t7, 0x58($sp)
/* B809A4 80109804 961963D2 */  lhu   $t9, 0x63d2($s0)
/* B809A8 80109808 264F0001 */  addiu $t7, $s2, 1
/* B809AC 8010980C 572F0012 */  bnel  $t9, $t7, .L80109858
/* B809B0 80109810 8FAF0058 */   lw    $t7, 0x58($sp)
/* B809B4 80109814 960E63EA */  lhu   $t6, 0x63ea($s0)
/* B809B8 80109818 961863E8 */  lhu   $t8, 0x63e8($s0)
/* B809BC 8010981C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B809C0 80109820 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B809C4 80109824 15D8000B */  bne   $t6, $t8, .L80109854
/* B809C8 80109828 00002025 */   move  $a0, $zero
/* B809CC 8010982C 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B809D0 80109830 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B809D4 80109834 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B809D8 80109838 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B809DC 8010983C AFB90014 */  sw    $t9, 0x14($sp)
/* B809E0 80109840 24060004 */  li    $a2, 4
/* B809E4 80109844 AFA70010 */  sw    $a3, 0x10($sp)
/* B809E8 80109848 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B809EC 8010984C AFA20050 */   sw    $v0, 0x50($sp)
/* B809F0 80109850 8FA20050 */  lw    $v0, 0x50($sp)
.L80109854:
/* B809F4 80109854 8FAF0058 */  lw    $t7, 0x58($sp)
.L80109858:
/* B809F8 80109858 97AE0128 */  lhu   $t6, 0x128($sp)
/* B809FC 8010985C 8FA40138 */  lw    $a0, 0x138($sp)
/* B80A00 80109860 27A60120 */  addiu $a2, $sp, 0x120
/* B80A04 80109864 01EE2821 */  addu  $a1, $t7, $t6
/* B80A08 80109868 24A50008 */  addiu $a1, $a1, 8
/* B80A0C 8010986C 0C041BC7 */  jal   func_80106F1C
/* B80A10 80109870 AFA20050 */   sw    $v0, 0x50($sp)
/* B80A14 80109874 97B80128 */  lhu   $t8, 0x128($sp)
/* B80A18 80109878 8EEF0000 */  lw    $t7, ($s7)
/* B80A1C 8010987C 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* B80A20 80109880 27190080 */  addiu $t9, $t8, 0x80
/* B80A24 80109884 A7B90128 */  sh    $t9, 0x128($sp)
/* B80A28 80109888 85EE0B06 */  lh    $t6, 0xb06($t7)
/* B80A2C 8010988C 44814000 */  mtc1  $at, $f8
/* B80A30 80109890 8FA20050 */  lw    $v0, 0x50($sp)
/* B80A34 80109894 448E2000 */  mtc1  $t6, $f4
/* B80A38 80109898 3C018015 */  lui   $at, %hi(D_80153980)
/* B80A3C 8010989C 0002C080 */  sll   $t8, $v0, 2
/* B80A40 801098A0 468021A0 */  cvt.s.w $f6, $f4
/* B80A44 801098A4 00380821 */  addu  $at, $at, $t8
/* B80A48 801098A8 C4303980 */  lwc1  $f16, %lo(D_80153980)($at)
/* B80A4C 801098AC 860E63D8 */  lh    $t6, 0x63d8($s0)
/* B80A50 801098B0 26217FFF */  addiu $at, $s1, 0x7fff
/* B80A54 801098B4 24080009 */  li    $t0, 9
/* B80A58 801098B8 46083283 */  div.s $f10, $f6, $f8
/* B80A5C 801098BC 2409000A */  li    $t1, 10
/* B80A60 801098C0 240A000B */  li    $t2, 11
/* B80A64 801098C4 240B000C */  li    $t3, 12
/* B80A68 801098C8 240C000D */  li    $t4, 13
/* B80A6C 801098CC 240D0004 */  li    $t5, 4
/* B80A70 801098D0 460A8482 */  mul.s $f18, $f16, $f10
/* B80A74 801098D4 4600910D */  trunc.w.s $f4, $f18
/* B80A78 801098D8 440F2000 */  mfc1  $t7, $f4
/* B80A7C 801098DC 00000000 */  nop   
/* B80A80 801098E0 01CFC021 */  addu  $t8, $t6, $t7
/* B80A84 801098E4 A43863D9 */  sh    $t8, 0x63d9($at)
/* B80A88 801098E8 966363D2 */  lhu   $v1, 0x63d2($s3)
.L801098EC:
/* B80A8C 801098EC 26520001 */  addiu $s2, $s2, 1
/* B80A90 801098F0 3252FFFF */  andi  $s2, $s2, 0xffff
/* B80A94 801098F4 0243082A */  slt   $at, $s2, $v1
/* B80A98 801098F8 5420FBB1 */  bnezl $at, .L801087C0
/* B80A9C 801098FC 02327021 */   addu  $t6, $s1, $s2
.L80109900:
/* B80AA0 80109900 960263E8 */  lhu   $v0, 0x63e8($s0)
/* B80AA4 80109904 14400006 */  bnez  $v0, .L80109920
/* B80AA8 80109908 26590001 */   addiu $t9, $s2, 1
/* B80AAC 8010990C 26217FFF */  addiu $at, $s1, 0x7fff
/* B80AB0 80109910 A43963D3 */  sh    $t9, 0x63d3($at)
/* B80AB4 80109914 960E63EA */  lhu   $t6, 0x63ea($s0)
/* B80AB8 80109918 10000004 */  b     .L8010992C
/* B80ABC 8010991C A42E63E9 */   sh    $t6, 0x63e9($at)
.L80109920:
/* B80AC0 80109920 244FFFFF */  addiu $t7, $v0, -1
/* B80AC4 80109924 26217FFF */  addiu $at, $s1, 0x7fff
/* B80AC8 80109928 A42F63E9 */  sh    $t7, 0x63e9($at)
.L8010992C:
/* B80ACC 8010992C 8FB80120 */  lw    $t8, 0x120($sp)
/* B80AD0 80109930 8FB9013C */  lw    $t9, 0x13c($sp)
/* B80AD4 80109934 AF380000 */  sw    $t8, ($t9)
.L80109938:
/* B80AD8 80109938 8FBF0044 */  lw    $ra, 0x44($sp)
/* B80ADC 8010993C 8FB00020 */  lw    $s0, 0x20($sp)
/* B80AE0 80109940 8FB10024 */  lw    $s1, 0x24($sp)
/* B80AE4 80109944 8FB20028 */  lw    $s2, 0x28($sp)
/* B80AE8 80109948 8FB3002C */  lw    $s3, 0x2c($sp)
/* B80AEC 8010994C 8FB40030 */  lw    $s4, 0x30($sp)
/* B80AF0 80109950 8FB50034 */  lw    $s5, 0x34($sp)
/* B80AF4 80109954 8FB60038 */  lw    $s6, 0x38($sp)
/* B80AF8 80109958 8FB7003C */  lw    $s7, 0x3c($sp)
/* B80AFC 8010995C 8FBE0040 */  lw    $fp, 0x40($sp)
/* B80B00 80109960 03E00008 */  jr    $ra
/* B80B04 80109964 27BD0138 */   addiu $sp, $sp, 0x138

glabel func_80109968
/* B80B08 80109968 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B80B0C 8010996C AFB00020 */  sw    $s0, 0x20($sp)
/* B80B10 80109970 30B0FFFF */  andi  $s0, $a1, 0xffff
/* B80B14 80109974 24010076 */  li    $at, 118
/* B80B18 80109978 AFBF002C */  sw    $ra, 0x2c($sp)
/* B80B1C 8010997C AFB20028 */  sw    $s2, 0x28($sp)
/* B80B20 80109980 AFB10024 */  sw    $s1, 0x24($sp)
/* B80B24 80109984 AFA40030 */  sw    $a0, 0x30($sp)
/* B80B28 80109988 AFA50034 */  sw    $a1, 0x34($sp)
/* B80B2C 8010998C 16010007 */  bne   $s0, $at, .L801099AC
/* B80B30 80109990 AFA60038 */   sw    $a2, 0x38($sp)
/* B80B34 80109994 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* B80B38 80109998 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* B80B3C 8010999C 240300FF */  li    $v1, 255
/* B80B40 801099A0 00811021 */  addu  $v0, $a0, $at
/* B80B44 801099A4 A043015E */  sb    $v1, 0x15e($v0)
/* B80B48 801099A8 A043015F */  sb    $v1, 0x15f($v0)
.L801099AC:
/* B80B4C 801099AC 2A010066 */  slti  $at, $s0, 0x66
/* B80B50 801099B0 10200029 */  beqz  $at, .L80109A58
/* B80B54 801099B4 3C038016 */   lui   $v1, %hi(gGameInfo)
/* B80B58 801099B8 3C0F8016 */  lui   $t7, %hi(gSaveContext+0x1409) # $t7, 0x8016
/* B80B5C 801099BC 91EFFA69 */  lbu   $t7, %lo(gSaveContext+0x1409)($t7)
/* B80B60 801099C0 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B80B64 801099C4 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* B80B68 801099C8 8C620000 */  lw    $v0, ($v1)
/* B80B6C 801099CC 3C198015 */  lui   $t9, %hi(D_80153C40)
/* B80B70 801099D0 000FC040 */  sll   $t8, $t7, 1
/* B80B74 801099D4 0338C821 */  addu  $t9, $t9, $t8
/* B80B78 801099D8 87393C40 */  lh    $t9, %lo(D_80153C40)($t9)
/* B80B7C 801099DC 844E0B00 */  lh    $t6, 0xb00($v0)
/* B80B80 801099E0 240C0020 */  li    $t4, 32
/* B80B84 801099E4 34018000 */  li    $at, 32768
/* B80B88 801099E8 01D94023 */  subu  $t0, $t6, $t9
/* B80B8C 801099EC A4480522 */  sh    $t0, 0x522($v0)
/* B80B90 801099F0 87A9003A */  lh    $t1, 0x3a($sp)
/* B80B94 801099F4 8C6B0000 */  lw    $t3, ($v1)
/* B80B98 801099F8 3C180075 */  lui   $t8, %hi(_icon_item_staticSegmentRomStart) # $t8, 0x75
/* B80B9C 801099FC 252A0006 */  addiu $t2, $t1, 6
/* B80BA0 80109A00 A56A0524 */  sh    $t2, 0x524($t3)
/* B80BA4 80109A04 8C6D0000 */  lw    $t5, ($v1)
/* B80BA8 80109A08 2718C000 */  addiu $t8, %lo(_icon_item_staticSegmentRomStart) # addiu $t8, $t8, -0x4000
/* B80BAC 80109A0C 240E05C1 */  li    $t6, 1473
/* B80BB0 80109A10 A5AC052A */  sh    $t4, 0x52a($t5)
/* B80BB4 80109A14 8FB10030 */  lw    $s1, 0x30($sp)
/* B80BB8 80109A18 00107B00 */  sll   $t7, $s0, 0xc
/* B80BBC 80109A1C 3C078015 */  lui   $a3, %hi(D_80154054) # $a3, 0x8015
/* B80BC0 80109A20 263120D8 */  addiu $s1, $s1, 0x20d8
/* B80BC4 80109A24 02219021 */  addu  $s2, $s1, $at
/* B80BC8 80109A28 8E4462B0 */  lw    $a0, 0x62b0($s2)
/* B80BCC 80109A2C AFAE0010 */  sw    $t6, 0x10($sp)
/* B80BD0 80109A30 24E74054 */  addiu $a3, %lo(D_80154054) # addiu $a3, $a3, 0x4054
/* B80BD4 80109A34 01F82821 */  addu  $a1, $t7, $t8
/* B80BD8 80109A38 24061000 */  li    $a2, 4096
/* B80BDC 80109A3C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B80BE0 80109A40 24841000 */   addiu $a0, $a0, 0x1000
/* B80BE4 80109A44 3C048015 */  lui   $a0, %hi(D_80154068) # $a0, 0x8015
/* B80BE8 80109A48 0C00084C */  jal   osSyncPrintf
/* B80BEC 80109A4C 24844068 */   addiu $a0, %lo(D_80154068) # addiu $a0, $a0, 0x4068
/* B80BF0 80109A50 1000002F */  b     .L80109B10
/* B80BF4 80109A54 964B63CE */   lhu   $t3, 0x63ce($s2)
.L80109A58:
/* B80BF8 80109A58 3C088016 */  lui   $t0, %hi(gSaveContext+0x1409) # $t0, 0x8016
/* B80BFC 80109A5C 9108FA69 */  lbu   $t0, %lo(gSaveContext+0x1409)($t0)
/* B80C00 80109A60 2463FA90 */  addiu $v1, %lo(gGameInfo)
/* B80C04 80109A64 8C620000 */  lw    $v0, ($v1)
/* B80C08 80109A68 3C0A8015 */  lui   $t2, %hi(D_80153C48)
/* B80C0C 80109A6C 00084840 */  sll   $t1, $t0, 1
/* B80C10 80109A70 01495021 */  addu  $t2, $t2, $t1
/* B80C14 80109A74 854A3C48 */  lh    $t2, %lo(D_80153C48)($t2)
/* B80C18 80109A78 84590B00 */  lh    $t9, 0xb00($v0)
/* B80C1C 80109A7C 24180018 */  li    $t8, 24
/* B80C20 80109A80 34018000 */  li    $at, 32768
/* B80C24 80109A84 032A5823 */  subu  $t3, $t9, $t2
/* B80C28 80109A88 A44B0522 */  sh    $t3, 0x522($v0)
/* B80C2C 80109A8C 87AC003A */  lh    $t4, 0x3a($sp)
/* B80C30 80109A90 8C6F0000 */  lw    $t7, ($v1)
/* B80C34 80109A94 001040C0 */  sll   $t0, $s0, 3
/* B80C38 80109A98 258D000A */  addiu $t5, $t4, 0xa
/* B80C3C 80109A9C A5ED0524 */  sh    $t5, 0x524($t7)
/* B80C40 80109AA0 8C6E0000 */  lw    $t6, ($v1)
/* B80C44 80109AA4 01104021 */  addu  $t0, $t0, $s0
/* B80C48 80109AA8 00084200 */  sll   $t0, $t0, 8
/* B80C4C 80109AAC A5D8052A */  sh    $t8, 0x52a($t6)
/* B80C50 80109AB0 8FB10030 */  lw    $s1, 0x30($sp)
/* B80C54 80109AB4 3C19007D */  lui   $t9, %hi(_icon_item_24_staticSegmentRomStart) # $t9, 0x7d
/* B80C58 80109AB8 27396000 */  addiu $t9, %lo(_icon_item_24_staticSegmentRomStart) # addiu $t9, $t9, 0x6000
/* B80C5C 80109ABC 263120D8 */  addiu $s1, $s1, 0x20d8
/* B80C60 80109AC0 02219021 */  addu  $s2, $s1, $at
/* B80C64 80109AC4 3C01FFFC */  lui   $at, (0xFFFC6A00 >> 16) # lui $at, 0xfffc
/* B80C68 80109AC8 8E4462B0 */  lw    $a0, 0x62b0($s2)
/* B80C6C 80109ACC 34216A00 */  ori   $at, (0xFFFC6A00 & 0xFFFF) # ori $at, $at, 0x6a00
/* B80C70 80109AD0 01014821 */  addu  $t1, $t0, $at
/* B80C74 80109AD4 240A05CA */  li    $t2, 1482
/* B80C78 80109AD8 3C078015 */  lui   $a3, %hi(D_80154078) # $a3, 0x8015
/* B80C7C 80109ADC 24E74078 */  addiu $a3, %lo(D_80154078) # addiu $a3, $a3, 0x4078
/* B80C80 80109AE0 AFAA0010 */  sw    $t2, 0x10($sp)
/* B80C84 80109AE4 01392821 */  addu  $a1, $t1, $t9
/* B80C88 80109AE8 24060900 */  li    $a2, 2304
/* B80C8C 80109AEC 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B80C90 80109AF0 24841000 */   addiu $a0, $a0, 0x1000
/* B80C94 80109AF4 3C048015 */  lui   $a0, %hi(D_8015408C) # $a0, 0x8015
/* B80C98 80109AF8 2484408C */  addiu $a0, %lo(D_8015408C) # addiu $a0, $a0, 0x408c
/* B80C9C 80109AFC 02002825 */  move  $a1, $s0
/* B80CA0 80109B00 2606FF94 */  addiu $a2, $s0, -0x6c
/* B80CA4 80109B04 0C00084C */  jal   osSyncPrintf
/* B80CA8 80109B08 24070054 */   li    $a3, 84
/* B80CAC 80109B0C 964B63CE */  lhu   $t3, 0x63ce($s2)
.L80109B10:
/* B80CB0 80109B10 26217FFF */  addiu $at, $s1, 0x7fff
/* B80CB4 80109B14 240D0001 */  li    $t5, 1
/* B80CB8 80109B18 256C0001 */  addiu $t4, $t3, 1
/* B80CBC 80109B1C A42C63CF */  sh    $t4, 0x63cf($at)
/* B80CC0 80109B20 A02D63E7 */  sb    $t5, 0x63e7($at)
/* B80CC4 80109B24 8FBF002C */  lw    $ra, 0x2c($sp)
/* B80CC8 80109B28 8FB20028 */  lw    $s2, 0x28($sp)
/* B80CCC 80109B2C 8FB10024 */  lw    $s1, 0x24($sp)
/* B80CD0 80109B30 8FB00020 */  lw    $s0, 0x20($sp)
/* B80CD4 80109B34 03E00008 */  jr    $ra
/* B80CD8 80109B38 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_80109B3C
/* B80CDC 80109B3C 27BDFF68 */  addiu $sp, $sp, -0x98
/* B80CE0 80109B40 3C010001 */  lui   $at, 1
/* B80CE4 80109B44 AFBF0044 */  sw    $ra, 0x44($sp)
/* B80CE8 80109B48 AFBE0040 */  sw    $fp, 0x40($sp)
/* B80CEC 80109B4C AFB7003C */  sw    $s7, 0x3c($sp)
/* B80CF0 80109B50 AFB60038 */  sw    $s6, 0x38($sp)
/* B80CF4 80109B54 AFB50034 */  sw    $s5, 0x34($sp)
/* B80CF8 80109B58 AFB40030 */  sw    $s4, 0x30($sp)
/* B80CFC 80109B5C AFB3002C */  sw    $s3, 0x2c($sp)
/* B80D00 80109B60 AFB20028 */  sw    $s2, 0x28($sp)
/* B80D04 80109B64 AFB10024 */  sw    $s1, 0x24($sp)
/* B80D08 80109B68 AFB00020 */  sw    $s0, 0x20($sp)
/* B80D0C 80109B6C A7A00086 */  sh    $zero, 0x86($sp)
/* B80D10 80109B70 00240821 */  addu  $at, $at, $a0
/* B80D14 80109B74 3C070001 */  lui   $a3, 1
/* B80D18 80109B78 00E43821 */  addu  $a3, $a3, $a0
/* B80D1C 80109B7C A42004C0 */  sh    $zero, 0x4c0($at)
/* B80D20 80109B80 94E704C0 */  lhu   $a3, 0x4c0($a3)
/* B80D24 80109B84 3C010001 */  lui   $at, 1
/* B80D28 80109B88 00240821 */  addu  $at, $at, $a0
/* B80D2C 80109B8C A42704C2 */  sh    $a3, 0x4c2($at)
/* B80D30 80109B90 3C010001 */  lui   $at, 1
/* B80D34 80109B94 00240821 */  addu  $at, $at, $a0
/* B80D38 80109B98 A42704AE */  sh    $a3, 0x4ae($at)
/* B80D3C 80109B9C 3C018015 */  lui   $at, %hi(D_8014B2F0) # $at, 0x8015
/* B80D40 80109BA0 A420B2F0 */  sh    $zero, %lo(D_8014B2F0)($at)
/* B80D44 80109BA4 34018000 */  li    $at, 32768
/* B80D48 80109BA8 249720D8 */  addiu $s7, $a0, 0x20d8
/* B80D4C 80109BAC 02E17021 */  addu  $t6, $s7, $at
/* B80D50 80109BB0 0000A825 */  move  $s5, $zero
/* B80D54 80109BB4 0000B025 */  move  $s6, $zero
/* B80D58 80109BB8 AFAE0054 */  sw    $t6, 0x54($sp)
/* B80D5C 80109BBC AFA40098 */  sw    $a0, 0x98($sp)
/* B80D60 80109BC0 249E2200 */  addiu $fp, $a0, 0x2200
.L80109BC4:
/* B80D64 80109BC4 8FAF0054 */  lw    $t7, 0x54($sp)
/* B80D68 80109BC8 34028000 */  li    $v0, 32768
/* B80D6C 80109BCC 02F65021 */  addu  $t2, $s7, $s6
/* B80D70 80109BD0 95F863CE */  lhu   $t8, 0x63ce($t7)
/* B80D74 80109BD4 01425821 */  addu  $t3, $t2, $v0
/* B80D78 80109BD8 24010004 */  li    $at, 4
/* B80D7C 80109BDC 03D8C821 */  addu  $t9, $fp, $t8
/* B80D80 80109BE0 03224821 */  addu  $t1, $t9, $v0
/* B80D84 80109BE4 91325C88 */  lbu   $s2, 0x5c88($t1)
/* B80D88 80109BE8 A1726306 */  sb    $s2, 0x6306($t3)
/* B80D8C 80109BEC 325100FF */  andi  $s1, $s2, 0xff
/* B80D90 80109BF0 1241000B */  beq   $s2, $at, .L80109C20
/* B80D94 80109BF4 02408025 */   move  $s0, $s2
/* B80D98 80109BF8 24010007 */  li    $at, 7
/* B80D9C 80109BFC 12410008 */  beq   $s2, $at, .L80109C20
/* B80DA0 80109C00 2401000C */   li    $at, 12
/* B80DA4 80109C04 12410006 */  beq   $s2, $at, .L80109C20
/* B80DA8 80109C08 2401000B */   li    $at, 11
/* B80DAC 80109C0C 12410004 */  beq   $s2, $at, .L80109C20
/* B80DB0 80109C10 24140008 */   li    $s4, 8
/* B80DB4 80109C14 24010002 */  li    $at, 2
/* B80DB8 80109C18 1641007B */  bne   $s2, $at, .L80109E08
/* B80DBC 80109C1C 00009825 */   move  $s3, $zero
.L80109C20:
/* B80DC0 80109C20 26E17FFF */  addiu $at, $s7, 0x7fff
/* B80DC4 80109C24 240C0006 */  li    $t4, 6
/* B80DC8 80109C28 240D0001 */  li    $t5, 1
/* B80DCC 80109C2C A02C6305 */  sb    $t4, 0x6305($at)
/* B80DD0 80109C30 A42D63D3 */  sh    $t5, 0x63d3($at)
/* B80DD4 80109C34 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B80DD8 80109C38 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B80DDC 80109C3C 3C048015 */  lui   $a0, %hi(D_801540A8) # $a0, 0x8015
/* B80DE0 80109C40 248440A8 */  addiu $a0, %lo(D_801540A8) # addiu $a0, $a0, 0x40a8
/* B80DE4 80109C44 844E0F16 */  lh    $t6, 0xf16($v0)
/* B80DE8 80109C48 25CF0008 */  addiu $t7, $t6, 8
/* B80DEC 80109C4C A44F0B02 */  sh    $t7, 0xb02($v0)
/* B80DF0 80109C50 0C00084C */  jal   osSyncPrintf
/* B80DF4 80109C54 87A50086 */   lh    $a1, 0x86($sp)
/* B80DF8 80109C58 8FB80054 */  lw    $t8, 0x54($sp)
/* B80DFC 80109C5C 24010004 */  li    $at, 4
/* B80E00 80109C60 87A90086 */  lh    $t1, 0x86($sp)
/* B80E04 80109C64 931962FD */  lbu   $t9, 0x62fd($t8)
/* B80E08 80109C68 5321001A */  beql  $t9, $at, .L80109CD4
/* B80E0C 80109C6C 24010007 */   li    $at, 7
/* B80E10 80109C70 15200007 */  bnez  $t1, .L80109C90
/* B80E14 80109C74 87AC0086 */   lh    $t4, 0x86($sp)
/* B80E18 80109C78 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B80E1C 80109C7C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B80E20 80109C80 844A0F16 */  lh    $t2, 0xf16($v0)
/* B80E24 80109C84 254B001A */  addiu $t3, $t2, 0x1a
/* B80E28 80109C88 10000011 */  b     .L80109CD0
/* B80E2C 80109C8C A44B0B02 */   sh    $t3, 0xb02($v0)
.L80109C90:
/* B80E30 80109C90 24010001 */  li    $at, 1
/* B80E34 80109C94 15810007 */  bne   $t4, $at, .L80109CB4
/* B80E38 80109C98 87AF0086 */   lh    $t7, 0x86($sp)
/* B80E3C 80109C9C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B80E40 80109CA0 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B80E44 80109CA4 844D0F16 */  lh    $t5, 0xf16($v0)
/* B80E48 80109CA8 25AE0014 */  addiu $t6, $t5, 0x14
/* B80E4C 80109CAC 10000008 */  b     .L80109CD0
/* B80E50 80109CB0 A44E0B02 */   sh    $t6, 0xb02($v0)
.L80109CB4:
/* B80E54 80109CB4 24010002 */  li    $at, 2
/* B80E58 80109CB8 15E10005 */  bne   $t7, $at, .L80109CD0
/* B80E5C 80109CBC 3C028016 */   lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B80E60 80109CC0 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B80E64 80109CC4 84580F16 */  lh    $t8, 0xf16($v0)
/* B80E68 80109CC8 27190010 */  addiu $t9, $t8, 0x10
/* B80E6C 80109CCC A4590B02 */  sh    $t9, 0xb02($v0)
.L80109CD0:
/* B80E70 80109CD0 24010007 */  li    $at, 7
.L80109CD4:
/* B80E74 80109CD4 1601002D */  bne   $s0, $at, .L80109D8C
/* B80E78 80109CD8 8FA90054 */   lw    $t1, 0x54($sp)
/* B80E7C 80109CDC 952363CE */  lhu   $v1, 0x63ce($t1)
/* B80E80 80109CE0 34088000 */  li    $t0, 32768
/* B80E84 80109CE4 3C048015 */  lui   $a0, %hi(D_801540B4) # $a0, 0x8015
/* B80E88 80109CE8 03C35021 */  addu  $t2, $fp, $v1
/* B80E8C 80109CEC 03C36021 */  addu  $t4, $fp, $v1
/* B80E90 80109CF0 01881021 */  addu  $v0, $t4, $t0
/* B80E94 80109CF4 01485821 */  addu  $t3, $t2, $t0
/* B80E98 80109CF8 91655C88 */  lbu   $a1, 0x5c88($t3)
/* B80E9C 80109CFC 90465C89 */  lbu   $a2, 0x5c89($v0)
/* B80EA0 80109D00 90475C8A */  lbu   $a3, 0x5c8a($v0)
/* B80EA4 80109D04 0C00084C */  jal   osSyncPrintf
/* B80EA8 80109D08 248440B4 */   addiu $a0, %lo(D_801540B4) # addiu $a0, $a0, 0x40b4
/* B80EAC 80109D0C 8FA40054 */  lw    $a0, 0x54($sp)
/* B80EB0 80109D10 34038000 */  li    $v1, 32768
/* B80EB4 80109D14 26C20001 */  addiu $v0, $s6, 1
/* B80EB8 80109D18 948D63CE */  lhu   $t5, 0x63ce($a0)
/* B80EBC 80109D1C 00023C00 */  sll   $a3, $v0, 0x10
/* B80EC0 80109D20 00073C03 */  sra   $a3, $a3, 0x10
/* B80EC4 80109D24 03CD7021 */  addu  $t6, $fp, $t5
/* B80EC8 80109D28 01C37821 */  addu  $t7, $t6, $v1
/* B80ECC 80109D2C 91F25C89 */  lbu   $s2, 0x5c89($t7)
/* B80ED0 80109D30 02E7C021 */  addu  $t8, $s7, $a3
/* B80ED4 80109D34 0303C821 */  addu  $t9, $t8, $v1
/* B80ED8 80109D38 A3326306 */  sb    $s2, 0x6306($t9)
/* B80EDC 80109D3C 948963CE */  lhu   $t1, 0x63ce($a0)
/* B80EE0 80109D40 0040B025 */  move  $s6, $v0
/* B80EE4 80109D44 26C20001 */  addiu $v0, $s6, 1
/* B80EE8 80109D48 03C95021 */  addu  $t2, $fp, $t1
/* B80EEC 80109D4C 01435821 */  addu  $t3, $t2, $v1
/* B80EF0 80109D50 00023C00 */  sll   $a3, $v0, 0x10
/* B80EF4 80109D54 916C5C8A */  lbu   $t4, 0x5c8a($t3)
/* B80EF8 80109D58 00073C03 */  sra   $a3, $a3, 0x10
/* B80EFC 80109D5C 0002B400 */  sll   $s6, $v0, 0x10
/* B80F00 80109D60 0016B403 */  sra   $s6, $s6, 0x10
/* B80F04 80109D64 02E76821 */  addu  $t5, $s7, $a3
/* B80F08 80109D68 01A37021 */  addu  $t6, $t5, $v1
/* B80F0C 80109D6C 02F67821 */  addu  $t7, $s7, $s6
/* B80F10 80109D70 01E3C021 */  addu  $t8, $t7, $v1
/* B80F14 80109D74 A1CC6306 */  sb    $t4, 0x6306($t6)
/* B80F18 80109D78 93196306 */  lbu   $t9, 0x6306($t8)
/* B80F1C 80109D7C 00125200 */  sll   $t2, $s2, 8
/* B80F20 80109D80 3C018015 */  lui   $at, %hi(D_8014B304) # $at, 0x8015
/* B80F24 80109D84 032A5825 */  or    $t3, $t9, $t2
/* B80F28 80109D88 A42BB304 */  sh    $t3, %lo(D_8014B304)($at)
.L80109D8C:
/* B80F2C 80109D8C 2401000C */  li    $at, 12
/* B80F30 80109D90 16210012 */  bne   $s1, $at, .L80109DDC
/* B80F34 80109D94 34038000 */   li    $v1, 32768
/* B80F38 80109D98 8FA40054 */  lw    $a0, 0x54($sp)
/* B80F3C 80109D9C 26C20001 */  addiu $v0, $s6, 1
/* B80F40 80109DA0 00023C00 */  sll   $a3, $v0, 0x10
/* B80F44 80109DA4 948D63CE */  lhu   $t5, 0x63ce($a0)
/* B80F48 80109DA8 00073C03 */  sra   $a3, $a3, 0x10
/* B80F4C 80109DAC 02E7C021 */  addu  $t8, $s7, $a3
/* B80F50 80109DB0 03CD6021 */  addu  $t4, $fp, $t5
/* B80F54 80109DB4 01837021 */  addu  $t6, $t4, $v1
/* B80F58 80109DB8 91CF5C89 */  lbu   $t7, 0x5c89($t6)
/* B80F5C 80109DBC 03034821 */  addu  $t1, $t8, $v1
/* B80F60 80109DC0 0002B400 */  sll   $s6, $v0, 0x10
/* B80F64 80109DC4 A12F6306 */  sb    $t7, 0x6306($t1)
/* B80F68 80109DC8 949963CE */  lhu   $t9, 0x63ce($a0)
/* B80F6C 80109DCC 26E17FFF */  addiu $at, $s7, 0x7fff
/* B80F70 80109DD0 0016B403 */  sra   $s6, $s6, 0x10
/* B80F74 80109DD4 272A0002 */  addiu $t2, $t9, 2
/* B80F78 80109DD8 A42A63CF */  sh    $t2, 0x63cf($at)
.L80109DDC:
/* B80F7C 80109DDC 26E17FFF */  addiu $at, $s7, 0x7fff
/* B80F80 80109DE0 A43663D5 */  sh    $s6, 0x63d5($at)
/* B80F84 80109DE4 3C0B8015 */  lui   $t3, %hi(D_8014B300) # $t3, 0x8015
/* B80F88 80109DE8 916BB300 */  lbu   $t3, %lo(D_8014B300)($t3)
/* B80F8C 80109DEC 8FAD0054 */  lw    $t5, 0x54($sp)
/* B80F90 80109DF0 516004A8 */  beql  $t3, $zero, .L8010B094
/* B80F94 80109DF4 8FBF0044 */   lw    $ra, 0x44($sp)
/* B80F98 80109DF8 95AC63D4 */  lhu   $t4, 0x63d4($t5)
/* B80F9C 80109DFC 26E17FFF */  addiu $at, $s7, 0x7fff
/* B80FA0 80109E00 100004A3 */  b     .L8010B090
/* B80FA4 80109E04 A42C63D3 */   sh    $t4, 0x63d3($at)
.L80109E08:
/* B80FA8 80109E08 2401000F */  li    $at, 15
/* B80FAC 80109E0C 16010057 */  bne   $s0, $at, .L80109F6C
/* B80FB0 80109E10 3C048015 */   lui   $a0, %hi(D_801540CC) # $a0, 0x8015
.L80109E14:
/* B80FB4 80109E14 3C0E8016 */  lui   $t6, %hi(gSaveContext+0x23)
/* B80FB8 80109E18 01D47021 */  addu  $t6, $t6, $s4
/* B80FBC 80109E1C 91CEE683 */  lbu   $t6, %lo(gSaveContext+0x23)($t6)
/* B80FC0 80109E20 2401003E */  li    $at, 62
/* B80FC4 80109E24 15C10006 */  bne   $t6, $at, .L80109E40
/* B80FC8 80109E28 00000000 */   nop   
/* B80FCC 80109E2C 2694FFFF */  addiu $s4, $s4, -1
/* B80FD0 80109E30 0014A400 */  sll   $s4, $s4, 0x10
/* B80FD4 80109E34 0014A403 */  sra   $s4, $s4, 0x10
/* B80FD8 80109E38 1E80FFF6 */  bgtz  $s4, .L80109E14
/* B80FDC 80109E3C 00000000 */   nop   
.L80109E40:
/* B80FE0 80109E40 0C00084C */  jal   osSyncPrintf
/* B80FE4 80109E44 248440CC */   addiu $a0, %lo(D_801540CC) # addiu $a0, $a0, 0x40cc
/* B80FE8 80109E48 1A800044 */  blez  $s4, .L80109F5C
.L80109E4C:
/* B80FEC 80109E4C 3C118016 */   lui   $s1, %hi(gSaveContext+0x24)
/* B80FF0 80109E50 02338821 */  addu  $s1, $s1, $s3
/* B80FF4 80109E54 9231E684 */  lbu   $s1, %lo(gSaveContext+0x24)($s1)
/* B80FF8 80109E58 02F69021 */  addu  $s2, $s7, $s6
/* B80FFC 80109E5C 34018000 */  li    $at, 32768
/* B81000 80109E60 02419021 */  addu  $s2, $s2, $at
/* B81004 80109E64 2401003E */  li    $at, 62
/* B81008 80109E68 16210004 */  bne   $s1, $at, .L80109E7C
/* B8100C 80109E6C 02208025 */   move  $s0, $s1
/* B81010 80109E70 24110020 */  li    $s1, 32
/* B81014 80109E74 10000024 */  b     .L80109F08
/* B81018 80109E78 24100020 */   li    $s0, 32
.L80109E7C:
/* B8101C 80109E7C 24010040 */  li    $at, 64
/* B81020 80109E80 56010005 */  bnel  $s0, $at, .L80109E98
/* B81024 80109E84 2401003F */   li    $at, 63
/* B81028 80109E88 2411002E */  li    $s1, 46
/* B8102C 80109E8C 1000001E */  b     .L80109F08
/* B81030 80109E90 2410002E */   li    $s0, 46
/* B81034 80109E94 2401003F */  li    $at, 63
.L80109E98:
/* B81038 80109E98 56010005 */  bnel  $s0, $at, .L80109EB0
/* B8103C 80109E9C 2A01000A */   slti  $at, $s0, 0xa
/* B81040 80109EA0 2411002D */  li    $s1, 45
/* B81044 80109EA4 10000018 */  b     .L80109F08
/* B81048 80109EA8 2410002D */   li    $s0, 45
/* B8104C 80109EAC 2A01000A */  slti  $at, $s0, 0xa
.L80109EB0:
/* B81050 80109EB0 50200007 */  beql  $at, $zero, .L80109ED0
/* B81054 80109EB4 2A010024 */   slti  $at, $s0, 0x24
/* B81058 80109EB8 02008825 */  move  $s1, $s0
/* B8105C 80109EBC 26310030 */  addiu $s1, $s1, 0x30
/* B81060 80109EC0 323100FF */  andi  $s1, $s1, 0xff
/* B81064 80109EC4 10000010 */  b     .L80109F08
/* B81068 80109EC8 02208025 */   move  $s0, $s1
/* B8106C 80109ECC 2A010024 */  slti  $at, $s0, 0x24
.L80109ED0:
/* B81070 80109ED0 50200007 */  beql  $at, $zero, .L80109EF0
/* B81074 80109ED4 2A01003E */   slti  $at, $s0, 0x3e
/* B81078 80109ED8 02008825 */  move  $s1, $s0
/* B8107C 80109EDC 26310037 */  addiu $s1, $s1, 0x37
/* B81080 80109EE0 323100FF */  andi  $s1, $s1, 0xff
/* B81084 80109EE4 10000008 */  b     .L80109F08
/* B81088 80109EE8 02208025 */   move  $s0, $s1
/* B8108C 80109EEC 2A01003E */  slti  $at, $s0, 0x3e
.L80109EF0:
/* B81090 80109EF0 50200006 */  beql  $at, $zero, .L80109F0C
/* B81094 80109EF4 24010020 */   li    $at, 32
/* B81098 80109EF8 02008825 */  move  $s1, $s0
/* B8109C 80109EFC 2631003D */  addiu $s1, $s1, 0x3d
/* B810A0 80109F00 323100FF */  andi  $s1, $s1, 0xff
/* B810A4 80109F04 02208025 */  move  $s0, $s1
.L80109F08:
/* B810A8 80109F08 24010020 */  li    $at, 32
.L80109F0C:
/* B810AC 80109F0C 12010006 */  beq   $s0, $at, .L80109F28
/* B810B0 80109F10 03C02025 */   move  $a0, $fp
/* B810B4 80109F14 2605FFE0 */  addiu $a1, $s0, -0x20
/* B810B8 80109F18 30A500FF */  andi  $a1, $a1, 0xff
/* B810BC 80109F1C 0C01BB98 */  jal   func_8006EE60
/* B810C0 80109F20 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B810C4 80109F24 26B50080 */  addiu $s5, $s5, 0x80
.L80109F28:
/* B810C8 80109F28 3C048015 */  lui   $a0, %hi(D_801540D8) # $a0, 0x8015
/* B810CC 80109F2C 248440D8 */  addiu $a0, %lo(D_801540D8) # addiu $a0, $a0, 0x40d8
/* B810D0 80109F30 0C00084C */  jal   osSyncPrintf
/* B810D4 80109F34 02002825 */   move  $a1, $s0
/* B810D8 80109F38 26730001 */  addiu $s3, $s3, 1
/* B810DC 80109F3C 00139C00 */  sll   $s3, $s3, 0x10
/* B810E0 80109F40 00139C03 */  sra   $s3, $s3, 0x10
/* B810E4 80109F44 26D60001 */  addiu $s6, $s6, 1
/* B810E8 80109F48 0274082A */  slt   $at, $s3, $s4
/* B810EC 80109F4C 0016B400 */  sll   $s6, $s6, 0x10
/* B810F0 80109F50 A2516306 */  sb    $s1, 0x6306($s2)
/* B810F4 80109F54 1420FFBD */  bnez  $at, .L80109E4C
/* B810F8 80109F58 0016B403 */   sra   $s6, $s6, 0x10
.L80109F5C:
/* B810FC 80109F5C 26D6FFFF */  addiu $s6, $s6, -1
/* B81100 80109F60 0016B400 */  sll   $s6, $s6, 0x10
/* B81104 80109F64 10000441 */  b     .L8010B06C
/* B81108 80109F68 0016B403 */   sra   $s6, $s6, 0x10
.L80109F6C:
/* B8110C 80109F6C 24010016 */  li    $at, 22
/* B81110 80109F70 12010003 */  beq   $s0, $at, .L80109F80
/* B81114 80109F74 3C048015 */   lui   $a0, %hi(D_801540DC) # $a0, 0x8015
/* B81118 80109F78 24010017 */  li    $at, 23
/* B8111C 80109F7C 16010069 */  bne   $s0, $at, .L8010A124
.L80109F80:
/* B81120 80109F80 248440DC */   addiu $a0, %lo(D_801540DC) # addiu $a0, $a0, 0x40dc
/* B81124 80109F84 0C00084C */  jal   osSyncPrintf
/* B81128 80109F88 00009825 */   move  $s3, $zero
/* B8112C 80109F8C 00001C00 */  sll   $v1, $zero, 0x10
/* B81130 80109F90 00002400 */  sll   $a0, $zero, 0x10
/* B81134 80109F94 24010017 */  li    $at, 23
/* B81138 80109F98 00042403 */  sra   $a0, $a0, 0x10
/* B8113C 80109F9C 00031C03 */  sra   $v1, $v1, 0x10
/* B81140 80109FA0 16010004 */  bne   $s0, $at, .L80109FB4
/* B81144 80109FA4 00002825 */   move  $a1, $zero
/* B81148 80109FA8 3C028016 */  lui   $v0, %hi(gSaveContext+0x13d0) # $v0, 0x8016
/* B8114C 80109FAC 10000003 */  b     .L80109FBC
/* B81150 80109FB0 8442FA30 */   lh    $v0, %lo(gSaveContext+0x13d0)($v0)
.L80109FB4:
/* B81154 80109FB4 3C028016 */  lui   $v0, %hi(D_8015FFC4) # $v0, 0x8016
/* B81158 80109FB8 8442FA34 */  lh    $v0, %lo(gSaveContext+0x13d4)($v0)
.L80109FBC:
/* B8115C 80109FBC 2841003C */  slti  $at, $v0, 0x3c
/* B81160 80109FC0 A7A3007E */  sh    $v1, 0x7e($sp)
/* B81164 80109FC4 14200014 */  bnez  $at, .L8010A018
/* B81168 80109FC8 A7A4007C */   sh    $a0, 0x7c($sp)
/* B8116C 80109FCC 24630001 */  addiu $v1, $v1, 1
.L80109FD0:
/* B81170 80109FD0 00031C00 */  sll   $v1, $v1, 0x10
/* B81174 80109FD4 00031C03 */  sra   $v1, $v1, 0x10
/* B81178 80109FD8 2861000A */  slti  $at, $v1, 0xa
/* B8117C 80109FDC 14200007 */  bnez  $at, .L80109FFC
/* B81180 80109FE0 2442FFC4 */   addiu $v0, %lo(D_8015FFC4) # addiu $v0, $v0, -0x3c
/* B81184 80109FE4 24840001 */  addiu $a0, $a0, 1
/* B81188 80109FE8 2463FFF6 */  addiu $v1, $v1, -0xa
/* B8118C 80109FEC 00042400 */  sll   $a0, $a0, 0x10
/* B81190 80109FF0 00031C00 */  sll   $v1, $v1, 0x10
/* B81194 80109FF4 00042403 */  sra   $a0, $a0, 0x10
/* B81198 80109FF8 00031C03 */  sra   $v1, $v1, 0x10
.L80109FFC:
/* B8119C 80109FFC 00021400 */  sll   $v0, $v0, 0x10
/* B811A0 8010A000 00021403 */  sra   $v0, $v0, 0x10
/* B811A4 8010A004 2841003C */  slti  $at, $v0, 0x3c
/* B811A8 8010A008 5020FFF1 */  beql  $at, $zero, .L80109FD0
/* B811AC 8010A00C 24630001 */   addiu $v1, $v1, 1
/* B811B0 8010A010 A7A4007C */  sh    $a0, 0x7c($sp)
/* B811B4 8010A014 A7A3007E */  sh    $v1, 0x7e($sp)
.L8010A018:
/* B811B8 8010A018 2841000A */  slti  $at, $v0, 0xa
/* B811BC 8010A01C A7A20082 */  sh    $v0, 0x82($sp)
/* B811C0 8010A020 1420000B */  bnez  $at, .L8010A050
/* B811C4 8010A024 A7A50080 */   sh    $a1, 0x80($sp)
.L8010A028:
/* B811C8 8010A028 2442FFF6 */  addiu $v0, $v0, -0xa
/* B811CC 8010A02C 00021400 */  sll   $v0, $v0, 0x10
/* B811D0 8010A030 24A50001 */  addiu $a1, $a1, 1
/* B811D4 8010A034 00021403 */  sra   $v0, $v0, 0x10
/* B811D8 8010A038 2841000A */  slti  $at, $v0, 0xa
/* B811DC 8010A03C 00052C00 */  sll   $a1, $a1, 0x10
/* B811E0 8010A040 1020FFF9 */  beqz  $at, .L8010A028
/* B811E4 8010A044 00052C03 */   sra   $a1, $a1, 0x10
/* B811E8 8010A048 A7A50080 */  sh    $a1, 0x80($sp)
/* B811EC 8010A04C A7A20082 */  sh    $v0, 0x82($sp)
.L8010A050:
/* B811F0 8010A050 0013C040 */  sll   $t8, $s3, 1
.L8010A054:
/* B811F4 8010A054 27AF007C */  addiu $t7, $sp, 0x7c
/* B811F8 8010A058 030F8021 */  addu  $s0, $t8, $t7
/* B811FC 8010A05C 86050000 */  lh    $a1, ($s0)
/* B81200 8010A060 02F69021 */  addu  $s2, $s7, $s6
/* B81204 8010A064 34018000 */  li    $at, 32768
/* B81208 8010A068 24A50010 */  addiu $a1, $a1, 0x10
/* B8120C 8010A06C 30A500FF */  andi  $a1, $a1, 0xff
/* B81210 8010A070 02419021 */  addu  $s2, $s2, $at
/* B81214 8010A074 03C02025 */  move  $a0, $fp
/* B81218 8010A078 0C01BB98 */  jal   func_8006EE60
/* B8121C 8010A07C 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B81220 8010A080 86090000 */  lh    $t1, ($s0)
/* B81224 8010A084 26D60001 */  addiu $s6, $s6, 1
/* B81228 8010A088 0016B400 */  sll   $s6, $s6, 0x10
/* B8122C 8010A08C 24010001 */  li    $at, 1
/* B81230 8010A090 25390030 */  addiu $t9, $t1, 0x30
/* B81234 8010A094 26B50080 */  addiu $s5, $s5, 0x80
/* B81238 8010A098 A2596306 */  sb    $t9, 0x6306($s2)
/* B8123C 8010A09C 1661000E */  bne   $s3, $at, .L8010A0D8
/* B81240 8010A0A0 0016B403 */   sra   $s6, $s6, 0x10
/* B81244 8010A0A4 03C02025 */  move  $a0, $fp
/* B81248 8010A0A8 24050002 */  li    $a1, 2
/* B8124C 8010A0AC 0C01BB98 */  jal   func_8006EE60
/* B81250 8010A0B0 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B81254 8010A0B4 02F65821 */  addu  $t3, $s7, $s6
/* B81258 8010A0B8 26D60001 */  addiu $s6, $s6, 1
/* B8125C 8010A0BC 25617FFF */  addiu $at, $t3, 0x7fff
/* B81260 8010A0C0 240A0022 */  li    $t2, 34
/* B81264 8010A0C4 0016B400 */  sll   $s6, $s6, 0x10
/* B81268 8010A0C8 26B50080 */  addiu $s5, $s5, 0x80
/* B8126C 8010A0CC A02A6307 */  sb    $t2, 0x6307($at)
/* B81270 8010A0D0 1000000C */  b     .L8010A104
/* B81274 8010A0D4 0016B403 */   sra   $s6, $s6, 0x10
.L8010A0D8:
/* B81278 8010A0D8 24010003 */  li    $at, 3
/* B8127C 8010A0DC 16610009 */  bne   $s3, $at, .L8010A104
/* B81280 8010A0E0 03C02025 */   move  $a0, $fp
/* B81284 8010A0E4 24050002 */  li    $a1, 2
/* B81288 8010A0E8 0C01BB98 */  jal   func_8006EE60
/* B8128C 8010A0EC 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B81290 8010A0F0 02F66021 */  addu  $t4, $s7, $s6
/* B81294 8010A0F4 25817FFF */  addiu $at, $t4, 0x7fff
/* B81298 8010A0F8 240D0022 */  li    $t5, 34
/* B8129C 8010A0FC 26B50080 */  addiu $s5, $s5, 0x80
/* B812A0 8010A100 A02D6307 */  sb    $t5, 0x6307($at)
.L8010A104:
/* B812A4 8010A104 26730001 */  addiu $s3, $s3, 1
/* B812A8 8010A108 00139C00 */  sll   $s3, $s3, 0x10
/* B812AC 8010A10C 00139C03 */  sra   $s3, $s3, 0x10
/* B812B0 8010A110 2A610004 */  slti  $at, $s3, 4
/* B812B4 8010A114 5420FFCF */  bnezl $at, .L8010A054
/* B812B8 8010A118 0013C040 */   sll   $t8, $s3, 1
/* B812BC 8010A11C 100003D4 */  b     .L8010B070
/* B812C0 8010A120 8FB90054 */   lw    $t9, 0x54($sp)
.L8010A124:
/* B812C4 8010A124 24010018 */  li    $at, 24
/* B812C8 8010A128 1601005A */  bne   $s0, $at, .L8010A294
/* B812CC 8010A12C 3C048015 */   lui   $a0, %hi(D_801540F4) # $a0, 0x8015
/* B812D0 8010A130 3C058016 */  lui   $a1, %hi(gSaveContext+0x1406) # $a1, 0x8016
/* B812D4 8010A134 94A5FA66 */  lhu   $a1, %lo(gSaveContext+0x1406)($a1)
/* B812D8 8010A138 248440F4 */  addiu $a0, %lo(D_801540F4) # addiu $a0, $a0, 0x40f4
/* B812DC 8010A13C 00009825 */  move  $s3, $zero
/* B812E0 8010A140 0C00084C */  jal   osSyncPrintf
/* B812E4 8010A144 00008825 */   move  $s1, $zero
/* B812E8 8010A148 3C028016 */  lui   $v0, %hi(gSaveContext+0x1406) # $v0, 0x8016
/* B812EC 8010A14C 8442FA66 */  lh    $v0, %lo(gSaveContext+0x1406)($v0)
/* B812F0 8010A150 00002400 */  sll   $a0, $zero, 0x10
/* B812F4 8010A154 00042403 */  sra   $a0, $a0, 0x10
/* B812F8 8010A158 00001C00 */  sll   $v1, $zero, 0x10
/* B812FC 8010A15C 284103E8 */  slti  $at, $v0, 0x3e8
/* B81300 8010A160 00031C03 */  sra   $v1, $v1, 0x10
/* B81304 8010A164 00002825 */  move  $a1, $zero
/* B81308 8010A168 1420000A */  bnez  $at, .L8010A194
/* B8130C 8010A16C A7A4007C */   sh    $a0, 0x7c($sp)
.L8010A170:
/* B81310 8010A170 2442FC18 */  addiu $v0, %lo(D_8015FC18) # addiu $v0, $v0, -0x3e8
/* B81314 8010A174 00021400 */  sll   $v0, $v0, 0x10
/* B81318 8010A178 24840001 */  addiu $a0, $a0, 1
/* B8131C 8010A17C 00021403 */  sra   $v0, $v0, 0x10
/* B81320 8010A180 284103E8 */  slti  $at, $v0, 0x3e8
/* B81324 8010A184 00042400 */  sll   $a0, $a0, 0x10
/* B81328 8010A188 1020FFF9 */  beqz  $at, .L8010A170
/* B8132C 8010A18C 00042403 */   sra   $a0, $a0, 0x10
/* B81330 8010A190 A7A4007C */  sh    $a0, 0x7c($sp)
.L8010A194:
/* B81334 8010A194 28410064 */  slti  $at, $v0, 0x64
/* B81338 8010A198 1420000A */  bnez  $at, .L8010A1C4
/* B8133C 8010A19C A7A3007E */   sh    $v1, 0x7e($sp)
.L8010A1A0:
/* B81340 8010A1A0 2442FF9C */  addiu $v0, $v0, -0x64
/* B81344 8010A1A4 00021400 */  sll   $v0, $v0, 0x10
/* B81348 8010A1A8 24630001 */  addiu $v1, $v1, 1
/* B8134C 8010A1AC 00021403 */  sra   $v0, $v0, 0x10
/* B81350 8010A1B0 28410064 */  slti  $at, $v0, 0x64
/* B81354 8010A1B4 00031C00 */  sll   $v1, $v1, 0x10
/* B81358 8010A1B8 1020FFF9 */  beqz  $at, .L8010A1A0
/* B8135C 8010A1BC 00031C03 */   sra   $v1, $v1, 0x10
/* B81360 8010A1C0 A7A3007E */  sh    $v1, 0x7e($sp)
.L8010A1C4:
/* B81364 8010A1C4 2841000A */  slti  $at, $v0, 0xa
/* B81368 8010A1C8 A7A20082 */  sh    $v0, 0x82($sp)
/* B8136C 8010A1CC 1420000B */  bnez  $at, .L8010A1FC
/* B81370 8010A1D0 A7A50080 */   sh    $a1, 0x80($sp)
.L8010A1D4:
/* B81374 8010A1D4 2442FFF6 */  addiu $v0, $v0, -0xa
/* B81378 8010A1D8 00021400 */  sll   $v0, $v0, 0x10
/* B8137C 8010A1DC 24A50001 */  addiu $a1, $a1, 1
/* B81380 8010A1E0 00021403 */  sra   $v0, $v0, 0x10
/* B81384 8010A1E4 2841000A */  slti  $at, $v0, 0xa
/* B81388 8010A1E8 00052C00 */  sll   $a1, $a1, 0x10
/* B8138C 8010A1EC 1020FFF9 */  beqz  $at, .L8010A1D4
/* B81390 8010A1F0 00052C03 */   sra   $a1, $a1, 0x10
/* B81394 8010A1F4 A7A50080 */  sh    $a1, 0x80($sp)
/* B81398 8010A1F8 A7A20082 */  sh    $v0, 0x82($sp)
.L8010A1FC:
/* B8139C 8010A1FC 24010003 */  li    $at, 3
.L8010A200:
/* B813A0 8010A200 12610005 */  beq   $s3, $at, .L8010A218
/* B813A4 8010A204 00137040 */   sll   $t6, $s3, 1
/* B813A8 8010A208 03AEC021 */  addu  $t8, $sp, $t6
/* B813AC 8010A20C 8718007C */  lh    $t8, 0x7c($t8)
/* B813B0 8010A210 13000002 */  beqz  $t8, .L8010A21C
/* B813B4 8010A214 00000000 */   nop   
.L8010A218:
/* B813B8 8010A218 24110001 */  li    $s1, 1
.L8010A21C:
/* B813BC 8010A21C 12200013 */  beqz  $s1, .L8010A26C
/* B813C0 8010A220 03C02025 */   move  $a0, $fp
/* B813C4 8010A224 00137840 */  sll   $t7, $s3, 1
/* B813C8 8010A228 27A9007C */  addiu $t1, $sp, 0x7c
/* B813CC 8010A22C 01E98021 */  addu  $s0, $t7, $t1
/* B813D0 8010A230 86050000 */  lh    $a1, ($s0)
/* B813D4 8010A234 02F69021 */  addu  $s2, $s7, $s6
/* B813D8 8010A238 34018000 */  li    $at, 32768
/* B813DC 8010A23C 24A50010 */  addiu $a1, $a1, 0x10
/* B813E0 8010A240 30A500FF */  andi  $a1, $a1, 0xff
/* B813E4 8010A244 02419021 */  addu  $s2, $s2, $at
/* B813E8 8010A248 0C01BB98 */  jal   func_8006EE60
/* B813EC 8010A24C 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B813F0 8010A250 86190000 */  lh    $t9, ($s0)
/* B813F4 8010A254 26D60001 */  addiu $s6, $s6, 1
/* B813F8 8010A258 0016B400 */  sll   $s6, $s6, 0x10
/* B813FC 8010A25C 272A0030 */  addiu $t2, $t9, 0x30
/* B81400 8010A260 A24A6306 */  sb    $t2, 0x6306($s2)
/* B81404 8010A264 26B50080 */  addiu $s5, $s5, 0x80
/* B81408 8010A268 0016B403 */  sra   $s6, $s6, 0x10
.L8010A26C:
/* B8140C 8010A26C 26730001 */  addiu $s3, $s3, 1
/* B81410 8010A270 00139C00 */  sll   $s3, $s3, 0x10
/* B81414 8010A274 00139C03 */  sra   $s3, $s3, 0x10
/* B81418 8010A278 2A610004 */  slti  $at, $s3, 4
/* B8141C 8010A27C 5420FFE0 */  bnezl $at, .L8010A200
/* B81420 8010A280 24010003 */   li    $at, 3
/* B81424 8010A284 26D6FFFF */  addiu $s6, $s6, -1
/* B81428 8010A288 0016B400 */  sll   $s6, $s6, 0x10
/* B8142C 8010A28C 10000377 */  b     .L8010B06C
/* B81430 8010A290 0016B403 */   sra   $s6, $s6, 0x10
.L8010A294:
/* B81434 8010A294 24010019 */  li    $at, 25
/* B81438 8010A298 16010051 */  bne   $s0, $at, .L8010A3E0
/* B8143C 8010A29C 3C048015 */   lui   $a0, %hi(D_8015410C) # $a0, 0x8015
/* B81440 8010A2A0 3C058016 */  lui   $a1, %hi(gSaveContext+0xd0) # $a1, 0x8016
/* B81444 8010A2A4 84A5E730 */  lh    $a1, %lo(gSaveContext+0xd0)($a1)
/* B81448 8010A2A8 2484410C */  addiu $a0, %lo(D_8015410C) # addiu $a0, $a0, 0x410c
/* B8144C 8010A2AC 00009825 */  move  $s3, $zero
/* B81450 8010A2B0 0C00084C */  jal   osSyncPrintf
/* B81454 8010A2B4 00008825 */   move  $s1, $zero
/* B81458 8010A2B8 3C058016 */  lui   $a1, %hi(D_8015FF9C) # $a1, 0x8016
/* B8145C 8010A2BC 84A5E730 */  lh    $a1, %lo(gSaveContext+0xd0)($a1)
/* B81460 8010A2C0 00002400 */  sll   $a0, $zero, 0x10
/* B81464 8010A2C4 00042403 */  sra   $a0, $a0, 0x10
/* B81468 8010A2C8 28A10064 */  slti  $at, $a1, 0x64
/* B8146C 8010A2CC 00001825 */  move  $v1, $zero
/* B81470 8010A2D0 1420000A */  bnez  $at, .L8010A2FC
/* B81474 8010A2D4 A7A4007C */   sh    $a0, 0x7c($sp)
.L8010A2D8:
/* B81478 8010A2D8 24A5FF9C */  addiu $a1, %lo(D_8015FF9C) # addiu $a1, $a1, -0x64
/* B8147C 8010A2DC 00052C00 */  sll   $a1, $a1, 0x10
/* B81480 8010A2E0 24840001 */  addiu $a0, $a0, 1
/* B81484 8010A2E4 00052C03 */  sra   $a1, $a1, 0x10
/* B81488 8010A2E8 28A10064 */  slti  $at, $a1, 0x64
/* B8148C 8010A2EC 00042400 */  sll   $a0, $a0, 0x10
/* B81490 8010A2F0 1020FFF9 */  beqz  $at, .L8010A2D8
/* B81494 8010A2F4 00042403 */   sra   $a0, $a0, 0x10
/* B81498 8010A2F8 A7A4007C */  sh    $a0, 0x7c($sp)
.L8010A2FC:
/* B8149C 8010A2FC 28A1000A */  slti  $at, $a1, 0xa
/* B814A0 8010A300 A7A3007E */  sh    $v1, 0x7e($sp)
/* B814A4 8010A304 1420000B */  bnez  $at, .L8010A334
/* B814A8 8010A308 A7A50080 */   sh    $a1, 0x80($sp)
.L8010A30C:
/* B814AC 8010A30C 24A5FFF6 */  addiu $a1, $a1, -0xa
/* B814B0 8010A310 00052C00 */  sll   $a1, $a1, 0x10
/* B814B4 8010A314 24630001 */  addiu $v1, $v1, 1
/* B814B8 8010A318 00052C03 */  sra   $a1, $a1, 0x10
/* B814BC 8010A31C 28A1000A */  slti  $at, $a1, 0xa
/* B814C0 8010A320 00031C00 */  sll   $v1, $v1, 0x10
/* B814C4 8010A324 1020FFF9 */  beqz  $at, .L8010A30C
/* B814C8 8010A328 00031C03 */   sra   $v1, $v1, 0x10
/* B814CC 8010A32C A7A50080 */  sh    $a1, 0x80($sp)
/* B814D0 8010A330 A7A3007E */  sh    $v1, 0x7e($sp)
.L8010A334:
/* B814D4 8010A334 24010002 */  li    $at, 2
.L8010A338:
/* B814D8 8010A338 12610005 */  beq   $s3, $at, .L8010A350
/* B814DC 8010A33C 00135840 */   sll   $t3, $s3, 1
/* B814E0 8010A340 03AB6821 */  addu  $t5, $sp, $t3
/* B814E4 8010A344 85AD007C */  lh    $t5, 0x7c($t5)
/* B814E8 8010A348 11A00002 */  beqz  $t5, .L8010A354
/* B814EC 8010A34C 00000000 */   nop   
.L8010A350:
/* B814F0 8010A350 24110001 */  li    $s1, 1
.L8010A354:
/* B814F4 8010A354 12200018 */  beqz  $s1, .L8010A3B8
/* B814F8 8010A358 03C02025 */   move  $a0, $fp
/* B814FC 8010A35C 00136040 */  sll   $t4, $s3, 1
/* B81500 8010A360 27AE007C */  addiu $t6, $sp, 0x7c
/* B81504 8010A364 018E8021 */  addu  $s0, $t4, $t6
/* B81508 8010A368 86050000 */  lh    $a1, ($s0)
/* B8150C 8010A36C 02F69021 */  addu  $s2, $s7, $s6
/* B81510 8010A370 34018000 */  li    $at, 32768
/* B81514 8010A374 24A50010 */  addiu $a1, $a1, 0x10
/* B81518 8010A378 30A500FF */  andi  $a1, $a1, 0xff
/* B8151C 8010A37C 02419021 */  addu  $s2, $s2, $at
/* B81520 8010A380 0C01BB98 */  jal   func_8006EE60
/* B81524 8010A384 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B81528 8010A388 86180000 */  lh    $t8, ($s0)
/* B8152C 8010A38C 3C048015 */  lui   $a0, %hi(D_80154120) # $a0, 0x8015
/* B81530 8010A390 26B50080 */  addiu $s5, $s5, 0x80
/* B81534 8010A394 270F0030 */  addiu $t7, $t8, 0x30
/* B81538 8010A398 A24F6306 */  sb    $t7, 0x6306($s2)
/* B8153C 8010A39C 86060000 */  lh    $a2, ($s0)
/* B81540 8010A3A0 24844120 */  addiu $a0, %lo(D_80154120) # addiu $a0, $a0, 0x4120
/* B81544 8010A3A4 0C00084C */  jal   osSyncPrintf
/* B81548 8010A3A8 24C50010 */   addiu $a1, $a2, 0x10
/* B8154C 8010A3AC 26D60001 */  addiu $s6, $s6, 1
/* B81550 8010A3B0 0016B400 */  sll   $s6, $s6, 0x10
/* B81554 8010A3B4 0016B403 */  sra   $s6, $s6, 0x10
.L8010A3B8:
/* B81558 8010A3B8 26730001 */  addiu $s3, $s3, 1
/* B8155C 8010A3BC 00139C00 */  sll   $s3, $s3, 0x10
/* B81560 8010A3C0 00139C03 */  sra   $s3, $s3, 0x10
/* B81564 8010A3C4 2A610003 */  slti  $at, $s3, 3
/* B81568 8010A3C8 5420FFDB */  bnezl $at, .L8010A338
/* B8156C 8010A3CC 24010002 */   li    $at, 2
/* B81570 8010A3D0 26D6FFFF */  addiu $s6, $s6, -1
/* B81574 8010A3D4 0016B400 */  sll   $s6, $s6, 0x10
/* B81578 8010A3D8 10000324 */  b     .L8010B06C
/* B8157C 8010A3DC 0016B403 */   sra   $s6, $s6, 0x10
.L8010A3E0:
/* B81580 8010A3E0 2401001D */  li    $at, 29
/* B81584 8010A3E4 1601003D */  bne   $s0, $at, .L8010A4DC
/* B81588 8010A3E8 3C048015 */   lui   $a0, %hi(D_80154128) # $a0, 0x8015
/* B8158C 8010A3EC 24844128 */  addiu $a0, %lo(D_80154128) # addiu $a0, $a0, 0x4128
/* B81590 8010A3F0 0C00084C */  jal   osSyncPrintf
/* B81594 8010A3F4 00009825 */   move  $s3, $zero
/* B81598 8010A3F8 3C038016 */  lui   $v1, %hi(D_8015FFF6) # $v1, 0x8016
/* B8159C 8010A3FC 8463FA66 */  lh    $v1, %lo(gSaveContext+0x1406)($v1)
/* B815A0 8010A400 00002025 */  move  $a0, $zero
/* B815A4 8010A404 A7A0007C */  sh    $zero, 0x7c($sp)
/* B815A8 8010A408 2861000A */  slti  $at, $v1, 0xa
/* B815AC 8010A40C 1420000B */  bnez  $at, .L8010A43C
/* B815B0 8010A410 A7A3007E */   sh    $v1, 0x7e($sp)
.L8010A414:
/* B815B4 8010A414 2463FFF6 */  addiu $v1, %lo(D_8015FFF6) # addiu $v1, $v1, -0xa
/* B815B8 8010A418 00031C00 */  sll   $v1, $v1, 0x10
/* B815BC 8010A41C 24840001 */  addiu $a0, $a0, 1
/* B815C0 8010A420 00031C03 */  sra   $v1, $v1, 0x10
/* B815C4 8010A424 2861000A */  slti  $at, $v1, 0xa
/* B815C8 8010A428 00042400 */  sll   $a0, $a0, 0x10
/* B815CC 8010A42C 1020FFF9 */  beqz  $at, .L8010A414
/* B815D0 8010A430 00042403 */   sra   $a0, $a0, 0x10
/* B815D4 8010A434 A7A4007C */  sh    $a0, 0x7c($sp)
/* B815D8 8010A438 A7A3007E */  sh    $v1, 0x7e($sp)
.L8010A43C:
/* B815DC 8010A43C 24010001 */  li    $at, 1
.L8010A440:
/* B815E0 8010A440 12610004 */  beq   $s3, $at, .L8010A454
/* B815E4 8010A444 00134840 */   sll   $t1, $s3, 1
/* B815E8 8010A448 03A9C821 */  addu  $t9, $sp, $t1
/* B815EC 8010A44C 8739007C */  lh    $t9, 0x7c($t9)
/* B815F0 8010A450 13200018 */  beqz  $t9, .L8010A4B4
.L8010A454:
/* B815F4 8010A454 00135040 */   sll   $t2, $s3, 1
/* B815F8 8010A458 27AB007C */  addiu $t3, $sp, 0x7c
/* B815FC 8010A45C 014B8021 */  addu  $s0, $t2, $t3
/* B81600 8010A460 86050000 */  lh    $a1, ($s0)
/* B81604 8010A464 02F69021 */  addu  $s2, $s7, $s6
/* B81608 8010A468 34018000 */  li    $at, 32768
/* B8160C 8010A46C 24A50010 */  addiu $a1, $a1, 0x10
/* B81610 8010A470 30A500FF */  andi  $a1, $a1, 0xff
/* B81614 8010A474 02419021 */  addu  $s2, $s2, $at
/* B81618 8010A478 03C02025 */  move  $a0, $fp
/* B8161C 8010A47C 0C01BB98 */  jal   func_8006EE60
/* B81620 8010A480 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B81624 8010A484 860D0000 */  lh    $t5, ($s0)
/* B81628 8010A488 3C048015 */  lui   $a0, %hi(D_8015413C) # $a0, 0x8015
/* B8162C 8010A48C 26B50080 */  addiu $s5, $s5, 0x80
/* B81630 8010A490 25AC0030 */  addiu $t4, $t5, 0x30
/* B81634 8010A494 A24C6306 */  sb    $t4, 0x6306($s2)
/* B81638 8010A498 86060000 */  lh    $a2, ($s0)
/* B8163C 8010A49C 2484413C */  addiu $a0, %lo(D_8015413C) # addiu $a0, $a0, 0x413c
/* B81640 8010A4A0 0C00084C */  jal   osSyncPrintf
/* B81644 8010A4A4 24C50010 */   addiu $a1, $a2, 0x10
/* B81648 8010A4A8 26D60001 */  addiu $s6, $s6, 1
/* B8164C 8010A4AC 0016B400 */  sll   $s6, $s6, 0x10
/* B81650 8010A4B0 0016B403 */  sra   $s6, $s6, 0x10
.L8010A4B4:
/* B81654 8010A4B4 26730001 */  addiu $s3, $s3, 1
/* B81658 8010A4B8 00139C00 */  sll   $s3, $s3, 0x10
/* B8165C 8010A4BC 00139C03 */  sra   $s3, $s3, 0x10
/* B81660 8010A4C0 2A610002 */  slti  $at, $s3, 2
/* B81664 8010A4C4 5420FFDE */  bnezl $at, .L8010A440
/* B81668 8010A4C8 24010001 */   li    $at, 1
/* B8166C 8010A4CC 26D6FFFF */  addiu $s6, $s6, -1
/* B81670 8010A4D0 0016B400 */  sll   $s6, $s6, 0x10
/* B81674 8010A4D4 100002E5 */  b     .L8010B06C
/* B81678 8010A4D8 0016B403 */   sra   $s6, $s6, 0x10
.L8010A4DC:
/* B8167C 8010A4DC 2401001E */  li    $at, 30
/* B81680 8010A4E0 1601013D */  bne   $s0, $at, .L8010A9D8
/* B81684 8010A4E4 8FA30054 */   lw    $v1, 0x54($sp)
/* B81688 8010A4E8 946763CE */  lhu   $a3, 0x63ce($v1)
/* B8168C 8010A4EC 26E17FFF */  addiu $at, $s7, 0x7fff
/* B81690 8010A4F0 34028000 */  li    $v0, 32768
/* B81694 8010A4F4 24E70001 */  addiu $a3, $a3, 1
/* B81698 8010A4F8 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B8169C 8010A4FC A42763CF */  sh    $a3, 0x63cf($at)
/* B816A0 8010A500 03C77021 */  addu  $t6, $fp, $a3
/* B816A4 8010A504 01C2C021 */  addu  $t8, $t6, $v0
/* B816A8 8010A508 930F5C88 */  lbu   $t7, 0x5c88($t8)
/* B816AC 8010A50C 947963CE */  lhu   $t9, 0x63ce($v1)
/* B816B0 8010A510 3C108016 */  lui   $s0, %hi(gSaveContext+0xeba)
/* B816B4 8010A514 000F4880 */  sll   $t1, $t7, 2
/* B816B8 8010A518 03D95021 */  addu  $t2, $fp, $t9
/* B816BC 8010A51C 02098021 */  addu  $s0, $s0, $t1
/* B816C0 8010A520 01425821 */  addu  $t3, $t2, $v0
/* B816C4 8010A524 3C048015 */  lui   $a0, %hi(D_80154144) # $a0, 0x8015
/* B816C8 8010A528 9610F51A */  lhu   $s0, %lo(gSaveContext+0xeba)($s0)
/* B816CC 8010A52C 24844144 */  addiu $a0, %lo(D_80154144) # addiu $a0, $a0, 0x4144
/* B816D0 8010A530 0C00084C */  jal   osSyncPrintf
/* B816D4 8010A534 91655C88 */   lbu   $a1, 0x5c88($t3)
/* B816D8 8010A538 8FAD0054 */  lw    $t5, 0x54($sp)
/* B816DC 8010A53C 24010002 */  li    $at, 2
/* B816E0 8010A540 3C0E8016 */  lui   $t6, %hi(gSaveContext+4) # $t6, 0x8016
/* B816E4 8010A544 95A363CE */  lhu   $v1, 0x63ce($t5)
/* B816E8 8010A548 03C36021 */  addu  $t4, $fp, $v1
/* B816EC 8010A54C 25827FFF */  addiu $v0, $t4, 0x7fff
/* B816F0 8010A550 90425C89 */  lbu   $v0, 0x5c89($v0)
/* B816F4 8010A554 304200FF */  andi  $v0, $v0, 0xff
/* B816F8 8010A558 54410061 */  bnel  $v0, $at, .L8010A6E0
/* B816FC 8010A55C 2C410007 */   sltiu $at, $v0, 7
/* B81700 8010A560 8DCEE664 */  lw    $t6, %lo(gSaveContext+4)($t6)
/* B81704 8010A564 24010005 */  li    $at, 5
/* B81708 8010A568 24020011 */  li    $v0, 17
/* B8170C 8010A56C 11C00003 */  beqz  $t6, .L8010A57C
/* B81710 8010A570 3C048015 */   lui   $a0, %hi(D_80154154) # $a0, 0x8015
/* B81714 8010A574 10000001 */  b     .L8010A57C
/* B81718 8010A578 24020005 */   li    $v0, 5
.L8010A57C:
/* B8171C 8010A57C 14410004 */  bne   $v0, $at, .L8010A590
/* B81720 8010A580 24844154 */   addiu $a0, %lo(D_80154154) # addiu $a0, $a0, 0x4154
/* B81724 8010A584 3210007F */  andi  $s0, $s0, 0x7f
/* B81728 8010A588 1000001A */  b     .L8010A5F4
/* B8172C 8010A58C 3210FFFF */   andi  $s0, $s0, 0xffff
.L8010A590:
/* B81730 8010A590 0003C040 */  sll   $t8, $v1, 1
/* B81734 8010A594 03D87821 */  addu  $t7, $fp, $t8
/* B81738 8010A598 25E97FFF */  addiu $t1, $t7, 0x7fff
/* B8173C 8010A59C 95295C89 */  lhu   $t1, 0x5c89($t1)
/* B81740 8010A5A0 3C01FF00 */  lui   $at, 0xff00
/* B81744 8010A5A4 3C058016 */  lui   $a1, %hi(gSaveContext+0xeb8)
/* B81748 8010A5A8 0121C824 */  and   $t9, $t1, $at
/* B8174C 8010A5AC 00195080 */  sll   $t2, $t9, 2
/* B81750 8010A5B0 00AA2821 */  addu  $a1, $a1, $t2
/* B81754 8010A5B4 0C00084C */  jal   osSyncPrintf
/* B81758 8010A5B8 8CA5F518 */   lw    $a1, %lo(gSaveContext+0xeb8)($a1)
/* B8175C 8010A5BC 8FAB0054 */  lw    $t3, 0x54($sp)
/* B81760 8010A5C0 3C108016 */  lui   $s0, %hi(gSaveContext+0xeb8)
/* B81764 8010A5C4 3C01FF00 */  lui   $at, 0xff00
/* B81768 8010A5C8 956D63CE */  lhu   $t5, 0x63ce($t3)
/* B8176C 8010A5CC 03CD6021 */  addu  $t4, $fp, $t5
/* B81770 8010A5D0 258E7FFF */  addiu $t6, $t4, 0x7fff
/* B81774 8010A5D4 91CE5C89 */  lbu   $t6, 0x5c89($t6)
/* B81778 8010A5D8 000EC080 */  sll   $t8, $t6, 2
/* B8177C 8010A5DC 02188021 */  addu  $s0, $s0, $t8
/* B81780 8010A5E0 8E10F518 */  lw    $s0, %lo(gSaveContext+0xeb8)($s0)
/* B81784 8010A5E4 02018024 */  and   $s0, $s0, $at
/* B81788 8010A5E8 00108602 */  srl   $s0, $s0, 0x18
/* B8178C 8010A5EC 3210007F */  andi  $s0, $s0, 0x7f
/* B81790 8010A5F0 3210FFFF */  andi  $s0, $s0, 0xffff
.L8010A5F4:
/* B81794 8010A5F4 44902000 */  mtc1  $s0, $f4
/* B81798 8010A5F8 3C048015 */  lui   $a0, %hi(D_8015419C) # $a0, 0x8015
/* B8179C 8010A5FC 06010005 */  bgez  $s0, .L8010A614
/* B817A0 8010A600 46802020 */   cvt.s.w $f0, $f4
/* B817A4 8010A604 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B817A8 8010A608 44813000 */  mtc1  $at, $f6
/* B817AC 8010A60C 00000000 */  nop   
/* B817B0 8010A610 46060000 */  add.s $f0, $f0, $f6
.L8010A614:
/* B817B4 8010A614 46000202 */  mul.s $f8, $f0, $f0
/* B817B8 8010A618 3C018015 */  lui   $at, %hi(D_80154BC8)
/* B817BC 8010A61C C42A4BC8 */  lwc1  $f10, %lo(D_80154BC8)($at)
/* B817C0 8010A620 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B817C4 8010A624 44819000 */  mtc1  $at, $f18
/* B817C8 8010A628 24100001 */  li    $s0, 1
/* B817CC 8010A62C 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B817D0 8010A630 460A4402 */  mul.s $f16, $f8, $f10
/* B817D4 8010A634 2484419C */  addiu $a0, %lo(D_8015419C) # addiu $a0, $a0, 0x419c
/* B817D8 8010A638 46128100 */  add.s $f4, $f16, $f18
/* B817DC 8010A63C 444FF800 */  cfc1  $t7, $31
/* B817E0 8010A640 44D0F800 */  ctc1  $s0, $31
/* B817E4 8010A644 00000000 */  nop   
/* B817E8 8010A648 460021A4 */  cvt.w.s $f6, $f4
/* B817EC 8010A64C 4450F800 */  cfc1  $s0, $31
/* B817F0 8010A650 00000000 */  nop   
/* B817F4 8010A654 32100078 */  andi  $s0, $s0, 0x78
/* B817F8 8010A658 52000013 */  beql  $s0, $zero, .L8010A6A8
/* B817FC 8010A65C 44103000 */   mfc1  $s0, $f6
/* B81800 8010A660 44813000 */  mtc1  $at, $f6
/* B81804 8010A664 24100001 */  li    $s0, 1
/* B81808 8010A668 46062181 */  sub.s $f6, $f4, $f6
/* B8180C 8010A66C 44D0F800 */  ctc1  $s0, $31
/* B81810 8010A670 00000000 */  nop   
/* B81814 8010A674 460031A4 */  cvt.w.s $f6, $f6
/* B81818 8010A678 4450F800 */  cfc1  $s0, $31
/* B8181C 8010A67C 00000000 */  nop   
/* B81820 8010A680 32100078 */  andi  $s0, $s0, 0x78
/* B81824 8010A684 16000005 */  bnez  $s0, .L8010A69C
/* B81828 8010A688 00000000 */   nop   
/* B8182C 8010A68C 44103000 */  mfc1  $s0, $f6
/* B81830 8010A690 3C018000 */  lui   $at, 0x8000
/* B81834 8010A694 10000007 */  b     .L8010A6B4
/* B81838 8010A698 02018025 */   or    $s0, $s0, $at
.L8010A69C:
/* B8183C 8010A69C 10000005 */  b     .L8010A6B4
/* B81840 8010A6A0 2410FFFF */   li    $s0, -1
/* B81844 8010A6A4 44103000 */  mfc1  $s0, $f6
.L8010A6A8:
/* B81848 8010A6A8 00000000 */  nop   
/* B8184C 8010A6AC 0600FFFB */  bltz  $s0, .L8010A69C
/* B81850 8010A6B0 00000000 */   nop   
.L8010A6B4:
/* B81854 8010A6B4 44CFF800 */  ctc1  $t7, $31
/* B81858 8010A6B8 3210FFFF */  andi  $s0, $s0, 0xffff
/* B8185C 8010A6BC 0C00084C */  jal   osSyncPrintf
/* B81860 8010A6C0 02002825 */   move  $a1, $s0
/* B81864 8010A6C4 8FA90054 */  lw    $t1, 0x54($sp)
/* B81868 8010A6C8 953963CE */  lhu   $t9, 0x63ce($t1)
/* B8186C 8010A6CC 03D95021 */  addu  $t2, $fp, $t9
/* B81870 8010A6D0 25427FFF */  addiu $v0, $t2, 0x7fff
/* B81874 8010A6D4 90425C89 */  lbu   $v0, 0x5c89($v0)
/* B81878 8010A6D8 304200FF */  andi  $v0, $v0, 0xff
/* B8187C 8010A6DC 2C410007 */  sltiu $at, $v0, 7
.L8010A6E0:
/* B81880 8010A6E0 10200262 */  beqz  $at, .L8010B06C
/* B81884 8010A6E4 00025880 */   sll   $t3, $v0, 2
/* B81888 8010A6E8 3C018015 */  lui   $at, %hi(jtbl_80154BCC)
/* B8188C 8010A6EC 002B0821 */  addu  $at, $at, $t3
/* B81890 8010A6F0 8C2B4BCC */  lw    $t3, %lo(jtbl_80154BCC)($at)
/* B81894 8010A6F4 01600008 */  jr    $t3
/* B81898 8010A6F8 00000000 */   nop   
glabel L8010A6FC
/* B8189C 8010A6FC 00101400 */  sll   $v0, $s0, 0x10
/* B818A0 8010A700 00002400 */  sll   $a0, $zero, 0x10
/* B818A4 8010A704 00021403 */  sra   $v0, $v0, 0x10
/* B818A8 8010A708 00042403 */  sra   $a0, $a0, 0x10
/* B818AC 8010A70C 00001C00 */  sll   $v1, $zero, 0x10
/* B818B0 8010A710 284103E8 */  slti  $at, $v0, 0x3e8
/* B818B4 8010A714 00031C03 */  sra   $v1, $v1, 0x10
/* B818B8 8010A718 00002825 */  move  $a1, $zero
/* B818BC 8010A71C A7A4007C */  sh    $a0, 0x7c($sp)
/* B818C0 8010A720 00009825 */  move  $s3, $zero
/* B818C4 8010A724 1420000A */  bnez  $at, .L8010A750
/* B818C8 8010A728 00008825 */   move  $s1, $zero
.L8010A72C:
/* B818CC 8010A72C 2442FC18 */  addiu $v0, $v0, -0x3e8
/* B818D0 8010A730 00021400 */  sll   $v0, $v0, 0x10
/* B818D4 8010A734 24840001 */  addiu $a0, $a0, 1
/* B818D8 8010A738 00021403 */  sra   $v0, $v0, 0x10
/* B818DC 8010A73C 284103E8 */  slti  $at, $v0, 0x3e8
/* B818E0 8010A740 00042400 */  sll   $a0, $a0, 0x10
/* B818E4 8010A744 1020FFF9 */  beqz  $at, .L8010A72C
/* B818E8 8010A748 00042403 */   sra   $a0, $a0, 0x10
/* B818EC 8010A74C A7A4007C */  sh    $a0, 0x7c($sp)
.L8010A750:
/* B818F0 8010A750 28410064 */  slti  $at, $v0, 0x64
/* B818F4 8010A754 1420000A */  bnez  $at, .L8010A780
/* B818F8 8010A758 A7A3007E */   sh    $v1, 0x7e($sp)
.L8010A75C:
/* B818FC 8010A75C 2442FF9C */  addiu $v0, $v0, -0x64
/* B81900 8010A760 00021400 */  sll   $v0, $v0, 0x10
/* B81904 8010A764 24630001 */  addiu $v1, $v1, 1
/* B81908 8010A768 00021403 */  sra   $v0, $v0, 0x10
/* B8190C 8010A76C 28410064 */  slti  $at, $v0, 0x64
/* B81910 8010A770 00031C00 */  sll   $v1, $v1, 0x10
/* B81914 8010A774 1020FFF9 */  beqz  $at, .L8010A75C
/* B81918 8010A778 00031C03 */   sra   $v1, $v1, 0x10
/* B8191C 8010A77C A7A3007E */  sh    $v1, 0x7e($sp)
.L8010A780:
/* B81920 8010A780 2841000A */  slti  $at, $v0, 0xa
/* B81924 8010A784 A7A20082 */  sh    $v0, 0x82($sp)
/* B81928 8010A788 1420000B */  bnez  $at, .L8010A7B8
/* B8192C 8010A78C A7A50080 */   sh    $a1, 0x80($sp)
.L8010A790:
/* B81930 8010A790 2442FFF6 */  addiu $v0, $v0, -0xa
/* B81934 8010A794 00021400 */  sll   $v0, $v0, 0x10
/* B81938 8010A798 24A50001 */  addiu $a1, $a1, 1
/* B8193C 8010A79C 00021403 */  sra   $v0, $v0, 0x10
/* B81940 8010A7A0 2841000A */  slti  $at, $v0, 0xa
/* B81944 8010A7A4 00052C00 */  sll   $a1, $a1, 0x10
/* B81948 8010A7A8 1020FFF9 */  beqz  $at, .L8010A790
/* B8194C 8010A7AC 00052C03 */   sra   $a1, $a1, 0x10
/* B81950 8010A7B0 A7A50080 */  sh    $a1, 0x80($sp)
/* B81954 8010A7B4 A7A20082 */  sh    $v0, 0x82($sp)
.L8010A7B8:
/* B81958 8010A7B8 24010003 */  li    $at, 3
.L8010A7BC:
/* B8195C 8010A7BC 12610005 */  beq   $s3, $at, .L8010A7D4
/* B81960 8010A7C0 00136840 */   sll   $t5, $s3, 1
/* B81964 8010A7C4 03AD6021 */  addu  $t4, $sp, $t5
/* B81968 8010A7C8 858C007C */  lh    $t4, 0x7c($t4)
/* B8196C 8010A7CC 11800002 */  beqz  $t4, .L8010A7D8
/* B81970 8010A7D0 00000000 */   nop   
.L8010A7D4:
/* B81974 8010A7D4 24110001 */  li    $s1, 1
.L8010A7D8:
/* B81978 8010A7D8 12200013 */  beqz  $s1, .L8010A828
/* B8197C 8010A7DC 03C02025 */   move  $a0, $fp
/* B81980 8010A7E0 00137040 */  sll   $t6, $s3, 1
/* B81984 8010A7E4 27B8007C */  addiu $t8, $sp, 0x7c
/* B81988 8010A7E8 01D88021 */  addu  $s0, $t6, $t8
/* B8198C 8010A7EC 86050000 */  lh    $a1, ($s0)
/* B81990 8010A7F0 02F69021 */  addu  $s2, $s7, $s6
/* B81994 8010A7F4 34018000 */  li    $at, 32768
/* B81998 8010A7F8 24A50010 */  addiu $a1, $a1, 0x10
/* B8199C 8010A7FC 30A500FF */  andi  $a1, $a1, 0xff
/* B819A0 8010A800 02419021 */  addu  $s2, $s2, $at
/* B819A4 8010A804 0C01BB98 */  jal   func_8006EE60
/* B819A8 8010A808 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B819AC 8010A80C 860F0000 */  lh    $t7, ($s0)
/* B819B0 8010A810 26D60001 */  addiu $s6, $s6, 1
/* B819B4 8010A814 0016B400 */  sll   $s6, $s6, 0x10
/* B819B8 8010A818 25E90030 */  addiu $t1, $t7, 0x30
/* B819BC 8010A81C A2496306 */  sb    $t1, 0x6306($s2)
/* B819C0 8010A820 26B50080 */  addiu $s5, $s5, 0x80
/* B819C4 8010A824 0016B403 */  sra   $s6, $s6, 0x10
.L8010A828:
/* B819C8 8010A828 26730001 */  addiu $s3, $s3, 1
/* B819CC 8010A82C 00139C00 */  sll   $s3, $s3, 0x10
/* B819D0 8010A830 00139C03 */  sra   $s3, $s3, 0x10
/* B819D4 8010A834 2A610004 */  slti  $at, $s3, 4
/* B819D8 8010A838 5420FFE0 */  bnezl $at, .L8010A7BC
/* B819DC 8010A83C 24010003 */   li    $at, 3
/* B819E0 8010A840 26D6FFFF */  addiu $s6, $s6, -1
/* B819E4 8010A844 0016B400 */  sll   $s6, $s6, 0x10
/* B819E8 8010A848 10000208 */  b     .L8010B06C
/* B819EC 8010A84C 0016B403 */   sra   $s6, $s6, 0x10
glabel L8010A850
/* B819F0 8010A850 00101400 */  sll   $v0, $s0, 0x10
/* B819F4 8010A854 00001C00 */  sll   $v1, $zero, 0x10
/* B819F8 8010A858 00002400 */  sll   $a0, $zero, 0x10
/* B819FC 8010A85C 00021403 */  sra   $v0, $v0, 0x10
/* B81A00 8010A860 00042403 */  sra   $a0, $a0, 0x10
/* B81A04 8010A864 00031C03 */  sra   $v1, $v1, 0x10
/* B81A08 8010A868 2841003C */  slti  $at, $v0, 0x3c
/* B81A0C 8010A86C 00002825 */  move  $a1, $zero
/* B81A10 8010A870 A7A3007E */  sh    $v1, 0x7e($sp)
/* B81A14 8010A874 A7A4007C */  sh    $a0, 0x7c($sp)
/* B81A18 8010A878 14200014 */  bnez  $at, .L8010A8CC
/* B81A1C 8010A87C 00009825 */   move  $s3, $zero
/* B81A20 8010A880 24630001 */  addiu $v1, $v1, 1
.L8010A884:
/* B81A24 8010A884 00031C00 */  sll   $v1, $v1, 0x10
/* B81A28 8010A888 00031C03 */  sra   $v1, $v1, 0x10
/* B81A2C 8010A88C 2861000A */  slti  $at, $v1, 0xa
/* B81A30 8010A890 14200007 */  bnez  $at, .L8010A8B0
/* B81A34 8010A894 2442FFC4 */   addiu $v0, $v0, -0x3c
/* B81A38 8010A898 24840001 */  addiu $a0, $a0, 1
/* B81A3C 8010A89C 2463FFF6 */  addiu $v1, $v1, -0xa
/* B81A40 8010A8A0 00042400 */  sll   $a0, $a0, 0x10
/* B81A44 8010A8A4 00031C00 */  sll   $v1, $v1, 0x10
/* B81A48 8010A8A8 00042403 */  sra   $a0, $a0, 0x10
/* B81A4C 8010A8AC 00031C03 */  sra   $v1, $v1, 0x10
.L8010A8B0:
/* B81A50 8010A8B0 00021400 */  sll   $v0, $v0, 0x10
/* B81A54 8010A8B4 00021403 */  sra   $v0, $v0, 0x10
/* B81A58 8010A8B8 2841003C */  slti  $at, $v0, 0x3c
/* B81A5C 8010A8BC 5020FFF1 */  beql  $at, $zero, .L8010A884
/* B81A60 8010A8C0 24630001 */   addiu $v1, $v1, 1
/* B81A64 8010A8C4 A7A4007C */  sh    $a0, 0x7c($sp)
/* B81A68 8010A8C8 A7A3007E */  sh    $v1, 0x7e($sp)
.L8010A8CC:
/* B81A6C 8010A8CC 2841000A */  slti  $at, $v0, 0xa
/* B81A70 8010A8D0 A7A20082 */  sh    $v0, 0x82($sp)
/* B81A74 8010A8D4 1420000B */  bnez  $at, .L8010A904
/* B81A78 8010A8D8 A7A50080 */   sh    $a1, 0x80($sp)
.L8010A8DC:
/* B81A7C 8010A8DC 2442FFF6 */  addiu $v0, $v0, -0xa
/* B81A80 8010A8E0 00021400 */  sll   $v0, $v0, 0x10
/* B81A84 8010A8E4 24A50001 */  addiu $a1, $a1, 1
/* B81A88 8010A8E8 00021403 */  sra   $v0, $v0, 0x10
/* B81A8C 8010A8EC 2841000A */  slti  $at, $v0, 0xa
/* B81A90 8010A8F0 00052C00 */  sll   $a1, $a1, 0x10
/* B81A94 8010A8F4 1020FFF9 */  beqz  $at, .L8010A8DC
/* B81A98 8010A8F8 00052C03 */   sra   $a1, $a1, 0x10
/* B81A9C 8010A8FC A7A50080 */  sh    $a1, 0x80($sp)
/* B81AA0 8010A900 A7A20082 */  sh    $v0, 0x82($sp)
.L8010A904:
/* B81AA4 8010A904 0013C840 */  sll   $t9, $s3, 1
.L8010A908:
/* B81AA8 8010A908 27AA007C */  addiu $t2, $sp, 0x7c
/* B81AAC 8010A90C 032A8021 */  addu  $s0, $t9, $t2
/* B81AB0 8010A910 86050000 */  lh    $a1, ($s0)
/* B81AB4 8010A914 02F69021 */  addu  $s2, $s7, $s6
/* B81AB8 8010A918 34018000 */  li    $at, 32768
/* B81ABC 8010A91C 24A50010 */  addiu $a1, $a1, 0x10
/* B81AC0 8010A920 30A500FF */  andi  $a1, $a1, 0xff
/* B81AC4 8010A924 02419021 */  addu  $s2, $s2, $at
/* B81AC8 8010A928 03C02025 */  move  $a0, $fp
/* B81ACC 8010A92C 0C01BB98 */  jal   func_8006EE60
/* B81AD0 8010A930 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B81AD4 8010A934 860B0000 */  lh    $t3, ($s0)
/* B81AD8 8010A938 26D60001 */  addiu $s6, $s6, 1
/* B81ADC 8010A93C 0016B400 */  sll   $s6, $s6, 0x10
/* B81AE0 8010A940 24010001 */  li    $at, 1
/* B81AE4 8010A944 256D0030 */  addiu $t5, $t3, 0x30
/* B81AE8 8010A948 26B50080 */  addiu $s5, $s5, 0x80
/* B81AEC 8010A94C A24D6306 */  sb    $t5, 0x6306($s2)
/* B81AF0 8010A950 1661000E */  bne   $s3, $at, .L8010A98C
/* B81AF4 8010A954 0016B403 */   sra   $s6, $s6, 0x10
/* B81AF8 8010A958 03C02025 */  move  $a0, $fp
/* B81AFC 8010A95C 24050002 */  li    $a1, 2
/* B81B00 8010A960 0C01BB98 */  jal   func_8006EE60
/* B81B04 8010A964 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B81B08 8010A968 02F67021 */  addu  $t6, $s7, $s6
/* B81B0C 8010A96C 26D60001 */  addiu $s6, $s6, 1
/* B81B10 8010A970 25C17FFF */  addiu $at, $t6, 0x7fff
/* B81B14 8010A974 240C0022 */  li    $t4, 34
/* B81B18 8010A978 0016B400 */  sll   $s6, $s6, 0x10
/* B81B1C 8010A97C 26B50080 */  addiu $s5, $s5, 0x80
/* B81B20 8010A980 A02C6307 */  sb    $t4, 0x6307($at)
/* B81B24 8010A984 1000000C */  b     .L8010A9B8
/* B81B28 8010A988 0016B403 */   sra   $s6, $s6, 0x10
.L8010A98C:
/* B81B2C 8010A98C 24010003 */  li    $at, 3
/* B81B30 8010A990 16610009 */  bne   $s3, $at, .L8010A9B8
/* B81B34 8010A994 03C02025 */   move  $a0, $fp
/* B81B38 8010A998 24050002 */  li    $a1, 2
/* B81B3C 8010A99C 0C01BB98 */  jal   func_8006EE60
/* B81B40 8010A9A0 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B81B44 8010A9A4 02F67821 */  addu  $t7, $s7, $s6
/* B81B48 8010A9A8 25E17FFF */  addiu $at, $t7, 0x7fff
/* B81B4C 8010A9AC 24180022 */  li    $t8, 34
/* B81B50 8010A9B0 26B50080 */  addiu $s5, $s5, 0x80
/* B81B54 8010A9B4 A0386307 */  sb    $t8, 0x6307($at)
.L8010A9B8:
/* B81B58 8010A9B8 26730001 */  addiu $s3, $s3, 1
/* B81B5C 8010A9BC 00139C00 */  sll   $s3, $s3, 0x10
/* B81B60 8010A9C0 00139C03 */  sra   $s3, $s3, 0x10
/* B81B64 8010A9C4 2A610004 */  slti  $at, $s3, 4
/* B81B68 8010A9C8 5420FFCF */  bnezl $at, .L8010A908
/* B81B6C 8010A9CC 0013C840 */   sll   $t9, $s3, 1
/* B81B70 8010A9D0 100001A7 */  b     .L8010B070
/* B81B74 8010A9D4 8FB90054 */   lw    $t9, 0x54($sp)
.L8010A9D8:
/* B81B78 8010A9D8 2401001F */  li    $at, 31
/* B81B7C 8010A9DC 1601006B */  bne   $s0, $at, .L8010AB8C
/* B81B80 8010A9E0 3C048015 */   lui   $a0, %hi(D_801541A8) # $a0, 0x8015
/* B81B84 8010A9E4 248441A8 */  addiu $a0, %lo(D_801541A8) # addiu $a0, $a0, 0x41a8
/* B81B88 8010A9E8 0C00084C */  jal   osSyncPrintf
/* B81B8C 8010A9EC 00009825 */   move  $s3, $zero
/* B81B90 8010A9F0 3C098016 */  lui   $t1, %hi(gSaveContext+0xc)
/* B81B94 8010A9F4 9529E66C */  lhu   $t1, %lo(gSaveContext+0xc)($t1)
/* B81B98 8010A9F8 00002025 */  move  $a0, $zero
/* B81B9C 8010A9FC 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B81BA0 8010AA00 44894000 */  mtc1  $t1, $f8
/* B81BA4 8010AA04 05210004 */  bgez  $t1, .L8010AA18
/* B81BA8 8010AA08 468042A0 */   cvt.s.w $f10, $f8
/* B81BAC 8010AA0C 44818000 */  mtc1  $at, $f16
/* B81BB0 8010AA10 00000000 */  nop   
/* B81BB4 8010AA14 46105280 */  add.s $f10, $f10, $f16
.L8010AA18:
/* B81BB8 8010AA18 3C013CB4 */  li    $at, 0x3CB40000 # 0.000000
/* B81BBC 8010AA1C 44819000 */  mtc1  $at, $f18
/* B81BC0 8010AA20 3C014270 */  li    $at, 0x42700000 # 0.000000
/* B81BC4 8010AA24 44812000 */  mtc1  $at, $f4
/* B81BC8 8010AA28 46125002 */  mul.s $f0, $f10, $f18
/* B81BCC 8010AA2C A7A4007C */  sh    $a0, 0x7c($sp)
/* B81BD0 8010AA30 46040183 */  div.s $f6, $f0, $f4
/* B81BD4 8010AA34 4600040D */  trunc.w.s $f16, $f0
/* B81BD8 8010AA38 44028000 */  mfc1  $v0, $f16
/* B81BDC 8010AA3C 00000000 */  nop   
/* B81BE0 8010AA40 00021400 */  sll   $v0, $v0, 0x10
/* B81BE4 8010AA44 00021403 */  sra   $v0, $v0, 0x10
/* B81BE8 8010AA48 4600320D */  trunc.w.s $f8, $f6
/* B81BEC 8010AA4C 44034000 */  mfc1  $v1, $f8
/* B81BF0 8010AA50 00000000 */  nop   
/* B81BF4 8010AA54 00031C00 */  sll   $v1, $v1, 0x10
/* B81BF8 8010AA58 00031C03 */  sra   $v1, $v1, 0x10
/* B81BFC 8010AA5C 2861000A */  slti  $at, $v1, 0xa
/* B81C00 8010AA60 1420000B */  bnez  $at, .L8010AA90
/* B81C04 8010AA64 A7A3007E */   sh    $v1, 0x7e($sp)
.L8010AA68:
/* B81C08 8010AA68 2463FFF6 */  addiu $v1, $v1, -0xa
/* B81C0C 8010AA6C 00031C00 */  sll   $v1, $v1, 0x10
/* B81C10 8010AA70 24840001 */  addiu $a0, $a0, 1
/* B81C14 8010AA74 00031C03 */  sra   $v1, $v1, 0x10
/* B81C18 8010AA78 2861000A */  slti  $at, $v1, 0xa
/* B81C1C 8010AA7C 00042400 */  sll   $a0, $a0, 0x10
/* B81C20 8010AA80 1020FFF9 */  beqz  $at, .L8010AA68
/* B81C24 8010AA84 00042403 */   sra   $a0, $a0, 0x10
/* B81C28 8010AA88 A7A4007C */  sh    $a0, 0x7c($sp)
/* B81C2C 8010AA8C A7A3007E */  sh    $v1, 0x7e($sp)
.L8010AA90:
/* B81C30 8010AA90 2401003C */  li    $at, 60
/* B81C34 8010AA94 0041001A */  div   $zero, $v0, $at
/* B81C38 8010AA98 00001010 */  mfhi  $v0
/* B81C3C 8010AA9C 00021400 */  sll   $v0, $v0, 0x10
/* B81C40 8010AAA0 00021403 */  sra   $v0, $v0, 0x10
/* B81C44 8010AAA4 2841000A */  slti  $at, $v0, 0xa
/* B81C48 8010AAA8 00002825 */  move  $a1, $zero
/* B81C4C 8010AAAC A7A20082 */  sh    $v0, 0x82($sp)
/* B81C50 8010AAB0 1420000B */  bnez  $at, .L8010AAE0
/* B81C54 8010AAB4 A7A00080 */   sh    $zero, 0x80($sp)
.L8010AAB8:
/* B81C58 8010AAB8 2442FFF6 */  addiu $v0, $v0, -0xa
/* B81C5C 8010AABC 00021400 */  sll   $v0, $v0, 0x10
/* B81C60 8010AAC0 24A50001 */  addiu $a1, $a1, 1
/* B81C64 8010AAC4 00021403 */  sra   $v0, $v0, 0x10
/* B81C68 8010AAC8 2841000A */  slti  $at, $v0, 0xa
/* B81C6C 8010AACC 00052C00 */  sll   $a1, $a1, 0x10
/* B81C70 8010AAD0 1020FFF9 */  beqz  $at, .L8010AAB8
/* B81C74 8010AAD4 00052C03 */   sra   $a1, $a1, 0x10
/* B81C78 8010AAD8 A7A50080 */  sh    $a1, 0x80($sp)
/* B81C7C 8010AADC A7A20082 */  sh    $v0, 0x82($sp)
.L8010AAE0:
/* B81C80 8010AAE0 00135840 */  sll   $t3, $s3, 1
.L8010AAE4:
/* B81C84 8010AAE4 27AD007C */  addiu $t5, $sp, 0x7c
/* B81C88 8010AAE8 016D8021 */  addu  $s0, $t3, $t5
/* B81C8C 8010AAEC 86050000 */  lh    $a1, ($s0)
/* B81C90 8010AAF0 02F69021 */  addu  $s2, $s7, $s6
/* B81C94 8010AAF4 34018000 */  li    $at, 32768
/* B81C98 8010AAF8 24A50010 */  addiu $a1, $a1, 0x10
/* B81C9C 8010AAFC 30A500FF */  andi  $a1, $a1, 0xff
/* B81CA0 8010AB00 02419021 */  addu  $s2, $s2, $at
/* B81CA4 8010AB04 03C02025 */  move  $a0, $fp
/* B81CA8 8010AB08 0C01BB98 */  jal   func_8006EE60
/* B81CAC 8010AB0C 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B81CB0 8010AB10 860C0000 */  lh    $t4, ($s0)
/* B81CB4 8010AB14 26D60001 */  addiu $s6, $s6, 1
/* B81CB8 8010AB18 0016B400 */  sll   $s6, $s6, 0x10
/* B81CBC 8010AB1C 24010001 */  li    $at, 1
/* B81CC0 8010AB20 258E0030 */  addiu $t6, $t4, 0x30
/* B81CC4 8010AB24 26B50080 */  addiu $s5, $s5, 0x80
/* B81CC8 8010AB28 A24E6306 */  sb    $t6, 0x6306($s2)
/* B81CCC 8010AB2C 1661000D */  bne   $s3, $at, .L8010AB64
/* B81CD0 8010AB30 0016B403 */   sra   $s6, $s6, 0x10
/* B81CD4 8010AB34 03C02025 */  move  $a0, $fp
/* B81CD8 8010AB38 2405001A */  li    $a1, 26
/* B81CDC 8010AB3C 0C01BB98 */  jal   func_8006EE60
/* B81CE0 8010AB40 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B81CE4 8010AB44 02F67821 */  addu  $t7, $s7, $s6
/* B81CE8 8010AB48 26D60001 */  addiu $s6, $s6, 1
/* B81CEC 8010AB4C 25E17FFF */  addiu $at, $t7, 0x7fff
/* B81CF0 8010AB50 2418003A */  li    $t8, 58
/* B81CF4 8010AB54 0016B400 */  sll   $s6, $s6, 0x10
/* B81CF8 8010AB58 26B50080 */  addiu $s5, $s5, 0x80
/* B81CFC 8010AB5C A0386307 */  sb    $t8, 0x6307($at)
/* B81D00 8010AB60 0016B403 */  sra   $s6, $s6, 0x10
.L8010AB64:
/* B81D04 8010AB64 26730001 */  addiu $s3, $s3, 1
/* B81D08 8010AB68 00139C00 */  sll   $s3, $s3, 0x10
/* B81D0C 8010AB6C 00139C03 */  sra   $s3, $s3, 0x10
/* B81D10 8010AB70 2A610004 */  slti  $at, $s3, 4
/* B81D14 8010AB74 5420FFDB */  bnezl $at, .L8010AAE4
/* B81D18 8010AB78 00135840 */   sll   $t3, $s3, 1
/* B81D1C 8010AB7C 26D6FFFF */  addiu $s6, $s6, -1
/* B81D20 8010AB80 0016B400 */  sll   $s6, $s6, 0x10
/* B81D24 8010AB84 10000139 */  b     .L8010B06C
/* B81D28 8010AB88 0016B403 */   sra   $s6, $s6, 0x10
.L8010AB8C:
/* B81D2C 8010AB8C 24010013 */  li    $at, 19
/* B81D30 8010AB90 16010026 */  bne   $s0, $at, .L8010AC2C
/* B81D34 8010AB94 8FA30054 */   lw    $v1, 0x54($sp)
/* B81D38 8010AB98 946963CE */  lhu   $t1, 0x63ce($v1)
/* B81D3C 8010AB9C 26C20001 */  addiu $v0, $s6, 1
/* B81D40 8010ABA0 00023C00 */  sll   $a3, $v0, 0x10
/* B81D44 8010ABA4 03C9C821 */  addu  $t9, $fp, $t1
/* B81D48 8010ABA8 272A7FFF */  addiu $t2, $t9, 0x7fff
/* B81D4C 8010ABAC 914A5C8A */  lbu   $t2, 0x5c8a($t2)
/* B81D50 8010ABB0 00073C03 */  sra   $a3, $a3, 0x10
/* B81D54 8010ABB4 02E75821 */  addu  $t3, $s7, $a3
/* B81D58 8010ABB8 25617FFF */  addiu $at, $t3, 0x7fff
/* B81D5C 8010ABBC A02A6307 */  sb    $t2, 0x6307($at)
/* B81D60 8010ABC0 946C63CE */  lhu   $t4, 0x63ce($v1)
/* B81D64 8010ABC4 0002B400 */  sll   $s6, $v0, 0x10
/* B81D68 8010ABC8 0016B403 */  sra   $s6, $s6, 0x10
/* B81D6C 8010ABCC 02F66821 */  addu  $t5, $s7, $s6
/* B81D70 8010ABD0 03CC7021 */  addu  $t6, $fp, $t4
/* B81D74 8010ABD4 25C67FFF */  addiu $a2, $t6, 0x7fff
/* B81D78 8010ABD8 25A57FFF */  addiu $a1, $t5, 0x7fff
/* B81D7C 8010ABDC 3C048015 */  lui   $a0, %hi(D_801541B8) # $a0, 0x8015
/* B81D80 8010ABE0 248441B8 */  addiu $a0, %lo(D_801541B8) # addiu $a0, $a0, 0x41b8
/* B81D84 8010ABE4 90A56307 */  lbu   $a1, 0x6307($a1)
/* B81D88 8010ABE8 0C00084C */  jal   osSyncPrintf
/* B81D8C 8010ABEC 90C65C8A */   lbu   $a2, 0x5c8a($a2)
/* B81D90 8010ABF0 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* B81D94 8010ABF4 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* B81D98 8010ABF8 8FB80054 */  lw    $t8, 0x54($sp)
/* B81D9C 8010ABFC 8FA40098 */  lw    $a0, 0x98($sp)
/* B81DA0 8010AC00 87260F16 */  lh    $a2, 0xf16($t9)
/* B81DA4 8010AC04 970F63CE */  lhu   $t7, 0x63ce($t8)
/* B81DA8 8010AC08 24C6000A */  addiu $a2, $a2, 0xa
/* B81DAC 8010AC0C 03CF4821 */  addu  $t1, $fp, $t7
/* B81DB0 8010AC10 25257FFF */  addiu $a1, $t1, 0x7fff
/* B81DB4 8010AC14 00063400 */  sll   $a2, $a2, 0x10
/* B81DB8 8010AC18 00063403 */  sra   $a2, $a2, 0x10
/* B81DBC 8010AC1C 0C04265A */  jal   func_80109968
/* B81DC0 8010AC20 90A55C8A */   lbu   $a1, 0x5c8a($a1)
/* B81DC4 8010AC24 10000112 */  b     .L8010B070
/* B81DC8 8010AC28 8FB90054 */   lw    $t9, 0x54($sp)
.L8010AC2C:
/* B81DCC 8010AC2C 24010015 */  li    $at, 21
/* B81DD0 8010AC30 16010051 */  bne   $s0, $at, .L8010AD78
/* B81DD4 8010AC34 8FA20054 */   lw    $v0, 0x54($sp)
/* B81DD8 8010AC38 944A63CE */  lhu   $t2, 0x63ce($v0)
/* B81DDC 8010AC3C 26E17FFF */  addiu $at, $s7, 0x7fff
/* B81DE0 8010AC40 3C10008C */  lui   $s0, %hi(_message_texture_staticSegmentRomStart) # $s0, 0x8c
/* B81DE4 8010AC44 03CA5821 */  addu  $t3, $fp, $t2
/* B81DE8 8010AC48 256D7FFF */  addiu $t5, $t3, 0x7fff
/* B81DEC 8010AC4C 91AD5C8A */  lbu   $t5, 0x5c8a($t5)
/* B81DF0 8010AC50 2610F000 */  addiu $s0, %lo(_message_texture_staticSegmentRomStart) # addiu $s0, $s0, -0x1000
/* B81DF4 8010AC54 3C078015 */  lui   $a3, %hi(D_801541CC) # $a3, 0x8015
/* B81DF8 8010AC58 000D6040 */  sll   $t4, $t5, 1
/* B81DFC 8010AC5C A42C63F7 */  sh    $t4, 0x63f7($at)
/* B81E00 8010AC60 944E63CE */  lhu   $t6, 0x63ce($v0)
/* B81E04 8010AC64 24E741CC */  addiu $a3, %lo(D_801541CC) # addiu $a3, $a3, 0x41cc
/* B81E08 8010AC68 24060900 */  li    $a2, 2304
/* B81E0C 8010AC6C 03CEC021 */  addu  $t8, $fp, $t6
/* B81E10 8010AC70 270F7FFF */  addiu $t7, $t8, 0x7fff
/* B81E14 8010AC74 91EF5C8B */  lbu   $t7, 0x5c8b($t7)
/* B81E18 8010AC78 31E900F0 */  andi  $t1, $t7, 0xf0
/* B81E1C 8010AC7C 0009C903 */  sra   $t9, $t1, 4
/* B81E20 8010AC80 A03963F9 */  sb    $t9, 0x63f9($at)
/* B81E24 8010AC84 944A63CE */  lhu   $t2, 0x63ce($v0)
/* B81E28 8010AC88 03CA5821 */  addu  $t3, $fp, $t2
/* B81E2C 8010AC8C 256D7FFF */  addiu $t5, $t3, 0x7fff
/* B81E30 8010AC90 91AD5C8B */  lbu   $t5, 0x5c8b($t5)
/* B81E34 8010AC94 31AC000F */  andi  $t4, $t5, 0xf
/* B81E38 8010AC98 A02C63FA */  sb    $t4, 0x63fa($at)
/* B81E3C 8010AC9C 944E63CE */  lhu   $t6, 0x63ce($v0)
/* B81E40 8010ACA0 03CEC021 */  addu  $t8, $fp, $t6
/* B81E44 8010ACA4 270F7FFF */  addiu $t7, $t8, 0x7fff
/* B81E48 8010ACA8 91EF5C8C */  lbu   $t7, 0x5c8c($t7)
/* B81E4C 8010ACAC 31E900F0 */  andi  $t1, $t7, 0xf0
/* B81E50 8010ACB0 0009C903 */  sra   $t9, $t1, 4
/* B81E54 8010ACB4 A03963FB */  sb    $t9, 0x63fb($at)
/* B81E58 8010ACB8 944A63CE */  lhu   $t2, 0x63ce($v0)
/* B81E5C 8010ACBC 24090002 */  li    $t1, 2
/* B81E60 8010ACC0 240F0726 */  li    $t7, 1830
/* B81E64 8010ACC4 03CA5821 */  addu  $t3, $fp, $t2
/* B81E68 8010ACC8 256D7FFF */  addiu $t5, $t3, 0x7fff
/* B81E6C 8010ACCC 91AD5C8C */  lbu   $t5, 0x5c8c($t5)
/* B81E70 8010ACD0 31AC000F */  andi  $t4, $t5, 0xf
/* B81E74 8010ACD4 A02C63FC */  sb    $t4, 0x63fc($at)
/* B81E78 8010ACD8 944E63F6 */  lhu   $t6, 0x63f6($v0)
/* B81E7C 8010ACDC 8C4462B0 */  lw    $a0, 0x62b0($v0)
/* B81E80 8010ACE0 A7A90086 */  sh    $t1, 0x86($sp)
/* B81E84 8010ACE4 000EC0C0 */  sll   $t8, $t6, 3
/* B81E88 8010ACE8 030EC021 */  addu  $t8, $t8, $t6
/* B81E8C 8010ACEC 0018C200 */  sll   $t8, $t8, 8
/* B81E90 8010ACF0 02182821 */  addu  $a1, $s0, $t8
/* B81E94 8010ACF4 AFAF0010 */  sw    $t7, 0x10($sp)
/* B81E98 8010ACF8 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B81E9C 8010ACFC 24841000 */   addiu $a0, $a0, 0x1000
/* B81EA0 8010AD00 8FA20054 */  lw    $v0, 0x54($sp)
/* B81EA4 8010AD04 3C078015 */  lui   $a3, %hi(D_801541E0) # $a3, 0x8015
/* B81EA8 8010AD08 240B072A */  li    $t3, 1834
/* B81EAC 8010AD0C 945963F6 */  lhu   $t9, 0x63f6($v0)
/* B81EB0 8010AD10 8C4462B0 */  lw    $a0, 0x62b0($v0)
/* B81EB4 8010AD14 AFAB0010 */  sw    $t3, 0x10($sp)
/* B81EB8 8010AD18 001950C0 */  sll   $t2, $t9, 3
/* B81EBC 8010AD1C 01595021 */  addu  $t2, $t2, $t9
/* B81EC0 8010AD20 000A5200 */  sll   $t2, $t2, 8
/* B81EC4 8010AD24 020A2821 */  addu  $a1, $s0, $t2
/* B81EC8 8010AD28 24A50900 */  addiu $a1, $a1, 0x900
/* B81ECC 8010AD2C 24E741E0 */  addiu $a3, %lo(D_801541E0) # addiu $a3, $a3, 0x41e0
/* B81ED0 8010AD30 24060900 */  li    $a2, 2304
/* B81ED4 8010AD34 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B81ED8 8010AD38 24841900 */   addiu $a0, $a0, 0x1900
/* B81EDC 8010AD3C 8FAD0054 */  lw    $t5, 0x54($sp)
/* B81EE0 8010AD40 26E17FFF */  addiu $at, $s7, 0x7fff
/* B81EE4 8010AD44 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B81EE8 8010AD48 95AC63CE */  lhu   $t4, 0x63ce($t5)
/* B81EEC 8010AD4C 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* B81EF0 8010AD50 24090032 */  li    $t1, 50
/* B81EF4 8010AD54 258E0003 */  addiu $t6, $t4, 3
/* B81EF8 8010AD58 A42E63CF */  sh    $t6, 0x63cf($at)
/* B81EFC 8010AD5C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B81F00 8010AD60 84580F16 */  lh    $t8, 0xf16($v0)
/* B81F04 8010AD64 270F0008 */  addiu $t7, $t8, 8
/* B81F08 8010AD68 A44F0B0E */  sh    $t7, 0xb0e($v0)
/* B81F0C 8010AD6C 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* B81F10 8010AD70 100000BE */  b     .L8010B06C
/* B81F14 8010AD74 A7290B00 */   sh    $t1, 0xb00($t9)
.L8010AD78:
/* B81F18 8010AD78 24010005 */  li    $at, 5
/* B81F1C 8010AD7C 16010012 */  bne   $s0, $at, .L8010ADC8
/* B81F20 8010AD80 26C20001 */   addiu $v0, $s6, 1
/* B81F24 8010AD84 8FAA0054 */  lw    $t2, 0x54($sp)
/* B81F28 8010AD88 00021C00 */  sll   $v1, $v0, 0x10
/* B81F2C 8010AD8C 26E17FFF */  addiu $at, $s7, 0x7fff
/* B81F30 8010AD90 954763CE */  lhu   $a3, 0x63ce($t2)
/* B81F34 8010AD94 00031C03 */  sra   $v1, $v1, 0x10
/* B81F38 8010AD98 02E36021 */  addu  $t4, $s7, $v1
/* B81F3C 8010AD9C 24E70001 */  addiu $a3, $a3, 1
/* B81F40 8010ADA0 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B81F44 8010ADA4 03C75821 */  addu  $t3, $fp, $a3
/* B81F48 8010ADA8 256D7FFF */  addiu $t5, $t3, 0x7fff
/* B81F4C 8010ADAC A42763CF */  sh    $a3, 0x63cf($at)
/* B81F50 8010ADB0 91AD5C89 */  lbu   $t5, 0x5c89($t5)
/* B81F54 8010ADB4 25817FFF */  addiu $at, $t4, 0x7fff
/* B81F58 8010ADB8 0002B400 */  sll   $s6, $v0, 0x10
/* B81F5C 8010ADBC 0016B403 */  sra   $s6, $s6, 0x10
/* B81F60 8010ADC0 100000AA */  b     .L8010B06C
/* B81F64 8010ADC4 A02D6307 */   sb    $t5, 0x6307($at)
.L8010ADC8:
/* B81F68 8010ADC8 24010001 */  li    $at, 1
/* B81F6C 8010ADCC 16010004 */  bne   $s0, $at, .L8010ADE0
/* B81F70 8010ADD0 87AE0086 */   lh    $t6, 0x86($sp)
/* B81F74 8010ADD4 25D80001 */  addiu $t8, $t6, 1
/* B81F78 8010ADD8 100000A4 */  b     .L8010B06C
/* B81F7C 8010ADDC A7B80086 */   sh    $t8, 0x86($sp)
.L8010ADE0:
/* B81F80 8010ADE0 24010008 */  li    $at, 8
/* B81F84 8010ADE4 120100A1 */  beq   $s0, $at, .L8010B06C
/* B81F88 8010ADE8 24010009 */   li    $at, 9
/* B81F8C 8010ADEC 1201009F */  beq   $s0, $at, .L8010B06C
/* B81F90 8010ADF0 2401000D */   li    $at, 13
/* B81F94 8010ADF4 1201009D */  beq   $s0, $at, .L8010B06C
/* B81F98 8010ADF8 24010010 */   li    $at, 16
/* B81F9C 8010ADFC 1201009B */  beq   $s0, $at, .L8010B06C
/* B81FA0 8010AE00 2401000A */   li    $at, 10
/* B81FA4 8010AE04 12010099 */  beq   $s0, $at, .L8010B06C
/* B81FA8 8010AE08 2401001A */   li    $at, 26
/* B81FAC 8010AE0C 12010097 */  beq   $s0, $at, .L8010B06C
/* B81FB0 8010AE10 2401000E */   li    $at, 14
/* B81FB4 8010AE14 1601001A */  bne   $s0, $at, .L8010AE80
/* B81FB8 8010AE18 3C028015 */   lui   $v0, %hi(D_8014B2F0) # $v0, 0x8015
/* B81FBC 8010AE1C 2442B2F0 */  addiu $v0, %lo(D_8014B2F0) # addiu $v0, $v0, -0x4d10
/* B81FC0 8010AE20 240F0001 */  li    $t7, 1
/* B81FC4 8010AE24 A44F0000 */  sh    $t7, ($v0)
/* B81FC8 8010AE28 3C048015 */  lui   $a0, %hi(D_801541F4) # $a0, 0x8015
/* B81FCC 8010AE2C 248441F4 */  addiu $a0, %lo(D_801541F4) # addiu $a0, $a0, 0x41f4
/* B81FD0 8010AE30 0C00084C */  jal   osSyncPrintf
/* B81FD4 8010AE34 84450000 */   lh    $a1, ($v0)
/* B81FD8 8010AE38 8FA90054 */  lw    $t1, 0x54($sp)
/* B81FDC 8010AE3C 26C20001 */  addiu $v0, $s6, 1
/* B81FE0 8010AE40 00021C00 */  sll   $v1, $v0, 0x10
/* B81FE4 8010AE44 952763CE */  lhu   $a3, 0x63ce($t1)
/* B81FE8 8010AE48 26E17FFF */  addiu $at, $s7, 0x7fff
/* B81FEC 8010AE4C 00031C03 */  sra   $v1, $v1, 0x10
/* B81FF0 8010AE50 24E70001 */  addiu $a3, $a3, 1
/* B81FF4 8010AE54 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B81FF8 8010AE58 03C7C821 */  addu  $t9, $fp, $a3
/* B81FFC 8010AE5C 272A7FFF */  addiu $t2, $t9, 0x7fff
/* B82000 8010AE60 A42763CF */  sh    $a3, 0x63cf($at)
/* B82004 8010AE64 914A5C89 */  lbu   $t2, 0x5c89($t2)
/* B82008 8010AE68 02E35821 */  addu  $t3, $s7, $v1
/* B8200C 8010AE6C 25617FFF */  addiu $at, $t3, 0x7fff
/* B82010 8010AE70 0002B400 */  sll   $s6, $v0, 0x10
/* B82014 8010AE74 0016B403 */  sra   $s6, $s6, 0x10
/* B82018 8010AE78 1000007C */  b     .L8010B06C
/* B8201C 8010AE7C A02A6307 */   sb    $t2, 0x6307($at)
.L8010AE80:
/* B82020 8010AE80 24010011 */  li    $at, 17
/* B82024 8010AE84 1601002A */  bne   $s0, $at, .L8010AF30
/* B82028 8010AE88 3C028015 */   lui   $v0, %hi(D_8014B2F0) # $v0, 0x8015
/* B8202C 8010AE8C 2442B2F0 */  addiu $v0, %lo(D_8014B2F0) # addiu $v0, $v0, -0x4d10
/* B82030 8010AE90 240D0001 */  li    $t5, 1
/* B82034 8010AE94 A44D0000 */  sh    $t5, ($v0)
/* B82038 8010AE98 3C048015 */  lui   $a0, %hi(D_80154214) # $a0, 0x8015
/* B8203C 8010AE9C 24844214 */  addiu $a0, %lo(D_80154214) # addiu $a0, $a0, 0x4214
/* B82040 8010AEA0 0C00084C */  jal   osSyncPrintf
/* B82044 8010AEA4 84450000 */   lh    $a1, ($v0)
/* B82048 8010AEA8 8FAC0054 */  lw    $t4, 0x54($sp)
/* B8204C 8010AEAC 26C20001 */  addiu $v0, $s6, 1
/* B82050 8010AEB0 26E17FFF */  addiu $at, $s7, 0x7fff
/* B82054 8010AEB4 958763CE */  lhu   $a3, 0x63ce($t4)
/* B82058 8010AEB8 00021C00 */  sll   $v1, $v0, 0x10
/* B8205C 8010AEBC 00031C03 */  sra   $v1, $v1, 0x10
/* B82060 8010AEC0 24E70001 */  addiu $a3, $a3, 1
/* B82064 8010AEC4 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B82068 8010AEC8 03C77021 */  addu  $t6, $fp, $a3
/* B8206C 8010AECC 25D87FFF */  addiu $t8, $t6, 0x7fff
/* B82070 8010AED0 A42763CF */  sh    $a3, 0x63cf($at)
/* B82074 8010AED4 93185C89 */  lbu   $t8, 0x5c89($t8)
/* B82078 8010AED8 02E37821 */  addu  $t7, $s7, $v1
/* B8207C 8010AEDC 25E17FFF */  addiu $at, $t7, 0x7fff
/* B82080 8010AEE0 A0386307 */  sb    $t8, 0x6307($at)
/* B82084 8010AEE4 8FA90054 */  lw    $t1, 0x54($sp)
/* B82088 8010AEE8 0040B025 */  move  $s6, $v0
/* B8208C 8010AEEC 26C20001 */  addiu $v0, $s6, 1
/* B82090 8010AEF0 952763CE */  lhu   $a3, 0x63ce($t1)
/* B82094 8010AEF4 00021C00 */  sll   $v1, $v0, 0x10
/* B82098 8010AEF8 26E17FFF */  addiu $at, $s7, 0x7fff
/* B8209C 8010AEFC 24E70001 */  addiu $a3, $a3, 1
/* B820A0 8010AF00 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B820A4 8010AF04 03C7C821 */  addu  $t9, $fp, $a3
/* B820A8 8010AF08 272A7FFF */  addiu $t2, $t9, 0x7fff
/* B820AC 8010AF0C A42763CF */  sh    $a3, 0x63cf($at)
/* B820B0 8010AF10 00031C03 */  sra   $v1, $v1, 0x10
/* B820B4 8010AF14 914A5C89 */  lbu   $t2, 0x5c89($t2)
/* B820B8 8010AF18 02E35821 */  addu  $t3, $s7, $v1
/* B820BC 8010AF1C 25617FFF */  addiu $at, $t3, 0x7fff
/* B820C0 8010AF20 0002B400 */  sll   $s6, $v0, 0x10
/* B820C4 8010AF24 0016B403 */  sra   $s6, $s6, 0x10
/* B820C8 8010AF28 10000050 */  b     .L8010B06C
/* B820CC 8010AF2C A02A6307 */   sb    $t2, 0x6307($at)
.L8010AF30:
/* B820D0 8010AF30 24010006 */  li    $at, 6
/* B820D4 8010AF34 12010004 */  beq   $s0, $at, .L8010AF48
/* B820D8 8010AF38 26C20001 */   addiu $v0, $s6, 1
/* B820DC 8010AF3C 24010014 */  li    $at, 20
/* B820E0 8010AF40 56010013 */  bnel  $s0, $at, .L8010AF90
/* B820E4 8010AF44 24010012 */   li    $at, 18
.L8010AF48:
/* B820E8 8010AF48 8FAD0054 */  lw    $t5, 0x54($sp)
/* B820EC 8010AF4C 00021C00 */  sll   $v1, $v0, 0x10
/* B820F0 8010AF50 26E17FFF */  addiu $at, $s7, 0x7fff
/* B820F4 8010AF54 95A763CE */  lhu   $a3, 0x63ce($t5)
/* B820F8 8010AF58 00031C03 */  sra   $v1, $v1, 0x10
/* B820FC 8010AF5C 02E37821 */  addu  $t7, $s7, $v1
/* B82100 8010AF60 24E70001 */  addiu $a3, $a3, 1
/* B82104 8010AF64 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B82108 8010AF68 03C76021 */  addu  $t4, $fp, $a3
/* B8210C 8010AF6C 258E7FFF */  addiu $t6, $t4, 0x7fff
/* B82110 8010AF70 A42763CF */  sh    $a3, 0x63cf($at)
/* B82114 8010AF74 91D85C89 */  lbu   $t8, 0x5c89($t6)
/* B82118 8010AF78 25E17FFF */  addiu $at, $t7, 0x7fff
/* B8211C 8010AF7C 0002B400 */  sll   $s6, $v0, 0x10
/* B82120 8010AF80 0016B403 */  sra   $s6, $s6, 0x10
/* B82124 8010AF84 10000039 */  b     .L8010B06C
/* B82128 8010AF88 A0386307 */   sb    $t8, 0x6307($at)
/* B8212C 8010AF8C 24010012 */  li    $at, 18
.L8010AF90:
/* B82130 8010AF90 16010022 */  bne   $s0, $at, .L8010B01C
/* B82134 8010AF94 26C20001 */   addiu $v0, $s6, 1
/* B82138 8010AF98 8FA90054 */  lw    $t1, 0x54($sp)
/* B8213C 8010AF9C 26E17FFF */  addiu $at, $s7, 0x7fff
/* B82140 8010AFA0 00021C00 */  sll   $v1, $v0, 0x10
/* B82144 8010AFA4 952763CE */  lhu   $a3, 0x63ce($t1)
/* B82148 8010AFA8 00031C03 */  sra   $v1, $v1, 0x10
/* B8214C 8010AFAC 02E35821 */  addu  $t3, $s7, $v1
/* B82150 8010AFB0 24E70001 */  addiu $a3, $a3, 1
/* B82154 8010AFB4 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B82158 8010AFB8 03C7C821 */  addu  $t9, $fp, $a3
/* B8215C 8010AFBC 272A7FFF */  addiu $t2, $t9, 0x7fff
/* B82160 8010AFC0 A42763CF */  sh    $a3, 0x63cf($at)
/* B82164 8010AFC4 914A5C89 */  lbu   $t2, 0x5c89($t2)
/* B82168 8010AFC8 25617FFF */  addiu $at, $t3, 0x7fff
/* B8216C 8010AFCC 0040B025 */  move  $s6, $v0
/* B82170 8010AFD0 A02A6307 */  sb    $t2, 0x6307($at)
/* B82174 8010AFD4 8FAD0054 */  lw    $t5, 0x54($sp)
/* B82178 8010AFD8 26C20001 */  addiu $v0, $s6, 1
/* B8217C 8010AFDC 00021C00 */  sll   $v1, $v0, 0x10
/* B82180 8010AFE0 95A763CE */  lhu   $a3, 0x63ce($t5)
/* B82184 8010AFE4 26E17FFF */  addiu $at, $s7, 0x7fff
/* B82188 8010AFE8 00031C03 */  sra   $v1, $v1, 0x10
/* B8218C 8010AFEC 24E70001 */  addiu $a3, $a3, 1
/* B82190 8010AFF0 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B82194 8010AFF4 03C76021 */  addu  $t4, $fp, $a3
/* B82198 8010AFF8 258E7FFF */  addiu $t6, $t4, 0x7fff
/* B8219C 8010AFFC A42763CF */  sh    $a3, 0x63cf($at)
/* B821A0 8010B000 91CE5C89 */  lbu   $t6, 0x5c89($t6)
/* B821A4 8010B004 02E3C021 */  addu  $t8, $s7, $v1
/* B821A8 8010B008 27017FFF */  addiu $at, $t8, 0x7fff
/* B821AC 8010B00C 0002B400 */  sll   $s6, $v0, 0x10
/* B821B0 8010B010 0016B403 */  sra   $s6, $s6, 0x10
/* B821B4 8010B014 10000015 */  b     .L8010B06C
/* B821B8 8010B018 A02E6307 */   sb    $t6, 0x6307($at)
.L8010B01C:
/* B821BC 8010B01C 2401001B */  li    $at, 27
/* B821C0 8010B020 16010004 */  bne   $s0, $at, .L8010B034
/* B821C4 8010B024 240F0002 */   li    $t7, 2
/* B821C8 8010B028 26E17FFF */  addiu $at, $s7, 0x7fff
/* B821CC 8010B02C 1000000F */  b     .L8010B06C
/* B821D0 8010B030 A02F63E7 */   sb    $t7, 0x63e7($at)
.L8010B034:
/* B821D4 8010B034 2401001C */  li    $at, 28
/* B821D8 8010B038 16010004 */  bne   $s0, $at, .L8010B04C
/* B821DC 8010B03C 24090003 */   li    $t1, 3
/* B821E0 8010B040 26E17FFF */  addiu $at, $s7, 0x7fff
/* B821E4 8010B044 10000009 */  b     .L8010B06C
/* B821E8 8010B048 A02963E7 */   sb    $t1, 0x63e7($at)
.L8010B04C:
/* B821EC 8010B04C 24010020 */  li    $at, 32
/* B821F0 8010B050 12010006 */  beq   $s0, $at, .L8010B06C
/* B821F4 8010B054 03C02025 */   move  $a0, $fp
/* B821F8 8010B058 2605FFE0 */  addiu $a1, $s0, -0x20
/* B821FC 8010B05C 30A500FF */  andi  $a1, $a1, 0xff
/* B82200 8010B060 0C01BB98 */  jal   func_8006EE60
/* B82204 8010B064 32A6FFFF */   andi  $a2, $s5, 0xffff
/* B82208 8010B068 26B50080 */  addiu $s5, $s5, 0x80
.L8010B06C:
glabel L8010B06C
/* B8220C 8010B06C 8FB90054 */  lw    $t9, 0x54($sp)
.L8010B070:
/* B82210 8010B070 26D60001 */  addiu $s6, $s6, 1
/* B82214 8010B074 0016B400 */  sll   $s6, $s6, 0x10
/* B82218 8010B078 972A63CE */  lhu   $t2, 0x63ce($t9)
/* B8221C 8010B07C 26E17FFF */  addiu $at, $s7, 0x7fff
/* B82220 8010B080 0016B403 */  sra   $s6, $s6, 0x10
/* B82224 8010B084 254B0001 */  addiu $t3, $t2, 1
/* B82228 8010B088 1000FACE */  b     .L80109BC4
/* B8222C 8010B08C A42B63CF */   sh    $t3, 0x63cf($at)
.L8010B090:
/* B82230 8010B090 8FBF0044 */  lw    $ra, 0x44($sp)
.L8010B094:
/* B82234 8010B094 8FB00020 */  lw    $s0, 0x20($sp)
/* B82238 8010B098 8FB10024 */  lw    $s1, 0x24($sp)
/* B8223C 8010B09C 8FB20028 */  lw    $s2, 0x28($sp)
/* B82240 8010B0A0 8FB3002C */  lw    $s3, 0x2c($sp)
/* B82244 8010B0A4 8FB40030 */  lw    $s4, 0x30($sp)
/* B82248 8010B0A8 8FB50034 */  lw    $s5, 0x34($sp)
/* B8224C 8010B0AC 8FB60038 */  lw    $s6, 0x38($sp)
/* B82250 8010B0B0 8FB7003C */  lw    $s7, 0x3c($sp)
/* B82254 8010B0B4 8FBE0040 */  lw    $fp, 0x40($sp)
/* B82258 8010B0B8 03E00008 */  jr    $ra
/* B8225C 8010B0BC 27BD0098 */   addiu $sp, $sp, 0x98

glabel func_8010B0C0
/* B82260 8010B0C0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B82264 8010B0C4 3C0F0001 */  lui   $t7, 1
/* B82268 8010B0C8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B8226C 8010B0CC AFB00020 */  sw    $s0, 0x20($sp)
/* B82270 8010B0D0 AFA40048 */  sw    $a0, 0x48($sp)
/* B82274 8010B0D4 AFA5004C */  sw    $a1, 0x4c($sp)
/* B82278 8010B0D8 01E47821 */  addu  $t7, $t7, $a0
/* B8227C 8010B0DC 91EF03DC */  lbu   $t7, 0x3dc($t7)
/* B82280 8010B0E0 3C108016 */  lui   $s0, %hi(gGameInfo) # $s0, 0x8016
/* B82284 8010B0E4 30A7FFFF */  andi  $a3, $a1, 0xffff
/* B82288 8010B0E8 15E00005 */  bnez  $t7, .L8010B100
/* B8228C 8010B0EC 2610FA90 */   addiu $s0, %lo(gGameInfo) # addiu $s0, $s0, -0x570
/* B82290 8010B0F0 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B82294 8010B0F4 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B82298 8010B0F8 94B813EA */  lhu   $t8, 0x13ea($a1)
/* B8229C 8010B0FC A4B813EE */  sh    $t8, 0x13ee($a1)
.L8010B100:
/* B822A0 8010B100 8E030000 */  lw    $v1, ($s0)
/* B822A4 8010B104 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B822A8 8010B108 24010010 */  li    $at, 16
/* B822AC 8010B10C 847904B2 */  lh    $t9, 0x4b2($v1)
/* B822B0 8010B110 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B822B4 8010B114 24040005 */  li    $a0, 5
/* B822B8 8010B118 17210007 */  bne   $t9, $at, .L8010B138
/* B822BC 8010B11C 00000000 */   nop   
/* B822C0 8010B120 0C020978 */  jal   func_800825E0
/* B822C4 8010B124 A7A7004E */   sh    $a3, 0x4e($sp)
/* B822C8 8010B128 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B822CC 8010B12C 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B822D0 8010B130 97A7004E */  lhu   $a3, 0x4e($sp)
/* B822D4 8010B134 8E030000 */  lw    $v1, ($s0)
.L8010B138:
/* B822D8 8010B138 3C088015 */  lui   $t0, %hi(D_8014B308) # $t0, 0x8015
/* B822DC 8010B13C 2508B308 */  addiu $t0, %lo(D_8014B308) # addiu $t0, $t0, -0x4cf8
/* B822E0 8010B140 A5000000 */  sh    $zero, ($t0)
/* B822E4 8010B144 850A0000 */  lh    $t2, ($t0)
/* B822E8 8010B148 3C048015 */  lui   $a0, %hi(D_8014B300) # $a0, 0x8015
/* B822EC 8010B14C 3C068015 */  lui   $a2, %hi(D_8014B2F4) # $a2, 0x8015
/* B822F0 8010B150 24C6B2F4 */  addiu $a2, %lo(D_8014B2F4) # addiu $a2, $a2, -0x4d0c
/* B822F4 8010B154 2484B300 */  addiu $a0, %lo(D_8014B300) # addiu $a0, $a0, -0x4d00
/* B822F8 8010B158 3C018015 */  lui   $at, %hi(D_8014B318) # $at, 0x8015
/* B822FC 8010B15C A08A0000 */  sb    $t2, ($a0)
/* B82300 8010B160 A0CA0000 */  sb    $t2, ($a2)
/* B82304 8010B164 314B00FF */  andi  $t3, $t2, 0xff
/* B82308 8010B168 A42BB318 */  sh    $t3, %lo(D_8014B318)($at)
/* B8230C 8010B16C 28E10500 */  slti  $at, $a3, 0x500
/* B82310 8010B170 14200011 */  bnez  $at, .L8010B1B8
/* B82314 8010B174 00E01025 */   move  $v0, $a3
/* B82318 8010B178 28410600 */  slti  $at, $v0, 0x600
/* B8231C 8010B17C 1020000E */  beqz  $at, .L8010B1B8
/* B82320 8010B180 240C0001 */   li    $t4, 1
/* B82324 8010B184 A50C0000 */  sh    $t4, ($t0)
/* B82328 8010B188 240D0055 */  li    $t5, 85
/* B8232C 8010B18C A46D0B06 */  sh    $t5, 0xb06($v1)
/* B82330 8010B190 8E0F0000 */  lw    $t7, ($s0)
/* B82334 8010B194 240E0006 */  li    $t6, 6
/* B82338 8010B198 24180014 */  li    $t8, 20
/* B8233C 8010B19C A5EE0B04 */  sh    $t6, 0xb04($t7)
/* B82340 8010B1A0 8E190000 */  lw    $t9, ($s0)
/* B82344 8010B1A4 24090030 */  li    $t1, 48
/* B82348 8010B1A8 A7380B00 */  sh    $t8, 0xb00($t9)
/* B8234C 8010B1AC 8E0A0000 */  lw    $t2, ($s0)
/* B82350 8010B1B0 10000009 */  b     .L8010B1D8
/* B82354 8010B1B4 A5490496 */   sh    $t1, 0x496($t2)
.L8010B1B8:
/* B82358 8010B1B8 240B004B */  li    $t3, 75
/* B8235C 8010B1BC A46B0B06 */  sh    $t3, 0xb06($v1)
/* B82360 8010B1C0 8E0D0000 */  lw    $t5, ($s0)
/* B82364 8010B1C4 240C000C */  li    $t4, 12
/* B82368 8010B1C8 240E0041 */  li    $t6, 65
/* B8236C 8010B1CC A5AC0B04 */  sh    $t4, 0xb04($t5)
/* B82370 8010B1D0 8E0F0000 */  lw    $t7, ($s0)
/* B82374 8010B1D4 A5EE0B00 */  sh    $t6, 0xb00($t7)
.L8010B1D8:
/* B82378 8010B1D8 240100C2 */  li    $at, 194
/* B8237C 8010B1DC 10410004 */  beq   $v0, $at, .L8010B1F0
/* B82380 8010B1E0 3C03F000 */   lui   $v1, 0xf000
/* B82384 8010B1E4 240100FA */  li    $at, 250
/* B82388 8010B1E8 1441000E */  bne   $v0, $at, .L8010B224
/* B8238C 8010B1EC 8FB00048 */   lw    $s0, 0x48($sp)
.L8010B1F0:
/* B82390 8010B1F0 8CB800A4 */  lw    $t8, 0xa4($a1)
/* B82394 8010B1F4 8FB00048 */  lw    $s0, 0x48($sp)
/* B82398 8010B1F8 34018000 */  li    $at, 32768
/* B8239C 8010B1FC 0303C824 */  and   $t9, $t8, $v1
/* B823A0 8010B200 03234824 */  and   $t1, $t9, $v1
/* B823A4 8010B204 00095702 */  srl   $t2, $t1, 0x1c
/* B823A8 8010B208 004A3821 */  addu  $a3, $v0, $t2
/* B823AC 8010B20C 261020D8 */  addiu $s0, $s0, 0x20d8
/* B823B0 8010B210 02015821 */  addu  $t3, $s0, $at
/* B823B4 8010B214 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B823B8 8010B218 00E01025 */  move  $v0, $a3
/* B823BC 8010B21C 1000001D */  b     .L8010B294
/* B823C0 8010B220 AFAB002C */   sw    $t3, 0x2c($sp)
.L8010B224:
/* B823C4 8010B224 261020D8 */  addiu $s0, $s0, 0x20d8
/* B823C8 8010B228 34018000 */  li    $at, 32768
/* B823CC 8010B22C 02016021 */  addu  $t4, $s0, $at
/* B823D0 8010B230 AFAC002C */  sw    $t4, 0x2c($sp)
/* B823D4 8010B234 958362F8 */  lhu   $v1, 0x62f8($t4)
/* B823D8 8010B238 2401000C */  li    $at, 12
/* B823DC 8010B23C 3C0E8012 */  lui   $t6, %hi(D_80127128) # $t6, 0x8012
/* B823E0 8010B240 1461000B */  bne   $v1, $at, .L8010B270
/* B823E4 8010B244 3C0F8012 */   lui   $t7, %hi(D_801271F0) # $t7, 0x8012
/* B823E8 8010B248 8DCE7128 */  lw    $t6, %lo(D_80127128)($t6)
/* B823EC 8010B24C 91EF71F0 */  lbu   $t7, %lo(D_801271F0)($t7)
/* B823F0 8010B250 94B9009C */  lhu   $t9, 0x9c($a1)
/* B823F4 8010B254 01EEC004 */  sllv  $t8, $t6, $t7
/* B823F8 8010B258 03194824 */  and   $t1, $t8, $t9
/* B823FC 8010B25C 51200005 */  beql  $t1, $zero, .L8010B274
/* B82400 8010B260 240100B4 */   li    $at, 180
/* B82404 8010B264 2407000B */  li    $a3, 11
/* B82408 8010B268 1000000A */  b     .L8010B294
/* B8240C 8010B26C 2402000B */   li    $v0, 11
.L8010B270:
/* B82410 8010B270 240100B4 */  li    $at, 180
.L8010B274:
/* B82414 8010B274 54610008 */  bnel  $v1, $at, .L8010B298
/* B82418 8010B278 24014077 */   li    $at, 16503
/* B8241C 8010B27C 94AA0EE6 */  lhu   $t2, 0xee6($a1)
/* B82420 8010B280 314B0040 */  andi  $t3, $t2, 0x40
/* B82424 8010B284 51600004 */  beql  $t3, $zero, .L8010B298
/* B82428 8010B288 24014077 */   li    $at, 16503
/* B8242C 8010B28C 240700B5 */  li    $a3, 181
/* B82430 8010B290 240200B5 */  li    $v0, 181
.L8010B294:
/* B82434 8010B294 24014077 */  li    $at, 16503
.L8010B298:
/* B82438 8010B298 1041000A */  beq   $v0, $at, .L8010B2C4
/* B8243C 8010B29C 24040001 */   li    $a0, 1
/* B82440 8010B2A0 2401407A */  li    $at, 16506
/* B82444 8010B2A4 10410007 */  beq   $v0, $at, .L8010B2C4
/* B82448 8010B2A8 24012061 */   li    $at, 8289
/* B8244C 8010B2AC 10410005 */  beq   $v0, $at, .L8010B2C4
/* B82450 8010B2B0 24015035 */   li    $at, 20533
/* B82454 8010B2B4 10410003 */  beq   $v0, $at, .L8010B2C4
/* B82458 8010B2B8 240140AC */   li    $at, 16556
/* B8245C 8010B2BC 5441000B */  bnel  $v0, $at, .L8010B2EC
/* B82460 8010B2C0 26017FFF */   addiu $at, $s0, 0x7fff
.L8010B2C4:
/* B82464 8010B2C4 AFA20030 */  sw    $v0, 0x30($sp)
/* B82468 8010B2C8 0C020978 */  jal   func_800825E0
/* B8246C 8010B2CC A7A7004E */   sh    $a3, 0x4e($sp)
/* B82470 8010B2D0 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B82474 8010B2D4 3C088015 */  lui   $t0, %hi(D_8014B308) # $t0, 0x8015
/* B82478 8010B2D8 2508B308 */  addiu $t0, %lo(D_8014B308) # addiu $t0, $t0, -0x4cf8
/* B8247C 8010B2DC 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B82480 8010B2E0 8FA20030 */  lw    $v0, 0x30($sp)
/* B82484 8010B2E4 97A7004E */  lhu   $a3, 0x4e($sp)
/* B82488 8010B2E8 26017FFF */  addiu $at, $s0, 0x7fff
.L8010B2EC:
/* B8248C 8010B2EC A42762F9 */  sh    $a3, 0x62f9($at)
/* B82490 8010B2F0 24012030 */  li    $at, 8240
/* B82494 8010B2F4 14410013 */  bne   $v0, $at, .L8010B344
/* B82498 8010B2F8 3C048015 */   lui   $a0, %hi(D_80154230) # $a0, 0x8015
/* B8249C 8010B2FC 24844230 */  addiu $a0, %lo(D_80154230) # addiu $a0, $a0, 0x4230
/* B824A0 8010B300 0C00084C */  jal   osSyncPrintf
/* B824A4 8010B304 A7A7004E */   sh    $a3, 0x4e($sp)
/* B824A8 8010B308 3C048015 */  lui   $a0, %hi(D_80154238) # $a0, 0x8015
/* B824AC 8010B30C 0C00084C */  jal   osSyncPrintf
/* B824B0 8010B310 24844238 */   addiu $a0, %lo(D_80154238) # addiu $a0, $a0, 0x4238
/* B824B4 8010B314 3C048015 */  lui   $a0, %hi(D_80154290) # $a0, 0x8015
/* B824B8 8010B318 0C00084C */  jal   osSyncPrintf
/* B824BC 8010B31C 24844290 */   addiu $a0, %lo(D_80154290) # addiu $a0, $a0, 0x4290
/* B824C0 8010B320 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B824C4 8010B324 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B824C8 8010B328 3C088015 */  lui   $t0, %hi(D_8014B308) # $t0, 0x8015
/* B824CC 8010B32C 97A7004E */  lhu   $a3, 0x4e($sp)
/* B824D0 8010B330 2508B308 */  addiu $t0, %lo(D_8014B308) # addiu $t0, $t0, -0x4cf8
/* B824D4 8010B334 A4A01400 */  sh    $zero, 0x1400($a1)
/* B824D8 8010B338 A4A013FE */  sh    $zero, 0x13fe($a1)
/* B824DC 8010B33C A4A013FC */  sh    $zero, 0x13fc($a1)
/* B824E0 8010B340 A4A013FA */  sh    $zero, 0x13fa($a1)
.L8010B344:
/* B824E4 8010B344 850C0000 */  lh    $t4, ($t0)
/* B824E8 8010B348 8FA40048 */  lw    $a0, 0x48($sp)
/* B824EC 8010B34C 51800018 */  beql  $t4, $zero, .L8010B3B0
/* B824F0 8010B350 90A21409 */   lbu   $v0, 0x1409($a1)
/* B824F4 8010B354 0C041D8A */  jal   func_80107628
/* B824F8 8010B358 30E5FFFF */   andi  $a1, $a3, 0xffff
/* B824FC 8010B35C 8FA20048 */  lw    $v0, 0x48($sp)
/* B82500 8010B360 26017FFF */  addiu $at, $s0, 0x7fff
/* B82504 8010B364 3C0F0097 */  lui   $t7, %hi(_staff_message_data_staticSegmentRomStart) # $t7, 0x97
/* B82508 8010B368 8C4D2204 */  lw    $t5, 0x2204($v0)
/* B8250C 8010B36C 25EF3000 */  addiu $t7, %lo(_staff_message_data_staticSegmentRomStart) # addiu $t7, $t7, 0x3000
/* B82510 8010B370 3C078015 */  lui   $a3, %hi(D_80154294) # $a3, 0x8015
/* B82514 8010B374 AC2D6301 */  sw    $t5, 0x6301($at)
/* B82518 8010B378 8C4E2200 */  lw    $t6, 0x2200($v0)
/* B8251C 8010B37C 3401DC88 */  li    $at, 56456
/* B82520 8010B380 241807A2 */  li    $t8, 1954
/* B82524 8010B384 24422200 */  addiu $v0, $v0, 0x2200
/* B82528 8010B388 8C460004 */  lw    $a2, 4($v0)
/* B8252C 8010B38C AFA20030 */  sw    $v0, 0x30($sp)
/* B82530 8010B390 AFB80010 */  sw    $t8, 0x10($sp)
/* B82534 8010B394 00412021 */  addu  $a0, $v0, $at
/* B82538 8010B398 24E74294 */  addiu $a3, %lo(D_80154294) # addiu $a3, $a3, 0x4294
/* B8253C 8010B39C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B82540 8010B3A0 01CF2821 */   addu  $a1, $t6, $t7
/* B82544 8010B3A4 1000004A */  b     .L8010B4D0
/* B82548 8010B3A8 8FA20030 */   lw    $v0, 0x30($sp)
/* B8254C 8010B3AC 90A21409 */  lbu   $v0, 0x1409($a1)
.L8010B3B0:
/* B82550 8010B3B0 8FA40048 */  lw    $a0, 0x48($sp)
/* B82554 8010B3B4 24010001 */  li    $at, 1
/* B82558 8010B3B8 14400017 */  bnez  $v0, .L8010B418
/* B8255C 8010B3BC 00000000 */   nop   
/* B82560 8010B3C0 0C041D12 */  jal   func_80107448
/* B82564 8010B3C4 30E5FFFF */   andi  $a1, $a3, 0xffff
/* B82568 8010B3C8 8FA20048 */  lw    $v0, 0x48($sp)
/* B8256C 8010B3CC 26017FFF */  addiu $at, $s0, 0x7fff
/* B82570 8010B3D0 3C0A008C */  lui   $t2, %hi(_nes_message_data_staticSegmentRomStart) # $t2, 0x8c
/* B82574 8010B3D4 8C592204 */  lw    $t9, 0x2204($v0)
/* B82578 8010B3D8 254A6000 */  addiu $t2, %lo(_nes_message_data_staticSegmentRomStart) # addiu $t2, $t2, 0x6000
/* B8257C 8010B3DC 3C078015 */  lui   $a3, %hi(D_801542A8) # $a3, 0x8015
/* B82580 8010B3E0 AC396301 */  sw    $t9, 0x6301($at)
/* B82584 8010B3E4 8C492200 */  lw    $t1, 0x2200($v0)
/* B82588 8010B3E8 3401DC88 */  li    $at, 56456
/* B8258C 8010B3EC 240B07AE */  li    $t3, 1966
/* B82590 8010B3F0 24422200 */  addiu $v0, $v0, 0x2200
/* B82594 8010B3F4 8C460004 */  lw    $a2, 4($v0)
/* B82598 8010B3F8 AFA20030 */  sw    $v0, 0x30($sp)
/* B8259C 8010B3FC AFAB0010 */  sw    $t3, 0x10($sp)
/* B825A0 8010B400 00412021 */  addu  $a0, $v0, $at
/* B825A4 8010B404 24E742A8 */  addiu $a3, %lo(D_801542A8) # addiu $a3, $a3, 0x42a8
/* B825A8 8010B408 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B825AC 8010B40C 012A2821 */   addu  $a1, $t1, $t2
/* B825B0 8010B410 1000002F */  b     .L8010B4D0
/* B825B4 8010B414 8FA20030 */   lw    $v0, 0x30($sp)
.L8010B418:
/* B825B8 8010B418 14410018 */  bne   $v0, $at, .L8010B47C
/* B825BC 8010B41C 8FA40048 */   lw    $a0, 0x48($sp)
/* B825C0 8010B420 8FA40048 */  lw    $a0, 0x48($sp)
/* B825C4 8010B424 0C041D12 */  jal   func_80107448
/* B825C8 8010B428 30E5FFFF */   andi  $a1, $a3, 0xffff
/* B825CC 8010B42C 8FA20048 */  lw    $v0, 0x48($sp)
/* B825D0 8010B430 26017FFF */  addiu $at, $s0, 0x7fff
/* B825D4 8010B434 3C0E0090 */  lui   $t6, %hi(_ger_message_data_staticSegmentRomStart) # $t6, 0x90
/* B825D8 8010B438 8C4C2204 */  lw    $t4, 0x2204($v0)
/* B825DC 8010B43C 25CEF000 */  addiu $t6, %lo(_ger_message_data_staticSegmentRomStart) # addiu $t6, $t6, -0x1000
/* B825E0 8010B440 3C078015 */  lui   $a3, %hi(D_801542BC) # $a3, 0x8015
/* B825E4 8010B444 AC2C6301 */  sw    $t4, 0x6301($at)
/* B825E8 8010B448 8C4D2200 */  lw    $t5, 0x2200($v0)
/* B825EC 8010B44C 3401DC88 */  li    $at, 56456
/* B825F0 8010B450 240F07BA */  li    $t7, 1978
/* B825F4 8010B454 24422200 */  addiu $v0, $v0, 0x2200
/* B825F8 8010B458 8C460004 */  lw    $a2, 4($v0)
/* B825FC 8010B45C AFA20030 */  sw    $v0, 0x30($sp)
/* B82600 8010B460 AFAF0010 */  sw    $t7, 0x10($sp)
/* B82604 8010B464 00412021 */  addu  $a0, $v0, $at
/* B82608 8010B468 24E742BC */  addiu $a3, %lo(D_801542BC) # addiu $a3, $a3, 0x42bc
/* B8260C 8010B46C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B82610 8010B470 01AE2821 */   addu  $a1, $t5, $t6
/* B82614 8010B474 10000016 */  b     .L8010B4D0
/* B82618 8010B478 8FA20030 */   lw    $v0, 0x30($sp)
.L8010B47C:
/* B8261C 8010B47C 0C041D12 */  jal   func_80107448
/* B82620 8010B480 30E5FFFF */   andi  $a1, $a3, 0xffff
/* B82624 8010B484 8FA20048 */  lw    $v0, 0x48($sp)
/* B82628 8010B488 26017FFF */  addiu $at, $s0, 0x7fff
/* B8262C 8010B48C 3C090094 */  lui   $t1, %hi(_fra_message_data_staticSegmentRomStart) # $t1, 0x94
/* B82630 8010B490 8C582204 */  lw    $t8, 0x2204($v0)
/* B82634 8010B494 2529B000 */  addiu $t1, %lo(_fra_message_data_staticSegmentRomStart) # addiu $t1, $t1, -0x5000
/* B82638 8010B498 3C078015 */  lui   $a3, %hi(D_801542D0) # $a3, 0x8015
/* B8263C 8010B49C AC386301 */  sw    $t8, 0x6301($at)
/* B82640 8010B4A0 8C592200 */  lw    $t9, 0x2200($v0)
/* B82644 8010B4A4 3401DC88 */  li    $at, 56456
/* B82648 8010B4A8 240A07C6 */  li    $t2, 1990
/* B8264C 8010B4AC 24422200 */  addiu $v0, $v0, 0x2200
/* B82650 8010B4B0 8C460004 */  lw    $a2, 4($v0)
/* B82654 8010B4B4 AFA20030 */  sw    $v0, 0x30($sp)
/* B82658 8010B4B8 AFAA0010 */  sw    $t2, 0x10($sp)
/* B8265C 8010B4BC 00412021 */  addu  $a0, $v0, $at
/* B82660 8010B4C0 24E742D0 */  addiu $a3, %lo(D_801542D0) # addiu $a3, $a3, 0x42d0
/* B82664 8010B4C4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B82668 8010B4C8 03292821 */   addu  $a1, $t9, $t1
/* B8266C 8010B4CC 8FA20030 */  lw    $v0, 0x30($sp)
.L8010B4D0:
/* B82670 8010B4D0 904B0008 */  lbu   $t3, 8($v0)
/* B82674 8010B4D4 26017FFF */  addiu $at, $s0, 0x7fff
/* B82678 8010B4D8 3C048015 */  lui   $a0, %hi(D_801542E4) # $a0, 0x8015
/* B8267C 8010B4DC A02B62FD */  sb    $t3, 0x62fd($at)
/* B82680 8010B4E0 8FAC002C */  lw    $t4, 0x2c($sp)
/* B82684 8010B4E4 248442E4 */  addiu $a0, %lo(D_801542E4) # addiu $a0, $a0, 0x42e4
/* B82688 8010B4E8 918D62FC */  lbu   $t5, 0x62fc($t4)
/* B8268C 8010B4EC 000D7103 */  sra   $t6, $t5, 4
/* B82690 8010B4F0 A02E62FE */  sb    $t6, 0x62fe($at)
/* B82694 8010B4F4 8FAF002C */  lw    $t7, 0x2c($sp)
/* B82698 8010B4F8 91F862FC */  lbu   $t8, 0x62fc($t7)
/* B8269C 8010B4FC 3319000F */  andi  $t9, $t8, 0xf
/* B826A0 8010B500 A03962FF */  sb    $t9, 0x62ff($at)
/* B826A4 8010B504 8FA9002C */  lw    $t1, 0x2c($sp)
/* B826A8 8010B508 912562FD */  lbu   $a1, 0x62fd($t1)
/* B826AC 8010B50C 0C00084C */  jal   osSyncPrintf
/* B826B0 8010B510 A7A5003E */   sh    $a1, 0x3e($sp)
/* B826B4 8010B514 87A3003E */  lh    $v1, 0x3e($sp)
/* B826B8 8010B518 8FAA002C */  lw    $t2, 0x2c($sp)
/* B826BC 8010B51C 3C0C8015 */  lui   $t4, %hi(D_80153C50) # $t4, 0x8015
/* B826C0 8010B520 28610004 */  slti  $at, $v1, 4
/* B826C4 8010B524 10200046 */  beqz  $at, .L8010B640
/* B826C8 8010B528 00035840 */   sll   $t3, $v1, 1
/* B826CC 8010B52C 258C3C50 */  addiu $t4, %lo(D_80153C50) # addiu $t4, $t4, 0x3c50
/* B826D0 8010B530 016C1021 */  addu  $v0, $t3, $t4
/* B826D4 8010B534 844D0000 */  lh    $t5, ($v0)
/* B826D8 8010B538 3C0F008C */  lui   $t7, %hi(_message_staticSegmentRomStart) # $t7, 0x8c
/* B826DC 8010B53C 25EFA000 */  addiu $t7, %lo(_message_staticSegmentRomStart) # addiu $t7, $t7, -0x6000
/* B826E0 8010B540 8D4462B0 */  lw    $a0, 0x62b0($t2)
/* B826E4 8010B544 3C078015 */  lui   $a3, %hi(D_801542F8) # $a3, 0x8015
/* B826E8 8010B548 241807D6 */  li    $t8, 2006
/* B826EC 8010B54C 000D7300 */  sll   $t6, $t5, 0xc
/* B826F0 8010B550 01CF2821 */  addu  $a1, $t6, $t7
/* B826F4 8010B554 AFB80010 */  sw    $t8, 0x10($sp)
/* B826F8 8010B558 24E742F8 */  addiu $a3, %lo(D_801542F8) # addiu $a3, $a3, 0x42f8
/* B826FC 8010B55C AFA20030 */  sw    $v0, 0x30($sp)
/* B82700 8010B560 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B82704 8010B564 24061000 */   li    $a2, 4096
/* B82708 8010B568 8FA20030 */  lw    $v0, 0x30($sp)
/* B8270C 8010B56C 3C198015 */  lui   $t9, %hi(D_80153C50) # $t9, 0x8015
/* B82710 8010B570 27393C50 */  addiu $t9, %lo(D_80153C50) # addiu $t9, $t9, 0x3c50
/* B82714 8010B574 14590006 */  bne   $v0, $t9, .L8010B590
/* B82718 8010B578 3C098015 */   lui   $t1, %hi(D_80153C52) # $t1, 0x8015
/* B8271C 8010B57C 26017FFF */  addiu $at, $s0, 0x7fff
/* B82720 8010B580 A42063FF */  sh    $zero, 0x63ff($at)
/* B82724 8010B584 A4206401 */  sh    $zero, 0x6401($at)
/* B82728 8010B588 1000001A */  b     .L8010B5F4
/* B8272C 8010B58C A4206403 */   sh    $zero, 0x6403($at)
.L8010B590:
/* B82730 8010B590 25293C52 */  addiu $t1, %lo(D_80153C52) # addiu $t1, $t1, 0x3c52
/* B82734 8010B594 14490009 */  bne   $v0, $t1, .L8010B5BC
/* B82738 8010B598 3C0D8015 */   lui   $t5, %hi(D_80153C54) # $t5, 0x8015
/* B8273C 8010B59C 26017FFF */  addiu $at, $s0, 0x7fff
/* B82740 8010B5A0 240A0046 */  li    $t2, 70
/* B82744 8010B5A4 240B0032 */  li    $t3, 50
/* B82748 8010B5A8 240C001E */  li    $t4, 30
/* B8274C 8010B5AC A42A63FF */  sh    $t2, 0x63ff($at)
/* B82750 8010B5B0 A42B6401 */  sh    $t3, 0x6401($at)
/* B82754 8010B5B4 1000000F */  b     .L8010B5F4
/* B82758 8010B5B8 A42C6403 */   sh    $t4, 0x6403($at)
.L8010B5BC:
/* B8275C 8010B5BC 25AD3C54 */  addiu $t5, %lo(D_80153C54) # addiu $t5, $t5, 0x3c54
/* B82760 8010B5C0 144D0008 */  bne   $v0, $t5, .L8010B5E4
/* B82764 8010B5C4 241800FF */   li    $t8, 255
/* B82768 8010B5C8 26017FFF */  addiu $at, $s0, 0x7fff
/* B8276C 8010B5CC 240E000A */  li    $t6, 10
/* B82770 8010B5D0 240F0032 */  li    $t7, 50
/* B82774 8010B5D4 A42063FF */  sh    $zero, 0x63ff($at)
/* B82778 8010B5D8 A42E6401 */  sh    $t6, 0x6401($at)
/* B8277C 8010B5DC 10000005 */  b     .L8010B5F4
/* B82780 8010B5E0 A42F6403 */   sh    $t7, 0x6403($at)
.L8010B5E4:
/* B82784 8010B5E4 26017FFF */  addiu $at, $s0, 0x7fff
/* B82788 8010B5E8 A43863FF */  sh    $t8, 0x63ff($at)
/* B8278C 8010B5EC A4206401 */  sh    $zero, 0x6401($at)
/* B82790 8010B5F0 A4206403 */  sh    $zero, 0x6403($at)
.L8010B5F4:
/* B82794 8010B5F4 3C198015 */  lui   $t9, %hi(D_80153C52) # $t9, 0x8015
/* B82798 8010B5F8 27393C52 */  addiu $t9, %lo(D_80153C52) # addiu $t9, $t9, 0x3c52
/* B8279C 8010B5FC 14590005 */  bne   $v0, $t9, .L8010B614
/* B827A0 8010B600 3C0A8015 */   lui   $t2, %hi(D_80153C56) # $t2, 0x8015
/* B827A4 8010B604 240900E6 */  li    $t1, 230
/* B827A8 8010B608 26017FFF */  addiu $at, $s0, 0x7fff
/* B827AC 8010B60C 1000000A */  b     .L8010B638
/* B827B0 8010B610 A4296405 */   sh    $t1, 0x6405($at)
.L8010B614:
/* B827B4 8010B614 254A3C56 */  addiu $t2, %lo(D_80153C56) # addiu $t2, $t2, 0x3c56
/* B827B8 8010B618 144A0005 */  bne   $v0, $t2, .L8010B630
/* B827BC 8010B61C 240C00AA */   li    $t4, 170
/* B827C0 8010B620 240B00B4 */  li    $t3, 180
/* B827C4 8010B624 26017FFF */  addiu $at, $s0, 0x7fff
/* B827C8 8010B628 10000003 */  b     .L8010B638
/* B827CC 8010B62C A42B6405 */   sh    $t3, 0x6405($at)
.L8010B630:
/* B827D0 8010B630 26017FFF */  addiu $at, $s0, 0x7fff
/* B827D4 8010B634 A42C6405 */  sh    $t4, 0x6405($at)
.L8010B638:
/* B827D8 8010B638 26017FFF */  addiu $at, $s0, 0x7fff
/* B827DC 8010B63C A4206407 */  sh    $zero, 0x6407($at)
.L8010B640:
/* B827E0 8010B640 26017FFF */  addiu $at, $s0, 0x7fff
/* B827E4 8010B644 A02063E5 */  sb    $zero, 0x63e5($at)
/* B827E8 8010B648 8FAD002C */  lw    $t5, 0x2c($sp)
/* B827EC 8010B64C 91A263E4 */  lbu   $v0, 0x63e4($t5)
/* B827F0 8010B650 A42063D3 */  sh    $zero, 0x63d3($at)
/* B827F4 8010B654 A42263D7 */  sh    $v0, 0x63d7($at)
/* B827F8 8010B658 A02263E7 */  sb    $v0, 0x63e7($at)
/* B827FC 8010B65C 8FAE002C */  lw    $t6, 0x2c($sp)
/* B82800 8010B660 95C263D2 */  lhu   $v0, 0x63d2($t6)
/* B82804 8010B664 A42263D1 */  sh    $v0, 0x63d1($at)
/* B82808 8010B668 A42263CF */  sh    $v0, 0x63cf($at)
/* B8280C 8010B66C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B82810 8010B670 8FB00020 */  lw    $s0, 0x20($sp)
/* B82814 8010B674 27BD0048 */  addiu $sp, $sp, 0x48
/* B82818 8010B678 03E00008 */  jr    $ra
/* B8281C 8010B67C 00000000 */   nop   

glabel func_8010B680
/* B82820 8010B680 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B82824 8010B684 AFA40020 */  sw    $a0, 0x20($sp)
/* B82828 8010B688 AFBF0014 */  sw    $ra, 0x14($sp)
/* B8282C 8010B68C 3C048015 */  lui   $a0, %hi(D_8015430C) # $a0, 0x8015
/* B82830 8010B690 AFA50024 */  sw    $a1, 0x24($sp)
/* B82834 8010B694 AFA60028 */  sw    $a2, 0x28($sp)
/* B82838 8010B698 0C00084C */  jal   osSyncPrintf
/* B8283C 8010B69C 2484430C */   addiu $a0, %lo(D_8015430C) # addiu $a0, $a0, 0x430c
/* B82840 8010B6A0 3C048015 */  lui   $a0, %hi(D_80154314) # $a0, 0x8015
/* B82844 8010B6A4 24844314 */  addiu $a0, %lo(D_80154314) # addiu $a0, $a0, 0x4314
/* B82848 8010B6A8 97A50026 */  lhu   $a1, 0x26($sp)
/* B8284C 8010B6AC 0C00084C */  jal   osSyncPrintf
/* B82850 8010B6B0 8FA60028 */   lw    $a2, 0x28($sp)
/* B82854 8010B6B4 3C048015 */  lui   $a0, %hi(D_80154328) # $a0, 0x8015
/* B82858 8010B6B8 0C00084C */  jal   osSyncPrintf
/* B8285C 8010B6BC 24844328 */   addiu $a0, %lo(D_80154328) # addiu $a0, $a0, 0x4328
/* B82860 8010B6C0 8FA40020 */  lw    $a0, 0x20($sp)
/* B82864 8010B6C4 340EFFFF */  li    $t6, 65535
/* B82868 8010B6C8 248220D8 */  addiu $v0, $a0, 0x20d8
/* B8286C 8010B6CC 24417FFF */  addiu $at, $v0, 0x7fff
/* B82870 8010B6D0 A42E63F1 */  sh    $t6, 0x63f1($at)
/* B82874 8010B6D4 AFA20018 */  sw    $v0, 0x18($sp)
/* B82878 8010B6D8 0C042C30 */  jal   func_8010B0C0
/* B8287C 8010B6DC 97A50026 */   lhu   $a1, 0x26($sp)
/* B82880 8010B6E0 8FA20018 */  lw    $v0, 0x18($sp)
/* B82884 8010B6E4 8FAF0028 */  lw    $t7, 0x28($sp)
/* B82888 8010B6E8 24180001 */  li    $t8, 1
/* B8288C 8010B6EC 24417FFF */  addiu $at, $v0, 0x7fff
/* B82890 8010B6F0 A0386305 */  sb    $t8, 0x6305($at)
/* B82894 8010B6F4 A02063E8 */  sb    $zero, 0x63e8($at)
/* B82898 8010B6F8 A42063E9 */  sh    $zero, 0x63e9($at)
/* B8289C 8010B6FC AC2F6409 */  sw    $t7, 0x6409($at)
/* B828A0 8010B700 8FB90020 */  lw    $t9, 0x20($sp)
/* B828A4 8010B704 3C010001 */  lui   $at, 1
/* B828A8 8010B708 00390821 */  addu  $at, $at, $t9
/* B828AC 8010B70C A42004C6 */  sh    $zero, 0x4c6($at)
/* B828B0 8010B710 8FBF0014 */  lw    $ra, 0x14($sp)
/* B828B4 8010B714 27BD0020 */  addiu $sp, $sp, 0x20
/* B828B8 8010B718 03E00008 */  jr    $ra
/* B828BC 8010B71C 00000000 */   nop   

glabel func_8010B720
/* B828C0 8010B720 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B828C4 8010B724 AFA40020 */  sw    $a0, 0x20($sp)
/* B828C8 8010B728 AFBF001C */  sw    $ra, 0x1c($sp)
/* B828CC 8010B72C 3C048015 */  lui   $a0, %hi(D_8015432C) # $a0, 0x8015
/* B828D0 8010B730 AFB10018 */  sw    $s1, 0x18($sp)
/* B828D4 8010B734 AFB00014 */  sw    $s0, 0x14($sp)
/* B828D8 8010B738 AFA50024 */  sw    $a1, 0x24($sp)
/* B828DC 8010B73C 0C00084C */  jal   osSyncPrintf
/* B828E0 8010B740 2484432C */   addiu $a0, %lo(D_8015432C) # addiu $a0, $a0, 0x432c
/* B828E4 8010B744 8FB00020 */  lw    $s0, 0x20($sp)
/* B828E8 8010B748 34018000 */  li    $at, 32768
/* B828EC 8010B74C 3C048015 */  lui   $a0, %hi(D_80154334) # $a0, 0x8015
/* B828F0 8010B750 261020D8 */  addiu $s0, $s0, 0x20d8
/* B828F4 8010B754 02018821 */  addu  $s1, $s0, $at
/* B828F8 8010B758 8E266300 */  lw    $a2, 0x6300($s1)
/* B828FC 8010B75C 24844334 */  addiu $a0, %lo(D_80154334) # addiu $a0, $a0, 0x4334
/* B82900 8010B760 0C00084C */  jal   osSyncPrintf
/* B82904 8010B764 97A50026 */   lhu   $a1, 0x26($sp)
/* B82908 8010B768 3C048015 */  lui   $a0, %hi(D_80154358) # $a0, 0x8015
/* B8290C 8010B76C 0C00084C */  jal   osSyncPrintf
/* B82910 8010B770 24844358 */   addiu $a0, %lo(D_80154358) # addiu $a0, $a0, 0x4358
/* B82914 8010B774 26017FFF */  addiu $at, $s0, 0x7fff
/* B82918 8010B778 AC206301 */  sw    $zero, 0x6301($at)
/* B8291C 8010B77C 97A50026 */  lhu   $a1, 0x26($sp)
/* B82920 8010B780 0C042C30 */  jal   func_8010B0C0
/* B82924 8010B784 8FA40020 */   lw    $a0, 0x20($sp)
/* B82928 8010B788 26017FFF */  addiu $at, $s0, 0x7fff
/* B8292C 8010B78C A0206305 */  sb    $zero, 0x6305($at)
/* B82930 8010B790 862E6404 */  lh    $t6, 0x6404($s1)
/* B82934 8010B794 240F0005 */  li    $t7, 5
/* B82938 8010B798 24180003 */  li    $t8, 3
/* B8293C 8010B79C A02F6305 */  sb    $t7, 0x6305($at)
/* B82940 8010B7A0 A03863E8 */  sb    $t8, 0x63e8($at)
/* B82944 8010B7A4 A42063E9 */  sh    $zero, 0x63e9($at)
/* B82948 8010B7A8 A42E6407 */  sh    $t6, 0x6407($at)
/* B8294C 8010B7AC 962263E8 */  lhu   $v0, 0x63e8($s1)
/* B82950 8010B7B0 241900FF */  li    $t9, 255
/* B82954 8010B7B4 A43963E3 */  sh    $t9, 0x63e3($at)
/* B82958 8010B7B8 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B8295C 8010B7BC A42263D3 */  sh    $v0, 0x63d3($at)
/* B82960 8010B7C0 A42263D1 */  sh    $v0, 0x63d1($at)
/* B82964 8010B7C4 A42263CF */  sh    $v0, 0x63cf($at)
/* B82968 8010B7C8 A02263E5 */  sb    $v0, 0x63e5($at)
/* B8296C 8010B7CC 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* B82970 8010B7D0 8FAA0020 */  lw    $t2, 0x20($sp)
/* B82974 8010B7D4 3C0B0001 */  lui   $t3, 1
/* B82978 8010B7D8 850904D2 */  lh    $t1, 0x4d2($t0)
/* B8297C 8010B7DC 016A5821 */  addu  $t3, $t3, $t2
/* B82980 8010B7E0 55200008 */  bnezl $t1, .L8010B804
/* B82984 8010B7E4 862C6404 */   lh    $t4, 0x6404($s1)
/* B82988 8010B7E8 856B06EA */  lh    $t3, 0x6ea($t3)
/* B8298C 8010B7EC 01402025 */  move  $a0, $t2
/* B82990 8010B7F0 55600004 */  bnezl $t3, .L8010B804
/* B82994 8010B7F4 862C6404 */   lh    $t4, 0x6404($s1)
/* B82998 8010B7F8 0C021BC0 */  jal   func_80086F00
/* B8299C 8010B7FC 24050010 */   li    $a1, 16
/* B829A0 8010B800 862C6404 */  lh    $t4, 0x6404($s1)
.L8010B804:
/* B829A4 8010B804 26017FFF */  addiu $at, $s0, 0x7fff
/* B829A8 8010B808 A42C6407 */  sh    $t4, 0x6407($at)
/* B829AC 8010B80C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B829B0 8010B810 8FB10018 */  lw    $s1, 0x18($sp)
/* B829B4 8010B814 8FB00014 */  lw    $s0, 0x14($sp)
/* B829B8 8010B818 03E00008 */  jr    $ra
/* B829BC 8010B81C 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_8010B820
/* B829C0 8010B820 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B829C4 8010B824 AFA40058 */  sw    $a0, 0x58($sp)
/* B829C8 8010B828 AFBF002C */  sw    $ra, 0x2c($sp)
/* B829CC 8010B82C 3C048015 */  lui   $a0, %hi(D_8015435C) # $a0, 0x8015
/* B829D0 8010B830 AFB20028 */  sw    $s2, 0x28($sp)
/* B829D4 8010B834 AFB10024 */  sw    $s1, 0x24($sp)
/* B829D8 8010B838 AFB00020 */  sw    $s0, 0x20($sp)
/* B829DC 8010B83C AFA5005C */  sw    $a1, 0x5c($sp)
/* B829E0 8010B840 0C00084C */  jal   osSyncPrintf
/* B829E4 8010B844 2484435C */   addiu $a0, %lo(D_8015435C) # addiu $a0, $a0, 0x435c
/* B829E8 8010B848 3005FFFF */  andi  $a1, $zero, 0xffff
/* B829EC 8010B84C 00058400 */  sll   $s0, $a1, 0x10
/* B829F0 8010B850 3C028015 */  lui   $v0, %hi(D_8014B31C) # $v0, 0x8015
/* B829F4 8010B854 00108403 */  sra   $s0, $s0, 0x10
/* B829F8 8010B858 2442B31C */  addiu $v0, %lo(D_8014B31C) # addiu $v0, $v0, -0x4ce4
/* B829FC 8010B85C 2A01000C */  slti  $at, $s0, 0xc
/* B82A00 8010B860 1020001F */  beqz  $at, .L8010B8E0
/* B82A04 8010B864 A4400000 */   sh    $zero, ($v0)
/* B82A08 8010B868 00107080 */  sll   $t6, $s0, 2
.L8010B86C:
/* B82A0C 8010B86C 3C0F8012 */  lui   $t7, %hi(D_80127138)
/* B82A10 8010B870 01EE7821 */  addu  $t7, $t7, $t6
/* B82A14 8010B874 3C188016 */  lui   $t8, %hi(gSaveContext+0xa4) # $t8, 0x8016
/* B82A18 8010B878 8F18E704 */  lw    $t8, %lo(gSaveContext+0xa4)($t8)
/* B82A1C 8010B87C 8DEF7138 */  lw    $t7, %lo(D_80127138)($t7)
/* B82A20 8010B880 3C048015 */  lui   $a0, %hi(D_80154364) # $a0, 0x8015
/* B82A24 8010B884 24844364 */  addiu $a0, %lo(D_80154364) # addiu $a0, $a0, 0x4364
/* B82A28 8010B888 01F8C824 */  and   $t9, $t7, $t8
/* B82A2C 8010B88C 1320000D */  beqz  $t9, .L8010B8C4
/* B82A30 8010B890 02002825 */   move  $a1, $s0
/* B82A34 8010B894 3C098015 */  lui   $t1, %hi(D_80153C58) # $t1, 0x8015
/* B82A38 8010B898 25293C58 */  addiu $t1, %lo(D_80153C58) # addiu $t1, $t1, 0x3c58
/* B82A3C 8010B89C 00104040 */  sll   $t0, $s0, 1
/* B82A40 8010B8A0 01098821 */  addu  $s1, $t0, $t1
/* B82A44 8010B8A4 0C00084C */  jal   osSyncPrintf
/* B82A48 8010B8A8 96260000 */   lhu   $a2, ($s1)
/* B82A4C 8010B8AC 3C028015 */  lui   $v0, %hi(D_8014B31C) # $v0, 0x8015
/* B82A50 8010B8B0 2442B31C */  addiu $v0, %lo(D_8014B31C) # addiu $v0, $v0, -0x4ce4
/* B82A54 8010B8B4 944A0000 */  lhu   $t2, ($v0)
/* B82A58 8010B8B8 962B0000 */  lhu   $t3, ($s1)
/* B82A5C 8010B8BC 014B6025 */  or    $t4, $t2, $t3
/* B82A60 8010B8C0 A44C0000 */  sh    $t4, ($v0)
.L8010B8C4:
/* B82A64 8010B8C4 26100001 */  addiu $s0, $s0, 1
/* B82A68 8010B8C8 00108400 */  sll   $s0, $s0, 0x10
/* B82A6C 8010B8CC 00108403 */  sra   $s0, $s0, 0x10
/* B82A70 8010B8D0 2A01000C */  slti  $at, $s0, 0xc
/* B82A74 8010B8D4 5420FFE5 */  bnezl $at, .L8010B86C
/* B82A78 8010B8D8 00107080 */   sll   $t6, $s0, 2
/* B82A7C 8010B8DC 94450000 */  lhu   $a1, ($v0)
.L8010B8E0:
/* B82A80 8010B8E0 3C0D8016 */  lui   $t5, %hi(gSaveContext+0x12c5) # $t5, 0x8016
/* B82A84 8010B8E4 91ADF925 */  lbu   $t5, %lo(gSaveContext+0x12c5)($t5)
/* B82A88 8010B8E8 3C048015 */  lui   $a0, %hi(D_80154380) # $a0, 0x8015
/* B82A8C 8010B8EC 11A00003 */  beqz  $t5, .L8010B8FC
/* B82A90 8010B8F0 34AE1000 */   ori   $t6, $a1, 0x1000
/* B82A94 8010B8F4 A44E0000 */  sh    $t6, ($v0)
/* B82A98 8010B8F8 31C5FFFF */  andi  $a1, $t6, 0xffff
.L8010B8FC:
/* B82A9C 8010B8FC 0C00084C */  jal   osSyncPrintf
/* B82AA0 8010B900 24844380 */   addiu $a0, %lo(D_80154380) # addiu $a0, $a0, 0x4380
/* B82AA4 8010B904 3C048015 */  lui   $a0, %hi(D_80154394) # $a0, 0x8015
/* B82AA8 8010B908 0C00084C */  jal   osSyncPrintf
/* B82AAC 8010B90C 24844394 */   addiu $a0, %lo(D_80154394) # addiu $a0, $a0, 0x4394
/* B82AB0 8010B910 3C0F8012 */  lui   $t7, %hi(D_8012715C) # $t7, 0x8012
/* B82AB4 8010B914 3C188016 */  lui   $t8, %hi(gSaveContext+0xa4) # $t8, 0x8016
/* B82AB8 8010B918 8F18E704 */  lw    $t8, %lo(gSaveContext+0xa4)($t8)
/* B82ABC 8010B91C 8DEF715C */  lw    $t7, %lo(D_8012715C)($t7)
/* B82AC0 8010B920 3C018015 */  lui   $at, %hi(D_8014B314) # $at, 0x8015
/* B82AC4 8010B924 01F8C824 */  and   $t9, $t7, $t8
/* B82AC8 8010B928 0C03B8F2 */  jal   func_800EE3C8
/* B82ACC 8010B92C A439B314 */   sh    $t9, %lo(D_8014B314)($at)
/* B82AD0 8010B930 8FB20058 */  lw    $s2, 0x58($sp)
/* B82AD4 8010B934 3C048015 */  lui   $a0, %hi(D_8014B2F8) # $a0, 0x8015
/* B82AD8 8010B938 2484B2F8 */  addiu $a0, %lo(D_8014B2F8) # addiu $a0, $a0, -0x4d08
/* B82ADC 8010B93C 265220D8 */  addiu $s2, $s2, 0x20d8
/* B82AE0 8010B940 26417FFF */  addiu $at, $s2, 0x7fff
/* B82AE4 8010B944 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B82AE8 8010B948 A4800000 */  sh    $zero, ($a0)
/* B82AEC 8010B94C 34018000 */  li    $at, 32768
/* B82AF0 8010B950 02411821 */  addu  $v1, $s2, $at
/* B82AF4 8010B954 8C6962B8 */  lw    $t1, 0x62b8($v1)
/* B82AF8 8010B958 84880000 */  lh    $t0, ($a0)
/* B82AFC 8010B95C 3C018015 */  lui   $at, %hi(D_8014B2FC) # $at, 0x8015
/* B82B00 8010B960 A1280002 */  sb    $t0, 2($t1)
/* B82B04 8010B964 A420B2FC */  sh    $zero, %lo(D_8014B2FC)($at)
/* B82B08 8010B968 0C041A6C */  jal   func_801069B0
/* B82B0C 8010B96C AFA30030 */   sw    $v1, 0x30($sp)
/* B82B10 8010B970 240A00FF */  li    $t2, 255
/* B82B14 8010B974 26417FFF */  addiu $at, $s2, 0x7fff
/* B82B18 8010B978 A02A6411 */  sb    $t2, 0x6411($at)
/* B82B1C 8010B97C 8FAB0030 */  lw    $t3, 0x30($sp)
/* B82B20 8010B980 3C048015 */  lui   $a0, %hi(D_80154398) # $a0, 0x8015
/* B82B24 8010B984 24844398 */  addiu $a0, %lo(D_80154398) # addiu $a0, $a0, 0x4398
/* B82B28 8010B988 91626410 */  lbu   $v0, 0x6410($t3)
/* B82B2C 8010B98C 24060002 */  li    $a2, 2
/* B82B30 8010B990 A42263F3 */  sh    $v0, 0x63f3($at)
/* B82B34 8010B994 97B1005E */  lhu   $s1, 0x5e($sp)
/* B82B38 8010B998 3C018015 */  lui   $at, %hi(D_8014B310) # $at, 0x8015
/* B82B3C 8010B99C A422B310 */  sh    $v0, %lo(D_8014B310)($at)
/* B82B40 8010B9A0 0C00084C */  jal   osSyncPrintf
/* B82B44 8010B9A4 02202825 */   move  $a1, $s1
/* B82B48 8010B9A8 2A210893 */  slti  $at, $s1, 0x893
/* B82B4C 8010B9AC 14200006 */  bnez  $at, .L8010B9C8
/* B82B50 8010B9B0 A7A0004A */   sh    $zero, 0x4a($sp)
/* B82B54 8010B9B4 8FA40058 */  lw    $a0, 0x58($sp)
/* B82B58 8010B9B8 0C042C30 */  jal   func_8010B0C0
/* B82B5C 8010B9BC 97A5005E */   lhu   $a1, 0x5e($sp)
/* B82B60 8010B9C0 10000047 */  b     .L8010BAE0
/* B82B64 8010B9C4 2630086E */   addiu $s0, $s1, 0x86e
.L8010B9C8:
/* B82B68 8010B9C8 2401002E */  li    $at, 46
/* B82B6C 8010B9CC 16210008 */  bne   $s1, $at, .L8010B9F0
/* B82B70 8010B9D0 97AC005E */   lhu   $t4, 0x5e($sp)
/* B82B74 8010B9D4 26417FFF */  addiu $at, $s2, 0x7fff
/* B82B78 8010B9D8 A42C63F1 */  sh    $t4, 0x63f1($at)
/* B82B7C 8010B9DC 8FA40058 */  lw    $a0, 0x58($sp)
/* B82B80 8010B9E0 0C042C30 */  jal   func_8010B0C0
/* B82B84 8010B9E4 2405086D */   li    $a1, 2157
/* B82B88 8010B9E8 1000003D */  b     .L8010BAE0
/* B82B8C 8010B9EC 2630086E */   addiu $s0, $s1, 0x86e
.L8010B9F0:
/* B82B90 8010B9F0 24010001 */  li    $at, 1
/* B82B94 8010B9F4 12210004 */  beq   $s1, $at, .L8010BA08
/* B82B98 8010B9F8 3C048015 */   lui   $a0, %hi(D_801543CC) # $a0, 0x8015
/* B82B9C 8010B9FC 2A210022 */  slti  $at, $s1, 0x22
/* B82BA0 8010BA00 14200022 */  bnez  $at, .L8010BA8C
/* B82BA4 8010BA04 97AF005E */   lhu   $t7, 0x5e($sp)
.L8010BA08:
/* B82BA8 8010BA08 248443CC */  addiu $a0, %lo(D_801543CC) # addiu $a0, $a0, 0x43cc
/* B82BAC 8010BA0C 0C00084C */  jal   osSyncPrintf
/* B82BB0 8010BA10 02202825 */   move  $a1, $s1
/* B82BB4 8010BA14 97AD005E */  lhu   $t5, 0x5e($sp)
/* B82BB8 8010BA18 26417FFF */  addiu $at, $s2, 0x7fff
/* B82BBC 8010BA1C A42D63F1 */  sh    $t5, 0x63f1($at)
/* B82BC0 8010BA20 2A210022 */  slti  $at, $s1, 0x22
/* B82BC4 8010BA24 1420000D */  bnez  $at, .L8010BA5C
/* B82BC8 8010BA28 2A210028 */   slti  $at, $s1, 0x28
/* B82BCC 8010BA2C 1020000B */  beqz  $at, .L8010BA5C
/* B82BD0 8010BA30 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B82BD4 8010BA34 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B82BD8 8010BA38 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B82BDC 8010BA3C 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B82BE0 8010BA40 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B82BE4 8010BA44 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B82BE8 8010BA48 AFAE0014 */  sw    $t6, 0x14($sp)
/* B82BEC 8010BA4C AFA70010 */  sw    $a3, 0x10($sp)
/* B82BF0 8010BA50 24044807 */  li    $a0, 18439
/* B82BF4 8010BA54 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B82BF8 8010BA58 24060004 */   li    $a2, 4
.L8010BA5C:
/* B82BFC 8010BA5C 2401002D */  li    $at, 45
/* B82C00 8010BA60 16210006 */  bne   $s1, $at, .L8010BA7C
/* B82C04 8010BA64 8FA40058 */   lw    $a0, 0x58($sp)
/* B82C08 8010BA68 8FA40058 */  lw    $a0, 0x58($sp)
/* B82C0C 8010BA6C 0C042C30 */  jal   func_8010B0C0
/* B82C10 8010BA70 2405086F */   li    $a1, 2159
/* B82C14 8010BA74 1000001A */  b     .L8010BAE0
/* B82C18 8010BA78 2630086E */   addiu $s0, $s1, 0x86e
.L8010BA7C:
/* B82C1C 8010BA7C 0C042C30 */  jal   func_8010B0C0
/* B82C20 8010BA80 2405086E */   li    $a1, 2158
/* B82C24 8010BA84 10000016 */  b     .L8010BAE0
/* B82C28 8010BA88 2630086E */   addiu $s0, $s1, 0x86e
.L8010BA8C:
/* B82C2C 8010BA8C 26417FFF */  addiu $at, $s2, 0x7fff
/* B82C30 8010BA90 A42F63F1 */  sh    $t7, 0x63f1($at)
/* B82C34 8010BA94 24180001 */  li    $t8, 1
/* B82C38 8010BA98 2A21000F */  slti  $at, $s1, 0xf
/* B82C3C 8010BA9C 14200009 */  bnez  $at, .L8010BAC4
/* B82C40 8010BAA0 A7B8004A */   sh    $t8, 0x4a($sp)
/* B82C44 8010BAA4 3C048015 */  lui   $a0, %hi(D_801543F4) # $a0, 0x8015
/* B82C48 8010BAA8 0C00084C */  jal   osSyncPrintf
/* B82C4C 8010BAAC 248443F4 */   addiu $a0, %lo(D_801543F4) # addiu $a0, $a0, 0x43f4
/* B82C50 8010BAB0 8FA40058 */  lw    $a0, 0x58($sp)
/* B82C54 8010BAB4 0C042C30 */  jal   func_8010B0C0
/* B82C58 8010BAB8 2405086D */   li    $a1, 2157
/* B82C5C 8010BABC 10000008 */  b     .L8010BAE0
/* B82C60 8010BAC0 2630086E */   addiu $s0, $s1, 0x86e
.L8010BAC4:
/* B82C64 8010BAC4 3C048015 */  lui   $a0, %hi(D_80154400) # $a0, 0x8015
/* B82C68 8010BAC8 0C00084C */  jal   osSyncPrintf
/* B82C6C 8010BACC 24844400 */   addiu $a0, %lo(D_80154400) # addiu $a0, $a0, 0x4400
/* B82C70 8010BAD0 2630086E */  addiu $s0, $s1, 0x86e
/* B82C74 8010BAD4 3205FFFF */  andi  $a1, $s0, 0xffff
/* B82C78 8010BAD8 0C042C30 */  jal   func_8010B0C0
/* B82C7C 8010BADC 8FA40058 */   lw    $a0, 0x58($sp)
.L8010BAE0:
/* B82C80 8010BAE0 26417FFF */  addiu $at, $s2, 0x7fff
/* B82C84 8010BAE4 AC206409 */  sw    $zero, 0x6409($at)
/* B82C88 8010BAE8 8FB90030 */  lw    $t9, 0x30($sp)
/* B82C8C 8010BAEC 3C048015 */  lui   $a0, %hi(D_8015440C) # $a0, 0x8015
/* B82C90 8010BAF0 2484440C */  addiu $a0, %lo(D_8015440C) # addiu $a0, $a0, 0x440c
/* B82C94 8010BAF4 02003025 */  move  $a2, $s0
/* B82C98 8010BAF8 0C00084C */  jal   osSyncPrintf
/* B82C9C 8010BAFC 972563F0 */   lhu   $a1, 0x63f0($t9)
/* B82CA0 8010BB00 26417FFF */  addiu $at, $s2, 0x7fff
/* B82CA4 8010BB04 A42063E9 */  sh    $zero, 0x63e9($at)
/* B82CA8 8010BB08 8FA80058 */  lw    $t0, 0x58($sp)
/* B82CAC 8010BB0C 3C010001 */  lui   $at, 1
/* B82CB0 8010BB10 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B82CB4 8010BB14 00280821 */  addu  $at, $at, $t0
/* B82CB8 8010BB18 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B82CBC 8010BB1C A42004C6 */  sh    $zero, 0x4c6($at)
/* B82CC0 8010BB20 8C4A0000 */  lw    $t2, ($v0)
/* B82CC4 8010BB24 24090022 */  li    $t1, 34
/* B82CC8 8010BB28 240B008E */  li    $t3, 142
/* B82CCC 8010BB2C A5490F14 */  sh    $t1, 0xf14($t2)
/* B82CD0 8010BB30 8C4C0000 */  lw    $t4, ($v0)
/* B82CD4 8010BB34 24030200 */  li    $v1, 512
/* B82CD8 8010BB38 240F0100 */  li    $t7, 256
/* B82CDC 8010BB3C A58B0F16 */  sh    $t3, 0xf16($t4)
/* B82CE0 8010BB40 8C4D0000 */  lw    $t5, ($v0)
/* B82CE4 8010BB44 24190040 */  li    $t9, 64
/* B82CE8 8010BB48 26417FFF */  addiu $at, $s2, 0x7fff
/* B82CEC 8010BB4C A5A304B4 */  sh    $v1, 0x4b4($t5)
/* B82CF0 8010BB50 8C4E0000 */  lw    $t6, ($v0)
/* B82CF4 8010BB54 240B0004 */  li    $t3, 4
/* B82CF8 8010BB58 240C0002 */  li    $t4, 2
/* B82CFC 8010BB5C A5C304B6 */  sh    $v1, 0x4b6($t6)
/* B82D00 8010BB60 8C580000 */  lw    $t8, ($v0)
/* B82D04 8010BB64 240D0005 */  li    $t5, 5
/* B82D08 8010BB68 24050012 */  li    $a1, 18
/* B82D0C 8010BB6C A70F04C0 */  sh    $t7, 0x4c0($t8)
/* B82D10 8010BB70 8C480000 */  lw    $t0, ($v0)
/* B82D14 8010BB74 A51904C2 */  sh    $t9, 0x4c2($t0)
/* B82D18 8010BB78 A02063E8 */  sb    $zero, 0x63e8($at)
/* B82D1C 8010BB7C 8C490000 */  lw    $t1, ($v0)
/* B82D20 8010BB80 26417FFF */  addiu $at, $s2, 0x7fff
/* B82D24 8010BB84 852A04AC */  lh    $t2, 0x4ac($t1)
/* B82D28 8010BB88 51400005 */  beql  $t2, $zero, .L8010BBA0
/* B82D2C 8010BB8C A02C63E8 */   sb    $t4, 0x63e8($at)
/* B82D30 8010BB90 26417FFF */  addiu $at, $s2, 0x7fff
/* B82D34 8010BB94 10000003 */  b     .L8010BBA4
/* B82D38 8010BB98 A02B6305 */   sb    $t3, 0x6305($at)
/* B82D3C 8010BB9C A02C63E8 */  sb    $t4, 0x63e8($at)
.L8010BBA0:
/* B82D40 8010BBA0 A02D6305 */  sb    $t5, 0x6305($at)
.L8010BBA4:
/* B82D44 8010BBA4 8FAE0030 */  lw    $t6, 0x30($sp)
/* B82D48 8010BBA8 26417FFF */  addiu $at, $s2, 0x7fff
/* B82D4C 8010BBAC 85CF6404 */  lh    $t7, 0x6404($t6)
/* B82D50 8010BBB0 A42F6407 */  sh    $t7, 0x6407($at)
/* B82D54 8010BBB4 87B8004A */  lh    $t8, 0x4a($sp)
/* B82D58 8010BBB8 1700000B */  bnez  $t8, .L8010BBE8
/* B82D5C 8010BBBC 00000000 */   nop   
/* B82D60 8010BBC0 0C021C23 */  jal   func_8008708C
/* B82D64 8010BBC4 8FA40058 */   lw    $a0, 0x58($sp)
/* B82D68 8010BBC8 3C198016 */  lui   $t9, %hi(gSaveContext+0x13ea) # $t9, 0x8016
/* B82D6C 8010BBCC 9739FA4A */  lhu   $t9, %lo(gSaveContext+0x13ea)($t9)
/* B82D70 8010BBD0 2404000A */  li    $a0, 10
/* B82D74 8010BBD4 0C020978 */  jal   func_800825E0
/* B82D78 8010BBD8 A7B9004A */   sh    $t9, 0x4a($sp)
/* B82D7C 8010BBDC 87A8004A */  lh    $t0, 0x4a($sp)
/* B82D80 8010BBE0 3C018016 */  lui   $at, %hi(gSaveContext+0x13ea) # $at, 0x8016
/* B82D84 8010BBE4 A428FA4A */  sh    $t0, %lo(gSaveContext+0x13ea)($at)
.L8010BBE8:
/* B82D88 8010BBE8 3C048015 */  lui   $a0, %hi(D_80154428) # $a0, 0x8015
/* B82D8C 8010BBEC 0C00084C */  jal   osSyncPrintf
/* B82D90 8010BBF0 24844428 */   addiu $a0, %lo(D_80154428) # addiu $a0, $a0, 0x4428
/* B82D94 8010BBF4 24010001 */  li    $at, 1
/* B82D98 8010BBF8 12210003 */  beq   $s1, $at, .L8010BC08
/* B82D9C 8010BBFC 24090009 */   li    $t1, 9
/* B82DA0 8010BC00 24010030 */  li    $at, 48
/* B82DA4 8010BC04 16210005 */  bne   $s1, $at, .L8010BC1C
.L8010BC08:
/* B82DA8 8010BC08 26417FFF */   addiu $at, $s2, 0x7fff
/* B82DAC 8010BC0C 240A0063 */  li    $t2, 99
/* B82DB0 8010BC10 A0296305 */  sb    $t1, 0x6305($at)
/* B82DB4 8010BC14 10000039 */  b     .L8010BCFC
/* B82DB8 8010BC18 A02A62FE */   sb    $t2, 0x62fe($at)
.L8010BC1C:
/* B82DBC 8010BC1C 2401002F */  li    $at, 47
/* B82DC0 8010BC20 16210006 */  bne   $s1, $at, .L8010BC3C
/* B82DC4 8010BC24 240B0031 */   li    $t3, 49
/* B82DC8 8010BC28 26417FFF */  addiu $at, $s2, 0x7fff
/* B82DCC 8010BC2C 240C0002 */  li    $t4, 2
/* B82DD0 8010BC30 A02B6305 */  sb    $t3, 0x6305($at)
/* B82DD4 8010BC34 10000031 */  b     .L8010BCFC
/* B82DD8 8010BC38 A02C62FE */   sb    $t4, 0x62fe($at)
.L8010BC3C:
/* B82DDC 8010BC3C 2401002E */  li    $at, 46
/* B82DE0 8010BC40 5621000A */  bnel  $s1, $at, .L8010BC6C
/* B82DE4 8010BC44 2401002B */   li    $at, 43
/* B82DE8 8010BC48 0C020978 */  jal   func_800825E0
/* B82DEC 8010BC4C 24040001 */   li    $a0, 1
/* B82DF0 8010BC50 0C0426CF */  jal   func_80109B3C
/* B82DF4 8010BC54 8FA40058 */   lw    $a0, 0x58($sp)
/* B82DF8 8010BC58 240D0029 */  li    $t5, 41
/* B82DFC 8010BC5C 26417FFF */  addiu $at, $s2, 0x7fff
/* B82E00 8010BC60 10000026 */  b     .L8010BCFC
/* B82E04 8010BC64 A02D6305 */   sb    $t5, 0x6305($at)
/* B82E08 8010BC68 2401002B */  li    $at, 43
.L8010BC6C:
/* B82E0C 8010BC6C 16210023 */  bne   $s1, $at, .L8010BCFC
/* B82E10 8010BC70 3C048015 */   lui   $a0, %hi(D_80154434) # $a0, 0x8015
/* B82E14 8010BC74 0C00084C */  jal   osSyncPrintf
/* B82E18 8010BC78 24844434 */   addiu $a0, %lo(D_80154434) # addiu $a0, $a0, 0x4434
/* B82E1C 8010BC7C 0C03B616 */  jal   func_800ED858
/* B82E20 8010BC80 24040001 */   li    $a0, 1
/* B82E24 8010BC84 0C03B616 */  jal   func_800ED858
/* B82E28 8010BC88 24040001 */   li    $a0, 1
/* B82E2C 8010BC8C 0C03B8FE */  jal   func_800EE3F8
/* B82E30 8010BC90 00000000 */   nop   
/* B82E34 8010BC94 3C048015 */  lui   $a0, %hi(D_8014B2FC) # $a0, 0x8015
/* B82E38 8010BC98 26417FFF */  addiu $at, $s2, 0x7fff
/* B82E3C 8010BC9C AC2262B9 */  sw    $v0, 0x62b9($at)
/* B82E40 8010BCA0 2484B2FC */  addiu $a0, %lo(D_8014B2FC) # addiu $a0, $a0, -0x4d04
/* B82E44 8010BCA4 A4800000 */  sh    $zero, ($a0)
/* B82E48 8010BCA8 848E0000 */  lh    $t6, ($a0)
/* B82E4C 8010BCAC 3C038015 */  lui   $v1, %hi(D_8014B2F8) # $v1, 0x8015
/* B82E50 8010BCB0 8FB80030 */  lw    $t8, 0x30($sp)
/* B82E54 8010BCB4 2463B2F8 */  addiu $v1, %lo(D_8014B2F8) # addiu $v1, $v1, -0x4d08
/* B82E58 8010BCB8 A46E0000 */  sh    $t6, ($v1)
/* B82E5C 8010BCBC 846F0000 */  lh    $t7, ($v1)
/* B82E60 8010BCC0 8F1962B8 */  lw    $t9, 0x62b8($t8)
/* B82E64 8010BCC4 0C041A6C */  jal   func_801069B0
/* B82E68 8010BCC8 A32F0002 */   sb    $t7, 2($t9)
/* B82E6C 8010BCCC 24080003 */  li    $t0, 3
/* B82E70 8010BCD0 26417FFF */  addiu $at, $s2, 0x7fff
/* B82E74 8010BCD4 24090023 */  li    $t1, 35
/* B82E78 8010BCD8 A02863E8 */  sb    $t0, 0x63e8($at)
/* B82E7C 8010BCDC A0296305 */  sb    $t1, 0x6305($at)
/* B82E80 8010BCE0 2404000F */  li    $a0, 15
/* B82E84 8010BCE4 0C03B64F */  jal   func_800ED93C
/* B82E88 8010BCE8 24050001 */   li    $a1, 1
/* B82E8C 8010BCEC 3C018016 */  lui   $at, %hi(gSaveContext+0x13ea) # $at, 0x8016
/* B82E90 8010BCF0 A420FA4A */  sh    $zero, %lo(gSaveContext+0x13ea)($at)
/* B82E94 8010BCF4 0C020978 */  jal   func_800825E0
/* B82E98 8010BCF8 24040001 */   li    $a0, 1
.L8010BCFC:
/* B82E9C 8010BCFC 8FB10058 */  lw    $s1, 0x58($sp)
/* B82EA0 8010BD00 00008025 */  move  $s0, $zero
/* B82EA4 8010BD04 00001025 */  move  $v0, $zero
/* B82EA8 8010BD08 26312200 */  addiu $s1, $s1, 0x2200
/* B82EAC 8010BD0C 02202025 */  move  $a0, $s1
.L8010BD10:
/* B82EB0 8010BD10 34058140 */  li    $a1, 33088
/* B82EB4 8010BD14 3206FFFF */  andi  $a2, $s0, 0xffff
/* B82EB8 8010BD18 0C01BB94 */  jal   func_8006EE50
/* B82EBC 8010BD1C A7A2004E */   sh    $v0, 0x4e($sp)
/* B82EC0 8010BD20 87A2004E */  lh    $v0, 0x4e($sp)
/* B82EC4 8010BD24 26100080 */  addiu $s0, $s0, 0x80
/* B82EC8 8010BD28 24420001 */  addiu $v0, $v0, 1
/* B82ECC 8010BD2C 00021400 */  sll   $v0, $v0, 0x10
/* B82ED0 8010BD30 00021403 */  sra   $v0, $v0, 0x10
/* B82ED4 8010BD34 28410030 */  slti  $at, $v0, 0x30
/* B82ED8 8010BD38 5420FFF5 */  bnezl $at, .L8010BD10
/* B82EDC 8010BD3C 02202025 */   move  $a0, $s1
/* B82EE0 8010BD40 8FBF002C */  lw    $ra, 0x2c($sp)
/* B82EE4 8010BD44 8FB00020 */  lw    $s0, 0x20($sp)
/* B82EE8 8010BD48 8FB10024 */  lw    $s1, 0x24($sp)
/* B82EEC 8010BD4C 8FB20028 */  lw    $s2, 0x28($sp)
/* B82EF0 8010BD50 03E00008 */  jr    $ra
/* B82EF4 8010BD54 27BD0058 */   addiu $sp, $sp, 0x58

glabel func_8010BD58
/* B82EF8 8010BD58 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B82EFC 8010BD5C 3C010001 */  lui   $at, 1
/* B82F00 8010BD60 AFBF0014 */  sw    $ra, 0x14($sp)
/* B82F04 8010BD64 AFA5001C */  sw    $a1, 0x1c($sp)
/* B82F08 8010BD68 00240821 */  addu  $at, $at, $a0
/* B82F0C 8010BD6C 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B82F10 8010BD70 0C042E08 */  jal   func_8010B820
/* B82F14 8010BD74 A42004E6 */   sh    $zero, 0x4e6($at)
/* B82F18 8010BD78 8FBF0014 */  lw    $ra, 0x14($sp)
/* B82F1C 8010BD7C 27BD0018 */  addiu $sp, $sp, 0x18
/* B82F20 8010BD80 03E00008 */  jr    $ra
/* B82F24 8010BD84 00000000 */   nop   

glabel func_8010BD88
/* B82F28 8010BD88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B82F2C 8010BD8C 3C010001 */  lui   $at, 1
/* B82F30 8010BD90 AFBF0014 */  sw    $ra, 0x14($sp)
/* B82F34 8010BD94 AFA5001C */  sw    $a1, 0x1c($sp)
/* B82F38 8010BD98 00240821 */  addu  $at, $at, $a0
/* B82F3C 8010BD9C 240E0001 */  li    $t6, 1
/* B82F40 8010BDA0 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B82F44 8010BDA4 0C042E08 */  jal   func_8010B820
/* B82F48 8010BDA8 A42E04E6 */   sh    $t6, 0x4e6($at)
/* B82F4C 8010BDAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B82F50 8010BDB0 27BD0018 */  addiu $sp, $sp, 0x18
/* B82F54 8010BDB4 03E00008 */  jr    $ra
/* B82F58 8010BDB8 00000000 */   nop   

glabel func_8010BDBC
/* B82F5C 8010BDBC 34018000 */  li    $at, 32768
/* B82F60 8010BDC0 00811021 */  addu  $v0, $a0, $at
/* B82F64 8010BDC4 8C4E6300 */  lw    $t6, 0x6300($v0)
/* B82F68 8010BDC8 55C00004 */  bnezl $t6, .L8010BDDC
/* B82F6C 8010BDCC 90436304 */   lbu   $v1, 0x6304($v0)
/* B82F70 8010BDD0 03E00008 */  jr    $ra
/* B82F74 8010BDD4 00001025 */   move  $v0, $zero
/* B82F78 8010BDD8 90436304 */  lbu   $v1, 0x6304($v0)
.L8010BDDC:
/* B82F7C 8010BDDC 24010035 */  li    $at, 53
/* B82F80 8010BDE0 5461001D */  bnel  $v1, $at, .L8010BE58
/* B82F84 8010BDE4 24010034 */   li    $at, 52
/* B82F88 8010BDE8 904363E4 */  lbu   $v1, 0x63e4($v0)
/* B82F8C 8010BDEC 24010030 */  li    $at, 48
/* B82F90 8010BDF0 54610004 */  bnel  $v1, $at, .L8010BE04
/* B82F94 8010BDF4 24010010 */   li    $at, 16
/* B82F98 8010BDF8 03E00008 */  jr    $ra
/* B82F9C 8010BDFC 24020001 */   li    $v0, 1
/* B82FA0 8010BE00 24010010 */  li    $at, 16
.L8010BE04:
/* B82FA4 8010BE04 10610003 */  beq   $v1, $at, .L8010BE14
/* B82FA8 8010BE08 24010020 */   li    $at, 32
/* B82FAC 8010BE0C 54610004 */  bnel  $v1, $at, .L8010BE20
/* B82FB0 8010BE10 24010050 */   li    $at, 80
.L8010BE14:
/* B82FB4 8010BE14 03E00008 */  jr    $ra
/* B82FB8 8010BE18 24020004 */   li    $v0, 4
/* B82FBC 8010BE1C 24010050 */  li    $at, 80
.L8010BE20:
/* B82FC0 8010BE20 10610003 */  beq   $v1, $at, .L8010BE30
/* B82FC4 8010BE24 24010040 */   li    $at, 64
/* B82FC8 8010BE28 54610004 */  bnel  $v1, $at, .L8010BE3C
/* B82FCC 8010BE2C 24010060 */   li    $at, 96
.L8010BE30:
/* B82FD0 8010BE30 03E00008 */  jr    $ra
/* B82FD4 8010BE34 24020005 */   li    $v0, 5
/* B82FD8 8010BE38 24010060 */  li    $at, 96
.L8010BE3C:
/* B82FDC 8010BE3C 14610003 */  bne   $v1, $at, .L8010BE4C
/* B82FE0 8010BE40 00000000 */   nop   
/* B82FE4 8010BE44 03E00008 */  jr    $ra
/* B82FE8 8010BE48 24020003 */   li    $v0, 3
.L8010BE4C:
/* B82FEC 8010BE4C 03E00008 */  jr    $ra
/* B82FF0 8010BE50 24020006 */   li    $v0, 6
/* B82FF4 8010BE54 24010034 */  li    $at, 52
.L8010BE58:
/* B82FF8 8010BE58 54610004 */  bnel  $v1, $at, .L8010BE6C
/* B82FFC 8010BE5C 2401001A */   li    $at, 26
/* B83000 8010BE60 03E00008 */  jr    $ra
/* B83004 8010BE64 2402000A */   li    $v0, 10
/* B83008 8010BE68 2401001A */  li    $at, 26
.L8010BE6C:
/* B8300C 8010BE6C 54610004 */  bnel  $v1, $at, .L8010BE80
/* B83010 8010BE70 944F63EE */   lhu   $t7, 0x63ee($v0)
/* B83014 8010BE74 03E00008 */  jr    $ra
/* B83018 8010BE78 24020007 */   li    $v0, 7
/* B8301C 8010BE7C 944F63EE */  lhu   $t7, 0x63ee($v0)
.L8010BE80:
/* B83020 8010BE80 24010003 */  li    $at, 3
/* B83024 8010BE84 55E10004 */  bnel  $t7, $at, .L8010BE98
/* B83028 8010BE88 2401001F */   li    $at, 31
/* B8302C 8010BE8C 03E00008 */  jr    $ra
/* B83030 8010BE90 24020008 */   li    $v0, 8
/* B83034 8010BE94 2401001F */  li    $at, 31
.L8010BE98:
/* B83038 8010BE98 54610004 */  bnel  $v1, $at, .L8010BEAC
/* B8303C 8010BE9C 24010036 */   li    $at, 54
/* B83040 8010BEA0 03E00008 */  jr    $ra
/* B83044 8010BEA4 24020009 */   li    $v0, 9
/* B83048 8010BEA8 24010036 */  li    $at, 54
.L8010BEAC:
/* B8304C 8010BEAC 54610008 */  bnel  $v1, $at, .L8010BED0
/* B83050 8010BEB0 24030003 */   li    $v1, 3
/* B83054 8010BEB4 905863E7 */  lbu   $t8, 0x63e7($v0)
/* B83058 8010BEB8 24010001 */  li    $at, 1
/* B8305C 8010BEBC 57010004 */  bnel  $t8, $at, .L8010BED0
/* B83060 8010BEC0 24030003 */   li    $v1, 3
/* B83064 8010BEC4 03E00008 */  jr    $ra
/* B83068 8010BEC8 24020002 */   li    $v0, 2
/* B8306C 8010BECC 24030003 */  li    $v1, 3
.L8010BED0:
/* B83070 8010BED0 03E00008 */  jr    $ra
/* B83074 8010BED4 00601025 */   move  $v0, $v1

glabel func_8010BED8
/* B83078 8010BED8 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B8307C 8010BEDC AFA50064 */  sw    $a1, 0x64($sp)
/* B83080 8010BEE0 8CA20000 */  lw    $v0, ($a1)
/* B83084 8010BEE4 3C05E700 */  lui   $a1, 0xe700
/* B83088 8010BEE8 3C0CFA00 */  lui   $t4, 0xfa00
/* B8308C 8010BEEC 00401825 */  move  $v1, $v0
/* B83090 8010BEF0 AC650000 */  sw    $a1, ($v1)
/* B83094 8010BEF4 AC600004 */  sw    $zero, 4($v1)
/* B83098 8010BEF8 24420008 */  addiu $v0, $v0, 8
/* B8309C 8010BEFC 00403025 */  move  $a2, $v0
/* B830A0 8010BF00 3401A0D8 */  li    $at, 41176
/* B830A4 8010BF04 00811821 */  addu  $v1, $a0, $at
/* B830A8 8010BF08 ACCC0000 */  sw    $t4, ($a2)
/* B830AC 8010BF0C 846E6400 */  lh    $t6, 0x6400($v1)
/* B830B0 8010BF10 847863FE */  lh    $t8, 0x63fe($v1)
/* B830B4 8010BF14 24420008 */  addiu $v0, $v0, 8
/* B830B8 8010BF18 31CF00FF */  andi  $t7, $t6, 0xff
/* B830BC 8010BF1C 0018CE00 */  sll   $t9, $t8, 0x18
/* B830C0 8010BF20 000FC400 */  sll   $t8, $t7, 0x10
/* B830C4 8010BF24 846F6402 */  lh    $t7, 0x6402($v1)
/* B830C8 8010BF28 03387025 */  or    $t6, $t9, $t8
/* B830CC 8010BF2C 24010002 */  li    $at, 2
/* B830D0 8010BF30 31F900FF */  andi  $t9, $t7, 0xff
/* B830D4 8010BF34 0019C200 */  sll   $t8, $t9, 8
/* B830D8 8010BF38 84796406 */  lh    $t9, 0x6406($v1)
/* B830DC 8010BF3C 01D87825 */  or    $t7, $t6, $t8
/* B830E0 8010BF40 3C0AE600 */  lui   $t2, 0xe600
/* B830E4 8010BF44 332E00FF */  andi  $t6, $t9, 0xff
/* B830E8 8010BF48 01EEC025 */  or    $t8, $t7, $t6
/* B830EC 8010BF4C ACD80004 */  sw    $t8, 4($a2)
/* B830F0 8010BF50 906462FD */  lbu   $a0, 0x62fd($v1)
/* B830F4 8010BF54 3C180700 */  lui   $t8, (0x07000170 >> 16) # lui $t8, 0x700
/* B830F8 8010BF58 3C0EF590 */  lui   $t6, 0xf590
/* B830FC 8010BF5C 10800003 */  beqz  $a0, .L8010BF6C
/* B83100 8010BF60 3C19FD90 */   lui   $t9, 0xfd90
/* B83104 8010BF64 14810029 */  bne   $a0, $at, .L8010C00C
/* B83108 8010BF68 00803025 */   move  $a2, $a0
.L8010BF6C:
/* B8310C 8010BF6C 00402025 */  move  $a0, $v0
/* B83110 8010BF70 AC990000 */  sw    $t9, ($a0)
/* B83114 8010BF74 8C6F62B0 */  lw    $t7, 0x62b0($v1)
/* B83118 8010BF78 24420008 */  addiu $v0, $v0, 8
/* B8311C 8010BF7C 37180170 */  ori   $t8, (0x07000170 & 0xFFFF) # ori $t8, $t8, 0x170
/* B83120 8010BF80 AC8F0004 */  sw    $t7, 4($a0)
/* B83124 8010BF84 00402025 */  move  $a0, $v0
/* B83128 8010BF88 AC8E0000 */  sw    $t6, ($a0)
/* B8312C 8010BF8C AC980004 */  sw    $t8, 4($a0)
/* B83130 8010BF90 24420008 */  addiu $v0, $v0, 8
/* B83134 8010BF94 00402025 */  move  $a0, $v0
/* B83138 8010BF98 AC8A0000 */  sw    $t2, ($a0)
/* B8313C 8010BF9C AC800004 */  sw    $zero, 4($a0)
/* B83140 8010BFA0 24420008 */  addiu $v0, $v0, 8
/* B83144 8010BFA4 00402025 */  move  $a0, $v0
/* B83148 8010BFA8 3C19077F */  lui   $t9, (0x077FF100 >> 16) # lui $t9, 0x77f
/* B8314C 8010BFAC 3739F100 */  ori   $t9, (0x077FF100 & 0xFFFF) # ori $t9, $t9, 0xf100
/* B83150 8010BFB0 3C0BF300 */  lui   $t3, 0xf300
/* B83154 8010BFB4 AC8B0000 */  sw    $t3, ($a0)
/* B83158 8010BFB8 AC990004 */  sw    $t9, 4($a0)
/* B8315C 8010BFBC 24420008 */  addiu $v0, $v0, 8
/* B83160 8010BFC0 00402025 */  move  $a0, $v0
/* B83164 8010BFC4 AC850000 */  sw    $a1, ($a0)
/* B83168 8010BFC8 AC800004 */  sw    $zero, 4($a0)
/* B8316C 8010BFCC 24420008 */  addiu $v0, $v0, 8
/* B83170 8010BFD0 00402025 */  move  $a0, $v0
/* B83174 8010BFD4 3C0FF580 */  lui   $t7, (0xF5801000 >> 16) # lui $t7, 0xf580
/* B83178 8010BFD8 35EF1000 */  ori   $t7, (0xF5801000 & 0xFFFF) # ori $t7, $t7, 0x1000
/* B8317C 8010BFDC 240E0170 */  li    $t6, 368
/* B83180 8010BFE0 AC8E0004 */  sw    $t6, 4($a0)
/* B83184 8010BFE4 AC8F0000 */  sw    $t7, ($a0)
/* B83188 8010BFE8 24420008 */  addiu $v0, $v0, 8
/* B8318C 8010BFEC 00402025 */  move  $a0, $v0
/* B83190 8010BFF0 3C18001F */  lui   $t8, (0x001FC0FC >> 16) # lui $t8, 0x1f
/* B83194 8010BFF4 3718C0FC */  ori   $t8, (0x001FC0FC & 0xFFFF) # ori $t8, $t8, 0xc0fc
/* B83198 8010BFF8 3C06F200 */  lui   $a2, 0xf200
/* B8319C 8010BFFC AC860000 */  sw    $a2, ($a0)
/* B831A0 8010C000 AC980004 */  sw    $t8, 4($a0)
/* B831A4 8010C004 1000003D */  b     .L8010C0FC
/* B831A8 8010C008 24420008 */   addiu $v0, $v0, 8
.L8010C00C:
/* B831AC 8010C00C 24010003 */  li    $at, 3
/* B831B0 8010C010 14C10008 */  bne   $a2, $at, .L8010C034
/* B831B4 8010C014 3C0AE600 */   lui   $t2, 0xe600
/* B831B8 8010C018 00402025 */  move  $a0, $v0
/* B831BC 8010C01C 3C19FB00 */  lui   $t9, 0xfb00
/* B831C0 8010C020 240F00FF */  li    $t7, 255
/* B831C4 8010C024 AC8F0004 */  sw    $t7, 4($a0)
/* B831C8 8010C028 AC990000 */  sw    $t9, ($a0)
/* B831CC 8010C02C 10000008 */  b     .L8010C050
/* B831D0 8010C030 24420008 */   addiu $v0, $v0, 8
.L8010C034:
/* B831D4 8010C034 00402025 */  move  $a0, $v0
/* B831D8 8010C038 3C183214 */  lui   $t8, (0x321400FF >> 16) # lui $t8, 0x3214
/* B831DC 8010C03C 371800FF */  ori   $t8, (0x321400FF & 0xFFFF) # ori $t8, $t8, 0xff
/* B831E0 8010C040 3C0EFB00 */  lui   $t6, 0xfb00
/* B831E4 8010C044 AC8E0000 */  sw    $t6, ($a0)
/* B831E8 8010C048 AC980004 */  sw    $t8, 4($a0)
/* B831EC 8010C04C 24420008 */  addiu $v0, $v0, 8
.L8010C050:
/* B831F0 8010C050 00402025 */  move  $a0, $v0
/* B831F4 8010C054 3C19FD70 */  lui   $t9, 0xfd70
/* B831F8 8010C058 AC990000 */  sw    $t9, ($a0)
/* B831FC 8010C05C 8C6F62B0 */  lw    $t7, 0x62b0($v1)
/* B83200 8010C060 24420008 */  addiu $v0, $v0, 8
/* B83204 8010C064 3C180704 */  lui   $t8, (0x07040170 >> 16) # lui $t8, 0x704
/* B83208 8010C068 AC8F0004 */  sw    $t7, 4($a0)
/* B8320C 8010C06C 00402025 */  move  $a0, $v0
/* B83210 8010C070 37180170 */  ori   $t8, (0x07040170 & 0xFFFF) # ori $t8, $t8, 0x170
/* B83214 8010C074 3C0EF570 */  lui   $t6, 0xf570
/* B83218 8010C078 AC8E0000 */  sw    $t6, ($a0)
/* B8321C 8010C07C AC980004 */  sw    $t8, 4($a0)
/* B83220 8010C080 24420008 */  addiu $v0, $v0, 8
/* B83224 8010C084 00402025 */  move  $a0, $v0
/* B83228 8010C088 AC8A0000 */  sw    $t2, ($a0)
/* B8322C 8010C08C AC800004 */  sw    $zero, 4($a0)
/* B83230 8010C090 24420008 */  addiu $v0, $v0, 8
/* B83234 8010C094 00402025 */  move  $a0, $v0
/* B83238 8010C098 3C19077F */  lui   $t9, (0x077FF100 >> 16) # lui $t9, 0x77f
/* B8323C 8010C09C 3739F100 */  ori   $t9, (0x077FF100 & 0xFFFF) # ori $t9, $t9, 0xf100
/* B83240 8010C0A0 3C0BF300 */  lui   $t3, 0xf300
/* B83244 8010C0A4 AC8B0000 */  sw    $t3, ($a0)
/* B83248 8010C0A8 AC990004 */  sw    $t9, 4($a0)
/* B8324C 8010C0AC 24420008 */  addiu $v0, $v0, 8
/* B83250 8010C0B0 00402025 */  move  $a0, $v0
/* B83254 8010C0B4 AC850000 */  sw    $a1, ($a0)
/* B83258 8010C0B8 AC800004 */  sw    $zero, 4($a0)
/* B8325C 8010C0BC 24420008 */  addiu $v0, $v0, 8
/* B83260 8010C0C0 00402025 */  move  $a0, $v0
/* B83264 8010C0C4 3C0E0004 */  lui   $t6, (0x00040170 >> 16) # lui $t6, 4
/* B83268 8010C0C8 3C0FF560 */  lui   $t7, (0xF5601000 >> 16) # lui $t7, 0xf560
/* B8326C 8010C0CC 35EF1000 */  ori   $t7, (0xF5601000 & 0xFFFF) # ori $t7, $t7, 0x1000
/* B83270 8010C0D0 35CE0170 */  ori   $t6, (0x00040170 & 0xFFFF) # ori $t6, $t6, 0x170
/* B83274 8010C0D4 AC8E0004 */  sw    $t6, 4($a0)
/* B83278 8010C0D8 AC8F0000 */  sw    $t7, ($a0)
/* B8327C 8010C0DC 24420008 */  addiu $v0, $v0, 8
/* B83280 8010C0E0 00402025 */  move  $a0, $v0
/* B83284 8010C0E4 3C18001F */  lui   $t8, (0x001FC0FC >> 16) # lui $t8, 0x1f
/* B83288 8010C0E8 3718C0FC */  ori   $t8, (0x001FC0FC & 0xFFFF) # ori $t8, $t8, 0xc0fc
/* B8328C 8010C0EC 3C06F200 */  lui   $a2, 0xf200
/* B83290 8010C0F0 AC860000 */  sw    $a2, ($a0)
/* B83294 8010C0F4 AC980004 */  sw    $t8, 4($a0)
/* B83298 8010C0F8 24420008 */  addiu $v0, $v0, 8
.L8010C0FC:
/* B8329C 8010C0FC 3C048016 */  lui   $a0, %hi(gGameInfo) # $a0, 0x8016
/* B832A0 8010C100 2484FA90 */  addiu $a0, %lo(gGameInfo) # addiu $a0, $a0, -0x570
/* B832A4 8010C104 8C8D0000 */  lw    $t5, ($a0)
/* B832A8 8010C108 3C07E400 */  lui   $a3, 0xe400
/* B832AC 8010C10C 00404025 */  move  $t0, $v0
/* B832B0 8010C110 85B904C2 */  lh    $t9, 0x4c2($t5)
/* B832B4 8010C114 85AF0F16 */  lh    $t7, 0xf16($t5)
/* B832B8 8010C118 24420008 */  addiu $v0, $v0, 8
/* B832BC 8010C11C 00404825 */  move  $t1, $v0
/* B832C0 8010C120 032F7021 */  addu  $t6, $t9, $t7
/* B832C4 8010C124 000EC080 */  sll   $t8, $t6, 2
/* B832C8 8010C128 33190FFF */  andi  $t9, $t8, 0xfff
/* B832CC 8010C12C 85B804C0 */  lh    $t8, 0x4c0($t5)
/* B832D0 8010C130 85AE0F14 */  lh    $t6, 0xf14($t5)
/* B832D4 8010C134 03277825 */  or    $t7, $t9, $a3
/* B832D8 8010C138 24420008 */  addiu $v0, $v0, 8
/* B832DC 8010C13C 01D8C821 */  addu  $t9, $t6, $t8
/* B832E0 8010C140 00197080 */  sll   $t6, $t9, 2
/* B832E4 8010C144 31D80FFF */  andi  $t8, $t6, 0xfff
/* B832E8 8010C148 0018CB00 */  sll   $t9, $t8, 0xc
/* B832EC 8010C14C 01F97025 */  or    $t6, $t7, $t9
/* B832F0 8010C150 AD0E0000 */  sw    $t6, ($t0)
/* B832F4 8010C154 8C8D0000 */  lw    $t5, ($a0)
/* B832F8 8010C158 24010003 */  li    $at, 3
/* B832FC 8010C15C 85B80F16 */  lh    $t8, 0xf16($t5)
/* B83300 8010C160 85AE0F14 */  lh    $t6, 0xf14($t5)
/* B83304 8010C164 00187880 */  sll   $t7, $t8, 2
/* B83308 8010C168 31F90FFF */  andi  $t9, $t7, 0xfff
/* B8330C 8010C16C 000EC080 */  sll   $t8, $t6, 2
/* B83310 8010C170 330F0FFF */  andi  $t7, $t8, 0xfff
/* B83314 8010C174 000F7300 */  sll   $t6, $t7, 0xc
/* B83318 8010C178 032EC025 */  or    $t8, $t9, $t6
/* B8331C 8010C17C AD180004 */  sw    $t8, 4($t0)
/* B83320 8010C180 3C08E100 */  lui   $t0, 0xe100
/* B83324 8010C184 AD280000 */  sw    $t0, ($t1)
/* B83328 8010C188 AD200004 */  sw    $zero, 4($t1)
/* B8332C 8010C18C AFA20004 */  sw    $v0, 4($sp)
/* B83330 8010C190 8FAF0004 */  lw    $t7, 4($sp)
/* B83334 8010C194 3C09F100 */  lui   $t1, 0xf100
/* B83338 8010C198 24420008 */  addiu $v0, $v0, 8
/* B8333C 8010C19C ADE90000 */  sw    $t1, ($t7)
/* B83340 8010C1A0 8C8D0000 */  lw    $t5, ($a0)
/* B83344 8010C1A4 85B904B6 */  lh    $t9, 0x4b6($t5)
/* B83348 8010C1A8 00197040 */  sll   $t6, $t9, 1
/* B8334C 8010C1AC 31D8FFFF */  andi  $t8, $t6, 0xffff
/* B83350 8010C1B0 85AE04B4 */  lh    $t6, 0x4b4($t5)
/* B83354 8010C1B4 000E7C40 */  sll   $t7, $t6, 0x11
/* B83358 8010C1B8 8FAE0004 */  lw    $t6, 4($sp)
/* B8335C 8010C1BC 030FC825 */  or    $t9, $t8, $t7
/* B83360 8010C1C0 3C0FFC61 */  lui   $t7, (0xFC6196C3 >> 16) # lui $t7, 0xfc61
/* B83364 8010C1C4 ADD90004 */  sw    $t9, 4($t6)
/* B83368 8010C1C8 907862FD */  lbu   $t8, 0x62fd($v1)
/* B8336C 8010C1CC 00401825 */  move  $v1, $v0
/* B83370 8010C1D0 3C19FF2F */  lui   $t9, (0xFF2FFFFF >> 16) # lui $t9, 0xff2f
/* B83374 8010C1D4 1701005C */  bne   $t8, $at, .L8010C348
/* B83378 8010C1D8 35EF96C3 */   ori   $t7, (0xFC6196C3 & 0xFFFF) # ori $t7, $t7, 0x96c3
/* B8337C 8010C1DC 24420008 */  addiu $v0, $v0, 8
/* B83380 8010C1E0 AC650000 */  sw    $a1, ($v1)
/* B83384 8010C1E4 AC600004 */  sw    $zero, 4($v1)
/* B83388 8010C1E8 00401825 */  move  $v1, $v0
/* B8338C 8010C1EC 3739FFFF */  ori   $t9, (0xFF2FFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* B83390 8010C1F0 AC790004 */  sw    $t9, 4($v1)
/* B83394 8010C1F4 AC6F0000 */  sw    $t7, ($v1)
/* B83398 8010C1F8 24420008 */  addiu $v0, $v0, 8
/* B8339C 8010C1FC 00401825 */  move  $v1, $v0
/* B833A0 8010C200 3C0EFF64 */  lui   $t6, (0xFF6400FF >> 16) # lui $t6, 0xff64
/* B833A4 8010C204 35CE00FF */  ori   $t6, (0xFF6400FF & 0xFFFF) # ori $t6, $t6, 0xff
/* B833A8 8010C208 AC6E0004 */  sw    $t6, 4($v1)
/* B833AC 8010C20C AC6C0000 */  sw    $t4, ($v1)
/* B833B0 8010C210 24420008 */  addiu $v0, $v0, 8
/* B833B4 8010C214 00401825 */  move  $v1, $v0
/* B833B8 8010C218 3C0F0200 */  lui   $t7, %hi(D_02002E40) # $t7, 0x200
/* B833BC 8010C21C 25EF2E40 */  addiu $t7, %lo(D_02002E40) # addiu $t7, $t7, 0x2e40
/* B833C0 8010C220 3C18FD90 */  lui   $t8, 0xfd90
/* B833C4 8010C224 AC780000 */  sw    $t8, ($v1)
/* B833C8 8010C228 AC6F0004 */  sw    $t7, 4($v1)
/* B833CC 8010C22C 24420008 */  addiu $v0, $v0, 8
/* B833D0 8010C230 00401825 */  move  $v1, $v0
/* B833D4 8010C234 3C0E0704 */  lui   $t6, (0x07040100 >> 16) # lui $t6, 0x704
/* B833D8 8010C238 35CE0100 */  ori   $t6, (0x07040100 & 0xFFFF) # ori $t6, $t6, 0x100
/* B833DC 8010C23C 3C19F590 */  lui   $t9, 0xf590
/* B833E0 8010C240 AC790000 */  sw    $t9, ($v1)
/* B833E4 8010C244 AC6E0004 */  sw    $t6, 4($v1)
/* B833E8 8010C248 24420008 */  addiu $v0, $v0, 8
/* B833EC 8010C24C 00401825 */  move  $v1, $v0
/* B833F0 8010C250 AC6A0000 */  sw    $t2, ($v1)
/* B833F4 8010C254 AC600004 */  sw    $zero, 4($v1)
/* B833F8 8010C258 24420008 */  addiu $v0, $v0, 8
/* B833FC 8010C25C 00401825 */  move  $v1, $v0
/* B83400 8010C260 3C180707 */  lui   $t8, (0x0707F800 >> 16) # lui $t8, 0x707
/* B83404 8010C264 3718F800 */  ori   $t8, (0x0707F800 & 0xFFFF) # ori $t8, $t8, 0xf800
/* B83408 8010C268 AC780004 */  sw    $t8, 4($v1)
/* B8340C 8010C26C AC6B0000 */  sw    $t3, ($v1)
/* B83410 8010C270 24420008 */  addiu $v0, $v0, 8
/* B83414 8010C274 00401825 */  move  $v1, $v0
/* B83418 8010C278 AC650000 */  sw    $a1, ($v1)
/* B8341C 8010C27C AC600004 */  sw    $zero, 4($v1)
/* B83420 8010C280 24420008 */  addiu $v0, $v0, 8
/* B83424 8010C284 00401825 */  move  $v1, $v0
/* B83428 8010C288 3C190004 */  lui   $t9, (0x00040100 >> 16) # lui $t9, 4
/* B8342C 8010C28C 3C0FF580 */  lui   $t7, (0xF5800200 >> 16) # lui $t7, 0xf580
/* B83430 8010C290 35EF0200 */  ori   $t7, (0xF5800200 & 0xFFFF) # ori $t7, $t7, 0x200
/* B83434 8010C294 37390100 */  ori   $t9, (0x00040100 & 0xFFFF) # ori $t9, $t9, 0x100
/* B83438 8010C298 AC790004 */  sw    $t9, 4($v1)
/* B8343C 8010C29C AC6F0000 */  sw    $t7, ($v1)
/* B83440 8010C2A0 24420008 */  addiu $v0, $v0, 8
/* B83444 8010C2A4 00401825 */  move  $v1, $v0
/* B83448 8010C2A8 3C0E0003 */  lui   $t6, (0x0003C07C >> 16) # lui $t6, 3
/* B8344C 8010C2AC 35CEC07C */  ori   $t6, (0x0003C07C & 0xFFFF) # ori $t6, $t6, 0xc07c
/* B83450 8010C2B0 AC6E0004 */  sw    $t6, 4($v1)
/* B83454 8010C2B4 AC660000 */  sw    $a2, ($v1)
/* B83458 8010C2B8 8C8D0000 */  lw    $t5, ($a0)
/* B8345C 8010C2BC 24420008 */  addiu $v0, $v0, 8
/* B83460 8010C2C0 00401825 */  move  $v1, $v0
/* B83464 8010C2C4 85B80F24 */  lh    $t8, 0xf24($t5)
/* B83468 8010C2C8 24420008 */  addiu $v0, $v0, 8
/* B8346C 8010C2CC 270F0020 */  addiu $t7, $t8, 0x20
/* B83470 8010C2D0 000FC880 */  sll   $t9, $t7, 2
/* B83474 8010C2D4 85AF0F22 */  lh    $t7, 0xf22($t5)
/* B83478 8010C2D8 332E0FFF */  andi  $t6, $t9, 0xfff
/* B8347C 8010C2DC 01C7C025 */  or    $t8, $t6, $a3
/* B83480 8010C2E0 25F90010 */  addiu $t9, $t7, 0x10
/* B83484 8010C2E4 00197080 */  sll   $t6, $t9, 2
/* B83488 8010C2E8 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B8348C 8010C2EC 000FCB00 */  sll   $t9, $t7, 0xc
/* B83490 8010C2F0 03197025 */  or    $t6, $t8, $t9
/* B83494 8010C2F4 AC6E0000 */  sw    $t6, ($v1)
/* B83498 8010C2F8 8C8D0000 */  lw    $t5, ($a0)
/* B8349C 8010C2FC 85AF0F24 */  lh    $t7, 0xf24($t5)
/* B834A0 8010C300 85AE0F22 */  lh    $t6, 0xf22($t5)
/* B834A4 8010C304 000FC080 */  sll   $t8, $t7, 2
/* B834A8 8010C308 33190FFF */  andi  $t9, $t8, 0xfff
/* B834AC 8010C30C 000E7880 */  sll   $t7, $t6, 2
/* B834B0 8010C310 31F80FFF */  andi  $t8, $t7, 0xfff
/* B834B4 8010C314 00187300 */  sll   $t6, $t8, 0xc
/* B834B8 8010C318 032E7825 */  or    $t7, $t9, $t6
/* B834BC 8010C31C AC6F0004 */  sw    $t7, 4($v1)
/* B834C0 8010C320 00401825 */  move  $v1, $v0
/* B834C4 8010C324 AC680000 */  sw    $t0, ($v1)
/* B834C8 8010C328 AC600004 */  sw    $zero, 4($v1)
/* B834CC 8010C32C 24420008 */  addiu $v0, $v0, 8
/* B834D0 8010C330 00401825 */  move  $v1, $v0
/* B834D4 8010C334 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* B834D8 8010C338 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* B834DC 8010C33C AC780004 */  sw    $t8, 4($v1)
/* B834E0 8010C340 AC690000 */  sw    $t1, ($v1)
/* B834E4 8010C344 24420008 */  addiu $v0, $v0, 8
.L8010C348:
/* B834E8 8010C348 8FB90064 */  lw    $t9, 0x64($sp)
/* B834EC 8010C34C 27BD0060 */  addiu $sp, $sp, 0x60
/* B834F0 8010C350 03E00008 */  jr    $ra
/* B834F4 8010C354 AF220000 */   sw    $v0, ($t9)

glabel func_8010C358
/* B834F8 8010C358 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B834FC 8010C35C AFBF0014 */  sw    $ra, 0x14($sp)
/* B83500 8010C360 240E00F0 */  li    $t6, 240
/* B83504 8010C364 240F0140 */  li    $t7, 320
/* B83508 8010C368 AFA40028 */  sw    $a0, 0x28($sp)
/* B8350C 8010C36C AFAF0024 */  sw    $t7, 0x24($sp)
/* B83510 8010C370 AFAE001C */  sw    $t6, 0x1c($sp)
/* B83514 8010C374 AFA00018 */  sw    $zero, 0x18($sp)
/* B83518 8010C378 AFA00020 */  sw    $zero, 0x20($sp)
/* B8351C 8010C37C 0C02A93F */  jal   func_800AA4FC
/* B83520 8010C380 27A50018 */   addiu $a1, $sp, 0x18
/* B83524 8010C384 0C02ACB1 */  jal   func_800AB2C4
/* B83528 8010C388 8FA40028 */   lw    $a0, 0x28($sp)
/* B8352C 8010C38C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B83530 8010C390 27BD0028 */  addiu $sp, $sp, 0x28
/* B83534 8010C394 03E00008 */  jr    $ra
/* B83538 8010C398 00000000 */   nop   

glabel func_8010C39C
/* B8353C 8010C39C 27BDFEA8 */  addiu $sp, $sp, -0x158
/* B83540 8010C3A0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B83544 8010C3A4 AFB20038 */  sw    $s2, 0x38($sp)
/* B83548 8010C3A8 AFB10034 */  sw    $s1, 0x34($sp)
/* B8354C 8010C3AC AFB00030 */  sw    $s0, 0x30($sp)
/* B83550 8010C3B0 AFA5015C */  sw    $a1, 0x15c($sp)
/* B83554 8010C3B4 8C8E1C44 */  lw    $t6, 0x1c44($a0)
/* B83558 8010C3B8 3C0FDB06 */  lui   $t7, (0xDB060008 >> 16) # lui $t7, 0xdb06
/* B8355C 8010C3BC 35EF0008 */  ori   $t7, (0xDB060008 & 0xFFFF) # ori $t7, $t7, 8
/* B83560 8010C3C0 AFAE0148 */  sw    $t6, 0x148($sp)
/* B83564 8010C3C4 8CA20000 */  lw    $v0, ($a1)
/* B83568 8010C3C8 3C010001 */  lui   $at, 1
/* B8356C 8010C3CC 0081C021 */  addu  $t8, $a0, $at
/* B83570 8010C3D0 AFA20140 */  sw    $v0, 0x140($sp)
/* B83574 8010C3D4 244E0008 */  addiu $t6, $v0, 8
/* B83578 8010C3D8 AFAE0140 */  sw    $t6, 0x140($sp)
/* B8357C 8010C3DC AC4F0000 */  sw    $t7, ($v0)
/* B83580 8010C3E0 AFB8008C */  sw    $t8, 0x8c($sp)
/* B83584 8010C3E4 8F0E0620 */  lw    $t6, 0x620($t8)
/* B83588 8010C3E8 3C19DB06 */  lui   $t9, (0xDB06001C >> 16) # lui $t9, 0xdb06
/* B8358C 8010C3EC 3739001C */  ori   $t9, (0xDB06001C & 0xFFFF) # ori $t9, $t9, 0x1c
/* B83590 8010C3F0 AC4E0004 */  sw    $t6, 4($v0)
/* B83594 8010C3F4 8FAF0140 */  lw    $t7, 0x140($sp)
/* B83598 8010C3F8 34018000 */  li    $at, 32768
/* B8359C 8010C3FC 249120D8 */  addiu $s1, $a0, 0x20d8
/* B835A0 8010C400 25F80008 */  addiu $t8, $t7, 8
/* B835A4 8010C404 AFB80140 */  sw    $t8, 0x140($sp)
/* B835A8 8010C408 02218021 */  addu  $s0, $s1, $at
/* B835AC 8010C40C ADF90000 */  sw    $t9, ($t7)
/* B835B0 8010C410 8E0E62B0 */  lw    $t6, 0x62b0($s0)
/* B835B4 8010C414 00809025 */  move  $s2, $a0
/* B835B8 8010C418 ADEE0004 */  sw    $t6, 4($t7)
/* B835BC 8010C41C 8E0F6300 */  lw    $t7, 0x6300($s0)
/* B835C0 8010C420 51E00BA2 */  beql  $t7, $zero, .L8010F2AC
/* B835C4 8010C424 8FB80140 */   lw    $t8, 0x140($sp)
/* B835C8 8010C428 961863F0 */  lhu   $t8, 0x63f0($s0)
/* B835CC 8010C42C 2401002F */  li    $at, 47
/* B835D0 8010C430 13010014 */  beq   $t8, $at, .L8010C484
/* B835D4 8010C434 00000000 */   nop   
/* B835D8 8010C438 92026304 */  lbu   $v0, 0x6304($s0)
/* B835DC 8010C43C 24010017 */  li    $at, 23
/* B835E0 8010C440 10410010 */  beq   $v0, $at, .L8010C484
/* B835E4 8010C444 28410002 */   slti  $at, $v0, 2
/* B835E8 8010C448 1420000E */  bnez  $at, .L8010C484
/* B835EC 8010C44C 28410036 */   slti  $at, $v0, 0x36
/* B835F0 8010C450 1020000C */  beqz  $at, .L8010C484
/* B835F4 8010C454 00000000 */   nop   
/* B835F8 8010C458 921962FD */  lbu   $t9, 0x62fd($s0)
/* B835FC 8010C45C 2B210004 */  slti  $at, $t9, 4
/* B83600 8010C460 10200008 */  beqz  $at, .L8010C484
/* B83604 8010C464 00000000 */   nop   
/* B83608 8010C468 0C0430D6 */  jal   func_8010C358
/* B8360C 8010C46C 02202025 */   move  $a0, $s1
/* B83610 8010C470 0C02515F */  jal   func_8009457C
/* B83614 8010C474 27A40140 */   addiu $a0, $sp, 0x140
/* B83618 8010C478 02402025 */  move  $a0, $s2
/* B8361C 8010C47C 0C042FB6 */  jal   func_8010BED8
/* B83620 8010C480 27A50140 */   addiu $a1, $sp, 0x140
.L8010C484:
/* B83624 8010C484 0C02515F */  jal   func_8009457C
/* B83628 8010C488 27A40140 */   addiu $a0, $sp, 0x140
/* B8362C 8010C48C 8FAE0140 */  lw    $t6, 0x140($sp)
/* B83630 8010C490 3C18E200 */  lui   $t8, (0xE2001E01 >> 16) # lui $t8, 0xe200
/* B83634 8010C494 37181E01 */  ori   $t8, (0xE2001E01 & 0xFFFF) # ori $t8, $t8, 0x1e01
/* B83638 8010C498 25CF0008 */  addiu $t7, $t6, 8
/* B8363C 8010C49C AFAF0140 */  sw    $t7, 0x140($sp)
/* B83640 8010C4A0 ADC00004 */  sw    $zero, 4($t6)
/* B83644 8010C4A4 ADD80000 */  sw    $t8, ($t6)
/* B83648 8010C4A8 8FB90140 */  lw    $t9, 0x140($sp)
/* B8364C 8010C4AC 3C18FF2D */  lui   $t8, (0xFF2DFEFF >> 16) # lui $t8, 0xff2d
/* B83650 8010C4B0 3C0FFCFF */  lui   $t7, (0xFCFF97FF >> 16) # lui $t7, 0xfcff
/* B83654 8010C4B4 272E0008 */  addiu $t6, $t9, 8
/* B83658 8010C4B8 AFAE0140 */  sw    $t6, 0x140($sp)
/* B8365C 8010C4BC 35EF97FF */  ori   $t7, (0xFCFF97FF & 0xFFFF) # ori $t7, $t7, 0x97ff
/* B83660 8010C4C0 3718FEFF */  ori   $t8, (0xFF2DFEFF & 0xFFFF) # ori $t8, $t8, 0xfeff
/* B83664 8010C4C4 AF380004 */  sw    $t8, 4($t9)
/* B83668 8010C4C8 AF2F0000 */  sw    $t7, ($t9)
/* B8366C 8010C4CC 92026304 */  lbu   $v0, 0x6304($s0)
/* B83670 8010C4D0 2459FFFF */  addiu $t9, $v0, -1
/* B83674 8010C4D4 2F210037 */  sltiu $at, $t9, 0x37
/* B83678 8010C4D8 102009E1 */  beqz  $at, .L8010EC60
/* B8367C 8010C4DC 0019C880 */   sll   $t9, $t9, 2
/* B83680 8010C4E0 3C018015 */  lui   $at, %hi(jtbl_80154BE8)
/* B83684 8010C4E4 00390821 */  addu  $at, $at, $t9
/* B83688 8010C4E8 8C394BE8 */  lw    $t9, %lo(jtbl_80154BE8)($at)
/* B8368C 8010C4EC 03200008 */  jr    $t9
/* B83690 8010C4F0 00000000 */   nop   
glabel L8010C4F4
/* B83694 8010C4F4 100009DF */  b     .L8010EC74
/* B83698 8010C4F8 2841000C */   slti  $at, $v0, 0xc
glabel L8010C4FC
/* B8369C 8010C4FC 920E63E7 */  lbu   $t6, 0x63e7($s0)
/* B836A0 8010C500 24010001 */  li    $at, 1
/* B836A4 8010C504 15C10015 */  bne   $t6, $at, .L8010C55C
/* B836A8 8010C508 26442200 */   addiu $a0, $s2, 0x2200
/* B836AC 8010C50C AFA40090 */  sw    $a0, 0x90($sp)
/* B836B0 8010C510 00003025 */  move  $a2, $zero
/* B836B4 8010C514 00003825 */  move  $a3, $zero
.L8010C518:
/* B836B8 8010C518 8FA40090 */  lw    $a0, 0x90($sp)
/* B836BC 8010C51C 34058140 */  li    $a1, 33088
/* B836C0 8010C520 A7A60132 */  sh    $a2, 0x132($sp)
/* B836C4 8010C524 0C01BB94 */  jal   func_8006EE50
/* B836C8 8010C528 A7A70138 */   sh    $a3, 0x138($sp)
/* B836CC 8010C52C 97A70138 */  lhu   $a3, 0x138($sp)
/* B836D0 8010C530 97A60132 */  lhu   $a2, 0x132($sp)
/* B836D4 8010C534 24E70001 */  addiu $a3, $a3, 1
/* B836D8 8010C538 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B836DC 8010C53C 28E10030 */  slti  $at, $a3, 0x30
/* B836E0 8010C540 24C60080 */  addiu $a2, $a2, 0x80
/* B836E4 8010C544 1420FFF4 */  bnez  $at, .L8010C518
/* B836E8 8010C548 30C6FFFF */   andi  $a2, $a2, 0xffff
/* B836EC 8010C54C 02402025 */  move  $a0, $s2
/* B836F0 8010C550 0C0421AC */  jal   func_801086B0
/* B836F4 8010C554 27A50140 */   addiu $a1, $sp, 0x140
/* B836F8 8010C558 92026304 */  lbu   $v0, 0x6304($s0)
.L8010C55C:
/* B836FC 8010C55C 100009C5 */  b     .L8010EC74
/* B83700 8010C560 2841000C */   slti  $at, $v0, 0xc
glabel L8010C564
/* B83704 8010C564 02402025 */  move  $a0, $s2
/* B83708 8010C568 0C0421AC */  jal   func_801086B0
/* B8370C 8010C56C 27A50140 */   addiu $a1, $sp, 0x140
/* B83710 8010C570 100009BF */  b     .L8010EC70
/* B83714 8010C574 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010C578
/* B83718 8010C578 02402025 */  move  $a0, $s2
/* B8371C 8010C57C 0C0421AC */  jal   func_801086B0
/* B83720 8010C580 27A50140 */   addiu $a1, $sp, 0x140
/* B83724 8010C584 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B83728 8010C588 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B8372C 8010C58C 8D280000 */  lw    $t0, ($t1)
/* B83730 8010C590 02402025 */  move  $a0, $s2
/* B83734 8010C594 27A50140 */  addiu $a1, $sp, 0x140
/* B83738 8010C598 85060B14 */  lh    $a2, 0xb14($t0)
/* B8373C 8010C59C 0C041E60 */  jal   func_80107980
/* B83740 8010C5A0 85070B16 */   lh    $a3, 0xb16($t0)
/* B83744 8010C5A4 100009B2 */  b     .L8010EC70
/* B83748 8010C5A8 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010C5AC
/* B8374C 8010C5AC 0C03B616 */  jal   func_800ED858
/* B83750 8010C5B0 24040001 */   li    $a0, 1
/* B83754 8010C5B4 0C03B8F5 */  jal   func_800EE3D4
/* B83758 8010C5B8 00000000 */   nop   
/* B8375C 8010C5BC 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B83760 8010C5C0 26217FFF */  addiu $at, $s1, 0x7fff
/* B83764 8010C5C4 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B83768 8010C5C8 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B8376C 8010C5CC A5000000 */  sh    $zero, ($t0)
/* B83770 8010C5D0 8E1862B8 */  lw    $t8, 0x62b8($s0)
/* B83774 8010C5D4 850F0000 */  lh    $t7, ($t0)
/* B83778 8010C5D8 3C010001 */  lui   $at, 1
/* B8377C 8010C5DC 00320821 */  addu  $at, $at, $s2
/* B83780 8010C5E0 24190001 */  li    $t9, 1
/* B83784 8010C5E4 A30F0002 */  sb    $t7, 2($t8)
/* B83788 8010C5E8 0C041A6C */  jal   func_801069B0
/* B8378C 8010C5EC A43904C6 */   sh    $t9, 0x4c6($at)
/* B83790 8010C5F0 240E0001 */  li    $t6, 1
/* B83794 8010C5F4 3C018015 */  lui   $at, %hi(D_80153CDC) # $at, 0x8015
/* B83798 8010C5F8 A42E3CDC */  sh    $t6, %lo(D_80153CDC)($at)
/* B8379C 8010C5FC 92026304 */  lbu   $v0, 0x6304($s0)
/* B837A0 8010C600 240A0003 */  li    $t2, 3
/* B837A4 8010C604 3C018015 */  lui   $at, %hi(D_80153CD8) # $at, 0x8015
/* B837A8 8010C608 A42A3CD8 */  sh    $t2, %lo(D_80153CD8)($at)
/* B837AC 8010C60C 24010009 */  li    $at, 9
/* B837B0 8010C610 5441002E */  bnel  $v0, $at, .L8010C6CC
/* B837B4 8010C614 2401000A */   li    $at, 10
/* B837B8 8010C618 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B837BC 8010C61C 10400008 */  beqz  $v0, .L8010C640
/* B837C0 8010C620 24010001 */   li    $at, 1
/* B837C4 8010C624 10410006 */  beq   $v0, $at, .L8010C640
/* B837C8 8010C628 2401002C */   li    $at, 44
/* B837CC 8010C62C 10410004 */  beq   $v0, $at, .L8010C640
/* B837D0 8010C630 24010030 */   li    $at, 48
/* B837D4 8010C634 10410002 */  beq   $v0, $at, .L8010C640
/* B837D8 8010C638 28410022 */   slti  $at, $v0, 0x22
/* B837DC 8010C63C 14200014 */  bnez  $at, .L8010C690
.L8010C640:
/* B837E0 8010C640 24010001 */   li    $at, 1
/* B837E4 8010C644 10410002 */  beq   $v0, $at, .L8010C650
/* B837E8 8010C648 24010030 */   li    $at, 48
/* B837EC 8010C64C 14410008 */  bne   $v0, $at, .L8010C670
.L8010C650:
/* B837F0 8010C650 3C048015 */   lui   $a0, %hi(D_8014B31C) # $a0, 0x8015
/* B837F4 8010C654 9484B31C */  lhu   $a0, %lo(D_8014B31C)($a0)
/* B837F8 8010C658 3401C000 */  li    $at, 49152
/* B837FC 8010C65C 00812021 */  addu  $a0, $a0, $at
/* B83800 8010C660 0C03B301 */  jal   func_800ECC04
/* B83804 8010C664 3084FFFF */   andi  $a0, $a0, 0xffff
/* B83808 8010C668 10000014 */  b     .L8010C6BC
/* B8380C 8010C66C 2419000C */   li    $t9, 12
.L8010C670:
/* B83810 8010C670 3C048015 */  lui   $a0, %hi(D_80154464) # $a0, 0x8015
/* B83814 8010C674 0C00084C */  jal   osSyncPrintf
/* B83818 8010C678 24844464 */   addiu $a0, %lo(D_80154464) # addiu $a0, $a0, 0x4464
/* B8381C 8010C67C 3C048015 */  lui   $a0, %hi(D_8014B31C) # $a0, 0x8015
/* B83820 8010C680 0C03B301 */  jal   func_800ECC04
/* B83824 8010C684 9484B31C */   lhu   $a0, %lo(D_8014B31C)($a0)
/* B83828 8010C688 1000000C */  b     .L8010C6BC
/* B8382C 8010C68C 2419000C */   li    $t9, 12
.L8010C690:
/* B83830 8010C690 3C048015 */  lui   $a0, %hi(D_80154470) # $a0, 0x8015
/* B83834 8010C694 0C00084C */  jal   osSyncPrintf
/* B83838 8010C698 24844470 */   addiu $a0, %lo(D_80154470) # addiu $a0, $a0, 0x4470
/* B8383C 8010C69C 960F63F0 */  lhu   $t7, 0x63f0($s0)
/* B83840 8010C6A0 24180001 */  li    $t8, 1
/* B83844 8010C6A4 34018000 */  li    $at, 32768
/* B83848 8010C6A8 01F82004 */  sllv  $a0, $t8, $t7
/* B8384C 8010C6AC 00812021 */  addu  $a0, $a0, $at
/* B83850 8010C6B0 0C03B301 */  jal   func_800ECC04
/* B83854 8010C6B4 3084FFFF */   andi  $a0, $a0, 0xffff
/* B83858 8010C6B8 2419000C */  li    $t9, 12
.L8010C6BC:
/* B8385C 8010C6BC 26217FFF */  addiu $at, $s1, 0x7fff
/* B83860 8010C6C0 10000019 */  b     .L8010C728
/* B83864 8010C6C4 A0396305 */   sb    $t9, 0x6305($at)
/* B83868 8010C6C8 2401000A */  li    $at, 10
.L8010C6CC:
/* B8386C 8010C6CC 14410006 */  bne   $v0, $at, .L8010C6E8
/* B83870 8010C6D0 240E0014 */   li    $t6, 20
/* B83874 8010C6D4 26217FFF */  addiu $at, $s1, 0x7fff
/* B83878 8010C6D8 24180018 */  li    $t8, 24
/* B8387C 8010C6DC A02E63E8 */  sb    $t6, 0x63e8($at)
/* B83880 8010C6E0 10000011 */  b     .L8010C728
/* B83884 8010C6E4 A0386305 */   sb    $t8, 0x6305($at)
.L8010C6E8:
/* B83888 8010C6E8 960F63F0 */  lhu   $t7, 0x63f0($s0)
/* B8388C 8010C6EC 240E0001 */  li    $t6, 1
/* B83890 8010C6F0 34018000 */  li    $at, 32768
/* B83894 8010C6F4 25F90011 */  addiu $t9, $t7, 0x11
/* B83898 8010C6F8 032E2004 */  sllv  $a0, $t6, $t9
/* B8389C 8010C6FC 00812021 */  addu  $a0, $a0, $at
/* B838A0 8010C700 0C03B301 */  jal   func_800ECC04
/* B838A4 8010C704 3084FFFF */   andi  $a0, $a0, 0xffff
/* B838A8 8010C708 960563F0 */  lhu   $a1, 0x63f0($s0)
/* B838AC 8010C70C 3C048015 */  lui   $a0, %hi(D_801544AC) # $a0, 0x8015
/* B838B0 8010C710 248444AC */  addiu $a0, %lo(D_801544AC) # addiu $a0, $a0, 0x44ac
/* B838B4 8010C714 0C00084C */  jal   osSyncPrintf
/* B838B8 8010C718 24A5FFF1 */   addiu $a1, $a1, -0xf
/* B838BC 8010C71C 2418001B */  li    $t8, 27
/* B838C0 8010C720 26217FFF */  addiu $at, $s1, 0x7fff
/* B838C4 8010C724 A0386305 */  sb    $t8, 0x6305($at)
.L8010C728:
/* B838C8 8010C728 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B838CC 8010C72C 24010001 */  li    $at, 1
/* B838D0 8010C730 10410005 */  beq   $v0, $at, .L8010C748
/* B838D4 8010C734 24010030 */   li    $at, 48
/* B838D8 8010C738 10410003 */  beq   $v0, $at, .L8010C748
/* B838DC 8010C73C 02402025 */   move  $a0, $s2
/* B838E0 8010C740 0C0421AC */  jal   func_801086B0
/* B838E4 8010C744 27A50140 */   addiu $a1, $sp, 0x140
.L8010C748:
/* B838E8 8010C748 10000949 */  b     .L8010EC70
/* B838EC 8010C74C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010C750
/* B838F0 8010C750 0C03B8F5 */  jal   func_800EE3D4
/* B838F4 8010C754 00000000 */   nop   
/* B838F8 8010C758 26217FFF */  addiu $at, $s1, 0x7fff
/* B838FC 8010C75C AC2262B9 */  sw    $v0, 0x62b9($at)
/* B83900 8010C760 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B83904 8010C764 90E30002 */  lbu   $v1, 2($a3)
/* B83908 8010C768 10600029 */  beqz  $v1, .L8010C810
/* B8390C 8010C76C 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B83910 8010C770 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B83914 8010C774 3C048015 */  lui   $a0, %hi(D_801544C0) # $a0, 0x8015
/* B83918 8010C778 248444C0 */  addiu $a0, %lo(D_801544C0) # addiu $a0, $a0, 0x44c0
/* B8391C 8010C77C 85060000 */  lh    $a2, ($t0)
/* B83920 8010C780 0C00084C */  jal   osSyncPrintf
/* B83924 8010C784 00602825 */   move  $a1, $v1
/* B83928 8010C788 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B8392C 8010C78C 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B83930 8010C790 24010001 */  li    $at, 1
/* B83934 8010C794 90E40002 */  lbu   $a0, 2($a3)
/* B83938 8010C798 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B8393C 8010C79C 54810009 */  bnel  $a0, $at, .L8010C7C4
/* B83940 8010C7A0 850E0000 */   lh    $t6, ($t0)
/* B83944 8010C7A4 850F0000 */  lh    $t7, ($t0)
/* B83948 8010C7A8 24010008 */  li    $at, 8
/* B8394C 8010C7AC 55E10005 */  bnel  $t7, $at, .L8010C7C4
/* B83950 8010C7B0 850E0000 */   lh    $t6, ($t0)
/* B83954 8010C7B4 A5000000 */  sh    $zero, ($t0)
/* B83958 8010C7B8 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B8395C 8010C7BC 90E40002 */  lbu   $a0, 2($a3)
/* B83960 8010C7C0 850E0000 */  lh    $t6, ($t0)
.L8010C7C4:
/* B83964 8010C7C4 25D90001 */  addiu $t9, $t6, 1
/* B83968 8010C7C8 54990012 */  bnel  $a0, $t9, .L8010C814
/* B8396C 8010C7CC 90F80001 */   lbu   $t8, 1($a3)
/* B83970 8010C7D0 90E20000 */  lbu   $v0, ($a3)
/* B83974 8010C7D4 3C018015 */  lui   $at, %hi(D_8015394B)
/* B83978 8010C7D8 00240821 */  addu  $at, $at, $a0
/* B8397C 8010C7DC A022394B */  sb    $v0, %lo(D_8015394B)($at)
/* B83980 8010C7E0 26217FFF */  addiu $at, $s1, 0x7fff
/* B83984 8010C7E4 A0226411 */  sb    $v0, 0x6411($at)
/* B83988 8010C7E8 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B8398C 8010C7EC 3C018015 */  lui   $at, %hi(D_8015394C)
/* B83990 8010C7F0 241800FF */  li    $t8, 255
/* B83994 8010C7F4 91EE0002 */  lbu   $t6, 2($t7)
/* B83998 8010C7F8 002E0821 */  addu  $at, $at, $t6
/* B8399C 8010C7FC A038394C */  sb    $t8, %lo(D_8015394C)($at)
/* B839A0 8010C800 85190000 */  lh    $t9, ($t0)
/* B839A4 8010C804 272F0001 */  addiu $t7, $t9, 1
/* B839A8 8010C808 A50F0000 */  sh    $t7, ($t0)
/* B839AC 8010C80C 8E0762B8 */  lw    $a3, 0x62b8($s0)
.L8010C810:
/* B839B0 8010C810 90F80001 */  lbu   $t8, 1($a3)
.L8010C814:
/* B839B4 8010C814 26217FFF */  addiu $at, $s1, 0x7fff
/* B839B8 8010C818 A43863ED */  sh    $t8, 0x63ed($at)
/* B839BC 8010C81C 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B839C0 8010C820 91C40001 */  lbu   $a0, 1($t6)
/* B839C4 8010C824 2881000D */  slti  $at, $a0, 0xd
/* B839C8 8010C828 102000C7 */  beqz  $at, .L8010CB48
/* B839CC 8010C82C 00803025 */   move  $a2, $a0
/* B839D0 8010C830 2405000C */  li    $a1, 12
/* B839D4 8010C834 10A4000C */  beq   $a1, $a0, .L8010C868
/* B839D8 8010C838 0004C840 */   sll   $t9, $a0, 1
/* B839DC 8010C83C 3C0F8015 */  lui   $t7, %hi(D_8015396C)
/* B839E0 8010C840 01F97821 */  addu  $t7, $t7, $t9
/* B839E4 8010C844 85EF396C */  lh    $t7, %lo(D_8015396C)($t7)
/* B839E8 8010C848 3C0E8012 */  lui   $t6, %hi(D_80127138)
/* B839EC 8010C84C 3C198016 */  lui   $t9, %hi(gSaveContext+0xa4) # $t9, 0x8016
/* B839F0 8010C850 000FC080 */  sll   $t8, $t7, 2
/* B839F4 8010C854 01D87021 */  addu  $t6, $t6, $t8
/* B839F8 8010C858 8DCE7138 */  lw    $t6, %lo(D_80127138)($t6)
/* B839FC 8010C85C 8F39E704 */  lw    $t9, %lo(gSaveContext+0xa4)($t9)
/* B83A00 8010C860 01D97824 */  and   $t7, $t6, $t9
/* B83A04 8010C864 11E000A7 */  beqz  $t7, .L8010CB04
.L8010C868:
/* B83A08 8010C868 26217FFF */   addiu $at, $s1, 0x7fff
/* B83A0C 8010C86C A42463ED */  sh    $a0, 0x63ed($at)
/* B83A10 8010C870 A42463F3 */  sh    $a0, 0x63f3($at)
/* B83A14 8010C874 3C018015 */  lui   $at, %hi(D_8014B310) # $at, 0x8015
/* B83A18 8010C878 A424B310 */  sh    $a0, %lo(D_8014B310)($at)
/* B83A1C 8010C87C 26217FFF */  addiu $at, $s1, 0x7fff
/* B83A20 8010C880 2418000D */  li    $t8, 13
/* B83A24 8010C884 240E0014 */  li    $t6, 20
/* B83A28 8010C888 A0386305 */  sb    $t8, 0x6305($at)
/* B83A2C 8010C88C A02E63E8 */  sb    $t6, 0x63e8($at)
/* B83A30 8010C890 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B83A34 8010C894 24010030 */  li    $at, 48
/* B83A38 8010C898 54410037 */  bnel  $v0, $at, .L8010C978
/* B83A3C 8010C89C 24010028 */   li    $at, 40
/* B83A40 8010C8A0 8E1962B8 */  lw    $t9, 0x62b8($s0)
/* B83A44 8010C8A4 93260001 */  lbu   $a2, 1($t9)
/* B83A48 8010C8A8 28C10006 */  slti  $at, $a2, 6
/* B83A4C 8010C8AC 14200003 */  bnez  $at, .L8010C8BC
/* B83A50 8010C8B0 00000000 */   nop   
/* B83A54 8010C8B4 14A60012 */  bne   $a1, $a2, .L8010C900
/* B83A58 8010C8B8 00000000 */   nop   
.L8010C8BC:
/* B83A5C 8010C8BC 0C03B616 */  jal   func_800ED858
/* B83A60 8010C8C0 00002025 */   move  $a0, $zero
/* B83A64 8010C8C4 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B83A68 8010C8C8 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B83A6C 8010C8CC 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B83A70 8010C8D0 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B83A74 8010C8D4 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83A78 8010C8D8 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83A7C 8010C8DC AFAF0014 */  sw    $t7, 0x14($sp)
/* B83A80 8010C8E0 AFA70010 */  sw    $a3, 0x10($sp)
/* B83A84 8010C8E4 24044827 */  li    $a0, 18471
/* B83A88 8010C8E8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83A8C 8010C8EC 24060004 */   li    $a2, 4
/* B83A90 8010C8F0 24180009 */  li    $t8, 9
/* B83A94 8010C8F4 26217FFF */  addiu $at, $s1, 0x7fff
/* B83A98 8010C8F8 1000007E */  b     .L8010CAF4
/* B83A9C 8010C8FC A0386305 */   sb    $t8, 0x6305($at)
.L8010C900:
/* B83AA0 8010C900 3C048015 */  lui   $a0, %hi(D_801544D8) # $a0, 0x8015
/* B83AA4 8010C904 248444D8 */  addiu $a0, %lo(D_801544D8) # addiu $a0, $a0, 0x44d8
/* B83AA8 8010C908 0C00084C */  jal   osSyncPrintf
/* B83AAC 8010C90C 960563EC */   lhu   $a1, 0x63ec($s0)
/* B83AB0 8010C910 02402025 */  move  $a0, $s2
/* B83AB4 8010C914 0C042DC8 */  jal   func_8010B720
/* B83AB8 8010C918 2405086F */   li    $a1, 2159
/* B83ABC 8010C91C 26217FFF */  addiu $at, $s1, 0x7fff
/* B83AC0 8010C920 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B83AC4 8010C924 240E0011 */  li    $t6, 17
/* B83AC8 8010C928 24190003 */  li    $t9, 3
/* B83ACC 8010C92C 240F000A */  li    $t7, 10
/* B83AD0 8010C930 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B83AD4 8010C934 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B83AD8 8010C938 A02E6305 */  sb    $t6, 0x6305($at)
/* B83ADC 8010C93C A03962FE */  sb    $t9, 0x62fe($at)
/* B83AE0 8010C940 A02F63E8 */  sb    $t7, 0x63e8($at)
/* B83AE4 8010C944 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B83AE8 8010C948 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83AEC 8010C94C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83AF0 8010C950 AFB80014 */  sw    $t8, 0x14($sp)
/* B83AF4 8010C954 AFA70010 */  sw    $a3, 0x10($sp)
/* B83AF8 8010C958 24044807 */  li    $a0, 18439
/* B83AFC 8010C95C 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83B00 8010C960 24060004 */   li    $a2, 4
/* B83B04 8010C964 0C020978 */  jal   func_800825E0
/* B83B08 8010C968 24040001 */   li    $a0, 1
/* B83B0C 8010C96C 10000061 */  b     .L8010CAF4
/* B83B10 8010C970 00000000 */   nop   
/* B83B14 8010C974 24010028 */  li    $at, 40
.L8010C978:
/* B83B18 8010C978 54410037 */  bnel  $v0, $at, .L8010CA58
/* B83B1C 8010C97C 24010001 */   li    $at, 1
/* B83B20 8010C980 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B83B24 8010C984 91D90001 */  lbu   $t9, 1($t6)
/* B83B28 8010C988 2B21000C */  slti  $at, $t9, 0xc
/* B83B2C 8010C98C 10200014 */  beqz  $at, .L8010C9E0
/* B83B30 8010C990 00000000 */   nop   
/* B83B34 8010C994 0C03B616 */  jal   func_800ED858
/* B83B38 8010C998 00002025 */   move  $a0, $zero
/* B83B3C 8010C99C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B83B40 8010C9A0 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B83B44 8010C9A4 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B83B48 8010C9A8 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B83B4C 8010C9AC 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83B50 8010C9B0 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83B54 8010C9B4 AFAF0014 */  sw    $t7, 0x14($sp)
/* B83B58 8010C9B8 AFA70010 */  sw    $a3, 0x10($sp)
/* B83B5C 8010C9BC 24044827 */  li    $a0, 18471
/* B83B60 8010C9C0 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83B64 8010C9C4 24060004 */   li    $a2, 4
/* B83B68 8010C9C8 2418000A */  li    $t8, 10
/* B83B6C 8010C9CC 26217FFF */  addiu $at, $s1, 0x7fff
/* B83B70 8010C9D0 240E000E */  li    $t6, 14
/* B83B74 8010C9D4 A03863E8 */  sb    $t8, 0x63e8($at)
/* B83B78 8010C9D8 10000046 */  b     .L8010CAF4
/* B83B7C 8010C9DC A02E6305 */   sb    $t6, 0x6305($at)
.L8010C9E0:
/* B83B80 8010C9E0 3C048015 */  lui   $a0, %hi(D_801544F8) # $a0, 0x8015
/* B83B84 8010C9E4 248444F8 */  addiu $a0, %lo(D_801544F8) # addiu $a0, $a0, 0x44f8
/* B83B88 8010C9E8 0C00084C */  jal   osSyncPrintf
/* B83B8C 8010C9EC 960563EC */   lhu   $a1, 0x63ec($s0)
/* B83B90 8010C9F0 02402025 */  move  $a0, $s2
/* B83B94 8010C9F4 0C042DC8 */  jal   func_8010B720
/* B83B98 8010C9F8 2405086F */   li    $a1, 2159
/* B83B9C 8010C9FC 26217FFF */  addiu $at, $s1, 0x7fff
/* B83BA0 8010CA00 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B83BA4 8010CA04 24190011 */  li    $t9, 17
/* B83BA8 8010CA08 240F0003 */  li    $t7, 3
/* B83BAC 8010CA0C 2418000A */  li    $t8, 10
/* B83BB0 8010CA10 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B83BB4 8010CA14 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B83BB8 8010CA18 A0396305 */  sb    $t9, 0x6305($at)
/* B83BBC 8010CA1C A02F62FE */  sb    $t7, 0x62fe($at)
/* B83BC0 8010CA20 A03863E8 */  sb    $t8, 0x63e8($at)
/* B83BC4 8010CA24 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B83BC8 8010CA28 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83BCC 8010CA2C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83BD0 8010CA30 AFAE0014 */  sw    $t6, 0x14($sp)
/* B83BD4 8010CA34 AFA70010 */  sw    $a3, 0x10($sp)
/* B83BD8 8010CA38 24044807 */  li    $a0, 18439
/* B83BDC 8010CA3C 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83BE0 8010CA40 24060004 */   li    $a2, 4
/* B83BE4 8010CA44 0C020978 */  jal   func_800825E0
/* B83BE8 8010CA48 24040001 */   li    $a0, 1
/* B83BEC 8010CA4C 10000029 */  b     .L8010CAF4
/* B83BF0 8010CA50 00000000 */   nop   
/* B83BF4 8010CA54 24010001 */  li    $at, 1
.L8010CA58:
/* B83BF8 8010CA58 1441001B */  bne   $v0, $at, .L8010CAC8
/* B83BFC 8010CA5C 3C048015 */   lui   $a0, %hi(D_80154518) # $a0, 0x8015
/* B83C00 8010CA60 24844518 */  addiu $a0, %lo(D_80154518) # addiu $a0, $a0, 0x4518
/* B83C04 8010CA64 0C00084C */  jal   osSyncPrintf
/* B83C08 8010CA68 960563EC */   lhu   $a1, 0x63ec($s0)
/* B83C0C 8010CA6C 02402025 */  move  $a0, $s2
/* B83C10 8010CA70 0C042DC8 */  jal   func_8010B720
/* B83C14 8010CA74 2405086F */   li    $a1, 2159
/* B83C18 8010CA78 26217FFF */  addiu $at, $s1, 0x7fff
/* B83C1C 8010CA7C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B83C20 8010CA80 24190011 */  li    $t9, 17
/* B83C24 8010CA84 240F0003 */  li    $t7, 3
/* B83C28 8010CA88 2418000A */  li    $t8, 10
/* B83C2C 8010CA8C 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B83C30 8010CA90 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B83C34 8010CA94 A0396305 */  sb    $t9, 0x6305($at)
/* B83C38 8010CA98 A02F62FE */  sb    $t7, 0x62fe($at)
/* B83C3C 8010CA9C A03863E8 */  sb    $t8, 0x63e8($at)
/* B83C40 8010CAA0 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B83C44 8010CAA4 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83C48 8010CAA8 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83C4C 8010CAAC AFAE0014 */  sw    $t6, 0x14($sp)
/* B83C50 8010CAB0 AFA70010 */  sw    $a3, 0x10($sp)
/* B83C54 8010CAB4 24044807 */  li    $a0, 18439
/* B83C58 8010CAB8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83C5C 8010CABC 24060004 */   li    $a2, 4
/* B83C60 8010CAC0 1000000C */  b     .L8010CAF4
/* B83C64 8010CAC4 00000000 */   nop   
.L8010CAC8:
/* B83C68 8010CAC8 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B83C6C 8010CACC 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B83C70 8010CAD0 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B83C74 8010CAD4 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B83C78 8010CAD8 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83C7C 8010CADC 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83C80 8010CAE0 AFB90014 */  sw    $t9, 0x14($sp)
/* B83C84 8010CAE4 AFA70010 */  sw    $a3, 0x10($sp)
/* B83C88 8010CAE8 24044807 */  li    $a0, 18439
/* B83C8C 8010CAEC 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83C90 8010CAF0 24060004 */   li    $a2, 4
.L8010CAF4:
/* B83C94 8010CAF4 0C020978 */  jal   func_800825E0
/* B83C98 8010CAF8 24040001 */   li    $a0, 1
/* B83C9C 8010CAFC 10000036 */  b     .L8010CBD8
/* B83CA0 8010CB00 960263F0 */   lhu   $v0, 0x63f0($s0)
.L8010CB04:
/* B83CA4 8010CB04 0C03B616 */  jal   func_800ED858
/* B83CA8 8010CB08 00002025 */   move  $a0, $zero
/* B83CAC 8010CB0C 3C0F8013 */  lui   $t7, %hi(D_801333E0)
/* B83CB0 8010CB10 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B83CB4 8010CB14 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B83CB8 8010CB18 25E733E0 */  addiu $a3, $t7, %lo(D_801333E0)
/* B83CBC 8010CB1C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83CC0 8010CB20 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83CC4 8010CB24 AFA70010 */  sw    $a3, 0x10($sp)
/* B83CC8 8010CB28 AFB80014 */  sw    $t8, 0x14($sp)
/* B83CCC 8010CB2C 24044827 */  li    $a0, 18471
/* B83CD0 8010CB30 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83CD4 8010CB34 24060004 */   li    $a2, 4
/* B83CD8 8010CB38 240E0009 */  li    $t6, 9
/* B83CDC 8010CB3C 26217FFF */  addiu $at, $s1, 0x7fff
/* B83CE0 8010CB40 10000024 */  b     .L8010CBD4
/* B83CE4 8010CB44 A02E6305 */   sb    $t6, 0x6305($at)
.L8010CB48:
/* B83CE8 8010CB48 240100FF */  li    $at, 255
/* B83CEC 8010CB4C 54C10015 */  bnel  $a2, $at, .L8010CBA4
/* B83CF0 8010CB50 96590020 */   lhu   $t9, 0x20($s2)
/* B83CF4 8010CB54 0C03B616 */  jal   func_800ED858
/* B83CF8 8010CB58 00002025 */   move  $a0, $zero
/* B83CFC 8010CB5C 3C198013 */  lui   $t9, %hi(D_801333E0)
/* B83D00 8010CB60 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B83D04 8010CB64 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B83D08 8010CB68 272733E0 */  addiu $a3, $t9, %lo(D_801333E0)
/* B83D0C 8010CB6C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83D10 8010CB70 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83D14 8010CB74 AFA70010 */  sw    $a3, 0x10($sp)
/* B83D18 8010CB78 AFAF0014 */  sw    $t7, 0x14($sp)
/* B83D1C 8010CB7C 24044827 */  li    $a0, 18471
/* B83D20 8010CB80 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83D24 8010CB84 24060004 */   li    $a2, 4
/* B83D28 8010CB88 2418000A */  li    $t8, 10
/* B83D2C 8010CB8C 26217FFF */  addiu $at, $s1, 0x7fff
/* B83D30 8010CB90 240E000E */  li    $t6, 14
/* B83D34 8010CB94 A03863E8 */  sb    $t8, 0x63e8($at)
/* B83D38 8010CB98 1000000E */  b     .L8010CBD4
/* B83D3C 8010CB9C A02E6305 */   sb    $t6, 0x6305($at)
/* B83D40 8010CBA0 96590020 */  lhu   $t9, 0x20($s2)
.L8010CBA4:
/* B83D44 8010CBA4 2401BFFF */  li    $at, -16385
/* B83D48 8010CBA8 03217827 */  nor   $t7, $t9, $at
/* B83D4C 8010CBAC 55E0000A */  bnezl $t7, .L8010CBD8
/* B83D50 8010CBB0 960263F0 */   lhu   $v0, 0x63f0($s0)
/* B83D54 8010CBB4 0C03B616 */  jal   func_800ED858
/* B83D58 8010CBB8 00002025 */   move  $a0, $zero
/* B83D5C 8010CBBC 3C010001 */  lui   $at, 1
/* B83D60 8010CBC0 00320821 */  addu  $at, $at, $s2
/* B83D64 8010CBC4 24180004 */  li    $t8, 4
/* B83D68 8010CBC8 A43804C6 */  sh    $t8, 0x4c6($at)
/* B83D6C 8010CBCC 0C041B33 */  jal   func_80106CCC
/* B83D70 8010CBD0 02402025 */   move  $a0, $s2
.L8010CBD4:
/* B83D74 8010CBD4 960263F0 */  lhu   $v0, 0x63f0($s0)
.L8010CBD8:
/* B83D78 8010CBD8 24010001 */  li    $at, 1
/* B83D7C 8010CBDC 10410005 */  beq   $v0, $at, .L8010CBF4
/* B83D80 8010CBE0 24010030 */   li    $at, 48
/* B83D84 8010CBE4 10410003 */  beq   $v0, $at, .L8010CBF4
/* B83D88 8010CBE8 02402025 */   move  $a0, $s2
/* B83D8C 8010CBEC 0C0421AC */  jal   func_801086B0
/* B83D90 8010CBF0 27A50140 */   addiu $a1, $sp, 0x140
.L8010CBF4:
/* B83D94 8010CBF4 1000081E */  b     .L8010EC70
/* B83D98 8010CBF8 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010CBFC
/* B83D9C 8010CBFC 3C0E8015 */  lui   $t6, %hi(D_80153CDC) # $t6, 0x8015
/* B83DA0 8010CC00 85CE3CDC */  lh    $t6, %lo(D_80153CDC)($t6)
/* B83DA4 8010CC04 3C0F8015 */  lui   $t7, %hi(D_80153CA8) # $t7, 0x8015
/* B83DA8 8010CC08 25EF3CA8 */  addiu $t7, %lo(D_80153CA8) # addiu $t7, $t7, 0x3ca8
/* B83DAC 8010CC0C 000EC880 */  sll   $t9, $t6, 2
/* B83DB0 8010CC10 032EC823 */  subu  $t9, $t9, $t6
/* B83DB4 8010CC14 0019C840 */  sll   $t9, $t9, 1
/* B83DB8 8010CC18 032F2821 */  addu  $a1, $t9, $t7
/* B83DBC 8010CC1C 3C068017 */  lui   $a2, %hi(D_801759A8) # $a2, 0x8017
/* B83DC0 8010CC20 84C659A8 */  lh    $a2, %lo(D_801759A8)($a2)
/* B83DC4 8010CC24 84B80000 */  lh    $t8, ($a1)
/* B83DC8 8010CC28 AFB90088 */  sw    $t9, 0x88($sp)
/* B83DCC 8010CC2C 00D81823 */  subu  $v1, $a2, $t8
/* B83DD0 8010CC30 AFB80080 */  sw    $t8, 0x80($sp)
/* B83DD4 8010CC34 04600003 */  bltz  $v1, .L8010CC44
/* B83DD8 8010CC38 03007025 */   move  $t6, $t8
/* B83DDC 8010CC3C 10000002 */  b     .L8010CC48
/* B83DE0 8010CC40 00601025 */   move  $v0, $v1
.L8010CC44:
/* B83DE4 8010CC44 00031023 */  negu  $v0, $v1
.L8010CC48:
/* B83DE8 8010CC48 3C0A8015 */  lui   $t2, %hi(D_80153CD8) # $t2, 0x8015
/* B83DEC 8010CC4C 854A3CD8 */  lh    $t2, %lo(D_80153CD8)($t2)
/* B83DF0 8010CC50 3C078017 */  lui   $a3, %hi(D_801759AC) # $a3, 0x8017
/* B83DF4 8010CC54 84E759AC */  lh    $a3, %lo(D_801759AC)($a3)
/* B83DF8 8010CC58 004A001A */  div   $zero, $v0, $t2
/* B83DFC 8010CC5C 84B90002 */  lh    $t9, 2($a1)
/* B83E00 8010CC60 00004012 */  mflo  $t0
/* B83E04 8010CC64 00084400 */  sll   $t0, $t0, 0x10
/* B83E08 8010CC68 15400002 */  bnez  $t2, .L8010CC74
/* B83E0C 8010CC6C 00000000 */   nop   
/* B83E10 8010CC70 0007000D */  break 7
.L8010CC74:
/* B83E14 8010CC74 2401FFFF */  li    $at, -1
/* B83E18 8010CC78 15410004 */  bne   $t2, $at, .L8010CC8C
/* B83E1C 8010CC7C 3C018000 */   lui   $at, 0x8000
/* B83E20 8010CC80 14410002 */  bne   $v0, $at, .L8010CC8C
/* B83E24 8010CC84 00000000 */   nop   
/* B83E28 8010CC88 0006000D */  break 6
.L8010CC8C:
/* B83E2C 8010CC8C 00F91823 */  subu  $v1, $a3, $t9
/* B83E30 8010CC90 00084403 */  sra   $t0, $t0, 0x10
/* B83E34 8010CC94 AFB90078 */  sw    $t9, 0x78($sp)
/* B83E38 8010CC98 04600003 */  bltz  $v1, .L8010CCA8
/* B83E3C 8010CC9C 03207825 */   move  $t7, $t9
/* B83E40 8010CCA0 10000002 */  b     .L8010CCAC
/* B83E44 8010CCA4 00601025 */   move  $v0, $v1
.L8010CCA8:
/* B83E48 8010CCA8 00031023 */  negu  $v0, $v1
.L8010CCAC:
/* B83E4C 8010CCAC 004A001A */  div   $zero, $v0, $t2
/* B83E50 8010CCB0 3C098017 */  lui   $t1, %hi(D_801759AA) # $t1, 0x8017
/* B83E54 8010CCB4 852959AA */  lh    $t1, %lo(D_801759AA)($t1)
/* B83E58 8010CCB8 84AB0004 */  lh    $t3, 4($a1)
/* B83E5C 8010CCBC 00002012 */  mflo  $a0
/* B83E60 8010CCC0 00042400 */  sll   $a0, $a0, 0x10
/* B83E64 8010CCC4 15400002 */  bnez  $t2, .L8010CCD0
/* B83E68 8010CCC8 00000000 */   nop   
/* B83E6C 8010CCCC 0007000D */  break 7
.L8010CCD0:
/* B83E70 8010CCD0 2401FFFF */  li    $at, -1
/* B83E74 8010CCD4 15410004 */  bne   $t2, $at, .L8010CCE8
/* B83E78 8010CCD8 3C018000 */   lui   $at, 0x8000
/* B83E7C 8010CCDC 14410002 */  bne   $v0, $at, .L8010CCE8
/* B83E80 8010CCE0 00000000 */   nop   
/* B83E84 8010CCE4 0006000D */  break 6
.L8010CCE8:
/* B83E88 8010CCE8 012B1823 */  subu  $v1, $t1, $t3
/* B83E8C 8010CCEC 04600003 */  bltz  $v1, .L8010CCFC
/* B83E90 8010CCF0 00042403 */   sra   $a0, $a0, 0x10
/* B83E94 8010CCF4 10000002 */  b     .L8010CD00
/* B83E98 8010CCF8 00601025 */   move  $v0, $v1
.L8010CCFC:
/* B83E9C 8010CCFC 00031023 */  negu  $v0, $v1
.L8010CD00:
/* B83EA0 8010CD00 8FB80080 */  lw    $t8, 0x80($sp)
/* B83EA4 8010CD04 00D8082A */  slt   $at, $a2, $t8
/* B83EA8 8010CD08 54200006 */  bnezl $at, .L8010CD24
/* B83EAC 8010CD0C 00C8C821 */   addu  $t9, $a2, $t0
/* B83EB0 8010CD10 00C87023 */  subu  $t6, $a2, $t0
/* B83EB4 8010CD14 3C018017 */  lui   $at, %hi(D_801759A8) # $at, 0x8017
/* B83EB8 8010CD18 10000004 */  b     .L8010CD2C
/* B83EBC 8010CD1C A42E59A8 */   sh    $t6, %lo(D_801759A8)($at)
/* B83EC0 8010CD20 00C8C821 */  addu  $t9, $a2, $t0
.L8010CD24:
/* B83EC4 8010CD24 3C018017 */  lui   $at, %hi(D_801759A8) # $at, 0x8017
/* B83EC8 8010CD28 A43959A8 */  sh    $t9, %lo(D_801759A8)($at)
.L8010CD2C:
/* B83ECC 8010CD2C 8FAF0078 */  lw    $t7, 0x78($sp)
/* B83ED0 8010CD30 00EF082A */  slt   $at, $a3, $t7
/* B83ED4 8010CD34 54200006 */  bnezl $at, .L8010CD50
/* B83ED8 8010CD38 00E47021 */   addu  $t6, $a3, $a0
/* B83EDC 8010CD3C 00E4C023 */  subu  $t8, $a3, $a0
/* B83EE0 8010CD40 3C018017 */  lui   $at, %hi(D_801759AC) # $at, 0x8017
/* B83EE4 8010CD44 10000004 */  b     .L8010CD58
/* B83EE8 8010CD48 A43859AC */   sh    $t8, %lo(D_801759AC)($at)
/* B83EEC 8010CD4C 00E47021 */  addu  $t6, $a3, $a0
.L8010CD50:
/* B83EF0 8010CD50 3C018017 */  lui   $at, %hi(D_801759AC) # $at, 0x8017
/* B83EF4 8010CD54 A42E59AC */  sh    $t6, %lo(D_801759AC)($at)
.L8010CD58:
/* B83EF8 8010CD58 012B082A */  slt   $at, $t1, $t3
/* B83EFC 8010CD5C 14200013 */  bnez  $at, .L8010CDAC
/* B83F00 8010CD60 00000000 */   nop   
/* B83F04 8010CD64 004A001A */  div   $zero, $v0, $t2
/* B83F08 8010CD68 15400002 */  bnez  $t2, .L8010CD74
/* B83F0C 8010CD6C 00000000 */   nop   
/* B83F10 8010CD70 0007000D */  break 7
.L8010CD74:
/* B83F14 8010CD74 2401FFFF */  li    $at, -1
/* B83F18 8010CD78 15410004 */  bne   $t2, $at, .L8010CD8C
/* B83F1C 8010CD7C 3C018000 */   lui   $at, 0x8000
/* B83F20 8010CD80 14410002 */  bne   $v0, $at, .L8010CD8C
/* B83F24 8010CD84 00000000 */   nop   
/* B83F28 8010CD88 0006000D */  break 6
.L8010CD8C:
/* B83F2C 8010CD8C 0000C812 */  mflo  $t9
/* B83F30 8010CD90 00197C00 */  sll   $t7, $t9, 0x10
/* B83F34 8010CD94 000FC403 */  sra   $t8, $t7, 0x10
/* B83F38 8010CD98 01387023 */  subu  $t6, $t1, $t8
/* B83F3C 8010CD9C 3C018017 */  lui   $at, %hi(D_801759AA) # $at, 0x8017
/* B83F40 8010CDA0 A42E59AA */  sh    $t6, %lo(D_801759AA)($at)
/* B83F44 8010CDA4 10000012 */  b     .L8010CDF0
/* B83F48 8010CDA8 AFAB0070 */   sw    $t3, 0x70($sp)
.L8010CDAC:
/* B83F4C 8010CDAC 004A001A */  div   $zero, $v0, $t2
/* B83F50 8010CDB0 15400002 */  bnez  $t2, .L8010CDBC
/* B83F54 8010CDB4 00000000 */   nop   
/* B83F58 8010CDB8 0007000D */  break 7
.L8010CDBC:
/* B83F5C 8010CDBC 2401FFFF */  li    $at, -1
/* B83F60 8010CDC0 15410004 */  bne   $t2, $at, .L8010CDD4
/* B83F64 8010CDC4 3C018000 */   lui   $at, 0x8000
/* B83F68 8010CDC8 14410002 */  bne   $v0, $at, .L8010CDD4
/* B83F6C 8010CDCC 00000000 */   nop   
/* B83F70 8010CDD0 0006000D */  break 6
.L8010CDD4:
/* B83F74 8010CDD4 0000C812 */  mflo  $t9
/* B83F78 8010CDD8 00197C00 */  sll   $t7, $t9, 0x10
/* B83F7C 8010CDDC 000FC403 */  sra   $t8, $t7, 0x10
/* B83F80 8010CDE0 01387021 */  addu  $t6, $t1, $t8
/* B83F84 8010CDE4 3C018017 */  lui   $at, %hi(D_801759AA) # $at, 0x8017
/* B83F88 8010CDE8 A42E59AA */  sh    $t6, %lo(D_801759AA)($at)
/* B83F8C 8010CDEC AFAB0070 */  sw    $t3, 0x70($sp)
.L8010CDF0:
/* B83F90 8010CDF0 8FB90088 */  lw    $t9, 0x88($sp)
/* B83F94 8010CDF4 3C0F8015 */  lui   $t7, %hi(D_80153CB4) # $t7, 0x8015
/* B83F98 8010CDF8 25EF3CB4 */  addiu $t7, %lo(D_80153CB4) # addiu $t7, $t7, 0x3cb4
/* B83F9C 8010CDFC 3C068017 */  lui   $a2, %hi(D_801759AE) # $a2, 0x8017
/* B83FA0 8010CE00 032F2821 */  addu  $a1, $t9, $t7
/* B83FA4 8010CE04 84B80000 */  lh    $t8, ($a1)
/* B83FA8 8010CE08 84C659AE */  lh    $a2, %lo(D_801759AE)($a2)
/* B83FAC 8010CE0C AFB8007C */  sw    $t8, 0x7c($sp)
/* B83FB0 8010CE10 00D81823 */  subu  $v1, $a2, $t8
/* B83FB4 8010CE14 04600003 */  bltz  $v1, .L8010CE24
/* B83FB8 8010CE18 03007025 */   move  $t6, $t8
/* B83FBC 8010CE1C 10000002 */  b     .L8010CE28
/* B83FC0 8010CE20 00601025 */   move  $v0, $v1
.L8010CE24:
/* B83FC4 8010CE24 00031023 */  negu  $v0, $v1
.L8010CE28:
/* B83FC8 8010CE28 004A001A */  div   $zero, $v0, $t2
/* B83FCC 8010CE2C 3C078017 */  lui   $a3, %hi(D_801759B2) # $a3, 0x8017
/* B83FD0 8010CE30 84E759B2 */  lh    $a3, %lo(D_801759B2)($a3)
/* B83FD4 8010CE34 84B90002 */  lh    $t9, 2($a1)
/* B83FD8 8010CE38 00004012 */  mflo  $t0
/* B83FDC 8010CE3C 00084400 */  sll   $t0, $t0, 0x10
/* B83FE0 8010CE40 15400002 */  bnez  $t2, .L8010CE4C
/* B83FE4 8010CE44 00000000 */   nop   
/* B83FE8 8010CE48 0007000D */  break 7
.L8010CE4C:
/* B83FEC 8010CE4C 2401FFFF */  li    $at, -1
/* B83FF0 8010CE50 15410004 */  bne   $t2, $at, .L8010CE64
/* B83FF4 8010CE54 3C018000 */   lui   $at, 0x8000
/* B83FF8 8010CE58 14410002 */  bne   $v0, $at, .L8010CE64
/* B83FFC 8010CE5C 00000000 */   nop   
/* B84000 8010CE60 0006000D */  break 6
.L8010CE64:
/* B84004 8010CE64 00F91823 */  subu  $v1, $a3, $t9
/* B84008 8010CE68 00084403 */  sra   $t0, $t0, 0x10
/* B8400C 8010CE6C AFB9006C */  sw    $t9, 0x6c($sp)
/* B84010 8010CE70 04600003 */  bltz  $v1, .L8010CE80
/* B84014 8010CE74 03207825 */   move  $t7, $t9
/* B84018 8010CE78 10000002 */  b     .L8010CE84
/* B8401C 8010CE7C 00601025 */   move  $v0, $v1
.L8010CE80:
/* B84020 8010CE80 00031023 */  negu  $v0, $v1
.L8010CE84:
/* B84024 8010CE84 004A001A */  div   $zero, $v0, $t2
/* B84028 8010CE88 3C098017 */  lui   $t1, %hi(D_801759B0) # $t1, 0x8017
/* B8402C 8010CE8C 852959B0 */  lh    $t1, %lo(D_801759B0)($t1)
/* B84030 8010CE90 84AB0004 */  lh    $t3, 4($a1)
/* B84034 8010CE94 00002012 */  mflo  $a0
/* B84038 8010CE98 00042400 */  sll   $a0, $a0, 0x10
/* B8403C 8010CE9C 15400002 */  bnez  $t2, .L8010CEA8
/* B84040 8010CEA0 00000000 */   nop   
/* B84044 8010CEA4 0007000D */  break 7
.L8010CEA8:
/* B84048 8010CEA8 2401FFFF */  li    $at, -1
/* B8404C 8010CEAC 15410004 */  bne   $t2, $at, .L8010CEC0
/* B84050 8010CEB0 3C018000 */   lui   $at, 0x8000
/* B84054 8010CEB4 14410002 */  bne   $v0, $at, .L8010CEC0
/* B84058 8010CEB8 00000000 */   nop   
/* B8405C 8010CEBC 0006000D */  break 6
.L8010CEC0:
/* B84060 8010CEC0 012B1823 */  subu  $v1, $t1, $t3
/* B84064 8010CEC4 00042403 */  sra   $a0, $a0, 0x10
/* B84068 8010CEC8 04600003 */  bltz  $v1, .L8010CED8
/* B8406C 8010CECC AFAB0064 */   sw    $t3, 0x64($sp)
/* B84070 8010CED0 10000002 */  b     .L8010CEDC
/* B84074 8010CED4 00601025 */   move  $v0, $v1
.L8010CED8:
/* B84078 8010CED8 00031023 */  negu  $v0, $v1
.L8010CEDC:
/* B8407C 8010CEDC 3C0B8017 */  lui   $t3, %hi(D_801759BA) # $t3, 0x8017
/* B84080 8010CEE0 856B59BA */  lh    $t3, %lo(D_801759BA)($t3)
/* B84084 8010CEE4 8FB8007C */  lw    $t8, 0x7c($sp)
/* B84088 8010CEE8 0178082A */  slt   $at, $t3, $t8
/* B8408C 8010CEEC 54200006 */  bnezl $at, .L8010CF08
/* B84090 8010CEF0 00C8C821 */   addu  $t9, $a2, $t0
/* B84094 8010CEF4 00C87023 */  subu  $t6, $a2, $t0
/* B84098 8010CEF8 3C018017 */  lui   $at, %hi(D_801759AE) # $at, 0x8017
/* B8409C 8010CEFC 10000004 */  b     .L8010CF10
/* B840A0 8010CF00 A42E59AE */   sh    $t6, %lo(D_801759AE)($at)
/* B840A4 8010CF04 00C8C821 */  addu  $t9, $a2, $t0
.L8010CF08:
/* B840A8 8010CF08 3C018017 */  lui   $at, %hi(D_801759AE) # $at, 0x8017
/* B840AC 8010CF0C A43959AE */  sh    $t9, %lo(D_801759AE)($at)
.L8010CF10:
/* B840B0 8010CF10 3C0C8017 */  lui   $t4, %hi(D_801759BE) # $t4, 0x8017
/* B840B4 8010CF14 858C59BE */  lh    $t4, %lo(D_801759BE)($t4)
/* B840B8 8010CF18 8FAF006C */  lw    $t7, 0x6c($sp)
/* B840BC 8010CF1C 018F082A */  slt   $at, $t4, $t7
/* B840C0 8010CF20 54200006 */  bnezl $at, .L8010CF3C
/* B840C4 8010CF24 00E47021 */   addu  $t6, $a3, $a0
/* B840C8 8010CF28 00E4C023 */  subu  $t8, $a3, $a0
/* B840CC 8010CF2C 3C018017 */  lui   $at, %hi(D_801759B2) # $at, 0x8017
/* B840D0 8010CF30 10000004 */  b     .L8010CF44
/* B840D4 8010CF34 A43859B2 */   sh    $t8, %lo(D_801759B2)($at)
/* B840D8 8010CF38 00E47021 */  addu  $t6, $a3, $a0
.L8010CF3C:
/* B840DC 8010CF3C 3C018017 */  lui   $at, %hi(D_801759B2) # $at, 0x8017
/* B840E0 8010CF40 A42E59B2 */  sh    $t6, %lo(D_801759B2)($at)
.L8010CF44:
/* B840E4 8010CF44 3C0D8017 */  lui   $t5, %hi(D_801759BC) # $t5, 0x8017
/* B840E8 8010CF48 85AD59BC */  lh    $t5, %lo(D_801759BC)($t5)
/* B840EC 8010CF4C 8FB90064 */  lw    $t9, 0x64($sp)
/* B840F0 8010CF50 01B9082A */  slt   $at, $t5, $t9
/* B840F4 8010CF54 14200012 */  bnez  $at, .L8010CFA0
/* B840F8 8010CF58 00000000 */   nop   
/* B840FC 8010CF5C 004A001A */  div   $zero, $v0, $t2
/* B84100 8010CF60 15400002 */  bnez  $t2, .L8010CF6C
/* B84104 8010CF64 00000000 */   nop   
/* B84108 8010CF68 0007000D */  break 7
.L8010CF6C:
/* B8410C 8010CF6C 2401FFFF */  li    $at, -1
/* B84110 8010CF70 15410004 */  bne   $t2, $at, .L8010CF84
/* B84114 8010CF74 3C018000 */   lui   $at, 0x8000
/* B84118 8010CF78 14410002 */  bne   $v0, $at, .L8010CF84
/* B8411C 8010CF7C 00000000 */   nop   
/* B84120 8010CF80 0006000D */  break 6
.L8010CF84:
/* B84124 8010CF84 00007812 */  mflo  $t7
/* B84128 8010CF88 000FC400 */  sll   $t8, $t7, 0x10
/* B8412C 8010CF8C 00187403 */  sra   $t6, $t8, 0x10
/* B84130 8010CF90 012EC823 */  subu  $t9, $t1, $t6
/* B84134 8010CF94 3C018017 */  lui   $at, %hi(D_801759B0) # $at, 0x8017
/* B84138 8010CF98 10000011 */  b     .L8010CFE0
/* B8413C 8010CF9C A43959B0 */   sh    $t9, %lo(D_801759B0)($at)
.L8010CFA0:
/* B84140 8010CFA0 004A001A */  div   $zero, $v0, $t2
/* B84144 8010CFA4 15400002 */  bnez  $t2, .L8010CFB0
/* B84148 8010CFA8 00000000 */   nop   
/* B8414C 8010CFAC 0007000D */  break 7
.L8010CFB0:
/* B84150 8010CFB0 2401FFFF */  li    $at, -1
/* B84154 8010CFB4 15410004 */  bne   $t2, $at, .L8010CFC8
/* B84158 8010CFB8 3C018000 */   lui   $at, 0x8000
/* B8415C 8010CFBC 14410002 */  bne   $v0, $at, .L8010CFC8
/* B84160 8010CFC0 00000000 */   nop   
/* B84164 8010CFC4 0006000D */  break 6
.L8010CFC8:
/* B84168 8010CFC8 00007812 */  mflo  $t7
/* B8416C 8010CFCC 000FC400 */  sll   $t8, $t7, 0x10
/* B84170 8010CFD0 00187403 */  sra   $t6, $t8, 0x10
/* B84174 8010CFD4 012EC821 */  addu  $t9, $t1, $t6
/* B84178 8010CFD8 3C018017 */  lui   $at, %hi(D_801759B0) # $at, 0x8017
/* B8417C 8010CFDC A43959B0 */  sh    $t9, %lo(D_801759B0)($at)
.L8010CFE0:
/* B84180 8010CFE0 8FAF0088 */  lw    $t7, 0x88($sp)
/* B84184 8010CFE4 3C188015 */  lui   $t8, %hi(D_80153CC0) # $t8, 0x8015
/* B84188 8010CFE8 27183CC0 */  addiu $t8, %lo(D_80153CC0) # addiu $t8, $t8, 0x3cc0
/* B8418C 8010CFEC 3C068017 */  lui   $a2, %hi(D_801759B4) # $a2, 0x8017
/* B84190 8010CFF0 01F82821 */  addu  $a1, $t7, $t8
/* B84194 8010CFF4 84A20000 */  lh    $v0, ($a1)
/* B84198 8010CFF8 84C659B4 */  lh    $a2, %lo(D_801759B4)($a2)
/* B8419C 8010CFFC AFA2005C */  sw    $v0, 0x5c($sp)
/* B841A0 8010D000 00C21823 */  subu  $v1, $a2, $v0
/* B841A4 8010D004 04620004 */  bltzl $v1, .L8010D018
/* B841A8 8010D008 00031023 */   negu  $v0, $v1
/* B841AC 8010D00C 10000002 */  b     .L8010D018
/* B841B0 8010D010 00601025 */   move  $v0, $v1
/* B841B4 8010D014 00031023 */  negu  $v0, $v1
.L8010D018:
/* B841B8 8010D018 004A001A */  div   $zero, $v0, $t2
/* B841BC 8010D01C 3C078017 */  lui   $a3, %hi(D_801759B8) # $a3, 0x8017
/* B841C0 8010D020 84E759B8 */  lh    $a3, %lo(D_801759B8)($a3)
/* B841C4 8010D024 84A40002 */  lh    $a0, 2($a1)
/* B841C8 8010D028 00004012 */  mflo  $t0
/* B841CC 8010D02C 00084400 */  sll   $t0, $t0, 0x10
/* B841D0 8010D030 15400002 */  bnez  $t2, .L8010D03C
/* B841D4 8010D034 00000000 */   nop   
/* B841D8 8010D038 0007000D */  break 7
.L8010D03C:
/* B841DC 8010D03C 2401FFFF */  li    $at, -1
/* B841E0 8010D040 15410004 */  bne   $t2, $at, .L8010D054
/* B841E4 8010D044 3C018000 */   lui   $at, 0x8000
/* B841E8 8010D048 14410002 */  bne   $v0, $at, .L8010D054
/* B841EC 8010D04C 00000000 */   nop   
/* B841F0 8010D050 0006000D */  break 6
.L8010D054:
/* B841F4 8010D054 00E41823 */  subu  $v1, $a3, $a0
/* B841F8 8010D058 00084403 */  sra   $t0, $t0, 0x10
/* B841FC 8010D05C 04600003 */  bltz  $v1, .L8010D06C
/* B84200 8010D060 AFA40054 */   sw    $a0, 0x54($sp)
/* B84204 8010D064 10000002 */  b     .L8010D070
/* B84208 8010D068 00601025 */   move  $v0, $v1
.L8010D06C:
/* B8420C 8010D06C 00031023 */  negu  $v0, $v1
.L8010D070:
/* B84210 8010D070 004A001A */  div   $zero, $v0, $t2
/* B84214 8010D074 3C098017 */  lui   $t1, %hi(D_801759B6) # $t1, 0x8017
/* B84218 8010D078 852959B6 */  lh    $t1, %lo(D_801759B6)($t1)
/* B8421C 8010D07C 84BF0004 */  lh    $ra, 4($a1)
/* B84220 8010D080 00002012 */  mflo  $a0
/* B84224 8010D084 00042400 */  sll   $a0, $a0, 0x10
/* B84228 8010D088 15400002 */  bnez  $t2, .L8010D094
/* B8422C 8010D08C 00000000 */   nop   
/* B84230 8010D090 0007000D */  break 7
.L8010D094:
/* B84234 8010D094 2401FFFF */  li    $at, -1
/* B84238 8010D098 15410004 */  bne   $t2, $at, .L8010D0AC
/* B8423C 8010D09C 3C018000 */   lui   $at, 0x8000
/* B84240 8010D0A0 14410002 */  bne   $v0, $at, .L8010D0AC
/* B84244 8010D0A4 00000000 */   nop   
/* B84248 8010D0A8 0006000D */  break 6
.L8010D0AC:
/* B8424C 8010D0AC 013F1823 */  subu  $v1, $t1, $ra
/* B84250 8010D0B0 04600003 */  bltz  $v1, .L8010D0C0
/* B84254 8010D0B4 00042403 */   sra   $a0, $a0, 0x10
/* B84258 8010D0B8 10000002 */  b     .L8010D0C4
/* B8425C 8010D0BC 00601025 */   move  $v0, $v1
.L8010D0C0:
/* B84260 8010D0C0 00031023 */  negu  $v0, $v1
.L8010D0C4:
/* B84264 8010D0C4 8FAE005C */  lw    $t6, 0x5c($sp)
/* B84268 8010D0C8 00CE082A */  slt   $at, $a2, $t6
/* B8426C 8010D0CC 54200006 */  bnezl $at, .L8010D0E8
/* B84270 8010D0D0 00C87821 */   addu  $t7, $a2, $t0
/* B84274 8010D0D4 00C8C823 */  subu  $t9, $a2, $t0
/* B84278 8010D0D8 3C018017 */  lui   $at, %hi(D_801759B4) # $at, 0x8017
/* B8427C 8010D0DC 10000004 */  b     .L8010D0F0
/* B84280 8010D0E0 A43959B4 */   sh    $t9, %lo(D_801759B4)($at)
/* B84284 8010D0E4 00C87821 */  addu  $t7, $a2, $t0
.L8010D0E8:
/* B84288 8010D0E8 3C018017 */  lui   $at, %hi(D_801759B4) # $at, 0x8017
/* B8428C 8010D0EC A42F59B4 */  sh    $t7, %lo(D_801759B4)($at)
.L8010D0F0:
/* B84290 8010D0F0 8FB80054 */  lw    $t8, 0x54($sp)
/* B84294 8010D0F4 00F8082A */  slt   $at, $a3, $t8
/* B84298 8010D0F8 54200006 */  bnezl $at, .L8010D114
/* B8429C 8010D0FC 00E4C821 */   addu  $t9, $a3, $a0
/* B842A0 8010D100 00E47023 */  subu  $t6, $a3, $a0
/* B842A4 8010D104 3C018017 */  lui   $at, %hi(D_801759B8) # $at, 0x8017
/* B842A8 8010D108 10000004 */  b     .L8010D11C
/* B842AC 8010D10C A42E59B8 */   sh    $t6, %lo(D_801759B8)($at)
/* B842B0 8010D110 00E4C821 */  addu  $t9, $a3, $a0
.L8010D114:
/* B842B4 8010D114 3C018017 */  lui   $at, %hi(D_801759B8) # $at, 0x8017
/* B842B8 8010D118 A43959B8 */  sh    $t9, %lo(D_801759B8)($at)
.L8010D11C:
/* B842BC 8010D11C 013F082A */  slt   $at, $t1, $ra
/* B842C0 8010D120 14200012 */  bnez  $at, .L8010D16C
/* B842C4 8010D124 00000000 */   nop   
/* B842C8 8010D128 004A001A */  div   $zero, $v0, $t2
/* B842CC 8010D12C 15400002 */  bnez  $t2, .L8010D138
/* B842D0 8010D130 00000000 */   nop   
/* B842D4 8010D134 0007000D */  break 7
.L8010D138:
/* B842D8 8010D138 2401FFFF */  li    $at, -1
/* B842DC 8010D13C 15410004 */  bne   $t2, $at, .L8010D150
/* B842E0 8010D140 3C018000 */   lui   $at, 0x8000
/* B842E4 8010D144 14410002 */  bne   $v0, $at, .L8010D150
/* B842E8 8010D148 00000000 */   nop   
/* B842EC 8010D14C 0006000D */  break 6
.L8010D150:
/* B842F0 8010D150 00007812 */  mflo  $t7
/* B842F4 8010D154 000FC400 */  sll   $t8, $t7, 0x10
/* B842F8 8010D158 00187403 */  sra   $t6, $t8, 0x10
/* B842FC 8010D15C 012EC823 */  subu  $t9, $t1, $t6
/* B84300 8010D160 3C018017 */  lui   $at, %hi(D_801759B6) # $at, 0x8017
/* B84304 8010D164 10000011 */  b     .L8010D1AC
/* B84308 8010D168 A43959B6 */   sh    $t9, %lo(D_801759B6)($at)
.L8010D16C:
/* B8430C 8010D16C 004A001A */  div   $zero, $v0, $t2
/* B84310 8010D170 15400002 */  bnez  $t2, .L8010D17C
/* B84314 8010D174 00000000 */   nop   
/* B84318 8010D178 0007000D */  break 7
.L8010D17C:
/* B8431C 8010D17C 2401FFFF */  li    $at, -1
/* B84320 8010D180 15410004 */  bne   $t2, $at, .L8010D194
/* B84324 8010D184 3C018000 */   lui   $at, 0x8000
/* B84328 8010D188 14410002 */  bne   $v0, $at, .L8010D194
/* B8432C 8010D18C 00000000 */   nop   
/* B84330 8010D190 0006000D */  break 6
.L8010D194:
/* B84334 8010D194 00007812 */  mflo  $t7
/* B84338 8010D198 000FC400 */  sll   $t8, $t7, 0x10
/* B8433C 8010D19C 00187403 */  sra   $t6, $t8, 0x10
/* B84340 8010D1A0 012EC821 */  addu  $t9, $t1, $t6
/* B84344 8010D1A4 3C018017 */  lui   $at, %hi(D_801759B6) # $at, 0x8017
/* B84348 8010D1A8 A43959B6 */  sh    $t9, %lo(D_801759B6)($at)
.L8010D1AC:
/* B8434C 8010D1AC 8FAF0088 */  lw    $t7, 0x88($sp)
/* B84350 8010D1B0 3C188015 */  lui   $t8, %hi(D_80153CCC) # $t8, 0x8015
/* B84354 8010D1B4 27183CCC */  addiu $t8, %lo(D_80153CCC) # addiu $t8, $t8, 0x3ccc
/* B84358 8010D1B8 01F82821 */  addu  $a1, $t7, $t8
/* B8435C 8010D1BC 84A90000 */  lh    $t1, ($a1)
/* B84360 8010D1C0 01691823 */  subu  $v1, $t3, $t1
/* B84364 8010D1C4 04620004 */  bltzl $v1, .L8010D1D8
/* B84368 8010D1C8 00031023 */   negu  $v0, $v1
/* B8436C 8010D1CC 10000002 */  b     .L8010D1D8
/* B84370 8010D1D0 00601025 */   move  $v0, $v1
/* B84374 8010D1D4 00031023 */  negu  $v0, $v1
.L8010D1D8:
/* B84378 8010D1D8 004A001A */  div   $zero, $v0, $t2
/* B8437C 8010D1DC 84A60002 */  lh    $a2, 2($a1)
/* B84380 8010D1E0 00004012 */  mflo  $t0
/* B84384 8010D1E4 00084400 */  sll   $t0, $t0, 0x10
/* B84388 8010D1E8 15400002 */  bnez  $t2, .L8010D1F4
/* B8438C 8010D1EC 00000000 */   nop   
/* B84390 8010D1F0 0007000D */  break 7
.L8010D1F4:
/* B84394 8010D1F4 2401FFFF */  li    $at, -1
/* B84398 8010D1F8 15410004 */  bne   $t2, $at, .L8010D20C
/* B8439C 8010D1FC 3C018000 */   lui   $at, 0x8000
/* B843A0 8010D200 14410002 */  bne   $v0, $at, .L8010D20C
/* B843A4 8010D204 00000000 */   nop   
/* B843A8 8010D208 0006000D */  break 6
.L8010D20C:
/* B843AC 8010D20C 01861823 */  subu  $v1, $t4, $a2
/* B843B0 8010D210 04600003 */  bltz  $v1, .L8010D220
/* B843B4 8010D214 00084403 */   sra   $t0, $t0, 0x10
/* B843B8 8010D218 10000002 */  b     .L8010D224
/* B843BC 8010D21C 00601025 */   move  $v0, $v1
.L8010D220:
/* B843C0 8010D220 00031023 */  negu  $v0, $v1
.L8010D224:
/* B843C4 8010D224 004A001A */  div   $zero, $v0, $t2
/* B843C8 8010D228 84A70004 */  lh    $a3, 4($a1)
/* B843CC 8010D22C 00002012 */  mflo  $a0
/* B843D0 8010D230 00042400 */  sll   $a0, $a0, 0x10
/* B843D4 8010D234 15400002 */  bnez  $t2, .L8010D240
/* B843D8 8010D238 00000000 */   nop   
/* B843DC 8010D23C 0007000D */  break 7
.L8010D240:
/* B843E0 8010D240 2401FFFF */  li    $at, -1
/* B843E4 8010D244 15410004 */  bne   $t2, $at, .L8010D258
/* B843E8 8010D248 3C018000 */   lui   $at, 0x8000
/* B843EC 8010D24C 14410002 */  bne   $v0, $at, .L8010D258
/* B843F0 8010D250 00000000 */   nop   
/* B843F4 8010D254 0006000D */  break 6
.L8010D258:
/* B843F8 8010D258 01A71823 */  subu  $v1, $t5, $a3
/* B843FC 8010D25C 04600003 */  bltz  $v1, .L8010D26C
/* B84400 8010D260 00042403 */   sra   $a0, $a0, 0x10
/* B84404 8010D264 10000002 */  b     .L8010D270
/* B84408 8010D268 00601025 */   move  $v0, $v1
.L8010D26C:
/* B8440C 8010D26C 00031023 */  negu  $v0, $v1
.L8010D270:
/* B84410 8010D270 0169082A */  slt   $at, $t3, $t1
/* B84414 8010D274 54200006 */  bnezl $at, .L8010D290
/* B84418 8010D278 0168C821 */   addu  $t9, $t3, $t0
/* B8441C 8010D27C 01687023 */  subu  $t6, $t3, $t0
/* B84420 8010D280 3C018017 */  lui   $at, %hi(D_801759BA) # $at, 0x8017
/* B84424 8010D284 10000004 */  b     .L8010D298
/* B84428 8010D288 A42E59BA */   sh    $t6, %lo(D_801759BA)($at)
/* B8442C 8010D28C 0168C821 */  addu  $t9, $t3, $t0
.L8010D290:
/* B84430 8010D290 3C018017 */  lui   $at, %hi(D_801759BA) # $at, 0x8017
/* B84434 8010D294 A43959BA */  sh    $t9, %lo(D_801759BA)($at)
.L8010D298:
/* B84438 8010D298 0186082A */  slt   $at, $t4, $a2
/* B8443C 8010D29C 54200006 */  bnezl $at, .L8010D2B8
/* B84440 8010D2A0 0184C021 */   addu  $t8, $t4, $a0
/* B84444 8010D2A4 01847823 */  subu  $t7, $t4, $a0
/* B84448 8010D2A8 3C018017 */  lui   $at, %hi(D_801759BE) # $at, 0x8017
/* B8444C 8010D2AC 10000004 */  b     .L8010D2C0
/* B84450 8010D2B0 A42F59BE */   sh    $t7, %lo(D_801759BE)($at)
/* B84454 8010D2B4 0184C021 */  addu  $t8, $t4, $a0
.L8010D2B8:
/* B84458 8010D2B8 3C018017 */  lui   $at, %hi(D_801759BE) # $at, 0x8017
/* B8445C 8010D2BC A43859BE */  sh    $t8, %lo(D_801759BE)($at)
.L8010D2C0:
/* B84460 8010D2C0 01A7082A */  slt   $at, $t5, $a3
/* B84464 8010D2C4 14200012 */  bnez  $at, .L8010D310
/* B84468 8010D2C8 00000000 */   nop   
/* B8446C 8010D2CC 004A001A */  div   $zero, $v0, $t2
/* B84470 8010D2D0 15400002 */  bnez  $t2, .L8010D2DC
/* B84474 8010D2D4 00000000 */   nop   
/* B84478 8010D2D8 0007000D */  break 7
.L8010D2DC:
/* B8447C 8010D2DC 2401FFFF */  li    $at, -1
/* B84480 8010D2E0 15410004 */  bne   $t2, $at, .L8010D2F4
/* B84484 8010D2E4 3C018000 */   lui   $at, 0x8000
/* B84488 8010D2E8 14410002 */  bne   $v0, $at, .L8010D2F4
/* B8448C 8010D2EC 00000000 */   nop   
/* B84490 8010D2F0 0006000D */  break 6
.L8010D2F4:
/* B84494 8010D2F4 00007012 */  mflo  $t6
/* B84498 8010D2F8 000ECC00 */  sll   $t9, $t6, 0x10
/* B8449C 8010D2FC 00197C03 */  sra   $t7, $t9, 0x10
/* B844A0 8010D300 01AFC023 */  subu  $t8, $t5, $t7
/* B844A4 8010D304 3C018017 */  lui   $at, %hi(D_801759BC) # $at, 0x8017
/* B844A8 8010D308 10000011 */  b     .L8010D350
/* B844AC 8010D30C A43859BC */   sh    $t8, %lo(D_801759BC)($at)
.L8010D310:
/* B844B0 8010D310 004A001A */  div   $zero, $v0, $t2
/* B844B4 8010D314 15400002 */  bnez  $t2, .L8010D320
/* B844B8 8010D318 00000000 */   nop   
/* B844BC 8010D31C 0007000D */  break 7
.L8010D320:
/* B844C0 8010D320 2401FFFF */  li    $at, -1
/* B844C4 8010D324 15410004 */  bne   $t2, $at, .L8010D338
/* B844C8 8010D328 3C018000 */   lui   $at, 0x8000
/* B844CC 8010D32C 14410002 */  bne   $v0, $at, .L8010D338
/* B844D0 8010D330 00000000 */   nop   
/* B844D4 8010D334 0006000D */  break 6
.L8010D338:
/* B844D8 8010D338 00007012 */  mflo  $t6
/* B844DC 8010D33C 000ECC00 */  sll   $t9, $t6, 0x10
/* B844E0 8010D340 00197C03 */  sra   $t7, $t9, 0x10
/* B844E4 8010D344 01AFC021 */  addu  $t8, $t5, $t7
/* B844E8 8010D348 3C018017 */  lui   $at, %hi(D_801759BC) # $at, 0x8017
/* B844EC 8010D34C A43859BC */  sh    $t8, %lo(D_801759BC)($at)
.L8010D350:
/* B844F0 8010D350 254AFFFF */  addiu $t2, $t2, -1
/* B844F4 8010D354 000A5400 */  sll   $t2, $t2, 0x10
/* B844F8 8010D358 000A5403 */  sra   $t2, $t2, 0x10
/* B844FC 8010D35C 3C018015 */  lui   $at, %hi(D_80153CD8) # $at, 0x8015
/* B84500 8010D360 15400029 */  bnez  $t2, .L8010D408
/* B84504 8010D364 A42A3CD8 */   sh    $t2, %lo(D_80153CD8)($at)
/* B84508 8010D368 8FAE0080 */  lw    $t6, 0x80($sp)
/* B8450C 8010D36C 8FB90078 */  lw    $t9, 0x78($sp)
/* B84510 8010D370 3C018017 */  lui   $at, %hi(D_801759A8) # $at, 0x8017
/* B84514 8010D374 A42E59A8 */  sh    $t6, %lo(D_801759A8)($at)
/* B84518 8010D378 8FAF0070 */  lw    $t7, 0x70($sp)
/* B8451C 8010D37C 3C018017 */  lui   $at, %hi(D_801759AC) # $at, 0x8017
/* B84520 8010D380 A43959AC */  sh    $t9, %lo(D_801759AC)($at)
/* B84524 8010D384 8FB8007C */  lw    $t8, 0x7c($sp)
/* B84528 8010D388 3C018017 */  lui   $at, %hi(D_801759AA) # $at, 0x8017
/* B8452C 8010D38C A42F59AA */  sh    $t7, %lo(D_801759AA)($at)
/* B84530 8010D390 8FAE006C */  lw    $t6, 0x6c($sp)
/* B84534 8010D394 3C018017 */  lui   $at, %hi(D_801759AE) # $at, 0x8017
/* B84538 8010D398 A43859AE */  sh    $t8, %lo(D_801759AE)($at)
/* B8453C 8010D39C 8FB90064 */  lw    $t9, 0x64($sp)
/* B84540 8010D3A0 3C018017 */  lui   $at, %hi(D_801759B2) # $at, 0x8017
/* B84544 8010D3A4 A42E59B2 */  sh    $t6, %lo(D_801759B2)($at)
/* B84548 8010D3A8 8FAF005C */  lw    $t7, 0x5c($sp)
/* B8454C 8010D3AC 3C018017 */  lui   $at, %hi(D_801759B0) # $at, 0x8017
/* B84550 8010D3B0 A43959B0 */  sh    $t9, %lo(D_801759B0)($at)
/* B84554 8010D3B4 8FB80054 */  lw    $t8, 0x54($sp)
/* B84558 8010D3B8 3C018017 */  lui   $at, %hi(D_801759B4) # $at, 0x8017
/* B8455C 8010D3BC A42F59B4 */  sh    $t7, %lo(D_801759B4)($at)
/* B84560 8010D3C0 3C018017 */  lui   $at, %hi(D_801759B8) # $at, 0x8017
/* B84564 8010D3C4 A43859B8 */  sh    $t8, %lo(D_801759B8)($at)
/* B84568 8010D3C8 3C018017 */  lui   $at, %hi(D_801759B6) # $at, 0x8017
/* B8456C 8010D3CC A43F59B6 */  sh    $ra, %lo(D_801759B6)($at)
/* B84570 8010D3D0 3C018017 */  lui   $at, %hi(D_801759BA) # $at, 0x8017
/* B84574 8010D3D4 A42959BA */  sh    $t1, %lo(D_801759BA)($at)
/* B84578 8010D3D8 3C018017 */  lui   $at, %hi(D_801759BE) # $at, 0x8017
/* B8457C 8010D3DC 3C0E8015 */  lui   $t6, %hi(D_80153CDC) # $t6, 0x8015
/* B84580 8010D3E0 85CE3CDC */  lh    $t6, %lo(D_80153CDC)($t6)
/* B84584 8010D3E4 A42659BE */  sh    $a2, %lo(D_801759BE)($at)
/* B84588 8010D3E8 3C018017 */  lui   $at, %hi(D_801759BC) # $at, 0x8017
/* B8458C 8010D3EC A42759BC */  sh    $a3, %lo(D_801759BC)($at)
/* B84590 8010D3F0 3C018015 */  lui   $at, %hi(D_80153CDC) # $at, 0x8015
/* B84594 8010D3F4 39D90001 */  xori  $t9, $t6, 1
/* B84598 8010D3F8 A4393CDC */  sh    $t9, %lo(D_80153CDC)($at)
/* B8459C 8010D3FC 240A0003 */  li    $t2, 3
/* B845A0 8010D400 3C018015 */  lui   $at, %hi(D_80153CD8) # $at, 0x8015
/* B845A4 8010D404 A42A3CD8 */  sh    $t2, %lo(D_80153CD8)($at)
.L8010D408:
/* B845A8 8010D408 920F63E7 */  lbu   $t7, 0x63e7($s0)
/* B845AC 8010D40C 26217FFF */  addiu $at, $s1, 0x7fff
/* B845B0 8010D410 25F8FFFF */  addiu $t8, $t7, -1
/* B845B4 8010D414 A03863E8 */  sb    $t8, 0x63e8($at)
/* B845B8 8010D418 920E63E7 */  lbu   $t6, 0x63e7($s0)
/* B845BC 8010D41C 55C00034 */  bnezl $t6, .L8010D4F0
/* B845C0 8010D420 02402025 */   move  $a0, $s2
/* B845C4 8010D424 0C03B616 */  jal   func_800ED858
/* B845C8 8010D428 00002025 */   move  $a0, $zero
/* B845CC 8010D42C 92026304 */  lbu   $v0, 0x6304($s0)
/* B845D0 8010D430 2401000D */  li    $at, 13
/* B845D4 8010D434 1441000F */  bne   $v0, $at, .L8010D474
/* B845D8 8010D438 3C048015 */   lui   $a0, %hi(D_80154538) # $a0, 0x8015
/* B845DC 8010D43C 24844538 */  addiu $a0, %lo(D_80154538) # addiu $a0, $a0, 0x4538
/* B845E0 8010D440 0C00084C */  jal   osSyncPrintf
/* B845E4 8010D444 960563EC */   lhu   $a1, 0x63ec($s0)
/* B845E8 8010D448 02402025 */  move  $a0, $s2
/* B845EC 8010D44C 0C042DC8 */  jal   func_8010B720
/* B845F0 8010D450 2405086F */   li    $a1, 2159
/* B845F4 8010D454 26217FFF */  addiu $at, $s1, 0x7fff
/* B845F8 8010D458 24190011 */  li    $t9, 17
/* B845FC 8010D45C 240F0003 */  li    $t7, 3
/* B84600 8010D460 24180001 */  li    $t8, 1
/* B84604 8010D464 A0396305 */  sb    $t9, 0x6305($at)
/* B84608 8010D468 A02F62FE */  sb    $t7, 0x62fe($at)
/* B8460C 8010D46C 1000001F */  b     .L8010D4EC
/* B84610 8010D470 A03863E8 */   sb    $t8, 0x63e8($at)
.L8010D474:
/* B84614 8010D474 2401001C */  li    $at, 28
/* B84618 8010D478 14410016 */  bne   $v0, $at, .L8010D4D4
/* B8461C 8010D47C 00000000 */   nop   
/* B84620 8010D480 960E63EC */  lhu   $t6, 0x63ec($s0)
/* B84624 8010D484 29C10006 */  slti  $at, $t6, 6
/* B84628 8010D488 1420000B */  bnez  $at, .L8010D4B8
/* B8462C 8010D48C 02402025 */   move  $a0, $s2
/* B84630 8010D490 0C042DC8 */  jal   func_8010B720
/* B84634 8010D494 2405086F */   li    $a1, 2159
/* B84638 8010D498 26217FFF */  addiu $at, $s1, 0x7fff
/* B8463C 8010D49C 24190011 */  li    $t9, 17
/* B84640 8010D4A0 240F0003 */  li    $t7, 3
/* B84644 8010D4A4 24180001 */  li    $t8, 1
/* B84648 8010D4A8 A0396305 */  sb    $t9, 0x6305($at)
/* B8464C 8010D4AC A02F62FE */  sb    $t7, 0x62fe($at)
/* B84650 8010D4B0 1000000E */  b     .L8010D4EC
/* B84654 8010D4B4 A03863E8 */   sb    $t8, 0x63e8($at)
.L8010D4B8:
/* B84658 8010D4B8 0C041B33 */  jal   func_80106CCC
/* B8465C 8010D4BC 02402025 */   move  $a0, $s2
/* B84660 8010D4C0 3C010001 */  lui   $at, 1
/* B84664 8010D4C4 00320821 */  addu  $at, $at, $s2
/* B84668 8010D4C8 240E0004 */  li    $t6, 4
/* B8466C 8010D4CC 10000007 */  b     .L8010D4EC
/* B84670 8010D4D0 A42E04C6 */   sh    $t6, 0x4c6($at)
.L8010D4D4:
/* B84674 8010D4D4 0C041B33 */  jal   func_80106CCC
/* B84678 8010D4D8 02402025 */   move  $a0, $s2
/* B8467C 8010D4DC 3C010001 */  lui   $at, 1
/* B84680 8010D4E0 00320821 */  addu  $at, $at, $s2
/* B84684 8010D4E4 24190003 */  li    $t9, 3
/* B84688 8010D4E8 A43904C6 */  sh    $t9, 0x4c6($at)
.L8010D4EC:
/* B8468C 8010D4EC 02402025 */  move  $a0, $s2
.L8010D4F0:
/* B84690 8010D4F0 0C0421AC */  jal   func_801086B0
/* B84694 8010D4F4 27A50140 */   addiu $a1, $sp, 0x140
/* B84698 8010D4F8 100005DD */  b     .L8010EC70
/* B8469C 8010D4FC 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D500
/* B846A0 8010D500 02402025 */  move  $a0, $s2
/* B846A4 8010D504 0C0421AC */  jal   func_801086B0
/* B846A8 8010D508 27A50140 */   addiu $a1, $sp, 0x140
glabel L8010D50C
/* B846AC 8010D50C 920F63E7 */  lbu   $t7, 0x63e7($s0)
/* B846B0 8010D510 26217FFF */  addiu $at, $s1, 0x7fff
/* B846B4 8010D514 25F8FFFF */  addiu $t8, $t7, -1
/* B846B8 8010D518 A03863E8 */  sb    $t8, 0x63e8($at)
/* B846BC 8010D51C 920E63E7 */  lbu   $t6, 0x63e7($s0)
/* B846C0 8010D520 15C0001A */  bnez  $t6, .L8010D58C
/* B846C4 8010D524 3C098016 */   lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B846C8 8010D528 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B846CC 8010D52C 8D2F0000 */  lw    $t7, ($t1)
/* B846D0 8010D530 24190001 */  li    $t9, 1
/* B846D4 8010D534 2401001D */  li    $at, 29
/* B846D8 8010D538 A5F90F7A */  sh    $t9, 0xf7a($t7)
/* B846DC 8010D53C 92186304 */  lbu   $t8, 0x6304($s0)
/* B846E0 8010D540 1701000C */  bne   $t8, $at, .L8010D574
/* B846E4 8010D544 3C048015 */   lui   $a0, %hi(D_8015454C) # $a0, 0x8015
/* B846E8 8010D548 0C00084C */  jal   osSyncPrintf
/* B846EC 8010D54C 2484454C */   addiu $a0, %lo(D_8015454C) # addiu $a0, $a0, 0x454c
/* B846F0 8010D550 02402025 */  move  $a0, $s2
/* B846F4 8010D554 0C042DC8 */  jal   func_8010B720
/* B846F8 8010D558 2405088B */   li    $a1, 2187
/* B846FC 8010D55C 0C0426CF */  jal   func_80109B3C
/* B84700 8010D560 02402025 */   move  $a0, $s2
/* B84704 8010D564 240E001E */  li    $t6, 30
/* B84708 8010D568 26217FFF */  addiu $at, $s1, 0x7fff
/* B8470C 8010D56C 10000004 */  b     .L8010D580
/* B84710 8010D570 A02E6305 */   sb    $t6, 0x6305($at)
.L8010D574:
/* B84714 8010D574 24190010 */  li    $t9, 16
/* B84718 8010D578 26217FFF */  addiu $at, $s1, 0x7fff
/* B8471C 8010D57C A0396305 */  sb    $t9, 0x6305($at)
.L8010D580:
/* B84720 8010D580 3C048015 */  lui   $a0, %hi(D_8015455C) # $a0, 0x8015
/* B84724 8010D584 0C00084C */  jal   osSyncPrintf
/* B84728 8010D588 2484455C */   addiu $a0, %lo(D_8015455C) # addiu $a0, $a0, 0x455c
.L8010D58C:
/* B8472C 8010D58C 100005B8 */  b     .L8010EC70
/* B84730 8010D590 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D594
/* B84734 8010D594 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B84738 8010D598 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B8473C 8010D59C 00003825 */  move  $a3, $zero
/* B84740 8010D5A0 00001825 */  move  $v1, $zero
.L8010D5A4:
/* B84744 8010D5A4 8D280000 */  lw    $t0, ($t1)
/* B84748 8010D5A8 00037840 */  sll   $t7, $v1, 1
/* B8474C 8010D5AC 24E70001 */  addiu $a3, $a3, 1
/* B84750 8010D5B0 010F1021 */  addu  $v0, $t0, $t7
/* B84754 8010D5B4 84580F6E */  lh    $t8, 0xf6e($v0)
/* B84758 8010D5B8 850E0F7A */  lh    $t6, 0xf7a($t0)
/* B8475C 8010D5BC 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B84760 8010D5C0 28E10005 */  slti  $at, $a3, 5
/* B84764 8010D5C4 030EC821 */  addu  $t9, $t8, $t6
/* B84768 8010D5C8 00E01825 */  move  $v1, $a3
/* B8476C 8010D5CC 1420FFF5 */  bnez  $at, .L8010D5A4
/* B84770 8010D5D0 A4590F6E */   sh    $t9, 0xf6e($v0)
/* B84774 8010D5D4 8D280000 */  lw    $t0, ($t1)
/* B84778 8010D5D8 85020F7A */  lh    $v0, 0xf7a($t0)
/* B8477C 8010D5DC 00427821 */  addu  $t7, $v0, $v0
/* B84780 8010D5E0 A50F0F7A */  sh    $t7, 0xf7a($t0)
/* B84784 8010D5E4 8D380000 */  lw    $t8, ($t1)
/* B84788 8010D5E8 870E0F7A */  lh    $t6, 0xf7a($t8)
/* B8478C 8010D5EC 29C10226 */  slti  $at, $t6, 0x226
/* B84790 8010D5F0 14200018 */  bnez  $at, .L8010D654
/* B84794 8010D5F4 241900FF */   li    $t9, 255
/* B84798 8010D5F8 3C018015 */  lui   $at, %hi(D_8015394C) # $at, 0x8015
/* B8479C 8010D5FC A039394C */  sb    $t9, %lo(D_8015394C)($at)
/* B847A0 8010D600 3C018015 */  lui   $at, %hi(D_80153960) # $at, 0x8015
/* B847A4 8010D604 A4203968 */  sh    $zero, %lo(D_80153968)($at)
/* B847A8 8010D608 A4203966 */  sh    $zero, %lo(D_80153966)($at)
/* B847AC 8010D60C A4203964 */  sh    $zero, %lo(D_80153964)($at)
/* B847B0 8010D610 A4203962 */  sh    $zero, %lo(D_80153962)($at)
/* B847B4 8010D614 A4203960 */  sh    $zero, %lo(D_80153960)($at)
/* B847B8 8010D618 3C018015 */  lui   $at, %hi(D_80153958) # $at, 0x8015
/* B847BC 8010D61C A420395E */  sh    $zero, %lo(D_8015395E)($at)
/* B847C0 8010D620 A420395C */  sh    $zero, %lo(D_8015395C)($at)
/* B847C4 8010D624 A420395A */  sh    $zero, %lo(D_8015395A)($at)
/* B847C8 8010D628 A4203958 */  sh    $zero, %lo(D_80153958)($at)
/* B847CC 8010D62C 920F6304 */  lbu   $t7, 0x6304($s0)
/* B847D0 8010D630 2401001E */  li    $at, 30
/* B847D4 8010D634 15E10004 */  bne   $t7, $at, .L8010D648
/* B847D8 8010D638 2418001F */   li    $t8, 31
/* B847DC 8010D63C 26217FFF */  addiu $at, $s1, 0x7fff
/* B847E0 8010D640 10000004 */  b     .L8010D654
/* B847E4 8010D644 A0386305 */   sb    $t8, 0x6305($at)
.L8010D648:
/* B847E8 8010D648 240E0009 */  li    $t6, 9
/* B847EC 8010D64C 26217FFF */  addiu $at, $s1, 0x7fff
/* B847F0 8010D650 A02E6305 */  sb    $t6, 0x6305($at)
.L8010D654:
/* B847F4 8010D654 10000586 */  b     .L8010EC70
/* B847F8 8010D658 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D65C
/* B847FC 8010D65C 921963E7 */  lbu   $t9, 0x63e7($s0)
/* B84800 8010D660 26217FFF */  addiu $at, $s1, 0x7fff
/* B84804 8010D664 272FFFFF */  addiu $t7, $t9, -1
/* B84808 8010D668 A02F63E8 */  sb    $t7, 0x63e8($at)
/* B8480C 8010D66C 921863E7 */  lbu   $t8, 0x63e7($s0)
/* B84810 8010D670 1700003B */  bnez  $t8, .L8010D760
/* B84814 8010D674 00000000 */   nop   
/* B84818 8010D678 0C03B616 */  jal   func_800ED858
/* B8481C 8010D67C 00002025 */   move  $a0, $zero
/* B84820 8010D680 3C048015 */  lui   $a0, %hi(D_80154568) # $a0, 0x8015
/* B84824 8010D684 0C00084C */  jal   osSyncPrintf
/* B84828 8010D688 24844568 */   addiu $a0, %lo(D_80154568) # addiu $a0, $a0, 0x4568
/* B8482C 8010D68C 3C048015 */  lui   $a0, %hi(D_80154570) # $a0, 0x8015
/* B84830 8010D690 0C00084C */  jal   osSyncPrintf
/* B84834 8010D694 24844570 */   addiu $a0, %lo(D_80154570) # addiu $a0, $a0, 0x4570
/* B84838 8010D698 3C048015 */  lui   $a0, %hi(D_80154588) # $a0, 0x8015
/* B8483C 8010D69C 0C00084C */  jal   osSyncPrintf
/* B84840 8010D6A0 24844588 */   addiu $a0, %lo(D_80154588) # addiu $a0, $a0, 0x4588
/* B84844 8010D6A4 3C048015 */  lui   $a0, %hi(D_801545A0) # $a0, 0x8015
/* B84848 8010D6A8 0C00084C */  jal   osSyncPrintf
/* B8484C 8010D6AC 248445A0 */   addiu $a0, %lo(D_801545A0) # addiu $a0, $a0, 0x45a0
/* B84850 8010D6B0 3C048015 */  lui   $a0, %hi(D_801545B8) # $a0, 0x8015
/* B84854 8010D6B4 0C00084C */  jal   osSyncPrintf
/* B84858 8010D6B8 248445B8 */   addiu $a0, %lo(D_801545B8) # addiu $a0, $a0, 0x45b8
/* B8485C 8010D6BC 0C0426CF */  jal   func_80109B3C
/* B84860 8010D6C0 02402025 */   move  $a0, $s2
/* B84864 8010D6C4 240E0012 */  li    $t6, 18
/* B84868 8010D6C8 26217FFF */  addiu $at, $s1, 0x7fff
/* B8486C 8010D6CC 0C03B8F5 */  jal   func_800EE3D4
/* B84870 8010D6D0 A02E6305 */   sb    $t6, 0x6305($at)
/* B84874 8010D6D4 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B84878 8010D6D8 26217FFF */  addiu $at, $s1, 0x7fff
/* B8487C 8010D6DC AC2262B9 */  sw    $v0, 0x62b9($at)
/* B84880 8010D6E0 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B84884 8010D6E4 A5000000 */  sh    $zero, ($t0)
/* B84888 8010D6E8 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B8488C 8010D6EC 85190000 */  lh    $t9, ($t0)
/* B84890 8010D6F0 0C041A6C */  jal   func_801069B0
/* B84894 8010D6F4 A1F90002 */   sb    $t9, 2($t7)
/* B84898 8010D6F8 960363EC */  lhu   $v1, 0x63ec($s0)
/* B8489C 8010D6FC 28610006 */  slti  $at, $v1, 6
/* B848A0 8010D700 14200017 */  bnez  $at, .L8010D760
/* B848A4 8010D704 2861000D */   slti  $at, $v1, 0xd
/* B848A8 8010D708 10200015 */  beqz  $at, .L8010D760
/* B848AC 8010D70C 00000000 */   nop   
/* B848B0 8010D710 8FA80148 */  lw    $t0, 0x148($sp)
/* B848B4 8010D714 00031040 */  sll   $v0, $v1, 1
/* B848B8 8010D718 3C188015 */  lui   $t8, %hi(D_80153C78)
/* B848BC 8010D71C C5040028 */  lwc1  $f4, 0x28($t0)
/* B848C0 8010D720 8D070024 */  lw    $a3, 0x24($t0)
/* B848C4 8010D724 0302C021 */  addu  $t8, $t8, $v0
/* B848C8 8010D728 E7A40010 */  swc1  $f4, 0x10($sp)
/* B848CC 8010D72C C506002C */  lwc1  $f6, 0x2c($t0)
/* B848D0 8010D730 87183C78 */  lh    $t8, %lo(D_80153C78)($t8)
/* B848D4 8010D734 3C068015 */  lui   $a2, %hi(D_80153C68)
/* B848D8 8010D738 00C23021 */  addu  $a2, $a2, $v0
/* B848DC 8010D73C 84C63C68 */  lh    $a2, %lo(D_80153C68)($a2)
/* B848E0 8010D740 AFA00020 */  sw    $zero, 0x20($sp)
/* B848E4 8010D744 AFA0001C */  sw    $zero, 0x1c($sp)
/* B848E8 8010D748 AFA00018 */  sw    $zero, 0x18($sp)
/* B848EC 8010D74C 26441C24 */  addiu $a0, $s2, 0x1c24
/* B848F0 8010D750 02402825 */  move  $a1, $s2
/* B848F4 8010D754 E7A60014 */  swc1  $f6, 0x14($sp)
/* B848F8 8010D758 0C00C7D4 */  jal   Actor_Spawn
/* B848FC 8010D75C AFB80024 */   sw    $t8, 0x24($sp)
.L8010D760:
/* B84900 8010D760 10000543 */  b     .L8010EC70
/* B84904 8010D764 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D768
/* B84908 8010D768 02402025 */  move  $a0, $s2
/* B8490C 8010D76C 0C0421AC */  jal   func_801086B0
/* B84910 8010D770 27A50140 */   addiu $a1, $sp, 0x140
/* B84914 8010D774 0C03B616 */  jal   func_800ED858
/* B84918 8010D778 24040001 */   li    $a0, 1
/* B8491C 8010D77C 0C03B616 */  jal   func_800ED858
/* B84920 8010D780 24040001 */   li    $a0, 1
/* B84924 8010D784 960463EC */  lhu   $a0, 0x63ec($s0)
/* B84928 8010D788 24050001 */  li    $a1, 1
/* B8492C 8010D78C 24840001 */  addiu $a0, $a0, 1
/* B84930 8010D790 00042600 */  sll   $a0, $a0, 0x18
/* B84934 8010D794 0C03B64F */  jal   func_800ED93C
/* B84938 8010D798 00042603 */   sra   $a0, $a0, 0x18
/* B8493C 8010D79C 960263EC */  lhu   $v0, 0x63ec($s0)
/* B84940 8010D7A0 2405000C */  li    $a1, 12
/* B84944 8010D7A4 10A20007 */  beq   $a1, $v0, .L8010D7C4
/* B84948 8010D7A8 00027040 */   sll   $t6, $v0, 1
/* B8494C 8010D7AC 3C048015 */  lui   $a0, %hi(D_80153CE0)
/* B84950 8010D7B0 008E2021 */  addu  $a0, $a0, $t6
/* B84954 8010D7B4 0C03D719 */  jal   func_800F5C64
/* B84958 8010D7B8 94843CE0 */   lhu   $a0, %lo(D_80153CE0)($a0)
/* B8495C 8010D7BC 0C03DC98 */  jal   func_800F7260
/* B84960 8010D7C0 24040020 */   li    $a0, 32
.L8010D7C4:
/* B84964 8010D7C4 3C010001 */  lui   $at, 1
/* B84968 8010D7C8 00320821 */  addu  $at, $at, $s2
/* B8496C 8010D7CC 24190001 */  li    $t9, 1
/* B84970 8010D7D0 A43904C6 */  sh    $t9, 0x4c6($at)
/* B84974 8010D7D4 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B84978 8010D7D8 24010001 */  li    $at, 1
/* B8497C 8010D7DC 14410004 */  bne   $v0, $at, .L8010D7F0
/* B84980 8010D7E0 240F0029 */   li    $t7, 41
/* B84984 8010D7E4 26217FFF */  addiu $at, $s1, 0x7fff
/* B84988 8010D7E8 A42F63F1 */  sh    $t7, 0x63f1($at)
/* B8498C 8010D7EC 960263F0 */  lhu   $v0, 0x63f0($s0)
.L8010D7F0:
/* B84990 8010D7F0 24010030 */  li    $at, 48
/* B84994 8010D7F4 14410003 */  bne   $v0, $at, .L8010D804
/* B84998 8010D7F8 24180031 */   li    $t8, 49
/* B8499C 8010D7FC 26217FFF */  addiu $at, $s1, 0x7fff
/* B849A0 8010D800 A43863F1 */  sh    $t8, 0x63f1($at)
.L8010D804:
/* B849A4 8010D804 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B849A8 8010D808 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B849AC 8010D80C A5000000 */  sh    $zero, ($t0)
/* B849B0 8010D810 240E0013 */  li    $t6, 19
/* B849B4 8010D814 26217FFF */  addiu $at, $s1, 0x7fff
/* B849B8 8010D818 A02E6305 */  sb    $t6, 0x6305($at)
/* B849BC 8010D81C 10000514 */  b     .L8010EC70
/* B849C0 8010D820 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D824
/* B849C4 8010D824 921963E7 */  lbu   $t9, 0x63e7($s0)
/* B849C8 8010D828 26217FFF */  addiu $at, $s1, 0x7fff
/* B849CC 8010D82C 272FFFFF */  addiu $t7, $t9, -1
/* B849D0 8010D830 A02F63E8 */  sb    $t7, 0x63e8($at)
/* B849D4 8010D834 921863E7 */  lbu   $t8, 0x63e7($s0)
/* B849D8 8010D838 17000035 */  bnez  $t8, .L8010D910
/* B849DC 8010D83C 3C048015 */   lui   $a0, %hi(D_801545BC) # $a0, 0x8015
/* B849E0 8010D840 248445BC */  addiu $a0, %lo(D_801545BC) # addiu $a0, $a0, 0x45bc
/* B849E4 8010D844 960563F0 */  lhu   $a1, 0x63f0($s0)
/* B849E8 8010D848 0C00084C */  jal   osSyncPrintf
/* B849EC 8010D84C 24060016 */   li    $a2, 22
/* B849F0 8010D850 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B849F4 8010D854 28410008 */  slti  $at, $v0, 8
/* B849F8 8010D858 50200006 */  beql  $at, $zero, .L8010D874
/* B849FC 8010D85C 24010009 */   li    $at, 9
/* B84A00 8010D860 0C03B616 */  jal   func_800ED858
/* B84A04 8010D864 24040004 */   li    $a0, 4
/* B84A08 8010D868 10000019 */  b     .L8010D8D0
/* B84A0C 8010D86C 960563F0 */   lhu   $a1, 0x63f0($s0)
/* B84A10 8010D870 24010009 */  li    $at, 9
.L8010D874:
/* B84A14 8010D874 54410006 */  bnel  $v0, $at, .L8010D890
/* B84A18 8010D878 2401000A */   li    $at, 10
/* B84A1C 8010D87C 0C03B616 */  jal   func_800ED858
/* B84A20 8010D880 24040002 */   li    $a0, 2
/* B84A24 8010D884 10000012 */  b     .L8010D8D0
/* B84A28 8010D888 960563F0 */   lhu   $a1, 0x63f0($s0)
/* B84A2C 8010D88C 2401000A */  li    $at, 10
.L8010D890:
/* B84A30 8010D890 54410006 */  bnel  $v0, $at, .L8010D8AC
/* B84A34 8010D894 2401000D */   li    $at, 13
/* B84A38 8010D898 0C03B616 */  jal   func_800ED858
/* B84A3C 8010D89C 24040003 */   li    $a0, 3
/* B84A40 8010D8A0 1000000B */  b     .L8010D8D0
/* B84A44 8010D8A4 960563F0 */   lhu   $a1, 0x63f0($s0)
/* B84A48 8010D8A8 2401000D */  li    $at, 13
.L8010D8AC:
/* B84A4C 8010D8AC 14410005 */  bne   $v0, $at, .L8010D8C4
/* B84A50 8010D8B0 00000000 */   nop   
/* B84A54 8010D8B4 0C03B616 */  jal   func_800ED858
/* B84A58 8010D8B8 24040005 */   li    $a0, 5
/* B84A5C 8010D8BC 10000004 */  b     .L8010D8D0
/* B84A60 8010D8C0 960563F0 */   lhu   $a1, 0x63f0($s0)
.L8010D8C4:
/* B84A64 8010D8C4 0C03B616 */  jal   func_800ED858
/* B84A68 8010D8C8 24040001 */   li    $a0, 1
/* B84A6C 8010D8CC 960563F0 */  lhu   $a1, 0x63f0($s0)
.L8010D8D0:
/* B84A70 8010D8D0 3C048015 */  lui   $a0, %hi(D_801545D4) # $a0, 0x8015
/* B84A74 8010D8D4 248445D4 */  addiu $a0, %lo(D_801545D4) # addiu $a0, $a0, 0x45d4
/* B84A78 8010D8D8 0C00084C */  jal   osSyncPrintf
/* B84A7C 8010D8DC 24A5FFFE */   addiu $a1, $a1, -2
/* B84A80 8010D8E0 960463F0 */  lhu   $a0, 0x63f0($s0)
/* B84A84 8010D8E4 24050002 */  li    $a1, 2
/* B84A88 8010D8E8 2484FFFF */  addiu $a0, $a0, -1
/* B84A8C 8010D8EC 00042600 */  sll   $a0, $a0, 0x18
/* B84A90 8010D8F0 0C03B64F */  jal   func_800ED93C
/* B84A94 8010D8F4 00042603 */   sra   $a0, $a0, 0x18
/* B84A98 8010D8F8 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B84A9C 8010D8FC 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B84AA0 8010D900 A5000000 */  sh    $zero, ($t0)
/* B84AA4 8010D904 240E0019 */  li    $t6, 25
/* B84AA8 8010D908 26217FFF */  addiu $at, $s1, 0x7fff
/* B84AAC 8010D90C A02E6305 */  sb    $t6, 0x6305($at)
.L8010D910:
/* B84AB0 8010D910 02402025 */  move  $a0, $s2
/* B84AB4 8010D914 0C0421AC */  jal   func_801086B0
/* B84AB8 8010D918 27A50140 */   addiu $a1, $sp, 0x140
/* B84ABC 8010D91C 100004D4 */  b     .L8010EC70
/* B84AC0 8010D920 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D924
/* B84AC4 8010D924 960563EC */  lhu   $a1, 0x63ec($s0)
/* B84AC8 8010D928 02402025 */  move  $a0, $s2
/* B84ACC 8010D92C 24A50893 */  addiu $a1, $a1, 0x893
/* B84AD0 8010D930 0C042DC8 */  jal   func_8010B720
/* B84AD4 8010D934 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B84AD8 8010D938 0C0426CF */  jal   func_80109B3C
/* B84ADC 8010D93C 02402025 */   move  $a0, $s2
/* B84AE0 8010D940 24190015 */  li    $t9, 21
/* B84AE4 8010D944 26217FFF */  addiu $at, $s1, 0x7fff
/* B84AE8 8010D948 240F0014 */  li    $t7, 20
/* B84AEC 8010D94C A0396305 */  sb    $t9, 0x6305($at)
/* B84AF0 8010D950 A02F63E8 */  sb    $t7, 0x63e8($at)
/* B84AF4 8010D954 02402025 */  move  $a0, $s2
/* B84AF8 8010D958 0C0421AC */  jal   func_801086B0
/* B84AFC 8010D95C 27A50140 */   addiu $a1, $sp, 0x140
/* B84B00 8010D960 100004C3 */  b     .L8010EC70
/* B84B04 8010D964 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D968
/* B84B08 8010D968 921863E7 */  lbu   $t8, 0x63e7($s0)
/* B84B0C 8010D96C 26217FFF */  addiu $at, $s1, 0x7fff
/* B84B10 8010D970 270EFFFF */  addiu $t6, $t8, -1
/* B84B14 8010D974 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B84B18 8010D978 921963E7 */  lbu   $t9, 0x63e7($s0)
/* B84B1C 8010D97C 17200003 */  bnez  $t9, .L8010D98C
/* B84B20 8010D980 240F0016 */   li    $t7, 22
/* B84B24 8010D984 26217FFF */  addiu $at, $s1, 0x7fff
/* B84B28 8010D988 A02F6305 */  sb    $t7, 0x6305($at)
.L8010D98C:
/* B84B2C 8010D98C 02402025 */  move  $a0, $s2
/* B84B30 8010D990 0C0421AC */  jal   func_801086B0
/* B84B34 8010D994 27A50140 */   addiu $a1, $sp, 0x140
/* B84B38 8010D998 100004B5 */  b     .L8010EC70
/* B84B3C 8010D99C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D9A0
/* B84B40 8010D9A0 0C03B616 */  jal   func_800ED858
/* B84B44 8010D9A4 00002025 */   move  $a0, $zero
/* B84B48 8010D9A8 0C041A6C */  jal   func_801069B0
/* B84B4C 8010D9AC 00000000 */   nop   
/* B84B50 8010D9B0 24180017 */  li    $t8, 23
/* B84B54 8010D9B4 26217FFF */  addiu $at, $s1, 0x7fff
/* B84B58 8010D9B8 240E0002 */  li    $t6, 2
/* B84B5C 8010D9BC A0386305 */  sb    $t8, 0x6305($at)
/* B84B60 8010D9C0 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B84B64 8010D9C4 02402025 */  move  $a0, $s2
/* B84B68 8010D9C8 0C0421AC */  jal   func_801086B0
/* B84B6C 8010D9CC 27A50140 */   addiu $a1, $sp, 0x140
/* B84B70 8010D9D0 100004A7 */  b     .L8010EC70
/* B84B74 8010D9D4 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D9D8
/* B84B78 8010D9D8 921963E7 */  lbu   $t9, 0x63e7($s0)
/* B84B7C 8010D9DC 26217FFF */  addiu $at, $s1, 0x7fff
/* B84B80 8010D9E0 272FFFFF */  addiu $t7, $t9, -1
/* B84B84 8010D9E4 A02F63E8 */  sb    $t7, 0x63e8($at)
/* B84B88 8010D9E8 921863E7 */  lbu   $t8, 0x63e7($s0)
/* B84B8C 8010D9EC 17000086 */  bnez  $t8, .L8010DC08
/* B84B90 8010D9F0 00000000 */   nop   
/* B84B94 8010D9F4 960363EC */  lhu   $v1, 0x63ec($s0)
/* B84B98 8010D9F8 28610006 */  slti  $at, $v1, 6
/* B84B9C 8010D9FC 1020002A */  beqz  $at, .L8010DAA8
/* B84BA0 8010DA00 00000000 */   nop   
/* B84BA4 8010DA04 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B84BA8 8010DA08 2841000F */  slti  $at, $v0, 0xf
/* B84BAC 8010DA0C 14200003 */  bnez  $at, .L8010DA1C
/* B84BB0 8010DA10 28410015 */   slti  $at, $v0, 0x15
/* B84BB4 8010DA14 14200024 */  bnez  $at, .L8010DAA8
/* B84BB8 8010DA18 00000000 */   nop   
.L8010DA1C:
/* B84BBC 8010DA1C 860E640C */  lh    $t6, 0x640c($s0)
/* B84BC0 8010DA20 15C00005 */  bnez  $t6, .L8010DA38
/* B84BC4 8010DA24 3C190001 */   lui   $t9, 1
/* B84BC8 8010DA28 0332C821 */  addu  $t9, $t9, $s2
/* B84BCC 8010DA2C 93390759 */  lbu   $t9, 0x759($t9)
/* B84BD0 8010DA30 24010003 */  li    $at, 3
/* B84BD4 8010DA34 17210009 */  bne   $t9, $at, .L8010DA5C
.L8010DA38:
/* B84BD8 8010DA38 02402025 */   move  $a0, $s2
/* B84BDC 8010DA3C 2405088C */  li    $a1, 2188
/* B84BE0 8010DA40 0C042DA0 */  jal   func_8010B680
/* B84BE4 8010DA44 00003025 */   move  $a2, $zero
/* B84BE8 8010DA48 3C010001 */  lui   $at, 1
/* B84BEC 8010DA4C 00320821 */  addu  $at, $at, $s2
/* B84BF0 8010DA50 240F0004 */  li    $t7, 4
/* B84BF4 8010DA54 1000006C */  b     .L8010DC08
/* B84BF8 8010DA58 A42F04C6 */   sh    $t7, 0x4c6($at)
.L8010DA5C:
/* B84BFC 8010DA5C 3C188016 */  lui   $t8, %hi(gSaveContext+0x13fa) # $t8, 0x8016
/* B84C00 8010DA60 9718FA5A */  lhu   $t8, %lo(gSaveContext+0x13fa)($t8)
/* B84C04 8010DA64 24010001 */  li    $at, 1
/* B84C08 8010DA68 330E000F */  andi  $t6, $t8, 0xf
/* B84C0C 8010DA6C 11C1000A */  beq   $t6, $at, .L8010DA98
/* B84C10 8010DA70 2465088D */   addiu $a1, $v1, 0x88d
/* B84C14 8010DA74 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B84C18 8010DA78 02402025 */  move  $a0, $s2
/* B84C1C 8010DA7C 0C042DA0 */  jal   func_8010B680
/* B84C20 8010DA80 00003025 */   move  $a2, $zero
/* B84C24 8010DA84 3C010001 */  lui   $at, 1
/* B84C28 8010DA88 00320821 */  addu  $at, $at, $s2
/* B84C2C 8010DA8C 24190001 */  li    $t9, 1
/* B84C30 8010DA90 1000005D */  b     .L8010DC08
/* B84C34 8010DA94 A43904C6 */   sh    $t9, 0x4c6($at)
.L8010DA98:
/* B84C38 8010DA98 0C041B33 */  jal   func_80106CCC
/* B84C3C 8010DA9C 02402025 */   move  $a0, $s2
/* B84C40 8010DAA0 10000059 */  b     .L8010DC08
/* B84C44 8010DAA4 00000000 */   nop   
.L8010DAA8:
/* B84C48 8010DAA8 0C041B33 */  jal   func_80106CCC
/* B84C4C 8010DAAC 02402025 */   move  $a0, $s2
/* B84C50 8010DAB0 960F63EC */  lhu   $t7, 0x63ec($s0)
/* B84C54 8010DAB4 24010007 */  li    $at, 7
/* B84C58 8010DAB8 15E10005 */  bne   $t7, $at, .L8010DAD0
/* B84C5C 8010DABC 3C098016 */   lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B84C60 8010DAC0 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B84C64 8010DAC4 8D2E0000 */  lw    $t6, ($t1)
/* B84C68 8010DAC8 24180001 */  li    $t8, 1
/* B84C6C 8010DACC A5D805BE */  sh    $t8, 0x5be($t6)
.L8010DAD0:
/* B84C70 8010DAD0 3C048015 */  lui   $a0, %hi(D_801545E4) # $a0, 0x8015
/* B84C74 8010DAD4 0C00084C */  jal   osSyncPrintf
/* B84C78 8010DAD8 248445E4 */   addiu $a0, %lo(D_801545E4) # addiu $a0, $a0, 0x45e4
/* B84C7C 8010DADC 3C048015 */  lui   $a0, %hi(D_801545EC) # $a0, 0x8015
/* B84C80 8010DAE0 248445EC */  addiu $a0, %lo(D_801545EC) # addiu $a0, $a0, 0x45ec
/* B84C84 8010DAE4 960563EC */  lhu   $a1, 0x63ec($s0)
/* B84C88 8010DAE8 0C00084C */  jal   osSyncPrintf
/* B84C8C 8010DAEC 960663F0 */   lhu   $a2, 0x63f0($s0)
/* B84C90 8010DAF0 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B84C94 8010DAF4 24010029 */  li    $at, 41
/* B84C98 8010DAF8 1441000C */  bne   $v0, $at, .L8010DB2C
/* B84C9C 8010DAFC 3C010001 */   lui   $at, 1
/* B84CA0 8010DB00 00320821 */  addu  $at, $at, $s2
/* B84CA4 8010DB04 24190001 */  li    $t9, 1
/* B84CA8 8010DB08 A43904C6 */  sh    $t9, 0x4c6($at)
/* B84CAC 8010DB0C 960F63EC */  lhu   $t7, 0x63ec($s0)
/* B84CB0 8010DB10 2405000C */  li    $a1, 12
/* B84CB4 8010DB14 14AF0034 */  bne   $a1, $t7, .L8010DBE8
/* B84CB8 8010DB18 3C010001 */   lui   $at, 1
/* B84CBC 8010DB1C 00320821 */  addu  $at, $at, $s2
/* B84CC0 8010DB20 2418000B */  li    $t8, 11
/* B84CC4 8010DB24 10000030 */  b     .L8010DBE8
/* B84CC8 8010DB28 A43804C6 */   sh    $t8, 0x4c6($at)
.L8010DB2C:
/* B84CCC 8010DB2C 2841001C */  slti  $at, $v0, 0x1c
/* B84CD0 8010DB30 14200017 */  bnez  $at, .L8010DB90
/* B84CD4 8010DB34 3C048015 */   lui   $a0, %hi(D_80154618) # $a0, 0x8015
/* B84CD8 8010DB38 0C00084C */  jal   osSyncPrintf
/* B84CDC 8010DB3C 24844618 */   addiu $a0, %lo(D_80154618) # addiu $a0, $a0, 0x4618
/* B84CE0 8010DB40 960663F0 */  lhu   $a2, 0x63f0($s0)
/* B84CE4 8010DB44 3C048015 */  lui   $a0, %hi(D_80154620) # $a0, 0x8015
/* B84CE8 8010DB48 24844620 */  addiu $a0, %lo(D_80154620) # addiu $a0, $a0, 0x4620
/* B84CEC 8010DB4C 2405001C */  li    $a1, 28
/* B84CF0 8010DB50 0C00084C */  jal   osSyncPrintf
/* B84CF4 8010DB54 24C6FFE4 */   addiu $a2, $a2, -0x1c
/* B84CF8 8010DB58 960363EC */  lhu   $v1, 0x63ec($s0)
/* B84CFC 8010DB5C 960E63F0 */  lhu   $t6, 0x63f0($s0)
/* B84D00 8010DB60 2479001C */  addiu $t9, $v1, 0x1c
/* B84D04 8010DB64 15D90005 */  bne   $t6, $t9, .L8010DB7C
/* B84D08 8010DB68 3C010001 */   lui   $at, 1
/* B84D0C 8010DB6C 00320821 */  addu  $at, $at, $s2
/* B84D10 8010DB70 240F0003 */  li    $t7, 3
/* B84D14 8010DB74 1000001C */  b     .L8010DBE8
/* B84D18 8010DB78 A42F04C6 */   sh    $t7, 0x4c6($at)
.L8010DB7C:
/* B84D1C 8010DB7C 3C010001 */  lui   $at, 1
/* B84D20 8010DB80 00320821 */  addu  $at, $at, $s2
/* B84D24 8010DB84 2478FFFF */  addiu $t8, $v1, -1
/* B84D28 8010DB88 10000017 */  b     .L8010DBE8
/* B84D2C 8010DB8C A43804C6 */   sh    $t8, 0x4c6($at)
.L8010DB90:
/* B84D30 8010DB90 3C048015 */  lui   $a0, %hi(D_80154644) # $a0, 0x8015
/* B84D34 8010DB94 0C00084C */  jal   osSyncPrintf
/* B84D38 8010DB98 24844644 */   addiu $a0, %lo(D_80154644) # addiu $a0, $a0, 0x4644
/* B84D3C 8010DB9C 960663F0 */  lhu   $a2, 0x63f0($s0)
/* B84D40 8010DBA0 3C048015 */  lui   $a0, %hi(D_8015464C) # $a0, 0x8015
/* B84D44 8010DBA4 2484464C */  addiu $a0, %lo(D_8015464C) # addiu $a0, $a0, 0x464c
/* B84D48 8010DBA8 2405000F */  li    $a1, 15
/* B84D4C 8010DBAC 0C00084C */  jal   osSyncPrintf
/* B84D50 8010DBB0 24C6FFF1 */   addiu $a2, $a2, -0xf
/* B84D54 8010DBB4 961963EC */  lhu   $t9, 0x63ec($s0)
/* B84D58 8010DBB8 960E63F0 */  lhu   $t6, 0x63f0($s0)
/* B84D5C 8010DBBC 272F000F */  addiu $t7, $t9, 0xf
/* B84D60 8010DBC0 15CF0005 */  bne   $t6, $t7, .L8010DBD8
/* B84D64 8010DBC4 3C010001 */   lui   $at, 1
/* B84D68 8010DBC8 00320821 */  addu  $at, $at, $s2
/* B84D6C 8010DBCC 24180003 */  li    $t8, 3
/* B84D70 8010DBD0 10000005 */  b     .L8010DBE8
/* B84D74 8010DBD4 A43804C6 */   sh    $t8, 0x4c6($at)
.L8010DBD8:
/* B84D78 8010DBD8 3C010001 */  lui   $at, 1
/* B84D7C 8010DBDC 00320821 */  addu  $at, $at, $s2
/* B84D80 8010DBE0 24190004 */  li    $t9, 4
/* B84D84 8010DBE4 A43904C6 */  sh    $t9, 0x4c6($at)
.L8010DBE8:
/* B84D88 8010DBE8 3C048015 */  lui   $a0, %hi(D_8015466C) # $a0, 0x8015
/* B84D8C 8010DBEC 0C00084C */  jal   osSyncPrintf
/* B84D90 8010DBF0 2484466C */   addiu $a0, %lo(D_8015466C) # addiu $a0, $a0, 0x466c
/* B84D94 8010DBF4 8FAE008C */  lw    $t6, 0x8c($sp)
/* B84D98 8010DBF8 3C048015 */  lui   $a0, %hi(D_80154670) # $a0, 0x8015
/* B84D9C 8010DBFC 24844670 */  addiu $a0, %lo(D_80154670) # addiu $a0, $a0, 0x4670
/* B84DA0 8010DC00 0C00084C */  jal   osSyncPrintf
/* B84DA4 8010DC04 95C504C6 */   lhu   $a1, 0x4c6($t6)
.L8010DC08:
/* B84DA8 8010DC08 10000419 */  b     .L8010EC70
/* B84DAC 8010DC0C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010DC10
/* B84DB0 8010DC10 0C03B8FE */  jal   func_800EE3F8
/* B84DB4 8010DC14 00000000 */   nop   
/* B84DB8 8010DC18 26217FFF */  addiu $at, $s1, 0x7fff
/* B84DBC 8010DC1C AC2262B9 */  sw    $v0, 0x62b9($at)
/* B84DC0 8010DC20 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B84DC4 8010DC24 90EF0001 */  lbu   $t7, 1($a3)
/* B84DC8 8010DC28 15E00016 */  bnez  $t7, .L8010DC84
/* B84DCC 8010DC2C 00000000 */   nop   
/* B84DD0 8010DC30 92186304 */  lbu   $t8, 0x6304($s0)
/* B84DD4 8010DC34 24010013 */  li    $at, 19
/* B84DD8 8010DC38 17010004 */  bne   $t8, $at, .L8010DC4C
/* B84DDC 8010DC3C 24190014 */   li    $t9, 20
/* B84DE0 8010DC40 26217FFF */  addiu $at, $s1, 0x7fff
/* B84DE4 8010DC44 10000004 */  b     .L8010DC58
/* B84DE8 8010DC48 A0396305 */   sb    $t9, 0x6305($at)
.L8010DC4C:
/* B84DEC 8010DC4C 240E001A */  li    $t6, 26
/* B84DF0 8010DC50 26217FFF */  addiu $at, $s1, 0x7fff
/* B84DF4 8010DC54 A02E6305 */  sb    $t6, 0x6305($at)
.L8010DC58:
/* B84DF8 8010DC58 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B84DFC 8010DC5C 3C068015 */  lui   $a2, %hi(D_8015394C)
/* B84E00 8010DC60 3C048015 */  lui   $a0, %hi(D_80154688) # $a0, 0x8015
/* B84E04 8010DC64 91E30002 */  lbu   $v1, 2($t7)
/* B84E08 8010DC68 24844688 */  addiu $a0, %lo(D_80154688) # addiu $a0, $a0, 0x4688
/* B84E0C 8010DC6C 00C33021 */  addu  $a2, $a2, $v1
/* B84E10 8010DC70 90C6394C */  lbu   $a2, %lo(D_8015394C)($a2)
/* B84E14 8010DC74 0C00084C */  jal   osSyncPrintf
/* B84E18 8010DC78 00602825 */   move  $a1, $v1
/* B84E1C 8010DC7C 10000023 */  b     .L8010DD0C
/* B84E20 8010DC80 02402025 */   move  $a0, $s2
.L8010DC84:
/* B84E24 8010DC84 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B84E28 8010DC88 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B84E2C 8010DC8C 85180000 */  lh    $t8, ($t0)
/* B84E30 8010DC90 53000008 */  beql  $t8, $zero, .L8010DCB4
/* B84E34 8010DC94 90E30002 */   lbu   $v1, 2($a3)
/* B84E38 8010DC98 90F90002 */  lbu   $t9, 2($a3)
/* B84E3C 8010DC9C 24010001 */  li    $at, 1
/* B84E40 8010DCA0 57210004 */  bnel  $t9, $at, .L8010DCB4
/* B84E44 8010DCA4 90E30002 */   lbu   $v1, 2($a3)
/* B84E48 8010DCA8 A5000000 */  sh    $zero, ($t0)
/* B84E4C 8010DCAC 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B84E50 8010DCB0 90E30002 */  lbu   $v1, 2($a3)
.L8010DCB4:
/* B84E54 8010DCB4 50600015 */  beql  $v1, $zero, .L8010DD0C
/* B84E58 8010DCB8 02402025 */   move  $a0, $s2
/* B84E5C 8010DCBC 850E0000 */  lh    $t6, ($t0)
/* B84E60 8010DCC0 25CF0001 */  addiu $t7, $t6, 1
/* B84E64 8010DCC4 546F0011 */  bnel  $v1, $t7, .L8010DD0C
/* B84E68 8010DCC8 02402025 */   move  $a0, $s2
/* B84E6C 8010DCCC 90E20000 */  lbu   $v0, ($a3)
/* B84E70 8010DCD0 3C018015 */  lui   $at, %hi(D_8015394B)
/* B84E74 8010DCD4 00230821 */  addu  $at, $at, $v1
/* B84E78 8010DCD8 A022394B */  sb    $v0, %lo(D_8015394B)($at)
/* B84E7C 8010DCDC 26217FFF */  addiu $at, $s1, 0x7fff
/* B84E80 8010DCE0 A0226411 */  sb    $v0, 0x6411($at)
/* B84E84 8010DCE4 8E1962B8 */  lw    $t9, 0x62b8($s0)
/* B84E88 8010DCE8 3C018015 */  lui   $at, %hi(D_8015394C)
/* B84E8C 8010DCEC 241800FF */  li    $t8, 255
/* B84E90 8010DCF0 932E0002 */  lbu   $t6, 2($t9)
/* B84E94 8010DCF4 002E0821 */  addu  $at, $at, $t6
/* B84E98 8010DCF8 A038394C */  sb    $t8, %lo(D_8015394C)($at)
/* B84E9C 8010DCFC 850F0000 */  lh    $t7, ($t0)
/* B84EA0 8010DD00 25F90001 */  addiu $t9, $t7, 1
/* B84EA4 8010DD04 A5190000 */  sh    $t9, ($t0)
glabel L8010DD08
/* B84EA8 8010DD08 02402025 */  move  $a0, $s2
.L8010DD0C:
/* B84EAC 8010DD0C 0C0421AC */  jal   func_801086B0
/* B84EB0 8010DD10 27A50140 */   addiu $a1, $sp, 0x140
/* B84EB4 8010DD14 100003D6 */  b     .L8010EC70
/* B84EB8 8010DD18 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010DD1C
/* B84EBC 8010DD1C 0C03B8F5 */  jal   func_800EE3D4
/* B84EC0 8010DD20 00000000 */   nop   
/* B84EC4 8010DD24 26217FFF */  addiu $at, $s1, 0x7fff
/* B84EC8 8010DD28 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B84ECC 8010DD2C 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B84ED0 8010DD30 90E30002 */  lbu   $v1, 2($a3)
/* B84ED4 8010DD34 10600013 */  beqz  $v1, .L8010DD84
/* B84ED8 8010DD38 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B84EDC 8010DD3C 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B84EE0 8010DD40 85050000 */  lh    $a1, ($t0)
/* B84EE4 8010DD44 24B80001 */  addiu $t8, $a1, 1
/* B84EE8 8010DD48 5478000F */  bnel  $v1, $t8, .L8010DD88
/* B84EEC 8010DD4C 90E60001 */   lbu   $a2, 1($a3)
/* B84EF0 8010DD50 90EE0000 */  lbu   $t6, ($a3)
/* B84EF4 8010DD54 3C018015 */  lui   $at, %hi(D_8015394B)
/* B84EF8 8010DD58 00230821 */  addu  $at, $at, $v1
/* B84EFC 8010DD5C A02E394B */  sb    $t6, %lo(D_8015394B)($at)
/* B84F00 8010DD60 8E1962B8 */  lw    $t9, 0x62b8($s0)
/* B84F04 8010DD64 3C018015 */  lui   $at, %hi(D_8015394C)
/* B84F08 8010DD68 240F00FF */  li    $t7, 255
/* B84F0C 8010DD6C 93380002 */  lbu   $t8, 2($t9)
/* B84F10 8010DD70 24AE0001 */  addiu $t6, $a1, 1
/* B84F14 8010DD74 00380821 */  addu  $at, $at, $t8
/* B84F18 8010DD78 A02F394C */  sb    $t7, %lo(D_8015394C)($at)
/* B84F1C 8010DD7C A50E0000 */  sh    $t6, ($t0)
/* B84F20 8010DD80 8E0762B8 */  lw    $a3, 0x62b8($s0)
.L8010DD84:
/* B84F24 8010DD84 90E60001 */  lbu   $a2, 1($a3)
.L8010DD88:
/* B84F28 8010DD88 28C1000D */  slti  $at, $a2, 0xd
/* B84F2C 8010DD8C 10200030 */  beqz  $at, .L8010DE50
/* B84F30 8010DD90 3C048015 */   lui   $a0, %hi(D_8015469C) # $a0, 0x8015
/* B84F34 8010DD94 2484469C */  addiu $a0, %lo(D_8015469C) # addiu $a0, $a0, 0x469c
/* B84F38 8010DD98 0C00084C */  jal   osSyncPrintf
/* B84F3C 8010DD9C 960563F0 */   lhu   $a1, 0x63f0($s0)
/* B84F40 8010DDA0 8E1962B8 */  lw    $t9, 0x62b8($s0)
/* B84F44 8010DDA4 26217FFF */  addiu $at, $s1, 0x7fff
/* B84F48 8010DDA8 2418001C */  li    $t8, 28
/* B84F4C 8010DDAC 932F0001 */  lbu   $t7, 1($t9)
/* B84F50 8010DDB0 A0386305 */  sb    $t8, 0x6305($at)
/* B84F54 8010DDB4 3C058015 */  lui   $a1, %hi(D_8015396C)
/* B84F58 8010DDB8 A42F63ED */  sh    $t7, 0x63ed($at)
/* B84F5C 8010DDBC 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B84F60 8010DDC0 02402025 */  move  $a0, $s2
/* B84F64 8010DDC4 91D90001 */  lbu   $t9, 1($t6)
/* B84F68 8010DDC8 00197840 */  sll   $t7, $t9, 1
/* B84F6C 8010DDCC 00AF2821 */  addu  $a1, $a1, $t7
/* B84F70 8010DDD0 84A5396C */  lh    $a1, %lo(D_8015396C)($a1)
/* B84F74 8010DDD4 24A5005A */  addiu $a1, $a1, 0x5a
/* B84F78 8010DDD8 0C021344 */  jal   func_80084D10
/* B84F7C 8010DDDC 30A500FF */   andi  $a1, $a1, 0xff
/* B84F80 8010DDE0 3C048015 */  lui   $a0, %hi(D_801546C8) # $a0, 0x8015
/* B84F84 8010DDE4 0C00084C */  jal   osSyncPrintf
/* B84F88 8010DDE8 248446C8 */   addiu $a0, %lo(D_801546C8) # addiu $a0, $a0, 0x46c8
/* B84F8C 8010DDEC 8E1862B8 */  lw    $t8, 0x62b8($s0)
/* B84F90 8010DDF0 3C048015 */  lui   $a0, %hi(D_801546D0) # $a0, 0x8015
/* B84F94 8010DDF4 248446D0 */  addiu $a0, %lo(D_801546D0) # addiu $a0, $a0, 0x46d0
/* B84F98 8010DDF8 93050001 */  lbu   $a1, 1($t8)
/* B84F9C 8010DDFC 0C00084C */  jal   osSyncPrintf
/* B84FA0 8010DE00 24A5005A */   addiu $a1, $a1, 0x5a
/* B84FA4 8010DE04 3C048015 */  lui   $a0, %hi(D_801546F0) # $a0, 0x8015
/* B84FA8 8010DE08 0C00084C */  jal   osSyncPrintf
/* B84FAC 8010DE0C 248446F0 */   addiu $a0, %lo(D_801546F0) # addiu $a0, $a0, 0x46f0
/* B84FB0 8010DE10 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B84FB4 8010DE14 240E0014 */  li    $t6, 20
/* B84FB8 8010DE18 26217FFF */  addiu $at, $s1, 0x7fff
/* B84FBC 8010DE1C 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B84FC0 8010DE20 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B84FC4 8010DE24 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B84FC8 8010DE28 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B84FCC 8010DE2C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B84FD0 8010DE30 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B84FD4 8010DE34 AFB90014 */  sw    $t9, 0x14($sp)
/* B84FD8 8010DE38 AFA70010 */  sw    $a3, 0x10($sp)
/* B84FDC 8010DE3C 24044807 */  li    $a0, 18439
/* B84FE0 8010DE40 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B84FE4 8010DE44 24060004 */   li    $a2, 4
/* B84FE8 8010DE48 10000014 */  b     .L8010DE9C
/* B84FEC 8010DE4C 02402025 */   move  $a0, $s2
.L8010DE50:
/* B84FF0 8010DE50 240100FF */  li    $at, 255
/* B84FF4 8010DE54 14C10010 */  bne   $a2, $at, .L8010DE98
/* B84FF8 8010DE58 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B84FFC 8010DE5C 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B85000 8010DE60 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85004 8010DE64 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B85008 8010DE68 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B8500C 8010DE6C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85010 8010DE70 AFAF0014 */  sw    $t7, 0x14($sp)
/* B85014 8010DE74 AFA70010 */  sw    $a3, 0x10($sp)
/* B85018 8010DE78 24044827 */  li    $a0, 18471
/* B8501C 8010DE7C 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B85020 8010DE80 24060004 */   li    $a2, 4
/* B85024 8010DE84 26217FFF */  addiu $at, $s1, 0x7fff
/* B85028 8010DE88 2418000A */  li    $t8, 10
/* B8502C 8010DE8C 240E001D */  li    $t6, 29
/* B85030 8010DE90 A03863E8 */  sb    $t8, 0x63e8($at)
/* B85034 8010DE94 A02E6305 */  sb    $t6, 0x6305($at)
.L8010DE98:
/* B85038 8010DE98 02402025 */  move  $a0, $s2
.L8010DE9C:
/* B8503C 8010DE9C 0C0421AC */  jal   func_801086B0
/* B85040 8010DEA0 27A50140 */   addiu $a1, $sp, 0x140
/* B85044 8010DEA4 10000372 */  b     .L8010EC70
/* B85048 8010DEA8 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010DEAC
/* B8504C 8010DEAC 02402025 */  move  $a0, $s2
/* B85050 8010DEB0 0C0421AC */  jal   func_801086B0
/* B85054 8010DEB4 27A50140 */   addiu $a1, $sp, 0x140
/* B85058 8010DEB8 0C041AF2 */  jal   func_80106BC8
/* B8505C 8010DEBC 02402025 */   move  $a0, $s2
/* B85060 8010DEC0 10400003 */  beqz  $v0, .L8010DED0
/* B85064 8010DEC4 02402025 */   move  $a0, $s2
/* B85068 8010DEC8 0C042F56 */  jal   func_8010BD58
/* B8506C 8010DECC 960563F0 */   lhu   $a1, 0x63f0($s0)
.L8010DED0:
/* B85070 8010DED0 10000367 */  b     .L8010EC70
/* B85074 8010DED4 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010DED8
/* B85078 8010DED8 3C048015 */  lui   $a0, %hi(D_801546F4) # $a0, 0x8015
/* B8507C 8010DEDC 0C00084C */  jal   osSyncPrintf
/* B85080 8010DEE0 248446F4 */   addiu $a0, %lo(D_801546F4) # addiu $a0, $a0, 0x46f4
/* B85084 8010DEE4 0C03B85C */  jal   func_800EE170
/* B85088 8010DEE8 24040001 */   li    $a0, 1
/* B8508C 8010DEEC 0C03B616 */  jal   func_800ED858
/* B85090 8010DEF0 24040001 */   li    $a0, 1
/* B85094 8010DEF4 0C03B8F2 */  jal   func_800EE3C8
/* B85098 8010DEF8 00000000 */   nop   
/* B8509C 8010DEFC 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B850A0 8010DF00 26217FFF */  addiu $at, $s1, 0x7fff
/* B850A4 8010DF04 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B850A8 8010DF08 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B850AC 8010DF0C A5000000 */  sh    $zero, ($t0)
/* B850B0 8010DF10 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B850B4 8010DF14 85190000 */  lh    $t9, ($t0)
/* B850B8 8010DF18 3C098015 */  lui   $t1, %hi(D_8014B2FC) # $t1, 0x8015
/* B850BC 8010DF1C 2529B2FC */  addiu $t1, %lo(D_8014B2FC) # addiu $t1, $t1, -0x4d04
/* B850C0 8010DF20 A1F90002 */  sb    $t9, 2($t7)
/* B850C4 8010DF24 0C041A6C */  jal   func_801069B0
/* B850C8 8010DF28 A5200000 */   sh    $zero, ($t1)
/* B850CC 8010DF2C 24180022 */  li    $t8, 34
/* B850D0 8010DF30 26217FFF */  addiu $at, $s1, 0x7fff
/* B850D4 8010DF34 A0386305 */  sb    $t8, 0x6305($at)
/* B850D8 8010DF38 02402025 */  move  $a0, $s2
/* B850DC 8010DF3C 0C0421AC */  jal   func_801086B0
/* B850E0 8010DF40 27A50140 */   addiu $a1, $sp, 0x140
/* B850E4 8010DF44 1000034A */  b     .L8010EC70
/* B850E8 8010DF48 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010DF4C
/* B850EC 8010DF4C 0C03B8F2 */  jal   func_800EE3C8
/* B850F0 8010DF50 00000000 */   nop   
/* B850F4 8010DF54 26217FFF */  addiu $at, $s1, 0x7fff
/* B850F8 8010DF58 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B850FC 8010DF5C 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B85100 8010DF60 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85104 8010DF64 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85108 8010DF68 3C048015 */  lui   $a0, %hi(D_80154708) # $a0, 0x8015
/* B8510C 8010DF6C 24844708 */  addiu $a0, %lo(D_80154708) # addiu $a0, $a0, 0x4708
/* B85110 8010DF70 85050000 */  lh    $a1, ($t0)
/* B85114 8010DF74 0C00084C */  jal   osSyncPrintf
/* B85118 8010DF78 91C60002 */   lbu   $a2, 2($t6)
/* B8511C 8010DF7C 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85120 8010DF80 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85124 8010DF84 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85128 8010DF88 90E30002 */  lbu   $v1, 2($a3)
/* B8512C 8010DF8C 5060003F */  beql  $v1, $zero, .L8010E08C
/* B85130 8010DF90 90E60001 */   lbu   $a2, 1($a3)
/* B85134 8010DF94 85190000 */  lh    $t9, ($t0)
/* B85138 8010DF98 272F0001 */  addiu $t7, $t9, 1
/* B8513C 8010DF9C 146F003A */  bne   $v1, $t7, .L8010E088
/* B85140 8010DFA0 3C098015 */   lui   $t1, %hi(D_8014B2FC) # $t1, 0x8015
/* B85144 8010DFA4 2529B2FC */  addiu $t1, %lo(D_8014B2FC) # addiu $t1, $t1, -0x4d04
/* B85148 8010DFA8 85250000 */  lh    $a1, ($t1)
/* B8514C 8010DFAC 28A10008 */  slti  $at, $a1, 8
/* B85150 8010DFB0 14200013 */  bnez  $at, .L8010E000
/* B85154 8010DFB4 24A2FFF8 */   addiu $v0, $a1, -8
/* B85158 8010DFB8 3042FFFF */  andi  $v0, $v0, 0xffff
/* B8515C 8010DFBC 00003825 */  move  $a3, $zero
.L8010DFC0:
/* B85160 8010DFC0 3C188015 */  lui   $t8, %hi(D_8015394C) # $t8, 0x8015
/* B85164 8010DFC4 2718394C */  addiu $t8, %lo(D_8015394C) # addiu $t8, $t8, 0x394c
/* B85168 8010DFC8 24E70001 */  addiu $a3, $a3, 1
/* B8516C 8010DFCC 00587021 */  addu  $t6, $v0, $t8
/* B85170 8010DFD0 91D90001 */  lbu   $t9, 1($t6)
/* B85174 8010DFD4 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B85178 8010DFD8 00587821 */  addu  $t7, $v0, $t8
/* B8517C 8010DFDC 24420001 */  addiu $v0, $v0, 1
/* B85180 8010DFE0 28E10008 */  slti  $at, $a3, 8
/* B85184 8010DFE4 3042FFFF */  andi  $v0, $v0, 0xffff
/* B85188 8010DFE8 1420FFF5 */  bnez  $at, .L8010DFC0
/* B8518C 8010DFEC A1F90000 */   sb    $t9, ($t7)
/* B85190 8010DFF0 24AEFFFF */  addiu $t6, $a1, -1
/* B85194 8010DFF4 A52E0000 */  sh    $t6, ($t1)
/* B85198 8010DFF8 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B8519C 8010DFFC 85250000 */  lh    $a1, ($t1)
.L8010E000:
/* B851A0 8010E000 3C048015 */  lui   $a0, %hi(D_80154720) # $a0, 0x8015
/* B851A4 8010E004 24844720 */  addiu $a0, %lo(D_80154720) # addiu $a0, $a0, 0x4720
/* B851A8 8010E008 0C00084C */  jal   osSyncPrintf
/* B851AC 8010E00C 90E60000 */   lbu   $a2, ($a3)
/* B851B0 8010E010 8E1862B8 */  lw    $t8, 0x62b8($s0)
/* B851B4 8010E014 3C098015 */  lui   $t1, %hi(D_8014B2FC) # $t1, 0x8015
/* B851B8 8010E018 2529B2FC */  addiu $t1, %lo(D_8014B2FC) # addiu $t1, $t1, -0x4d04
/* B851BC 8010E01C 85390000 */  lh    $t9, ($t1)
/* B851C0 8010E020 93020000 */  lbu   $v0, ($t8)
/* B851C4 8010E024 3C018015 */  lui   $at, %hi(D_8015394C)
/* B851C8 8010E028 00390821 */  addu  $at, $at, $t9
/* B851CC 8010E02C A022394C */  sb    $v0, %lo(D_8015394C)($at)
/* B851D0 8010E030 26217FFF */  addiu $at, $s1, 0x7fff
/* B851D4 8010E034 A0226411 */  sb    $v0, 0x6411($at)
/* B851D8 8010E038 852F0000 */  lh    $t7, ($t1)
/* B851DC 8010E03C 3C018015 */  lui   $at, %hi(D_8015394C)
/* B851E0 8010E040 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B851E4 8010E044 25EE0001 */  addiu $t6, $t7, 1
/* B851E8 8010E048 A52E0000 */  sh    $t6, ($t1)
/* B851EC 8010E04C 85390000 */  lh    $t9, ($t1)
/* B851F0 8010E050 241800FF */  li    $t8, 255
/* B851F4 8010E054 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B851F8 8010E058 00390821 */  addu  $at, $at, $t9
/* B851FC 8010E05C A038394C */  sb    $t8, %lo(D_8015394C)($at)
/* B85200 8010E060 850F0000 */  lh    $t7, ($t0)
/* B85204 8010E064 24010008 */  li    $at, 8
/* B85208 8010E068 25EE0001 */  addiu $t6, $t7, 1
/* B8520C 8010E06C A50E0000 */  sh    $t6, ($t0)
/* B85210 8010E070 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85214 8010E074 90F80002 */  lbu   $t8, 2($a3)
/* B85218 8010E078 57010004 */  bnel  $t8, $at, .L8010E08C
/* B8521C 8010E07C 90E60001 */   lbu   $a2, 1($a3)
/* B85220 8010E080 A5000000 */  sh    $zero, ($t0)
/* B85224 8010E084 8E0762B8 */  lw    $a3, 0x62b8($s0)
.L8010E088:
/* B85228 8010E088 90E60001 */  lbu   $a2, 1($a3)
.L8010E08C:
/* B8522C 8010E08C 3C098015 */  lui   $t1, %hi(D_8014B2FC) # $t1, 0x8015
/* B85230 8010E090 2529B2FC */  addiu $t1, %lo(D_8014B2FC) # addiu $t1, $t1, -0x4d04
/* B85234 8010E094 50C00007 */  beql  $a2, $zero, .L8010E0B4
/* B85238 8010E098 852E0000 */   lh    $t6, ($t1)
/* B8523C 8010E09C 96590020 */  lhu   $t9, 0x20($s2)
/* B85240 8010E0A0 2401BFFF */  li    $at, -16385
/* B85244 8010E0A4 03217827 */  nor   $t7, $t9, $at
/* B85248 8010E0A8 55E00047 */  bnezl $t7, .L8010E1C8
/* B8524C 8010E0AC 02402025 */   move  $a0, $s2
/* B85250 8010E0B0 852E0000 */  lh    $t6, ($t1)
.L8010E0B4:
/* B85254 8010E0B4 11C00007 */  beqz  $t6, .L8010E0D4
/* B85258 8010E0B8 3C048015 */   lui   $a0, %hi(D_80154738) # $a0, 0x8015
/* B8525C 8010E0BC 24844738 */  addiu $a0, %lo(D_80154738) # addiu $a0, $a0, 0x4738
/* B85260 8010E0C0 0C00084C */  jal   osSyncPrintf
/* B85264 8010E0C4 00C02825 */   move  $a1, $a2
/* B85268 8010E0C8 24180001 */  li    $t8, 1
/* B8526C 8010E0CC 3C018016 */  lui   $at, %hi(gSaveContext+0xf40) # $at, 0x8016
/* B85270 8010E0D0 A038F5A0 */  sb    $t8, %lo(gSaveContext+0xf40)($at)
.L8010E0D4:
/* B85274 8010E0D4 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85278 8010E0D8 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B8527C 8010E0DC 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85280 8010E0E0 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B85284 8010E0E4 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B85288 8010E0E8 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B8528C 8010E0EC AFB90014 */  sw    $t9, 0x14($sp)
/* B85290 8010E0F0 AFA70010 */  sw    $a3, 0x10($sp)
/* B85294 8010E0F4 24044827 */  li    $a0, 18471
/* B85298 8010E0F8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B8529C 8010E0FC 24060004 */   li    $a2, 4
/* B852A0 8010E100 3C048015 */  lui   $a0, %hi(D_80154770) # $a0, 0x8015
/* B852A4 8010E104 0C00084C */  jal   osSyncPrintf
/* B852A8 8010E108 24844770 */   addiu $a0, %lo(D_80154770) # addiu $a0, $a0, 0x4770
/* B852AC 8010E10C 0C03B85C */  jal   func_800EE170
/* B852B0 8010E110 00002025 */   move  $a0, $zero
/* B852B4 8010E114 240F000A */  li    $t7, 10
/* B852B8 8010E118 26217FFF */  addiu $at, $s1, 0x7fff
/* B852BC 8010E11C A02F63E8 */  sb    $t7, 0x63e8($at)
/* B852C0 8010E120 3C010001 */  lui   $at, 1
/* B852C4 8010E124 00320821 */  addu  $at, $at, $s2
/* B852C8 8010E128 240E0004 */  li    $t6, 4
/* B852CC 8010E12C A42E04C6 */  sh    $t6, 0x4c6($at)
/* B852D0 8010E130 0C041B33 */  jal   func_80106CCC
/* B852D4 8010E134 02402025 */   move  $a0, $s2
/* B852D8 8010E138 3C048015 */  lui   $a0, %hi(D_80154780) # $a0, 0x8015
/* B852DC 8010E13C 0C00084C */  jal   osSyncPrintf
/* B852E0 8010E140 24844780 */   addiu $a0, %lo(D_80154780) # addiu $a0, $a0, 0x4780
/* B852E4 8010E144 3C048015 */  lui   $a0, %hi(D_801547A4) # $a0, 0x8015
/* B852E8 8010E148 0C00084C */  jal   osSyncPrintf
/* B852EC 8010E14C 248447A4 */   addiu $a0, %lo(D_801547A4) # addiu $a0, $a0, 0x47a4
/* B852F0 8010E150 3C048015 */  lui   $a0, %hi(D_801547AC) # $a0, 0x8015
/* B852F4 8010E154 0C00084C */  jal   osSyncPrintf
/* B852F8 8010E158 248447AC */   addiu $a0, %lo(D_801547AC) # addiu $a0, $a0, 0x47ac
/* B852FC 8010E15C 3C048016 */  lui   $a0, %hi(gSaveContext+0xf41) # $a0, 0x8016
/* B85300 8010E160 3C058013 */  lui   $a1, %hi(D_80131BE4) # $a1, 0x8013
/* B85304 8010E164 8CA51BE4 */  lw    $a1, %lo(D_80131BE4)($a1)
/* B85308 8010E168 2484F5A1 */  addiu $a0, %lo(gSaveContext+0xf41) # addiu $a0, $a0, -0xa5f
/* B8530C 8010E16C 0C01A508 */  jal   MemCopy
/* B85310 8010E170 24060360 */   li    $a2, 864
/* B85314 8010E174 00003825 */  move  $a3, $zero
.L8010E178:
/* B85318 8010E178 3C058016 */  lui   $a1, %hi(gSaveContext+0xf41)
/* B8531C 8010E17C 00A72821 */  addu  $a1, $a1, $a3
/* B85320 8010E180 3C048015 */  lui   $a0, %hi(D_801547F4) # $a0, 0x8015
/* B85324 8010E184 248447F4 */  addiu $a0, %lo(D_801547F4) # addiu $a0, $a0, 0x47f4
/* B85328 8010E188 90A5F5A1 */  lbu   $a1, %lo(gSaveContext+0xf41)($a1)
/* B8532C 8010E18C 0C00084C */  jal   osSyncPrintf
/* B85330 8010E190 A7A70138 */   sh    $a3, 0x138($sp)
/* B85334 8010E194 97A70138 */  lhu   $a3, 0x138($sp)
/* B85338 8010E198 24E70001 */  addiu $a3, $a3, 1
/* B8533C 8010E19C 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B85340 8010E1A0 28E10360 */  slti  $at, $a3, 0x360
/* B85344 8010E1A4 1420FFF4 */  bnez  $at, .L8010E178
/* B85348 8010E1A8 00000000 */   nop   
/* B8534C 8010E1AC 3C048015 */  lui   $a0, %hi(D_801547FC) # $a0, 0x8015
/* B85350 8010E1B0 0C00084C */  jal   osSyncPrintf
/* B85354 8010E1B4 248447FC */   addiu $a0, %lo(D_801547FC) # addiu $a0, $a0, 0x47fc
/* B85358 8010E1B8 3C048015 */  lui   $a0, %hi(D_80154800) # $a0, 0x8015
/* B8535C 8010E1BC 0C00084C */  jal   osSyncPrintf
/* B85360 8010E1C0 24844800 */   addiu $a0, %lo(D_80154800) # addiu $a0, $a0, 0x4800
/* B85364 8010E1C4 02402025 */  move  $a0, $s2
.L8010E1C8:
/* B85368 8010E1C8 0C0421AC */  jal   func_801086B0
/* B8536C 8010E1CC 27A50140 */   addiu $a1, $sp, 0x140
/* B85370 8010E1D0 100002A7 */  b     .L8010EC70
/* B85374 8010E1D4 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E1D8
/* B85378 8010E1D8 0C03B8FE */  jal   func_800EE3F8
/* B8537C 8010E1DC 00000000 */   nop   
/* B85380 8010E1E0 26217FFF */  addiu $at, $s1, 0x7fff
/* B85384 8010E1E4 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85388 8010E1E8 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B8538C 8010E1EC 90E30002 */  lbu   $v1, 2($a3)
/* B85390 8010E1F0 10600033 */  beqz  $v1, .L8010E2C0
/* B85394 8010E1F4 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85398 8010E1F8 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B8539C 8010E1FC 85050000 */  lh    $a1, ($t0)
/* B853A0 8010E200 24B80001 */  addiu $t8, $a1, 1
/* B853A4 8010E204 1478002E */  bne   $v1, $t8, .L8010E2C0
/* B853A8 8010E208 3C098015 */   lui   $t1, %hi(D_8014B2FC) # $t1, 0x8015
/* B853AC 8010E20C 2529B2FC */  addiu $t1, %lo(D_8014B2FC) # addiu $t1, $t1, -0x4d04
/* B853B0 8010E210 85230000 */  lh    $v1, ($t1)
/* B853B4 8010E214 28610008 */  slti  $at, $v1, 8
/* B853B8 8010E218 14200013 */  bnez  $at, .L8010E268
/* B853BC 8010E21C 2462FFF8 */   addiu $v0, $v1, -8
/* B853C0 8010E220 3C0A8015 */  lui   $t2, %hi(D_8015394C) # $t2, 0x8015
/* B853C4 8010E224 254A394C */  addiu $t2, %lo(D_8015394C) # addiu $t2, $t2, 0x394c
/* B853C8 8010E228 3042FFFF */  andi  $v0, $v0, 0xffff
/* B853CC 8010E22C 00003825 */  move  $a3, $zero
.L8010E230:
/* B853D0 8010E230 24E70001 */  addiu $a3, $a3, 1
/* B853D4 8010E234 0142C821 */  addu  $t9, $t2, $v0
/* B853D8 8010E238 932F0001 */  lbu   $t7, 1($t9)
/* B853DC 8010E23C 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B853E0 8010E240 01427021 */  addu  $t6, $t2, $v0
/* B853E4 8010E244 24420001 */  addiu $v0, $v0, 1
/* B853E8 8010E248 28E10008 */  slti  $at, $a3, 8
/* B853EC 8010E24C 3042FFFF */  andi  $v0, $v0, 0xffff
/* B853F0 8010E250 1420FFF7 */  bnez  $at, .L8010E230
/* B853F4 8010E254 A1CF0000 */   sb    $t7, ($t6)
/* B853F8 8010E258 2478FFFF */  addiu $t8, $v1, -1
/* B853FC 8010E25C A5380000 */  sh    $t8, ($t1)
/* B85400 8010E260 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85404 8010E264 85230000 */  lh    $v1, ($t1)
.L8010E268:
/* B85408 8010E268 90F90000 */  lbu   $t9, ($a3)
/* B8540C 8010E26C 3C0A8015 */  lui   $t2, %hi(D_8015394C) # $t2, 0x8015
/* B85410 8010E270 254A394C */  addiu $t2, %lo(D_8015394C) # addiu $t2, $t2, 0x394c
/* B85414 8010E274 01437821 */  addu  $t7, $t2, $v1
/* B85418 8010E278 246E0001 */  addiu $t6, $v1, 1
/* B8541C 8010E27C A1F90000 */  sb    $t9, ($t7)
/* B85420 8010E280 A52E0000 */  sh    $t6, ($t1)
/* B85424 8010E284 85390000 */  lh    $t9, ($t1)
/* B85428 8010E288 241800FF */  li    $t8, 255
/* B8542C 8010E28C 24AE0001 */  addiu $t6, $a1, 1
/* B85430 8010E290 01597821 */  addu  $t7, $t2, $t9
/* B85434 8010E294 A1F80000 */  sb    $t8, ($t7)
/* B85438 8010E298 A50E0000 */  sh    $t6, ($t0)
/* B8543C 8010E29C 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85440 8010E2A0 24010008 */  li    $at, 8
/* B85444 8010E2A4 90F90002 */  lbu   $t9, 2($a3)
/* B85448 8010E2A8 17210005 */  bne   $t9, $at, .L8010E2C0
/* B8544C 8010E2AC 00000000 */   nop   
/* B85450 8010E2B0 A5000000 */  sh    $zero, ($t0)
/* B85454 8010E2B4 85180000 */  lh    $t8, ($t0)
/* B85458 8010E2B8 A5380000 */  sh    $t8, ($t1)
/* B8545C 8010E2BC 8E0762B8 */  lw    $a3, 0x62b8($s0)
.L8010E2C0:
/* B85460 8010E2C0 3C048015 */  lui   $a0, %hi(D_80154848) # $a0, 0x8015
/* B85464 8010E2C4 24844848 */  addiu $a0, %lo(D_80154848) # addiu $a0, $a0, 0x4848
/* B85468 8010E2C8 90E50001 */  lbu   $a1, 1($a3)
/* B8546C 8010E2CC 0C00084C */  jal   osSyncPrintf
/* B85470 8010E2D0 00003025 */   move  $a2, $zero
/* B85474 8010E2D4 920263E7 */  lbu   $v0, 0x63e7($s0)
/* B85478 8010E2D8 54400012 */  bnezl $v0, .L8010E324
/* B8547C 8010E2DC 2458FFFF */   addiu $t8, $v0, -1
/* B85480 8010E2E0 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B85484 8010E2E4 91EE0001 */  lbu   $t6, 1($t7)
/* B85488 8010E2E8 15C00010 */  bnez  $t6, .L8010E32C
/* B8548C 8010E2EC 3C048015 */   lui   $a0, %hi(D_80154858) # $a0, 0x8015
/* B85490 8010E2F0 0C00084C */  jal   osSyncPrintf
/* B85494 8010E2F4 24844858 */   addiu $a0, %lo(D_80154858) # addiu $a0, $a0, 0x4858
/* B85498 8010E2F8 0C03B616 */  jal   func_800ED858
/* B8549C 8010E2FC 00002025 */   move  $a0, $zero
/* B854A0 8010E300 3C010001 */  lui   $at, 1
/* B854A4 8010E304 00320821 */  addu  $at, $at, $s2
/* B854A8 8010E308 2419000F */  li    $t9, 15
/* B854AC 8010E30C A43904C6 */  sh    $t9, 0x4c6($at)
/* B854B0 8010E310 0C041B33 */  jal   func_80106CCC
/* B854B4 8010E314 02402025 */   move  $a0, $s2
/* B854B8 8010E318 10000004 */  b     .L8010E32C
/* B854BC 8010E31C 00000000 */   nop   
/* B854C0 8010E320 2458FFFF */  addiu $t8, $v0, -1
.L8010E324:
/* B854C4 8010E324 26217FFF */  addiu $at, $s1, 0x7fff
/* B854C8 8010E328 A03863E8 */  sb    $t8, 0x63e8($at)
.L8010E32C:
/* B854CC 8010E32C 10000250 */  b     .L8010EC70
/* B854D0 8010E330 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E334
/* B854D4 8010E334 0C03B85C */  jal   func_800EE170
/* B854D8 8010E338 24040002 */   li    $a0, 2
/* B854DC 8010E33C 0C03B616 */  jal   func_800ED858
/* B854E0 8010E340 24040001 */   li    $a0, 1
/* B854E4 8010E344 240F0025 */  li    $t7, 37
/* B854E8 8010E348 26217FFF */  addiu $at, $s1, 0x7fff
/* B854EC 8010E34C A02F6305 */  sb    $t7, 0x6305($at)
/* B854F0 8010E350 02402025 */  move  $a0, $s2
/* B854F4 8010E354 0C0421AC */  jal   func_801086B0
/* B854F8 8010E358 27A50140 */   addiu $a1, $sp, 0x140
/* B854FC 8010E35C 10000244 */  b     .L8010EC70
/* B85500 8010E360 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E364
/* B85504 8010E364 0C03B8F2 */  jal   func_800EE3C8
/* B85508 8010E368 00000000 */   nop   
/* B8550C 8010E36C 26217FFF */  addiu $at, $s1, 0x7fff
/* B85510 8010E370 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85514 8010E374 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85518 8010E378 90E30002 */  lbu   $v1, 2($a3)
/* B8551C 8010E37C 10600015 */  beqz  $v1, .L8010E3D4
/* B85520 8010E380 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85524 8010E384 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85528 8010E388 85050000 */  lh    $a1, ($t0)
/* B8552C 8010E38C 24AE0001 */  addiu $t6, $a1, 1
/* B85530 8010E390 546E0011 */  bnel  $v1, $t6, .L8010E3D8
/* B85534 8010E394 90E60001 */   lbu   $a2, 1($a3)
/* B85538 8010E398 90E20000 */  lbu   $v0, ($a3)
/* B8553C 8010E39C 3C018015 */  lui   $at, %hi(D_8015394C)
/* B85540 8010E3A0 00250821 */  addu  $at, $at, $a1
/* B85544 8010E3A4 A022394C */  sb    $v0, %lo(D_8015394C)($at)
/* B85548 8010E3A8 26217FFF */  addiu $at, $s1, 0x7fff
/* B8554C 8010E3AC A0226411 */  sb    $v0, 0x6411($at)
/* B85550 8010E3B0 85190000 */  lh    $t9, ($t0)
/* B85554 8010E3B4 3C018015 */  lui   $at, %hi(D_8015394C)
/* B85558 8010E3B8 240F00FF */  li    $t7, 255
/* B8555C 8010E3BC 27380001 */  addiu $t8, $t9, 1
/* B85560 8010E3C0 A5180000 */  sh    $t8, ($t0)
/* B85564 8010E3C4 850E0000 */  lh    $t6, ($t0)
/* B85568 8010E3C8 002E0821 */  addu  $at, $at, $t6
/* B8556C 8010E3CC A02F394C */  sb    $t7, %lo(D_8015394C)($at)
/* B85570 8010E3D0 8E0762B8 */  lw    $a3, 0x62b8($s0)
.L8010E3D4:
/* B85574 8010E3D4 90E60001 */  lbu   $a2, 1($a3)
.L8010E3D8:
/* B85578 8010E3D8 14C00039 */  bnez  $a2, .L8010E4C0
/* B8557C 8010E3DC 3C048015 */   lui   $a0, %hi(D_80154868) # $a0, 0x8015
/* B85580 8010E3E0 0C00084C */  jal   osSyncPrintf
/* B85584 8010E3E4 24844868 */   addiu $a0, %lo(D_80154868) # addiu $a0, $a0, 0x4868
/* B85588 8010E3E8 24190014 */  li    $t9, 20
/* B8558C 8010E3EC 26217FFF */  addiu $at, $s1, 0x7fff
/* B85590 8010E3F0 A03963E8 */  sb    $t9, 0x63e8($at)
/* B85594 8010E3F4 3C018016 */  lui   $at, %hi(gSaveContext+0x12c5) # $at, 0x8016
/* B85598 8010E3F8 24180001 */  li    $t8, 1
/* B8559C 8010E3FC A038F925 */  sb    $t8, %lo(gSaveContext+0x12c5)($at)
/* B855A0 8010E400 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B855A4 8010E404 26217FFF */  addiu $at, $s1, 0x7fff
/* B855A8 8010E408 240F0027 */  li    $t7, 39
/* B855AC 8010E40C 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B855B0 8010E410 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B855B4 8010E414 A02F6305 */  sb    $t7, 0x6305($at)
/* B855B8 8010E418 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B855BC 8010E41C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B855C0 8010E420 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B855C4 8010E424 AFAE0014 */  sw    $t6, 0x14($sp)
/* B855C8 8010E428 AFA70010 */  sw    $a3, 0x10($sp)
/* B855CC 8010E42C 24044807 */  li    $a0, 18439
/* B855D0 8010E430 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B855D4 8010E434 24060004 */   li    $a2, 4
/* B855D8 8010E438 3C048015 */  lui   $a0, %hi(D_80154878) # $a0, 0x8015
/* B855DC 8010E43C 0C00084C */  jal   osSyncPrintf
/* B855E0 8010E440 24844878 */   addiu $a0, %lo(D_80154878) # addiu $a0, $a0, 0x4878
/* B855E4 8010E444 3C048015 */  lui   $a0, %hi(D_80154880) # $a0, 0x8015
/* B855E8 8010E448 0C00084C */  jal   osSyncPrintf
/* B855EC 8010E44C 24844880 */   addiu $a0, %lo(D_80154880) # addiu $a0, $a0, 0x4880
/* B855F0 8010E450 3C048016 */  lui   $a0, %hi(gSaveContext+0x12c6) # $a0, 0x8016
/* B855F4 8010E454 3C058013 */  lui   $a1, %hi(D_80131BE8) # $a1, 0x8013
/* B855F8 8010E458 8CA51BE8 */  lw    $a1, %lo(D_80131BE8)($a1)
/* B855FC 8010E45C 2484F926 */  addiu $a0, %lo(gSaveContext+0x12c6) # addiu $a0, $a0, -0x6da
/* B85600 8010E460 0C01A508 */  jal   MemCopy
/* B85604 8010E464 24060080 */   li    $a2, 128
/* B85608 8010E468 00003825 */  move  $a3, $zero
.L8010E46C:
/* B8560C 8010E46C 3C058016 */  lui   $a1, %hi(gSaveContext+0x12c6)
/* B85610 8010E470 00A72821 */  addu  $a1, $a1, $a3
/* B85614 8010E474 3C048015 */  lui   $a0, %hi(D_801548C8) # $a0, 0x8015
/* B85618 8010E478 248448C8 */  addiu $a0, %lo(D_801548C8) # addiu $a0, $a0, 0x48c8
/* B8561C 8010E47C 90A5F926 */  lbu   $a1, %lo(gSaveContext+0x12c6)($a1)
/* B85620 8010E480 0C00084C */  jal   osSyncPrintf
/* B85624 8010E484 A7A70138 */   sh    $a3, 0x138($sp)
/* B85628 8010E488 97A70138 */  lhu   $a3, 0x138($sp)
/* B8562C 8010E48C 24E70001 */  addiu $a3, $a3, 1
/* B85630 8010E490 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B85634 8010E494 28E10080 */  slti  $at, $a3, 0x80
/* B85638 8010E498 1420FFF4 */  bnez  $at, .L8010E46C
/* B8563C 8010E49C 00000000 */   nop   
/* B85640 8010E4A0 3C048015 */  lui   $a0, %hi(D_801548D0) # $a0, 0x8015
/* B85644 8010E4A4 0C00084C */  jal   osSyncPrintf
/* B85648 8010E4A8 248448D0 */   addiu $a0, %lo(D_801548D0) # addiu $a0, $a0, 0x48d0
/* B8564C 8010E4AC 3C048015 */  lui   $a0, %hi(D_801548D4) # $a0, 0x8015
/* B85650 8010E4B0 0C00084C */  jal   osSyncPrintf
/* B85654 8010E4B4 248448D4 */   addiu $a0, %lo(D_801548D4) # addiu $a0, $a0, 0x48d4
/* B85658 8010E4B8 1000001E */  b     .L8010E534
/* B8565C 8010E4BC 02402025 */   move  $a0, $s2
.L8010E4C0:
/* B85660 8010E4C0 240100FF */  li    $at, 255
/* B85664 8010E4C4 10C10005 */  beq   $a2, $at, .L8010E4DC
/* B85668 8010E4C8 00000000 */   nop   
/* B8566C 8010E4CC 96590020 */  lhu   $t9, 0x20($s2)
/* B85670 8010E4D0 2401BFFF */  li    $at, -16385
/* B85674 8010E4D4 0321C027 */  nor   $t8, $t9, $at
/* B85678 8010E4D8 17000015 */  bnez  $t8, .L8010E530
.L8010E4DC:
/* B8567C 8010E4DC 3C048015 */   lui   $a0, %hi(D_8015491C) # $a0, 0x8015
/* B85680 8010E4E0 0C00084C */  jal   osSyncPrintf
/* B85684 8010E4E4 2484491C */   addiu $a0, %lo(D_8015491C) # addiu $a0, $a0, 0x491c
/* B85688 8010E4E8 0C03B85C */  jal   func_800EE170
/* B8568C 8010E4EC 00002025 */   move  $a0, $zero
/* B85690 8010E4F0 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85694 8010E4F4 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B85698 8010E4F8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B8569C 8010E4FC 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B856A0 8010E500 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B856A4 8010E504 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B856A8 8010E508 AFAF0014 */  sw    $t7, 0x14($sp)
/* B856AC 8010E50C AFA70010 */  sw    $a3, 0x10($sp)
/* B856B0 8010E510 24044827 */  li    $a0, 18471
/* B856B4 8010E514 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B856B8 8010E518 24060004 */   li    $a2, 4
/* B856BC 8010E51C 0C041B33 */  jal   func_80106CCC
/* B856C0 8010E520 02402025 */   move  $a0, $s2
/* B856C4 8010E524 240E0026 */  li    $t6, 38
/* B856C8 8010E528 26217FFF */  addiu $at, $s1, 0x7fff
/* B856CC 8010E52C A02E6305 */  sb    $t6, 0x6305($at)
.L8010E530:
/* B856D0 8010E530 02402025 */  move  $a0, $s2
.L8010E534:
/* B856D4 8010E534 0C0421AC */  jal   func_801086B0
/* B856D8 8010E538 27A50140 */   addiu $a1, $sp, 0x140
/* B856DC 8010E53C 100001CC */  b     .L8010EC70
/* B856E0 8010E540 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E544
/* B856E4 8010E544 3C048015 */  lui   $a0, %hi(D_8015493C) # $a0, 0x8015
/* B856E8 8010E548 0C00084C */  jal   osSyncPrintf
/* B856EC 8010E54C 2484493C */   addiu $a0, %lo(D_8015493C) # addiu $a0, $a0, 0x493c
/* B856F0 8010E550 0C03B616 */  jal   func_800ED858
/* B856F4 8010E554 00002025 */   move  $a0, $zero
/* B856F8 8010E558 02402025 */  move  $a0, $s2
/* B856FC 8010E55C 240540AD */  li    $a1, 16557
/* B85700 8010E560 0C042DA0 */  jal   func_8010B680
/* B85704 8010E564 00003025 */   move  $a2, $zero
/* B85708 8010E568 3C010001 */  lui   $at, 1
/* B8570C 8010E56C 00320821 */  addu  $at, $at, $s2
/* B85710 8010E570 24190004 */  li    $t9, 4
/* B85714 8010E574 A43904C6 */  sh    $t9, 0x4c6($at)
/* B85718 8010E578 100001BD */  b     .L8010EC70
/* B8571C 8010E57C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E580
/* B85720 8010E580 0C03B616 */  jal   func_800ED858
/* B85724 8010E584 24040001 */   li    $a0, 1
/* B85728 8010E588 0C03B616 */  jal   func_800ED858
/* B8572C 8010E58C 24040006 */   li    $a0, 6
/* B85730 8010E590 3C048016 */  lui   $a0, %hi(gSaveContext+0x3f) # $a0, 0x8016
/* B85734 8010E594 0C03B95F */  jal   func_800EE57C
/* B85738 8010E598 9084E69F */   lbu   $a0, %lo(gSaveContext+0x3f)($a0)
/* B8573C 8010E59C 0C03B8FE */  jal   func_800EE3F8
/* B85740 8010E5A0 00000000 */   nop   
/* B85744 8010E5A4 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85748 8010E5A8 26217FFF */  addiu $at, $s1, 0x7fff
/* B8574C 8010E5AC AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85750 8010E5B0 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85754 8010E5B4 A5000000 */  sh    $zero, ($t0)
/* B85758 8010E5B8 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B8575C 8010E5BC 85180000 */  lh    $t8, ($t0)
/* B85760 8010E5C0 0C041A6C */  jal   func_801069B0
/* B85764 8010E5C4 A1F80002 */   sb    $t8, 2($t7)
/* B85768 8010E5C8 2404000E */  li    $a0, 14
/* B8576C 8010E5CC 0C03B64F */  jal   func_800ED93C
/* B85770 8010E5D0 24050001 */   li    $a1, 1
/* B85774 8010E5D4 26217FFF */  addiu $at, $s1, 0x7fff
/* B85778 8010E5D8 240E002A */  li    $t6, 42
/* B8577C 8010E5DC 24190002 */  li    $t9, 2
/* B85780 8010E5E0 A02E6305 */  sb    $t6, 0x6305($at)
/* B85784 8010E5E4 A03963E8 */  sb    $t9, 0x63e8($at)
/* B85788 8010E5E8 100001A1 */  b     .L8010EC70
/* B8578C 8010E5EC 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E5F0
/* B85790 8010E5F0 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85794 8010E5F4 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B85798 8010E5F8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B8579C 8010E5FC 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B857A0 8010E600 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B857A4 8010E604 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B857A8 8010E608 AFB80014 */  sw    $t8, 0x14($sp)
/* B857AC 8010E60C AFA70010 */  sw    $a3, 0x10($sp)
/* B857B0 8010E610 24044038 */  li    $a0, 16440
/* B857B4 8010E614 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B857B8 8010E618 24060004 */   li    $a2, 4
/* B857BC 8010E61C 0C03B8FE */  jal   func_800EE3F8
/* B857C0 8010E620 00000000 */   nop   
/* B857C4 8010E624 26217FFF */  addiu $at, $s1, 0x7fff
/* B857C8 8010E628 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B857CC 8010E62C 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B857D0 8010E630 90E30002 */  lbu   $v1, 2($a3)
/* B857D4 8010E634 10600012 */  beqz  $v1, .L8010E680
/* B857D8 8010E638 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B857DC 8010E63C 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B857E0 8010E640 85050000 */  lh    $a1, ($t0)
/* B857E4 8010E644 24AF0001 */  addiu $t7, $a1, 1
/* B857E8 8010E648 546F000E */  bnel  $v1, $t7, .L8010E684
/* B857EC 8010E64C 920263E7 */   lbu   $v0, 0x63e7($s0)
/* B857F0 8010E650 90EE0000 */  lbu   $t6, ($a3)
/* B857F4 8010E654 3C018015 */  lui   $at, %hi(D_8015394B)
/* B857F8 8010E658 00230821 */  addu  $at, $at, $v1
/* B857FC 8010E65C A02E394B */  sb    $t6, %lo(D_8015394B)($at)
/* B85800 8010E660 8E1862B8 */  lw    $t8, 0x62b8($s0)
/* B85804 8010E664 3C018015 */  lui   $at, %hi(D_8015394C)
/* B85808 8010E668 241900FF */  li    $t9, 255
/* B8580C 8010E66C 930F0002 */  lbu   $t7, 2($t8)
/* B85810 8010E670 24AE0001 */  addiu $t6, $a1, 1
/* B85814 8010E674 002F0821 */  addu  $at, $at, $t7
/* B85818 8010E678 A039394C */  sb    $t9, %lo(D_8015394C)($at)
/* B8581C 8010E67C A50E0000 */  sh    $t6, ($t0)
.L8010E680:
/* B85820 8010E680 920263E7 */  lbu   $v0, 0x63e7($s0)
.L8010E684:
/* B85824 8010E684 54400026 */  bnezl $v0, .L8010E720
/* B85828 8010E688 244EFFFF */   addiu $t6, $v0, -1
/* B8582C 8010E68C 8E1862B8 */  lw    $t8, 0x62b8($s0)
/* B85830 8010E690 93190001 */  lbu   $t9, 1($t8)
/* B85834 8010E694 17200024 */  bnez  $t9, .L8010E728
/* B85838 8010E698 00000000 */   nop   
/* B8583C 8010E69C 920F6304 */  lbu   $t7, 0x6304($s0)
/* B85840 8010E6A0 2401002A */  li    $at, 42
/* B85844 8010E6A4 15E1000D */  bne   $t7, $at, .L8010E6DC
/* B85848 8010E6A8 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B8584C 8010E6AC 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B85850 8010E6B0 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85854 8010E6B4 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B85858 8010E6B8 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B8585C 8010E6BC 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85860 8010E6C0 AFAE0014 */  sw    $t6, 0x14($sp)
/* B85864 8010E6C4 AFA70010 */  sw    $a3, 0x10($sp)
/* B85868 8010E6C8 24044836 */  li    $a0, 18486
/* B8586C 8010E6CC 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B85870 8010E6D0 24060004 */   li    $a2, 4
/* B85874 8010E6D4 1000000D */  b     .L8010E70C
/* B85878 8010E6D8 92196304 */   lbu   $t9, 0x6304($s0)
.L8010E6DC:
/* B8587C 8010E6DC 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85880 8010E6E0 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B85884 8010E6E4 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85888 8010E6E8 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B8588C 8010E6EC 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B85890 8010E6F0 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85894 8010E6F4 AFB80014 */  sw    $t8, 0x14($sp)
/* B85898 8010E6F8 AFA70010 */  sw    $a3, 0x10($sp)
/* B8589C 8010E6FC 24044842 */  li    $a0, 18498
/* B858A0 8010E700 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B858A4 8010E704 24060004 */   li    $a2, 4
/* B858A8 8010E708 92196304 */  lbu   $t9, 0x6304($s0)
.L8010E70C:
/* B858AC 8010E70C 26217FFF */  addiu $at, $s1, 0x7fff
/* B858B0 8010E710 272F0001 */  addiu $t7, $t9, 1
/* B858B4 8010E714 10000004 */  b     .L8010E728
/* B858B8 8010E718 A02F6305 */   sb    $t7, 0x6305($at)
/* B858BC 8010E71C 244EFFFF */  addiu $t6, $v0, -1
.L8010E720:
/* B858C0 8010E720 26217FFF */  addiu $at, $s1, 0x7fff
/* B858C4 8010E724 A02E63E8 */  sb    $t6, 0x63e8($at)
.L8010E728:
/* B858C8 8010E728 10000151 */  b     .L8010EC70
/* B858CC 8010E72C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E730
/* B858D0 8010E730 0C03B8FE */  jal   func_800EE3F8
/* B858D4 8010E734 00000000 */   nop   
/* B858D8 8010E738 26217FFF */  addiu $at, $s1, 0x7fff
/* B858DC 8010E73C AC2262B9 */  sw    $v0, 0x62b9($at)
/* B858E0 8010E740 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B858E4 8010E744 90E30002 */  lbu   $v1, 2($a3)
/* B858E8 8010E748 10600012 */  beqz  $v1, .L8010E794
/* B858EC 8010E74C 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B858F0 8010E750 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B858F4 8010E754 85050000 */  lh    $a1, ($t0)
/* B858F8 8010E758 24B80001 */  addiu $t8, $a1, 1
/* B858FC 8010E75C 1478000D */  bne   $v1, $t8, .L8010E794
/* B85900 8010E760 00000000 */   nop   
/* B85904 8010E764 90F90000 */  lbu   $t9, ($a3)
/* B85908 8010E768 3C018015 */  lui   $at, %hi(D_8015394B)
/* B8590C 8010E76C 00230821 */  addu  $at, $at, $v1
/* B85910 8010E770 A039394B */  sb    $t9, %lo(D_8015394B)($at)
/* B85914 8010E774 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B85918 8010E778 3C018015 */  lui   $at, %hi(D_8015394C)
/* B8591C 8010E77C 240F00FF */  li    $t7, 255
/* B85920 8010E780 91D80002 */  lbu   $t8, 2($t6)
/* B85924 8010E784 24B90001 */  addiu $t9, $a1, 1
/* B85928 8010E788 00380821 */  addu  $at, $at, $t8
/* B8592C 8010E78C A02F394C */  sb    $t7, %lo(D_8015394C)($at)
/* B85930 8010E790 A5190000 */  sh    $t9, ($t0)
.L8010E794:
/* B85934 8010E794 10000136 */  b     .L8010EC70
/* B85938 8010E798 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E79C
/* B8593C 8010E79C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85940 8010E7A0 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B85944 8010E7A4 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85948 8010E7A8 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B8594C 8010E7AC 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B85950 8010E7B0 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85954 8010E7B4 AFAE0014 */  sw    $t6, 0x14($sp)
/* B85958 8010E7B8 AFA70010 */  sw    $a3, 0x10($sp)
/* B8595C 8010E7BC 24044038 */  li    $a0, 16440
/* B85960 8010E7C0 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B85964 8010E7C4 24060004 */   li    $a2, 4
/* B85968 8010E7C8 0C03B8F5 */  jal   func_800EE3D4
/* B8596C 8010E7CC 00000000 */   nop   
/* B85970 8010E7D0 26217FFF */  addiu $at, $s1, 0x7fff
/* B85974 8010E7D4 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85978 8010E7D8 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B8597C 8010E7DC 90E30002 */  lbu   $v1, 2($a3)
/* B85980 8010E7E0 10600013 */  beqz  $v1, .L8010E830
/* B85984 8010E7E4 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85988 8010E7E8 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B8598C 8010E7EC 85050000 */  lh    $a1, ($t0)
/* B85990 8010E7F0 24AF0001 */  addiu $t7, $a1, 1
/* B85994 8010E7F4 546F000F */  bnel  $v1, $t7, .L8010E834
/* B85998 8010E7F8 90E60001 */   lbu   $a2, 1($a3)
/* B8599C 8010E7FC 90F80000 */  lbu   $t8, ($a3)
/* B859A0 8010E800 3C018015 */  lui   $at, %hi(D_8015394B)
/* B859A4 8010E804 00230821 */  addu  $at, $at, $v1
/* B859A8 8010E808 A038394B */  sb    $t8, %lo(D_8015394B)($at)
/* B859AC 8010E80C 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B859B0 8010E810 3C018015 */  lui   $at, %hi(D_8015394C)
/* B859B4 8010E814 241900FF */  li    $t9, 255
/* B859B8 8010E818 91CF0002 */  lbu   $t7, 2($t6)
/* B859BC 8010E81C 24B80001 */  addiu $t8, $a1, 1
/* B859C0 8010E820 002F0821 */  addu  $at, $at, $t7
/* B859C4 8010E824 A039394C */  sb    $t9, %lo(D_8015394C)($at)
/* B859C8 8010E828 A5180000 */  sh    $t8, ($t0)
/* B859CC 8010E82C 8E0762B8 */  lw    $a3, 0x62b8($s0)
.L8010E830:
/* B859D0 8010E830 90E60001 */  lbu   $a2, 1($a3)
.L8010E834:
/* B859D4 8010E834 240100FF */  li    $at, 255
/* B859D8 8010E838 14C10018 */  bne   $a2, $at, .L8010E89C
/* B859DC 8010E83C 3C048015 */   lui   $a0, %hi(D_8015494C) # $a0, 0x8015
/* B859E0 8010E840 0C00084C */  jal   osSyncPrintf
/* B859E4 8010E844 2484494C */   addiu $a0, %lo(D_8015494C) # addiu $a0, $a0, 0x494c
/* B859E8 8010E848 0C03B616 */  jal   func_800ED858
/* B859EC 8010E84C 00002025 */   move  $a0, $zero
/* B859F0 8010E850 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B859F4 8010E854 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B859F8 8010E858 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B859FC 8010E85C 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B85A00 8010E860 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B85A04 8010E864 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85A08 8010E868 AFAE0014 */  sw    $t6, 0x14($sp)
/* B85A0C 8010E86C AFA70010 */  sw    $a3, 0x10($sp)
/* B85A10 8010E870 24044827 */  li    $a0, 18471
/* B85A14 8010E874 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B85A18 8010E878 24060004 */   li    $a2, 4
/* B85A1C 8010E87C 2419000A */  li    $t9, 10
/* B85A20 8010E880 26217FFF */  addiu $at, $s1, 0x7fff
/* B85A24 8010E884 A03963E8 */  sb    $t9, 0x63e8($at)
/* B85A28 8010E888 3C010001 */  lui   $at, 1
/* B85A2C 8010E88C 00320821 */  addu  $at, $at, $s2
/* B85A30 8010E890 240F0003 */  li    $t7, 3
/* B85A34 8010E894 10000016 */  b     .L8010E8F0
/* B85A38 8010E898 A42F04C6 */   sh    $t7, 0x4c6($at)
.L8010E89C:
/* B85A3C 8010E89C 2401000D */  li    $at, 13
/* B85A40 8010E8A0 14C10013 */  bne   $a2, $at, .L8010E8F0
/* B85A44 8010E8A4 3C048015 */   lui   $a0, %hi(D_80154968) # $a0, 0x8015
/* B85A48 8010E8A8 0C00084C */  jal   osSyncPrintf
/* B85A4C 8010E8AC 24844968 */   addiu $a0, %lo(D_80154968) # addiu $a0, $a0, 0x4968
/* B85A50 8010E8B0 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85A54 8010E8B4 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B85A58 8010E8B8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85A5C 8010E8BC 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B85A60 8010E8C0 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B85A64 8010E8C4 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85A68 8010E8C8 AFB80014 */  sw    $t8, 0x14($sp)
/* B85A6C 8010E8CC AFA70010 */  sw    $a3, 0x10($sp)
/* B85A70 8010E8D0 24044824 */  li    $a0, 18468
/* B85A74 8010E8D4 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B85A78 8010E8D8 24060004 */   li    $a2, 4
/* B85A7C 8010E8DC 26217FFF */  addiu $at, $s1, 0x7fff
/* B85A80 8010E8E0 240E002F */  li    $t6, 47
/* B85A84 8010E8E4 2419001E */  li    $t9, 30
/* B85A88 8010E8E8 A02E6305 */  sb    $t6, 0x6305($at)
/* B85A8C 8010E8EC A03963E8 */  sb    $t9, 0x63e8($at)
.L8010E8F0:
/* B85A90 8010E8F0 02402025 */  move  $a0, $s2
/* B85A94 8010E8F4 0C0421AC */  jal   func_801086B0
/* B85A98 8010E8F8 27A50140 */   addiu $a1, $sp, 0x140
/* B85A9C 8010E8FC 100000DC */  b     .L8010EC70
/* B85AA0 8010E900 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E904
/* B85AA4 8010E904 0C03B8F5 */  jal   func_800EE3D4
/* B85AA8 8010E908 00000000 */   nop   
/* B85AAC 8010E90C 26217FFF */  addiu $at, $s1, 0x7fff
/* B85AB0 8010E910 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85AB4 8010E914 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85AB8 8010E918 90E30002 */  lbu   $v1, 2($a3)
/* B85ABC 8010E91C 10600012 */  beqz  $v1, .L8010E968
/* B85AC0 8010E920 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85AC4 8010E924 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85AC8 8010E928 85050000 */  lh    $a1, ($t0)
/* B85ACC 8010E92C 24AF0001 */  addiu $t7, $a1, 1
/* B85AD0 8010E930 546F000E */  bnel  $v1, $t7, .L8010E96C
/* B85AD4 8010E934 921963E7 */   lbu   $t9, 0x63e7($s0)
/* B85AD8 8010E938 90F80000 */  lbu   $t8, ($a3)
/* B85ADC 8010E93C 3C018015 */  lui   $at, %hi(D_8015394B)
/* B85AE0 8010E940 00230821 */  addu  $at, $at, $v1
/* B85AE4 8010E944 A038394B */  sb    $t8, %lo(D_8015394B)($at)
/* B85AE8 8010E948 8E1962B8 */  lw    $t9, 0x62b8($s0)
/* B85AEC 8010E94C 3C018015 */  lui   $at, %hi(D_8015394C)
/* B85AF0 8010E950 240E00FF */  li    $t6, 255
/* B85AF4 8010E954 932F0002 */  lbu   $t7, 2($t9)
/* B85AF8 8010E958 24B80001 */  addiu $t8, $a1, 1
/* B85AFC 8010E95C 002F0821 */  addu  $at, $at, $t7
/* B85B00 8010E960 A02E394C */  sb    $t6, %lo(D_8015394C)($at)
/* B85B04 8010E964 A5180000 */  sh    $t8, ($t0)
.L8010E968:
/* B85B08 8010E968 921963E7 */  lbu   $t9, 0x63e7($s0)
.L8010E96C:
/* B85B0C 8010E96C 26217FFF */  addiu $at, $s1, 0x7fff
/* B85B10 8010E970 272EFFFF */  addiu $t6, $t9, -1
/* B85B14 8010E974 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B85B18 8010E978 920F63E7 */  lbu   $t7, 0x63e7($s0)
/* B85B1C 8010E97C 55E00024 */  bnezl $t7, .L8010EA10
/* B85B20 8010E980 02402025 */   move  $a0, $s2
/* B85B24 8010E984 0C03B97B */  jal   func_800EE5EC
/* B85B28 8010E988 00000000 */   nop   
/* B85B2C 8010E98C 24010001 */  li    $at, 1
/* B85B30 8010E990 1041001A */  beq   $v0, $at, .L8010E9FC
/* B85B34 8010E994 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85B38 8010E998 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B85B3C 8010E99C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85B40 8010E9A0 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B85B44 8010E9A4 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B85B48 8010E9A8 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85B4C 8010E9AC AFB80014 */  sw    $t8, 0x14($sp)
/* B85B50 8010E9B0 AFA70010 */  sw    $a3, 0x10($sp)
/* B85B54 8010E9B4 24044836 */  li    $a0, 18486
/* B85B58 8010E9B8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B85B5C 8010E9BC 24060004 */   li    $a2, 4
/* B85B60 8010E9C0 0C03B8F5 */  jal   func_800EE3D4
/* B85B64 8010E9C4 00000000 */   nop   
/* B85B68 8010E9C8 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85B6C 8010E9CC 26217FFF */  addiu $at, $s1, 0x7fff
/* B85B70 8010E9D0 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85B74 8010E9D4 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85B78 8010E9D8 A5000000 */  sh    $zero, ($t0)
/* B85B7C 8010E9DC 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B85B80 8010E9E0 85190000 */  lh    $t9, ($t0)
/* B85B84 8010E9E4 0C041A6C */  jal   func_801069B0
/* B85B88 8010E9E8 A1D90002 */   sb    $t9, 2($t6)
/* B85B8C 8010E9EC 240F0030 */  li    $t7, 48
/* B85B90 8010E9F0 26217FFF */  addiu $at, $s1, 0x7fff
/* B85B94 8010E9F4 10000005 */  b     .L8010EA0C
/* B85B98 8010E9F8 A02F6305 */   sb    $t7, 0x6305($at)
.L8010E9FC:
/* B85B9C 8010E9FC 3C010001 */  lui   $at, 1
/* B85BA0 8010EA00 00320821 */  addu  $at, $at, $s2
/* B85BA4 8010EA04 2418000F */  li    $t8, 15
/* B85BA8 8010EA08 A43804C6 */  sh    $t8, 0x4c6($at)
.L8010EA0C:
/* B85BAC 8010EA0C 02402025 */  move  $a0, $s2
.L8010EA10:
/* B85BB0 8010EA10 0C0421AC */  jal   func_801086B0
/* B85BB4 8010EA14 27A50140 */   addiu $a1, $sp, 0x140
/* B85BB8 8010EA18 10000095 */  b     .L8010EC70
/* B85BBC 8010EA1C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010EA20
/* B85BC0 8010EA20 0C03E3FD */  jal   func_800F8FF4
/* B85BC4 8010EA24 24044836 */   li    $a0, 18486
/* B85BC8 8010EA28 1440000F */  bnez  $v0, .L8010EA68
/* B85BCC 8010EA2C 00000000 */   nop   
/* B85BD0 8010EA30 0C03B8FE */  jal   func_800EE3F8
/* B85BD4 8010EA34 00000000 */   nop   
/* B85BD8 8010EA38 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85BDC 8010EA3C 26217FFF */  addiu $at, $s1, 0x7fff
/* B85BE0 8010EA40 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85BE4 8010EA44 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85BE8 8010EA48 A5000000 */  sh    $zero, ($t0)
/* B85BEC 8010EA4C 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B85BF0 8010EA50 85190000 */  lh    $t9, ($t0)
/* B85BF4 8010EA54 0C041A6C */  jal   func_801069B0
/* B85BF8 8010EA58 A1D90002 */   sb    $t9, 2($t6)
/* B85BFC 8010EA5C 2404000E */  li    $a0, 14
/* B85C00 8010EA60 0C03B64F */  jal   func_800ED93C
/* B85C04 8010EA64 24050001 */   li    $a1, 1
.L8010EA68:
/* B85C08 8010EA68 10000081 */  b     .L8010EC70
/* B85C0C 8010EA6C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010EA70
/* B85C10 8010EA70 0C03B616 */  jal   func_800ED858
/* B85C14 8010EA74 24040001 */   li    $a0, 1
/* B85C18 8010EA78 0C03B8F5 */  jal   func_800EE3D4
/* B85C1C 8010EA7C 00000000 */   nop   
/* B85C20 8010EA80 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85C24 8010EA84 26217FFF */  addiu $at, $s1, 0x7fff
/* B85C28 8010EA88 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85C2C 8010EA8C 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85C30 8010EA90 A5000000 */  sh    $zero, ($t0)
/* B85C34 8010EA94 8E1862B8 */  lw    $t8, 0x62b8($s0)
/* B85C38 8010EA98 850F0000 */  lh    $t7, ($t0)
/* B85C3C 8010EA9C 3C010001 */  lui   $at, 1
/* B85C40 8010EAA0 00320821 */  addu  $at, $at, $s2
/* B85C44 8010EAA4 24190001 */  li    $t9, 1
/* B85C48 8010EAA8 A30F0002 */  sb    $t7, 2($t8)
/* B85C4C 8010EAAC 0C041A6C */  jal   func_801069B0
/* B85C50 8010EAB0 A43904C6 */   sh    $t9, 0x4c6($at)
/* B85C54 8010EAB4 3C048015 */  lui   $a0, %hi(D_8014B31C) # $a0, 0x8015
/* B85C58 8010EAB8 9484B31C */  lhu   $a0, %lo(D_8014B31C)($a0)
/* B85C5C 8010EABC 3401C000 */  li    $at, 49152
/* B85C60 8010EAC0 00812021 */  addu  $a0, $a0, $at
/* B85C64 8010EAC4 0C03B301 */  jal   func_800ECC04
/* B85C68 8010EAC8 3084FFFF */   andi  $a0, $a0, 0xffff
/* B85C6C 8010EACC 240E0032 */  li    $t6, 50
/* B85C70 8010EAD0 26217FFF */  addiu $at, $s1, 0x7fff
/* B85C74 8010EAD4 A02E6305 */  sb    $t6, 0x6305($at)
/* B85C78 8010EAD8 10000065 */  b     .L8010EC70
/* B85C7C 8010EADC 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010EAE0
/* B85C80 8010EAE0 0C03B8F5 */  jal   func_800EE3D4
/* B85C84 8010EAE4 00000000 */   nop   
/* B85C88 8010EAE8 26217FFF */  addiu $at, $s1, 0x7fff
/* B85C8C 8010EAEC AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85C90 8010EAF0 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85C94 8010EAF4 90E30002 */  lbu   $v1, 2($a3)
/* B85C98 8010EAF8 10600011 */  beqz  $v1, .L8010EB40
/* B85C9C 8010EAFC 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85CA0 8010EB00 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85CA4 8010EB04 850F0000 */  lh    $t7, ($t0)
/* B85CA8 8010EB08 25F80001 */  addiu $t8, $t7, 1
/* B85CAC 8010EB0C 5478000D */  bnel  $v1, $t8, .L8010EB44
/* B85CB0 8010EB10 92026304 */   lbu   $v0, 0x6304($s0)
/* B85CB4 8010EB14 90F90000 */  lbu   $t9, ($a3)
/* B85CB8 8010EB18 26217FFF */  addiu $at, $s1, 0x7fff
/* B85CBC 8010EB1C A0396411 */  sb    $t9, 0x6411($at)
/* B85CC0 8010EB20 A5000000 */  sh    $zero, ($t0)
/* B85CC4 8010EB24 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B85CC8 8010EB28 850E0000 */  lh    $t6, ($t0)
/* B85CCC 8010EB2C 0C041A6C */  jal   func_801069B0
/* B85CD0 8010EB30 A1EE0002 */   sb    $t6, 2($t7)
/* B85CD4 8010EB34 24180033 */  li    $t8, 51
/* B85CD8 8010EB38 26217FFF */  addiu $at, $s1, 0x7fff
/* B85CDC 8010EB3C A0386305 */  sb    $t8, 0x6305($at)
.L8010EB40:
/* B85CE0 8010EB40 92026304 */  lbu   $v0, 0x6304($s0)
.L8010EB44:
glabel L8010EB44
/* B85CE4 8010EB44 1000004B */  b     .L8010EC74
/* B85CE8 8010EB48 2841000C */   slti  $at, $v0, 0xc
glabel L8010EB4C
/* B85CEC 8010EB4C 02402025 */  move  $a0, $s2
/* B85CF0 8010EB50 0C0421AC */  jal   func_801086B0
/* B85CF4 8010EB54 27A50140 */   addiu $a1, $sp, 0x140
/* B85CF8 8010EB58 920263E4 */  lbu   $v0, 0x63e4($s0)
/* B85CFC 8010EB5C 24010010 */  li    $at, 16
/* B85D00 8010EB60 1041000B */  beq   $v0, $at, .L8010EB90
/* B85D04 8010EB64 24010020 */   li    $at, 32
/* B85D08 8010EB68 10410013 */  beq   $v0, $at, .L8010EBB8
/* B85D0C 8010EB6C 24010040 */   li    $at, 64
/* B85D10 8010EB70 1041001B */  beq   $v0, $at, .L8010EBE0
/* B85D14 8010EB74 24010050 */   li    $at, 80
/* B85D18 8010EB78 1041002D */  beq   $v0, $at, .L8010EC30
/* B85D1C 8010EB7C 24010060 */   li    $at, 96
/* B85D20 8010EB80 10410033 */  beq   $v0, $at, .L8010EC50
/* B85D24 8010EB84 00000000 */   nop   
/* B85D28 8010EB88 10000029 */  b     .L8010EC30
/* B85D2C 8010EB8C 00000000 */   nop   
.L8010EB90:
/* B85D30 8010EB90 02402025 */  move  $a0, $s2
/* B85D34 8010EB94 0C041B50 */  jal   func_80106D40
/* B85D38 8010EB98 24050001 */   li    $a1, 1
/* B85D3C 8010EB9C 02402025 */  move  $a0, $s2
/* B85D40 8010EBA0 27A50140 */  addiu $a1, $sp, 0x140
/* B85D44 8010EBA4 860663D8 */  lh    $a2, 0x63d8($s0)
/* B85D48 8010EBA8 0C041E60 */  jal   func_80107980
/* B85D4C 8010EBAC 860763DA */   lh    $a3, 0x63da($s0)
/* B85D50 8010EBB0 10000027 */  b     .L8010EC50
/* B85D54 8010EBB4 00000000 */   nop   
.L8010EBB8:
/* B85D58 8010EBB8 02402025 */  move  $a0, $s2
/* B85D5C 8010EBBC 0C041B50 */  jal   func_80106D40
/* B85D60 8010EBC0 24050002 */   li    $a1, 2
/* B85D64 8010EBC4 02402025 */  move  $a0, $s2
/* B85D68 8010EBC8 27A50140 */  addiu $a1, $sp, 0x140
/* B85D6C 8010EBCC 860663D8 */  lh    $a2, 0x63d8($s0)
/* B85D70 8010EBD0 0C041E60 */  jal   func_80107980
/* B85D74 8010EBD4 860763DA */   lh    $a3, 0x63da($s0)
/* B85D78 8010EBD8 1000001D */  b     .L8010EC50
/* B85D7C 8010EBDC 00000000 */   nop   
.L8010EBE0:
/* B85D80 8010EBE0 960262F8 */  lhu   $v0, 0x62f8($s0)
/* B85D84 8010EBE4 2841006D */  slti  $at, $v0, 0x6d
/* B85D88 8010EBE8 1420000F */  bnez  $at, .L8010EC28
/* B85D8C 8010EBEC 28410073 */   slti  $at, $v0, 0x73
/* B85D90 8010EBF0 1020000D */  beqz  $at, .L8010EC28
/* B85D94 8010EBF4 00000000 */   nop   
/* B85D98 8010EBF8 921963E7 */  lbu   $t9, 0x63e7($s0)
/* B85D9C 8010EBFC 26217FFF */  addiu $at, $s1, 0x7fff
/* B85DA0 8010EC00 272E0001 */  addiu $t6, $t9, 1
/* B85DA4 8010EC04 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B85DA8 8010EC08 920F63E7 */  lbu   $t7, 0x63e7($s0)
/* B85DAC 8010EC0C 29E1001F */  slti  $at, $t7, 0x1f
/* B85DB0 8010EC10 14200005 */  bnez  $at, .L8010EC28
/* B85DB4 8010EC14 26217FFF */   addiu $at, $s1, 0x7fff
/* B85DB8 8010EC18 24180002 */  li    $t8, 2
/* B85DBC 8010EC1C 24190036 */  li    $t9, 54
/* B85DC0 8010EC20 A03863E8 */  sb    $t8, 0x63e8($at)
/* B85DC4 8010EC24 A0396305 */  sb    $t9, 0x6305($at)
.L8010EC28:
/* B85DC8 8010EC28 10000009 */  b     .L8010EC50
/* B85DCC 8010EC2C 00000000 */   nop   
.L8010EC30:
/* B85DD0 8010EC30 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B85DD4 8010EC34 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B85DD8 8010EC38 8D280000 */  lw    $t0, ($t1)
/* B85DDC 8010EC3C 02402025 */  move  $a0, $s2
/* B85DE0 8010EC40 27A50140 */  addiu $a1, $sp, 0x140
/* B85DE4 8010EC44 85060B14 */  lh    $a2, 0xb14($t0)
/* B85DE8 8010EC48 0C041E60 */  jal   func_80107980
/* B85DEC 8010EC4C 85070B16 */   lh    $a3, 0xb16($t0)
.L8010EC50:
/* B85DF0 8010EC50 10000007 */  b     .L8010EC70
/* B85DF4 8010EC54 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010EC58
/* B85DF8 8010EC58 10000006 */  b     .L8010EC74
/* B85DFC 8010EC5C 2841000C */   slti  $at, $v0, 0xc
.L8010EC60:
glabel L8010EC60
/* B85E00 8010EC60 240E0006 */  li    $t6, 6
/* B85E04 8010EC64 26217FFF */  addiu $at, $s1, 0x7fff
/* B85E08 8010EC68 A02E6305 */  sb    $t6, 0x6305($at)
/* B85E0C 8010EC6C 92026304 */  lbu   $v0, 0x6304($s0)
.L8010EC70:
/* B85E10 8010EC70 2841000C */  slti  $at, $v0, 0xc
.L8010EC74:
/* B85E14 8010EC74 1420018C */  bnez  $at, .L8010F2A8
/* B85E18 8010EC78 28410034 */   slti  $at, $v0, 0x34
/* B85E1C 8010EC7C 5020018B */  beql  $at, $zero, .L8010F2AC
/* B85E20 8010EC80 8FB80140 */   lw    $t8, 0x140($sp)
/* B85E24 8010EC84 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B85E28 8010EC88 24010001 */  li    $at, 1
/* B85E2C 8010EC8C 10410186 */  beq   $v0, $at, .L8010F2A8
/* B85E30 8010EC90 24010030 */   li    $at, 48
/* B85E34 8010EC94 50410185 */  beql  $v0, $at, .L8010F2AC
/* B85E38 8010EC98 8FB80140 */   lw    $t8, 0x140($sp)
/* B85E3C 8010EC9C 0C02515F */  jal   func_8009457C
/* B85E40 8010ECA0 27A40140 */   addiu $a0, $sp, 0x140
/* B85E44 8010ECA4 8FAF0140 */  lw    $t7, 0x140($sp)
/* B85E48 8010ECA8 3C19FC30 */  lui   $t9, (0xFC309661 >> 16) # lui $t9, 0xfc30
/* B85E4C 8010ECAC 3C0E552E */  lui   $t6, (0x552EFF7F >> 16) # lui $t6, 0x552e
/* B85E50 8010ECB0 25F80008 */  addiu $t8, $t7, 8
/* B85E54 8010ECB4 AFB80140 */  sw    $t8, 0x140($sp)
/* B85E58 8010ECB8 35CEFF7F */  ori   $t6, (0x552EFF7F & 0xFFFF) # ori $t6, $t6, 0xff7f
/* B85E5C 8010ECBC 37399661 */  ori   $t9, (0xFC309661 & 0xFFFF) # ori $t9, $t9, 0x9661
/* B85E60 8010ECC0 ADF90000 */  sw    $t9, ($t7)
/* B85E64 8010ECC4 ADEE0004 */  sw    $t6, 4($t7)
/* B85E68 8010ECC8 92026304 */  lbu   $v0, 0x6304($s0)
/* B85E6C 8010ECCC 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B85E70 8010ECD0 2401001B */  li    $at, 27
/* B85E74 8010ECD4 14410093 */  bne   $v0, $at, .L8010EF24
/* B85E78 8010ECD8 2529FA90 */   addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B85E7C 8010ECDC 960463F0 */  lhu   $a0, 0x63f0($s0)
/* B85E80 8010ECE0 3C188013 */  lui   $t8, %hi(D_80131C00) # $t8, 0x8013
/* B85E84 8010ECE4 27181C00 */  addiu $t8, %lo(D_80131C00) # addiu $t8, $t8, 0x1c00
/* B85E88 8010ECE8 2484FFF1 */  addiu $a0, $a0, -0xf
/* B85E8C 8010ECEC 00042400 */  sll   $a0, $a0, 0x10
/* B85E90 8010ECF0 00042403 */  sra   $a0, $a0, 0x10
/* B85E94 8010ECF4 000478C0 */  sll   $t7, $a0, 3
/* B85E98 8010ECF8 01E47821 */  addu  $t7, $t7, $a0
/* B85E9C 8010ECFC 01F8C821 */  addu  $t9, $t7, $t8
/* B85EA0 8010ED00 93280000 */  lbu   $t0, ($t9)
/* B85EA4 8010ED04 8D2E0000 */  lw    $t6, ($t1)
/* B85EA8 8010ED08 00003825 */  move  $a3, $zero
/* B85EAC 8010ED0C 19000085 */  blez  $t0, .L8010EF24
/* B85EB0 8010ED10 95C50F4C */   lhu   $a1, 0xf4c($t6)
/* B85EB4 8010ED14 000478C0 */  sll   $t7, $a0, 3
/* B85EB8 8010ED18 01E47821 */  addu  $t7, $t7, $a0
/* B85EBC 8010ED1C 3C0D0A0A */  lui   $t5, (0x0A0A0A00 >> 16) # lui $t5, 0xa0a
/* B85EC0 8010ED20 3C0C9696 */  lui   $t4, (0x96969696 >> 16) # lui $t4, 0x9696
/* B85EC4 8010ED24 358C9696 */  ori   $t4, (0x96969696 & 0xFFFF) # ori $t4, $t4, 0x9696
/* B85EC8 8010ED28 35AD0A00 */  ori   $t5, (0x0A0A0A00 & 0xFFFF) # ori $t5, $t5, 0xa00
/* B85ECC 8010ED2C 01F8F821 */  addu  $ra, $t7, $t8
/* B85ED0 8010ED30 3C11FD70 */  lui   $s1, 0xfd70
/* B85ED4 8010ED34 3C0BFB00 */  lui   $t3, 0xfb00
/* B85ED8 8010ED38 3C0AFA00 */  lui   $t2, 0xfa00
/* B85EDC 8010ED3C 3C06E700 */  lui   $a2, 0xe700
.L8010ED40:
/* B85EE0 8010ED40 8FB90140 */  lw    $t9, 0x140($sp)
/* B85EE4 8010ED44 03E72021 */  addu  $a0, $ra, $a3
/* B85EE8 8010ED48 3C01E400 */  lui   $at, 0xe400
/* B85EEC 8010ED4C 272E0008 */  addiu $t6, $t9, 8
/* B85EF0 8010ED50 AFAE0140 */  sw    $t6, 0x140($sp)
/* B85EF4 8010ED54 AF200004 */  sw    $zero, 4($t9)
/* B85EF8 8010ED58 AF260000 */  sw    $a2, ($t9)
/* B85EFC 8010ED5C 8FAF0140 */  lw    $t7, 0x140($sp)
/* B85F00 8010ED60 24E70001 */  addiu $a3, $a3, 1
/* B85F04 8010ED64 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B85F08 8010ED68 25F80008 */  addiu $t8, $t7, 8
/* B85F0C 8010ED6C AFB80140 */  sw    $t8, 0x140($sp)
/* B85F10 8010ED70 ADEC0004 */  sw    $t4, 4($t7)
/* B85F14 8010ED74 ADEA0000 */  sw    $t2, ($t7)
/* B85F18 8010ED78 8FB90140 */  lw    $t9, 0x140($sp)
/* B85F1C 8010ED7C 3C0F8015 */  lui   $t7, %hi(D_80153C94)
/* B85F20 8010ED80 272E0008 */  addiu $t6, $t9, 8
/* B85F24 8010ED84 AFAE0140 */  sw    $t6, 0x140($sp)
/* B85F28 8010ED88 AF2D0004 */  sw    $t5, 4($t9)
/* B85F2C 8010ED8C AF2B0000 */  sw    $t3, ($t9)
/* B85F30 8010ED90 8FA20140 */  lw    $v0, 0x140($sp)
/* B85F34 8010ED94 24580008 */  addiu $t8, $v0, 8
/* B85F38 8010ED98 AFB80140 */  sw    $t8, 0x140($sp)
/* B85F3C 8010ED9C AC510000 */  sw    $s1, ($v0)
/* B85F40 8010EDA0 90990001 */  lbu   $t9, 1($a0)
/* B85F44 8010EDA4 00197080 */  sll   $t6, $t9, 2
/* B85F48 8010EDA8 01EE7821 */  addu  $t7, $t7, $t6
/* B85F4C 8010EDAC 8DEF3C94 */  lw    $t7, %lo(D_80153C94)($t7)
/* B85F50 8010EDB0 3C0EF570 */  lui   $t6, 0xf570
/* B85F54 8010EDB4 AC4F0004 */  sw    $t7, 4($v0)
/* B85F58 8010EDB8 8FB80140 */  lw    $t8, 0x140($sp)
/* B85F5C 8010EDBC 3C0F0700 */  lui   $t7, 0x700
/* B85F60 8010EDC0 27190008 */  addiu $t9, $t8, 8
/* B85F64 8010EDC4 AFB90140 */  sw    $t9, 0x140($sp)
/* B85F68 8010EDC8 AF0F0004 */  sw    $t7, 4($t8)
/* B85F6C 8010EDCC AF0E0000 */  sw    $t6, ($t8)
/* B85F70 8010EDD0 8FB80140 */  lw    $t8, 0x140($sp)
/* B85F74 8010EDD4 3C0EE600 */  lui   $t6, 0xe600
/* B85F78 8010EDD8 27190008 */  addiu $t9, $t8, 8
/* B85F7C 8010EDDC AFB90140 */  sw    $t9, 0x140($sp)
/* B85F80 8010EDE0 AF000004 */  sw    $zero, 4($t8)
/* B85F84 8010EDE4 AF0E0000 */  sw    $t6, ($t8)
/* B85F88 8010EDE8 8FAF0140 */  lw    $t7, 0x140($sp)
/* B85F8C 8010EDEC 3C0E0707 */  lui   $t6, (0x0707F400 >> 16) # lui $t6, 0x707
/* B85F90 8010EDF0 35CEF400 */  ori   $t6, (0x0707F400 & 0xFFFF) # ori $t6, $t6, 0xf400
/* B85F94 8010EDF4 25F80008 */  addiu $t8, $t7, 8
/* B85F98 8010EDF8 AFB80140 */  sw    $t8, 0x140($sp)
/* B85F9C 8010EDFC 3C19F300 */  lui   $t9, 0xf300
/* B85FA0 8010EE00 ADF90000 */  sw    $t9, ($t7)
/* B85FA4 8010EE04 ADEE0004 */  sw    $t6, 4($t7)
/* B85FA8 8010EE08 8FAF0140 */  lw    $t7, 0x140($sp)
/* B85FAC 8010EE0C 25F80008 */  addiu $t8, $t7, 8
/* B85FB0 8010EE10 AFB80140 */  sw    $t8, 0x140($sp)
/* B85FB4 8010EE14 ADE00004 */  sw    $zero, 4($t7)
/* B85FB8 8010EE18 ADE60000 */  sw    $a2, ($t7)
/* B85FBC 8010EE1C 8FB90140 */  lw    $t9, 0x140($sp)
/* B85FC0 8010EE20 3C0FF568 */  lui   $t7, (0xF5680400 >> 16) # lui $t7, 0xf568
/* B85FC4 8010EE24 35EF0400 */  ori   $t7, (0xF5680400 & 0xFFFF) # ori $t7, $t7, 0x400
/* B85FC8 8010EE28 272E0008 */  addiu $t6, $t9, 8
/* B85FCC 8010EE2C AFAE0140 */  sw    $t6, 0x140($sp)
/* B85FD0 8010EE30 AF200004 */  sw    $zero, 4($t9)
/* B85FD4 8010EE34 AF2F0000 */  sw    $t7, ($t9)
/* B85FD8 8010EE38 8FB80140 */  lw    $t8, 0x140($sp)
/* B85FDC 8010EE3C 3C0F0003 */  lui   $t7, (0x0003C03C >> 16) # lui $t7, 3
/* B85FE0 8010EE40 35EFC03C */  ori   $t7, (0x0003C03C & 0xFFFF) # ori $t7, $t7, 0xc03c
/* B85FE4 8010EE44 27190008 */  addiu $t9, $t8, 8
/* B85FE8 8010EE48 AFB90140 */  sw    $t9, 0x140($sp)
/* B85FEC 8010EE4C 3C0EF200 */  lui   $t6, 0xf200
/* B85FF0 8010EE50 AF0E0000 */  sw    $t6, ($t8)
/* B85FF4 8010EE54 AF0F0004 */  sw    $t7, 4($t8)
/* B85FF8 8010EE58 8FA20140 */  lw    $v0, 0x140($sp)
/* B85FFC 8010EE5C 908F0001 */  lbu   $t7, 1($a0)
/* B86000 8010EE60 8D2E0000 */  lw    $t6, ($t1)
/* B86004 8010EE64 24590008 */  addiu $t9, $v0, 8
/* B86008 8010EE68 AFB90140 */  sw    $t9, 0x140($sp)
/* B8600C 8010EE6C 000FC040 */  sll   $t8, $t7, 1
/* B86010 8010EE70 01D8C821 */  addu  $t9, $t6, $t8
/* B86014 8010EE74 872F0F6E */  lh    $t7, 0xf6e($t9)
/* B86018 8010EE78 25EE0010 */  addiu $t6, $t7, 0x10
/* B8601C 8010EE7C 000EC080 */  sll   $t8, $t6, 2
/* B86020 8010EE80 33190FFF */  andi  $t9, $t8, 0xfff
/* B86024 8010EE84 24AE0010 */  addiu $t6, $a1, 0x10
/* B86028 8010EE88 000EC080 */  sll   $t8, $t6, 2
/* B8602C 8010EE8C 03217825 */  or    $t7, $t9, $at
/* B86030 8010EE90 33190FFF */  andi  $t9, $t8, 0xfff
/* B86034 8010EE94 00197300 */  sll   $t6, $t9, 0xc
/* B86038 8010EE98 01EEC025 */  or    $t8, $t7, $t6
/* B8603C 8010EE9C AC580000 */  sw    $t8, ($v0)
/* B86040 8010EEA0 908F0001 */  lbu   $t7, 1($a0)
/* B86044 8010EEA4 8D390000 */  lw    $t9, ($t1)
/* B86048 8010EEA8 00E8082A */  slt   $at, $a3, $t0
/* B8604C 8010EEAC 000F7040 */  sll   $t6, $t7, 1
/* B86050 8010EEB0 032EC021 */  addu  $t8, $t9, $t6
/* B86054 8010EEB4 870F0F6E */  lh    $t7, 0xf6e($t8)
/* B86058 8010EEB8 0005C080 */  sll   $t8, $a1, 2
/* B8605C 8010EEBC 000FC880 */  sll   $t9, $t7, 2
/* B86060 8010EEC0 332E0FFF */  andi  $t6, $t9, 0xfff
/* B86064 8010EEC4 330F0FFF */  andi  $t7, $t8, 0xfff
/* B86068 8010EEC8 000FCB00 */  sll   $t9, $t7, 0xc
/* B8606C 8010EECC 01D9C025 */  or    $t8, $t6, $t9
/* B86070 8010EED0 AC580004 */  sw    $t8, 4($v0)
/* B86074 8010EED4 8FAF0140 */  lw    $t7, 0x140($sp)
/* B86078 8010EED8 3C19E100 */  lui   $t9, 0xe100
/* B8607C 8010EEDC 25EE0008 */  addiu $t6, $t7, 8
/* B86080 8010EEE0 AFAE0140 */  sw    $t6, 0x140($sp)
/* B86084 8010EEE4 ADE00004 */  sw    $zero, 4($t7)
/* B86088 8010EEE8 ADF90000 */  sw    $t9, ($t7)
/* B8608C 8010EEEC 8FB80140 */  lw    $t8, 0x140($sp)
/* B86090 8010EEF0 3C190400 */  lui   $t9, (0x04000400 >> 16) # lui $t9, 0x400
/* B86094 8010EEF4 37390400 */  ori   $t9, (0x04000400 & 0xFFFF) # ori $t9, $t9, 0x400
/* B86098 8010EEF8 270F0008 */  addiu $t7, $t8, 8
/* B8609C 8010EEFC AFAF0140 */  sw    $t7, 0x140($sp)
/* B860A0 8010EF00 3C0EF100 */  lui   $t6, 0xf100
/* B860A4 8010EF04 AF0E0000 */  sw    $t6, ($t8)
/* B860A8 8010EF08 AF190004 */  sw    $t9, 4($t8)
/* B860AC 8010EF0C 8D380000 */  lw    $t8, ($t1)
/* B860B0 8010EF10 870F0F4E */  lh    $t7, 0xf4e($t8)
/* B860B4 8010EF14 00AF2821 */  addu  $a1, $a1, $t7
/* B860B8 8010EF18 1420FF89 */  bnez  $at, .L8010ED40
/* B860BC 8010EF1C 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B860C0 8010EF20 92026304 */  lbu   $v0, 0x6304($s0)
.L8010EF24:
/* B860C4 8010EF24 24010021 */  li    $at, 33
/* B860C8 8010EF28 3C06E700 */  lui   $a2, 0xe700
/* B860CC 8010EF2C 3C0AFA00 */  lui   $t2, 0xfa00
/* B860D0 8010EF30 3C0BFB00 */  lui   $t3, 0xfb00
/* B860D4 8010EF34 104100DC */  beq   $v0, $at, .L8010F2A8
/* B860D8 8010EF38 3C11FD70 */   lui   $s1, 0xfd70
/* B860DC 8010EF3C 24010029 */  li    $at, 41
/* B860E0 8010EF40 504100DA */  beql  $v0, $at, .L8010F2AC
/* B860E4 8010EF44 8FB80140 */   lw    $t8, 0x140($sp)
/* B860E8 8010EF48 8D280000 */  lw    $t0, ($t1)
/* B860EC 8010EF4C 00003825 */  move  $a3, $zero
/* B860F0 8010EF50 95050F4C */  lhu   $a1, 0xf4c($t0)
.L8010EF54:
/* B860F4 8010EF54 3C0E8015 */  lui   $t6, %hi(D_8015394C) # $t6, 0x8015
/* B860F8 8010EF58 25CE394C */  addiu $t6, %lo(D_8015394C) # addiu $t6, $t6, 0x394c
/* B860FC 8010EF5C 00EE2021 */  addu  $a0, $a3, $t6
/* B86100 8010EF60 90990000 */  lbu   $t9, ($a0)
/* B86104 8010EF64 240100FF */  li    $at, 255
/* B86108 8010EF68 132100CF */  beq   $t9, $at, .L8010F2A8
/* B8610C 8010EF6C 3C0F8015 */   lui   $t7, %hi(D_80153958) # $t7, 0x8015
/* B86110 8010EF70 25EF3958 */  addiu $t7, %lo(D_80153958) # addiu $t7, $t7, 0x3958
/* B86114 8010EF74 0007C040 */  sll   $t8, $a3, 1
/* B86118 8010EF78 030F1821 */  addu  $v1, $t8, $t7
/* B8611C 8010EF7C 84620000 */  lh    $v0, ($v1)
/* B86120 8010EF80 240C00FF */  li    $t4, 255
/* B86124 8010EF84 5182000A */  beql  $t4, $v0, .L8010EFB0
/* B86128 8010EF88 8FAF0140 */   lw    $t7, 0x140($sp)
/* B8612C 8010EF8C 850E0F78 */  lh    $t6, 0xf78($t0)
/* B86130 8010EF90 004EC821 */  addu  $t9, $v0, $t6
/* B86134 8010EF94 A4790000 */  sh    $t9, ($v1)
/* B86138 8010EF98 84780000 */  lh    $t8, ($v1)
/* B8613C 8010EF9C 2B0100FF */  slti  $at, $t8, 0xff
/* B86140 8010EFA0 54200003 */  bnezl $at, .L8010EFB0
/* B86144 8010EFA4 8FAF0140 */   lw    $t7, 0x140($sp)
/* B86148 8010EFA8 A46C0000 */  sh    $t4, ($v1)
/* B8614C 8010EFAC 8FAF0140 */  lw    $t7, 0x140($sp)
.L8010EFB0:
/* B86150 8010EFB0 25EE0008 */  addiu $t6, $t7, 8
/* B86154 8010EFB4 AFAE0140 */  sw    $t6, 0x140($sp)
/* B86158 8010EFB8 ADE00004 */  sw    $zero, 4($t7)
/* B8615C 8010EFBC ADE60000 */  sw    $a2, ($t7)
/* B86160 8010EFC0 90990000 */  lbu   $t9, ($a0)
/* B86164 8010EFC4 5720002A */  bnezl $t9, .L8010F070
/* B86168 8010EFC8 8FA20140 */   lw    $v0, 0x140($sp)
/* B8616C 8010EFCC 8FA20140 */  lw    $v0, 0x140($sp)
/* B86170 8010EFD0 3C188017 */  lui   $t8, %hi(D_801759A8) # $t8, 0x8017
/* B86174 8010EFD4 244F0008 */  addiu $t7, $v0, 8
/* B86178 8010EFD8 AFAF0140 */  sw    $t7, 0x140($sp)
/* B8617C 8010EFDC AC4A0000 */  sw    $t2, ($v0)
/* B86180 8010EFE0 846E0000 */  lh    $t6, ($v1)
/* B86184 8010EFE4 870F59A8 */  lh    $t7, %lo(D_801759A8)($t8)
/* B86188 8010EFE8 31D900FF */  andi  $t9, $t6, 0xff
/* B8618C 8010EFEC 000F7600 */  sll   $t6, $t7, 0x18
/* B86190 8010EFF0 3C0F8017 */  lui   $t7, %hi(D_801759AC) # $t7, 0x8017
/* B86194 8010EFF4 85EF59AC */  lh    $t7, %lo(D_801759AC)($t7)
/* B86198 8010EFF8 032EC025 */  or    $t8, $t9, $t6
/* B8619C 8010EFFC 31F900FF */  andi  $t9, $t7, 0xff
/* B861A0 8010F000 00197400 */  sll   $t6, $t9, 0x10
/* B861A4 8010F004 3C198017 */  lui   $t9, %hi(D_801759AA) # $t9, 0x8017
/* B861A8 8010F008 873959AA */  lh    $t9, %lo(D_801759AA)($t9)
/* B861AC 8010F00C 030E7825 */  or    $t7, $t8, $t6
/* B861B0 8010F010 333800FF */  andi  $t8, $t9, 0xff
/* B861B4 8010F014 00187200 */  sll   $t6, $t8, 8
/* B861B8 8010F018 01EEC825 */  or    $t9, $t7, $t6
/* B861BC 8010F01C AC590004 */  sw    $t9, 4($v0)
/* B861C0 8010F020 8FA20140 */  lw    $v0, 0x140($sp)
/* B861C4 8010F024 3C0E8017 */  lui   $t6, %hi(D_801759AE) # $t6, 0x8017
/* B861C8 8010F028 244F0008 */  addiu $t7, $v0, 8
/* B861CC 8010F02C AFAF0140 */  sw    $t7, 0x140($sp)
/* B861D0 8010F030 AC4B0000 */  sw    $t3, ($v0)
/* B861D4 8010F034 3C0F8017 */  lui   $t7, %hi(D_801759B2) # $t7, 0x8017
/* B861D8 8010F038 85EF59B2 */  lh    $t7, %lo(D_801759B2)($t7)
/* B861DC 8010F03C 85D959AE */  lh    $t9, %lo(D_801759AE)($t6)
/* B861E0 8010F040 31EE00FF */  andi  $t6, $t7, 0xff
/* B861E4 8010F044 0019C600 */  sll   $t8, $t9, 0x18
/* B861E8 8010F048 000ECC00 */  sll   $t9, $t6, 0x10
/* B861EC 8010F04C 3C0E8017 */  lui   $t6, %hi(D_801759B0) # $t6, 0x8017
/* B861F0 8010F050 85CE59B0 */  lh    $t6, %lo(D_801759B0)($t6)
/* B861F4 8010F054 03197825 */  or    $t7, $t8, $t9
/* B861F8 8010F058 31D800FF */  andi  $t8, $t6, 0xff
/* B861FC 8010F05C 0018CA00 */  sll   $t9, $t8, 8
/* B86200 8010F060 01F97025 */  or    $t6, $t7, $t9
/* B86204 8010F064 10000028 */  b     .L8010F108
/* B86208 8010F068 AC4E0004 */   sw    $t6, 4($v0)
/* B8620C 8010F06C 8FA20140 */  lw    $v0, 0x140($sp)
.L8010F070:
/* B86210 8010F070 3C188017 */  lui   $t8, %hi(D_801759B4) # $t8, 0x8017
/* B86214 8010F074 244F0008 */  addiu $t7, $v0, 8
/* B86218 8010F078 AFAF0140 */  sw    $t7, 0x140($sp)
/* B8621C 8010F07C AC4A0000 */  sw    $t2, ($v0)
/* B86220 8010F080 84790000 */  lh    $t9, ($v1)
/* B86224 8010F084 870F59B4 */  lh    $t7, %lo(D_801759B4)($t8)
/* B86228 8010F088 332E00FF */  andi  $t6, $t9, 0xff
/* B8622C 8010F08C 000FCE00 */  sll   $t9, $t7, 0x18
/* B86230 8010F090 3C0F8017 */  lui   $t7, %hi(D_801759B8) # $t7, 0x8017
/* B86234 8010F094 85EF59B8 */  lh    $t7, %lo(D_801759B8)($t7)
/* B86238 8010F098 01D9C025 */  or    $t8, $t6, $t9
/* B8623C 8010F09C 31EE00FF */  andi  $t6, $t7, 0xff
/* B86240 8010F0A0 000ECC00 */  sll   $t9, $t6, 0x10
/* B86244 8010F0A4 3C0E8017 */  lui   $t6, %hi(D_801759B6) # $t6, 0x8017
/* B86248 8010F0A8 85CE59B6 */  lh    $t6, %lo(D_801759B6)($t6)
/* B8624C 8010F0AC 03197825 */  or    $t7, $t8, $t9
/* B86250 8010F0B0 31D800FF */  andi  $t8, $t6, 0xff
/* B86254 8010F0B4 0018CA00 */  sll   $t9, $t8, 8
/* B86258 8010F0B8 01F97025 */  or    $t6, $t7, $t9
/* B8625C 8010F0BC AC4E0004 */  sw    $t6, 4($v0)
/* B86260 8010F0C0 8FA20140 */  lw    $v0, 0x140($sp)
/* B86264 8010F0C4 3C198017 */  lui   $t9, %hi(D_801759BA) # $t9, 0x8017
/* B86268 8010F0C8 244F0008 */  addiu $t7, $v0, 8
/* B8626C 8010F0CC AFAF0140 */  sw    $t7, 0x140($sp)
/* B86270 8010F0D0 AC4B0000 */  sw    $t3, ($v0)
/* B86274 8010F0D4 3C0F8017 */  lui   $t7, %hi(D_801759BE) # $t7, 0x8017
/* B86278 8010F0D8 85EF59BE */  lh    $t7, %lo(D_801759BE)($t7)
/* B8627C 8010F0DC 872E59BA */  lh    $t6, %lo(D_801759BA)($t9)
/* B86280 8010F0E0 31F900FF */  andi  $t9, $t7, 0xff
/* B86284 8010F0E4 000EC600 */  sll   $t8, $t6, 0x18
/* B86288 8010F0E8 00197400 */  sll   $t6, $t9, 0x10
/* B8628C 8010F0EC 3C198017 */  lui   $t9, %hi(D_801759BC) # $t9, 0x8017
/* B86290 8010F0F0 873959BC */  lh    $t9, %lo(D_801759BC)($t9)
/* B86294 8010F0F4 030E7825 */  or    $t7, $t8, $t6
/* B86298 8010F0F8 333800FF */  andi  $t8, $t9, 0xff
/* B8629C 8010F0FC 00187200 */  sll   $t6, $t8, 8
/* B862A0 8010F100 01EEC825 */  or    $t9, $t7, $t6
/* B862A4 8010F104 AC590004 */  sw    $t9, 4($v0)
.L8010F108:
/* B862A8 8010F108 8FA20140 */  lw    $v0, 0x140($sp)
/* B862AC 8010F10C 3C188015 */  lui   $t8, %hi(D_80153C94)
/* B862B0 8010F110 3C01E400 */  lui   $at, 0xe400
/* B862B4 8010F114 244F0008 */  addiu $t7, $v0, 8
/* B862B8 8010F118 AFAF0140 */  sw    $t7, 0x140($sp)
/* B862BC 8010F11C AC510000 */  sw    $s1, ($v0)
/* B862C0 8010F120 908E0000 */  lbu   $t6, ($a0)
/* B862C4 8010F124 24E70001 */  addiu $a3, $a3, 1
/* B862C8 8010F128 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B862CC 8010F12C 000EC880 */  sll   $t9, $t6, 2
/* B862D0 8010F130 0319C021 */  addu  $t8, $t8, $t9
/* B862D4 8010F134 8F183C94 */  lw    $t8, %lo(D_80153C94)($t8)
/* B862D8 8010F138 3C19F570 */  lui   $t9, 0xf570
/* B862DC 8010F13C AC580004 */  sw    $t8, 4($v0)
/* B862E0 8010F140 8FAF0140 */  lw    $t7, 0x140($sp)
/* B862E4 8010F144 3C180700 */  lui   $t8, 0x700
/* B862E8 8010F148 25EE0008 */  addiu $t6, $t7, 8
/* B862EC 8010F14C AFAE0140 */  sw    $t6, 0x140($sp)
/* B862F0 8010F150 ADF80004 */  sw    $t8, 4($t7)
/* B862F4 8010F154 ADF90000 */  sw    $t9, ($t7)
/* B862F8 8010F158 8FAF0140 */  lw    $t7, 0x140($sp)
/* B862FC 8010F15C 3C19E600 */  lui   $t9, 0xe600
/* B86300 8010F160 25EE0008 */  addiu $t6, $t7, 8
/* B86304 8010F164 AFAE0140 */  sw    $t6, 0x140($sp)
/* B86308 8010F168 ADE00004 */  sw    $zero, 4($t7)
/* B8630C 8010F16C ADF90000 */  sw    $t9, ($t7)
/* B86310 8010F170 8FB80140 */  lw    $t8, 0x140($sp)
/* B86314 8010F174 3C190707 */  lui   $t9, (0x0707F400 >> 16) # lui $t9, 0x707
/* B86318 8010F178 3739F400 */  ori   $t9, (0x0707F400 & 0xFFFF) # ori $t9, $t9, 0xf400
/* B8631C 8010F17C 270F0008 */  addiu $t7, $t8, 8
/* B86320 8010F180 AFAF0140 */  sw    $t7, 0x140($sp)
/* B86324 8010F184 3C0EF300 */  lui   $t6, 0xf300
/* B86328 8010F188 AF0E0000 */  sw    $t6, ($t8)
/* B8632C 8010F18C AF190004 */  sw    $t9, 4($t8)
/* B86330 8010F190 8FB80140 */  lw    $t8, 0x140($sp)
/* B86334 8010F194 270F0008 */  addiu $t7, $t8, 8
/* B86338 8010F198 AFAF0140 */  sw    $t7, 0x140($sp)
/* B8633C 8010F19C AF000004 */  sw    $zero, 4($t8)
/* B86340 8010F1A0 AF060000 */  sw    $a2, ($t8)
/* B86344 8010F1A4 8FAE0140 */  lw    $t6, 0x140($sp)
/* B86348 8010F1A8 3C18F568 */  lui   $t8, (0xF5680400 >> 16) # lui $t8, 0xf568
/* B8634C 8010F1AC 37180400 */  ori   $t8, (0xF5680400 & 0xFFFF) # ori $t8, $t8, 0x400
/* B86350 8010F1B0 25D90008 */  addiu $t9, $t6, 8
/* B86354 8010F1B4 AFB90140 */  sw    $t9, 0x140($sp)
/* B86358 8010F1B8 ADC00004 */  sw    $zero, 4($t6)
/* B8635C 8010F1BC ADD80000 */  sw    $t8, ($t6)
/* B86360 8010F1C0 8FAF0140 */  lw    $t7, 0x140($sp)
/* B86364 8010F1C4 3C180003 */  lui   $t8, (0x0003C03C >> 16) # lui $t8, 3
/* B86368 8010F1C8 3718C03C */  ori   $t8, (0x0003C03C & 0xFFFF) # ori $t8, $t8, 0xc03c
/* B8636C 8010F1CC 25EE0008 */  addiu $t6, $t7, 8
/* B86370 8010F1D0 AFAE0140 */  sw    $t6, 0x140($sp)
/* B86374 8010F1D4 3C19F200 */  lui   $t9, 0xf200
/* B86378 8010F1D8 ADF90000 */  sw    $t9, ($t7)
/* B8637C 8010F1DC ADF80004 */  sw    $t8, 4($t7)
/* B86380 8010F1E0 8FA20140 */  lw    $v0, 0x140($sp)
/* B86384 8010F1E4 90980000 */  lbu   $t8, ($a0)
/* B86388 8010F1E8 8D390000 */  lw    $t9, ($t1)
/* B8638C 8010F1EC 244E0008 */  addiu $t6, $v0, 8
/* B86390 8010F1F0 AFAE0140 */  sw    $t6, 0x140($sp)
/* B86394 8010F1F4 00187840 */  sll   $t7, $t8, 1
/* B86398 8010F1F8 032F7021 */  addu  $t6, $t9, $t7
/* B8639C 8010F1FC 85D80F6E */  lh    $t8, 0xf6e($t6)
/* B863A0 8010F200 27190010 */  addiu $t9, $t8, 0x10
/* B863A4 8010F204 00197880 */  sll   $t7, $t9, 2
/* B863A8 8010F208 31EE0FFF */  andi  $t6, $t7, 0xfff
/* B863AC 8010F20C 24B90010 */  addiu $t9, $a1, 0x10
/* B863B0 8010F210 00197880 */  sll   $t7, $t9, 2
/* B863B4 8010F214 01C1C025 */  or    $t8, $t6, $at
/* B863B8 8010F218 31EE0FFF */  andi  $t6, $t7, 0xfff
/* B863BC 8010F21C 000ECB00 */  sll   $t9, $t6, 0xc
/* B863C0 8010F220 03197825 */  or    $t7, $t8, $t9
/* B863C4 8010F224 AC4F0000 */  sw    $t7, ($v0)
/* B863C8 8010F228 90980000 */  lbu   $t8, ($a0)
/* B863CC 8010F22C 8D2E0000 */  lw    $t6, ($t1)
/* B863D0 8010F230 28E10008 */  slti  $at, $a3, 8
/* B863D4 8010F234 0018C840 */  sll   $t9, $t8, 1
/* B863D8 8010F238 01D97821 */  addu  $t7, $t6, $t9
/* B863DC 8010F23C 85F80F6E */  lh    $t8, 0xf6e($t7)
/* B863E0 8010F240 00057880 */  sll   $t7, $a1, 2
/* B863E4 8010F244 00187080 */  sll   $t6, $t8, 2
/* B863E8 8010F248 31D90FFF */  andi  $t9, $t6, 0xfff
/* B863EC 8010F24C 31F80FFF */  andi  $t8, $t7, 0xfff
/* B863F0 8010F250 00187300 */  sll   $t6, $t8, 0xc
/* B863F4 8010F254 032E7825 */  or    $t7, $t9, $t6
/* B863F8 8010F258 AC4F0004 */  sw    $t7, 4($v0)
/* B863FC 8010F25C 8FB80140 */  lw    $t8, 0x140($sp)
/* B86400 8010F260 3C0EE100 */  lui   $t6, 0xe100
/* B86404 8010F264 27190008 */  addiu $t9, $t8, 8
/* B86408 8010F268 AFB90140 */  sw    $t9, 0x140($sp)
/* B8640C 8010F26C AF000004 */  sw    $zero, 4($t8)
/* B86410 8010F270 AF0E0000 */  sw    $t6, ($t8)
/* B86414 8010F274 8FAF0140 */  lw    $t7, 0x140($sp)
/* B86418 8010F278 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* B8641C 8010F27C 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* B86420 8010F280 25F80008 */  addiu $t8, $t7, 8
/* B86424 8010F284 AFB80140 */  sw    $t8, 0x140($sp)
/* B86428 8010F288 3C19F100 */  lui   $t9, 0xf100
/* B8642C 8010F28C ADF90000 */  sw    $t9, ($t7)
/* B86430 8010F290 ADEE0004 */  sw    $t6, 4($t7)
/* B86434 8010F294 8D280000 */  lw    $t0, ($t1)
/* B86438 8010F298 850F0F4E */  lh    $t7, 0xf4e($t0)
/* B8643C 8010F29C 00AF2821 */  addu  $a1, $a1, $t7
/* B86440 8010F2A0 1420FF2C */  bnez  $at, .L8010EF54
/* B86444 8010F2A4 30A5FFFF */   andi  $a1, $a1, 0xffff
.L8010F2A8:
/* B86448 8010F2A8 8FB80140 */  lw    $t8, 0x140($sp)
.L8010F2AC:
/* B8644C 8010F2AC 8FB9015C */  lw    $t9, 0x15c($sp)
/* B86450 8010F2B0 AF380000 */  sw    $t8, ($t9)
/* B86454 8010F2B4 8FBF003C */  lw    $ra, 0x3c($sp)
/* B86458 8010F2B8 8FB20038 */  lw    $s2, 0x38($sp)
/* B8645C 8010F2BC 8FB10034 */  lw    $s1, 0x34($sp)
/* B86460 8010F2C0 8FB00030 */  lw    $s0, 0x30($sp)
/* B86464 8010F2C4 03E00008 */  jr    $ra
/* B86468 8010F2C8 27BD0158 */   addiu $sp, $sp, 0x158

glabel func_8010F2CC
/* B8646C 8010F2CC 27BDFF98 */  addiu $sp, $sp, -0x68
/* B86470 8010F2D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B86474 8010F2D4 AFA40068 */  sw    $a0, 0x68($sp)
/* B86478 8010F2D8 3C068015 */  lui   $a2, %hi(D_80154984) # $a2, 0x8015
/* B8647C 8010F2DC 24C64984 */  addiu $a2, %lo(D_80154984) # addiu $a2, $a2, 0x4984
/* B86480 8010F2E0 27A40050 */  addiu $a0, $sp, 0x50
/* B86484 8010F2E4 AFA5006C */  sw    $a1, 0x6c($sp)
/* B86488 8010F2E8 0C031AB1 */  jal   func_800C6AC4
/* B8648C 8010F2EC 24070D9D */   li    $a3, 3485
/* B86490 8010F2F0 8FAE0068 */  lw    $t6, 0x68($sp)
/* B86494 8010F2F4 3C0F8015 */  lui   $t7, %hi(D_80153CF8) # $t7, 0x8015
/* B86498 8010F2F8 85EF3CF8 */  lh    $t7, %lo(D_80153CF8)($t7)
/* B8649C 8010F2FC 85C20000 */  lh    $v0, ($t6)
/* B864A0 8010F300 8FA5006C */  lw    $a1, 0x6c($sp)
/* B864A4 8010F304 3C018015 */  lui   $at, %hi(D_80153CF8) # $at, 0x8015
/* B864A8 8010F308 11E20004 */  beq   $t7, $v0, .L8010F31C
/* B864AC 8010F30C 2403001E */   li    $v1, 30
/* B864B0 8010F310 A4223CF8 */  sh    $v0, %lo(D_80153CF8)($at)
/* B864B4 8010F314 3C018015 */  lui   $at, %hi(D_80153CFC) # $at, 0x8015
/* B864B8 8010F318 A4233CFC */  sh    $v1, %lo(D_80153CFC)($at)
.L8010F31C:
/* B864BC 8010F31C 3C038015 */  lui   $v1, %hi(D_8014FFFF) # $v1, 0x8015
/* B864C0 8010F320 84633CFC */  lh    $v1, %lo(D_80153CFC)($v1)
/* B864C4 8010F324 3C018015 */  lui   $at, %hi(D_80153CFC) # $at, 0x8015
/* B864C8 8010F328 3C04E700 */  lui   $a0, 0xe700
/* B864CC 8010F32C 10600050 */  beqz  $v1, .L8010F470
/* B864D0 8010F330 3C06E300 */   lui   $a2, (0xE3000A01 >> 16) # lui $a2, 0xe300
/* B864D4 8010F334 2463FFFF */  addiu $v1, %lo(D_8014FFFF) # addiu $v1, $v1, -1
/* B864D8 8010F338 00031C00 */  sll   $v1, $v1, 0x10
/* B864DC 8010F33C 00031C03 */  sra   $v1, $v1, 0x10
/* B864E0 8010F340 A4233CFC */  sh    $v1, %lo(D_80153CFC)($at)
/* B864E4 8010F344 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B864E8 8010F348 34C60A01 */  ori   $a2, (0xE3000A01 & 0xFFFF) # ori $a2, $a2, 0xa01
/* B864EC 8010F34C 3C070030 */  lui   $a3, 0x30
/* B864F0 8010F350 24580008 */  addiu $t8, $v0, 8
/* B864F4 8010F354 ACB802C0 */  sw    $t8, 0x2c0($a1)
/* B864F8 8010F358 AC400004 */  sw    $zero, 4($v0)
/* B864FC 8010F35C AC440000 */  sw    $a0, ($v0)
/* B86500 8010F360 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B86504 8010F364 3C08E200 */  lui   $t0, (0xE200001C >> 16) # lui $t0, 0xe200
/* B86508 8010F368 3508001C */  ori   $t0, (0xE200001C & 0xFFFF) # ori $t0, $t0, 0x1c
/* B8650C 8010F36C 24590008 */  addiu $t9, $v0, 8
/* B86510 8010F370 ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B86514 8010F374 AC470004 */  sw    $a3, 4($v0)
/* B86518 8010F378 AC460000 */  sw    $a2, ($v0)
/* B8651C 8010F37C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B86520 8010F380 3C0C0001 */  lui   $t4, (0x00010001 >> 16) # lui $t4, 1
/* B86524 8010F384 358C0001 */  ori   $t4, (0x00010001 & 0xFFFF) # ori $t4, $t4, 1
/* B86528 8010F388 244A0008 */  addiu $t2, $v0, 8
/* B8652C 8010F38C ACAA02C0 */  sw    $t2, 0x2c0($a1)
/* B86530 8010F390 AC400004 */  sw    $zero, 4($v0)
/* B86534 8010F394 AC480000 */  sw    $t0, ($v0)
/* B86538 8010F398 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B8653C 8010F39C 3C09F700 */  lui   $t1, 0xf700
/* B86540 8010F3A0 3C0EF64F */  lui   $t6, (0xF64FC258 >> 16) # lui $t6, 0xf64f
/* B86544 8010F3A4 244B0008 */  addiu $t3, $v0, 8
/* B86548 8010F3A8 ACAB02C0 */  sw    $t3, 0x2c0($a1)
/* B8654C 8010F3AC AC4C0004 */  sw    $t4, 4($v0)
/* B86550 8010F3B0 AC490000 */  sw    $t1, ($v0)
/* B86554 8010F3B4 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B86558 8010F3B8 35CEC258 */  ori   $t6, (0xF64FC258 & 0xFFFF) # ori $t6, $t6, 0xc258
/* B8655C 8010F3BC 240F01B8 */  li    $t7, 440
/* B86560 8010F3C0 244D0008 */  addiu $t5, $v0, 8
/* B86564 8010F3C4 ACAD02C0 */  sw    $t5, 0x2c0($a1)
/* B86568 8010F3C8 AC4F0004 */  sw    $t7, 4($v0)
/* B8656C 8010F3CC AC4E0000 */  sw    $t6, ($v0)
/* B86570 8010F3D0 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B86574 8010F3D4 240DFFFF */  li    $t5, -1
/* B86578 8010F3D8 3C0FF60F */  lui   $t7, (0xF60F0230 >> 16) # lui $t7, 0xf60f
/* B8657C 8010F3DC 24580008 */  addiu $t8, $v0, 8
/* B86580 8010F3E0 ACB802C0 */  sw    $t8, 0x2c0($a1)
/* B86584 8010F3E4 AC400004 */  sw    $zero, 4($v0)
/* B86588 8010F3E8 AC440000 */  sw    $a0, ($v0)
/* B8658C 8010F3EC 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B86590 8010F3F0 3C18000A */  lui   $t8, (0x000A01E0 >> 16) # lui $t8, 0xa
/* B86594 8010F3F4 371801E0 */  ori   $t8, (0x000A01E0 & 0xFFFF) # ori $t8, $t8, 0x1e0
/* B86598 8010F3F8 24590008 */  addiu $t9, $v0, 8
/* B8659C 8010F3FC ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B865A0 8010F400 AC400004 */  sw    $zero, 4($v0)
/* B865A4 8010F404 AC440000 */  sw    $a0, ($v0)
/* B865A8 8010F408 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B865AC 8010F40C 35EF0230 */  ori   $t7, (0xF60F0230 & 0xFFFF) # ori $t7, $t7, 0x230
/* B865B0 8010F410 244A0008 */  addiu $t2, $v0, 8
/* B865B4 8010F414 ACAA02C0 */  sw    $t2, 0x2c0($a1)
/* B865B8 8010F418 AC470004 */  sw    $a3, 4($v0)
/* B865BC 8010F41C AC460000 */  sw    $a2, ($v0)
/* B865C0 8010F420 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B865C4 8010F424 244B0008 */  addiu $t3, $v0, 8
/* B865C8 8010F428 ACAB02C0 */  sw    $t3, 0x2c0($a1)
/* B865CC 8010F42C AC400004 */  sw    $zero, 4($v0)
/* B865D0 8010F430 AC480000 */  sw    $t0, ($v0)
/* B865D4 8010F434 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B865D8 8010F438 244C0008 */  addiu $t4, $v0, 8
/* B865DC 8010F43C ACAC02C0 */  sw    $t4, 0x2c0($a1)
/* B865E0 8010F440 AC4D0004 */  sw    $t5, 4($v0)
/* B865E4 8010F444 AC490000 */  sw    $t1, ($v0)
/* B865E8 8010F448 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B865EC 8010F44C 244E0008 */  addiu $t6, $v0, 8
/* B865F0 8010F450 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B865F4 8010F454 AC580004 */  sw    $t8, 4($v0)
/* B865F8 8010F458 AC4F0000 */  sw    $t7, ($v0)
/* B865FC 8010F45C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B86600 8010F460 24590008 */  addiu $t9, $v0, 8
/* B86604 8010F464 ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B86608 8010F468 AC400004 */  sw    $zero, 4($v0)
/* B8660C 8010F46C AC440000 */  sw    $a0, ($v0)
.L8010F470:
/* B86610 8010F470 3C068015 */  lui   $a2, %hi(D_80154998) # $a2, 0x8015
/* B86614 8010F474 24C64998 */  addiu $a2, %lo(D_80154998) # addiu $a2, $a2, 0x4998
/* B86618 8010F478 27A40050 */  addiu $a0, $sp, 0x50
/* B8661C 8010F47C 0C031AD5 */  jal   func_800C6B54
/* B86620 8010F480 24070DB9 */   li    $a3, 3513
/* B86624 8010F484 8FBF0014 */  lw    $ra, 0x14($sp)
/* B86628 8010F488 27BD0068 */  addiu $sp, $sp, 0x68
/* B8662C 8010F48C 03E00008 */  jr    $ra
/* B86630 8010F490 00000000 */   nop   

glabel func_8010F494
/* B86634 8010F494 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B86638 8010F498 AFB00020 */  sw    $s0, 0x20($sp)
/* B8663C 8010F49C 27B0002C */  addiu $s0, $sp, 0x2c
/* B86640 8010F4A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B86644 8010F4A4 AFA40060 */  sw    $a0, 0x60($sp)
/* B86648 8010F4A8 AFA50064 */  sw    $a1, 0x64($sp)
/* B8664C 8010F4AC 0C03EEE3 */  jal   GfxPrint_Ctor
/* B86650 8010F4B0 02002025 */   move  $a0, $s0
/* B86654 8010F4B4 8FAE0064 */  lw    $t6, 0x64($sp)
/* B86658 8010F4B8 02002025 */  move  $a0, $s0
/* B8665C 8010F4BC 0C03EF07 */  jal   GfxPrint_Open
/* B86660 8010F4C0 8DC50000 */   lw    $a1, ($t6)
/* B86664 8010F4C4 02002025 */  move  $a0, $s0
/* B86668 8010F4C8 24050006 */  li    $a1, 6
/* B8666C 8010F4CC 0C03ED07 */  jal   GfxPrint_SetPos
/* B86670 8010F4D0 2406001A */   li    $a2, 26
/* B86674 8010F4D4 240F00FF */  li    $t7, 255
/* B86678 8010F4D8 AFAF0010 */  sw    $t7, 0x10($sp)
/* B8667C 8010F4DC 02002025 */  move  $a0, $s0
/* B86680 8010F4E0 240500FF */  li    $a1, 255
/* B86684 8010F4E4 2406003C */  li    $a2, 60
/* B86688 8010F4E8 0C03ECEB */  jal   GfxPrint_SetColor
/* B8668C 8010F4EC 00003825 */   move  $a3, $zero
/* B86690 8010F4F0 3C058015 */  lui   $a1, %hi(D_801549AC) # $a1, 0x8015
/* B86694 8010F4F4 3C068015 */  lui   $a2, %hi(D_801549B0) # $a2, 0x8015
/* B86698 8010F4F8 24C649B0 */  addiu $a2, %lo(D_801549B0) # addiu $a2, $a2, 0x49b0
/* B8669C 8010F4FC 24A549AC */  addiu $a1, %lo(D_801549AC) # addiu $a1, $a1, 0x49ac
/* B866A0 8010F500 0C03EF2D */  jal   GfxPrint_Printf
/* B866A4 8010F504 02002025 */   move  $a0, $s0
/* B866A8 8010F508 02002025 */  move  $a0, $s0
/* B866AC 8010F50C 2405000E */  li    $a1, 14
/* B866B0 8010F510 0C03ED07 */  jal   GfxPrint_SetPos
/* B866B4 8010F514 2406001A */   li    $a2, 26
/* B866B8 8010F518 3C058015 */  lui   $a1, %hi(D_801549B8) # $a1, 0x8015
/* B866BC 8010F51C 3C068015 */  lui   $a2, %hi(D_801549BC) # $a2, 0x8015
/* B866C0 8010F520 24C649BC */  addiu $a2, %lo(D_801549BC) # addiu $a2, $a2, 0x49bc
/* B866C4 8010F524 24A549B8 */  addiu $a1, %lo(D_801549B8) # addiu $a1, $a1, 0x49b8
/* B866C8 8010F528 0C03EF2D */  jal   GfxPrint_Printf
/* B866CC 8010F52C 02002025 */   move  $a0, $s0
/* B866D0 8010F530 02002025 */  move  $a0, $s0
/* B866D4 8010F534 24050010 */  li    $a1, 16
/* B866D8 8010F538 0C03ED07 */  jal   GfxPrint_SetPos
/* B866DC 8010F53C 2406001A */   li    $a2, 26
/* B866E0 8010F540 8FB80060 */  lw    $t8, 0x60($sp)
/* B866E4 8010F544 3C060001 */  lui   $a2, 1
/* B866E8 8010F548 3C058015 */  lui   $a1, %hi(D_801549C0) # $a1, 0x8015
/* B866EC 8010F54C 00D83021 */  addu  $a2, $a2, $t8
/* B866F0 8010F550 94C603D0 */  lhu   $a2, 0x3d0($a2)
/* B866F4 8010F554 24A549C0 */  addiu $a1, %lo(D_801549C0) # addiu $a1, $a1, 0x49c0
/* B866F8 8010F558 0C03EF2D */  jal   GfxPrint_Printf
/* B866FC 8010F55C 02002025 */   move  $a0, $s0
/* B86700 8010F560 0C03EF19 */  jal   GfxPrint_Close
/* B86704 8010F564 02002025 */   move  $a0, $s0
/* B86708 8010F568 8FB90064 */  lw    $t9, 0x64($sp)
/* B8670C 8010F56C 02002025 */  move  $a0, $s0
/* B86710 8010F570 0C03EF05 */  jal   GfxPrint_Dtor
/* B86714 8010F574 AF220000 */   sw    $v0, ($t9)
/* B86718 8010F578 8FBF0024 */  lw    $ra, 0x24($sp)
/* B8671C 8010F57C 8FB00020 */  lw    $s0, 0x20($sp)
/* B86720 8010F580 27BD0060 */  addiu $sp, $sp, 0x60
/* B86724 8010F584 03E00008 */  jr    $ra
/* B86728 8010F588 00000000 */   nop   

glabel func_8010F58C
/* B8672C 8010F58C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B86730 8010F590 AFBF001C */  sw    $ra, 0x1c($sp)
/* B86734 8010F594 AFB10018 */  sw    $s1, 0x18($sp)
/* B86738 8010F598 AFB00014 */  sw    $s0, 0x14($sp)
/* B8673C 8010F59C 8C850000 */  lw    $a1, ($a0)
/* B86740 8010F5A0 00808825 */  move  $s1, $a0
/* B86744 8010F5A4 3C068015 */  lui   $a2, %hi(D_801549C4) # $a2, 0x8015
/* B86748 8010F5A8 24C649C4 */  addiu $a2, %lo(D_801549C4) # addiu $a2, $a2, 0x49c4
/* B8674C 8010F5AC 27A40038 */  addiu $a0, $sp, 0x38
/* B86750 8010F5B0 24070DE2 */  li    $a3, 3554
/* B86754 8010F5B4 0C031AB1 */  jal   func_800C6AC4
/* B86758 8010F5B8 00A08025 */   move  $s0, $a1
/* B8675C 8010F5BC 3C0E8016 */  lui   $t6, %hi(gSaveContext+0xf40) # $t6, 0x8016
/* B86760 8010F5C0 91CEF5A0 */  lbu   $t6, %lo(gSaveContext+0xf40)($t6)
/* B86764 8010F5C4 27A4004E */  addiu $a0, $sp, 0x4e
/* B86768 8010F5C8 A7AE004E */  sh    $t6, 0x4e($sp)
/* B8676C 8010F5CC 0C043CB3 */  jal   func_8010F2CC
/* B86770 8010F5D0 8E250000 */   lw    $a1, ($s1)
/* B86774 8010F5D4 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* B86778 8010F5D8 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* B8677C 8010F5DC 3C190001 */  lui   $t9, 1
/* B86780 8010F5E0 0331C821 */  addu  $t9, $t9, $s1
/* B86784 8010F5E4 85F812D4 */  lh    $t8, 0x12d4($t7)
/* B86788 8010F5E8 5300001E */  beql  $t8, $zero, .L8010F664
/* B8678C 8010F5EC 8E0402C0 */   lw    $a0, 0x2c0($s0)
/* B86790 8010F5F0 973903D0 */  lhu   $t9, 0x3d0($t9)
/* B86794 8010F5F4 5320001B */  beql  $t9, $zero, .L8010F664
/* B86798 8010F5F8 8E0402C0 */   lw    $a0, 0x2c0($s0)
/* B8679C 8010F5FC 8E0402C0 */  lw    $a0, 0x2c0($s0)
/* B867A0 8010F600 0C031B08 */  jal   func_800C6C20
/* B867A4 8010F604 AFA40050 */   sw    $a0, 0x50($sp)
/* B867A8 8010F608 AFA20054 */  sw    $v0, 0x54($sp)
/* B867AC 8010F60C 8E0302B0 */  lw    $v1, 0x2b0($s0)
/* B867B0 8010F610 3C09DE00 */  lui   $t1, 0xde00
/* B867B4 8010F614 02202025 */  move  $a0, $s1
/* B867B8 8010F618 24680008 */  addiu $t0, $v1, 8
/* B867BC 8010F61C AE0802B0 */  sw    $t0, 0x2b0($s0)
/* B867C0 8010F620 AC690000 */  sw    $t1, ($v1)
/* B867C4 8010F624 8FAA0054 */  lw    $t2, 0x54($sp)
/* B867C8 8010F628 27A50054 */  addiu $a1, $sp, 0x54
/* B867CC 8010F62C 0C043D25 */  jal   func_8010F494
/* B867D0 8010F630 AC6A0004 */   sw    $t2, 4($v1)
/* B867D4 8010F634 8FAB0054 */  lw    $t3, 0x54($sp)
/* B867D8 8010F638 3C0DDF00 */  lui   $t5, 0xdf00
/* B867DC 8010F63C 256C0008 */  addiu $t4, $t3, 8
/* B867E0 8010F640 AFAC0054 */  sw    $t4, 0x54($sp)
/* B867E4 8010F644 AD600004 */  sw    $zero, 4($t3)
/* B867E8 8010F648 AD6D0000 */  sw    $t5, ($t3)
/* B867EC 8010F64C 8FA50054 */  lw    $a1, 0x54($sp)
/* B867F0 8010F650 0C031B0A */  jal   func_800C6C28
/* B867F4 8010F654 8FA40050 */   lw    $a0, 0x50($sp)
/* B867F8 8010F658 8FAE0054 */  lw    $t6, 0x54($sp)
/* B867FC 8010F65C AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B86800 8010F660 8E0402C0 */  lw    $a0, 0x2c0($s0)
.L8010F664:
/* B86804 8010F664 0C031B08 */  jal   func_800C6C20
/* B86808 8010F668 AFA40050 */   sw    $a0, 0x50($sp)
/* B8680C 8010F66C AFA20054 */  sw    $v0, 0x54($sp)
/* B86810 8010F670 8E0302B0 */  lw    $v1, 0x2b0($s0)
/* B86814 8010F674 3C18DE00 */  lui   $t8, 0xde00
/* B86818 8010F678 02202025 */  move  $a0, $s1
/* B8681C 8010F67C 246F0008 */  addiu $t7, $v1, 8
/* B86820 8010F680 AE0F02B0 */  sw    $t7, 0x2b0($s0)
/* B86824 8010F684 AC780000 */  sw    $t8, ($v1)
/* B86828 8010F688 8FB90054 */  lw    $t9, 0x54($sp)
/* B8682C 8010F68C 27A50054 */  addiu $a1, $sp, 0x54
/* B86830 8010F690 0C0430E7 */  jal   func_8010C39C
/* B86834 8010F694 AC790004 */   sw    $t9, 4($v1)
/* B86838 8010F698 8FA80054 */  lw    $t0, 0x54($sp)
/* B8683C 8010F69C 3C0ADF00 */  lui   $t2, 0xdf00
/* B86840 8010F6A0 25090008 */  addiu $t1, $t0, 8
/* B86844 8010F6A4 AFA90054 */  sw    $t1, 0x54($sp)
/* B86848 8010F6A8 AD000004 */  sw    $zero, 4($t0)
/* B8684C 8010F6AC AD0A0000 */  sw    $t2, ($t0)
/* B86850 8010F6B0 8FA50054 */  lw    $a1, 0x54($sp)
/* B86854 8010F6B4 0C031B0A */  jal   func_800C6C28
/* B86858 8010F6B8 8FA40050 */   lw    $a0, 0x50($sp)
/* B8685C 8010F6BC 8FAB0054 */  lw    $t3, 0x54($sp)
/* B86860 8010F6C0 3C068015 */  lui   $a2, %hi(D_801549D8) # $a2, 0x8015
/* B86864 8010F6C4 24C649D8 */  addiu $a2, %lo(D_801549D8) # addiu $a2, $a2, 0x49d8
/* B86868 8010F6C8 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B8686C 8010F6CC 8E250000 */  lw    $a1, ($s1)
/* B86870 8010F6D0 27A40038 */  addiu $a0, $sp, 0x38
/* B86874 8010F6D4 0C031AD5 */  jal   func_800C6B54
/* B86878 8010F6D8 24070DFE */   li    $a3, 3582
/* B8687C 8010F6DC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B86880 8010F6E0 8FB00014 */  lw    $s0, 0x14($sp)
/* B86884 8010F6E4 8FB10018 */  lw    $s1, 0x18($sp)
/* B86888 8010F6E8 03E00008 */  jr    $ra
/* B8688C 8010F6EC 27BD0058 */   addiu $sp, $sp, 0x58

glabel func_8010F6F0
/* B86890 8010F6F0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B86894 8010F6F4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B86898 8010F6F8 AFA40058 */  sw    $a0, 0x58($sp)
/* B8689C 8010F6FC 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B868A0 8010F700 8C8F1C44 */  lw    $t7, 0x1c44($a0)
/* B868A4 8010F704 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B868A8 8010F708 8D260000 */  lw    $a2, ($t1)
/* B868AC 8010F70C AFAF004C */  sw    $t7, 0x4c($sp)
/* B868B0 8010F710 24820014 */  addiu $v0, $a0, 0x14
/* B868B4 8010F714 84D812D4 */  lh    $t8, 0x12d4($a2)
/* B868B8 8010F718 5300004E */  beql  $t8, $zero, .L8010F854
/* B868BC 8010F71C 8FB80058 */   lw    $t8, 0x58($sp)
/* B868C0 8010F720 9459000C */  lhu   $t9, 0xc($v0)
/* B868C4 8010F724 2401FBFF */  li    $at, -1025
/* B868C8 8010F728 03215027 */  nor   $t2, $t9, $at
/* B868CC 8010F72C 5540001D */  bnezl $t2, .L8010F7A4
/* B868D0 8010F730 84D90530 */   lh    $t9, 0x530($a2)
/* B868D4 8010F734 944B0000 */  lhu   $t3, ($v0)
/* B868D8 8010F738 2401FFDF */  li    $at, -33
/* B868DC 8010F73C 3C048015 */  lui   $a0, %hi(D_801549EC) # $a0, 0x8015
/* B868E0 8010F740 01616027 */  nor   $t4, $t3, $at
/* B868E4 8010F744 15800016 */  bnez  $t4, .L8010F7A0
/* B868E8 8010F748 248449EC */   addiu $a0, %lo(D_801549EC) # addiu $a0, $a0, 0x49ec
/* B868EC 8010F74C 3C058015 */  lui   $a1, %hi(D_80153D78) # $a1, 0x8015
/* B868F0 8010F750 0C00084C */  jal   osSyncPrintf
/* B868F4 8010F754 94A53D78 */   lhu   $a1, %lo(D_80153D78)($a1)
/* B868F8 8010F758 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B868FC 8010F75C 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B86900 8010F760 8D2D0000 */  lw    $t5, ($t1)
/* B86904 8010F764 8FA40058 */  lw    $a0, 0x58($sp)
/* B86908 8010F768 00003025 */  move  $a2, $zero
/* B8690C 8010F76C 0C042DA0 */  jal   func_8010B680
/* B86910 8010F770 95A50532 */   lhu   $a1, 0x532($t5)
/* B86914 8010F774 3C0F8015 */  lui   $t7, %hi(D_80153D78) # $t7, 0x8015
/* B86918 8010F778 95EF3D78 */  lhu   $t7, %lo(D_80153D78)($t7)
/* B8691C 8010F77C 2401000A */  li    $at, 10
/* B86920 8010F780 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B86924 8010F784 25F80001 */  addiu $t8, $t7, 1
/* B86928 8010F788 0301001A */  div   $zero, $t8, $at
/* B8692C 8010F78C 00007010 */  mfhi  $t6
/* B86930 8010F790 3C018015 */  lui   $at, %hi(D_80153D78) # $at, 0x8015
/* B86934 8010F794 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B86938 8010F798 A42E3D78 */  sh    $t6, %lo(D_80153D78)($at)
/* B8693C 8010F79C 8D260000 */  lw    $a2, ($t1)
.L8010F7A0:
/* B86940 8010F7A0 84D90530 */  lh    $t9, 0x530($a2)
.L8010F7A4:
/* B86944 8010F7A4 5320002B */  beql  $t9, $zero, .L8010F854
/* B86948 8010F7A8 8FB80058 */   lw    $t8, 0x58($sp)
/* B8694C 8010F7AC 84C50532 */  lh    $a1, 0x532($a2)
/* B86950 8010F7B0 34078000 */  li    $a3, 32768
/* B86954 8010F7B4 3C088015 */  lui   $t0, %hi(D_801538F0) # $t0, 0x8015
/* B86958 8010F7B8 10E50025 */  beq   $a3, $a1, .L8010F850
/* B8695C 8010F7BC 250838F0 */   addiu $t0, %lo(D_801538F0) # addiu $t0, $t0, 0x38f0
/* B86960 8010F7C0 3404FFFD */  li    $a0, 65533
/* B86964 8010F7C4 8D020000 */  lw    $v0, ($t0)
.L8010F7C8:
/* B86968 8010F7C8 24AF0001 */  addiu $t7, $a1, 1
/* B8696C 8010F7CC 94430000 */  lhu   $v1, ($v0)
/* B86970 8010F7D0 5083001B */  beql  $a0, $v1, .L8010F840
/* B86974 8010F7D4 A4CF0532 */   sh    $t7, 0x532($a2)
.L8010F7D8:
/* B86978 8010F7D8 54650015 */  bnel  $v1, $a1, .L8010F830
/* B8697C 8010F7DC 94430008 */   lhu   $v1, 8($v0)
/* B86980 8010F7E0 3C048015 */  lui   $a0, %hi(D_801549F8) # $a0, 0x8015
/* B86984 8010F7E4 0C00084C */  jal   osSyncPrintf
/* B86988 8010F7E8 248449F8 */   addiu $a0, %lo(D_801549F8) # addiu $a0, $a0, 0x49f8
/* B8698C 8010F7EC 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B86990 8010F7F0 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B86994 8010F7F4 8D2A0000 */  lw    $t2, ($t1)
/* B86998 8010F7F8 8FA40058 */  lw    $a0, 0x58($sp)
/* B8699C 8010F7FC 00003025 */  move  $a2, $zero
/* B869A0 8010F800 0C042DA0 */  jal   func_8010B680
/* B869A4 8010F804 95450532 */   lhu   $a1, 0x532($t2)
/* B869A8 8010F808 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B869AC 8010F80C 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B869B0 8010F810 8D260000 */  lw    $a2, ($t1)
/* B869B4 8010F814 84CB0532 */  lh    $t3, 0x532($a2)
/* B869B8 8010F818 256C0001 */  addiu $t4, $t3, 1
/* B869BC 8010F81C A4CC0532 */  sh    $t4, 0x532($a2)
/* B869C0 8010F820 8D2D0000 */  lw    $t5, ($t1)
/* B869C4 8010F824 100002F5 */  b     .L801103FC
/* B869C8 8010F828 A5A00530 */   sh    $zero, 0x530($t5)
/* B869CC 8010F82C 94430008 */  lhu   $v1, 8($v0)
.L8010F830:
/* B869D0 8010F830 24420008 */  addiu $v0, $v0, 8
/* B869D4 8010F834 1483FFE8 */  bne   $a0, $v1, .L8010F7D8
/* B869D8 8010F838 00000000 */   nop   
/* B869DC 8010F83C A4CF0532 */  sh    $t7, 0x532($a2)
.L8010F840:
/* B869E0 8010F840 8D260000 */  lw    $a2, ($t1)
/* B869E4 8010F844 84C50532 */  lh    $a1, 0x532($a2)
/* B869E8 8010F848 54E5FFDF */  bnel  $a3, $a1, .L8010F7C8
/* B869EC 8010F84C 8D020000 */   lw    $v0, ($t0)
.L8010F850:
/* B869F0 8010F850 8FB80058 */  lw    $t8, 0x58($sp)
.L8010F854:
/* B869F4 8010F854 34018000 */  li    $at, 32768
/* B869F8 8010F858 270E20D8 */  addiu $t6, $t8, 0x20d8
/* B869FC 8010F85C AFAE0030 */  sw    $t6, 0x30($sp)
/* B86A00 8010F860 01C14021 */  addu  $t0, $t6, $at
/* B86A04 8010F864 8D196300 */  lw    $t9, 0x6300($t0)
/* B86A08 8010F868 532002E5 */  beql  $t9, $zero, .L80110400
/* B86A0C 8010F86C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86A10 8010F870 91056304 */  lbu   $a1, 0x6304($t0)
/* B86A14 8010F874 28A10036 */  slti  $at, $a1, 0x36
/* B86A18 8010F878 14200008 */  bnez  $at, .L8010F89C
/* B86A1C 8010F87C 24010036 */   li    $at, 54
/* B86A20 8010F880 10A1020A */  beq   $a1, $at, .L801100AC
/* B86A24 8010F884 8FAC0030 */   lw    $t4, 0x30($sp)
/* B86A28 8010F888 24010037 */  li    $at, 55
/* B86A2C 8010F88C 50A102DC */  beql  $a1, $at, .L80110400
/* B86A30 8010F890 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86A34 8010F894 100002D6 */  b     .L801103F0
/* B86A38 8010F898 8FAC0030 */   lw    $t4, 0x30($sp)
.L8010F89C:
/* B86A3C 8010F89C 28A10035 */  slti  $at, $a1, 0x35
/* B86A40 8010F8A0 14200005 */  bnez  $at, .L8010F8B8
/* B86A44 8010F8A4 24010035 */   li    $at, 53
/* B86A48 8010F8A8 50A10185 */  beql  $a1, $at, .L8010FEC0
/* B86A4C 8010F8AC 910263E4 */   lbu   $v0, 0x63e4($t0)
/* B86A50 8010F8B0 100002CF */  b     .L801103F0
/* B86A54 8010F8B4 8FAC0030 */   lw    $t4, 0x30($sp)
.L8010F8B8:
/* B86A58 8010F8B8 28A10009 */  slti  $at, $a1, 9
/* B86A5C 8010F8BC 14200006 */  bnez  $at, .L8010F8D8
/* B86A60 8010F8C0 24AAFFFF */   addiu $t2, $a1, -1
/* B86A64 8010F8C4 24010034 */  li    $at, 52
/* B86A68 8010F8C8 10A1016F */  beq   $a1, $at, .L8010FE88
/* B86A6C 8010F8CC 8FA40058 */   lw    $a0, 0x58($sp)
/* B86A70 8010F8D0 100002C7 */  b     .L801103F0
/* B86A74 8010F8D4 8FAC0030 */   lw    $t4, 0x30($sp)
.L8010F8D8:
/* B86A78 8010F8D8 2D410008 */  sltiu $at, $t2, 8
/* B86A7C 8010F8DC 102002C3 */  beqz  $at, .L801103EC
/* B86A80 8010F8E0 000A5080 */   sll   $t2, $t2, 2
/* B86A84 8010F8E4 3C018015 */  lui   $at, %hi(jtbl_80154CC4)
/* B86A88 8010F8E8 002A0821 */  addu  $at, $at, $t2
/* B86A8C 8010F8EC 8C2A4CC4 */  lw    $t2, %lo(jtbl_80154CC4)($at)
/* B86A90 8010F8F0 01400008 */  jr    $t2
/* B86A94 8010F8F4 00000000 */   nop   
glabel L8010F8F8
/* B86A98 8010F8F8 3C048015 */  lui   $a0, %hi(D_8014B2F4) # $a0, 0x8015
/* B86A9C 8010F8FC 2484B2F4 */  addiu $a0, %lo(D_8014B2F4) # addiu $a0, $a0, -0x4d0c
/* B86AA0 8010F900 908B0000 */  lbu   $t3, ($a0)
/* B86AA4 8010F904 24010040 */  li    $at, 64
/* B86AA8 8010F908 00001825 */  move  $v1, $zero
/* B86AAC 8010F90C 256C0001 */  addiu $t4, $t3, 1
/* B86AB0 8010F910 A08C0000 */  sb    $t4, ($a0)
/* B86AB4 8010F914 84C204B2 */  lh    $v0, 0x4b2($a2)
/* B86AB8 8010F918 318D00FF */  andi  $t5, $t4, 0xff
/* B86ABC 8010F91C 14410005 */  bne   $v0, $at, .L8010F934
/* B86AC0 8010F920 29A10004 */   slti  $at, $t5, 4
/* B86AC4 8010F924 14200013 */  bnez  $at, .L8010F974
/* B86AC8 8010F928 00000000 */   nop   
/* B86ACC 8010F92C 10000011 */  b     .L8010F974
/* B86AD0 8010F930 24030001 */   li    $v1, 1
.L8010F934:
/* B86AD4 8010F934 14400005 */  bnez  $v0, .L8010F94C
/* B86AD8 8010F938 8FAF0058 */   lw    $t7, 0x58($sp)
/* B86ADC 8010F93C 85F800A4 */  lh    $t8, 0xa4($t7)
/* B86AE0 8010F940 24010045 */  li    $at, 69
/* B86AE4 8010F944 57010004 */  bnel  $t8, $at, .L8010F958
/* B86AE8 8010F948 908E0000 */   lbu   $t6, ($a0)
.L8010F94C:
/* B86AEC 8010F94C 10000009 */  b     .L8010F974
/* B86AF0 8010F950 24030001 */   li    $v1, 1
/* B86AF4 8010F954 908E0000 */  lbu   $t6, ($a0)
.L8010F958:
/* B86AF8 8010F958 29C10004 */  slti  $at, $t6, 4
/* B86AFC 8010F95C 50200005 */  beql  $at, $zero, .L8010F974
/* B86B00 8010F960 24030001 */   li    $v1, 1
/* B86B04 8010F964 8D196408 */  lw    $t9, 0x6408($t0)
/* B86B08 8010F968 17200002 */  bnez  $t9, .L8010F974
/* B86B0C 8010F96C 00000000 */   nop   
/* B86B10 8010F970 24030001 */  li    $v1, 1
.L8010F974:
/* B86B14 8010F974 506002A2 */  beql  $v1, $zero, .L80110400
/* B86B18 8010F978 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86B1C 8010F97C 8D0A6408 */  lw    $t2, 0x6408($t0)
/* B86B20 8010F980 8FA40058 */  lw    $a0, 0x58($sp)
/* B86B24 8010F984 27A70040 */  addiu $a3, $sp, 0x40
/* B86B28 8010F988 5140002E */  beql  $t2, $zero, .L8010FA44
/* B86B2C 8010F98C 84D90B24 */   lh    $t9, 0xb24($a2)
/* B86B30 8010F990 8C851C44 */  lw    $a1, 0x1c44($a0)
/* B86B34 8010F994 AFA80024 */  sw    $t0, 0x24($sp)
/* B86B38 8010F998 0C00BCDD */  jal   func_8002F374
/* B86B3C 8010F99C 27A60044 */   addiu $a2, $sp, 0x44
/* B86B40 8010F9A0 8FA80024 */  lw    $t0, 0x24($sp)
/* B86B44 8010F9A4 8FA40058 */  lw    $a0, 0x58($sp)
/* B86B48 8010F9A8 27A60044 */  addiu $a2, $sp, 0x44
/* B86B4C 8010F9AC 27A7003E */  addiu $a3, $sp, 0x3e
/* B86B50 8010F9B0 0C00BCDD */  jal   func_8002F374
/* B86B54 8010F9B4 8D056408 */   lw    $a1, 0x6408($t0)
/* B86B58 8010F9B8 87A2003E */  lh    $v0, 0x3e($sp)
/* B86B5C 8010F9BC 87A70040 */  lh    $a3, 0x40($sp)
/* B86B60 8010F9C0 8FA80024 */  lw    $t0, 0x24($sp)
/* B86B64 8010F9C4 00E2082A */  slt   $at, $a3, $v0
/* B86B68 8010F9C8 14200009 */  bnez  $at, .L8010F9F0
/* B86B6C 8010F9CC 0047C023 */   subu  $t8, $v0, $a3
/* B86B70 8010F9D0 00E26023 */  subu  $t4, $a3, $v0
/* B86B74 8010F9D4 05810003 */  bgez  $t4, .L8010F9E4
/* B86B78 8010F9D8 000C6843 */   sra   $t5, $t4, 1
/* B86B7C 8010F9DC 25810001 */  addiu $at, $t4, 1
/* B86B80 8010F9E0 00016843 */  sra   $t5, $at, 1
.L8010F9E4:
/* B86B84 8010F9E4 01A27821 */  addu  $t7, $t5, $v0
/* B86B88 8010F9E8 10000009 */  b     .L8010FA10
/* B86B8C 8010F9EC A7AF0042 */   sh    $t7, 0x42($sp)
.L8010F9F0:
/* B86B90 8010F9F0 07010003 */  bgez  $t8, .L8010FA00
/* B86B94 8010F9F4 00187043 */   sra   $t6, $t8, 1
/* B86B98 8010F9F8 27010001 */  addiu $at, $t8, 1
/* B86B9C 8010F9FC 00017043 */  sra   $t6, $at, 1
.L8010FA00:
/* B86BA0 8010FA00 01C72021 */  addu  $a0, $t6, $a3
/* B86BA4 8010FA04 00042400 */  sll   $a0, $a0, 0x10
/* B86BA8 8010FA08 00042403 */  sra   $a0, $a0, 0x10
/* B86BAC 8010FA0C A7A40042 */  sh    $a0, 0x42($sp)
.L8010FA10:
/* B86BB0 8010FA10 3C048015 */  lui   $a0, %hi(D_80154A20) # $a0, 0x8015
/* B86BB4 8010FA14 24844A20 */  addiu $a0, %lo(D_80154A20) # addiu $a0, $a0, 0x4a20
/* B86BB8 8010FA18 87A50044 */  lh    $a1, 0x44($sp)
/* B86BBC 8010FA1C 87A60042 */  lh    $a2, 0x42($sp)
/* B86BC0 8010FA20 AFA20010 */  sw    $v0, 0x10($sp)
/* B86BC4 8010FA24 0C00084C */  jal   osSyncPrintf
/* B86BC8 8010FA28 AFA80024 */   sw    $t0, 0x24($sp)
/* B86BCC 8010FA2C 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B86BD0 8010FA30 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B86BD4 8010FA34 87A40042 */  lh    $a0, 0x42($sp)
/* B86BD8 8010FA38 10000007 */  b     .L8010FA58
/* B86BDC 8010FA3C 8FA80024 */   lw    $t0, 0x24($sp)
/* B86BE0 8010FA40 84D90B24 */  lh    $t9, 0xb24($a2)
.L8010FA44:
/* B86BE4 8010FA44 A4D90F14 */  sh    $t9, 0xf14($a2)
/* B86BE8 8010FA48 8D260000 */  lw    $a2, ($t1)
/* B86BEC 8010FA4C 84CA0B26 */  lh    $t2, 0xb26($a2)
/* B86BF0 8010FA50 A4CA0F16 */  sh    $t2, 0xf16($a2)
/* B86BF4 8010FA54 87A40042 */  lh    $a0, 0x42($sp)
.L8010FA58:
/* B86BF8 8010FA58 910262FE */  lbu   $v0, 0x62fe($t0)
/* B86BFC 8010FA5C 910362FD */  lbu   $v1, 0x62fd($t0)
/* B86C00 8010FA60 24010001 */  li    $at, 1
/* B86C04 8010FA64 1440003E */  bnez  $v0, .L8010FB60
/* B86C08 8010FA68 00000000 */   nop   
/* B86C0C 8010FA6C 8D260000 */  lw    $a2, ($t1)
/* B86C10 8010FA70 8FAC0058 */  lw    $t4, 0x58($sp)
/* B86C14 8010FA74 84CB04B2 */  lh    $t3, 0x4b2($a2)
/* B86C18 8010FA78 55600006 */  bnezl $t3, .L8010FA94
/* B86C1C 8010FA7C 84CD0B4C */   lh    $t5, 0xb4c($a2)
/* B86C20 8010FA80 858200A4 */  lh    $v0, 0xa4($t4)
/* B86C24 8010FA84 24010045 */  li    $at, 69
/* B86C28 8010FA88 54410011 */  bnel  $v0, $at, .L8010FAD0
/* B86C2C 8010FA8C 24010020 */   li    $at, 32
/* B86C30 8010FA90 84CD0B4C */  lh    $t5, 0xb4c($a2)
.L8010FA94:
/* B86C34 8010FA94 00031040 */  sll   $v0, $v1, 1
/* B86C38 8010FA98 3C188015 */  lui   $t8, %hi(D_80153D18)
/* B86C3C 8010FA9C 008D082A */  slt   $at, $a0, $t5
/* B86C40 8010FAA0 10200007 */  beqz  $at, .L8010FAC0
/* B86C44 8010FAA4 0302C021 */   addu  $t8, $t8, $v0
/* B86C48 8010FAA8 00031040 */  sll   $v0, $v1, 1
/* B86C4C 8010FAAC 3C0F8015 */  lui   $t7, %hi(D_80153D0C)
/* B86C50 8010FAB0 01E27821 */  addu  $t7, $t7, $v0
/* B86C54 8010FAB4 85EF3D0C */  lh    $t7, %lo(D_80153D0C)($t7)
/* B86C58 8010FAB8 10000041 */  b     .L8010FBC0
/* B86C5C 8010FABC A4CF0B26 */   sh    $t7, 0xb26($a2)
.L8010FAC0:
/* B86C60 8010FAC0 87183D18 */  lh    $t8, %lo(D_80153D18)($t8)
/* B86C64 8010FAC4 1000003E */  b     .L8010FBC0
/* B86C68 8010FAC8 A4D80B26 */   sh    $t8, 0xb26($a2)
/* B86C6C 8010FACC 24010020 */  li    $at, 32
.L8010FAD0:
/* B86C70 8010FAD0 10410005 */  beq   $v0, $at, .L8010FAE8
/* B86C74 8010FAD4 24010021 */   li    $at, 33
/* B86C78 8010FAD8 10410003 */  beq   $v0, $at, .L8010FAE8
/* B86C7C 8010FADC 24010022 */   li    $at, 34
/* B86C80 8010FAE0 54410011 */  bnel  $v0, $at, .L8010FB28
/* B86C84 8010FAE4 84CB0B50 */   lh    $t3, 0xb50($a2)
.L8010FAE8:
/* B86C88 8010FAE8 84CE0B4E */  lh    $t6, 0xb4e($a2)
/* B86C8C 8010FAEC 00031040 */  sll   $v0, $v1, 1
/* B86C90 8010FAF0 3C0A8015 */  lui   $t2, %hi(D_80153D18)
/* B86C94 8010FAF4 008E082A */  slt   $at, $a0, $t6
/* B86C98 8010FAF8 10200007 */  beqz  $at, .L8010FB18
/* B86C9C 8010FAFC 01425021 */   addu  $t2, $t2, $v0
/* B86CA0 8010FB00 00031040 */  sll   $v0, $v1, 1
/* B86CA4 8010FB04 3C198015 */  lui   $t9, %hi(D_80153D0C)
/* B86CA8 8010FB08 0322C821 */  addu  $t9, $t9, $v0
/* B86CAC 8010FB0C 87393D0C */  lh    $t9, %lo(D_80153D0C)($t9)
/* B86CB0 8010FB10 1000002B */  b     .L8010FBC0
/* B86CB4 8010FB14 A4D90B26 */   sh    $t9, 0xb26($a2)
.L8010FB18:
/* B86CB8 8010FB18 854A3D18 */  lh    $t2, %lo(D_80153D18)($t2)
/* B86CBC 8010FB1C 10000028 */  b     .L8010FBC0
/* B86CC0 8010FB20 A4CA0B26 */   sh    $t2, 0xb26($a2)
/* B86CC4 8010FB24 84CB0B50 */  lh    $t3, 0xb50($a2)
.L8010FB28:
/* B86CC8 8010FB28 00031040 */  sll   $v0, $v1, 1
/* B86CCC 8010FB2C 3C0D8015 */  lui   $t5, %hi(D_80153D18)
/* B86CD0 8010FB30 008B082A */  slt   $at, $a0, $t3
/* B86CD4 8010FB34 10200007 */  beqz  $at, .L8010FB54
/* B86CD8 8010FB38 01A26821 */   addu  $t5, $t5, $v0
/* B86CDC 8010FB3C 00031040 */  sll   $v0, $v1, 1
/* B86CE0 8010FB40 3C0C8015 */  lui   $t4, %hi(D_80153D0C)
/* B86CE4 8010FB44 01826021 */  addu  $t4, $t4, $v0
/* B86CE8 8010FB48 858C3D0C */  lh    $t4, %lo(D_80153D0C)($t4)
/* B86CEC 8010FB4C 1000001C */  b     .L8010FBC0
/* B86CF0 8010FB50 A4CC0B26 */   sh    $t4, 0xb26($a2)
.L8010FB54:
/* B86CF4 8010FB54 85AD3D18 */  lh    $t5, %lo(D_80153D18)($t5)
/* B86CF8 8010FB58 10000019 */  b     .L8010FBC0
/* B86CFC 8010FB5C A4CD0B26 */   sh    $t5, 0xb26($a2)
.L8010FB60:
/* B86D00 8010FB60 14410008 */  bne   $v0, $at, .L8010FB84
/* B86D04 8010FB64 00402025 */   move  $a0, $v0
/* B86D08 8010FB68 00031040 */  sll   $v0, $v1, 1
/* B86D0C 8010FB6C 3C0F8015 */  lui   $t7, %hi(D_80153D18)
/* B86D10 8010FB70 01E27821 */  addu  $t7, $t7, $v0
/* B86D14 8010FB74 85EF3D18 */  lh    $t7, %lo(D_80153D18)($t7)
/* B86D18 8010FB78 8D380000 */  lw    $t8, ($t1)
/* B86D1C 8010FB7C 10000010 */  b     .L8010FBC0
/* B86D20 8010FB80 A70F0B26 */   sh    $t7, 0xb26($t8)
.L8010FB84:
/* B86D24 8010FB84 24010002 */  li    $at, 2
/* B86D28 8010FB88 14810008 */  bne   $a0, $at, .L8010FBAC
/* B86D2C 8010FB8C 00031040 */   sll   $v0, $v1, 1
/* B86D30 8010FB90 00031040 */  sll   $v0, $v1, 1
/* B86D34 8010FB94 3C0E8015 */  lui   $t6, %hi(D_80153D24)
/* B86D38 8010FB98 01C27021 */  addu  $t6, $t6, $v0
/* B86D3C 8010FB9C 85CE3D24 */  lh    $t6, %lo(D_80153D24)($t6)
/* B86D40 8010FBA0 8D390000 */  lw    $t9, ($t1)
/* B86D44 8010FBA4 10000006 */  b     .L8010FBC0
/* B86D48 8010FBA8 A72E0B26 */   sh    $t6, 0xb26($t9)
.L8010FBAC:
/* B86D4C 8010FBAC 3C0A8015 */  lui   $t2, %hi(D_80153D0C)
/* B86D50 8010FBB0 01425021 */  addu  $t2, $t2, $v0
/* B86D54 8010FBB4 854A3D0C */  lh    $t2, %lo(D_80153D0C)($t2)
/* B86D58 8010FBB8 8D2B0000 */  lw    $t3, ($t1)
/* B86D5C 8010FBBC A56A0B26 */  sh    $t2, 0xb26($t3)
.L8010FBC0:
/* B86D60 8010FBC0 3C0C8015 */  lui   $t4, %hi(D_80153D00)
/* B86D64 8010FBC4 01826021 */  addu  $t4, $t4, $v0
/* B86D68 8010FBC8 858C3D00 */  lh    $t4, %lo(D_80153D00)($t4)
/* B86D6C 8010FBCC 8D2D0000 */  lw    $t5, ($t1)
/* B86D70 8010FBD0 3C188015 */  lui   $t8, %hi(D_80153D30)
/* B86D74 8010FBD4 0302C021 */  addu  $t8, $t8, $v0
/* B86D78 8010FBD8 A5AC0B24 */  sh    $t4, 0xb24($t5)
/* B86D7C 8010FBDC 8D260000 */  lw    $a2, ($t1)
/* B86D80 8010FBE0 87183D30 */  lh    $t8, %lo(D_80153D30)($t8)
/* B86D84 8010FBE4 3C048015 */  lui   $a0, %hi(D_80154A48) # $a0, 0x8015
/* B86D88 8010FBE8 84CF0B26 */  lh    $t7, 0xb26($a2)
/* B86D8C 8010FBEC 24844A48 */  addiu $a0, %lo(D_80154A48) # addiu $a0, $a0, 0x4a48
/* B86D90 8010FBF0 01F87021 */  addu  $t6, $t7, $t8
/* B86D94 8010FBF4 A4CE0B16 */  sh    $t6, 0xb16($a2)
/* B86D98 8010FBF8 8D260000 */  lw    $a2, ($t1)
/* B86D9C 8010FBFC 84D90B26 */  lh    $t9, 0xb26($a2)
/* B86DA0 8010FC00 272A0014 */  addiu $t2, $t9, 0x14
/* B86DA4 8010FC04 A4CA0B1A */  sh    $t2, 0xb1a($a2)
/* B86DA8 8010FC08 8D260000 */  lw    $a2, ($t1)
/* B86DAC 8010FC0C 84CB0B26 */  lh    $t3, 0xb26($a2)
/* B86DB0 8010FC10 256C0020 */  addiu $t4, $t3, 0x20
/* B86DB4 8010FC14 A4CC0B1C */  sh    $t4, 0xb1c($a2)
/* B86DB8 8010FC18 8D260000 */  lw    $a2, ($t1)
/* B86DBC 8010FC1C 84CD0B26 */  lh    $t5, 0xb26($a2)
/* B86DC0 8010FC20 25AF002C */  addiu $t7, $t5, 0x2c
/* B86DC4 8010FC24 A4CF0B1E */  sh    $t7, 0xb1e($a2)
/* B86DC8 8010FC28 910562FC */  lbu   $a1, 0x62fc($t0)
/* B86DCC 8010FC2C AFA80024 */  sw    $t0, 0x24($sp)
/* B86DD0 8010FC30 0C00084C */  jal   osSyncPrintf
/* B86DD4 8010FC34 30A500F0 */   andi  $a1, $a1, 0xf0
/* B86DD8 8010FC38 8FA80024 */  lw    $t0, 0x24($sp)
/* B86DDC 8010FC3C 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B86DE0 8010FC40 24010004 */  li    $at, 4
/* B86DE4 8010FC44 910262FD */  lbu   $v0, 0x62fd($t0)
/* B86DE8 8010FC48 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B86DEC 8010FC4C 8FAE0030 */  lw    $t6, 0x30($sp)
/* B86DF0 8010FC50 10410002 */  beq   $v0, $at, .L8010FC5C
/* B86DF4 8010FC54 24010005 */   li    $at, 5
/* B86DF8 8010FC58 14410015 */  bne   $v0, $at, .L8010FCB0
.L8010FC5C:
/* B86DFC 8010FC5C 24180003 */   li    $t8, 3
/* B86E00 8010FC60 25C17FFF */  addiu $at, $t6, 0x7fff
/* B86E04 8010FC64 A0386305 */  sb    $t8, 0x6305($at)
/* B86E08 8010FC68 8D260000 */  lw    $a2, ($t1)
/* B86E0C 8010FC6C 240B0100 */  li    $t3, 256
/* B86E10 8010FC70 240D0040 */  li    $t5, 64
/* B86E14 8010FC74 84D90B24 */  lh    $t9, 0xb24($a2)
/* B86E18 8010FC78 24020200 */  li    $v0, 512
/* B86E1C 8010FC7C A4D90F14 */  sh    $t9, 0xf14($a2)
/* B86E20 8010FC80 8D260000 */  lw    $a2, ($t1)
/* B86E24 8010FC84 84CA0B26 */  lh    $t2, 0xb26($a2)
/* B86E28 8010FC88 A4CA0F16 */  sh    $t2, 0xf16($a2)
/* B86E2C 8010FC8C 8D2C0000 */  lw    $t4, ($t1)
/* B86E30 8010FC90 A58B04C0 */  sh    $t3, 0x4c0($t4)
/* B86E34 8010FC94 8D2F0000 */  lw    $t7, ($t1)
/* B86E38 8010FC98 A5ED04C2 */  sh    $t5, 0x4c2($t7)
/* B86E3C 8010FC9C 8D380000 */  lw    $t8, ($t1)
/* B86E40 8010FCA0 A70204B4 */  sh    $v0, 0x4b4($t8)
/* B86E44 8010FCA4 8D2E0000 */  lw    $t6, ($t1)
/* B86E48 8010FCA8 100001D4 */  b     .L801103FC
/* B86E4C 8010FCAC A5C204B6 */   sh    $v0, 0x4b6($t6)
.L8010FCB0:
/* B86E50 8010FCB0 0C041C91 */  jal   func_80107244
/* B86E54 8010FCB4 8FA40030 */   lw    $a0, 0x30($sp)
/* B86E58 8010FCB8 0C03DA47 */  jal   func_800F691C
/* B86E5C 8010FCBC 00002025 */   move  $a0, $zero
/* B86E60 8010FCC0 8FB90030 */  lw    $t9, 0x30($sp)
/* B86E64 8010FCC4 240A0002 */  li    $t2, 2
/* B86E68 8010FCC8 27217FFF */  addiu $at, $t9, 0x7fff
/* B86E6C 8010FCCC A02063E8 */  sb    $zero, 0x63e8($at)
/* B86E70 8010FCD0 8FAB0030 */  lw    $t3, 0x30($sp)
/* B86E74 8010FCD4 25617FFF */  addiu $at, $t3, 0x7fff
/* B86E78 8010FCD8 100001C8 */  b     .L801103FC
/* B86E7C 8010FCDC A02A6305 */   sb    $t2, 0x6305($at)
glabel L8010FCE0
/* B86E80 8010FCE0 0C041C91 */  jal   func_80107244
/* B86E84 8010FCE4 8FA40030 */   lw    $a0, 0x30($sp)
/* B86E88 8010FCE8 100001C5 */  b     .L80110400
/* B86E8C 8010FCEC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8010FCF0
/* B86E90 8010FCF0 8FAD0030 */  lw    $t5, 0x30($sp)
/* B86E94 8010FCF4 240C0004 */  li    $t4, 4
/* B86E98 8010FCF8 25A17FFF */  addiu $at, $t5, 0x7fff
/* B86E9C 8010FCFC A02C6305 */  sb    $t4, 0x6305($at)
/* B86EA0 8010FD00 8D2F0000 */  lw    $t7, ($t1)
/* B86EA4 8010FD04 8FA40058 */  lw    $a0, 0x58($sp)
/* B86EA8 8010FD08 85F804D2 */  lh    $t8, 0x4d2($t7)
/* B86EAC 8010FD0C 570001BC */  bnezl $t8, .L80110400
/* B86EB0 8010FD10 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86EB4 8010FD14 0C021BC0 */  jal   func_80086F00
/* B86EB8 8010FD18 24050010 */   li    $a1, 16
/* B86EBC 8010FD1C 100001B8 */  b     .L80110400
/* B86EC0 8010FD20 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8010FD24
/* B86EC4 8010FD24 8FA40058 */  lw    $a0, 0x58($sp)
/* B86EC8 8010FD28 0C0426CF */  jal   func_80109B3C
/* B86ECC 8010FD2C AFA80024 */   sw    $t0, 0x24($sp)
/* B86ED0 8010FD30 3C0E8015 */  lui   $t6, %hi(D_8014B2F0) # $t6, 0x8015
/* B86ED4 8010FD34 85CEB2F0 */  lh    $t6, %lo(D_8014B2F0)($t6)
/* B86ED8 8010FD38 8FA80024 */  lw    $t0, 0x24($sp)
/* B86EDC 8010FD3C 24040001 */  li    $a0, 1
/* B86EE0 8010FD40 11C00004 */  beqz  $t6, .L8010FD54
/* B86EE4 8010FD44 00000000 */   nop   
/* B86EE8 8010FD48 0C020978 */  jal   func_800825E0
/* B86EEC 8010FD4C AFA80024 */   sw    $t0, 0x24($sp)
/* B86EF0 8010FD50 8FA80024 */  lw    $t0, 0x24($sp)
.L8010FD54:
/* B86EF4 8010FD54 3C198015 */  lui   $t9, %hi(D_80153D74) # $t9, 0x8015
/* B86EF8 8010FD58 93393D74 */  lbu   $t9, %lo(D_80153D74)($t9)
/* B86EFC 8010FD5C 8FAB0030 */  lw    $t3, 0x30($sp)
/* B86F00 8010FD60 532001A7 */  beql  $t9, $zero, .L80110400
/* B86F04 8010FD64 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86F08 8010FD68 950A63D4 */  lhu   $t2, 0x63d4($t0)
/* B86F0C 8010FD6C 25617FFF */  addiu $at, $t3, 0x7fff
/* B86F10 8010FD70 A42A63D3 */  sh    $t2, 0x63d3($at)
/* B86F14 8010FD74 3C018015 */  lui   $at, %hi(D_80153D74) # $at, 0x8015
/* B86F18 8010FD78 100001A0 */  b     .L801103FC
/* B86F1C 8010FD7C A0203D74 */   sb    $zero, %lo(D_80153D74)($at)
glabel L8010FD80
/* B86F20 8010FD80 910C63E7 */  lbu   $t4, 0x63e7($t0)
/* B86F24 8010FD84 8FAF0030 */  lw    $t7, 0x30($sp)
/* B86F28 8010FD88 258DFFFF */  addiu $t5, $t4, -1
/* B86F2C 8010FD8C 25E17FFF */  addiu $at, $t7, 0x7fff
/* B86F30 8010FD90 A02D63E8 */  sb    $t5, 0x63e8($at)
/* B86F34 8010FD94 911863E7 */  lbu   $t8, 0x63e7($t0)
/* B86F38 8010FD98 57000199 */  bnezl $t8, .L80110400
/* B86F3C 8010FD9C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86F40 8010FDA0 0C0426CF */  jal   func_80109B3C
/* B86F44 8010FDA4 8FA40058 */   lw    $a0, 0x58($sp)
/* B86F48 8010FDA8 10000195 */  b     .L80110400
/* B86F4C 8010FDAC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8010FDB0
/* B86F50 8010FDB0 910E62FD */  lbu   $t6, 0x62fd($t0)
/* B86F54 8010FDB4 24010004 */  li    $at, 4
/* B86F58 8010FDB8 51C10191 */  beql  $t6, $at, .L80110400
/* B86F5C 8010FDBC 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86F60 8010FDC0 84D904D2 */  lh    $t9, 0x4d2($a2)
/* B86F64 8010FDC4 8FAA0058 */  lw    $t2, 0x58($sp)
/* B86F68 8010FDC8 5720018D */  bnezl $t9, .L80110400
/* B86F6C 8010FDCC 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86F70 8010FDD0 954B0020 */  lhu   $t3, 0x20($t2)
/* B86F74 8010FDD4 2401BFFF */  li    $at, -16385
/* B86F78 8010FDD8 01616027 */  nor   $t4, $t3, $at
/* B86F7C 8010FDDC 55800188 */  bnezl $t4, .L80110400
/* B86F80 8010FDE0 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86F84 8010FDE4 950D63D6 */  lhu   $t5, 0x63d6($t0)
/* B86F88 8010FDE8 240F0001 */  li    $t7, 1
/* B86F8C 8010FDEC 3C018015 */  lui   $at, %hi(D_8014B300) # $at, 0x8015
/* B86F90 8010FDF0 55A00183 */  bnezl $t5, .L80110400
/* B86F94 8010FDF4 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86F98 8010FDF8 8FAE0030 */  lw    $t6, 0x30($sp)
/* B86F9C 8010FDFC A02FB300 */  sb    $t7, %lo(D_8014B300)($at)
/* B86FA0 8010FE00 951863D4 */  lhu   $t8, 0x63d4($t0)
/* B86FA4 8010FE04 25C17FFF */  addiu $at, $t6, 0x7fff
/* B86FA8 8010FE08 1000017C */  b     .L801103FC
/* B86FAC 8010FE0C A43863D3 */   sh    $t8, 0x63d3($at)
glabel L8010FE10
/* B86FB0 8010FE10 84D904D2 */  lh    $t9, 0x4d2($a2)
/* B86FB4 8010FE14 8FA40058 */  lw    $a0, 0x58($sp)
/* B86FB8 8010FE18 57200179 */  bnezl $t9, .L80110400
/* B86FBC 8010FE1C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86FC0 8010FE20 0C041AF2 */  jal   func_80106BC8
/* B86FC4 8010FE24 AFA80024 */   sw    $t0, 0x24($sp)
/* B86FC8 8010FE28 10400174 */  beqz  $v0, .L801103FC
/* B86FCC 8010FE2C 8FA80024 */   lw    $t0, 0x24($sp)
/* B86FD0 8010FE30 8FAB0030 */  lw    $t3, 0x30($sp)
/* B86FD4 8010FE34 240A0006 */  li    $t2, 6
/* B86FD8 8010FE38 25617FFF */  addiu $at, $t3, 0x7fff
/* B86FDC 8010FE3C A02A6305 */  sb    $t2, 0x6305($at)
/* B86FE0 8010FE40 8FAF0030 */  lw    $t7, 0x30($sp)
/* B86FE4 8010FE44 950C63D2 */  lhu   $t4, 0x63d2($t0)
/* B86FE8 8010FE48 25E17FFF */  addiu $at, $t7, 0x7fff
/* B86FEC 8010FE4C 258D0001 */  addiu $t5, $t4, 1
/* B86FF0 8010FE50 1000016A */  b     .L801103FC
/* B86FF4 8010FE54 A42D63D3 */   sh    $t5, 0x63d3($at)
glabel L8010FE58
/* B86FF8 8010FE58 911863E7 */  lbu   $t8, 0x63e7($t0)
/* B86FFC 8010FE5C 8FB90030 */  lw    $t9, 0x30($sp)
/* B87000 8010FE60 270EFFFF */  addiu $t6, $t8, -1
/* B87004 8010FE64 27217FFF */  addiu $at, $t9, 0x7fff
/* B87008 8010FE68 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B8700C 8010FE6C 910A63E7 */  lbu   $t2, 0x63e7($t0)
/* B87010 8010FE70 8FAC0030 */  lw    $t4, 0x30($sp)
/* B87014 8010FE74 15400161 */  bnez  $t2, .L801103FC
/* B87018 8010FE78 25817FFF */   addiu $at, $t4, 0x7fff
/* B8701C 8010FE7C 240B0004 */  li    $t3, 4
/* B87020 8010FE80 1000015E */  b     .L801103FC
/* B87024 8010FE84 A02B6305 */   sb    $t3, 0x6305($at)
.L8010FE88:
/* B87028 8010FE88 0C041AF2 */  jal   func_80106BC8
/* B8702C 8010FE8C AFA80024 */   sw    $t0, 0x24($sp)
/* B87030 8010FE90 1040015A */  beqz  $v0, .L801103FC
/* B87034 8010FE94 8FA80024 */   lw    $t0, 0x24($sp)
/* B87038 8010FE98 8FA20030 */  lw    $v0, 0x30($sp)
/* B8703C 8010FE9C 240D0004 */  li    $t5, 4
/* B87040 8010FEA0 24417FFF */  addiu $at, $v0, 0x7fff
/* B87044 8010FEA4 A02D6305 */  sb    $t5, 0x6305($at)
/* B87048 8010FEA8 A42063D7 */  sh    $zero, 0x63d7($at)
/* B8704C 8010FEAC 950F63CE */  lhu   $t7, 0x63ce($t0)
/* B87050 8010FEB0 25F80001 */  addiu $t8, $t7, 1
/* B87054 8010FEB4 10000151 */  b     .L801103FC
/* B87058 8010FEB8 A43863CF */   sh    $t8, 0x63cf($at)
/* B8705C 8010FEBC 910263E4 */  lbu   $v0, 0x63e4($t0)
.L8010FEC0:
/* B87060 8010FEC0 24010060 */  li    $at, 96
/* B87064 8010FEC4 8FAA0030 */  lw    $t2, 0x30($sp)
/* B87068 8010FEC8 5441000D */  bnel  $v0, $at, .L8010FF00
/* B8706C 8010FECC 24010040 */   li    $at, 64
/* B87070 8010FED0 910E63E7 */  lbu   $t6, 0x63e7($t0)
/* B87074 8010FED4 25417FFF */  addiu $at, $t2, 0x7fff
/* B87078 8010FED8 25D9FFFF */  addiu $t9, $t6, -1
/* B8707C 8010FEDC A03963E8 */  sb    $t9, 0x63e8($at)
/* B87080 8010FEE0 910B63E7 */  lbu   $t3, 0x63e7($t0)
/* B87084 8010FEE4 55600146 */  bnezl $t3, .L80110400
/* B87088 8010FEE8 8FBF001C */   lw    $ra, 0x1c($sp)
/* B8708C 8010FEEC 0C041B33 */  jal   func_80106CCC
/* B87090 8010FEF0 8FA40058 */   lw    $a0, 0x58($sp)
/* B87094 8010FEF4 10000142 */  b     .L80110400
/* B87098 8010FEF8 8FBF001C */   lw    $ra, 0x1c($sp)
/* B8709C 8010FEFC 24010040 */  li    $at, 64
.L8010FF00:
/* B870A0 8010FF00 1041013E */  beq   $v0, $at, .L801103FC
/* B870A4 8010FF04 24010050 */   li    $at, 80
/* B870A8 8010FF08 5041013D */  beql  $v0, $at, .L80110400
/* B870AC 8010FF0C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B870B0 8010FF10 84CC04D2 */  lh    $t4, 0x4d2($a2)
/* B870B4 8010FF14 24010010 */  li    $at, 16
/* B870B8 8010FF18 55800139 */  bnezl $t4, .L80110400
/* B870BC 8010FF1C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B870C0 8010FF20 14410034 */  bne   $v0, $at, .L8010FFF4
/* B870C4 8010FF24 8FAD0058 */   lw    $t5, 0x58($sp)
/* B870C8 8010FF28 3C010001 */  lui   $at, 1
/* B870CC 8010FF2C 01A11021 */  addu  $v0, $t5, $at
/* B870D0 8010FF30 944F04C6 */  lhu   $t7, 0x4c6($v0)
/* B870D4 8010FF34 24010001 */  li    $at, 1
/* B870D8 8010FF38 01A02025 */  move  $a0, $t5
/* B870DC 8010FF3C 55E1002E */  bnel  $t7, $at, .L8010FFF8
/* B870E0 8010FF40 8FA40058 */   lw    $a0, 0x58($sp)
/* B870E4 8010FF44 AFA20030 */  sw    $v0, 0x30($sp)
/* B870E8 8010FF48 0C041AF2 */  jal   func_80106BC8
/* B870EC 8010FF4C AFA80024 */   sw    $t0, 0x24($sp)
/* B870F0 8010FF50 1040012A */  beqz  $v0, .L801103FC
/* B870F4 8010FF54 8FA80024 */   lw    $t0, 0x24($sp)
/* B870F8 8010FF58 8FB80030 */  lw    $t8, 0x30($sp)
/* B870FC 8010FF5C 3C048015 */  lui   $a0, %hi(D_80154A64) # $a0, 0x8015
/* B87100 8010FF60 24844A64 */  addiu $a0, %lo(D_80154A64) # addiu $a0, $a0, 0x4a64
/* B87104 8010FF64 970504C6 */  lhu   $a1, 0x4c6($t8)
/* B87108 8010FF68 0C00084C */  jal   osSyncPrintf
/* B8710C 8010FF6C AFA80024 */   sw    $t0, 0x24($sp)
/* B87110 8010FF70 8FA80024 */  lw    $t0, 0x24($sp)
/* B87114 8010FF74 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B87118 8010FF78 3C048015 */  lui   $a0, %hi(D_80154A78) # $a0, 0x8015
/* B8711C 8010FF7C 910E63E5 */  lbu   $t6, 0x63e5($t0)
/* B87120 8010FF80 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B87124 8010FF84 8FAC0058 */  lw    $t4, 0x58($sp)
/* B87128 8010FF88 15C00007 */  bnez  $t6, .L8010FFA8
/* B8712C 8010FF8C 24844A78 */   addiu $a0, %lo(D_80154A78) # addiu $a0, $a0, 0x4a78
/* B87130 8010FF90 8FAA0058 */  lw    $t2, 0x58($sp)
/* B87134 8010FF94 3C010001 */  lui   $at, 1
/* B87138 8010FF98 24190002 */  li    $t9, 2
/* B8713C 8010FF9C 002A0821 */  addu  $at, $at, $t2
/* B87140 8010FFA0 10000005 */  b     .L8010FFB8
/* B87144 8010FFA4 A43904C6 */   sh    $t9, 0x4c6($at)
.L8010FFA8:
/* B87148 8010FFA8 3C010001 */  lui   $at, 1
/* B8714C 8010FFAC 002C0821 */  addu  $at, $at, $t4
/* B87150 8010FFB0 240B0004 */  li    $t3, 4
/* B87154 8010FFB4 A42B04C6 */  sh    $t3, 0x4c6($at)
.L8010FFB8:
/* B87158 8010FFB8 946513FA */  lhu   $a1, 0x13fa($v1)
/* B8715C 8010FFBC 8FAF0030 */  lw    $t7, 0x30($sp)
/* B87160 8010FFC0 24060001 */  li    $a2, 1
/* B87164 8010FFC4 30A5000F */  andi  $a1, $a1, 0xf
/* B87168 8010FFC8 0C00084C */  jal   osSyncPrintf
/* B8716C 8010FFCC 95E704C6 */   lhu   $a3, 0x4c6($t7)
/* B87170 8010FFD0 0C041B33 */  jal   func_80106CCC
/* B87174 8010FFD4 8FA40058 */   lw    $a0, 0x58($sp)
/* B87178 8010FFD8 8FAD0030 */  lw    $t5, 0x30($sp)
/* B8717C 8010FFDC 3C048015 */  lui   $a0, %hi(D_80154AA0) # $a0, 0x8015
/* B87180 8010FFE0 24844AA0 */  addiu $a0, %lo(D_80154AA0) # addiu $a0, $a0, 0x4aa0
/* B87184 8010FFE4 0C00084C */  jal   osSyncPrintf
/* B87188 8010FFE8 95A504C6 */   lhu   $a1, 0x4c6($t5)
/* B8718C 8010FFEC 10000104 */  b     .L80110400
/* B87190 8010FFF0 8FBF001C */   lw    $ra, 0x1c($sp)
.L8010FFF4:
/* B87194 8010FFF4 8FA40058 */  lw    $a0, 0x58($sp)
.L8010FFF8:
/* B87198 8010FFF8 0C041B22 */  jal   func_80106C88
/* B8719C 8010FFFC AFA80024 */   sw    $t0, 0x24($sp)
/* B871A0 80110000 104000FE */  beqz  $v0, .L801103FC
/* B871A4 80110004 8FA80024 */   lw    $t0, 0x24($sp)
/* B871A8 80110008 3C048015 */  lui   $a0, %hi(D_80154AB4) # $a0, 0x8015
/* B871AC 8011000C 910563E4 */  lbu   $a1, 0x63e4($t0)
/* B871B0 80110010 AFA80024 */  sw    $t0, 0x24($sp)
/* B871B4 80110014 0C00084C */  jal   osSyncPrintf
/* B871B8 80110018 24844AB4 */   addiu $a0, %lo(D_80154AB4) # addiu $a0, $a0, 0x4ab4
/* B871BC 8011001C 8FA80024 */  lw    $t0, 0x24($sp)
/* B871C0 80110020 24010030 */  li    $at, 48
/* B871C4 80110024 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B871C8 80110028 911863E4 */  lbu   $t8, 0x63e4($t0)
/* B871CC 8011002C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B871D0 80110030 24044808 */  li    $a0, 18440
/* B871D4 80110034 17010012 */  bne   $t8, $at, .L80110080
/* B871D8 80110038 3C058013 */   lui   $a1, %hi(D_801333D4)
/* B871DC 8011003C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B871E0 80110040 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B871E4 80110044 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B871E8 80110048 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B871EC 8011004C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B871F0 80110050 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B871F4 80110054 AFAE0014 */  sw    $t6, 0x14($sp)
/* B871F8 80110058 AFA70010 */  sw    $a3, 0x10($sp)
/* B871FC 8011005C 24044818 */  li    $a0, 18456
/* B87200 80110060 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B87204 80110064 24060004 */   li    $a2, 4
/* B87208 80110068 3C058015 */  lui   $a1, %hi(D_8014B304) # $a1, 0x8015
/* B8720C 8011006C 94A5B304 */  lhu   $a1, %lo(D_8014B304)($a1)
/* B87210 80110070 0C042DC8 */  jal   func_8010B720
/* B87214 80110074 8FA40058 */   lw    $a0, 0x58($sp)
/* B87218 80110078 100000E1 */  b     .L80110400
/* B8721C 8011007C 8FBF001C */   lw    $ra, 0x1c($sp)
.L80110080:
/* B87220 80110080 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B87224 80110084 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B87228 80110088 AFB90014 */  sw    $t9, 0x14($sp)
/* B8722C 8011008C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B87230 80110090 24060004 */  li    $a2, 4
/* B87234 80110094 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B87238 80110098 AFA70010 */   sw    $a3, 0x10($sp)
/* B8723C 8011009C 0C041B33 */  jal   func_80106CCC
/* B87240 801100A0 8FA40058 */   lw    $a0, 0x58($sp)
/* B87244 801100A4 100000D6 */  b     .L80110400
/* B87248 801100A8 8FBF001C */   lw    $ra, 0x1c($sp)
.L801100AC:
/* B8724C 801100AC 910A63E7 */  lbu   $t2, 0x63e7($t0)
/* B87250 801100B0 25817FFF */  addiu $at, $t4, 0x7fff
/* B87254 801100B4 254BFFFF */  addiu $t3, $t2, -1
/* B87258 801100B8 A02B63E8 */  sb    $t3, 0x63e8($at)
/* B8725C 801100BC 910F63E7 */  lbu   $t7, 0x63e7($t0)
/* B87260 801100C0 55E000CF */  bnezl $t7, .L80110400
/* B87264 801100C4 8FBF001C */   lw    $ra, 0x1c($sp)
/* B87268 801100C8 950262F8 */  lhu   $v0, 0x62f8($t0)
/* B8726C 801100CC 284100C2 */  slti  $at, $v0, 0xc2
/* B87270 801100D0 14200002 */  bnez  $at, .L801100DC
/* B87274 801100D4 284100C7 */   slti  $at, $v0, 0xc7
/* B87278 801100D8 14200004 */  bnez  $at, .L801100EC
.L801100DC:
/* B8727C 801100DC 284100FA */   slti  $at, $v0, 0xfa
/* B87280 801100E0 14200007 */  bnez  $at, .L80110100
/* B87284 801100E4 284100FE */   slti  $at, $v0, 0xfe
/* B87288 801100E8 10200005 */  beqz  $at, .L80110100
.L801100EC:
/* B8728C 801100EC 3C038016 */   lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B87290 801100F0 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B87294 801100F4 240D0140 */  li    $t5, 320
/* B87298 801100F8 A46D1424 */  sh    $t5, 0x1424($v1)
/* B8729C 801100FC 950262F8 */  lhu   $v0, 0x62f8($t0)
.L80110100:
/* B872A0 80110100 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B872A4 80110104 2401301F */  li    $at, 12319
/* B872A8 80110108 10410011 */  beq   $v0, $at, .L80110150
/* B872AC 8011010C 2463E660 */   addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B872B0 80110110 2401000A */  li    $at, 10
/* B872B4 80110114 1041000E */  beq   $v0, $at, .L80110150
/* B872B8 80110118 2401000C */   li    $at, 12
/* B872BC 8011011C 1041000C */  beq   $v0, $at, .L80110150
/* B872C0 80110120 240100CF */   li    $at, 207
/* B872C4 80110124 1041000A */  beq   $v0, $at, .L80110150
/* B872C8 80110128 2401021C */   li    $at, 540
/* B872CC 8011012C 10410008 */  beq   $v0, $at, .L80110150
/* B872D0 80110130 24010009 */   li    $at, 9
/* B872D4 80110134 10410006 */  beq   $v0, $at, .L80110150
/* B872D8 80110138 24014078 */   li    $at, 16504
/* B872DC 8011013C 10410004 */  beq   $v0, $at, .L80110150
/* B872E0 80110140 24012015 */   li    $at, 8213
/* B872E4 80110144 10410002 */  beq   $v0, $at, .L80110150
/* B872E8 80110148 24013040 */   li    $at, 12352
/* B872EC 8011014C 14410002 */  bne   $v0, $at, .L80110158
.L80110150:
/* B872F0 80110150 24180032 */   li    $t8, 50
/* B872F4 80110154 A47813EE */  sh    $t8, 0x13ee($v1)
.L80110158:
/* B872F8 80110158 8FAE0058 */  lw    $t6, 0x58($sp)
/* B872FC 8011015C 3C048015 */  lui   $a0, %hi(D_80154AC0) # $a0, 0x8015
/* B87300 80110160 24844AC0 */  addiu $a0, %lo(D_80154AC0) # addiu $a0, $a0, 0x4ac0
/* B87304 80110164 91D91D6C */  lbu   $t9, 0x1d6c($t6)
/* B87308 80110168 1720003E */  bnez  $t9, .L80110264
/* B8730C 8011016C 00000000 */   nop   
/* B87310 80110170 0C00084C */  jal   osSyncPrintf
/* B87314 80110174 AFA80024 */   sw    $t0, 0x24($sp)
/* B87318 80110178 8FAA0058 */  lw    $t2, 0x58($sp)
/* B8731C 8011017C 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B87320 80110180 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B87324 80110184 3C048015 */  lui   $a0, %hi(D_80154AC8) # $a0, 0x8015
/* B87328 80110188 24844AC8 */  addiu $a0, %lo(D_80154AC8) # addiu $a0, $a0, 0x4ac8
/* B8732C 8011018C 8C650008 */  lw    $a1, 8($v1)
/* B87330 80110190 0C00084C */  jal   osSyncPrintf
/* B87334 80110194 854607A0 */   lh    $a2, 0x7a0($t2)
/* B87338 80110198 8FA80024 */  lw    $t0, 0x24($sp)
/* B8733C 8011019C 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B87340 801101A0 24012061 */  li    $at, 8289
/* B87344 801101A4 950262F8 */  lhu   $v0, 0x62f8($t0)
/* B87348 801101A8 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B8734C 801101AC 1041002D */  beq   $v0, $at, .L80110264
/* B87350 801101B0 24012025 */   li    $at, 8229
/* B87354 801101B4 1041002B */  beq   $v0, $at, .L80110264
/* B87358 801101B8 2401208C */   li    $at, 8332
/* B8735C 801101BC 10410029 */  beq   $v0, $at, .L80110264
/* B87360 801101C0 2841088D */   slti  $at, $v0, 0x88d
/* B87364 801101C4 14200005 */  bnez  $at, .L801101DC
/* B87368 801101C8 28410893 */   slti  $at, $v0, 0x893
/* B8736C 801101CC 50200004 */  beql  $at, $zero, .L801101E0
/* B87370 801101D0 24013055 */   li    $at, 12373
/* B87374 801101D4 910B63E5 */  lbu   $t3, 0x63e5($t0)
/* B87378 801101D8 11600022 */  beqz  $t3, .L80110264
.L801101DC:
/* B8737C 801101DC 24013055 */   li    $at, 12373
.L801101E0:
/* B87380 801101E0 10410020 */  beq   $v0, $at, .L80110264
/* B87384 801101E4 00000000 */   nop   
/* B87388 801101E8 8C620008 */  lw    $v0, 8($v1)
/* B8738C 801101EC 3401FFF0 */  li    $at, 65520
/* B87390 801101F0 3C048015 */  lui   $a0, %hi(D_80154AE8) # $a0, 0x8015
/* B87394 801101F4 0041082A */  slt   $at, $v0, $at
/* B87398 801101F8 1020001A */  beqz  $at, .L80110264
/* B8739C 801101FC 00402825 */   move  $a1, $v0
/* B873A0 80110200 24844AE8 */  addiu $a0, %lo(D_80154AE8) # addiu $a0, $a0, 0x4ae8
/* B873A4 80110204 0C00084C */  jal   osSyncPrintf
/* B873A8 80110208 AFA80024 */   sw    $t0, 0x24($sp)
/* B873AC 8011020C 8FAC0058 */  lw    $t4, 0x58($sp)
/* B873B0 80110210 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B873B4 80110214 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B873B8 80110218 858F07A0 */  lh    $t7, 0x7a0($t4)
/* B873BC 8011021C 8FA80024 */  lw    $t0, 0x24($sp)
/* B873C0 80110220 15E00010 */  bnez  $t7, .L80110264
/* B873C4 80110224 00000000 */   nop   
/* B873C8 80110228 946413EE */  lhu   $a0, 0x13ee($v1)
/* B873CC 8011022C 24010001 */  li    $at, 1
/* B873D0 80110230 240D0032 */  li    $t5, 50
/* B873D4 80110234 50800006 */  beql  $a0, $zero, .L80110250
/* B873D8 80110238 A46D13EE */   sh    $t5, 0x13ee($v1)
/* B873DC 8011023C 10810003 */  beq   $a0, $at, .L8011024C
/* B873E0 80110240 24010002 */   li    $at, 2
/* B873E4 80110244 54810004 */  bnel  $a0, $at, .L80110258
/* B873E8 80110248 A46013EA */   sh    $zero, 0x13ea($v1)
.L8011024C:
/* B873EC 8011024C A46D13EE */  sh    $t5, 0x13ee($v1)
.L80110250:
/* B873F0 80110250 31A4FFFF */  andi  $a0, $t5, 0xffff
/* B873F4 80110254 A46013EA */  sh    $zero, 0x13ea($v1)
.L80110258:
/* B873F8 80110258 0C020978 */  jal   func_800825E0
/* B873FC 8011025C AFA80024 */   sw    $t0, 0x24($sp)
/* B87400 80110260 8FA80024 */  lw    $t0, 0x24($sp)
.L80110264:
/* B87404 80110264 3C048015 */  lui   $a0, %hi(D_80154AFC) # $a0, 0x8015
/* B87408 80110268 24844AFC */  addiu $a0, %lo(D_80154AFC) # addiu $a0, $a0, 0x4afc
/* B8740C 8011026C 0C00084C */  jal   osSyncPrintf
/* B87410 80110270 AFA80024 */   sw    $t0, 0x24($sp)
/* B87414 80110274 8FA40030 */  lw    $a0, 0x30($sp)
/* B87418 80110278 8FA70058 */  lw    $a3, 0x58($sp)
/* B8741C 8011027C 8FA80024 */  lw    $t0, 0x24($sp)
/* B87420 80110280 24817FFF */  addiu $at, $a0, 0x7fff
/* B87424 80110284 AC206301 */  sw    $zero, 0x6301($at)
/* B87428 80110288 A0206305 */  sb    $zero, 0x6305($at)
/* B8742C 8011028C 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* B87430 80110290 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* B87434 80110294 00E11021 */  addu  $v0, $a3, $at
/* B87438 80110298 A44001FC */  sh    $zero, 0x1fc($v0)
/* B8743C 8011029C 845801FC */  lh    $t8, 0x1fc($v0)
/* B87440 801102A0 24817FFF */  addiu $at, $a0, 0x7fff
/* B87444 801102A4 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B87448 801102A8 A45801FA */  sh    $t8, 0x1fa($v0)
/* B8744C 801102AC A02063E8 */  sb    $zero, 0x63e8($at)
/* B87450 801102B0 910E63E7 */  lbu   $t6, 0x63e7($t0)
/* B87454 801102B4 3C050001 */  lui   $a1, 1
/* B87458 801102B8 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B8745C 801102BC A42E62F9 */  sh    $t6, 0x62f9($at)
/* B87460 801102C0 911963E4 */  lbu   $t9, 0x63e4($t0)
/* B87464 801102C4 24010040 */  li    $at, 64
/* B87468 801102C8 240A0002 */  li    $t2, 2
/* B8746C 801102CC 17210007 */  bne   $t9, $at, .L801102EC
/* B87470 801102D0 00A72821 */   addu  $a1, $a1, $a3
/* B87474 801102D4 24817FFF */  addiu $at, $a0, 0x7fff
/* B87478 801102D8 A02063E5 */  sb    $zero, 0x63e5($at)
/* B8747C 801102DC 3C010001 */  lui   $at, 1
/* B87480 801102E0 00270821 */  addu  $at, $at, $a3
/* B87484 801102E4 10000003 */  b     .L801102F4
/* B87488 801102E8 A42A04C6 */   sh    $t2, 0x4c6($at)
.L801102EC:
/* B8748C 801102EC 24817FFF */  addiu $at, $a0, 0x7fff
/* B87490 801102F0 A02063E5 */  sb    $zero, 0x63e5($at)
.L801102F4:
/* B87494 801102F4 8C6200A4 */  lw    $v0, 0xa4($v1)
/* B87498 801102F8 3C01F000 */  lui   $at, 0xf000
/* B8749C 801102FC 3C048015 */  lui   $a0, %hi(D_80154B00) # $a0, 0x8015
/* B874A0 80110300 00415824 */  and   $t3, $v0, $at
/* B874A4 80110304 3C014000 */  lui   $at, 0x4000
/* B874A8 80110308 1561000A */  bne   $t3, $at, .L80110334
/* B874AC 8011030C 24844B00 */   addiu $a0, %lo(D_80154B00) # addiu $a0, $a0, 0x4b00
/* B874B0 80110310 846F002E */  lh    $t7, 0x2e($v1)
/* B874B4 80110314 84780030 */  lh    $t8, 0x30($v1)
/* B874B8 80110318 3C014000 */  lui   $at, 0x4000
/* B874BC 8011031C 00416026 */  xor   $t4, $v0, $at
/* B874C0 80110320 25ED0010 */  addiu $t5, $t7, 0x10
/* B874C4 80110324 270E0010 */  addiu $t6, $t8, 0x10
/* B874C8 80110328 AC6C00A4 */  sw    $t4, 0xa4($v1)
/* B874CC 8011032C A46D002E */  sh    $t5, 0x2e($v1)
/* B874D0 80110330 A46E0030 */  sh    $t6, 0x30($v1)
.L80110334:
/* B874D4 80110334 950363F0 */  lhu   $v1, 0x63f0($t0)
/* B874D8 80110338 24010031 */  li    $at, 49
/* B874DC 8011033C 3C198015 */  lui   $t9, %hi(D_8014B310) # $t9, 0x8015
/* B874E0 80110340 50610023 */  beql  $v1, $at, .L801103D0
/* B874E4 80110344 240A00FF */   li    $t2, 255
/* B874E8 80110348 8739B310 */  lh    $t9, %lo(D_8014B310)($t9)
/* B874EC 8011034C 24010006 */  li    $at, 6
/* B874F0 80110350 8FAB004C */  lw    $t3, 0x4c($sp)
/* B874F4 80110354 17210009 */  bne   $t9, $at, .L8011037C
/* B874F8 80110358 240AFF20 */   li    $t2, -224
/* B874FC 8011035C A56A0690 */  sh    $t2, 0x690($t3)
/* B87500 80110360 8FAC004C */  lw    $t4, 0x4c($sp)
/* B87504 80110364 3C010001 */  lui   $at, 1
/* B87508 80110368 8D82068C */  lw    $v0, 0x68c($t4)
/* B8750C 8011036C 8C4F0004 */  lw    $t7, 4($v0)
/* B87510 80110370 01E16825 */  or    $t5, $t7, $at
/* B87514 80110374 AC4D0004 */  sw    $t5, 4($v0)
/* B87518 80110378 950363F0 */  lhu   $v1, 0x63f0($t0)
.L8011037C:
/* B8751C 8011037C 24010029 */  li    $at, 41
/* B87520 80110380 14610012 */  bne   $v1, $at, .L801103CC
/* B87524 80110384 3C020001 */   lui   $v0, 1
/* B87528 80110388 00471021 */  addu  $v0, $v0, $a3
/* B8752C 8011038C 944204C6 */  lhu   $v0, 0x4c6($v0)
/* B87530 80110390 24010001 */  li    $at, 1
/* B87534 80110394 24180004 */  li    $t8, 4
/* B87538 80110398 10410002 */  beq   $v0, $at, .L801103A4
/* B8753C 8011039C 2401000B */   li    $at, 11
/* B87540 801103A0 1441000A */  bne   $v0, $at, .L801103CC
.L801103A4:
/* B87544 801103A4 3C010001 */   lui   $at, 1
/* B87548 801103A8 00270821 */  addu  $at, $at, $a3
/* B8754C 801103AC A43804C6 */  sh    $t8, 0x4c6($at)
/* B87550 801103B0 950E63F2 */  lhu   $t6, 0x63f2($t0)
/* B87554 801103B4 24010009 */  li    $at, 9
/* B87558 801103B8 24190001 */  li    $t9, 1
/* B8755C 801103BC 15C10003 */  bne   $t6, $at, .L801103CC
/* B87560 801103C0 3C010001 */   lui   $at, 1
/* B87564 801103C4 00270821 */  addu  $at, $at, $a3
/* B87568 801103C8 A43904C6 */  sh    $t9, 0x4c6($at)
.L801103CC:
/* B8756C 801103CC 240A00FF */  li    $t2, 255
.L801103D0:
/* B87570 801103D0 3C018015 */  lui   $at, %hi(D_8014B310) # $at, 0x8015
/* B87574 801103D4 A42AB310 */  sh    $t2, %lo(D_8014B310)($at)
/* B87578 801103D8 950663F2 */  lhu   $a2, 0x63f2($t0)
/* B8757C 801103DC 0C00084C */  jal   osSyncPrintf
/* B87580 801103E0 94A504C6 */   lhu   $a1, 0x4c6($a1)
/* B87584 801103E4 10000006 */  b     .L80110400
/* B87588 801103E8 8FBF001C */   lw    $ra, 0x1c($sp)
.L801103EC:
/* B8758C 801103EC 8FAC0030 */  lw    $t4, 0x30($sp)
.L801103F0:
/* B87590 801103F0 240B00FF */  li    $t3, 255
/* B87594 801103F4 25817FFF */  addiu $at, $t4, 0x7fff
/* B87598 801103F8 A02B6411 */  sb    $t3, 0x6411($at)
.L801103FC:
/* B8759C 801103FC 8FBF001C */  lw    $ra, 0x1c($sp)
.L80110400:
/* B875A0 80110400 27BD0058 */  addiu $sp, $sp, 0x58
/* B875A4 80110404 03E00008 */  jr    $ra
/* B875A8 80110408 00000000 */   nop   

glabel func_8011040C
/* B875AC 8011040C 3C0E8015 */  lui   $t6, %hi(D_8014B320) # $t6, 0x8015
/* B875B0 80110410 25CEB320 */  addiu $t6, %lo(D_8014B320) # addiu $t6, $t6, -0x4ce0
/* B875B4 80110414 3C018015 */  lui   $at, %hi(D_801538F0) # $at, 0x8015
/* B875B8 80110418 AC2E38F0 */  sw    $t6, %lo(D_801538F0)($at)
/* B875BC 8011041C 3C0F8015 */  lui   $t7, %hi(D_8014F548) # $t7, 0x8015
/* B875C0 80110420 25EFF548 */  addiu $t7, %lo(D_8014F548) # addiu $t7, $t7, -0xab8
/* B875C4 80110424 3C018015 */  lui   $at, %hi(D_801538F4) # $at, 0x8015
/* B875C8 80110428 AC2F38F4 */  sw    $t7, %lo(D_801538F4)($at)
/* B875CC 8011042C 3C188015 */  lui   $t8, %hi(D_80151658) # $t8, 0x8015
/* B875D0 80110430 27181658 */  addiu $t8, %lo(D_80151658) # addiu $t8, $t8, 0x1658
/* B875D4 80110434 3C018015 */  lui   $at, %hi(D_801538F8) # $at, 0x8015
/* B875D8 80110438 AC3838F8 */  sw    $t8, %lo(D_801538F8)($at)
/* B875DC 8011043C 3C198015 */  lui   $t9, %hi(D_80153768) # $t9, 0x8015
/* B875E0 80110440 27393768 */  addiu $t9, %lo(D_80153768) # addiu $t9, $t9, 0x3768
/* B875E4 80110444 3C018015 */  lui   $at, %hi(D_801538FC)
/* B875E8 80110448 03E00008 */  jr    $ra
/* B875EC 8011044C AC3938FC */   sw    $t9, %lo(D_801538FC)($at)

glabel func_80110450
/* B875F0 80110450 3C010001 */  lui   $at, 1
/* B875F4 80110454 00240821 */  addu  $at, $at, $a0
/* B875F8 80110458 03E00008 */  jr    $ra
/* B875FC 8011045C A4200A20 */   sh    $zero, 0xa20($at)

glabel func_80110460
/* B87600 80110460 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B87604 80110464 3C0E0001 */  lui   $t6, 1
/* B87608 80110468 AFBF0014 */  sw    $ra, 0x14($sp)
/* B8760C 8011046C 01C47021 */  addu  $t6, $t6, $a0
/* B87610 80110470 95CE0A20 */  lhu   $t6, 0xa20($t6)
/* B87614 80110474 3C0F0001 */  lui   $t7, 1
/* B87618 80110478 01E47821 */  addu  $t7, $t7, $a0
/* B8761C 8011047C 29C10002 */  slti  $at, $t6, 2
/* B87620 80110480 14200004 */  bnez  $at, .L80110494
/* B87624 80110484 3C020001 */   lui   $v0, 1
/* B87628 80110488 95EF0A20 */  lhu   $t7, 0xa20($t7)
/* B8762C 8011048C 29E10014 */  slti  $at, $t7, 0x14
/* B87630 80110490 14200007 */  bnez  $at, .L801104B0
.L80110494:
/* B87634 80110494 00441021 */   addu  $v0, $v0, $a0
/* B87638 80110498 94420A20 */  lhu   $v0, 0xa20($v0)
/* B8763C 8011049C 28410015 */  slti  $at, $v0, 0x15
/* B87640 801104A0 14200005 */  bnez  $at, .L801104B8
/* B87644 801104A4 28410018 */   slti  $at, $v0, 0x18
/* B87648 801104A8 50200004 */  beql  $at, $zero, .L801104BC
/* B8764C 801104AC 8FBF0014 */   lw    $ra, 0x14($sp)
.L801104B0:
/* B87650 801104B0 0C01D83D */  jal   func_800760F4
/* B87654 801104B4 00000000 */   nop   
.L801104B8:
/* B87658 801104B8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801104BC:
/* B8765C 801104BC 27BD0018 */  addiu $sp, $sp, 0x18
/* B87660 801104C0 03E00008 */  jr    $ra
/* B87664 801104C4 00000000 */   nop   

glabel func_801104C8
/* B87668 801104C8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B8766C 801104CC 3C0E0001 */  lui   $t6, 1
/* B87670 801104D0 AFBF0034 */  sw    $ra, 0x34($sp)
/* B87674 801104D4 AFB60030 */  sw    $s6, 0x30($sp)
/* B87678 801104D8 AFB5002C */  sw    $s5, 0x2c($sp)
/* B8767C 801104DC AFB40028 */  sw    $s4, 0x28($sp)
/* B87680 801104E0 AFB30024 */  sw    $s3, 0x24($sp)
/* B87684 801104E4 AFB20020 */  sw    $s2, 0x20($sp)
/* B87688 801104E8 AFB1001C */  sw    $s1, 0x1c($sp)
/* B8768C 801104EC AFB00018 */  sw    $s0, 0x18($sp)
/* B87690 801104F0 01C47021 */  addu  $t6, $t6, $a0
/* B87694 801104F4 95CE0A20 */  lhu   $t6, 0xa20($t6)
/* B87698 801104F8 0080A825 */  move  $s5, $a0
/* B8769C 801104FC 25CFFFFF */  addiu $t7, $t6, -1
/* B876A0 80110500 2DE10018 */  sltiu $at, $t7, 0x18
/* B876A4 80110504 10200116 */  beqz  $at, .L80110960
/* B876A8 80110508 000F7880 */   sll   $t7, $t7, 2
/* B876AC 8011050C 3C018015 */  lui   $at, %hi(jtbl_80154CF0)
/* B876B0 80110510 002F0821 */  addu  $at, $at, $t7
/* B876B4 80110514 8C2F4CF0 */  lw    $t7, %lo(jtbl_80154CF0)($at)
/* B876B8 80110518 01E00008 */  jr    $t7
/* B876BC 8011051C 00000000 */   nop   
glabel L80110520
/* B876C0 80110520 0C041B33 */  jal   func_80106CCC
/* B876C4 80110524 02A02025 */   move  $a0, $s5
/* B876C8 80110528 3C138016 */  lui   $s3, %hi(gSaveContext) # $s3, 0x8016
/* B876CC 8011052C 2673E660 */  addiu $s3, %lo(gSaveContext) # addiu $s3, $s3, -0x19a0
/* B876D0 80110530 967813FC */  lhu   $t8, 0x13fc($s3)
/* B876D4 80110534 3C168012 */  lui   $s6, %hi(D_80127464) # $s6, 0x8012
/* B876D8 80110538 A66013CE */  sh    $zero, 0x13ce($s3)
/* B876DC 8011053C 3319FFFE */  andi  $t9, $t8, 0xfffe
/* B876E0 80110540 A66013D2 */  sh    $zero, 0x13d2($s3)
/* B876E4 80110544 A67913FC */  sh    $t9, 0x13fc($s3)
/* B876E8 80110548 26D67464 */  addiu $s6, %lo(D_80127464) # addiu $s6, $s6, 0x7464
/* B876EC 8011054C 0000A025 */  move  $s4, $zero
/* B876F0 80110550 92CA002D */  lbu   $t2, 0x2d($s6)
.L80110554:
/* B876F4 80110554 3C098012 */  lui   $t1, %hi(D_80125A18) # $t1, 0x8012
/* B876F8 80110558 25295A18 */  addiu $t1, %lo(D_80125A18) # addiu $t1, $t1, 0x5a18
/* B876FC 8011055C 00141840 */  sll   $v1, $s4, 1
/* B87700 80110560 00699021 */  addu  $s2, $v1, $t1
/* B87704 80110564 026A5821 */  addu  $t3, $s3, $t2
/* B87708 80110568 916C0074 */  lbu   $t4, 0x74($t3)
/* B8770C 8011056C 864D0000 */  lh    $t5, ($s2)
/* B87710 80110570 3C0E8012 */  lui   $t6, %hi(D_80125A20) # $t6, 0x8012
/* B87714 80110574 25CE5A20 */  addiu $t6, %lo(D_80125A20) # addiu $t6, $t6, 0x5a20
/* B87718 80110578 158D0017 */  bne   $t4, $t5, .L801105D8
/* B8771C 8011057C 006E8821 */   addu  $s1, $v1, $t6
/* B87720 80110580 86220000 */  lh    $v0, ($s1)
/* B87724 80110584 24100001 */  li    $s0, 1
/* B87728 80110588 02C27821 */  addu  $t7, $s6, $v0
/* B8772C 8011058C 91F80000 */  lbu   $t8, ($t7)
/* B87730 80110590 0278C821 */  addu  $t9, $s3, $t8
/* B87734 80110594 A3220074 */  sb    $v0, 0x74($t9)
/* B87738 80110598 02701021 */  addu  $v0, $s3, $s0
.L8011059C:
/* B8773C 8011059C 90490068 */  lbu   $t1, 0x68($v0)
/* B87740 801105A0 864A0000 */  lh    $t2, ($s2)
/* B87744 801105A4 02A02025 */  move  $a0, $s5
/* B87748 801105A8 552A0006 */  bnel  $t1, $t2, .L801105C4
/* B8774C 801105AC 26100001 */   addiu $s0, $s0, 1
/* B87750 801105B0 862B0000 */  lh    $t3, ($s1)
/* B87754 801105B4 3205FFFF */  andi  $a1, $s0, 0xffff
/* B87758 801105B8 0C02129B */  jal   func_80084A6C
/* B8775C 801105BC A04B0068 */   sb    $t3, 0x68($v0)
/* B87760 801105C0 26100001 */  addiu $s0, $s0, 1
.L801105C4:
/* B87764 801105C4 00108400 */  sll   $s0, $s0, 0x10
/* B87768 801105C8 00108403 */  sra   $s0, $s0, 0x10
/* B8776C 801105CC 2A010004 */  slti  $at, $s0, 4
/* B87770 801105D0 5420FFF2 */  bnezl $at, .L8011059C
/* B87774 801105D4 02701021 */   addu  $v0, $s3, $s0
.L801105D8:
/* B87778 801105D8 26940001 */  addiu $s4, $s4, 1
/* B8777C 801105DC 0014A400 */  sll   $s4, $s4, 0x10
/* B87780 801105E0 0014A403 */  sra   $s4, $s4, 0x10
/* B87784 801105E4 2A810003 */  slti  $at, $s4, 3
/* B87788 801105E8 5420FFDA */  bnezl $at, .L80110554
/* B8778C 801105EC 92CA002D */   lbu   $t2, 0x2d($s6)
/* B87790 801105F0 92620068 */  lbu   $v0, 0x68($s3)
/* B87794 801105F4 2401003B */  li    $at, 59
/* B87798 801105F8 240C07D0 */  li    $t4, 2000
/* B8779C 801105FC 1041000F */  beq   $v0, $at, .L8011063C
/* B877A0 80110600 02A02025 */   move  $a0, $s5
/* B877A4 80110604 2401003C */  li    $at, 60
/* B877A8 80110608 1041000C */  beq   $v0, $at, .L8011063C
/* B877AC 8011060C 2401003D */   li    $at, 61
/* B877B0 80110610 1041000A */  beq   $v0, $at, .L8011063C
/* B877B4 80110614 24010055 */   li    $at, 85
/* B877B8 80110618 50410009 */  beql  $v0, $at, .L80110640
/* B877BC 8011061C 240300FF */   li    $v1, 255
/* B877C0 80110620 926213E2 */  lbu   $v0, 0x13e2($s3)
/* B877C4 80110624 240300FF */  li    $v1, 255
/* B877C8 80110628 50400004 */  beql  $v0, $zero, .L8011063C
/* B877CC 8011062C A2630068 */   sb    $v1, 0x68($s3)
/* B877D0 80110630 10000002 */  b     .L8011063C
/* B877D4 80110634 A2620068 */   sb    $v0, 0x68($s3)
/* B877D8 80110638 A2630068 */  sb    $v1, 0x68($s3)
.L8011063C:
/* B877DC 8011063C 240300FF */  li    $v1, 255
.L80110640:
/* B877E0 80110640 A66C13C8 */  sh    $t4, 0x13c8($s3)
/* B877E4 80110644 A6600038 */  sh    $zero, 0x38($s3)
/* B877E8 80110648 A26313E0 */  sb    $v1, 0x13e0($s3)
/* B877EC 8011064C A26313E1 */  sb    $v1, 0x13e1($s3)
/* B877F0 80110650 A66013FA */  sh    $zero, 0x13fa($s3)
/* B877F4 80110654 A66013FC */  sh    $zero, 0x13fc($s3)
/* B877F8 80110658 A66013FE */  sh    $zero, 0x13fe($s3)
/* B877FC 8011065C A6601400 */  sh    $zero, 0x1400($s3)
/* B87800 80110660 A26013E6 */  sb    $zero, 0x13e6($s3)
/* B87804 80110664 A26013E5 */  sb    $zero, 0x13e5($s3)
/* B87808 80110668 A26013E4 */  sb    $zero, 0x13e4($s3)
/* B8780C 8011066C A26013E3 */  sb    $zero, 0x13e3($s3)
/* B87810 80110670 A26013E2 */  sb    $zero, 0x13e2($s3)
/* B87814 80110674 A66013EC */  sh    $zero, 0x13ec($s3)
/* B87818 80110678 A66013EA */  sh    $zero, 0x13ea($s3)
/* B8781C 8011067C A66013E8 */  sh    $zero, 0x13e8($s3)
/* B87820 80110680 0C01D7C5 */  jal   func_80075F14
/* B87824 80110684 A26013E7 */   sb    $zero, 0x13e7($s3)
/* B87828 80110688 3C038015 */  lui   $v1, %hi(D_80153D80) # $v1, 0x8015
/* B8782C 8011068C 24633D80 */  addiu $v1, %lo(D_80153D80) # addiu $v1, $v1, 0x3d80
/* B87830 80110690 24180014 */  li    $t8, 20
/* B87834 80110694 A4780000 */  sh    $t8, ($v1)
/* B87838 80110698 3C028016 */  lui   $v0, %hi(gGameInfo)
/* B8783C 8011069C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B87840 801106A0 44806000 */  mtc1  $zero, $f12
/* B87844 801106A4 84430FC8 */  lh    $v1, 0xfc8($v0)
/* B87848 801106A8 84440FCA */  lh    $a0, 0xfca($v0)
/* B8784C 801106AC 84450FCC */  lh    $a1, 0xfcc($v0)
/* B87850 801106B0 28610065 */  slti  $at, $v1, 0x65
/* B87854 801106B4 14200003 */  bnez  $at, .L801106C4
/* B87858 801106B8 00041080 */   sll   $v0, $a0, 2
/* B8785C 801106BC 10000008 */  b     .L801106E0
/* B87860 801106C0 240800FF */   li    $t0, 255
.L801106C4:
/* B87864 801106C4 00034200 */  sll   $t0, $v1, 8
/* B87868 801106C8 01034023 */  subu  $t0, $t0, $v1
/* B8786C 801106CC 24010064 */  li    $at, 100
/* B87870 801106D0 0101001A */  div   $zero, $t0, $at
/* B87874 801106D4 00004012 */  mflo  $t0
/* B87878 801106D8 00000000 */  nop   
/* B8787C 801106DC 00000000 */  nop   
.L801106E0:
/* B87880 801106E0 00441023 */  subu  $v0, $v0, $a0
/* B87884 801106E4 28410100 */  slti  $at, $v0, 0x100
/* B87888 801106E8 14200003 */  bnez  $at, .L801106F8
/* B8788C 801106EC 00401825 */   move  $v1, $v0
/* B87890 801106F0 10000001 */  b     .L801106F8
/* B87894 801106F4 240300FF */   li    $v1, 255
.L801106F8:
/* B87898 801106F8 28A10065 */  slti  $at, $a1, 0x65
/* B8789C 801106FC 14200003 */  bnez  $at, .L8011070C
/* B878A0 80110700 306600FF */   andi  $a2, $v1, 0xff
/* B878A4 80110704 10000008 */  b     .L80110728
/* B878A8 80110708 240200FF */   li    $v0, 255
.L8011070C:
/* B878AC 8011070C 00051200 */  sll   $v0, $a1, 8
/* B878B0 80110710 00451023 */  subu  $v0, $v0, $a1
/* B878B4 80110714 24010064 */  li    $at, 100
/* B878B8 80110718 0041001A */  div   $zero, $v0, $at
/* B878BC 8011071C 00001012 */  mflo  $v0
/* B878C0 80110720 00000000 */  nop   
/* B878C4 80110724 00000000 */  nop   
.L80110728:
/* B878C8 80110728 310500FF */  andi  $a1, $t0, 0xff
/* B878CC 8011072C 0C02A800 */  jal   func_800AA000
/* B878D0 80110730 304700FF */   andi  $a3, $v0, 0xff
/* B878D4 80110734 3C010001 */  lui   $at, 1
/* B878D8 80110738 00350821 */  addu  $at, $at, $s5
/* B878DC 8011073C 24190002 */  li    $t9, 2
/* B878E0 80110740 10000087 */  b     .L80110960
/* B878E4 80110744 A4390A20 */   sh    $t9, 0xa20($at)
glabel L80110748
/* B878E8 80110748 3C038015 */  lui   $v1, %hi(D_80153D80) # $v1, 0x8015
/* B878EC 8011074C 24633D80 */  addiu $v1, %lo(D_80153D80) # addiu $v1, $v1, 0x3d80
/* B878F0 80110750 84690000 */  lh    $t1, ($v1)
/* B878F4 80110754 3C010001 */  lui   $at, 1
/* B878F8 80110758 00350821 */  addu  $at, $at, $s5
/* B878FC 8011075C 252AFFFF */  addiu $t2, $t1, -1
/* B87900 80110760 A46A0000 */  sh    $t2, ($v1)
/* B87904 80110764 846B0000 */  lh    $t3, ($v1)
/* B87908 80110768 240C0008 */  li    $t4, 8
/* B8790C 8011076C 5560007D */  bnezl $t3, .L80110964
/* B87910 80110770 8FBF0034 */   lw    $ra, 0x34($sp)
/* B87914 80110774 A42C0934 */  sh    $t4, 0x934($at)
/* B87918 80110778 3C010001 */  lui   $at, (0x00010A20 >> 16) # lui $at, 1
/* B8791C 8011077C 34210A20 */  ori   $at, (0x00010A20 & 0xFFFF) # ori $at, $at, 0xa20
/* B87920 80110780 02A11021 */  addu  $v0, $s5, $at
/* B87924 80110784 944D0000 */  lhu   $t5, ($v0)
/* B87928 80110788 25AE0001 */  addiu $t6, $t5, 1
/* B8792C 8011078C 0C02A857 */  jal   func_800AA15C
/* B87930 80110790 A44E0000 */   sh    $t6, ($v0)
/* B87934 80110794 10000073 */  b     .L80110964
/* B87938 80110798 8FBF0034 */   lw    $ra, 0x34($sp)
glabel L8011079C
/* B8793C 8011079C 3C010001 */  lui   $at, (0x00010A20 >> 16) # lui $at, 1
/* B87940 801107A0 34210A20 */  ori   $at, (0x00010A20 & 0xFFFF) # ori $at, $at, 0xa20
/* B87944 801107A4 02A11021 */  addu  $v0, $s5, $at
/* B87948 801107A8 944F0000 */  lhu   $t7, ($v0)
/* B8794C 801107AC 3C038015 */  lui   $v1, %hi(D_80153D80) # $v1, 0x8015
/* B87950 801107B0 24633D80 */  addiu $v1, %lo(D_80153D80) # addiu $v1, $v1, 0x3d80
/* B87954 801107B4 25F80001 */  addiu $t8, $t7, 1
/* B87958 801107B8 A4580000 */  sh    $t8, ($v0)
/* B8795C 801107BC A4600000 */  sh    $zero, ($v1)
/* B87960 801107C0 0C01D7C5 */  jal   func_80075F14
/* B87964 801107C4 02A02025 */   move  $a0, $s5
/* B87968 801107C8 0C02CE10 */  jal   func_800B3840
/* B8796C 801107CC 24040020 */   li    $a0, 32
/* B87970 801107D0 10000064 */  b     .L80110964
/* B87974 801107D4 8FBF0034 */   lw    $ra, 0x34($sp)
glabel L801107D8
/* B87978 801107D8 3C038015 */  lui   $v1, %hi(D_80153D80) # $v1, 0x8015
/* B8797C 801107DC 3C010001 */  li    $at, 0x00010000 # 0.000000
/* B87980 801107E0 24633D80 */  addiu $v1, %lo(D_80153D80) # addiu $v1, $v1, 0x3d80
/* B87984 801107E4 24190032 */  li    $t9, 50
/* B87988 801107E8 34210A20 */  ori   $at, (0x00010A20 & 0xFFFF) # ori $at, $at, 0xa20
/* B8798C 801107EC A4790000 */  sh    $t9, ($v1)
/* B87990 801107F0 02A11021 */  addu  $v0, $s5, $at
/* B87994 801107F4 94490000 */  lhu   $t1, ($v0)
/* B87998 801107F8 44806000 */  mtc1  $zero, $f12
/* B8799C 801107FC 252A0001 */  addiu $t2, $t1, 1
/* B879A0 80110800 A44A0000 */  sh    $t2, ($v0)
/* B879A4 80110804 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B879A8 80110808 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B879AC 8011080C 84430FC8 */  lh    $v1, 0xfc8($v0)
/* B879B0 80110810 84440FCA */  lh    $a0, 0xfca($v0)
/* B879B4 80110814 84450FCC */  lh    $a1, 0xfcc($v0)
/* B879B8 80110818 28610065 */  slti  $at, $v1, 0x65
/* B879BC 8011081C 14200003 */  bnez  $at, .L8011082C
/* B879C0 80110820 00041080 */   sll   $v0, $a0, 2
/* B879C4 80110824 10000008 */  b     .L80110848
/* B879C8 80110828 240800FF */   li    $t0, 255
.L8011082C:
/* B879CC 8011082C 00034200 */  sll   $t0, $v1, 8
/* B879D0 80110830 01034023 */  subu  $t0, $t0, $v1
/* B879D4 80110834 24010064 */  li    $at, 100
/* B879D8 80110838 0101001A */  div   $zero, $t0, $at
/* B879DC 8011083C 00004012 */  mflo  $t0
/* B879E0 80110840 00000000 */  nop   
/* B879E4 80110844 00000000 */  nop   
.L80110848:
/* B879E8 80110848 00441023 */  subu  $v0, $v0, $a0
/* B879EC 8011084C 28410100 */  slti  $at, $v0, 0x100
/* B879F0 80110850 14200003 */  bnez  $at, .L80110860
/* B879F4 80110854 00401825 */   move  $v1, $v0
/* B879F8 80110858 10000001 */  b     .L80110860
/* B879FC 8011085C 240300FF */   li    $v1, 255
.L80110860:
/* B87A00 80110860 28A10065 */  slti  $at, $a1, 0x65
/* B87A04 80110864 14200003 */  bnez  $at, .L80110874
/* B87A08 80110868 306600FF */   andi  $a2, $v1, 0xff
/* B87A0C 8011086C 10000008 */  b     .L80110890
/* B87A10 80110870 240200FF */   li    $v0, 255
.L80110874:
/* B87A14 80110874 00051200 */  sll   $v0, $a1, 8
/* B87A18 80110878 00451023 */  subu  $v0, $v0, $a1
/* B87A1C 8011087C 24010064 */  li    $at, 100
/* B87A20 80110880 0041001A */  div   $zero, $v0, $at
/* B87A24 80110884 00001012 */  mflo  $v0
/* B87A28 80110888 00000000 */  nop   
/* B87A2C 8011088C 00000000 */  nop   
.L80110890:
/* B87A30 80110890 310500FF */  andi  $a1, $t0, 0xff
/* B87A34 80110894 0C02A800 */  jal   func_800AA000
/* B87A38 80110898 304700FF */   andi  $a3, $v0, 0xff
/* B87A3C 8011089C 10000031 */  b     .L80110964
/* B87A40 801108A0 8FBF0034 */   lw    $ra, 0x34($sp)
glabel L801108A4
/* B87A44 801108A4 3C038015 */  lui   $v1, %hi(D_80153D80) # $v1, 0x8015
/* B87A48 801108A8 24633D80 */  addiu $v1, %lo(D_80153D80) # addiu $v1, $v1, 0x3d80
/* B87A4C 801108AC 846B0000 */  lh    $t3, ($v1)
/* B87A50 801108B0 3C010001 */  lui   $at, (0x00010A20 >> 16) # lui $at, 1
/* B87A54 801108B4 34210A20 */  ori   $at, (0x00010A20 & 0xFFFF) # ori $at, $at, 0xa20
/* B87A58 801108B8 256CFFFF */  addiu $t4, $t3, -1
/* B87A5C 801108BC A46C0000 */  sh    $t4, ($v1)
/* B87A60 801108C0 846D0000 */  lh    $t5, ($v1)
/* B87A64 801108C4 240E0040 */  li    $t6, 64
/* B87A68 801108C8 02A11021 */  addu  $v0, $s5, $at
/* B87A6C 801108CC 55A00025 */  bnezl $t5, .L80110964
/* B87A70 801108D0 8FBF0034 */   lw    $ra, 0x34($sp)
/* B87A74 801108D4 A46E0000 */  sh    $t6, ($v1)
/* B87A78 801108D8 944F0000 */  lhu   $t7, ($v0)
/* B87A7C 801108DC 25F80001 */  addiu $t8, $t7, 1
/* B87A80 801108E0 1000001F */  b     .L80110960
/* B87A84 801108E4 A4580000 */   sh    $t8, ($v0)
glabel L801108E8
/* B87A88 801108E8 3C038015 */  lui   $v1, %hi(D_80153D80) # $v1, 0x8015
/* B87A8C 801108EC 24633D80 */  addiu $v1, %lo(D_80153D80) # addiu $v1, $v1, 0x3d80
/* B87A90 801108F0 84790000 */  lh    $t9, ($v1)
/* B87A94 801108F4 3C010001 */  lui   $at, (0x00010A20 >> 16) # lui $at, 1
/* B87A98 801108F8 34210A20 */  ori   $at, (0x00010A20 & 0xFFFF) # ori $at, $at, 0xa20
/* B87A9C 801108FC 2729FFFF */  addiu $t1, $t9, -1
/* B87AA0 80110900 A4690000 */  sh    $t1, ($v1)
/* B87AA4 80110904 846A0000 */  lh    $t2, ($v1)
/* B87AA8 80110908 240B0032 */  li    $t3, 50
/* B87AAC 8011090C 02A11021 */  addu  $v0, $s5, $at
/* B87AB0 80110910 55400014 */  bnezl $t2, .L80110964
/* B87AB4 80110914 8FBF0034 */   lw    $ra, 0x34($sp)
/* B87AB8 80110918 A46B0000 */  sh    $t3, ($v1)
/* B87ABC 8011091C 944C0000 */  lhu   $t4, ($v0)
/* B87AC0 80110920 258D0001 */  addiu $t5, $t4, 1
/* B87AC4 80110924 1000000E */  b     .L80110960
/* B87AC8 80110928 A44D0000 */   sh    $t5, ($v0)
glabel L8011092C
/* B87ACC 8011092C 0C01D8EA */  jal   func_800763A8
/* B87AD0 80110930 02A02025 */   move  $a0, $s5
/* B87AD4 80110934 3C038015 */  lui   $v1, %hi(D_80153D80) # $v1, 0x8015
/* B87AD8 80110938 24633D80 */  addiu $v1, %lo(D_80153D80) # addiu $v1, $v1, 0x3d80
/* B87ADC 8011093C 846E0000 */  lh    $t6, ($v1)
/* B87AE0 80110940 3C010001 */  lui   $at, 1
/* B87AE4 80110944 00350821 */  addu  $at, $at, $s5
/* B87AE8 80110948 25CFFFFF */  addiu $t7, $t6, -1
/* B87AEC 8011094C A46F0000 */  sh    $t7, ($v1)
/* B87AF0 80110950 84780000 */  lh    $t8, ($v1)
/* B87AF4 80110954 57000003 */  bnezl $t8, .L80110964
/* B87AF8 80110958 8FBF0034 */   lw    $ra, 0x34($sp)
/* B87AFC 8011095C A4200A20 */  sh    $zero, 0xa20($at)
.L80110960:
glabel L80110960
/* B87B00 80110960 8FBF0034 */  lw    $ra, 0x34($sp)
.L80110964:
/* B87B04 80110964 8FB00018 */  lw    $s0, 0x18($sp)
/* B87B08 80110968 8FB1001C */  lw    $s1, 0x1c($sp)
/* B87B0C 8011096C 8FB20020 */  lw    $s2, 0x20($sp)
/* B87B10 80110970 8FB30024 */  lw    $s3, 0x24($sp)
/* B87B14 80110974 8FB40028 */  lw    $s4, 0x28($sp)
/* B87B18 80110978 8FB5002C */  lw    $s5, 0x2c($sp)
/* B87B1C 8011097C 8FB60030 */  lw    $s6, 0x30($sp)
/* B87B20 80110980 03E00008 */  jr    $ra
/* B87B24 80110984 27BD0038 */   addiu $sp, $sp, 0x38
