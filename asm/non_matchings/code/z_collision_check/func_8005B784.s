glabel func_8005B784
/* AD2924 8005B784 AFA40000 */  sw    $a0, ($sp)
/* AD2928 8005B788 90AE0011 */  lbu   $t6, 0x11($a1)
/* AD292C 8005B78C ACA00008 */  sw    $zero, 8($a1)
/* AD2930 8005B790 31CFFF7D */  andi  $t7, $t6, 0xff7d
/* AD2934 8005B794 03E00008 */  jr    $ra
/* AD2938 8005B798 A0AF0011 */   sb    $t7, 0x11($a1)

