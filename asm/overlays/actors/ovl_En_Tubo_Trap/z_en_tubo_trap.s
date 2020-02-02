.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text
glabel func_80B258F0
/* 00000 80B258F0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 80B258F4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00008 80B258F8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 80B258FC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 80B25900 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00014 80B25904 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00018 80B25908 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0001C 80B2590C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00020 80B25910 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00024 80B25914 0C00AC78 */  jal     Actor_InitShadow
              
/* 00028 80B25918 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 0002C 80B2591C 3C0480B2 */  lui     $a0, %hi(D_80B26530)       ## $a0 = 80B20000
/* 00030 80B25920 0C00084C */  jal     osSyncPrintf
              
/* 00034 80B25924 24846530 */  addiu   $a0, $a0, %lo(D_80B26530)  ## $a0 = 80B26530
/* 00038 80B25928 3C0480B2 */  lui     $a0, %hi(D_80B26534)       ## $a0 = 80B20000
/* 0003C 80B2592C 24846534 */  addiu   $a0, $a0, %lo(D_80B26534)  ## $a0 = 80B26534
/* 00040 80B25930 0C00084C */  jal     osSyncPrintf
              
/* 00044 80B25934 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00048 80B25938 26050160 */  addiu   $a1, $s0, 0x0160           ## $a1 = 00000160
/* 0004C 80B2593C AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00050 80B25940 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00054 80B25944 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00058 80B25948 3C0780B2 */  lui     $a3, %hi(D_80B264E0)       ## $a3 = 80B20000
/* 0005C 80B2594C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00060 80B25950 24E764E0 */  addiu   $a3, $a3, %lo(D_80B264E0)  ## $a3 = 80B264E0
/* 00064 80B25954 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00068 80B25958 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 0006C 80B2595C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00070 80B25960 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00074 80B25964 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 00078 80B25968 0C00B58B */  jal     Actor_SetScale
              
/* 0007C 80B2596C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00080 80B25970 3C0E80B2 */  lui     $t6, %hi(func_80B2612C)    ## $t6 = 80B20000
/* 00084 80B25974 25CE612C */  addiu   $t6, $t6, %lo(func_80B2612C) ## $t6 = 80B2612C
/* 00088 80B25978 AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
/* 0008C 80B2597C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00090 80B25980 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00094 80B25984 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00098 80B25988 03E00008 */  jr      $ra                        
/* 0009C 80B2598C 00000000 */  nop


glabel func_80B25990
/* 000A0 80B25990 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000A4 80B25994 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000A8 80B25998 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000AC 80B2599C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000B0 80B259A0 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000B4 80B259A4 24C50160 */  addiu   $a1, $a2, 0x0160           ## $a1 = 00000160
/* 000B8 80B259A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000BC 80B259AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000C0 80B259B0 03E00008 */  jr      $ra                        
/* 000C4 80B259B4 00000000 */  nop


glabel func_80B259B8
/* 000C8 80B259B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000CC 80B259BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000D0 80B259C0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 000D4 80B259C4 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 000D8 80B259C8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 000DC 80B259CC 00031183 */  sra     $v0, $v1,  6               
/* 000E0 80B259D0 304203FF */  andi    $v0, $v0, 0x03FF           ## $v0 = 00000000
/* 000E4 80B259D4 00021400 */  sll     $v0, $v0, 16               
/* 000E8 80B259D8 00021403 */  sra     $v0, $v0, 16               
/* 000EC 80B259DC 0440000A */  bltz    $v0, .L80B25A08            
/* 000F0 80B259E0 2841001A */  slti    $at, $v0, 0x001A           
/* 000F4 80B259E4 10200008 */  beq     $at, $zero, .L80B25A08     
/* 000F8 80B259E8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000FC 80B259EC 306E003F */  andi    $t6, $v1, 0x003F           ## $t6 = 00000000
/* 00100 80B259F0 000E7A00 */  sll     $t7, $t6,  8               
/* 00104 80B259F4 004F3025 */  or      $a2, $v0, $t7              ## $a2 = 00000000
/* 00108 80B259F8 00063400 */  sll     $a2, $a2, 16               
/* 0010C 80B259FC 00063403 */  sra     $a2, $a2, 16               
/* 00110 80B25A00 0C007D52 */  jal     Item_DropCollectible
              
/* 00114 80B25A04 24E50024 */  addiu   $a1, $a3, 0x0024           ## $a1 = 00000024
.L80B25A08:
/* 00118 80B25A08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0011C 80B25A0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00120 80B25A10 03E00008 */  jr      $ra                        
/* 00124 80B25A14 00000000 */  nop


