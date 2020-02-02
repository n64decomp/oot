glabel func_80B92DC8
/* 002C8 80B92DC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002CC 80B92DCC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002D0 80B92DD0 8C820164 */  lw      $v0, 0x0164($a0)           ## 00000164
/* 002D4 80B92DD4 50400005 */  beql    $v0, $zero, .L80B92DEC     
/* 002D8 80B92DD8 908E0160 */  lbu     $t6, 0x0160($a0)           ## 00000160
/* 002DC 80B92DDC 0040F809 */  jalr    $ra, $v0                   
/* 002E0 80B92DE0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002E4 80B92DE4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 002E8 80B92DE8 908E0160 */  lbu     $t6, 0x0160($a0)           ## 00000160
.L80B92DEC:
/* 002EC 80B92DEC A08E0170 */  sb      $t6, 0x0170($a0)           ## 00000170
/* 002F0 80B92DF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002F4 80B92DF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002F8 80B92DF8 03E00008 */  jr      $ra                        
/* 002FC 80B92DFC 00000000 */  nop


