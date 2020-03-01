glabel BgPushbox_Init
/* 00008 808A8AE8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0000C 808A8AEC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 808A8AF0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00014 808A8AF4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00018 808A8AF8 3C05808B */  lui     $a1, %hi(D_808A8DA0)       ## $a1 = 808B0000
/* 0001C 808A8AFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 808A8B00 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00024 808A8B04 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00028 808A8B08 24A58DA0 */  addiu   $a1, $a1, %lo(D_808A8DA0)  ## $a1 = 808A8DA0
/* 0002C 808A8B0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00030 808A8B10 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00034 808A8B14 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00038 808A8B18 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0003C 808A8B1C 24840350 */  addiu   $a0, $a0, 0x0350           ## $a0 = 06000350
/* 00040 808A8B20 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00044 808A8B24 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00048 808A8B28 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0004C 808A8B2C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00050 808A8B30 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00054 808A8B34 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00058 808A8B38 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0005C 808A8B3C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00060 808A8B40 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00064 808A8B44 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00068 808A8B48 44050000 */  mfc1    $a1, $f0                   
/* 0006C 808A8B4C 44070000 */  mfc1    $a3, $f0                   
/* 00070 808A8B50 0C00AC78 */  jal     ActorShape_Init
              
/* 00074 808A8B54 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00078 808A8B58 3C05808B */  lui     $a1, %hi(func_808A8BAC)    ## $a1 = 808B0000
/* 0007C 808A8B5C 24A58BAC */  addiu   $a1, $a1, %lo(func_808A8BAC) ## $a1 = 808A8BAC
/* 00080 808A8B60 0C22A2B8 */  jal     func_808A8AE0              
/* 00084 808A8B64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00088 808A8B68 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0008C 808A8B6C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00090 808A8B70 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00094 808A8B74 03E00008 */  jr      $ra                        
/* 00098 808A8B78 00000000 */  nop


