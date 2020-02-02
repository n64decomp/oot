glabel func_80B2F868
/* 00348 80B2F868 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0034C 80B2F86C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00350 80B2F870 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00354 80B2F874 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00358 80B2F878 24A5A054 */  addiu   $a1, $a1, 0xA054           ## $a1 = 0600A054
/* 0035C 80B2F87C 0C02947A */  jal     func_800A51E8              
/* 00360 80B2F880 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00364 80B2F884 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00368 80B2F888 3C0E80B3 */  lui     $t6, %hi(func_80B2FF44)    ## $t6 = 80B30000
/* 0036C 80B2F88C 25CEFF44 */  addiu   $t6, $t6, %lo(func_80B2FF44) ## $t6 = 80B2FF44
/* 00370 80B2F890 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 00374 80B2F894 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00378 80B2F898 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0037C 80B2F89C 03E00008 */  jr      $ra                        
/* 00380 80B2F8A0 00000000 */  nop


