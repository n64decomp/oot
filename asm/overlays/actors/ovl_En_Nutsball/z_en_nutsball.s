.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text
glabel func_80ABBA50
/* 00000 80ABBA50 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80ABBA54 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00008 80ABBA58 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 80ABBA5C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 80ABBA60 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00014 80ABBA64 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00018 80ABBA68 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0001C 80ABBA6C 3C0543C8 */  lui     $a1, 0x43C8                ## $a1 = 43C80000
/* 00020 80ABBA70 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00024 80ABBA74 0C00AC78 */  jal     Actor_InitShadow
              
/* 00028 80ABBA78 3C074150 */  lui     $a3, 0x4150                ## $a3 = 41500000
/* 0002C 80ABBA7C 26050154 */  addiu   $a1, $s0, 0x0154           ## $a1 = 00000154
/* 00030 80ABBA80 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00034 80ABBA84 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00038 80ABBA88 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0003C 80ABBA8C 3C0780AC */  lui     $a3, %hi(D_80ABBFC0)       ## $a3 = 80AC0000
/* 00040 80ABBA90 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00044 80ABBA94 24E7BFC0 */  addiu   $a3, $a3, %lo(D_80ABBFC0)  ## $a3 = 80ABBFC0
/* 00048 80ABBA98 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0004C 80ABBA9C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00050 80ABBAA0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00054 80ABBAA4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00058 80ABBAA8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0005C 80ABBAAC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00060 80ABBAB0 3C0580AC */  lui     $a1, %hi(D_80ABBFEC)       ## $a1 = 80AC0000
/* 00064 80ABBAB4 000E7840 */  sll     $t7, $t6,  1               
/* 00068 80ABBAB8 00AF2821 */  addu    $a1, $a1, $t7              
/* 0006C 80ABBABC 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00070 80ABBAC0 84A5BFEC */  lh      $a1, %lo(D_80ABBFEC)($a1)  
/* 00074 80ABBAC4 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00078 80ABBAC8 00812021 */  addu    $a0, $a0, $at              
/* 0007C 80ABBACC A2020150 */  sb      $v0, 0x0150($s0)           ## 00000150
/* 00080 80ABBAD0 82180150 */  lb      $t8, 0x0150($s0)           ## 00000150
/* 00084 80ABBAD4 3C1980AC */  lui     $t9, %hi(func_80ABBB34)    ## $t9 = 80AC0000
/* 00088 80ABBAD8 2739BB34 */  addiu   $t9, $t9, %lo(func_80ABBB34) ## $t9 = 80ABBB34
/* 0008C 80ABBADC 07030006 */  bgezl   $t8, .L80ABBAF8            
/* 00090 80ABBAE0 AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
/* 00094 80ABBAE4 0C00B55C */  jal     Actor_Kill
              
/* 00098 80ABBAE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0009C 80ABBAEC 10000003 */  beq     $zero, $zero, .L80ABBAFC   
/* 000A0 80ABBAF0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000A4 80ABBAF4 AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
.L80ABBAF8:
/* 000A8 80ABBAF8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ABBAFC:
/* 000AC 80ABBAFC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000B0 80ABBB00 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 000B4 80ABBB04 03E00008 */  jr      $ra                        
/* 000B8 80ABBB08 00000000 */  nop


glabel func_80ABBB0C
/* 000BC 80ABBB0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000C0 80ABBB10 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000C4 80ABBB14 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000C8 80ABBB18 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000CC 80ABBB1C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000D0 80ABBB20 24C50154 */  addiu   $a1, $a2, 0x0154           ## $a1 = 00000154
/* 000D4 80ABBB24 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000D8 80ABBB28 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000DC 80ABBB2C 03E00008 */  jr      $ra                        
/* 000E0 80ABBB30 00000000 */  nop


glabel func_80ABBB34
/* 000E4 80ABBB34 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 000E8 80ABBB38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000EC 80ABBB3C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000F0 80ABBB40 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 000F4 80ABBB44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000F8 80ABBB48 00A12021 */  addu    $a0, $a1, $at              
/* 000FC 80ABBB4C 80C50150 */  lb      $a1, 0x0150($a2)           ## 00000150
/* 00100 80ABBB50 0C026062 */  jal     Object_IsLoaded
              
