glabel func_80B92C5C
/* 0015C 80B92C5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00160 80B92C60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00164 80B92C64 3C0580B9 */  lui     $a1, %hi(func_80B92C80)    ## $a1 = 80B90000
/* 00168 80B92C68 0C2E4AC0 */  jal     func_80B92B00              
/* 0016C 80B92C6C 24A52C80 */  addiu   $a1, $a1, %lo(func_80B92C80) ## $a1 = 80B92C80
/* 00170 80B92C70 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00174 80B92C74 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00178 80B92C78 03E00008 */  jr      $ra                        
/* 0017C 80B92C7C 00000000 */  nop


