glabel func_8097CFFC
/* 0078C 8097CFFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00790 8097D000 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00794 8097D004 0C25F388 */  jal     func_8097CE20              
/* 00798 8097D008 00000000 */  nop
/* 0079C 8097D00C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007A0 8097D010 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007A4 8097D014 03E00008 */  jr      $ra                        
/* 007A8 8097D018 00000000 */  nop


