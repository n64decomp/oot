glabel func_80B30054
/* 00B34 80B30054 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B38 80B30058 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B3C 80B3005C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B40 80B30060 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B44 80B30064 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00B48 80B30068 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00B4C 80B3006C 50400004 */  beql    $v0, $zero, .L80B30080     
/* 00B50 80B30070 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B54 80B30074 0C2CBE4F */  jal     func_80B2F93C              
/* 00B58 80B30078 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B5C 80B3007C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B30080:
/* 00B60 80B30080 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B64 80B30084 03E00008 */  jr      $ra                        
/* 00B68 80B30088 00000000 */  nop


