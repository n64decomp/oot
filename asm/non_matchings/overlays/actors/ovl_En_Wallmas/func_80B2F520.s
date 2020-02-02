glabel func_80B2F520
/* 00000 80B2F520 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 80B2F524 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00008 80B2F528 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0000C 80B2F52C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00010 80B2F530 3C0580B3 */  lui     $a1, %hi(D_80B30D64)       ## $a1 = 80B30000
/* 00014 80B2F534 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80B2F538 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0001C 80B2F53C 24A50D64 */  addiu   $a1, $a1, %lo(D_80B30D64)  ## $a1 = 80B30D64
/* 00020 80B2F540 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00024 80B2F544 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00028 80B2F548 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0002C 80B2F54C 0C00AC78 */  jal     Actor_InitShadow
              
/* 00030 80B2F550 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 00034 80B2F554 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00038 80B2F558 3C070601 */  lui     $a3, 0x0601                ## $a3 = 06010000
/* 0003C 80B2F55C 260E0198 */  addiu   $t6, $s0, 0x0198           ## $t6 = 00000198
/* 00040 80B2F560 260F022E */  addiu   $t7, $s0, 0x022E           ## $t7 = 0000022E
/* 00044 80B2F564 24180019 */  addiu   $t8, $zero, 0x0019         ## $t8 = 00000019
/* 00048 80B2F568 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 0004C 80B2F56C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00050 80B2F570 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00054 80B2F574 24E79DB0 */  addiu   $a3, $a3, 0x9DB0           ## $a3 = 06009DB0
/* 00058 80B2F578 24C68FB0 */  addiu   $a2, $a2, 0x8FB0           ## $a2 = 06008FB0
/* 0005C 80B2F57C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00060 80B2F580 0C0291BE */  jal     func_800A46F8              
/* 00064 80B2F584 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00068 80B2F588 260502C8 */  addiu   $a1, $s0, 0x02C8           ## $a1 = 000002C8
/* 0006C 80B2F58C AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00070 80B2F590 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00074 80B2F594 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00078 80B2F598 3C0780B3 */  lui     $a3, %hi(D_80B30D10)       ## $a3 = 80B30000
/* 0007C 80B2F59C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00080 80B2F5A0 24E70D10 */  addiu   $a3, $a3, %lo(D_80B30D10)  ## $a3 = 80B30D10
/* 00084 80B2F5A4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00088 80B2F5A8 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 0008C 80B2F5AC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00090 80B2F5B0 3C0580B3 */  lui     $a1, %hi(D_80B30D44)       ## $a1 = 80B30000
/* 00094 80B2F5B4 3C0680B3 */  lui     $a2, %hi(D_80B30D3C)       ## $a2 = 80B30000
/* 00098 80B2F5B8 24C60D3C */  addiu   $a2, $a2, %lo(D_80B30D3C)  ## $a2 = 80B30D3C
/* 0009C 80B2F5BC 24A50D44 */  addiu   $a1, $a1, %lo(D_80B30D44)  ## $a1 = 80B30D44
/* 000A0 80B2F5C0 0C0187B5 */  jal     func_80061ED4              
/* 000A4 80B2F5C4 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 000A8 80B2F5C8 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 000AC 80B2F5CC 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 000B0 80B2F5D0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 000B4 80B2F5D4 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 000B8 80B2F5D8 A60B001C */  sh      $t3, 0x001C($s0)           ## 0000001C
/* 000BC 80B2F5DC 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 000C0 80B2F5E0 00194203 */  sra     $t0, $t9,  8               
/* 000C4 80B2F5E4 310900FF */  andi    $t1, $t0, 0x00FF           ## $t1 = 00000000
/* 000C8 80B2F5E8 1441000E */  bne     $v0, $at, .L80B2F624       
/* 000CC 80B2F5EC A6090196 */  sh      $t1, 0x0196($s0)           ## 00000196
/* 000D0 80B2F5F0 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 000D4 80B2F5F4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 000D8 80B2F5F8 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
/* 000DC 80B2F5FC 10400005 */  beq     $v0, $zero, .L80B2F614     
/* 000E0 80B2F600 00000000 */  nop
/* 000E4 80B2F604 0C00B55C */  jal     Actor_Kill
              
/* 000E8 80B2F608 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000EC 80B2F60C 1000000F */  beq     $zero, $zero, .L80B2F64C   
/* 000F0 80B2F610 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B2F614:
/* 000F4 80B2F614 0C2CBF08 */  jal     func_80B2FC20              
/* 000F8 80B2F618 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000FC 80B2F61C 1000000B */  beq     $zero, $zero, .L80B2F64C   
/* 00100 80B2F620 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B2F624:
/* 00104 80B2F624 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00108 80B2F628 14410005 */  bne     $v0, $at, .L80B2F640       
/* 0010C 80B2F62C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00110 80B2F630 0C2CBF08 */  jal     func_80B2FC20              
/* 00114 80B2F634 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00118 80B2F638 10000004 */  beq     $zero, $zero, .L80B2F64C   
/* 0011C 80B2F63C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B2F640:
/* 00120 80B2F640 0C2CBDA1 */  jal     func_80B2F684              
/* 00124 80B2F644 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00128 80B2F648 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B2F64C:
/* 0012C 80B2F64C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00130 80B2F650 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00134 80B2F654 03E00008 */  jr      $ra                        
/* 00138 80B2F658 00000000 */  nop


