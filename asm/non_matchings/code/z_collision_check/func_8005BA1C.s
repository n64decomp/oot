glabel func_8005BA1C
/* AD2BBC 8005BA1C AFA40000 */  sw    $a0, ($sp)
/* AD2BC0 8005BA20 90AE0017 */  lbu   $t6, 0x17($a1)
/* AD2BC4 8005BA24 31CFFFFD */  andi  $t7, $t6, 0xfffd
/* AD2BC8 8005BA28 03E00008 */  jr    $ra
/* AD2BCC 8005BA2C A0AF0017 */   sb    $t7, 0x17($a1)

