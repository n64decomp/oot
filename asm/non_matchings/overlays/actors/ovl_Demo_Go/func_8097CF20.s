glabel func_8097CF20
/* 006B0 8097CF20 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 006B4 8097CF24 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 006B8 8097CF28 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 006BC 8097CF2C 10C00017 */  beq     $a2, $zero, .L8097CF8C     
/* 006C0 8097CF30 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 006C4 8097CF34 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 006C8 8097CF38 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 006CC 8097CF3C 248429A8 */  addiu   $a0, $a0, 0x29A8           ## $a0 = 060029A8
/* 006D0 8097CF40 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 006D4 8097CF44 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 006D8 8097CF48 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 006DC 8097CF4C 468021A0 */  cvt.s.w $f6, $f4                   
/* 006E0 8097CF50 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 006E4 8097CF54 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006E8 8097CF58 24A529A8 */  addiu   $a1, $a1, 0x29A8           ## $a1 = 060029A8
/* 006EC 8097CF5C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 006F0 8097CF60 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 006F4 8097CF64 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 006F8 8097CF68 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 006FC 8097CF6C E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00700 8097CF70 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00704 8097CF74 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00708 8097CF78 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 0070C 8097CF7C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00710 8097CF80 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00714 8097CF84 AC4E0194 */  sw      $t6, 0x0194($v0)           ## 00000194
/* 00718 8097CF88 E44A019C */  swc1    $f10, 0x019C($v0)          ## 0000019C
.L8097CF8C:
/* 0071C 8097CF8C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00720 8097CF90 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00724 8097CF94 03E00008 */  jr      $ra                        
/* 00728 8097CF98 00000000 */  nop