glabel func_80B25A18
/* 00128 80B25A18 27BDFF20 */  addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
/* 0012C 80B25A1C F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 00130 80B25A20 3C0180B2 */  lui     $at, %hi(D_80B265C0)       ## $at = 80B20000
/* 00134 80B25A24 C43E65C0 */  lwc1    $f30, %lo(D_80B265C0)($at) 
/* 00138 80B25A28 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 0013C 80B25A2C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00140 80B25A30 4481E000 */  mtc1    $at, $f28                  ## $f28 = 2.00
/* 00144 80B25A34 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 00148 80B25A38 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0014C 80B25A3C 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 00150 80B25A40 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 00154 80B25A44 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 00158 80B25A48 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0015C 80B25A4C AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00160 80B25A50 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 00164 80B25A54 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 00168 80B25A58 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 0016C 80B25A5C AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00170 80B25A60 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00174 80B25A64 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 00178 80B25A68 3C160501 */  lui     $s6, 0x0501                ## $s6 = 05010000
/* 0017C 80B25A6C 4481C000 */  mtc1    $at, $f24                  ## $f24 = 8.00
/* 00180 80B25A70 00A0F025 */  or      $s8, $a1, $zero            ## $s8 = 00000000
/* 00184 80B25A74 AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00188 80B25A78 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 0018C 80B25A7C F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 00190 80B25A80 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00194 80B25A84 26D67A60 */  addiu   $s6, $s6, 0x7A60           ## $s6 = 05017A60
/* 00198 80B25A88 24910024 */  addiu   $s1, $a0, 0x0024           ## $s1 = 00000024
/* 0019C 80B25A8C 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 001A0 80B25A90 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 001A4 80B25A94 27B400C8 */  addiu   $s4, $sp, 0x00C8           ## $s4 = FFFFFFE8
/* 001A8 80B25A98 27B500BC */  addiu   $s5, $sp, 0x00BC           ## $s5 = FFFFFFDC
/* 001AC 80B25A9C 2417000F */  addiu   $s7, $zero, 0x000F         ## $s7 = 0000000F
.L80B25AA0:
/* 001B0 80B25AA0 00122400 */  sll     $a0, $s2, 16               
/* 001B4 80B25AA4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001B8 80B25AA8 00042403 */  sra     $a0, $a0, 16               
/* 001BC 80B25AAC 00122400 */  sll     $a0, $s2, 16               
/* 001C0 80B25AB0 46000506 */  mov.s   $f20, $f0                  
/* 001C4 80B25AB4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001C8 80B25AB8 00042403 */  sra     $a0, $a0, 16               
/* 001CC 80B25ABC 4618A102 */  mul.s   $f4, $f20, $f24            
/* 001D0 80B25AC0 46000586 */  mov.s   $f22, $f0                  
/* 001D4 80B25AC4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001D8 80B25AC8 E7A400C8 */  swc1    $f4, 0x00C8($sp)           
/* 001DC 80B25ACC 461A0182 */  mul.s   $f6, $f0, $f26             
/* 001E0 80B25AD0 C7B000C8 */  lwc1    $f16, 0x00C8($sp)          
/* 001E4 80B25AD4 4618B282 */  mul.s   $f10, $f22, $f24           
/* 001E8 80B25AD8 00000000 */  nop
/* 001EC 80B25ADC 461E8482 */  mul.s   $f18, $f16, $f30           
/* 001F0 80B25AE0 461C3200 */  add.s   $f8, $f6, $f28             
/* 001F4 80B25AE4 E7AA00D0 */  swc1    $f10, 0x00D0($sp)          
/* 001F8 80B25AE8 E7A800CC */  swc1    $f8, 0x00CC($sp)           
/* 001FC 80B25AEC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00200 80B25AF0 E7B200BC */  swc1    $f18, 0x00BC($sp)          
/* 00204 80B25AF4 461A0102 */  mul.s   $f4, $f0, $f26             
/* 00208 80B25AF8 C7A800D0 */  lwc1    $f8, 0x00D0($sp)           
/* 0020C 80B25AFC C7B000C8 */  lwc1    $f16, 0x00C8($sp)          
/* 00210 80B25B00 461E4282 */  mul.s   $f10, $f8, $f30            
/* 00214 80B25B04 461C2180 */  add.s   $f6, $f4, $f28             
/* 00218 80B25B08 E7AA00C4 */  swc1    $f10, 0x00C4($sp)          
/* 0021C 80B25B0C E7A600C0 */  swc1    $f6, 0x00C0($sp)           
/* 00220 80B25B10 C6320000 */  lwc1    $f18, 0x0000($s1)          ## 00000024
/* 00224 80B25B14 C7A600CC */  lwc1    $f6, 0x00CC($sp)           
/* 00228 80B25B18 46128100 */  add.s   $f4, $f16, $f18            
/* 0022C 80B25B1C E7A400C8 */  swc1    $f4, 0x00C8($sp)           
/* 00230 80B25B20 C62A0004 */  lwc1    $f10, 0x0004($s1)          ## 00000028
/* 00234 80B25B24 460A3400 */  add.s   $f16, $f6, $f10            
/* 00238 80B25B28 E7B000CC */  swc1    $f16, 0x00CC($sp)          
/* 0023C 80B25B2C C6320008 */  lwc1    $f18, 0x0008($s1)          ## 0000002C
/* 00240 80B25B30 46124100 */  add.s   $f4, $f8, $f18             
/* 00244 80B25B34 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00248 80B25B38 E7A400D0 */  swc1    $f4, 0x00D0($sp)           
/* 0024C 80B25B3C 3C0180B2 */  lui     $at, %hi(D_80B265C4)       ## $at = 80B20000
/* 00250 80B25B40 C42665C4 */  lwc1    $f6, %lo(D_80B265C4)($at)  
/* 00254 80B25B44 3C0180B2 */  lui     $at, %hi(D_80B265C8)       ## $at = 80B20000
/* 00258 80B25B48 4606003C */  c.lt.s  $f0, $f6                   
/* 0025C 80B25B4C 00000000 */  nop
/* 00260 80B25B50 45000003 */  bc1f    .L80B25B60                 
/* 00264 80B25B54 00000000 */  nop
/* 00268 80B25B58 10000009 */  beq     $zero, $zero, .L80B25B80   
/* 0026C 80B25B5C 24100060 */  addiu   $s0, $zero, 0x0060         ## $s0 = 00000060
.L80B25B60:
/* 00270 80B25B60 C42A65C8 */  lwc1    $f10, %lo(D_80B265C8)($at) 
/* 00274 80B25B64 24100020 */  addiu   $s0, $zero, 0x0020         ## $s0 = 00000020
/* 00278 80B25B68 460A003C */  c.lt.s  $f0, $f10                  
/* 0027C 80B25B6C 00000000 */  nop
/* 00280 80B25B70 45000003 */  bc1f    .L80B25B80                 
/* 00284 80B25B74 00000000 */  nop
/* 00288 80B25B78 10000001 */  beq     $zero, $zero, .L80B25B80   
/* 0028C 80B25B7C 24100040 */  addiu   $s0, $zero, 0x0040         ## $s0 = 00000040
.L80B25B80:
/* 00290 80B25B80 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00294 80B25B84 00000000 */  nop
/* 00298 80B25B88 3C014282 */  lui     $at, 0x4282                ## $at = 42820000
/* 0029C 80B25B8C 44818000 */  mtc1    $at, $f16                  ## $f16 = 65.00
/* 002A0 80B25B90 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 002A4 80B25B94 44819000 */  mtc1    $at, $f18                  ## $f18 = 15.00
/* 002A8 80B25B98 46100202 */  mul.s   $f8, $f0, $f16             
/* 002AC 80B25B9C 240EFF10 */  addiu   $t6, $zero, 0xFF10         ## $t6 = FFFFFF10
/* 002B0 80B25BA0 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 002B4 80B25BA4 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 002B8 80B25BA8 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 002BC 80B25BAC 240A003C */  addiu   $t2, $zero, 0x003C         ## $t2 = 0000003C
/* 002C0 80B25BB0 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 002C4 80B25BB4 46124100 */  add.s   $f4, $f8, $f18             
/* 002C8 80B25BB8 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 002CC 80B25BBC AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 002D0 80B25BC0 AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 002D4 80B25BC4 4600218D */  trunc.w.s $f6, $f4                   
/* 002D8 80B25BC8 AFAA0030 */  sw      $t2, 0x0030($sp)           
/* 002DC 80B25BCC AFA9002C */  sw      $t1, 0x002C($sp)           
/* 002E0 80B25BD0 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 002E4 80B25BD4 44083000 */  mfc1    $t0, $f6                   
/* 002E8 80B25BD8 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 002EC 80B25BDC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 002F0 80B25BE0 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 002F4 80B25BE4 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFE8
/* 002F8 80B25BE8 02A03025 */  or      $a2, $s5, $zero            ## $a2 = FFFFFFDC
/* 002FC 80B25BEC 02203825 */  or      $a3, $s1, $zero            ## $a3 = 00000024
/* 00300 80B25BF0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00304 80B25BF4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00308 80B25BF8 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 0030C 80B25BFC AFB6003C */  sw      $s6, 0x003C($sp)           
/* 00310 80B25C00 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 00314 80B25C04 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00318 80B25C08 26524E20 */  addiu   $s2, $s2, 0x4E20           ## $s2 = 00004E20
/* 0031C 80B25C0C 00129400 */  sll     $s2, $s2, 16               
/* 00320 80B25C10 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00324 80B25C14 1677FFA2 */  bne     $s3, $s7, .L80B25AA0       
/* 00328 80B25C18 00129403 */  sra     $s2, $s2, 16               
/* 0032C 80B25C1C 240D0014 */  addiu   $t5, $zero, 0x0014         ## $t5 = 00000014
/* 00330 80B25C20 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 00334 80B25C24 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00338 80B25C28 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0033C 80B25C2C 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 00340 80B25C30 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000024
/* 00344 80B25C34 3C0641F0 */  lui     $a2, 0x41F0                ## $a2 = 41F00000
/* 00348 80B25C38 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 0034C 80B25C3C 0C00CD20 */  jal     func_80033480              
/* 00350 80B25C40 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00354 80B25C44 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 00358 80B25C48 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 0035C 80B25C4C D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00360 80B25C50 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 00364 80B25C54 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 00368 80B25C58 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 0036C 80B25C5C D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 00370 80B25C60 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 00374 80B25C64 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 00378 80B25C68 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 0037C 80B25C6C 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 00380 80B25C70 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00384 80B25C74 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 00388 80B25C78 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 0038C 80B25C7C 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 00390 80B25C80 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 00394 80B25C84 03E00008 */  jr      $ra                        
/* 00398 80B25C88 27BD00E0 */  addiu   $sp, $sp, 0x00E0           ## $sp = 00000000


