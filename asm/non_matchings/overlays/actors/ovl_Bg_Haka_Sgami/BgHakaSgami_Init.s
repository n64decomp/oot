glabel BgHakaSgami_Init
/* 00000 8087E4E0 27BDFE28 */  addiu   $sp, $sp, 0xFE28           ## $sp = FFFFFE28
/* 00004 8087E4E4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00008 8087E4E8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 8087E4EC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00010 8087E4F0 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00014 8087E4F4 3C058088 */  lui     $a1, %hi(D_8087EF94)       ## $a1 = 80880000
/* 00018 8087E4F8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 8087E4FC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 8087E500 24A5EF94 */  addiu   $a1, $a1, %lo(D_8087EF94)  ## $a1 = 8087EF94
/* 00024 8087E504 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00028 8087E508 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 0002C 8087E50C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00030 8087E510 A20F0151 */  sb      $t7, 0x0151($s0)           ## 00000151
/* 00034 8087E514 82090151 */  lb      $t1, 0x0151($s0)           ## 00000151
/* 00038 8087E518 0018CA03 */  sra     $t9, $t8,  8               
/* 0003C 8087E51C 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000000
/* 00040 8087E520 11200004 */  beq     $t1, $zero, .L8087E534     
/* 00044 8087E524 A608001C */  sh      $t0, 0x001C($s0)           ## 0000001C
/* 00048 8087E528 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 0004C 8087E52C 354B0080 */  ori     $t3, $t2, 0x0080           ## $t3 = 00000080
/* 00050 8087E530 AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
.L8087E534:
/* 00054 8087E534 260501A8 */  addiu   $a1, $s0, 0x01A8           ## $a1 = 000001A8
/* 00058 8087E538 0C0171F8 */  jal     func_8005C7E0              
/* 0005C 8087E53C AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00060 8087E540 3C078088 */  lui     $a3, %hi(D_8087EF50)       ## $a3 = 80880000
/* 00064 8087E544 260C01C8 */  addiu   $t4, $s0, 0x01C8           ## $t4 = 000001C8
/* 00068 8087E548 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 0006C 8087E54C AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00070 8087E550 24E7EF50 */  addiu   $a3, $a3, %lo(D_8087EF50)  ## $a3 = 8087EF50
/* 00074 8087E554 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00078 8087E558 0C0172EB */  jal     func_8005CBAC              
/* 0007C 8087E55C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00080 8087E560 2605015C */  addiu   $a1, $s0, 0x015C           ## $a1 = 0000015C
/* 00084 8087E564 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00088 8087E568 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 0008C 8087E56C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00090 8087E570 3C078088 */  lui     $a3, %hi(D_8087EF60)       ## $a3 = 80880000
/* 00094 8087E574 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00098 8087E578 24E7EF60 */  addiu   $a3, $a3, %lo(D_8087EF60)  ## $a3 = 8087EF60
/* 0009C 8087E57C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000A0 8087E580 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000A4 8087E584 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000A8 8087E588 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 000AC 8087E58C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 000B0 8087E590 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 000B4 8087E594 4600218D */  trunc.w.s $f6, $f4                   
/* 000B8 8087E598 3C068088 */  lui     $a2, %hi(D_8087EF8C)       ## $a2 = 80880000
/* 000BC 8087E59C 24C6EF8C */  addiu   $a2, $a2, %lo(D_8087EF8C)  ## $a2 = 8087EF8C
/* 000C0 8087E5A0 4600428D */  trunc.w.s $f10, $f8                  
/* 000C4 8087E5A4 440E3000 */  mfc1    $t6, $f6                   
/* 000C8 8087E5A8 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 000CC 8087E5AC 4600848D */  trunc.w.s $f18, $f16                 
/* 000D0 8087E5B0 44185000 */  mfc1    $t8, $f10                  
/* 000D4 8087E5B4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 000D8 8087E5B8 A60E01A2 */  sh      $t6, 0x01A2($s0)           ## 000001A2
/* 000DC 8087E5BC 44089000 */  mfc1    $t0, $f18                  
/* 000E0 8087E5C0 A61801A4 */  sh      $t8, 0x01A4($s0)           ## 000001A4
/* 000E4 8087E5C4 0C0187B5 */  jal     func_80061ED4              
/* 000E8 8087E5C8 A60801A6 */  sh      $t0, 0x01A6($s0)           ## 000001A6
/* 000EC 8087E5CC 3C0D8088 */  lui     $t5, %hi(D_8087EFA1)       ## $t5 = 80880000
/* 000F0 8087E5D0 3C0E8088 */  lui     $t6, %hi(D_8087EFA5)       ## $t6 = 80880000
/* 000F4 8087E5D4 3C098088 */  lui     $t1, %hi(D_8087EFA0)       ## $t1 = 80880000
/* 000F8 8087E5D8 3C0A8088 */  lui     $t2, %hi(D_8087EFA4)       ## $t2 = 80880000
/* 000FC 8087E5DC 3C0B8088 */  lui     $t3, %hi(D_8087EFA8)       ## $t3 = 80880000
/* 00100 8087E5E0 3C0C8088 */  lui     $t4, %hi(D_8087EFAC)       ## $t4 = 80880000
/* 00104 8087E5E4 91CEEFA5 */  lbu     $t6, %lo(D_8087EFA5)($t6)  
/* 00108 8087E5E8 91ADEFA1 */  lbu     $t5, %lo(D_8087EFA1)($t5)  
/* 0010C 8087E5EC 9129EFA0 */  lbu     $t1, %lo(D_8087EFA0)($t1)  
/* 00110 8087E5F0 914AEFA4 */  lbu     $t2, %lo(D_8087EFA4)($t2)  
/* 00114 8087E5F4 916BEFA8 */  lbu     $t3, %lo(D_8087EFA8)($t3)  
/* 00118 8087E5F8 918CEFAC */  lbu     $t4, %lo(D_8087EFAC)($t4)  
/* 0011C 8087E5FC 3C0F8088 */  lui     $t7, %hi(D_8087EFA9)       ## $t7 = 80880000
/* 00120 8087E600 3C188088 */  lui     $t8, %hi(D_8087EFAD)       ## $t8 = 80880000
/* 00124 8087E604 3C198088 */  lui     $t9, %hi(D_8087EFA2)       ## $t9 = 80880000
/* 00128 8087E608 9339EFA2 */  lbu     $t9, %lo(D_8087EFA2)($t9)  
/* 0012C 8087E60C 9318EFAD */  lbu     $t8, %lo(D_8087EFAD)($t8)  
/* 00130 8087E610 91EFEFA9 */  lbu     $t7, %lo(D_8087EFA9)($t7)  
/* 00134 8087E614 A3AE01BD */  sb      $t6, 0x01BD($sp)           
/* 00138 8087E618 A3AD01B9 */  sb      $t5, 0x01B9($sp)           
/* 0013C 8087E61C A3A901B8 */  sb      $t1, 0x01B8($sp)           
/* 00140 8087E620 A3AA01BC */  sb      $t2, 0x01BC($sp)           
/* 00144 8087E624 A3AB01C0 */  sb      $t3, 0x01C0($sp)           
/* 00148 8087E628 A3AC01C4 */  sb      $t4, 0x01C4($sp)           
/* 0014C 8087E62C 3C0C8088 */  lui     $t4, %hi(D_8087EFA7)       ## $t4 = 80880000
/* 00150 8087E630 3C0B8088 */  lui     $t3, %hi(D_8087EFA3)       ## $t3 = 80880000
/* 00154 8087E634 3C0A8088 */  lui     $t2, %hi(D_8087EFAE)       ## $t2 = 80880000
/* 00158 8087E638 3C098088 */  lui     $t1, %hi(D_8087EFAA)       ## $t1 = 80880000
/* 0015C 8087E63C 3C0D8088 */  lui     $t5, %hi(D_8087EFAB)       ## $t5 = 80880000
/* 00160 8087E640 3C0E8088 */  lui     $t6, %hi(D_8087EFAF)       ## $t6 = 80880000
/* 00164 8087E644 3C088088 */  lui     $t0, %hi(D_8087EFA6)       ## $t0 = 80880000
/* 00168 8087E648 9108EFA6 */  lbu     $t0, %lo(D_8087EFA6)($t0)  
/* 0016C 8087E64C 91CEEFAF */  lbu     $t6, %lo(D_8087EFAF)($t6)  
/* 00170 8087E650 91ADEFAB */  lbu     $t5, %lo(D_8087EFAB)($t5)  
/* 00174 8087E654 9129EFAA */  lbu     $t1, %lo(D_8087EFAA)($t1)  
/* 00178 8087E658 914AEFAE */  lbu     $t2, %lo(D_8087EFAE)($t2)  
/* 0017C 8087E65C 916BEFA3 */  lbu     $t3, %lo(D_8087EFA3)($t3)  
/* 00180 8087E660 918CEFA7 */  lbu     $t4, %lo(D_8087EFA7)($t4)  
/* 00184 8087E664 A3B901BA */  sb      $t9, 0x01BA($sp)           
/* 00188 8087E668 A3B801C5 */  sb      $t8, 0x01C5($sp)           
/* 0018C 8087E66C A3AF01C1 */  sb      $t7, 0x01C1($sp)           
/* 00190 8087E670 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 00194 8087E674 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00198 8087E678 27B90034 */  addiu   $t9, $sp, 0x0034           ## $t9 = FFFFFE5C
/* 0019C 8087E67C AFAF01C8 */  sw      $t7, 0x01C8($sp)           
/* 001A0 8087E680 AFA001CC */  sw      $zero, 0x01CC($sp)         
/* 001A4 8087E684 AFB801D0 */  sw      $t8, 0x01D0($sp)           
/* 001A8 8087E688 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 001AC 8087E68C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001B0 8087E690 26050154 */  addiu   $a1, $s0, 0x0154           ## $a1 = 00000154
/* 001B4 8087E694 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 001B8 8087E698 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 001BC 8087E69C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 001C0 8087E6A0 A3A801BE */  sb      $t0, 0x01BE($sp)           
/* 001C4 8087E6A4 A3AE01C7 */  sb      $t6, 0x01C7($sp)           
/* 001C8 8087E6A8 A3AD01C3 */  sb      $t5, 0x01C3($sp)           
/* 001CC 8087E6AC A3A901C2 */  sb      $t1, 0x01C2($sp)           
/* 001D0 8087E6B0 A3AA01C6 */  sb      $t2, 0x01C6($sp)           
/* 001D4 8087E6B4 A3AB01BB */  sb      $t3, 0x01BB($sp)           
/* 001D8 8087E6B8 0C009B35 */  jal     Effect_Add              ## Effect_Add
/* 001DC 8087E6BC A3AC01BF */  sb      $t4, 0x01BF($sp)           
/* 001E0 8087E6C0 27A80034 */  addiu   $t0, $sp, 0x0034           ## $t0 = FFFFFE5C
/* 001E4 8087E6C4 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 001E8 8087E6C8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001EC 8087E6CC 26050158 */  addiu   $a1, $s0, 0x0158           ## $a1 = 00000158
/* 001F0 8087E6D0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 001F4 8087E6D4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 001F8 8087E6D8 0C009B35 */  jal     Effect_Add              ## Effect_Add
/* 001FC 8087E6DC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00200 8087E6E0 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 00204 8087E6E4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00208 8087E6E8 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 0020C 8087E6EC 1520000C */  bne     $t1, $zero, .L8087E720     
/* 00210 8087E6F0 02212021 */  addu    $a0, $s1, $at              
/* 00214 8087E6F4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00218 8087E6F8 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 0021C 8087E6FC 02212021 */  addu    $a0, $s1, $at              
/* 00220 8087E700 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00224 8087E704 24050069 */  addiu   $a1, $zero, 0x0069         ## $a1 = 00000069
/* 00228 8087E708 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 0022C 8087E70C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00230 8087E710 A2020150 */  sb      $v0, 0x0150($s0)           ## 00000150
/* 00234 8087E714 01415824 */  and     $t3, $t2, $at              
/* 00238 8087E718 1000000B */  beq     $zero, $zero, .L8087E748   
/* 0023C 8087E71C AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
.L8087E720:
/* 00240 8087E720 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00244 8087E724 2405006B */  addiu   $a1, $zero, 0x006B         ## $a1 = 0000006B
/* 00248 8087E728 240C001E */  addiu   $t4, $zero, 0x001E         ## $t4 = 0000001E
/* 0024C 8087E72C 240D0046 */  addiu   $t5, $zero, 0x0046         ## $t5 = 00000046
/* 00250 8087E730 A2020150 */  sb      $v0, 0x0150($s0)           ## 00000150
/* 00254 8087E734 A60C019C */  sh      $t4, 0x019C($s0)           ## 0000019C
/* 00258 8087E738 A60D019E */  sh      $t5, 0x019E($s0)           ## 0000019E
/* 0025C 8087E73C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00260 8087E740 0C00B56E */  jal     Actor_SetHeight
              
