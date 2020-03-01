glabel func_800D2BD0
/* B49D70 800D2BD0 3C014780 */  li    $at, 0x47800000 # 0.000000
/* B49D74 800D2BD4 44810000 */  mtc1  $at, $f0
/* B49D78 800D2BD8 44856000 */  mtc1  $a1, $f12
/* B49D7C 800D2BDC 44867000 */  mtc1  $a2, $f14
/* B49D80 800D2BE0 AFA7000C */  sw    $a3, 0xc($sp)
/* B49D84 800D2BE4 46006102 */  mul.s $f4, $f12, $f0
/* B49D88 800D2BE8 00000000 */  nop   
/* B49D8C 800D2BEC 46007202 */  mul.s $f8, $f14, $f0
/* B49D90 800D2BF0 4600218D */  trunc.w.s $f6, $f4
/* B49D94 800D2BF4 4600428D */  trunc.w.s $f10, $f8
/* B49D98 800D2BF8 44193000 */  mfc1  $t9, $f6
/* B49D9C 800D2BFC 440C5000 */  mfc1  $t4, $f10
/* B49DA0 800D2C00 0019C402 */  srl   $t8, $t9, 0x10
/* B49DA4 800D2C04 A4980000 */  sh    $t8, ($a0)
/* B49DA8 800D2C08 000C5C02 */  srl   $t3, $t4, 0x10
/* B49DAC 800D2C0C A48B000A */  sh    $t3, 0xa($a0)
/* B49DB0 800D2C10 A4990020 */  sh    $t9, 0x20($a0)
/* B49DB4 800D2C14 A48C002A */  sh    $t4, 0x2a($a0)
/* B49DB8 800D2C18 C7B0000C */  lwc1  $f16, 0xc($sp)
/* B49DBC 800D2C1C 46008482 */  mul.s $f18, $f16, $f0
/* B49DC0 800D2C20 4600910D */  trunc.w.s $f4, $f18
/* B49DC4 800D2C24 44182000 */  mfc1  $t8, $f4
/* B49DC8 800D2C28 00000000 */  nop   
/* B49DCC 800D2C2C 00187C02 */  srl   $t7, $t8, 0x10
/* B49DD0 800D2C30 A48F0014 */  sh    $t7, 0x14($a0)
/* B49DD4 800D2C34 A4980034 */  sh    $t8, 0x34($a0)
/* B49DD8 800D2C38 C7A60010 */  lwc1  $f6, 0x10($sp)
/* B49DDC 800D2C3C 46003202 */  mul.s $f8, $f6, $f0
/* B49DE0 800D2C40 4600428D */  trunc.w.s $f10, $f8
/* B49DE4 800D2C44 440B5000 */  mfc1  $t3, $f10
/* B49DE8 800D2C48 00000000 */  nop   
/* B49DEC 800D2C4C 000B5402 */  srl   $t2, $t3, 0x10
/* B49DF0 800D2C50 A48A0018 */  sh    $t2, 0x18($a0)
/* B49DF4 800D2C54 A48B0038 */  sh    $t3, 0x38($a0)
/* B49DF8 800D2C58 C7B00014 */  lwc1  $f16, 0x14($sp)
/* B49DFC 800D2C5C 240B0001 */  li    $t3, 1
/* B49E00 800D2C60 46008482 */  mul.s $f18, $f16, $f0
/* B49E04 800D2C64 4600910D */  trunc.w.s $f4, $f18
/* B49E08 800D2C68 440F2000 */  mfc1  $t7, $f4
/* B49E0C 800D2C6C 00000000 */  nop   
/* B49E10 800D2C70 000F7402 */  srl   $t6, $t7, 0x10
/* B49E14 800D2C74 A48E001A */  sh    $t6, 0x1a($a0)
/* B49E18 800D2C78 A48F003A */  sh    $t7, 0x3a($a0)
/* B49E1C 800D2C7C C7A60018 */  lwc1  $f6, 0x18($sp)
/* B49E20 800D2C80 A4800002 */  sh    $zero, 2($a0)
/* B49E24 800D2C84 A4800004 */  sh    $zero, 4($a0)
/* B49E28 800D2C88 46003202 */  mul.s $f8, $f6, $f0
/* B49E2C 800D2C8C A4800006 */  sh    $zero, 6($a0)
/* B49E30 800D2C90 A4800008 */  sh    $zero, 8($a0)
/* B49E34 800D2C94 A480000C */  sh    $zero, 0xc($a0)
/* B49E38 800D2C98 A480000E */  sh    $zero, 0xe($a0)
/* B49E3C 800D2C9C A4800010 */  sh    $zero, 0x10($a0)
/* B49E40 800D2CA0 A4800012 */  sh    $zero, 0x12($a0)
/* B49E44 800D2CA4 4600428D */  trunc.w.s $f10, $f8
/* B49E48 800D2CA8 A4800016 */  sh    $zero, 0x16($a0)
/* B49E4C 800D2CAC A48B001E */  sh    $t3, 0x1e($a0)
/* B49E50 800D2CB0 A4800022 */  sh    $zero, 0x22($a0)
/* B49E54 800D2CB4 440A5000 */  mfc1  $t2, $f10
/* B49E58 800D2CB8 A4800024 */  sh    $zero, 0x24($a0)
/* B49E5C 800D2CBC A4800026 */  sh    $zero, 0x26($a0)
/* B49E60 800D2CC0 000A4C02 */  srl   $t1, $t2, 0x10
/* B49E64 800D2CC4 A489001C */  sh    $t1, 0x1c($a0)
/* B49E68 800D2CC8 A4800028 */  sh    $zero, 0x28($a0)
/* B49E6C 800D2CCC A480002C */  sh    $zero, 0x2c($a0)
/* B49E70 800D2CD0 A480002E */  sh    $zero, 0x2e($a0)
/* B49E74 800D2CD4 A4800030 */  sh    $zero, 0x30($a0)
/* B49E78 800D2CD8 A4800032 */  sh    $zero, 0x32($a0)
/* B49E7C 800D2CDC A4800036 */  sh    $zero, 0x36($a0)
/* B49E80 800D2CE0 A480003E */  sh    $zero, 0x3e($a0)
/* B49E84 800D2CE4 03E00008 */  jr    $ra
/* B49E88 800D2CE8 A48A003C */   sh    $t2, 0x3c($a0)
