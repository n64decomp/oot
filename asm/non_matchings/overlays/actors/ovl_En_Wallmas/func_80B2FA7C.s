glabel func_80B2FA7C
/* 0055C 80B2FA7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00560 80B2FA80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00564 80B2FA84 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00568 80B2FA88 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0056C 80B2FA8C 24A50EA4 */  addiu   $a1, $a1, 0x0EA4           ## $a1 = 06000EA4
/* 00570 80B2FA90 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00574 80B2FA94 0C02947A */  jal     func_800A51E8              
/* 00578 80B2FA98 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0057C 80B2FA9C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00580 80B2FAA0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00584 80B2FAA4 3C0F80B3 */  lui     $t7, %hi(func_80B30238)    ## $t7 = 80B30000
/* 00588 80B2FAA8 84CE00B6 */  lh      $t6, 0x00B6($a2)           ## 000000B6
/* 0058C 80B2FAAC 25EF0238 */  addiu   $t7, $t7, %lo(func_80B30238) ## $t7 = 80B30238
/* 00590 80B2FAB0 ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 00594 80B2FAB4 E4C00068 */  swc1    $f0, 0x0068($a2)           ## 00000068
/* 00598 80B2FAB8 E4C00060 */  swc1    $f0, 0x0060($a2)           ## 00000060
/* 0059C 80B2FABC A4CE0032 */  sh      $t6, 0x0032($a2)           ## 00000032
/* 005A0 80B2FAC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005A4 80B2FAC4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005A8 80B2FAC8 03E00008 */  jr      $ra                        
/* 005AC 80B2FACC 00000000 */  nop


