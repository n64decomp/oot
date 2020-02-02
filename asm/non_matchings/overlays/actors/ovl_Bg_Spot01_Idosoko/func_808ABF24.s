glabel func_808ABF24
/* 000A4 808ABF24 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000A8 808ABF28 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000AC 808ABF2C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000B0 808ABF30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000B4 808ABF34 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000B8 808ABF38 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000BC 808ABF3C 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000C0 808ABF40 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000C4 808ABF44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000C8 808ABF48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000CC 808ABF4C 03E00008 */  jr      $ra                        
/* 000D0 808ABF50 00000000 */  nop