/* 00264 8087E744 3C054220 */  lui     $a1, 0x4220                ## $a1 = 42200000
.L8087E748:
/* 00268 8087E748 820E0150 */  lb      $t6, 0x0150($s0)           ## 00000150
/* 0026C 8087E74C 3C0F8088 */  lui     $t7, %hi(func_8087E7E4)    ## $t7 = 80880000
/* 00270 8087E750 25EFE7E4 */  addiu   $t7, $t7, %lo(func_8087E7E4) ## $t7 = 8087E7E4
/* 00274 8087E754 05C30006 */  bgezl   $t6, .L8087E770            
/* 00278 8087E758 AE0F014C */  sw      $t7, 0x014C($s0)           ## 0000014C
/* 0027C 8087E75C 0C00B55C */  jal     Actor_Kill
              
/* 00280 8087E760 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00284 8087E764 10000003 */  beq     $zero, $zero, .L8087E774   
/* 00288 8087E768 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0028C 8087E76C AE0F014C */  sw      $t7, 0x014C($s0)           ## 0000014C
.L8087E770:
/* 00290 8087E770 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8087E774:
/* 00294 8087E774 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00298 8087E778 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 0029C 8087E77C 03E00008 */  jr      $ra                        
/* 002A0 8087E780 27BD01D8 */  addiu   $sp, $sp, 0x01D8           ## $sp = 00000000


