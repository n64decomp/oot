glabel func_8089338C
/* 000CC 8089338C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000D0 80893390 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000D4 80893394 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000D8 80893398 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000DC 8089339C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000E0 808933A0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000E4 808933A4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000E8 808933A8 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000EC 808933AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000F0 808933B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000F4 808933B4 03E00008 */  jr      $ra                        
/* 000F8 808933B8 00000000 */  nop


