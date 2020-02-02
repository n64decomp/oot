glabel func_8086DC30
/* 00C20 8086DC30 3C0E8087 */  lui     $t6, %hi(func_8086DC48)    ## $t6 = 80870000
/* 00C24 8086DC34 25CEDC48 */  addiu   $t6, $t6, %lo(func_8086DC48) ## $t6 = 8086DC48
/* 00C28 8086DC38 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00C2C 8086DC3C AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00C30 8086DC40 03E00008 */  jr      $ra                        
/* 00C34 8086DC44 A48F01DA */  sh      $t7, 0x01DA($a0)           ## 000001DA


