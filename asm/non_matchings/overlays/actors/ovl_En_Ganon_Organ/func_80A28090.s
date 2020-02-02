glabel func_80A28090
/* 00090 80A28090 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00094 80A28094 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00098 80A28098 0C031A73 */  jal     Graph_Alloc
              
/* 0009C 80A2809C 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 000A0 80A280A0 3C0EDF00 */  lui     $t6, 0xDF00                ## $t6 = DF000000
/* 000A4 80A280A4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 000A8 80A280A8 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 000AC 80A280AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000B0 80A280B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000B4 80A280B4 03E00008 */  jr      $ra                        
/* 000B8 80A280B8 00000000 */  nop


