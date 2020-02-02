glabel func_8086D7FC
/* 007EC 8086D7FC 3C0E8087 */  lui     $t6, %hi(func_8086D80C)    ## $t6 = 80870000
/* 007F0 8086D800 25CED80C */  addiu   $t6, $t6, %lo(func_8086D80C) ## $t6 = 8086D80C
/* 007F4 8086D804 03E00008 */  jr      $ra                        
/* 007F8 8086D808 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164


