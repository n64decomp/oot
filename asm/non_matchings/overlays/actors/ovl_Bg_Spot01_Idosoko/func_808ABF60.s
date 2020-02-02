glabel func_808ABF60
/* 000E0 808ABF60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000E4 808ABF64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000E8 808ABF68 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 000EC 808ABF6C 0320F809 */  jalr    $ra, $t9                   
/* 000F0 808ABF70 00000000 */  nop
/* 000F4 808ABF74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000F8 808ABF78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000FC 808ABF7C 03E00008 */  jr      $ra                        
/* 00100 808ABF80 00000000 */  nop


