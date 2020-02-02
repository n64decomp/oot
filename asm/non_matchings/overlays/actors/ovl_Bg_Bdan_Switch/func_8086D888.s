glabel func_8086D888
/* 00878 8086D888 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0087C 8086D88C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00880 8086D890 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00884 8086D894 0C010D5B */  jal     func_8004356C              
/* 00888 8086D898 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0088C 8086D89C 50400004 */  beql    $v0, $zero, .L8086D8B0     
/* 00890 8086D8A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00894 8086D8A4 0C21B62F */  jal     func_8086D8BC              
/* 00898 8086D8A8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0089C 8086D8AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086D8B0:
/* 008A0 8086D8B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008A4 8086D8B4 03E00008 */  jr      $ra                        
/* 008A8 8086D8B8 00000000 */  nop


