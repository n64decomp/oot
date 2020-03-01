glabel DemoGo_Destroy
/* 000A0 8097C910 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000A4 8097C914 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000A8 8097C918 0C0295BC */  jal     func_800A56F0              
/* 000AC 8097C91C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 000B0 8097C920 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000B4 8097C924 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000B8 8097C928 03E00008 */  jr      $ra                        
/* 000BC 8097C92C 00000000 */  nop


