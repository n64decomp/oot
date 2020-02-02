glabel func_8097CEEC
/* 0067C 8097CEEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00680 8097CEF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00684 8097CEF4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00688 8097CEF8 0C25F36C */  jal     func_8097CDB0              
/* 0068C 8097CEFC 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00690 8097CF00 10400003 */  beq     $v0, $zero, .L8097CF10     
/* 00694 8097CF04 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00698 8097CF08 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 0069C 8097CF0C ADEE0194 */  sw      $t6, 0x0194($t7)           ## 00000194
.L8097CF10:
/* 006A0 8097CF10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006A4 8097CF14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006A8 8097CF18 03E00008 */  jr      $ra                        
/* 006AC 8097CF1C 00000000 */  nop


