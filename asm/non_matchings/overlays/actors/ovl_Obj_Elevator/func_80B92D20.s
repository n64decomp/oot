glabel func_80B92D20
/* 00220 80B92D20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00224 80B92D24 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00228 80B92D28 3C0580B9 */  lui     $a1, %hi(func_80B92D44)    ## $a1 = 80B90000
/* 0022C 80B92D2C 0C2E4AC0 */  jal     func_80B92B00              
/* 00230 80B92D30 24A52D44 */  addiu   $a1, $a1, %lo(func_80B92D44) ## $a1 = 80B92D44
/* 00234 80B92D34 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00238 80B92D38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0023C 80B92D3C 03E00008 */  jr      $ra                        
/* 00240 80B92D40 00000000 */  nop


