glabel EnPubox_Destroy
/* 00138 80AE21F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0013C 80AE21FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00140 80AE2200 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00144 80AE2204 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00148 80AE2208 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0014C 80AE220C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00150 80AE2210 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00154 80AE2214 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00158 80AE2218 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0015C 80AE221C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00160 80AE2220 03E00008 */  jr      $ra                        
/* 00164 80AE2224 00000000 */  nop