glabel func_80B25C8C
/* 0039C 80B25C8C 27BDFF20 */  addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
/* 003A0 80B25C90 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 003A4 80B25C94 AFBF009C */  sw      $ra, 0x009C($sp)           
/* 003A8 80B25C98 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 003AC 80B25C9C AFB70094 */  sw      $s7, 0x0094($sp)           
/* 003B0 80B25CA0 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 003B4 80B25CA4 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 003B8 80B25CA8 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 003BC 80B25CAC AFB30084 */  sw      $s3, 0x0084($sp)           
/* 003C0 80B25CB0 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 003C4 80B25CB4 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 003C8 80B25CB8 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 003CC 80B25CBC F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 003D0 80B25CC0 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 003D4 80B25CC4 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 003D8 80B25CC8 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 003DC 80B25CCC F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 003E0 80B25CD0 24910024 */  addiu   $s1, $a0, 0x0024           ## $s1 = 00000024
/* 003E4 80B25CD4 8E2F0000 */  lw      $t7, 0x0000($s1)           ## 00000024
/* 003E8 80B25CD8 27B500C8 */  addiu   $s5, $sp, 0x00C8           ## $s5 = FFFFFFE8
/* 003EC 80B25CDC 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 003F0 80B25CE0 AEAF0000 */  sw      $t7, 0x0000($s5)           ## FFFFFFE8
/* 003F4 80B25CE4 8E2E0004 */  lw      $t6, 0x0004($s1)           ## 00000028
/* 003F8 80B25CE8 24180190 */  addiu   $t8, $zero, 0x0190         ## $t8 = 00000190
/* 003FC 80B25CEC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00400 80B25CF0 AEAE0004 */  sw      $t6, 0x0004($s5)           ## FFFFFFEC
/* 00404 80B25CF4 8E2F0008 */  lw      $t7, 0x0008($s1)           ## 0000002C
/* 00408 80B25CF8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0040C 80B25CFC AEAF0008 */  sw      $t7, 0x0008($s5)           ## FFFFFFF0
/* 00410 80B25D00 C7A400CC */  lwc1    $f4, 0x00CC($sp)           
/* 00414 80B25D04 C4860084 */  lwc1    $f6, 0x0084($a0)           ## 00000084
/* 00418 80B25D08 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0041C 80B25D0C 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFE8
/* 00420 80B25D10 46062200 */  add.s   $f8, $f4, $f6              
/* 00424 80B25D14 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00428 80B25D18 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0042C 80B25D1C 0C00A527 */  jal     func_8002949C              
/* 00430 80B25D20 E7A800CC */  swc1    $f8, 0x00CC($sp)           
/* 00434 80B25D24 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00438 80B25D28 4481F000 */  mtc1    $at, $f30                  ## $f30 = 5.00
/* 0043C 80B25D2C 3C0180B2 */  lui     $at, %hi(D_80B265CC)       ## $at = 80B20000
/* 00440 80B25D30 C43C65CC */  lwc1    $f28, %lo(D_80B265CC)($at) 
/* 00444 80B25D34 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00448 80B25D38 4481D000 */  mtc1    $at, $f26                  ## $f26 = 2.00
/* 0044C 80B25D3C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00450 80B25D40 3C170501 */  lui     $s7, 0x0501                ## $s7 = 05010000
/* 00454 80B25D44 4481C000 */  mtc1    $at, $f24                  ## $f24 = 8.00
/* 00458 80B25D48 26F77A60 */  addiu   $s7, $s7, 0x7A60           ## $s7 = 05017A60
/* 0045C 80B25D4C 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00460 80B25D50 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00464 80B25D54 241E000F */  addiu   $s8, $zero, 0x000F         ## $s8 = 0000000F
/* 00468 80B25D58 27B600BC */  addiu   $s6, $sp, 0x00BC           ## $s6 = FFFFFFDC
.L80B25D5C:
/* 0046C 80B25D5C 00122400 */  sll     $a0, $s2, 16               
/* 00470 80B25D60 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00474 80B25D64 00042403 */  sra     $a0, $a0, 16               
/* 00478 80B25D68 00122400 */  sll     $a0, $s2, 16               
/* 0047C 80B25D6C 46000506 */  mov.s   $f20, $f0                  
/* 00480 80B25D70 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00484 80B25D74 00042403 */  sra     $a0, $a0, 16               
/* 00488 80B25D78 4618A282 */  mul.s   $f10, $f20, $f24           
/* 0048C 80B25D7C 46000586 */  mov.s   $f22, $f0                  
/* 00490 80B25D80 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00494 80B25D84 E7AA00C8 */  swc1    $f10, 0x00C8($sp)          
/* 00498 80B25D88 461E0402 */  mul.s   $f16, $f0, $f30            
/* 0049C 80B25D8C C7A600C8 */  lwc1    $f6, 0x00C8($sp)           
/* 004A0 80B25D90 4618B102 */  mul.s   $f4, $f22, $f24            
/* 004A4 80B25D94 00000000 */  nop
/* 004A8 80B25D98 461C3202 */  mul.s   $f8, $f6, $f28             
/* 004AC 80B25D9C 461A8480 */  add.s   $f18, $f16, $f26           
/* 004B0 80B25DA0 E7A400D0 */  swc1    $f4, 0x00D0($sp)           
/* 004B4 80B25DA4 E7B200CC */  swc1    $f18, 0x00CC($sp)          
/* 004B8 80B25DA8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 004BC 80B25DAC E7A800BC */  swc1    $f8, 0x00BC($sp)           
/* 004C0 80B25DB0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 004C4 80B25DB4 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 004C8 80B25DB8 C7A400D0 */  lwc1    $f4, 0x00D0($sp)           
/* 004CC 80B25DBC C7A800C8 */  lwc1    $f8, 0x00C8($sp)           
/* 004D0 80B25DC0 460A0402 */  mul.s   $f16, $f0, $f10            
/* 004D4 80B25DC4 461A8480 */  add.s   $f18, $f16, $f26           
/* 004D8 80B25DC8 461C2182 */  mul.s   $f6, $f4, $f28             
/* 004DC 80B25DCC E7B200C0 */  swc1    $f18, 0x00C0($sp)          
/* 004E0 80B25DD0 C7B200CC */  lwc1    $f18, 0x00CC($sp)          
/* 004E4 80B25DD4 E7A600C4 */  swc1    $f6, 0x00C4($sp)           
/* 004E8 80B25DD8 C62A0000 */  lwc1    $f10, 0x0000($s1)          ## 00000024
/* 004EC 80B25DDC 460A4400 */  add.s   $f16, $f8, $f10            
/* 004F0 80B25DE0 E7B000C8 */  swc1    $f16, 0x00C8($sp)          
/* 004F4 80B25DE4 C6260004 */  lwc1    $f6, 0x0004($s1)           ## 00000028
/* 004F8 80B25DE8 46069200 */  add.s   $f8, $f18, $f6             
/* 004FC 80B25DEC E7A800CC */  swc1    $f8, 0x00CC($sp)           
/* 00500 80B25DF0 C62A0008 */  lwc1    $f10, 0x0008($s1)          ## 0000002C
/* 00504 80B25DF4 460A2400 */  add.s   $f16, $f4, $f10            
/* 00508 80B25DF8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0050C 80B25DFC E7B000D0 */  swc1    $f16, 0x00D0($sp)          
/* 00510 80B25E00 3C0180B2 */  lui     $at, %hi(D_80B265D0)       ## $at = 80B20000
/* 00514 80B25E04 C43265D0 */  lwc1    $f18, %lo(D_80B265D0)($at) 
/* 00518 80B25E08 24100020 */  addiu   $s0, $zero, 0x0020         ## $s0 = 00000020
/* 0051C 80B25E0C 4612003C */  c.lt.s  $f0, $f18                  
/* 00520 80B25E10 00000000 */  nop
/* 00524 80B25E14 45000003 */  bc1f    .L80B25E24                 
/* 00528 80B25E18 00000000 */  nop
/* 0052C 80B25E1C 10000001 */  beq     $zero, $zero, .L80B25E24   
/* 00530 80B25E20 24100040 */  addiu   $s0, $zero, 0x0040         ## $s0 = 00000040
.L80B25E24:
/* 00534 80B25E24 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00538 80B25E28 00000000 */  nop
/* 0053C 80B25E2C 3C014282 */  lui     $at, 0x4282                ## $at = 42820000
/* 00540 80B25E30 44813000 */  mtc1    $at, $f6                   ## $f6 = 65.00
/* 00544 80B25E34 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00548 80B25E38 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 0054C 80B25E3C 46060202 */  mul.s   $f8, $f0, $f6              
/* 00550 80B25E40 2419FF4C */  addiu   $t9, $zero, 0xFF4C         ## $t9 = FFFFFF4C
/* 00554 80B25E44 2408001E */  addiu   $t0, $zero, 0x001E         ## $t0 = 0000001E
/* 00558 80B25E48 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 0055C 80B25E4C 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 00560 80B25E50 240D0046 */  addiu   $t5, $zero, 0x0046         ## $t5 = 00000046
/* 00564 80B25E54 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 00568 80B25E58 46044280 */  add.s   $f10, $f8, $f4             
/* 0056C 80B25E5C 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00570 80B25E60 AFAF0038 */  sw      $t7, 0x0038($sp)           
/* 00574 80B25E64 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 00578 80B25E68 4600540D */  trunc.w.s $f16, $f10                 
/* 0057C 80B25E6C AFAD0030 */  sw      $t5, 0x0030($sp)           
/* 00580 80B25E70 AFAC002C */  sw      $t4, 0x002C($sp)           
/* 00584 80B25E74 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 00588 80B25E78 440B8000 */  mfc1    $t3, $f16                  
/* 0058C 80B25E7C AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00590 80B25E80 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00594 80B25E84 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00598 80B25E88 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFE8
/* 0059C 80B25E8C 02C03025 */  or      $a2, $s6, $zero            ## $a2 = FFFFFFDC
/* 005A0 80B25E90 02203825 */  or      $a3, $s1, $zero            ## $a3 = 00000024
/* 005A4 80B25E94 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 005A8 80B25E98 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 005AC 80B25E9C AFA00028 */  sw      $zero, 0x0028($sp)         
/* 005B0 80B25EA0 AFB7003C */  sw      $s7, 0x003C($sp)           
/* 005B4 80B25EA4 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 005B8 80B25EA8 AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 005BC 80B25EAC 26524E20 */  addiu   $s2, $s2, 0x4E20           ## $s2 = 00004E20
/* 005C0 80B25EB0 00129400 */  sll     $s2, $s2, 16               
/* 005C4 80B25EB4 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 005C8 80B25EB8 167EFFA8 */  bne     $s3, $s8, .L80B25D5C       
/* 005CC 80B25EBC 00129403 */  sra     $s2, $s2, 16               
/* 005D0 80B25EC0 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 005D4 80B25EC4 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 005D8 80B25EC8 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 005DC 80B25ECC D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 005E0 80B25ED0 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 005E4 80B25ED4 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 005E8 80B25ED8 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 005EC 80B25EDC 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 005F0 80B25EE0 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 005F4 80B25EE4 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 005F8 80B25EE8 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 005FC 80B25EEC 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00600 80B25EF0 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 00604 80B25EF4 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 00608 80B25EF8 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 0060C 80B25EFC 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 00610 80B25F00 03E00008 */  jr      $ra                        
/* 00614 80B25F04 27BD00E0 */  addiu   $sp, $sp, 0x00E0           ## $sp = 00000000


