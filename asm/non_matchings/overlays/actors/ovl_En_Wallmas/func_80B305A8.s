glabel func_80B305A8
/* 01088 80B305A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0108C 80B305AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01090 80B305B0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01094 80B305B4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01098 80B305B8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0109C 80B305BC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 010A0 80B305C0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 010A4 80B305C4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 010A8 80B305C8 84C20194 */  lh      $v0, 0x0194($a2)           ## 00000194
/* 010AC 80B305CC 10400003 */  beq     $v0, $zero, .L80B305DC     
/* 010B0 80B305D0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 010B4 80B305D4 A4CE0194 */  sh      $t6, 0x0194($a2)           ## 00000194
/* 010B8 80B305D8 84C20194 */  lh      $v0, 0x0194($a2)           ## 00000194
.L80B305DC:
/* 010BC 80B305DC 5440000C */  bnel    $v0, $zero, .L80B30610     
/* 010C0 80B305E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 010C4 80B305E4 90CF00AF */  lbu     $t7, 0x00AF($a2)           ## 000000AF
/* 010C8 80B305E8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 010CC 80B305EC 15E00005 */  bne     $t7, $zero, .L80B30604     
/* 010D0 80B305F0 00000000 */  nop
/* 010D4 80B305F4 0C2CBEB4 */  jal     func_80B2FAD0              
/* 010D8 80B305F8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 010DC 80B305FC 10000004 */  beq     $zero, $zero, .L80B30610   
/* 010E0 80B30600 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B30604:
/* 010E4 80B30604 0C2CBE4F */  jal     func_80B2F93C              
/* 010E8 80B30608 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 010EC 80B3060C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B30610:
/* 010F0 80B30610 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010F4 80B30614 03E00008 */  jr      $ra                        
/* 010F8 80B30618 00000000 */  nop


