glabel func_8097CD90
/* 00520 8097CD90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00524 8097CD94 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00528 8097CD98 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0052C 8097CD9C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00530 8097CDA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00534 8097CDA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00538 8097CDA8 03E00008 */  jr      $ra                        
/* 0053C 8097CDAC 00000000 */  nop