glabel func_80B25F08
/* 00618 80B25F08 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0061C 80B25F0C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00620 80B25F10 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00624 80B25F14 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00628 80B25F18 8CA61C44 */  lw      $a2, 0x1C44($a1)           ## 00001C44
/* 0062C 80B25F1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00630 80B25F20 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00634 80B25F24 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00638 80B25F28 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 0063C 80B25F2C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00640 80B25F30 31CF0020 */  andi    $t7, $t6, 0x0020           ## $t7 = 00000000
/* 00644 80B25F34 51E00016 */  beql    $t7, $zero, .L80B25F90     
/* 00648 80B25F38 92020170 */  lbu     $v0, 0x0170($s0)           ## 00000170
/* 0064C 80B25F3C 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 00650 80B25F40 C4860084 */  lwc1    $f6, 0x0084($a0)           ## 00000084
/* 00654 80B25F44 4606203C */  c.lt.s  $f4, $f6                   
/* 00658 80B25F48 00000000 */  nop
/* 0065C 80B25F4C 45020010 */  bc1fl   .L80B25F90                 
/* 00660 80B25F50 92020170 */  lbu     $v0, 0x0170($s0)           ## 00000170
/* 00664 80B25F54 0C2C9723 */  jal     func_80B25C8C              
/* 00668 80B25F58 00000000 */  nop
/* 0066C 80B25F5C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00670 80B25F60 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00674 80B25F64 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00678 80B25F68 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 0067C 80B25F6C 24072817 */  addiu   $a3, $zero, 0x2817         ## $a3 = 00002817
/* 00680 80B25F70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00684 80B25F74 0C2C966E */  jal     func_80B259B8              
/* 00688 80B25F78 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0068C 80B25F7C 0C00B55C */  jal     Actor_Kill
              
