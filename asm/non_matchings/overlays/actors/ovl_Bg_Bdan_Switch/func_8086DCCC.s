glabel func_8086DCCC
/* 00CBC 8086DCCC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00CC0 8086DCD0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00CC4 8086DCD4 3C0E8087 */  lui     $t6, %hi(func_8086DCE8)    ## $t6 = 80870000
/* 00CC8 8086DCD8 25CEDCE8 */  addiu   $t6, $t6, %lo(func_8086DCE8) ## $t6 = 8086DCE8
/* 00CCC 8086DCDC AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00CD0 8086DCE0 03E00008 */  jr      $ra                        
/* 00CD4 8086DCE4 E48401C8 */  swc1    $f4, 0x01C8($a0)           ## 000001C8


