.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800D3A90
/* B4AC30 800D3A90 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4AC34 800D3A94 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4AC38 800D3A98 AFA5001C */  sw    $a1, 0x1c($sp)
/* B4AC3C 800D3A9C 1480000F */  bnez  $a0, .L800D3ADC
/* B4AC40 800D3AA0 AFA60020 */   sw    $a2, 0x20($sp)
/* B4AC44 800D3AA4 3C0E8013 */  lui   $t6, %hi(D_8012DBF0) # $t6, 0x8013
/* B4AC48 800D3AA8 8DCEDBF0 */  lw    $t6, %lo(D_8012DBF0)($t6)
/* B4AC4C 800D3AAC 3C048014 */  lui   $a0, %hi(D_80146A40) # $a0, 0x8014
/* B4AC50 800D3AB0 24846A40 */  addiu $a0, %lo(D_80146A40) # addiu $a0, $a0, 0x6a40
/* B4AC54 800D3AB4 29C10002 */  slti  $at, $t6, 2
/* B4AC58 800D3AB8 14200011 */  bnez  $at, .L800D3B00
/* B4AC5C 800D3ABC 00C02825 */   move  $a1, $a2
/* B4AC60 800D3AC0 0C00084C */  jal   osSyncPrintf
/* B4AC64 800D3AC4 8FA6001C */   lw    $a2, 0x1c($sp)
/* B4AC68 800D3AC8 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4AC6C 800D3ACC 0C03FBA0 */  jal   func_800FEE80
/* B4AC70 800D3AD0 2484A7D0 */   addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4AC74 800D3AD4 1000000B */  b     .L800D3B04
/* B4AC78 800D3AD8 8FBF0014 */   lw    $ra, 0x14($sp)
.L800D3ADC:
/* B4AC7C 800D3ADC 3C0F8013 */  lui   $t7, %hi(D_8012DBF0) # $t7, 0x8013
/* B4AC80 800D3AE0 8DEFDBF0 */  lw    $t7, %lo(D_8012DBF0)($t7)
/* B4AC84 800D3AE4 3C048014 */  lui   $a0, %hi(D_80146A64) # $a0, 0x8014
/* B4AC88 800D3AE8 24846A64 */  addiu $a0, %lo(D_80146A64) # addiu $a0, $a0, 0x6a64
/* B4AC8C 800D3AEC 29E10003 */  slti  $at, $t7, 3
/* B4AC90 800D3AF0 14200003 */  bnez  $at, .L800D3B00
/* B4AC94 800D3AF4 8FA50020 */   lw    $a1, 0x20($sp)
/* B4AC98 800D3AF8 0C00084C */  jal   osSyncPrintf
/* B4AC9C 800D3AFC 8FA6001C */   lw    $a2, 0x1c($sp)
.L800D3B00:
/* B4ACA0 800D3B00 8FBF0014 */  lw    $ra, 0x14($sp)
.L800D3B04:
/* B4ACA4 800D3B04 27BD0018 */  addiu $sp, $sp, 0x18
/* B4ACA8 800D3B08 03E00008 */  jr    $ra
/* B4ACAC 800D3B0C 00000000 */   nop   

glabel func_800D3B10
/* B4ACB0 800D3B10 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B4ACB4 800D3B14 AFA40020 */  sw    $a0, 0x20($sp)
/* B4ACB8 800D3B18 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4ACBC 800D3B1C 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4ACC0 800D3B20 2484A7D0 */  addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4ACC4 800D3B24 0C03F911 */  jal   func_800FE444
/* B4ACC8 800D3B28 8FA50020 */   lw    $a1, 0x20($sp)
/* B4ACCC 800D3B2C 3C068014 */  lui   $a2, %hi(D_80146A88) # $a2, 0x8014
/* B4ACD0 800D3B30 3C078014 */  lui   $a3, %hi(D_80146A98) # $a3, 0x8014
/* B4ACD4 800D3B34 AFA2001C */  sw    $v0, 0x1c($sp)
/* B4ACD8 800D3B38 24E76A98 */  addiu $a3, %lo(D_80146A98) # addiu $a3, $a3, 0x6a98
/* B4ACDC 800D3B3C 24C66A88 */  addiu $a2, %lo(D_80146A88) # addiu $a2, $a2, 0x6a88
/* B4ACE0 800D3B40 00402025 */  move  $a0, $v0
/* B4ACE4 800D3B44 0C034EA4 */  jal   func_800D3A90
/* B4ACE8 800D3B48 8FA50020 */   lw    $a1, 0x20($sp)
/* B4ACEC 800D3B4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4ACF0 800D3B50 8FA2001C */  lw    $v0, 0x1c($sp)
/* B4ACF4 800D3B54 27BD0020 */  addiu $sp, $sp, 0x20
/* B4ACF8 800D3B58 03E00008 */  jr    $ra
/* B4ACFC 800D3B5C 00000000 */   nop   

