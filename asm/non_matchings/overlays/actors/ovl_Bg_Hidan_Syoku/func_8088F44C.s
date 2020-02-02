glabel func_8088F44C
/* 0008C 8088F44C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00090 8088F450 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00094 8088F454 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00098 8088F458 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0009C 8088F45C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000A0 8088F460 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000A4 8088F464 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000A8 8088F468 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000AC 8088F46C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000B0 8088F470 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000B4 8088F474 03E00008 */  jr      $ra                        
/* 000B8 8088F478 00000000 */  nop


