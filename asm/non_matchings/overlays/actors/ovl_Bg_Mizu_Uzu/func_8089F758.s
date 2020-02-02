glabel func_8089F758
/* 00078 8089F758 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0007C 8089F75C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00080 8089F760 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00084 8089F764 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00088 8089F768 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0008C 8089F76C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00090 8089F770 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00094 8089F774 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00098 8089F778 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0009C 8089F77C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000A0 8089F780 03E00008 */  jr      $ra                        
/* 000A4 8089F784 00000000 */  nop