glabel func_800D3B60
/* B4AD00 800D3B60 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B4AD04 800D3B64 AFA40020 */  sw    $a0, 0x20($sp)
/* B4AD08 800D3B68 00C03825 */  move  $a3, $a2
/* B4AD0C 800D3B6C 00A03025 */  move  $a2, $a1
/* B4AD10 800D3B70 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4AD14 800D3B74 AFA50024 */  sw    $a1, 0x24($sp)
/* B4AD18 800D3B78 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4AD1C 800D3B7C 2484A7D0 */  addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4AD20 800D3B80 0C03F851 */  jal   func_800FE144
/* B4AD24 800D3B84 8FA50020 */   lw    $a1, 0x20($sp)
/* B4AD28 800D3B88 3C068014 */  lui   $a2, %hi(D_80146AA0) # $a2, 0x8014
/* B4AD2C 800D3B8C 3C078014 */  lui   $a3, %hi(D_80146AB4) # $a3, 0x8014
/* B4AD30 800D3B90 AFA2001C */  sw    $v0, 0x1c($sp)
/* B4AD34 800D3B94 24E76AB4 */  addiu $a3, %lo(D_80146AB4) # addiu $a3, $a3, 0x6ab4
/* B4AD38 800D3B98 24C66AA0 */  addiu $a2, %lo(D_80146AA0) # addiu $a2, $a2, 0x6aa0
/* B4AD3C 800D3B9C 00402025 */  move  $a0, $v0
/* B4AD40 800D3BA0 0C034EA4 */  jal   func_800D3A90
/* B4AD44 800D3BA4 8FA50020 */   lw    $a1, 0x20($sp)
/* B4AD48 800D3BA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4AD4C 800D3BAC 8FA2001C */  lw    $v0, 0x1c($sp)
/* B4AD50 800D3BB0 27BD0020 */  addiu $sp, $sp, 0x20
/* B4AD54 800D3BB4 03E00008 */  jr    $ra
/* B4AD58 800D3BB8 00000000 */   nop   

glabel func_800D3BBC
/* B4AD5C 800D3BBC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B4AD60 800D3BC0 AFA40020 */  sw    $a0, 0x20($sp)
/* B4AD64 800D3BC4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4AD68 800D3BC8 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4AD6C 800D3BCC 2484A7D0 */  addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4AD70 800D3BD0 0C03F921 */  jal   func_800FE484
/* B4AD74 800D3BD4 8FA50020 */   lw    $a1, 0x20($sp)
/* B4AD78 800D3BD8 3C068014 */  lui   $a2, %hi(D_80146ABC) # $a2, 0x8014
/* B4AD7C 800D3BDC 3C078014 */  lui   $a3, %hi(D_80146ACC) # $a3, 0x8014
/* B4AD80 800D3BE0 AFA2001C */  sw    $v0, 0x1c($sp)
/* B4AD84 800D3BE4 24E76ACC */  addiu $a3, %lo(D_80146ACC) # addiu $a3, $a3, 0x6acc
/* B4AD88 800D3BE8 24C66ABC */  addiu $a2, %lo(D_80146ABC) # addiu $a2, $a2, 0x6abc
/* B4AD8C 800D3BEC 00402025 */  move  $a0, $v0
/* B4AD90 800D3BF0 0C034EA4 */  jal   func_800D3A90
/* B4AD94 800D3BF4 8FA50020 */   lw    $a1, 0x20($sp)
/* B4AD98 800D3BF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4AD9C 800D3BFC 8FA2001C */  lw    $v0, 0x1c($sp)
/* B4ADA0 800D3C00 27BD0020 */  addiu $sp, $sp, 0x20
/* B4ADA4 800D3C04 03E00008 */  jr    $ra
/* B4ADA8 800D3C08 00000000 */   nop   

