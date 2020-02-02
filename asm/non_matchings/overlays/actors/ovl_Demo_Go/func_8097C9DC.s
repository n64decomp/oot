glabel func_8097C9DC
/* 0016C 8097C9DC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00170 8097C9E0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00174 8097C9E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00178 8097C9E8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0017C 8097C9EC AFA4001C */  sw      $a0, 0x001C($sp)           
/* 00180 8097C9F0 0C0295B2 */  jal     func_800A56C8              
/* 00184 8097C9F4 3C054140 */  lui     $a1, 0x4140                ## $a1 = 41400000
/* 00188 8097C9F8 14400005 */  bne     $v0, $zero, .L8097CA10     
/* 0018C 8097C9FC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00190 8097CA00 0C0295B2 */  jal     func_800A56C8              
/* 00194 8097CA04 3C0541C8 */  lui     $a1, 0x41C8                ## $a1 = 41C80000
/* 00198 8097CA08 50400006 */  beql    $v0, $zero, .L8097CA24     
/* 0019C 8097CA0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097CA10:
/* 001A0 8097CA10 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 001A4 8097CA14 240538B8 */  addiu   $a1, $zero, 0x38B8         ## $a1 = 000038B8
/* 001A8 8097CA18 0C01E245 */  jal     func_80078914              
/* 001AC 8097CA1C 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 001B0 8097CA20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097CA24:
/* 001B4 8097CA24 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 001B8 8097CA28 03E00008 */  jr      $ra                        
/* 001BC 8097CA2C 00000000 */  nop