/* 00690 80B25F80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00694 80B25F84 10000065 */  beq     $zero, $zero, .L80B2611C   
/* 00698 80B25F88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0069C 80B25F8C 92020170 */  lbu     $v0, 0x0170($s0)           ## 00000170
.L80B25F90:
/* 006A0 80B25F90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006A4 80B25F94 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 006A8 80B25F98 30580004 */  andi    $t8, $v0, 0x0004           ## $t8 = 00000000
/* 006AC 80B25F9C 13000015 */  beq     $t8, $zero, .L80B25FF4     
/* 006B0 80B25FA0 3059FFFB */  andi    $t9, $v0, 0xFFFB           ## $t9 = 00000000
/* 006B4 80B25FA4 0C2C9686 */  jal     func_80B25A18              
/* 006B8 80B25FA8 A2190170 */  sb      $t9, 0x0170($s0)           ## 00000170
/* 006BC 80B25FAC 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 006C0 80B25FB0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 006C4 80B25FB4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006C8 80B25FB8 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 006CC 80B25FBC 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 006D0 80B25FC0 24071808 */  addiu   $a3, $zero, 0x1808         ## $a3 = 00001808
/* 006D4 80B25FC4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 006D8 80B25FC8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006DC 80B25FCC 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 006E0 80B25FD0 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 006E4 80B25FD4 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 006E8 80B25FD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006EC 80B25FDC 0C2C966E */  jal     func_80B259B8              
/* 006F0 80B25FE0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 006F4 80B25FE4 0C00B55C */  jal     Actor_Kill
              
/* 006F8 80B25FE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006FC 80B25FEC 1000004B */  beq     $zero, $zero, .L80B2611C   
/* 00700 80B25FF0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B25FF4:
/* 00704 80B25FF4 92030171 */  lbu     $v1, 0x0171($s0)           ## 00000171
/* 00708 80B25FF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0070C 80B25FFC 304A0002 */  andi    $t2, $v0, 0x0002           ## $t2 = 00000000
/* 00710 80B26000 30680002 */  andi    $t0, $v1, 0x0002           ## $t0 = 00000000
/* 00714 80B26004 11000016 */  beq     $t0, $zero, .L80B26060     
/* 00718 80B26008 3069FFFD */  andi    $t1, $v1, 0xFFFD           ## $t1 = 00000000
/* 0071C 80B2600C A2090171 */  sb      $t1, 0x0171($s0)           ## 00000171
/* 00720 80B26010 0C2C9686 */  jal     func_80B25A18              
/* 00724 80B26014 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00728 80B26018 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 0072C 80B2601C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00730 80B26020 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00734 80B26024 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00738 80B26028 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 0073C 80B2602C 24072802 */  addiu   $a3, $zero, 0x2802         ## $a3 = 00002802
/* 00740 80B26030 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00744 80B26034 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00748 80B26038 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 0074C 80B2603C 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00750 80B26040 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 00754 80B26044 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00758 80B26048 0C2C966E */  jal     func_80B259B8              
/* 0075C 80B2604C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00760 80B26050 0C00B55C */  jal     Actor_Kill
              
