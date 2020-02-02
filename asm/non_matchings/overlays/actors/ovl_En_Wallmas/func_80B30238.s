glabel func_80B30238
/* 00D18 80B30238 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D1C 80B3023C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D20 80B30240 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D24 80B30244 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D28 80B30248 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D2C 80B3024C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D30 80B30250 50400004 */  beql    $v0, $zero, .L80B30264     
/* 00D34 80B30254 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D38 80B30258 0C2CBE4F */  jal     func_80B2F93C              
/* 00D3C 80B3025C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D40 80B30260 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B30264:
/* 00D44 80B30264 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D48 80B30268 03E00008 */  jr      $ra                        
/* 00D4C 80B3026C 00000000 */  nop


