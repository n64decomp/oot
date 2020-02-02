glabel func_8086DAB4
/* 00AA4 8086DAB4 3C0E8087 */  lui     $t6, %hi(func_8086DAC4)    ## $t6 = 80870000
/* 00AA8 8086DAB8 25CEDAC4 */  addiu   $t6, $t6, %lo(func_8086DAC4) ## $t6 = 8086DAC4
/* 00AAC 8086DABC 03E00008 */  jr      $ra                        
/* 00AB0 8086DAC0 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164


