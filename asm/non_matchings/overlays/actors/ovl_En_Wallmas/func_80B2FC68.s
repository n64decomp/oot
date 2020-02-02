glabel func_80B2FC68
/* 00748 80B2FC68 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0074C 80B2FC6C 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 00750 80B2FC70 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00754 80B2FC74 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 00758 80B2FC78 44813000 */  mtc1    $at, $f6                   ## $f6 = -3.00
/* 0075C 80B2FC7C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00760 80B2FC80 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00764 80B2FC84 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00768 80B2FC88 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0076C 80B2FC8C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00770 80B2FC90 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00774 80B2FC94 24A519CC */  addiu   $a1, $a1, 0x19CC           ## $a1 = 060019CC
/* 00778 80B2FC98 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0077C 80B2FC9C 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 00780 80B2FCA0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00784 80B2FCA4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00788 80B2FCA8 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 0078C 80B2FCAC E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 00790 80B2FCB0 920F00B1 */  lbu     $t7, 0x00B1($s0)           ## 000000B1
/* 00794 80B2FCB4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00798 80B2FCB8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0079C 80B2FCBC 15E1000A */  bne     $t7, $at, .L80B2FCE8       
/* 007A0 80B2FCC0 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 007A4 80B2FCC4 24180050 */  addiu   $t8, $zero, 0x0050         ## $t8 = 00000050
/* 007A8 80B2FCC8 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 007AC 80B2FCCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007B0 80B2FCD0 24058000 */  addiu   $a1, $zero, 0x8000         ## $a1 = FFFF8000
/* 007B4 80B2FCD4 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 007B8 80B2FCD8 0C00D09B */  jal     func_8003426C              
/* 007BC 80B2FCDC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 007C0 80B2FCE0 1000000B */  beq     $zero, $zero, .L80B2FD10   
/* 007C4 80B2FCE4 00000000 */  nop
.L80B2FCE8:
/* 007C8 80B2FCE8 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 007CC 80B2FCEC AFB90010 */  sw      $t9, 0x0010($sp)           
/* 007D0 80B2FCF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007D4 80B2FCF4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 007D8 80B2FCF8 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 007DC 80B2FCFC 0C00D09B */  jal     func_8003426C              
/* 007E0 80B2FD00 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 007E4 80B2FD04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007E8 80B2FD08 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 007EC 80B2FD0C 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
.L80B2FD10:
/* 007F0 80B2FD10 3C0980B3 */  lui     $t1, %hi(func_80B305A8)    ## $t1 = 80B30000
/* 007F4 80B2FD14 24080050 */  addiu   $t0, $zero, 0x0050         ## $t0 = 00000050
/* 007F8 80B2FD18 252905A8 */  addiu   $t1, $t1, %lo(func_80B305A8) ## $t1 = 80B305A8
/* 007FC 80B2FD1C A6080194 */  sh      $t0, 0x0194($s0)           ## 00000194
/* 00800 80B2FD20 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
/* 00804 80B2FD24 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00808 80B2FD28 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 0080C 80B2FD2C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00810 80B2FD30 03E00008 */  jr      $ra                        
/* 00814 80B2FD34 00000000 */  nop