/* 00764 80B26054 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00768 80B26058 10000030 */  beq     $zero, $zero, .L80B2611C   
/* 0076C 80B2605C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B26060:
/* 00770 80B26060 5140001B */  beql    $t2, $zero, .L80B260D0     
/* 00774 80B26064 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00778 80B26068 8E0C0164 */  lw      $t4, 0x0164($s0)           ## 00000164
/* 0077C 80B2606C 304BFFFD */  andi    $t3, $v0, 0xFFFD           ## $t3 = 00000000
/* 00780 80B26070 A20B0170 */  sb      $t3, 0x0170($s0)           ## 00000170
/* 00784 80B26074 14CC0015 */  bne     $a2, $t4, .L80B260CC       
/* 00788 80B26078 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0078C 80B2607C 0C2C9686 */  jal     func_80B25A18              
/* 00790 80B26080 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00794 80B26084 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00798 80B26088 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 0079C 80B2608C 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 007A0 80B26090 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 007A4 80B26094 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 007A8 80B26098 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 007AC 80B2609C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 007B0 80B260A0 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 007B4 80B260A4 2407083E */  addiu   $a3, $zero, 0x083E         ## $a3 = 0000083E
/* 007B8 80B260A8 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 007BC 80B260AC 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 007C0 80B260B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007C4 80B260B4 0C2C966E */  jal     func_80B259B8              
/* 007C8 80B260B8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 007CC 80B260BC 0C00B55C */  jal     Actor_Kill
              
/* 007D0 80B260C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007D4 80B260C4 10000015 */  beq     $zero, $zero, .L80B2611C   
/* 007D8 80B260C8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B260CC:
/* 007DC 80B260CC 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
.L80B260D0:
/* 007E0 80B260D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007E4 80B260D4 304D0008 */  andi    $t5, $v0, 0x0008           ## $t5 = 00000000
/* 007E8 80B260D8 15A00003 */  bne     $t5, $zero, .L80B260E8     
/* 007EC 80B260DC 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 007F0 80B260E0 51C0000E */  beql    $t6, $zero, .L80B2611C     
/* 007F4 80B260E4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B260E8:
/* 007F8 80B260E8 0C2C9686 */  jal     func_80B25A18              
/* 007FC 80B260EC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00800 80B260F0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00804 80B260F4 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00808 80B260F8 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 0080C 80B260FC 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00810 80B26100 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 00814 80B26104 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00818 80B26108 0C2C966E */  jal     func_80B259B8              
/* 0081C 80B2610C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00820 80B26110 0C00B55C */  jal     Actor_Kill
              
/* 00824 80B26114 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00828 80B26118 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B2611C:
/* 0082C 80B2611C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00830 80B26120 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00834 80B26124 03E00008 */  jr      $ra                        
/* 00838 80B26128 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


glabel func_80B2612C
/* 0083C 80B2612C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00840 80B26130 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00844 80B26134 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00848 80B26138 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0084C 80B2613C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00850 80B26140 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 00854 80B26144 8F18FA90 */  lw      $t8, -0x0570($t8)          ## 8015FA90
/* 00858 80B26148 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 0085C 80B2614C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00860 80B26150 871912D8 */  lh      $t9, 0x12D8($t8)           ## 801612D8
/* 00864 80B26154 53200016 */  beql    $t9, $zero, .L80B261B0     
/* 00868 80B26158 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0086C 80B2615C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00870 80B26160 3C0480B2 */  lui     $a0, %hi(D_80B26564)       ## $a0 = 80B20000
/* 00874 80B26164 24846564 */  addiu   $a0, $a0, %lo(D_80B26564)  ## $a0 = 80B26564
/* 00878 80B26168 460021A1 */  cvt.d.s $f6, $f4                   
/* 0087C 80B2616C 44073000 */  mfc1    $a3, $f6                   
/* 00880 80B26170 44063800 */  mfc1    $a2, $f7                   
/* 00884 80B26174 0C00084C */  jal     osSyncPrintf
              
/* 00888 80B26178 00000000 */  nop
/* 0088C 80B2617C 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 00890 80B26180 3C0480B2 */  lui     $a0, %hi(D_80B26590)       ## $a0 = 80B20000
/* 00894 80B26184 24846590 */  addiu   $a0, $a0, %lo(D_80B26590)  ## $a0 = 80B26590
/* 00898 80B26188 C5080028 */  lwc1    $f8, 0x0028($t0)           ## 00000028
/* 0089C 80B2618C 460042A1 */  cvt.d.s $f10, $f8                  
/* 008A0 80B26190 44075000 */  mfc1    $a3, $f10                  
/* 008A4 80B26194 44065800 */  mfc1    $a2, $f11                  
/* 008A8 80B26198 0C00084C */  jal     osSyncPrintf
              
/* 008AC 80B2619C 00000000 */  nop
/* 008B0 80B261A0 3C0480B2 */  lui     $a0, %hi(D_80B265BC)       ## $a0 = 80B20000
/* 008B4 80B261A4 0C00084C */  jal     osSyncPrintf
              