/* 00104 80ABBB54 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00108 80ABBB58 1040000F */  beq     $v0, $zero, .L80ABBB98     
/* 0010C 80ABBB5C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00110 80ABBB60 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00114 80ABBB64 80CE0150 */  lb      $t6, 0x0150($a2)           ## 00000150
/* 00118 80ABBB68 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 0011C 80ABBB6C 3C0F80AC */  lui     $t7, %hi(func_80ABBE90)    ## $t7 = 80AC0000
/* 00120 80ABBB70 3C1980AC */  lui     $t9, %hi(func_80ABBBA8)    ## $t9 = 80AC0000
/* 00124 80ABBB74 25EFBE90 */  addiu   $t7, $t7, %lo(func_80ABBE90) ## $t7 = 80ABBE90
/* 00128 80ABBB78 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 0012C 80ABBB7C 2739BBA8 */  addiu   $t9, $t9, %lo(func_80ABBBA8) ## $t9 = 80ABBBA8
/* 00130 80ABBB80 ACCF0134 */  sw      $t7, 0x0134($a2)           ## 00000134
/* 00134 80ABBB84 A4C000B6 */  sh      $zero, 0x00B6($a2)         ## 000000B6
/* 00138 80ABBB88 A4D80152 */  sh      $t8, 0x0152($a2)           ## 00000152
/* 0013C 80ABBB8C ACD9014C */  sw      $t9, 0x014C($a2)           ## 0000014C
/* 00140 80ABBB90 A0CE001E */  sb      $t6, 0x001E($a2)           ## 0000001E
/* 00144 80ABBB94 E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
.L80ABBB98:
/* 00148 80ABBB98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0014C 80ABBB9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00150 80ABBBA0 03E00008 */  jr      $ra                        
/* 00154 80ABBBA4 00000000 */  nop


