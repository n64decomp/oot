glabel BgHidanFslift_Destroy
/* 00144 80886F84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00148 80886F88 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0014C 80886F8C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00150 80886F90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00154 80886F94 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00158 80886F98 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0015C 80886F9C 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00160 80886FA0 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00164 80886FA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00168 80886FA8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0016C 80886FAC 03E00008 */  jr      $ra                        
/* 00170 80886FB0 00000000 */  nop


