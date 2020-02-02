glabel func_80B2FF0C
/* 009EC 80B2FF0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009F0 80B2FF10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009F4 80B2FF14 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 009F8 80B2FF18 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 009FC 80B2FF1C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A00 80B2FF20 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A04 80B2FF24 50400004 */  beql    $v0, $zero, .L80B2FF38     
/* 00A08 80B2FF28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A0C 80B2FF2C 0C2CBE1A */  jal     func_80B2F868              
/* 00A10 80B2FF30 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A14 80B2FF34 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B2FF38:
/* 00A18 80B2FF38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A1C 80B2FF3C 03E00008 */  jr      $ra                        
/* 00A20 80B2FF40 00000000 */  nop