/* 008B8 80B261A8 248465BC */  addiu   $a0, $a0, %lo(D_80B265BC)  ## $a0 = 80B265BC
/* 008BC 80B261AC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
.L80B261B0:
/* 008C0 80B261B0 44819000 */  mtc1    $at, $f18                  ## $f18 = 200.00
/* 008C4 80B261B4 C6100090 */  lwc1    $f16, 0x0090($s0)          ## 00000090
/* 008C8 80B261B8 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 008CC 80B261BC 4612803C */  c.lt.s  $f16, $f18                 
/* 008D0 80B261C0 00000000 */  nop
/* 008D4 80B261C4 45020031 */  bc1fl   .L80B2628C                 
/* 008D8 80B261C8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008DC 80B261CC C5240028 */  lwc1    $f4, 0x0028($t1)           ## 00000028
/* 008E0 80B261D0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 008E4 80B261D4 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 008E8 80B261D8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 008EC 80B261DC 4604303E */  c.le.s  $f6, $f4                   
/* 008F0 80B261E0 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 008F4 80B261E4 45020029 */  bc1fl   .L80B2628C                 
/* 008F8 80B261E8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008FC 80B261EC 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00900 80B261F0 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 00904 80B261F4 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 00908 80B261F8 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 0090C 80B261FC 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00910 80B26200 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 00914 80B26204 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 00918 80B26208 8DADE664 */  lw      $t5, -0x199C($t5)          ## 8015E664
/* 0091C 80B2620C 44818000 */  mtc1    $at, $f16                  ## $f16 = -10.00
/* 00920 80B26210 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00924 80B26214 448D4000 */  mtc1    $t5, $f8                   ## $f8 = -0.00
/* 00928 80B26218 44812000 */  mtc1    $at, $f4                   ## $f4 = 40.00
/* 0092C 80B2621C 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 00930 80B26220 468042A0 */  cvt.s.w $f10, $f8                  
/* 00934 80B26224 C6000028 */  lwc1    $f0, 0x0028($s0)           ## 00000028
/* 00938 80B26228 C5C60028 */  lwc1    $f6, 0x0028($t6)           ## 00000028
/* 0093C 80B2622C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00940 80B26230 46105482 */  mul.s   $f18, $f10, $f16           
/* 00944 80B26234 46049080 */  add.s   $f2, $f18, $f4             
/* 00948 80B26238 46023200 */  add.s   $f8, $f6, $f2              
/* 0094C 80B2623C E6080150 */  swc1    $f8, 0x0150($s0)           ## 00000150
/* 00950 80B26240 C60A0150 */  lwc1    $f10, 0x0150($s0)          ## 00000150
/* 00954 80B26244 4600503C */  c.lt.s  $f10, $f0                  
/* 00958 80B26248 00000000 */  nop
/* 0095C 80B2624C 45020004 */  bc1fl   .L80B26260                 
/* 00960 80B26250 8E180024 */  lw      $t8, 0x0024($s0)           ## 00000024
/* 00964 80B26254 46020400 */  add.s   $f16, $f0, $f2             
/* 00968 80B26258 E6100150 */  swc1    $f16, 0x0150($s0)          ## 00000150
/* 0096C 80B2625C 8E180024 */  lw      $t8, 0x0024($s0)           ## 00000024
.L80B26260:
/* 00970 80B26260 8E0F0028 */  lw      $t7, 0x0028($s0)           ## 00000028
/* 00974 80B26264 240528C4 */  addiu   $a1, $zero, 0x28C4         ## $a1 = 000028C4
/* 00978 80B26268 AE180154 */  sw      $t8, 0x0154($s0)           ## 00000154
/* 0097C 80B2626C 8E18002C */  lw      $t8, 0x002C($s0)           ## 0000002C
/* 00980 80B26270 AE0F0158 */  sw      $t7, 0x0158($s0)           ## 00000158
/* 00984 80B26274 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00988 80B26278 AE18015C */  sw      $t8, 0x015C($s0)           ## 0000015C
/* 0098C 80B2627C 3C1980B2 */  lui     $t9, %hi(func_80B2629C)    ## $t9 = 80B20000
/* 00990 80B26280 2739629C */  addiu   $t9, $t9, %lo(func_80B2629C) ## $t9 = 80B2629C
/* 00994 80B26284 AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
/* 00998 80B26288 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B2628C:
/* 0099C 80B2628C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 009A0 80B26290 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 009A4 80B26294 03E00008 */  jr      $ra                        
/* 009A8 80B26298 00000000 */  nop


glabel func_80B2629C
/* 009AC 80B2629C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 009B0 80B262A0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009B4 80B262A4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 009B8 80B262A8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 009BC 80B262AC 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 009C0 80B262B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009C4 80B262B4 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 009C8 80B262B8 25CF1388 */  addiu   $t7, $t6, 0x1388           ## $t7 = 00001388
/* 009CC 80B262BC A48F00B6 */  sh      $t7, 0x00B6($a0)           ## 000000B6
/* 009D0 80B262C0 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 009D4 80B262C4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 009D8 80B262C8 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 009DC 80B262CC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 009E0 80B262D0 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 009E4 80B262D4 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 009E8 80B262D8 C6060150 */  lwc1    $f6, 0x0150($s0)           ## 00000150
/* 009EC 80B262DC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 009F0 80B262E0 44811000 */  mtc1    $at, $f2                   ## $f2 = 10.00
/* 009F4 80B262E4 46062001 */  sub.s   $f0, $f4, $f6              
/* 009F8 80B262E8 3C1980B2 */  lui     $t9, %hi(func_80B26328)    ## $t9 = 80B20000
/* 009FC 80B262EC 27396328 */  addiu   $t9, $t9, %lo(func_80B26328) ## $t9 = 80B26328
/* 00A00 80B262F0 46000005 */  abs.s   $f0, $f0                   
/* 00A04 80B262F4 4602003C */  c.lt.s  $f0, $f2                   
/* 00A08 80B262F8 00000000 */  nop
/* 00A0C 80B262FC 45020006 */  bc1fl   .L80B26318                 
/* 00A10 80B26300 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A14 80B26304 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 00A18 80B26308 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 00A1C 80B2630C AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
/* 00A20 80B26310 A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 00A24 80B26314 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B26318:
/* 00A28 80B26318 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A2C 80B2631C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A30 80B26320 03E00008 */  jr      $ra                        
/* 00A34 80B26324 00000000 */  nop