glabel func_800D3C0C
/* B4ADAC 800D3C0C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B4ADB0 800D3C10 AFA40020 */  sw    $a0, 0x20($sp)
/* B4ADB4 800D3C14 00C03825 */  move  $a3, $a2
/* B4ADB8 800D3C18 00A03025 */  move  $a2, $a1
/* B4ADBC 800D3C1C AFBF0014 */  sw    $ra, 0x14($sp)
/* B4ADC0 800D3C20 AFA50024 */  sw    $a1, 0x24($sp)
/* B4ADC4 800D3C24 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4ADC8 800D3C28 2484A7D0 */  addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4ADCC 800D3C2C 0C03F865 */  jal   func_800FE194
/* B4ADD0 800D3C30 8FA50020 */   lw    $a1, 0x20($sp)
/* B4ADD4 800D3C34 3C068014 */  lui   $a2, %hi(D_80146AD4) # $a2, 0x8014
/* B4ADD8 800D3C38 3C078014 */  lui   $a3, %hi(D_80146AEC) # $a3, 0x8014
/* B4ADDC 800D3C3C AFA2001C */  sw    $v0, 0x1c($sp)
/* B4ADE0 800D3C40 24E76AEC */  addiu $a3, %lo(D_80146AEC) # addiu $a3, $a3, 0x6aec
/* B4ADE4 800D3C44 24C66AD4 */  addiu $a2, %lo(D_80146AD4) # addiu $a2, $a2, 0x6ad4
/* B4ADE8 800D3C48 00402025 */  move  $a0, $v0
/* B4ADEC 800D3C4C 0C034EA4 */  jal   func_800D3A90
/* B4ADF0 800D3C50 8FA50020 */   lw    $a1, 0x20($sp)
/* B4ADF4 800D3C54 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4ADF8 800D3C58 8FA2001C */  lw    $v0, 0x1c($sp)
/* B4ADFC 800D3C5C 27BD0020 */  addiu $sp, $sp, 0x20
/* B4AE00 800D3C60 03E00008 */  jr    $ra
/* B4AE04 800D3C64 00000000 */   nop   

glabel func_800D3C68
/* B4AE08 800D3C68 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4AE0C 800D3C6C AFA5001C */  sw    $a1, 0x1c($sp)
/* B4AE10 800D3C70 00802825 */  move  $a1, $a0
/* B4AE14 800D3C74 AFA40018 */  sw    $a0, 0x18($sp)
/* B4AE18 800D3C78 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4AE1C 800D3C7C 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4AE20 800D3C80 2484A7D0 */  addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4AE24 800D3C84 0C03FA9C */  jal   func_800FEA70
/* B4AE28 800D3C88 8FA6001C */   lw    $a2, 0x1c($sp)
/* B4AE2C 800D3C8C 3C068014 */  lui   $a2, %hi(D_80146AF4) # $a2, 0x8014
/* B4AE30 800D3C90 3C078014 */  lui   $a3, %hi(D_80146B04) # $a3, 0x8014
/* B4AE34 800D3C94 AFA20018 */  sw    $v0, 0x18($sp)
/* B4AE38 800D3C98 24E76B04 */  addiu $a3, %lo(D_80146B04) # addiu $a3, $a3, 0x6b04
/* B4AE3C 800D3C9C 24C66AF4 */  addiu $a2, %lo(D_80146AF4) # addiu $a2, $a2, 0x6af4
/* B4AE40 800D3CA0 00402025 */  move  $a0, $v0
/* B4AE44 800D3CA4 0C034EA4 */  jal   func_800D3A90
/* B4AE48 800D3CA8 8FA5001C */   lw    $a1, 0x1c($sp)
/* B4AE4C 800D3CAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4AE50 800D3CB0 8FA20018 */  lw    $v0, 0x18($sp)
/* B4AE54 800D3CB4 27BD0018 */  addiu $sp, $sp, 0x18
/* B4AE58 800D3CB8 03E00008 */  jr    $ra
/* B4AE5C 800D3CBC 00000000 */   nop   

