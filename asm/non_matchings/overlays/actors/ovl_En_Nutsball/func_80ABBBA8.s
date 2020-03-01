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


