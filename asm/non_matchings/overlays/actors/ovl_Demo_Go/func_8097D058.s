glabel func_8097D058
/* 007E8 8097D058 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007EC 8097D05C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007F0 8097D060 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007F4 8097D064 0C25F28C */  jal     func_8097CA30              
/* 007F8 8097D068 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007FC 8097D06C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00800 8097D070 0C25F3BB */  jal     func_8097CEEC              
/* 00804 8097D074 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00808 8097D078 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0080C 8097D07C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00810 8097D080 03E00008 */  jr      $ra                        
/* 00814 8097D084 00000000 */  nop


