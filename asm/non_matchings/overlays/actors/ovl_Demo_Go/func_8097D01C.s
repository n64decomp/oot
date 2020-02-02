glabel func_8097D01C
/* 007AC 8097D01C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007B0 8097D020 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007B4 8097D024 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007B8 8097D028 0C25F2C3 */  jal     func_8097CB0C              
/* 007BC 8097D02C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007C0 8097D030 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007C4 8097D034 0C25F28C */  jal     func_8097CA30              
/* 007C8 8097D038 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 007CC 8097D03C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007D0 8097D040 0C25F39E */  jal     func_8097CE78              
/* 007D4 8097D044 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 007D8 8097D048 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007DC 8097D04C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007E0 8097D050 03E00008 */  jr      $ra                        
/* 007E4 8097D054 00000000 */  nop