glabel func_800D3CC0
/* B4AE60 800D3CC0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B4AE64 800D3CC4 AFA50024 */  sw    $a1, 0x24($sp)
/* B4AE68 800D3CC8 AFA7002C */  sw    $a3, 0x2c($sp)
/* B4AE6C 800D3CCC 8FAE002C */  lw    $t6, 0x2c($sp)
/* B4AE70 800D3CD0 00802825 */  move  $a1, $a0
/* B4AE74 800D3CD4 AFA40020 */  sw    $a0, 0x20($sp)
/* B4AE78 800D3CD8 00C03825 */  move  $a3, $a2
/* B4AE7C 800D3CDC AFBF001C */  sw    $ra, 0x1c($sp)
/* B4AE80 800D3CE0 AFA60028 */  sw    $a2, 0x28($sp)
/* B4AE84 800D3CE4 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4AE88 800D3CE8 2484A7D0 */  addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4AE8C 800D3CEC 8FA60024 */  lw    $a2, 0x24($sp)
/* B4AE90 800D3CF0 0C03FB67 */  jal   func_800FED9C
/* B4AE94 800D3CF4 AFAE0010 */   sw    $t6, 0x10($sp)
/* B4AE98 800D3CF8 3C068014 */  lui   $a2, %hi(D_80146B0C) # $a2, 0x8014
/* B4AE9C 800D3CFC 3C078014 */  lui   $a3, %hi(D_80146B20) # $a3, 0x8014
/* B4AEA0 800D3D00 AFA20020 */  sw    $v0, 0x20($sp)
/* B4AEA4 800D3D04 24E76B20 */  addiu $a3, %lo(D_80146B20) # addiu $a3, $a3, 0x6b20
/* B4AEA8 800D3D08 24C66B0C */  addiu $a2, %lo(D_80146B0C) # addiu $a2, $a2, 0x6b0c
/* B4AEAC 800D3D0C 00402025 */  move  $a0, $v0
/* B4AEB0 800D3D10 0C034EA4 */  jal   func_800D3A90
/* B4AEB4 800D3D14 8FA50024 */   lw    $a1, 0x24($sp)
/* B4AEB8 800D3D18 8FBF001C */  lw    $ra, 0x1c($sp)
/* B4AEBC 800D3D1C 8FA20020 */  lw    $v0, 0x20($sp)
/* B4AEC0 800D3D20 27BD0020 */  addiu $sp, $sp, 0x20
/* B4AEC4 800D3D24 03E00008 */  jr    $ra
/* B4AEC8 800D3D28 00000000 */   nop   

glabel func_800D3D2C
/* B4AECC 800D3D2C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4AED0 800D3D30 00802825 */  move  $a1, $a0
/* B4AED4 800D3D34 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4AED8 800D3D38 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4AEDC 800D3D3C 0C03F9F9 */  jal   func_800FE7E4
/* B4AEE0 800D3D40 2484A7D0 */   addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4AEE4 800D3D44 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4AEE8 800D3D48 27BD0018 */  addiu $sp, $sp, 0x18
/* B4AEEC 800D3D4C 03E00008 */  jr    $ra
/* B4AEF0 800D3D50 00000000 */   nop   

