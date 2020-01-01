glabel func_8005B9E8
/* AD2B88 8005B9E8 AFA40000 */  sw    $a0, ($sp)
/* AD2B8C 8005B9EC 90AE0016 */  lbu   $t6, 0x16($a1)
/* AD2B90 8005B9F0 A4A00012 */  sh    $zero, 0x12($a1)
/* AD2B94 8005B9F4 84A20012 */  lh    $v0, 0x12($a1)
/* AD2B98 8005B9F8 31D8FFFD */  andi  $t8, $t6, 0xfffd
/* AD2B9C 8005B9FC A0B80016 */  sb    $t8, 0x16($a1)
/* AD2BA0 8005BA00 3319FF7F */  andi  $t9, $t8, 0xff7f
/* AD2BA4 8005BA04 A0B90016 */  sb    $t9, 0x16($a1)
/* AD2BA8 8005BA08 ACA0001C */  sw    $zero, 0x1c($a1)
/* AD2BAC 8005BA0C ACA00024 */  sw    $zero, 0x24($a1)
/* AD2BB0 8005BA10 A4A20010 */  sh    $v0, 0x10($a1)
/* AD2BB4 8005BA14 03E00008 */  jr    $ra
/* AD2BB8 8005BA18 A4A2000E */   sh    $v0, 0xe($a1)

