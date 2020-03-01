glabel BgMjin_Destroy
/* 000A0 808A0820 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000A4 808A0824 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000A8 808A0828 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000AC 808A082C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000B0 808A0830 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000B4 808A0834 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000B8 808A0838 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000BC 808A083C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000C0 808A0840 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000C4 808A0844 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000C8 808A0848 03E00008 */  jr      $ra                        
/* 000CC 808A084C 00000000 */  nop


