glabel func_80A58028
/* 00E28 80A58028 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00E2C 80A5802C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00E30 80A58030 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E34 80A58034 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E38 80A58038 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E3C 80A5803C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00E40 80A58040 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E44 80A58044 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 00E48 80A58048 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00E4C 80A5804C 0C0295B2 */  jal     func_800A56C8              
/* 00E50 80A58050 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00E54 80A58054 10400005 */  beq     $v0, $zero, .L80A5806C     
/* 00E58 80A58058 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 00E5C 80A5805C 86030194 */  lh      $v1, 0x0194($s0)           ## 00000194
/* 00E60 80A58060 10600002 */  beq     $v1, $zero, .L80A5806C     
/* 00E64 80A58064 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 00E68 80A58068 A60E0194 */  sh      $t6, 0x0194($s0)           ## 00000194
.L80A5806C:
/* 00E6C 80A5806C 54400005 */  bnel    $v0, $zero, .L80A58084     
/* 00E70 80A58070 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E74 80A58074 0C0295B2 */  jal     func_800A56C8              
/* 00E78 80A58078 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00E7C 80A5807C 10400003 */  beq     $v0, $zero, .L80A5808C     
/* 00E80 80A58080 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A58084:
/* 00E84 80A58084 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E88 80A58088 2405387F */  addiu   $a1, $zero, 0x387F         ## $a1 = 0000387F
.L80A5808C:
/* 00E8C 80A5808C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00E90 80A58090 3C0540F0 */  lui     $a1, 0x40F0                ## $a1 = 40F00000
/* 00E94 80A58094 0C01DE80 */  jal     Math_ApproxF
              
