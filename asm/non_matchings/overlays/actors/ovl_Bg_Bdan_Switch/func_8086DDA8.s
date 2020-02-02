glabel func_8086DDA8
/* 00D98 8086DDA8 3C0E8087 */  lui     $t6, %hi(func_8086DDC0)    ## $t6 = 80870000
/* 00D9C 8086DDAC 25CEDDC0 */  addiu   $t6, $t6, %lo(func_8086DDC0) ## $t6 = 8086DDC0
/* 00DA0 8086DDB0 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00DA4 8086DDB4 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00DA8 8086DDB8 03E00008 */  jr      $ra                        
/* 00DAC 8086DDBC A48F01DA */  sh      $t7, 0x01DA($a0)           ## 000001DA


