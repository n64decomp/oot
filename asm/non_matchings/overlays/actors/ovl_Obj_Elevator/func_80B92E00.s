glabel func_80B92E00
/* 00300 80B92E00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00304 80B92E04 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00308 80B92E08 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0030C 80B92E0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00310 80B92E10 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00314 80B92E14 0C00D498 */  jal     Draw_DListOpa
              
/* 00318 80B92E18 24A50180 */  addiu   $a1, $a1, 0x0180           ## $a1 = 06000180
/* 0031C 80B92E1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00320 80B92E20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00324 80B92E24 03E00008 */  jr      $ra                        
/* 00328 80B92E28 00000000 */  nop
/* 0032C 80B92E2C 00000000 */  nop

