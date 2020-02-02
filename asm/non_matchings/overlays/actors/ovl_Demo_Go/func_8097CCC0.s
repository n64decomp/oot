glabel func_8097CCC0
/* 00450 8097CCC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00454 8097CCC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00458 8097CCC8 0C00B638 */  jal     Actor_MoveForward
              
/* 0045C 8097CCCC 00000000 */  nop
/* 00460 8097CCD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00464 8097CCD4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00468 8097CCD8 03E00008 */  jr      $ra                        
/* 0046C 8097CCDC 00000000 */  nop


