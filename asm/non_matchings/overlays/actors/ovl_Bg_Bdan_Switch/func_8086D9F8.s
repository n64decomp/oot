glabel func_8086D9F8
/* 009E8 8086D9F8 3C018087 */  lui     $at, %hi(D_8086E25C)       ## $at = 80870000
/* 009EC 8086D9FC C424E25C */  lwc1    $f4, %lo(D_8086E25C)($at)  
/* 009F0 8086DA00 3C0E8087 */  lui     $t6, %hi(func_8086DA1C)    ## $t6 = 80870000
/* 009F4 8086DA04 25CEDA1C */  addiu   $t6, $t6, %lo(func_8086DA1C) ## $t6 = 8086DA1C
/* 009F8 8086DA08 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 009FC 8086DA0C AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00A00 8086DA10 A48F01D8 */  sh      $t7, 0x01D8($a0)           ## 000001D8
/* 00A04 8086DA14 03E00008 */  jr      $ra                        
/* 00A08 8086DA18 E48401C8 */  swc1    $f4, 0x01C8($a0)           ## 000001C8