glabel func_80ABBBA8
/* 00158 80ABBBA8 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 0015C 80ABBBAC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00160 80ABBBB0 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00164 80ABBBB4 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 00168 80ABBBB8 848F0152 */  lh      $t7, 0x0152($a0)           ## 00000152
/* 0016C 80ABBBBC 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00170 80ABBBC0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00174 80ABBBC4 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 00178 80ABBBC8 A4980152 */  sh      $t8, 0x0152($a0)           ## 00000152
/* 0017C 80ABBBCC 84990152 */  lh      $t9, 0x0152($a0)           ## 00000152
/* 00180 80ABBBD0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00184 80ABBBD4 57200005 */  bnel    $t9, $zero, .L80ABBBEC     
/* 00188 80ABBBD8 86080018 */  lh      $t0, 0x0018($s0)           ## 00000018
/* 0018C 80ABBBDC 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00190 80ABBBE0 00000000 */  nop
/* 00194 80ABBBE4 E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 00198 80ABBBE8 86080018 */  lh      $t0, 0x0018($s0)           ## 00000018
.L80ABBBEC:
/* 0019C 80ABBBEC 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 001A0 80ABBBF0 25092AA8 */  addiu   $t1, $t0, 0x2AA8           ## $t1 = 00002AA8
/* 001A4 80ABBBF4 304A0008 */  andi    $t2, $v0, 0x0008           ## $t2 = 00000000
/* 001A8 80ABBBF8 15400010 */  bne     $t2, $zero, .L80ABBC3C     
/* 001AC 80ABBBFC A6090018 */  sh      $t1, 0x0018($s0)           ## 00000018
/* 001B0 80ABBC00 304B0001 */  andi    $t3, $v0, 0x0001           ## $t3 = 00000000
/* 001B4 80ABBC04 5560000E */  bnel    $t3, $zero, .L80ABBC40     
/* 001B8 80ABBC08 8062014E */  lb      $v0, 0x014E($v1)           ## 0000014E
/* 001BC 80ABBC0C 920C0164 */  lbu     $t4, 0x0164($s0)           ## 00000164
/* 001C0 80ABBC10 318D0002 */  andi    $t5, $t4, 0x0002           ## $t5 = 00000000
/* 001C4 80ABBC14 55A0000A */  bnel    $t5, $zero, .L80ABBC40     
/* 001C8 80ABBC18 8062014E */  lb      $v0, 0x014E($v1)           ## 0000014E
/* 001CC 80ABBC1C 920E0165 */  lbu     $t6, 0x0165($s0)           ## 00000165
/* 001D0 80ABBC20 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 001D4 80ABBC24 55E00006 */  bnel    $t7, $zero, .L80ABBC40     
/* 001D8 80ABBC28 8062014E */  lb      $v0, 0x014E($v1)           ## 0000014E
/* 001DC 80ABBC2C 92180166 */  lbu     $t8, 0x0166($s0)           ## 00000166
/* 001E0 80ABBC30 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000002
/* 001E4 80ABBC34 53200045 */  beql    $t9, $zero, .L80ABBD4C     
/* 001E8 80ABBC38 860E0152 */  lh      $t6, 0x0152($s0)           ## 00000152
.L80ABBC3C:
/* 001EC 80ABBC3C 8062014E */  lb      $v0, 0x014E($v1)           ## 0000014E
.L80ABBC40:
/* 001F0 80ABBC40 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001F4 80ABBC44 10410006 */  beq     $v0, $at, .L80ABBC60       
/* 001F8 80ABBC48 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 001FC 80ABBC4C 1441001C */  bne     $v0, $at, .L80ABBCC0       
/* 00200 80ABBC50 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 00204 80ABBC54 8D08E664 */  lw      $t0, -0x199C($t0)          ## 8015E664
/* 00208 80ABBC58 5500001A */  bnel    $t0, $zero, .L80ABBCC4     
/* 0020C 80ABBC5C C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
.L80ABBC60:
/* 00210 80ABBC60 92020164 */  lbu     $v0, 0x0164($s0)           ## 00000164
/* 00214 80ABBC64 30490002 */  andi    $t1, $v0, 0x0002           ## $t1 = 00000000
/* 00218 80ABBC68 11200015 */  beq     $t1, $zero, .L80ABBCC0     
/* 0021C 80ABBC6C 304A0010 */  andi    $t2, $v0, 0x0010           ## $t2 = 00000000
/* 00220 80ABBC70 11400013 */  beq     $t2, $zero, .L80ABBCC0     
/* 00224 80ABBC74 304B0004 */  andi    $t3, $v0, 0x0004           ## $t3 = 00000000
/* 00228 80ABBC78 11600011 */  beq     $t3, $zero, .L80ABBCC0     
/* 0022C 80ABBC7C 304DFFE9 */  andi    $t5, $v0, 0xFFE9           ## $t5 = 00000000
/* 00230 80ABBC80 A20D0164 */  sb      $t5, 0x0164($s0)           ## 00000164
/* 00234 80ABBC84 35AE0008 */  ori     $t6, $t5, 0x0008           ## $t6 = 00000008
/* 00238 80ABBC88 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 0023C 80ABBC8C A20E0164 */  sb      $t6, 0x0164($s0)           ## 00000164
/* 00240 80ABBC90 AE0F016C */  sw      $t7, 0x016C($s0)           ## 0000016C
/* 00244 80ABBC94 24640A20 */  addiu   $a0, $v1, 0x0A20           ## $a0 = 00000A20
/* 00248 80ABBC98 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFF4
/* 0024C 80ABBC9C 0C034833 */  jal     func_800D20CC              
/* 00250 80ABBCA0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00254 80ABBCA4 87B8004E */  lh      $t8, 0x004E($sp)           
/* 00258 80ABBCA8 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0025C 80ABBCAC 2408001E */  addiu   $t0, $zero, 0x001E         ## $t0 = 0000001E
/* 00260 80ABBCB0 0301C821 */  addu    $t9, $t8, $at              
/* 00264 80ABBCB4 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 00268 80ABBCB8 10000029 */  beq     $zero, $zero, .L80ABBD60   
/* 0026C 80ABBCBC A6080152 */  sh      $t0, 0x0152($s0)           ## 00000152
.L80ABBCC0:
/* 00270 80ABBCC0 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
.L80ABBCC4:
/* 00274 80ABBCC4 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00278 80ABBCC8 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 0027C 80ABBCCC E7A60040 */  swc1    $f6, 0x0040($sp)           
/* 00280 80ABBCD0 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00284 80ABBCD4 24090007 */  addiu   $t1, $zero, 0x0007         ## $t1 = 00000007
/* 00288 80ABBCD8 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 0028C 80ABBCDC 460A4400 */  add.s   $f16, $f8, $f10            
/* 00290 80ABBCE0 240B000F */  addiu   $t3, $zero, 0x000F         ## $t3 = 0000000F
/* 00294 80ABBCE4 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 00298 80ABBCE8 240D000A */  addiu   $t5, $zero, 0x000A         ## $t5 = 0000000A
/* 0029C 80ABBCEC E7B00044 */  swc1    $f16, 0x0044($sp)          
/* 002A0 80ABBCF0 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 002A4 80ABBCF4 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 002A8 80ABBCF8 AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 002AC 80ABBCFC AFAC001C */  sw      $t4, 0x001C($sp)           
/* 002B0 80ABBD00 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 002B4 80ABBD04 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 002B8 80ABBD08 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 002BC 80ABBD0C 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 002C0 80ABBD10 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFE8
/* 002C4 80ABBD14 3C0640C0 */  lui     $a2, 0x40C0                ## $a2 = 40C00000
/* 002C8 80ABBD18 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 002CC 80ABBD1C 0C00A5E9 */  jal     func_800297A4              
/* 002D0 80ABBD20 E7B20048 */  swc1    $f18, 0x0048($sp)          
/* 002D4 80ABBD24 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 002D8 80ABBD28 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 002DC 80ABBD2C 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 002E0 80ABBD30 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 002E4 80ABBD34 240738C0 */  addiu   $a3, $zero, 0x38C0         ## $a3 = 000038C0
/* 002E8 80ABBD38 0C00B55C */  jal     Actor_Kill
              
