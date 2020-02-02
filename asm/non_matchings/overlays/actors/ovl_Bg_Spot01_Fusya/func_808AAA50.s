glabel func_808AAA50
/* 00090 808AAA50 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00094 808AAA54 95CEF540 */  lhu     $t6, -0x0AC0($t6)          ## 8015F540
/* 00098 808AAA58 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0009C 808AAA5C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 000A0 808AAA60 31CF0020 */  andi    $t7, $t6, 0x0020           ## $t7 = 00000000
/* 000A4 808AAA64 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000A8 808AAA68 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 000AC 808AAA6C 11E00005 */  beq     $t7, $zero, .L808AAA84     
/* 000B0 808AAA70 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 000B4 808AAA74 3C0144E1 */  lui     $at, 0x44E1                ## $at = 44E10000
/* 000B8 808AAA78 44812000 */  mtc1    $at, $f4                   ## $f4 = 1800.00
/* 000BC 808AAA7C 00000000 */  nop
/* 000C0 808AAA80 E4840158 */  swc1    $f4, 0x0158($a0)           ## 00000158
.L808AAA84:
/* 000C4 808AAA84 861800B8 */  lh      $t8, 0x00B8($s0)           ## 000000B8
/* 000C8 808AAA88 C60A0154 */  lwc1    $f10, 0x0154($s0)          ## 00000154
/* 000CC 808AAA8C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 000D0 808AAA90 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 000D4 808AAA94 C6040154 */  lwc1    $f4, 0x0154($s0)           ## 00000154
/* 000D8 808AAA98 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 000DC 808AAA9C 46803220 */  cvt.s.w $f8, $f6                   
/* 000E0 808AAAA0 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 000E4 808AAAA4 3C01808B */  lui     $at, %hi(D_808AAC78)       ## $at = 808B0000
/* 000E8 808AAAA8 24052085 */  addiu   $a1, $zero, 0x2085         ## $a1 = 00002085
/* 000EC 808AAAAC 460A4400 */  add.s   $f16, $f8, $f10            
/* 000F0 808AAAB0 46062201 */  sub.s   $f8, $f4, $f6              
/* 000F4 808AAAB4 4600848D */  trunc.w.s $f18, $f16                 
/* 000F8 808AAAB8 44089000 */  mfc1    $t0, $f18                  
/* 000FC 808AAABC 00000000 */  nop
/* 00100 808AAAC0 A60800B8 */  sh      $t0, 0x00B8($s0)           ## 000000B8
/* 00104 808AAAC4 C42AAC78 */  lwc1    $f10, %lo(D_808AAC78)($at) 
/* 00108 808AAAC8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0010C 808AAACC 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 00110 808AAAD0 460A4403 */  div.s   $f16, $f8, $f10            
/* 00114 808AAAD4 46128000 */  add.s   $f0, $f16, $f18            
/* 00118 808AAAD8 44060000 */  mfc1    $a2, $f0                   
/* 0011C 808AAADC 0C03D0DB */  jal     func_800F436C              
/* 00120 808AAAE0 00000000 */  nop
/* 00124 808AAAE4 26040154 */  addiu   $a0, $s0, 0x0154           ## $a0 = 00000154
/* 00128 808AAAE8 8E050158 */  lw      $a1, 0x0158($s0)           ## 00000158
/* 0012C 808AAAEC 8E06015C */  lw      $a2, 0x015C($s0)           ## 0000015C
/* 00130 808AAAF0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00134 808AAAF4 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00138 808AAAF8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0013C 808AAAFC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00140 808AAB00 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00144 808AAB04 03E00008 */  jr      $ra                        
/* 00148 808AAB08 00000000 */  nop


