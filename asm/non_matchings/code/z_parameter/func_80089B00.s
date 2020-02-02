glabel func_80089B00
/* B00CA0 80089B00 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B00CA4 80089B04 AFBF0014 */  sw    $ra, 0x14($sp)
/* B00CA8 80089B08 AFA40060 */  sw    $a0, 0x60($sp)
/* B00CAC 80089B0C AFA50064 */  sw    $a1, 0x64($sp)
/* B00CB0 80089B10 AFA60068 */  sw    $a2, 0x68($sp)
/* B00CB4 80089B14 8C850000 */  lw    $a1, ($a0)
/* B00CB8 80089B18 3C068014 */  lui   $a2, %hi(D_8013E300) # $a2, 0x8014
/* B00CBC 80089B1C 24C6E300 */  addiu $a2, %lo(D_8013E300) # addiu $a2, $a2, -0x1d00
/* B00CC0 80089B20 27A4004C */  addiu $a0, $sp, 0x4c
/* B00CC4 80089B24 24070C07 */  li    $a3, 3079
/* B00CC8 80089B28 0C031AB1 */  jal   func_800C6AC4
/* B00CCC 80089B2C AFA5005C */   sw    $a1, 0x5c($sp)
/* B00CD0 80089B30 8FA8005C */  lw    $t0, 0x5c($sp)
/* B00CD4 80089B34 3C18FD18 */  lui   $t8, 0xfd18
/* B00CD8 80089B38 3C0AF518 */  lui   $t2, 0xf518
/* B00CDC 80089B3C 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* B00CE0 80089B40 3C0B0700 */  lui   $t3, 0x700
/* B00CE4 80089B44 3C0DE600 */  lui   $t5, 0xe600
/* B00CE8 80089B48 244F0008 */  addiu $t7, $v0, 8
/* B00CEC 80089B4C AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* B00CF0 80089B50 AC580000 */  sw    $t8, ($v0)
/* B00CF4 80089B54 8FB90064 */  lw    $t9, 0x64($sp)
/* B00CF8 80089B58 3C18073F */  lui   $t8, (0x073FF080 >> 16) # lui $t8, 0x73f
/* B00CFC 80089B5C 3718F080 */  ori   $t8, (0x073FF080 & 0xFFFF) # ori $t8, $t8, 0xf080
/* B00D00 80089B60 AC590004 */  sw    $t9, 4($v0)
/* B00D04 80089B64 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* B00D08 80089B68 3C0FF300 */  lui   $t7, 0xf300
/* B00D0C 80089B6C 3C078016 */  lui   $a3, %hi(gGameInfo) # $a3, 0x8016
/* B00D10 80089B70 24490008 */  addiu $t1, $v0, 8
/* B00D14 80089B74 AD0902B0 */  sw    $t1, 0x2b0($t0)
/* B00D18 80089B78 AC4B0004 */  sw    $t3, 4($v0)
/* B00D1C 80089B7C AC4A0000 */  sw    $t2, ($v0)
/* B00D20 80089B80 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* B00D24 80089B84 3C09E700 */  lui   $t1, 0xe700
/* B00D28 80089B88 3C0BF518 */  lui   $t3, (0xF5181000 >> 16) # lui $t3, 0xf518
/* B00D2C 80089B8C 244C0008 */  addiu $t4, $v0, 8
/* B00D30 80089B90 AD0C02B0 */  sw    $t4, 0x2b0($t0)
/* B00D34 80089B94 AC400004 */  sw    $zero, 4($v0)
/* B00D38 80089B98 AC4D0000 */  sw    $t5, ($v0)
/* B00D3C 80089B9C 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* B00D40 80089BA0 356B1000 */  ori   $t3, (0xF5181000 & 0xFFFF) # ori $t3, $t3, 0x1000
/* B00D44 80089BA4 3C0DF200 */  lui   $t5, 0xf200
/* B00D48 80089BA8 244E0008 */  addiu $t6, $v0, 8
/* B00D4C 80089BAC AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* B00D50 80089BB0 AC580004 */  sw    $t8, 4($v0)
/* B00D54 80089BB4 AC4F0000 */  sw    $t7, ($v0)
/* B00D58 80089BB8 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* B00D5C 80089BBC 3C0E0007 */  lui   $t6, (0x0007C07C >> 16) # lui $t6, 7
/* B00D60 80089BC0 35CEC07C */  ori   $t6, (0x0007C07C & 0xFFFF) # ori $t6, $t6, 0xc07c
/* B00D64 80089BC4 24590008 */  addiu $t9, $v0, 8
/* B00D68 80089BC8 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* B00D6C 80089BCC AC400004 */  sw    $zero, 4($v0)
/* B00D70 80089BD0 AC490000 */  sw    $t1, ($v0)
/* B00D74 80089BD4 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* B00D78 80089BD8 24E7FA90 */  addiu $a3, %lo(gGameInfo) # addiu $a3, $a3, -0x570
/* B00D7C 80089BDC 3C01E400 */  lui   $at, 0xe400
/* B00D80 80089BE0 244A0008 */  addiu $t2, $v0, 8
/* B00D84 80089BE4 AD0A02B0 */  sw    $t2, 0x2b0($t0)
/* B00D88 80089BE8 AC400004 */  sw    $zero, 4($v0)
/* B00D8C 80089BEC AC4B0000 */  sw    $t3, ($v0)
/* B00D90 80089BF0 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* B00D94 80089BF4 244C0008 */  addiu $t4, $v0, 8
/* B00D98 80089BF8 AD0C02B0 */  sw    $t4, 0x2b0($t0)
/* B00D9C 80089BFC AC4E0004 */  sw    $t6, 4($v0)
/* B00DA0 80089C00 AC4D0000 */  sw    $t5, ($v0)
/* B00DA4 80089C04 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* B00DA8 80089C08 244F0008 */  addiu $t7, $v0, 8
/* B00DAC 80089C0C AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* B00DB0 80089C10 87A6006A */  lh    $a2, 0x6a($sp)
/* B00DB4 80089C14 8CF80000 */  lw    $t8, ($a3)
/* B00DB8 80089C18 00063040 */  sll   $a2, $a2, 1
/* B00DBC 80089C1C 03061821 */  addu  $v1, $t8, $a2
/* B00DC0 80089C20 84650FAC */  lh    $a1, 0xfac($v1)
/* B00DC4 80089C24 84790840 */  lh    $t9, 0x840($v1)
/* B00DC8 80089C28 846D0838 */  lh    $t5, 0x838($v1)
/* B00DCC 80089C2C 00B94821 */  addu  $t1, $a1, $t9
/* B00DD0 80089C30 01A57021 */  addu  $t6, $t5, $a1
/* B00DD4 80089C34 000E7880 */  sll   $t7, $t6, 2
/* B00DD8 80089C38 00095080 */  sll   $t2, $t1, 2
/* B00DDC 80089C3C 314B0FFF */  andi  $t3, $t2, 0xfff
/* B00DE0 80089C40 31F80FFF */  andi  $t8, $t7, 0xfff
/* B00DE4 80089C44 0018CB00 */  sll   $t9, $t8, 0xc
/* B00DE8 80089C48 01616025 */  or    $t4, $t3, $at
/* B00DEC 80089C4C 01994825 */  or    $t1, $t4, $t9
/* B00DF0 80089C50 AC490000 */  sw    $t1, ($v0)
/* B00DF4 80089C54 8CEA0000 */  lw    $t2, ($a3)
/* B00DF8 80089C58 01461821 */  addu  $v1, $t2, $a2
/* B00DFC 80089C5C 846F0838 */  lh    $t7, 0x838($v1)
/* B00E00 80089C60 846B0840 */  lh    $t3, 0x840($v1)
/* B00E04 80089C64 000FC080 */  sll   $t8, $t7, 2
/* B00E08 80089C68 330C0FFF */  andi  $t4, $t8, 0xfff
/* B00E0C 80089C6C 000B6880 */  sll   $t5, $t3, 2
/* B00E10 80089C70 31AE0FFF */  andi  $t6, $t5, 0xfff
/* B00E14 80089C74 000CCB00 */  sll   $t9, $t4, 0xc
/* B00E18 80089C78 01D94825 */  or    $t1, $t6, $t9
/* B00E1C 80089C7C AC490004 */  sw    $t1, 4($v0)
/* B00E20 80089C80 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* B00E24 80089C84 3C0BE100 */  lui   $t3, 0xe100
/* B00E28 80089C88 3C0FF100 */  lui   $t7, 0xf100
/* B00E2C 80089C8C 244A0008 */  addiu $t2, $v0, 8
/* B00E30 80089C90 AD0A02B0 */  sw    $t2, 0x2b0($t0)
/* B00E34 80089C94 AC400004 */  sw    $zero, 4($v0)
/* B00E38 80089C98 AC4B0000 */  sw    $t3, ($v0)
/* B00E3C 80089C9C 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* B00E40 80089CA0 244D0008 */  addiu $t5, $v0, 8
/* B00E44 80089CA4 AD0D02B0 */  sw    $t5, 0x2b0($t0)
/* B00E48 80089CA8 AC4F0000 */  sw    $t7, ($v0)
/* B00E4C 80089CAC 8CF80000 */  lw    $t8, ($a3)
/* B00E50 80089CB0 24070C16 */  li    $a3, 3094
/* B00E54 80089CB4 03066021 */  addu  $t4, $t8, $a2
/* B00E58 80089CB8 85840848 */  lh    $a0, 0x848($t4)
/* B00E5C 80089CBC 3C068014 */  lui   $a2, %hi(D_8013E314) # $a2, 0x8014
/* B00E60 80089CC0 24C6E314 */  addiu $a2, %lo(D_8013E314) # addiu $a2, $a2, -0x1cec
/* B00E64 80089CC4 00042040 */  sll   $a0, $a0, 1
/* B00E68 80089CC8 3084FFFF */  andi  $a0, $a0, 0xffff
/* B00E6C 80089CCC 00047400 */  sll   $t6, $a0, 0x10
/* B00E70 80089CD0 008EC825 */  or    $t9, $a0, $t6
/* B00E74 80089CD4 AC590004 */  sw    $t9, 4($v0)
/* B00E78 80089CD8 8FA90060 */  lw    $t1, 0x60($sp)
/* B00E7C 80089CDC 27A4004C */  addiu $a0, $sp, 0x4c
/* B00E80 80089CE0 0C031AD5 */  jal   func_800C6B54
/* B00E84 80089CE4 8D250000 */   lw    $a1, ($t1)
/* B00E88 80089CE8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B00E8C 80089CEC 27BD0060 */  addiu $sp, $sp, 0x60
/* B00E90 80089CF0 03E00008 */  jr    $ra
/* B00E94 80089CF4 00000000 */   nop   

