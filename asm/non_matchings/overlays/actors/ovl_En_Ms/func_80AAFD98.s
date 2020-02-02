glabel func_80AAFD98
/* 00078 80AAFD98 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 0007C 80AAFD9C 8DCEE664 */  lw      $t6, -0x199C($t6)          ## 8015E664
/* 00080 80AAFDA0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00084 80AAFDA4 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00088 80AAFDA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0008C 80AAFDAC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00090 80AAFDB0 11C00003 */  beq     $t6, $zero, .L80AAFDC0     
/* 00094 80AAFDB4 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00098 80AAFDB8 10000002 */  beq     $zero, $zero, .L80AAFDC4   
/* 0009C 80AAFDBC 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L80AAFDC0:
/* 000A0 80AAFDC0 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
.L80AAFDC4:
/* 000A4 80AAFDC4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 000A8 80AAFDC8 10410005 */  beq     $v0, $at, .L80AAFDE0       
/* 000AC 80AAFDCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B0 80AAFDD0 0C00B55C */  jal     Actor_Kill
              
/* 000B4 80AAFDD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B8 80AAFDD8 10000034 */  beq     $zero, $zero, .L80AAFEAC   
/* 000BC 80AAFDDC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AAFDE0:
/* 000C0 80AAFDE0 3C0580AB */  lui     $a1, %hi(D_80AB0374)       ## $a1 = 80AB0000
/* 000C4 80AAFDE4 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 000C8 80AAFDE8 24A50374 */  addiu   $a1, $a1, %lo(D_80AB0374)  ## $a1 = 80AB0374
/* 000CC 80AAFDEC 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 000D0 80AAFDF0 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 000D4 80AAFDF4 260F0190 */  addiu   $t7, $s0, 0x0190           ## $t7 = 00000190
/* 000D8 80AAFDF8 261801C6 */  addiu   $t8, $s0, 0x01C6           ## $t8 = 000001C6
/* 000DC 80AAFDFC 24190009 */  addiu   $t9, $zero, 0x0009         ## $t9 = 00000009
/* 000E0 80AAFE00 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 000E4 80AAFE04 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 000E8 80AAFE08 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 000EC 80AAFE0C 24E705EC */  addiu   $a3, $a3, 0x05EC           ## $a3 = 060005EC
/* 000F0 80AAFE10 24C63DC0 */  addiu   $a2, $a2, 0x3DC0           ## $a2 = 06003DC0
/* 000F4 80AAFE14 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 000F8 80AAFE18 0C0291BE */  jal     func_800A46F8              
/* 000FC 80AAFE1C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00100 80AAFE20 26050200 */  addiu   $a1, $s0, 0x0200           ## $a1 = 00000200
/* 00104 80AAFE24 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00108 80AAFE28 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 0010C 80AAFE2C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00110 80AAFE30 3C0780AB */  lui     $a3, %hi(D_80AB0320)       ## $a3 = 80AB0000
/* 00114 80AAFE34 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00118 80AAFE38 24E70320 */  addiu   $a3, $a3, %lo(D_80AB0320)  ## $a3 = 80AB0320
/* 0011C 80AAFE3C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00120 80AAFE40 0C017114 */  jal     func_8005C450              
/* 00124 80AAFE44 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00128 80AAFE48 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 0012C 80AAFE4C 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00130 80AAFE50 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00134 80AAFE54 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00138 80AAFE58 0C00AC78 */  jal     Actor_InitShadow
              
/* 0013C 80AAFE5C 3C07420C */  lui     $a3, 0x420C                ## $a3 = 420C0000
/* 00140 80AAFE60 3C053C75 */  lui     $a1, 0x3C75                ## $a1 = 3C750000
/* 00144 80AAFE64 34A5C28F */  ori     $a1, $a1, 0xC28F           ## $a1 = 3C75C28F
/* 00148 80AAFE68 0C00B58B */  jal     Actor_SetScale
              
/* 0014C 80AAFE6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00150 80AAFE70 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00154 80AAFE74 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00158 80AAFE78 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 0015C 80AAFE7C 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00160 80AAFE80 A20800AE */  sb      $t0, 0x00AE($s0)           ## 000000AE
/* 00164 80AAFE84 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 00168 80AAFE88 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 0016C 80AAFE8C E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00170 80AAFE90 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00174 80AAFE94 0C2ABF48 */  jal     func_80AAFD20              
/* 00178 80AAFE98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0017C 80AAFE9C 3C0980AB */  lui     $t1, %hi(func_80AAFEE4)    ## $t1 = 80AB0000
/* 00180 80AAFEA0 2529FEE4 */  addiu   $t1, $t1, %lo(func_80AAFEE4) ## $t1 = 80AAFEE4
/* 00184 80AAFEA4 AE0901FC */  sw      $t1, 0x01FC($s0)           ## 000001FC
/* 00188 80AAFEA8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AAFEAC:
/* 0018C 80AAFEAC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00190 80AAFEB0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00194 80AAFEB4 03E00008 */  jr      $ra                        
/* 00198 80AAFEB8 00000000 */  nop


