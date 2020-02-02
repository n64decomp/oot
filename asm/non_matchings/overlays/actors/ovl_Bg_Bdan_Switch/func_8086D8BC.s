glabel func_8086D8BC
/* 008AC 8086D8BC 3C0E8087 */  lui     $t6, %hi(func_8086D8CC)    ## $t6 = 80870000
/* 008B0 8086D8C0 25CED8CC */  addiu   $t6, $t6, %lo(func_8086D8CC) ## $t6 = 8086D8CC
/* 008B4 8086D8C4 03E00008 */  jr      $ra                        
/* 008B8 8086D8C8 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164


