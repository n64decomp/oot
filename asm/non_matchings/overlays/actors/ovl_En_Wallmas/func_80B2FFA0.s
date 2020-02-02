glabel func_80B2FFA0
/* 00A80 80B2FFA0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A84 80B2FFA4 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00A88 80B2FFA8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00A8C 80B2FFAC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00A90 80B2FFB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A94 80B2FFB4 2490014C */  addiu   $s0, $a0, 0x014C           ## $s0 = 0000014C
/* 00A98 80B2FFB8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A9C 80B2FFBC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00AA0 80B2FFC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00AA4 80B2FFC4 50400004 */  beql    $v0, $zero, .L80B2FFD8     
/* 00AA8 80B2FFC8 8625008A */  lh      $a1, 0x008A($s1)           ## 0000008A
/* 00AAC 80B2FFCC 0C2CBE3D */  jal     func_80B2F8F4              
/* 00AB0 80B2FFD0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00AB4 80B2FFD4 8625008A */  lh      $a1, 0x008A($s1)           ## 0000008A
.L80B2FFD8:
/* 00AB8 80B2FFD8 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00ABC 80B2FFDC 26240032 */  addiu   $a0, $s1, 0x0032           ## $a0 = 00000032
/* 00AC0 80B2FFE0 00A12821 */  addu    $a1, $a1, $at              
/* 00AC4 80B2FFE4 00052C00 */  sll     $a1, $a1, 16               
/* 00AC8 80B2FFE8 00052C03 */  sra     $a1, $a1, 16               
/* 00ACC 80B2FFEC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00AD0 80B2FFF0 240600B6 */  addiu   $a2, $zero, 0x00B6         ## $a2 = 000000B6
/* 00AD4 80B2FFF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00AD8 80B2FFF8 0C0295B2 */  jal     func_800A56C8              
/* 00ADC 80B2FFFC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00AE0 80B30000 1440000C */  bne     $v0, $zero, .L80B30034     
/* 00AE4 80B30004 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00AE8 80B30008 0C0295B2 */  jal     func_800A56C8              
/* 00AEC 80B3000C 3C054140 */  lui     $a1, 0x4140                ## $a1 = 41400000
/* 00AF0 80B30010 14400008 */  bne     $v0, $zero, .L80B30034     
/* 00AF4 80B30014 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00AF8 80B30018 0C0295B2 */  jal     func_800A56C8              
/* 00AFC 80B3001C 3C0541C0 */  lui     $a1, 0x41C0                ## $a1 = 41C00000
/* 00B00 80B30020 14400004 */  bne     $v0, $zero, .L80B30034     
/* 00B04 80B30024 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00B08 80B30028 0C0295B2 */  jal     func_800A56C8              
/* 00B0C 80B3002C 3C054210 */  lui     $a1, 0x4210                ## $a1 = 42100000
/* 00B10 80B30030 10400003 */  beq     $v0, $zero, .L80B30040     
.L80B30034:
/* 00B14 80B30034 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B18 80B30038 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B1C 80B3003C 24053894 */  addiu   $a1, $zero, 0x3894         ## $a1 = 00003894
.L80B30040:
/* 00B20 80B30040 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B24 80B30044 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00B28 80B30048 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00B2C 80B3004C 03E00008 */  jr      $ra                        
/* 00B30 80B30050 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


