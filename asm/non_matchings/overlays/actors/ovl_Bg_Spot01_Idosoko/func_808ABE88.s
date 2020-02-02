glabel func_808ABE88
/* 00008 808ABE88 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0000C 808ABE8C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 808ABE90 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00014 808ABE94 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00018 808ABE98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 808ABE9C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00020 808ABEA0 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00024 808ABEA4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00028 808ABEA8 3C05808B */  lui     $a1, %hi(D_808AC070)       ## $a1 = 808B0000
/* 0002C 808ABEAC 24A5C070 */  addiu   $a1, $a1, %lo(D_808AC070)  ## $a1 = 808AC070
/* 00030 808ABEB0 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00034 808ABEB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00038 808ABEB8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0003C 808ABEBC 24843C64 */  addiu   $a0, $a0, 0x3C64           ## $a0 = 06003C64
/* 00040 808ABEC0 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00044 808ABEC4 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00048 808ABEC8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0004C 808ABECC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00050 808ABED0 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00054 808ABED4 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00058 808ABED8 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0005C 808ABEDC AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00060 808ABEE0 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00064 808ABEE4 8DCEE664 */  lw      $t6, -0x199C($t6)          ## 8015E664
/* 00068 808ABEE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0006C 808ABEEC 3C05808B */  lui     $a1, %hi(func_808ABF54)    ## $a1 = 808B0000
/* 00070 808ABEF0 11C00005 */  beq     $t6, $zero, .L808ABF08     
/* 00074 808ABEF4 00000000 */  nop
/* 00078 808ABEF8 0C00B55C */  jal     Actor_Kill
              
/* 0007C 808ABEFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00080 808ABF00 10000004 */  beq     $zero, $zero, .L808ABF14   
/* 00084 808ABF04 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808ABF08:
/* 00088 808ABF08 0C22AFA0 */  jal     func_808ABE80              
/* 0008C 808ABF0C 24A5BF54 */  addiu   $a1, $a1, %lo(func_808ABF54) ## $a1 = FFFFBF54
/* 00090 808ABF10 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808ABF14:
/* 00094 808ABF14 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00098 808ABF18 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0009C 808ABF1C 03E00008 */  jr      $ra                        
/* 000A0 808ABF20 00000000 */  nop