glabel func_800D3D54
/* B4AEF4 800D3D54 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4AEF8 800D3D58 AFA5001C */  sw    $a1, 0x1c($sp)
/* B4AEFC 800D3D5C 00802825 */  move  $a1, $a0
/* B4AF00 800D3D60 AFA40018 */  sw    $a0, 0x18($sp)
/* B4AF04 800D3D64 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4AF08 800D3D68 00C03825 */  move  $a3, $a2
/* B4AF0C 800D3D6C 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4AF10 800D3D70 8FA6001C */  lw    $a2, 0x1c($sp)
/* B4AF14 800D3D74 0C03FA8A */  jal   func_800FEA28
/* B4AF18 800D3D78 2484A7D0 */   addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4AF1C 800D3D7C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4AF20 800D3D80 27BD0018 */  addiu $sp, $sp, 0x18
/* B4AF24 800D3D84 03E00008 */  jr    $ra
/* B4AF28 800D3D88 00000000 */   nop   

glabel func_800D3D8C
/* B4AF2C 800D3D8C 00803025 */  move  $a2, $a0
/* B4AF30 800D3D90 00C50019 */  multu $a2, $a1
/* B4AF34 800D3D94 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B4AF38 800D3D98 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4AF3C 800D3D9C 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4AF40 800D3DA0 2484A7D0 */  addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4AF44 800D3DA4 00002812 */  mflo  $a1
/* B4AF48 800D3DA8 AFA5001C */  sw    $a1, 0x1c($sp)
/* B4AF4C 800D3DAC 0C03F911 */  jal   func_800FE444
/* B4AF50 800D3DB0 00000000 */   nop   
/* B4AF54 800D3DB4 10400004 */  beqz  $v0, .L800D3DC8
/* B4AF58 800D3DB8 AFA20024 */   sw    $v0, 0x24($sp)
/* B4AF5C 800D3DBC 00402025 */  move  $a0, $v0
/* B4AF60 800D3DC0 0C001114 */  jal   bzero
/* B4AF64 800D3DC4 8FA5001C */   lw    $a1, 0x1c($sp)
.L800D3DC8:
/* B4AF68 800D3DC8 3C068014 */  lui   $a2, %hi(D_80146B28) # $a2, 0x8014
/* B4AF6C 800D3DCC 3C078014 */  lui   $a3, %hi(D_80146B38) # $a3, 0x8014
/* B4AF70 800D3DD0 24E76B38 */  addiu $a3, %lo(D_80146B38) # addiu $a3, $a3, 0x6b38
/* B4AF74 800D3DD4 24C66B28 */  addiu $a2, %lo(D_80146B28) # addiu $a2, $a2, 0x6b28
/* B4AF78 800D3DD8 8FA40024 */  lw    $a0, 0x24($sp)
/* B4AF7C 800D3DDC 0C034EA4 */  jal   func_800D3A90
/* B4AF80 800D3DE0 8FA5001C */   lw    $a1, 0x1c($sp)
/* B4AF84 800D3DE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4AF88 800D3DE8 8FA20024 */  lw    $v0, 0x24($sp)
/* B4AF8C 800D3DEC 27BD0028 */  addiu $sp, $sp, 0x28
/* B4AF90 800D3DF0 03E00008 */  jr    $ra
/* B4AF94 800D3DF4 00000000 */   nop   

glabel func_800D3DF8
/* B4AF98 800D3DF8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4AF9C 800D3DFC AFBF0014 */  sw    $ra, 0x14($sp)
/* B4AFA0 800D3E00 3C048014 */  lui   $a0, %hi(D_80146B40) # $a0, 0x8014
/* B4AFA4 800D3E04 0C00084C */  jal   osSyncPrintf
/* B4AFA8 800D3E08 24846B40 */   addiu $a0, %lo(D_80146B40) # addiu $a0, $a0, 0x6b40
/* B4AFAC 800D3E0C 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4AFB0 800D3E10 0C03FBA0 */  jal   func_800FEE80
/* B4AFB4 800D3E14 2484A7D0 */   addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4AFB8 800D3E18 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4AFBC 800D3E1C 27BD0018 */  addiu $sp, $sp, 0x18
/* B4AFC0 800D3E20 03E00008 */  jr    $ra
/* B4AFC4 800D3E24 00000000 */   nop   

