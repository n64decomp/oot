glabel func_80B2FF44
/* 00A24 80B2FF44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A28 80B2FF48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A2C 80B2FF4C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A30 80B2FF50 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00A34 80B2FF54 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A38 80B2FF58 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A3C 80B2FF5C 50400004 */  beql    $v0, $zero, .L80B2FF70     
/* 00A40 80B2FF60 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00A44 80B2FF64 0C2CBE29 */  jal     func_80B2F8A4              
/* 00A48 80B2FF68 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A4C 80B2FF6C 8FAE0018 */  lw      $t6, 0x0018($sp)           
.L80B2FF70:
/* 00A50 80B2FF70 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00A54 80B2FF74 240600B6 */  addiu   $a2, $zero, 0x00B6         ## $a2 = 000000B6
/* 00A58 80B2FF78 85C5008A */  lh      $a1, 0x008A($t6)           ## 0000008A
/* 00A5C 80B2FF7C 25C40032 */  addiu   $a0, $t6, 0x0032           ## $a0 = 00000032
/* 00A60 80B2FF80 00A12821 */  addu    $a1, $a1, $at              
/* 00A64 80B2FF84 00052C00 */  sll     $a1, $a1, 16               
/* 00A68 80B2FF88 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00A6C 80B2FF8C 00052C03 */  sra     $a1, $a1, 16               
/* 00A70 80B2FF90 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A74 80B2FF94 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A78 80B2FF98 03E00008 */  jr      $ra                        
/* 00A7C 80B2FF9C 00000000 */  nop


