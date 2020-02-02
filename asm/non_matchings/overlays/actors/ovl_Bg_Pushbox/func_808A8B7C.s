glabel func_808A8B7C
/* 0009C 808A8B7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000A0 808A8B80 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000A4 808A8B84 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000A8 808A8B88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000AC 808A8B8C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000B0 808A8B90 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000B4 808A8B94 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000B8 808A8B98 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000BC 808A8B9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000C0 808A8BA0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000C4 808A8BA4 03E00008 */  jr      $ra                        
/* 000C8 808A8BA8 00000000 */  nop