/* 002EC 80ABBD3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002F0 80ABBD40 10000008 */  beq     $zero, $zero, .L80ABBD64   
/* 002F4 80ABBD44 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 002F8 80ABBD48 860E0152 */  lh      $t6, 0x0152($s0)           ## 00000152
.L80ABBD4C:
/* 002FC 80ABBD4C 2401FED4 */  addiu   $at, $zero, 0xFED4         ## $at = FFFFFED4
/* 00300 80ABBD50 55C10004 */  bnel    $t6, $at, .L80ABBD64       
/* 00304 80ABBD54 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00308 80ABBD58 0C00B55C */  jal     Actor_Kill
              
/* 0030C 80ABBD5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ABBD60:
/* 00310 80ABBD60 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80ABBD64:
/* 00314 80ABBD64 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00318 80ABBD68 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 0031C 80ABBD6C 03E00008 */  jr      $ra                        
/* 00320 80ABBD70 00000000 */  nop


glabel func_80ABBD74
/* 00324 80ABBD74 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00328 80ABBD78 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0032C 80ABBD7C AFB20028 */  sw      $s2, 0x0028($sp)           
/* 00330 80ABBD80 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 00334 80ABBD84 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00338 80ABBD88 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 0033C 80ABBD8C 3C013000 */  lui     $at, 0x3000                ## $at = 30000000
/* 00340 80ABBD90 342100C0 */  ori     $at, $at, 0x00C0           ## $at = 300000C0
/* 00344 80ABBD94 8C4E067C */  lw      $t6, 0x067C($v0)           ## 0000067C
/* 00348 80ABBD98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0034C 80ABBD9C 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00350 80ABBDA0 01C17824 */  and     $t7, $t6, $at              
/* 00354 80ABBDA4 51E00007 */  beql    $t7, $zero, .L80ABBDC4     
/* 00358 80ABBDA8 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 0035C 80ABBDAC 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00360 80ABBDB0 3C1880AC */  lui     $t8, %hi(func_80ABBB34)    ## $t8 = 80AC0000
/* 00364 80ABBDB4 2718BB34 */  addiu   $t8, $t8, %lo(func_80ABBB34) ## $t8 = 80ABBB34
/* 00368 80ABBDB8 57190030 */  bnel    $t8, $t9, .L80ABBE7C       
/* 0036C 80ABBDBC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00370 80ABBDC0 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
.L80ABBDC4:
/* 00374 80ABBDC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00378 80ABBDC8 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 0037C 80ABBDCC 0320F809 */  jalr    $ra, $t9                   
/* 00380 80ABBDD0 00000000 */  nop
/* 00384 80ABBDD4 0C00B638 */  jal     Actor_MoveForward
              
