glabel func_8086DE54
/* 00E44 8086DE54 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00E48 8086DE58 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E4C 8086DE5C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00E50 8086DE60 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00E54 8086DE64 848201DA */  lh      $v0, 0x01DA($a0)           ## 000001DA
/* 00E58 8086DE68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E5C 8086DE6C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00E60 8086DE70 18400002 */  blez    $v0, .L8086DE7C            
/* 00E64 8086DE74 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00E68 8086DE78 A48E01DA */  sh      $t6, 0x01DA($a0)           ## 000001DA
.L8086DE7C:
/* 00E6C 8086DE7C 8E190164 */  lw      $t9, 0x0164($s0)           ## 00000164
/* 00E70 8086DE80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E74 8086DE84 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00E78 8086DE88 0320F809 */  jalr    $ra, $t9                   
/* 00E7C 8086DE8C 00000000 */  nop
/* 00E80 8086DE90 0C21B43B */  jal     func_8086D0EC              
/* 00E84 8086DE94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E88 8086DE98 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00E8C 8086DE9C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00E90 8086DEA0 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 00E94 8086DEA4 10410007 */  beq     $v0, $at, .L8086DEC4       
/* 00E98 8086DEA8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00E9C 8086DEAC 10410005 */  beq     $v0, $at, .L8086DEC4       
/* 00EA0 8086DEB0 00000000 */  nop
/* 00EA4 8086DEB4 860F01D8 */  lh      $t7, 0x01D8($s0)           ## 000001D8
/* 00EA8 8086DEB8 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 00EAC 8086DEBC 10000021 */  beq     $zero, $zero, .L8086DF44   
/* 00EB0 8086DEC0 A61801D8 */  sh      $t8, 0x01D8($s0)           ## 000001D8
.L8086DEC4:
/* 00EB4 8086DEC4 0C023A62 */  jal     func_8008E988              
/* 00EB8 8086DEC8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00EBC 8086DECC 14400005 */  bne     $v0, $zero, .L8086DEE4     
/* 00EC0 8086DED0 3C0143B9 */  lui     $at, 0x43B9                ## $at = 43B90000
/* 00EC4 8086DED4 860201D8 */  lh      $v0, 0x01D8($s0)           ## 000001D8
/* 00EC8 8086DED8 18400002 */  blez    $v0, .L8086DEE4            
/* 00ECC 8086DEDC 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 00ED0 8086DEE0 A60801D8 */  sh      $t0, 0x01D8($s0)           ## 000001D8
.L8086DEE4:
/* 00ED4 8086DEE4 C60401D4 */  lwc1    $f4, 0x01D4($s0)           ## 000001D4
/* 00ED8 8086DEE8 44813000 */  mtc1    $at, $f6                   ## $f6 = 370.00
/* 00EDC 8086DEEC 92020179 */  lbu     $v0, 0x0179($s0)           ## 00000179
/* 00EE0 8086DEF0 8E0C0184 */  lw      $t4, 0x0184($s0)           ## 00000184
/* 00EE4 8086DEF4 46062202 */  mul.s   $f8, $f4, $f6              
/* 00EE8 8086DEF8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00EEC 8086DEFC 3049FFFD */  andi    $t1, $v0, 0xFFFD           ## $t1 = 00000000
/* 00EF0 8086DF00 A2090179 */  sb      $t1, 0x0179($s0)           ## 00000179
/* 00EF4 8086DF04 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00EF8 8086DF08 A20201DC */  sb      $v0, 0x01DC($s0)           ## 000001DC
/* 00EFC 8086DF0C 02212821 */  addu    $a1, $s1, $at              
/* 00F00 8086DF10 4600428D */  trunc.w.s $f10, $f8                  
/* 00F04 8086DF14 26060168 */  addiu   $a2, $s0, 0x0168           ## $a2 = 00000168
/* 00F08 8086DF18 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F0C 8086DF1C 440B5000 */  mfc1    $t3, $f10                  
/* 00F10 8086DF20 00000000 */  nop
/* 00F14 8086DF24 A58B002E */  sh      $t3, 0x002E($t4)           ## 0000002E
/* 00F18 8086DF28 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00F1C 8086DF2C 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00F20 8086DF30 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00F24 8086DF34 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00F28 8086DF38 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00F2C 8086DF3C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00F30 8086DF40 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L8086DF44:
/* 00F34 8086DF44 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F38 8086DF48 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00F3C 8086DF4C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00F40 8086DF50 03E00008 */  jr      $ra                        
/* 00F44 8086DF54 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


