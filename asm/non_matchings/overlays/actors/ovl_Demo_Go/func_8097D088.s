glabel func_8097D088
/* 00818 8097D088 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0081C 8097D08C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00820 8097D090 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00824 8097D094 0C25F28C */  jal     func_8097CA30              
/* 00828 8097D098 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0082C 8097D09C 0C25F364 */  jal     func_8097CD90              
/* 00830 8097D0A0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00834 8097D0A4 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 00838 8097D0A8 0C25F24C */  jal     func_8097C930              
/* 0083C 8097D0AC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00840 8097D0B0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00844 8097D0B4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00848 8097D0B8 0C25F3C8 */  jal     func_8097CF20              
/* 0084C 8097D0BC 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00850 8097D0C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00854 8097D0C4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00858 8097D0C8 03E00008 */  jr      $ra                        
/* 0085C 8097D0CC 00000000 */  nop


