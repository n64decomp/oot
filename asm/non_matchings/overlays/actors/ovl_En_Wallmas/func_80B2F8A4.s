glabel func_80B2F8A4
/* 00384 80B2F8A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00388 80B2F8A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0038C 80B2F8AC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00390 80B2F8B0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00394 80B2F8B4 24A541F4 */  addiu   $a1, $a1, 0x41F4           ## $a1 = 060041F4
/* 00398 80B2F8B8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0039C 80B2F8BC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 003A0 80B2F8C0 0C0294A7 */  jal     func_800A529C              
/* 003A4 80B2F8C4 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 003A8 80B2F8C8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 003AC 80B2F8CC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 003B0 80B2F8D0 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 003B4 80B2F8D4 3C0E80B3 */  lui     $t6, %hi(func_80B2FFA0)    ## $t6 = 80B30000
/* 003B8 80B2F8D8 25CEFFA0 */  addiu   $t6, $t6, %lo(func_80B2FFA0) ## $t6 = 80B2FFA0
/* 003BC 80B2F8DC ACEE0190 */  sw      $t6, 0x0190($a3)           ## 00000190
/* 003C0 80B2F8E0 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 003C4 80B2F8E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003C8 80B2F8E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003CC 80B2F8EC 03E00008 */  jr      $ra                        
/* 003D0 80B2F8F0 00000000 */  nop