glabel func_800D3E28
/* B4AFC8 800D3E28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4AFCC 800D3E2C AFA5001C */  sw    $a1, 0x1c($sp)
/* B4AFD0 800D3E30 00802825 */  move  $a1, $a0
/* B4AFD4 800D3E34 AFA40018 */  sw    $a0, 0x18($sp)
/* B4AFD8 800D3E38 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4AFDC 800D3E3C 00C03825 */  move  $a3, $a2
/* B4AFE0 800D3E40 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4AFE4 800D3E44 8FA6001C */  lw    $a2, 0x1c($sp)
/* B4AFE8 800D3E48 0C03FB6F */  jal   func_800FEDBC
/* B4AFEC 800D3E4C 2484A7D0 */   addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4AFF0 800D3E50 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4AFF4 800D3E54 27BD0018 */  addiu $sp, $sp, 0x18
/* B4AFF8 800D3E58 03E00008 */  jr    $ra
/* B4AFFC 800D3E5C 00000000 */   nop   

glabel func_800D3E60
/* B4B000 800D3E60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4B004 800D3E64 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4B008 800D3E68 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4B00C 800D3E6C 0C03FCA0 */  jal   func_800FF280
/* B4B010 800D3E70 2484A7D0 */   addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4B014 800D3E74 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4B018 800D3E78 27BD0018 */  addiu $sp, $sp, 0x18
/* B4B01C 800D3E7C 03E00008 */  jr    $ra
/* B4B020 800D3E80 00000000 */   nop   

glabel func_800D3E84
/* B4B024 800D3E84 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4B028 800D3E88 00A03025 */  move  $a2, $a1
/* B4B02C 800D3E8C 00802825 */  move  $a1, $a0
/* B4B030 800D3E90 AFA40018 */  sw    $a0, 0x18($sp)
/* B4B034 800D3E94 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4B038 800D3E98 3C018013 */  lui   $at, %hi(D_8012DBF0) # $at, 0x8013
/* B4B03C 800D3E9C 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4B040 800D3EA0 AC20DBF0 */  sw    $zero, %lo(D_8012DBF0)($at)
/* B4B044 800D3EA4 0C03F769 */  jal   func_800FDDA4
/* B4B048 800D3EA8 2484A7D0 */   addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4B04C 800D3EAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4B050 800D3EB0 27BD0018 */  addiu $sp, $sp, 0x18
/* B4B054 800D3EB4 03E00008 */  jr    $ra
/* B4B058 800D3EB8 00000000 */   nop   

glabel func_800D3EBC
/* B4B05C 800D3EBC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4B060 800D3EC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4B064 800D3EC4 3C018013 */  lui   $at, %hi(D_8012DBF0) # $at, 0x8013
/* B4B068 800D3EC8 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4B06C 800D3ECC AC20DBF0 */  sw    $zero, %lo(D_8012DBF0)($at)
/* B4B070 800D3ED0 0C03F7C8 */  jal   func_800FDF20
/* B4B074 800D3ED4 2484A7D0 */   addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4B078 800D3ED8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4B07C 800D3EDC 27BD0018 */  addiu $sp, $sp, 0x18
/* B4B080 800D3EE0 03E00008 */  jr    $ra
/* B4B084 800D3EE4 00000000 */   nop   

glabel func_800D3EE8
/* B4B088 800D3EE8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4B08C 800D3EEC AFBF0014 */  sw    $ra, 0x14($sp)
/* B4B090 800D3EF0 3C048017 */  lui   $a0, %hi(D_8016A7D0) # $a0, 0x8017
/* B4B094 800D3EF4 0C03F7D3 */  jal   func_800FDF4C
/* B4B098 800D3EF8 2484A7D0 */   addiu $a0, %lo(D_8016A7D0) # addiu $a0, $a0, -0x5830
/* B4B09C 800D3EFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4B0A0 800D3F00 27BD0018 */  addiu $sp, $sp, 0x18
/* B4B0A4 800D3F04 03E00008 */  jr    $ra
/* B4B0A8 800D3F08 00000000 */   nop   
