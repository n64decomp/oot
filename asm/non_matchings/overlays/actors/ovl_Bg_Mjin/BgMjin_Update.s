glabel BgMjin_Update
/* 001AC 808A092C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001B0 808A0930 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001B4 808A0934 8C990168 */  lw      $t9, 0x0168($a0)           ## 00000168
/* 001B8 808A0938 0320F809 */  jalr    $ra, $t9                   
/* 001BC 808A093C 00000000 */  nop
/* 001C0 808A0940 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001C4 808A0944 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C8 808A0948 03E00008 */  jr      $ra                        
/* 001CC 808A094C 00000000 */  nop


