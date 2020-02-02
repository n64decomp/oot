glabel func_80AF8C78
/* 00008 80AF8C78 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0000C 80AF8C7C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00010 80AF8C80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 80AF8C84 3C0580B0 */  lui     $a1, %hi(func_80AF8CAC)    ## $a1 = 80B00000
/* 00018 80AF8C88 0C2BE31C */  jal     func_80AF8C70              
/* 0001C 80AF8C8C 24A58CAC */  addiu   $a1, $a1, %lo(func_80AF8CAC) ## $a1 = 80AF8CAC
/* 00020 80AF8C90 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00024 80AF8C94 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00028 80AF8C98 03E00008 */  jr      $ra                        
/* 0002C 80AF8C9C 00000000 */  nop