glabel func_80B26328
/* 00A38 80B26328 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00A3C 80B2632C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A40 80B26330 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A44 80B26334 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00A48 80B26338 C4920154 */  lwc1    $f18, 0x0154($a0)          ## 00000154
/* 00A4C 80B2633C C4900024 */  lwc1    $f16, 0x0024($a0)          ## 00000024
/* 00A50 80B26340 C48E0158 */  lwc1    $f14, 0x0158($a0)          ## 00000158
/* 00A54 80B26344 C48C0028 */  lwc1    $f12, 0x0028($a0)          ## 00000028
/* 00A58 80B26348 46109401 */  sub.s   $f16, $f18, $f16           
/* 00A5C 80B2634C C492015C */  lwc1    $f18, 0x015C($a0)          ## 0000015C
/* 00A60 80B26350 C48A002C */  lwc1    $f10, 0x002C($a0)          ## 0000002C
/* 00A64 80B26354 460C7301 */  sub.s   $f12, $f14, $f12           
/* 00A68 80B26358 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A6C 80B2635C E7B0002C */  swc1    $f16, 0x002C($sp)          
/* 00A70 80B26360 460A9281 */  sub.s   $f10, $f18, $f10           
/* 00A74 80B26364 E7AC0028 */  swc1    $f12, 0x0028($sp)          
/* 00A78 80B26368 24053037 */  addiu   $a1, $zero, 0x3037         ## $a1 = 00003037
/* 00A7C 80B2636C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A80 80B26370 E7AA0024 */  swc1    $f10, 0x0024($sp)          
/* 00A84 80B26374 C7A2002C */  lwc1    $f2, 0x002C($sp)           
/* 00A88 80B26378 C7AC0028 */  lwc1    $f12, 0x0028($sp)          
/* 00A8C 80B2637C C7AE0024 */  lwc1    $f14, 0x0024($sp)          
/* 00A90 80B26380 46021102 */  mul.s   $f4, $f2, $f2              
/* 00A94 80B26384 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 00A98 80B26388 44818000 */  mtc1    $at, $f16                  ## $f16 = 240.00
/* 00A9C 80B2638C 460C6182 */  mul.s   $f6, $f12, $f12            
/* 00AA0 80B26390 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00AA4 80B26394 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00AA8 80B26398 460E7282 */  mul.s   $f10, $f14, $f14           
/* 00AAC 80B2639C 2604006C */  addiu   $a0, $s0, 0x006C           ## $a0 = 0000006C
/* 00AB0 80B263A0 3C05C040 */  lui     $a1, 0xC040                ## $a1 = C0400000
/* 00AB4 80B263A4 46062200 */  add.s   $f8, $f4, $f6              
/* 00AB8 80B263A8 460A4000 */  add.s   $f0, $f8, $f10             
/* 00ABC 80B263AC 46000004 */  sqrt.s  $f0, $f0                   
/* 00AC0 80B263B0 4600803C */  c.lt.s  $f16, $f0                  
/* 00AC4 80B263B4 00000000 */  nop
/* 00AC8 80B263B8 45020004 */  bc1fl   .L80B263CC                 
/* 00ACC 80B263BC 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 00AD0 80B263C0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00AD4 80B263C4 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 00AD8 80B263C8 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
.L80B263CC:
/* 00ADC 80B263CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AE0 80B263D0 25CF1388 */  addiu   $t7, $t6, 0x1388           ## $t7 = 00001388
/* 00AE4 80B263D4 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 00AE8 80B263D8 0C2C97C2 */  jal     func_80B25F08              
/* 00AEC 80B263DC 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00AF0 80B263E0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AF4 80B263E4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00AF8 80B263E8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00AFC 80B263EC 03E00008 */  jr      $ra                        
/* 00B00 80B263F0 00000000 */  nop


glabel func_80B263F4
/* 00B04 80B263F4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00B08 80B263F8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00B0C 80B263FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B10 80B26400 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B14 80B26404 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00B18 80B26408 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00B1C 80B2640C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00B20 80B26410 0320F809 */  jalr    $ra, $t9                   
/* 00B24 80B26414 00000000 */  nop
/* 00B28 80B26418 0C00B638 */  jal     Actor_MoveForward
              
/* 00B2C 80B2641C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B30 80B26420 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00B34 80B26424 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 00B38 80B26428 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00B3C 80B2642C 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 00B40 80B26430 240E001D */  addiu   $t6, $zero, 0x001D         ## $t6 = 0000001D
/* 00B44 80B26434 44060000 */  mfc1    $a2, $f0                   
/* 00B48 80B26438 44070000 */  mfc1    $a3, $f0                   
/* 00B4C 80B2643C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00B50 80B26440 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B54 80B26444 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B58 80B26448 0C00B92D */  jal     func_8002E4B4              
/* 00B5C 80B2644C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00B60 80B26450 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B64 80B26454 0C00B56E */  jal     Actor_SetHeight
              
/* 00B68 80B26458 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00B6C 80B2645C 26050160 */  addiu   $a1, $s0, 0x0160           ## $a1 = 00000160
/* 00B70 80B26460 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00B74 80B26464 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00B78 80B26468 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B7C 80B2646C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B80 80B26470 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00B84 80B26474 02212821 */  addu    $a1, $s1, $at              
/* 00B88 80B26478 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00B8C 80B2647C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B90 80B26480 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00B94 80B26484 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00B98 80B26488 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00B9C 80B2648C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00BA0 80B26490 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00BA4 80B26494 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00BA8 80B26498 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00BAC 80B2649C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00BB0 80B264A0 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00BB4 80B264A4 03E00008 */  jr      $ra                        
/* 00BB8 80B264A8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


glabel func_80B264AC
/* 00BBC 80B264AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BC0 80B264B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00BC4 80B264B4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00BC8 80B264B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BCC 80B264BC 3C050501 */  lui     $a1, 0x0501                ## $a1 = 05010000
/* 00BD0 80B264C0 0C00D498 */  jal     Draw_DListOpa
              
/* 00BD4 80B264C4 24A57870 */  addiu   $a1, $a1, 0x7870           ## $a1 = 05017870
/* 00BD8 80B264C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BDC 80B264CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BE0 80B264D0 03E00008 */  jr      $ra                        
/* 00BE4 80B264D4 00000000 */  nop
/* 00BE8 80B264D8 00000000 */  nop
/* 00BEC 80B264DC 00000000 */  nop

.section .data

D_80B264E0: .word 0x0A110900, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, 0x00000000, 0x01010000, 0x00090017, 0x00000000, 0x00000000
D_80B2650C: .word 0x011D0600, 0x00000010, 0x00030000, 0x000001AC
.word func_80B258F0
.word func_80B25990
.word func_80B263F4
.word func_80B264AC
.word 0x00000000

.section .rodata

D_80B26530: .word 0x0A0A0000
D_80B26534:
    .asciz "[32m☆☆☆☆☆ 壷トラップ ☆☆☆☆☆ %x\n[m"
    .balign 4

.balign 4

D_80B26564:
    .asciz "[32m☆☆☆☆☆ わて     ☆☆☆☆☆ %f\n[m"
    .balign 4

D_80B26590:
    .asciz "[32m☆☆☆☆☆ おいどん ☆☆☆☆☆ %f\n[m"
    .balign 4

D_80B265BC: .word 0x0A0A0000
D_80B265C0: .word 0x3E6B851F
D_80B265C4: .word 0x3E4CCCCD
D_80B265C8: .word 0x3F19999A
D_80B265CC: .word 0x3E4CCCCD
D_80B265D0: .word 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000


.section .rodata
D_80B265E0:
.incbin "baserom/ovl_En_Tubo_Trap", 0xCF0, 0x000000D0