/* 00388 80ABBDD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0038C 80ABBDDC 3C0280AC */  lui     $v0, %hi(D_80ABBFC0)       ## $v0 = 80AC0000
/* 00390 80ABBDE0 2442BFC0 */  addiu   $v0, $v0, %lo(D_80ABBFC0)  ## $v0 = 80ABBFC0
/* 00394 80ABBDE4 84480020 */  lh      $t0, 0x0020($v0)           ## 80ABBFE0
/* 00398 80ABBDE8 84490022 */  lh      $t1, 0x0022($v0)           ## 80ABBFE2
/* 0039C 80ABBDEC 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 003A0 80ABBDF0 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 003A4 80ABBDF4 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 003A8 80ABBDF8 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 003AC 80ABBDFC 46802120 */  cvt.s.w $f4, $f4                   
/* 003B0 80ABBE00 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 003B4 80ABBE04 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 003B8 80ABBE08 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 003BC 80ABBE0C 46803220 */  cvt.s.w $f8, $f6                   
/* 003C0 80ABBE10 44072000 */  mfc1    $a3, $f4                   
/* 003C4 80ABBE14 0C00B92D */  jal     func_8002E4B4              
/* 003C8 80ABBE18 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 003CC 80ABBE1C 26110154 */  addiu   $s1, $s0, 0x0154           ## $s1 = 00000154
/* 003D0 80ABBE20 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000154
/* 003D4 80ABBE24 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 003D8 80ABBE28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003DC 80ABBE2C 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 003E0 80ABBE30 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 003E4 80ABBE34 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 003E8 80ABBE38 01616025 */  or      $t4, $t3, $at              ## $t4 = 01000000
/* 003EC 80ABBE3C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 003F0 80ABBE40 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 003F4 80ABBE44 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 003F8 80ABBE48 02412821 */  addu    $a1, $s2, $at              
/* 003FC 80ABBE4C AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00400 80ABBE50 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00404 80ABBE54 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000154
/* 00408 80ABBE58 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0040C 80ABBE5C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00410 80ABBE60 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00414 80ABBE64 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000154
/* 00418 80ABBE68 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0041C 80ABBE6C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00420 80ABBE70 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00424 80ABBE74 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000154
/* 00428 80ABBE78 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80ABBE7C:
/* 0042C 80ABBE7C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00430 80ABBE80 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 00434 80ABBE84 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 00438 80ABBE88 03E00008 */  jr      $ra                        
/* 0043C 80ABBE8C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000


glabel func_80ABBE90
/* 00440 80ABBE90 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00444 80ABBE94 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00448 80ABBE98 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0044C 80ABBE9C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00450 80ABBEA0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00454 80ABBEA4 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00458 80ABBEA8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0045C 80ABBEAC 3C0680AC */  lui     $a2, %hi(D_80ABC010)       ## $a2 = 80AC0000
/* 00460 80ABBEB0 24C6C010 */  addiu   $a2, $a2, %lo(D_80ABC010)  ## $a2 = 80ABC010
/* 00464 80ABBEB4 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00468 80ABBEB8 24070147 */  addiu   $a3, $zero, 0x0147         ## $a3 = 00000147
/* 0046C 80ABBEBC 0C031AB1 */  jal     func_800C6AC4              
/* 00470 80ABBEC0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00474 80ABBEC4 0C024F46 */  jal     func_80093D18              
/* 00478 80ABBEC8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0047C 80ABBECC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00480 80ABBED0 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 00484 80ABBED4 02212021 */  addu    $a0, $s1, $at              
/* 00488 80ABBED8 0C03424C */  jal     func_800D0930              
/* 0048C 80ABBEDC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00490 80ABBEE0 8FAE0048 */  lw      $t6, 0x0048($sp)           
/* 00494 80ABBEE4 3C0180AC */  lui     $at, %hi(D_80ABC04C)       ## $at = 80AC0000
/* 00498 80ABBEE8 C428C04C */  lwc1    $f8, %lo(D_80ABC04C)($at)  
/* 0049C 80ABBEEC 85CF0018 */  lh      $t7, 0x0018($t6)           ## 00000018
/* 004A0 80ABBEF0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 004A4 80ABBEF4 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 004A8 80ABBEF8 00000000 */  nop
/* 004AC 80ABBEFC 468021A0 */  cvt.s.w $f6, $f4                   
/* 004B0 80ABBF00 46083302 */  mul.s   $f12, $f6, $f8             
/* 004B4 80ABBF04 0C0343B5 */  jal     func_800D0ED4              
/* 004B8 80ABBF08 00000000 */  nop
/* 004BC 80ABBF0C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 004C0 80ABBF10 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 004C4 80ABBF14 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 004C8 80ABBF18 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 004CC 80ABBF1C AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 004D0 80ABBF20 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 004D4 80ABBF24 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 004D8 80ABBF28 3C0580AC */  lui     $a1, %hi(D_80ABC024)       ## $a1 = 80AC0000
/* 004DC 80ABBF2C 24A5C024 */  addiu   $a1, $a1, %lo(D_80ABC024)  ## $a1 = 80ABC024
/* 004E0 80ABBF30 2406014D */  addiu   $a2, $zero, 0x014D         ## $a2 = 0000014D
/* 004E4 80ABBF34 0C0346A2 */  jal     func_800D1A88              
/* 004E8 80ABBF38 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 004EC 80ABBF3C 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 004F0 80ABBF40 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 004F4 80ABBF44 3C0D80AC */  lui     $t5, %hi(D_80ABBFF8)       ## $t5 = 80AC0000
/* 004F8 80ABBF48 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 004FC 80ABBF4C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00500 80ABBF50 3C0680AC */  lui     $a2, %hi(D_80ABC038)       ## $a2 = 80AC0000
/* 00504 80ABBF54 24C6C038 */  addiu   $a2, $a2, %lo(D_80ABC038)  ## $a2 = 80ABC038
/* 00508 80ABBF58 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0050C 80ABBF5C AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 00510 80ABBF60 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00514 80ABBF64 8FAA0048 */  lw      $t2, 0x0048($sp)           
/* 00518 80ABBF68 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 0051C 80ABBF6C 24070151 */  addiu   $a3, $zero, 0x0151         ## $a3 = 00000151
/* 00520 80ABBF70 854B001C */  lh      $t3, 0x001C($t2)           ## 0000001C
/* 00524 80ABBF74 000B6080 */  sll     $t4, $t3,  2               
/* 00528 80ABBF78 01AC6821 */  addu    $t5, $t5, $t4              
/* 0052C 80ABBF7C 8DADBFF8 */  lw      $t5, %lo(D_80ABBFF8)($t5)  
/* 00530 80ABBF80 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00534 80ABBF84 0C031AD5 */  jal     func_800C6B54              
/* 00538 80ABBF88 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 0053C 80ABBF8C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00540 80ABBF90 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00544 80ABBF94 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00548 80ABBF98 03E00008 */  jr      $ra                        
/* 0054C 80ABBF9C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000

.section .data

D_80ABBFA0: .word 0x01930600, 0x00000010, 0x00010000, 0x000001A0
.word func_80ABBA50
.word func_80ABBB0C
.word func_80ABBD74
.word 0x00000000
D_80ABBFC0: .word 0x0A110939, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, 0x00000000, 0x11010100, 0x000D000D, 0x00000000, 0x00000000
D_80ABBFEC: .word 0x004A0164, 0x01680171, 0x01720000
D_80ABBFF8: .word 0x06002028, 0x060012F0, 0x06004008, 0x06002410, 0x06001890, 0x00000000

.section .rodata

D_80ABC010:
    .asciz "../z_en_nutsball.c"
    .balign 4

D_80ABC024:
    .asciz "../z_en_nutsball.c"
    .balign 4

D_80ABC038:
    .asciz "../z_en_nutsball.c"
    .balign 4

D_80ABC04C: .word 0x38C90FDB


.section .rodata
D_80ABC050:
.incbin "baserom/ovl_En_Nutsball", 0x600, 0x00000090
