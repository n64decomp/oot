glabel func_8089F6E0
/* 00000 8089F6E0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 8089F6E4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00008 8089F6E8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 8089F6EC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00010 8089F6F0 3C05808A */  lui     $a1, %hi(D_8089F860)       ## $a1 = 808A0000
/* 00014 8089F6F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 8089F6F8 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0001C 8089F6FC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 8089F700 24A5F860 */  addiu   $a1, $a1, %lo(D_8089F860)  ## $a1 = 8089F860
/* 00024 8089F704 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00028 8089F708 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0002C 8089F70C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00030 8089F710 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00034 8089F714 248474EC */  addiu   $a0, $a0, 0x74EC           ## $a0 = 060074EC
/* 00038 8089F718 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0003C 8089F71C 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00040 8089F720 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00044 8089F724 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00048 8089F728 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 0004C 8089F72C 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00050 8089F730 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00054 8089F734 3C0E808A */  lui     $t6, %hi(func_8089F788)    ## $t6 = 808A0000
/* 00058 8089F738 25CEF788 */  addiu   $t6, $t6, %lo(func_8089F788) ## $t6 = 8089F788
/* 0005C 8089F73C AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00060 8089F740 AE0E0164 */  sw      $t6, 0x0164($s0)           ## 00000164
/* 00064 8089F744 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00068 8089F748 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0006C 8089F74C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00070 8089F750 03E00008 */  jr      $ra                        
/* 00074 8089F754 00000000 */  nop


