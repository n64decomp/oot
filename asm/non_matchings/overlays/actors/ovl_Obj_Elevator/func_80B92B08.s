glabel func_80B92B08
/* 00008 80B92B08 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0000C 80B92B0C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00010 80B92B10 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00014 80B92B14 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00018 80B92B18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80B92B1C AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00020 80B92B20 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 00024 80B92B24 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00028 80B92B28 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 0002C 80B92B2C 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 00030 80B92B30 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00034 80B92B34 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 00038 80B92B38 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0003C 80B92B3C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00040 80B92B40 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 00044 80B92B44 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00048 80B92B48 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0004C 80B92B4C 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00050 80B92B50 1441000A */  bne     $v0, $at, .L80B92B7C       
/* 00054 80B92B54 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00058 80B92B58 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 0005C 80B92B5C 3C0480B9 */  lui     $a0, %hi(D_80B92E70)       ## $a0 = 80B90000
/* 00060 80B92B60 3C0580B9 */  lui     $a1, %hi(D_80B92EB0)       ## $a1 = 80B90000
/* 00064 80B92B64 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 00068 80B92B68 24A52EB0 */  addiu   $a1, $a1, %lo(D_80B92EB0)  ## $a1 = 80B92EB0
/* 0006C 80B92B6C 24842E70 */  addiu   $a0, $a0, %lo(D_80B92E70)  ## $a0 = 80B92E70
/* 00070 80B92B70 24060088 */  addiu   $a2, $zero, 0x0088         ## $a2 = 00000088
/* 00074 80B92B74 0C00084C */  jal     osSyncPrintf
              
/* 00078 80B92B78 AFAE0010 */  sw      $t6, 0x0010($sp)           
.L80B92B7C:
/* 0007C 80B92B7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00080 80B92B80 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00084 80B92B84 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00088 80B92B88 03E00008 */  jr      $ra                        
/* 0008C 80B92B8C 00000000 */  nop


