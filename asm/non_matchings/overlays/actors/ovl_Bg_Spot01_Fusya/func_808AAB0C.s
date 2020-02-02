glabel func_808AAB0C
/* 0014C 808AAB0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00150 808AAB10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00154 808AAB14 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00158 808AAB18 0320F809 */  jalr    $ra, $t9                   
/* 0015C 808AAB1C 00000000 */  nop
/* 00160 808AAB20 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00164 808AAB24 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00168 808AAB28 03E00008 */  jr      $ra                        
/* 0016C 808AAB2C 00000000 */  nop


