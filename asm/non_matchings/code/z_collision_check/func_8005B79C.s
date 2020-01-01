glabel func_8005B79C
/* AD293C 8005B79C AFA40000 */  sw    $a0, ($sp)
/* AD2940 8005B7A0 90AE0012 */  lbu   $t6, 0x12($a1)
/* AD2944 8005B7A4 90B80013 */  lbu   $t8, 0x13($a1)
/* AD2948 8005B7A8 ACA0000C */  sw    $zero, 0xc($a1)
/* AD294C 8005B7AC 31CFFFFD */  andi  $t7, $t6, 0xfffd
/* AD2950 8005B7B0 3319FFFE */  andi  $t9, $t8, 0xfffe
/* AD2954 8005B7B4 A0AF0012 */  sb    $t7, 0x12($a1)
/* AD2958 8005B7B8 03E00008 */  jr    $ra
/* AD295C 8005B7BC A0B90013 */   sb    $t9, 0x13($a1)

