glabel ObjElevator_Init
/* 00090 80B92B90 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00094 80B92B94 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00098 80B92B98 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0009C 80B92B9C 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 000A0 80B92BA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000A4 80B92BA4 24C60360 */  addiu   $a2, $a2, 0x0360           ## $a2 = 06000360
/* 000A8 80B92BA8 0C2E4AC2 */  jal     func_80B92B08              
/* 000AC 80B92BAC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 000B0 80B92BB0 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 000B4 80B92BB4 3C0580B9 */  lui     $a1, %hi(D_80B92E5C)       ## $a1 = 80B90000
/* 000B8 80B92BB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000BC 80B92BBC 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 000C0 80B92BC0 000FC080 */  sll     $t8, $t7,  2               
/* 000C4 80B92BC4 00B82821 */  addu    $a1, $a1, $t8              
/* 000C8 80B92BC8 0C00B58B */  jal     Actor_SetScale
              
/* 000CC 80B92BCC 8CA52E5C */  lw      $a1, %lo(D_80B92E5C)($a1)  
/* 000D0 80B92BD0 3C0580B9 */  lui     $a1, %hi(D_80B92E50)       ## $a1 = 80B90000
/* 000D4 80B92BD4 24A52E50 */  addiu   $a1, $a1, %lo(D_80B92E50)  ## $a1 = 80B92E50
/* 000D8 80B92BD8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 000DC 80B92BDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000E0 80B92BE0 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 000E4 80B92BE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000E8 80B92BE8 00194203 */  sra     $t0, $t9,  8               
/* 000EC 80B92BEC 3109000F */  andi    $t1, $t0, 0x000F           ## $t1 = 00000000
/* 000F0 80B92BF0 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 000F4 80B92BF4 00000000 */  nop
/* 000F8 80B92BF8 46802020 */  cvt.s.w $f0, $f4                   
/* 000FC 80B92BFC 46000180 */  add.s   $f6, $f0, $f0              
/* 00100 80B92C00 0C2E4B17 */  jal     func_80B92C5C              
/* 00104 80B92C04 E606016C */  swc1    $f6, 0x016C($s0)           ## 0000016C
/* 00108 80B92C08 3C0480B9 */  lui     $a0, %hi(D_80B92EC4)       ## $a0 = 80B90000
/* 0010C 80B92C0C 24842EC4 */  addiu   $a0, $a0, %lo(D_80B92EC4)  ## $a0 = 80B92EC4
/* 00110 80B92C10 0C00084C */  jal     osSyncPrintf
              
/* 00114 80B92C14 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00118 80B92C18 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0011C 80B92C1C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00120 80B92C20 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00124 80B92C24 03E00008 */  jr      $ra                        
/* 00128 80B92C28 00000000 */  nop


