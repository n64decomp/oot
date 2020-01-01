glabel func_8005B93C
/* AD2ADC 8005B93C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD2AE0 8005B940 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD2AE4 8005B944 AFB00018 */  sw    $s0, 0x18($sp)
/* AD2AE8 8005B948 AFA40020 */  sw    $a0, 0x20($sp)
/* AD2AEC 8005B94C 90CE0000 */  lbu   $t6, ($a2)
/* AD2AF0 8005B950 00C08025 */  move  $s0, $a2
/* AD2AF4 8005B954 24C60004 */  addiu $a2, $a2, 4
/* AD2AF8 8005B958 A0AE0014 */  sb    $t6, 0x14($a1)
/* AD2AFC 8005B95C AFA50024 */  sw    $a1, 0x24($sp)
/* AD2B00 8005B960 0C016DFD */  jal   func_8005B7F4
/* AD2B04 8005B964 8FA40020 */   lw    $a0, 0x20($sp)
/* AD2B08 8005B968 8FA70024 */  lw    $a3, 0x24($sp)
/* AD2B0C 8005B96C 8FA40020 */  lw    $a0, 0x20($sp)
/* AD2B10 8005B970 2606000C */  addiu $a2, $s0, 0xc
/* AD2B14 8005B974 0C016E18 */  jal   func_8005B860
/* AD2B18 8005B978 24E50008 */   addiu $a1, $a3, 8
/* AD2B1C 8005B97C 8FA70024 */  lw    $a3, 0x24($sp)
/* AD2B20 8005B980 920F0014 */  lbu   $t7, 0x14($s0)
/* AD2B24 8005B984 24020001 */  li    $v0, 1
/* AD2B28 8005B988 A0EF0015 */  sb    $t7, 0x15($a3)
/* AD2B2C 8005B98C 92180015 */  lbu   $t8, 0x15($s0)
/* AD2B30 8005B990 A0F80016 */  sb    $t8, 0x16($a3)
/* AD2B34 8005B994 92190016 */  lbu   $t9, 0x16($s0)
/* AD2B38 8005B998 A0F90017 */  sb    $t9, 0x17($a3)
/* AD2B3C 8005B99C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD2B40 8005B9A0 8FB00018 */  lw    $s0, 0x18($sp)
/* AD2B44 8005B9A4 27BD0020 */  addiu $sp, $sp, 0x20
/* AD2B48 8005B9A8 03E00008 */  jr    $ra
/* AD2B4C 8005B9AC 00000000 */   nop   

