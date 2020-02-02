glabel func_80B301A4
/* 00C84 80B301A4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00C88 80B301A8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C8C 80B301AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C90 80B301B0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C94 80B301B4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00C98 80B301B8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00C9C 80B301BC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00CA0 80B301C0 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00CA4 80B301C4 5040000C */  beql    $v0, $zero, .L80B301F8     
/* 00CA8 80B301C8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00CAC 80B301CC 920E00AF */  lbu     $t6, 0x00AF($s0)           ## 000000AF
/* 00CB0 80B301D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CB4 80B301D4 15C00005 */  bne     $t6, $zero, .L80B301EC     
/* 00CB8 80B301D8 00000000 */  nop
/* 00CBC 80B301DC 0C2CBEB4 */  jal     func_80B2FAD0              
/* 00CC0 80B301E0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00CC4 80B301E4 10000004 */  beq     $zero, $zero, .L80B301F8   
/* 00CC8 80B301E8 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80B301EC:
/* 00CCC 80B301EC 0C2CBE9F */  jal     func_80B2FA7C              
/* 00CD0 80B301F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CD4 80B301F4 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80B301F8:
/* 00CD8 80B301F8 0C0295B2 */  jal     func_800A56C8              
/* 00CDC 80B301FC 3C054150 */  lui     $a1, 0x4150                ## $a1 = 41500000
/* 00CE0 80B30200 10400003 */  beq     $v0, $zero, .L80B30210     
/* 00CE4 80B30204 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CE8 80B30208 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00CEC 80B3020C 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
.L80B30210:
/* 00CF0 80B30210 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00CF4 80B30214 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00CF8 80B30218 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00CFC 80B3021C 0C01DE80 */  jal     Math_ApproxF
              
/* 00D00 80B30220 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00D04 80B30224 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D08 80B30228 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D0C 80B3022C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00D10 80B30230 03E00008 */  jr      $ra                        
/* 00D14 80B30234 00000000 */  nop


