glabel func_800D2AE4
/* B49C84 800D2AE4 3C014780 */  li    $at, 0x47800000 # 0.000000
/* B49C88 800D2AE8 44810000 */  mtc1  $at, $f0
/* B49C8C 800D2AEC 44856000 */  mtc1  $a1, $f12
/* B49C90 800D2AF0 44867000 */  mtc1  $a2, $f14
/* B49C94 800D2AF4 AFA7000C */  sw    $a3, 0xc($sp)
/* B49C98 800D2AF8 46006102 */  mul.s $f4, $f12, $f0
/* B49C9C 800D2AFC 00000000 */  nop   
/* B49CA0 800D2B00 46007202 */  mul.s $f8, $f14, $f0
/* B49CA4 800D2B04 4600218D */  trunc.w.s $f6, $f4
/* B49CA8 800D2B08 4600428D */  trunc.w.s $f10, $f8
/* B49CAC 800D2B0C 44033000 */  mfc1  $v1, $f6
/* B49CB0 800D2B10 44095000 */  mfc1  $t1, $f10
/* B49CB4 800D2B14 00032C02 */  srl   $a1, $v1, 0x10
/* B49CB8 800D2B18 A4850000 */  sh    $a1, ($a0)
/* B49CBC 800D2B1C 0009CC02 */  srl   $t9, $t1, 0x10
/* B49CC0 800D2B20 A485000A */  sh    $a1, 0xa($a0)
/* B49CC4 800D2B24 A4850014 */  sh    $a1, 0x14($a0)
/* B49CC8 800D2B28 A4990018 */  sh    $t9, 0x18($a0)
/* B49CCC 800D2B2C A4830020 */  sh    $v1, 0x20($a0)
/* B49CD0 800D2B30 A483002A */  sh    $v1, 0x2a($a0)
/* B49CD4 800D2B34 A4830034 */  sh    $v1, 0x34($a0)
/* B49CD8 800D2B38 A4890038 */  sh    $t1, 0x38($a0)
/* B49CDC 800D2B3C C7B0000C */  lwc1  $f16, 0xc($sp)
/* B49CE0 800D2B40 24090001 */  li    $t1, 1
/* B49CE4 800D2B44 46008482 */  mul.s $f18, $f16, $f0
/* B49CE8 800D2B48 4600910D */  trunc.w.s $f4, $f18
/* B49CEC 800D2B4C 440D2000 */  mfc1  $t5, $f4
/* B49CF0 800D2B50 00000000 */  nop   
/* B49CF4 800D2B54 000D6402 */  srl   $t4, $t5, 0x10
/* B49CF8 800D2B58 A48C001A */  sh    $t4, 0x1a($a0)
/* B49CFC 800D2B5C A48D003A */  sh    $t5, 0x3a($a0)
/* B49D00 800D2B60 C7A60010 */  lwc1  $f6, 0x10($sp)
/* B49D04 800D2B64 A4800002 */  sh    $zero, 2($a0)
/* B49D08 800D2B68 A4800004 */  sh    $zero, 4($a0)
/* B49D0C 800D2B6C 46003202 */  mul.s $f8, $f6, $f0
/* B49D10 800D2B70 A4800006 */  sh    $zero, 6($a0)
/* B49D14 800D2B74 A4800008 */  sh    $zero, 8($a0)
/* B49D18 800D2B78 A480000C */  sh    $zero, 0xc($a0)
/* B49D1C 800D2B7C A480000E */  sh    $zero, 0xe($a0)
/* B49D20 800D2B80 A4800010 */  sh    $zero, 0x10($a0)
/* B49D24 800D2B84 A4800012 */  sh    $zero, 0x12($a0)
/* B49D28 800D2B88 4600428D */  trunc.w.s $f10, $f8
/* B49D2C 800D2B8C A4800016 */  sh    $zero, 0x16($a0)
/* B49D30 800D2B90 A489001E */  sh    $t1, 0x1e($a0)
/* B49D34 800D2B94 A4800022 */  sh    $zero, 0x22($a0)
/* B49D38 800D2B98 44195000 */  mfc1  $t9, $f10
/* B49D3C 800D2B9C A4800024 */  sh    $zero, 0x24($a0)
/* B49D40 800D2BA0 A4800026 */  sh    $zero, 0x26($a0)
/* B49D44 800D2BA4 0019C402 */  srl   $t8, $t9, 0x10
/* B49D48 800D2BA8 A498001C */  sh    $t8, 0x1c($a0)
/* B49D4C 800D2BAC A4800028 */  sh    $zero, 0x28($a0)
/* B49D50 800D2BB0 A480002C */  sh    $zero, 0x2c($a0)
/* B49D54 800D2BB4 A480002E */  sh    $zero, 0x2e($a0)
/* B49D58 800D2BB8 A4800030 */  sh    $zero, 0x30($a0)
/* B49D5C 800D2BBC A4800032 */  sh    $zero, 0x32($a0)
/* B49D60 800D2BC0 A4800036 */  sh    $zero, 0x36($a0)
/* B49D64 800D2BC4 A480003E */  sh    $zero, 0x3e($a0)
/* B49D68 800D2BC8 03E00008 */  jr    $ra
/* B49D6C 800D2BCC A499003C */   sh    $t9, 0x3c($a0)