/* 00E98 80A58098 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00E9C 80A5809C 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
/* 00EA0 80A580A0 240F00B6 */  addiu   $t7, $zero, 0x00B6         ## $t7 = 000000B6
/* 00EA4 80A580A4 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00EA8 80A580A8 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00EAC 80A580AC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00EB0 80A580B0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00EB4 80A580B4 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 00EB8 80A580B8 5440003F */  bnel    $v0, $zero, .L80A581B8     
/* 00EBC 80A580BC 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 00EC0 80A580C0 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00EC4 80A580C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EC8 80A580C8 30580020 */  andi    $t8, $v0, 0x0020           ## $t8 = 00000000
/* 00ECC 80A580CC 13000005 */  beq     $t8, $zero, .L80A580E4     
/* 00ED0 80A580D0 30590008 */  andi    $t9, $v0, 0x0008           ## $t9 = 00000000
/* 00ED4 80A580D4 0C00B6B0 */  jal     func_8002DAC0              
/* 00ED8 80A580D8 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00EDC 80A580DC 10000035 */  beq     $zero, $zero, .L80A581B4   
/* 00EE0 80A580E0 A6020196 */  sh      $v0, 0x0196($s0)           ## 00000196
.L80A580E4:
/* 00EE4 80A580E4 53200005 */  beql    $t9, $zero, .L80A580FC     
/* 00EE8 80A580E8 86090194 */  lh      $t1, 0x0194($s0)           ## 00000194
/* 00EEC 80A580EC 8608007E */  lh      $t0, 0x007E($s0)           ## 0000007E
/* 00EF0 80A580F0 10000030 */  beq     $zero, $zero, .L80A581B4   
/* 00EF4 80A580F4 A6080196 */  sh      $t0, 0x0196($s0)           ## 00000196
/* 00EF8 80A580F8 86090194 */  lh      $t1, 0x0194($s0)           ## 00000194
.L80A580FC:
/* 00EFC 80A580FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F00 80A58100 55200029 */  bnel    $t1, $zero, .L80A581A8     
/* 00F04 80A58104 860C008A */  lh      $t4, 0x008A($s0)           ## 0000008A
/* 00F08 80A58108 0C00B6B0 */  jal     func_8002DAC0              
/* 00F0C 80A5810C 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00F10 80A58110 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00F14 80A58114 00451823 */  subu    $v1, $v0, $a1              
/* 00F18 80A58118 00031C00 */  sll     $v1, $v1, 16               
/* 00F1C 80A5811C 00031C03 */  sra     $v1, $v1, 16               
/* 00F20 80A58120 04600003 */  bltz    $v1, .L80A58130            
/* 00F24 80A58124 00032023 */  subu    $a0, $zero, $v1            
/* 00F28 80A58128 10000001 */  beq     $zero, $zero, .L80A58130   
/* 00F2C 80A5812C 00602025 */  or      $a0, $v1, $zero            ## $a0 = 00000000
.L80A58130:
/* 00F30 80A58130 28812001 */  slti    $at, $a0, 0x2001           
/* 00F34 80A58134 54200004 */  bnel    $at, $zero, .L80A58148     
/* 00F38 80A58138 44832000 */  mtc1    $v1, $f4                   ## $f4 = 0.00
/* 00F3C 80A5813C 1000001D */  beq     $zero, $zero, .L80A581B4   
/* 00F40 80A58140 A6020196 */  sh      $v0, 0x0196($s0)           ## 00000196
/* 00F44 80A58144 44832000 */  mtc1    $v1, $f4                   ## $f4 = 0.00
.L80A58148:
/* 00F48 80A58148 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00F4C 80A5814C 44859000 */  mtc1    $a1, $f18                  ## $f18 = 0.00
/* 00F50 80A58150 468021A0 */  cvt.s.w $f6, $f4                   
/* 00F54 80A58154 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00F58 80A58158 4606403E */  c.le.s  $f8, $f6                   
/* 00F5C 80A5815C 00000000 */  nop
/* 00F60 80A58160 45020006 */  bc1fl   .L80A5817C                 
/* 00F64 80A58164 44810000 */  mtc1    $at, $f0                   ## $f0 = -1.00
/* 00F68 80A58168 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00F6C 80A5816C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00F70 80A58170 10000004 */  beq     $zero, $zero, .L80A58184   
/* 00F74 80A58174 3C01C600 */  lui     $at, 0xC600                ## $at = C6000000
/* 00F78 80A58178 44810000 */  mtc1    $at, $f0                   ## $f0 = -8192.00
.L80A5817C:
/* 00F7C 80A5817C 00000000 */  nop
/* 00F80 80A58180 3C01C600 */  lui     $at, 0xC600                ## $at = C6000000
.L80A58184:
/* 00F84 80A58184 44815000 */  mtc1    $at, $f10                  ## $f10 = -8192.00
/* 00F88 80A58188 46809120 */  cvt.s.w $f4, $f18                  
/* 00F8C 80A5818C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00F90 80A58190 46048180 */  add.s   $f6, $f16, $f4             
/* 00F94 80A58194 4600320D */  trunc.w.s $f8, $f6                   
/* 00F98 80A58198 440B4000 */  mfc1    $t3, $f8                   
/* 00F9C 80A5819C 10000005 */  beq     $zero, $zero, .L80A581B4   
/* 00FA0 80A581A0 A60B0196 */  sh      $t3, 0x0196($s0)           ## 00000196
/* 00FA4 80A581A4 860C008A */  lh      $t4, 0x008A($s0)           ## 0000008A
.L80A581A8:
/* 00FA8 80A581A8 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00FAC 80A581AC 01816821 */  addu    $t5, $t4, $at              
/* 00FB0 80A581B0 A60D0196 */  sh      $t5, 0x0196($s0)           ## 00000196
.L80A581B4:
/* 00FB4 80A581B4 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
.L80A581B8:
/* 00FB8 80A581B8 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00FBC 80A581BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FC0 80A581C0 01C17821 */  addu    $t7, $t6, $at              
/* 00FC4 80A581C4 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 00FC8 80A581C8 0C00BC65 */  jal     func_8002F194              
/* 00FCC 80A581CC 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00FD0 80A581D0 50400006 */  beql    $v0, $zero, .L80A581EC     
/* 00FD4 80A581D4 86180194 */  lh      $t8, 0x0194($s0)           ## 00000194
/* 00FD8 80A581D8 0C295DD1 */  jal     func_80A57744              
/* 00FDC 80A581DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FE0 80A581E0 10000031 */  beq     $zero, $zero, .L80A582A8   
/* 00FE4 80A581E4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FE8 80A581E8 86180194 */  lh      $t8, 0x0194($s0)           ## 00000194
.L80A581EC:
/* 00FEC 80A581EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FF0 80A581F0 5700002A */  bnel    $t8, $zero, .L80A5829C     
/* 00FF4 80A581F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FF8 80A581F8 0C00B6EC */  jal     func_8002DBB0              
/* 00FFC 80A581FC 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 01000 80A58200 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01004 80A58204 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 01008 80A58208 00000000 */  nop
/* 0100C 80A5820C 460A003C */  c.lt.s  $f0, $f10                  
/* 01010 80A58210 00000000 */  nop
/* 01014 80A58214 45020021 */  bc1fl   .L80A5829C                 
/* 01018 80A58218 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0101C 80A5821C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 01020 80A58220 C610000C */  lwc1    $f16, 0x000C($s0)          ## 0000000C
/* 01024 80A58224 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01028 80A58228 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 0102C 80A5822C 46109001 */  sub.s   $f0, $f18, $f16            
/* 01030 80A58230 46000005 */  abs.s   $f0, $f0                   
/* 01034 80A58234 4604003C */  c.lt.s  $f0, $f4                   
/* 01038 80A58238 00000000 */  nop
/* 0103C 80A5823C 45020017 */  bc1fl   .L80A5829C                 
/* 01040 80A58240 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01044 80A58244 92190002 */  lbu     $t9, 0x0002($s0)           ## 00000002
/* 01048 80A58248 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0104C 80A5824C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01050 80A58250 1721000D */  bne     $t9, $at, .L80A58288       
/* 01054 80A58254 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 01058 80A58258 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 0105C 80A5825C 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 01060 80A58260 3421FFF6 */  ori     $at, $at, 0xFFF6           ## $at = FFFEFFF6
/* 01064 80A58264 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01068 80A58268 01014824 */  and     $t1, $t0, $at              
/* 0106C 80A5826C AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 01070 80A58270 352B0005 */  ori     $t3, $t1, 0x0005           ## $t3 = 00000005
/* 01074 80A58274 AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
/* 01078 80A58278 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0107C 80A5827C 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 01080 80A58280 0C00CDD2 */  jal     Actor_ChangeType
              
/* 01084 80A58284 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
.L80A58288:
/* 01088 80A58288 0C295D70 */  jal     func_80A575C0              
/* 0108C 80A5828C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01090 80A58290 10000005 */  beq     $zero, $zero, .L80A582A8   
/* 01094 80A58294 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01098 80A58298 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A5829C:
/* 0109C 80A5829C 0C295FE5 */  jal     func_80A57F94              
/* 010A0 80A582A0 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 010A4 80A582A4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A582A8:
/* 010A8 80A582A8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 010AC 80A582AC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 010B0 80A582B0 03E00008 */  jr      $ra                        
/* 010B4 80A582B4 00000000 */  nop

