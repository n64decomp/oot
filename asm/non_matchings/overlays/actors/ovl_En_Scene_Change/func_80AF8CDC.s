glabel func_80AF8CDC
/* 0006C 80AF8CDC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00070 80AF8CE0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00074 80AF8CE4 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 00078 80AF8CE8 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 0007C 80AF8CEC 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 00080 80AF8CF0 0C031A73 */  jal     Graph_Alloc
              
/* 00084 80AF8CF4 240503C0 */  addiu   $a1, $zero, 0x03C0         ## $a1 = 000003C0
/* 00088 80AF8CF8 8FAF0054 */  lw      $t7, 0x0054($sp)           
/* 0008C 80AF8CFC AFA20044 */  sw      $v0, 0x0044($sp)           
/* 00090 80AF8D00 3C0680B0 */  lui     $a2, %hi(D_80AF8DA0)       ## $a2 = 80B00000
/* 00094 80AF8D04 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 00098 80AF8D08 24C68DA0 */  addiu   $a2, $a2, %lo(D_80AF8DA0)  ## $a2 = 80AF8DA0
/* 0009C 80AF8D0C 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFD4
/* 000A0 80AF8D10 24070122 */  addiu   $a3, $zero, 0x0122         ## $a3 = 00000122
/* 000A4 80AF8D14 0C031AB1 */  jal     func_800C6AC4              
/* 000A8 80AF8D18 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000AC 80AF8D1C 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 000B0 80AF8D20 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 000B4 80AF8D24 37390030 */  ori     $t9, $t9, 0x0030           ## $t9 = DB060030
/* 000B8 80AF8D28 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 000BC 80AF8D2C 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 000C0 80AF8D30 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 000C4 80AF8D34 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 000C8 80AF8D38 8FA90044 */  lw      $t1, 0x0044($sp)           
/* 000CC 80AF8D3C AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 000D0 80AF8D40 8FAA0054 */  lw      $t2, 0x0054($sp)           
/* 000D4 80AF8D44 0C024F46 */  jal     func_80093D18              
/* 000D8 80AF8D48 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 000DC 80AF8D4C 8FAB0054 */  lw      $t3, 0x0054($sp)           
/* 000E0 80AF8D50 3C0680B0 */  lui     $a2, %hi(D_80AF8DB8)       ## $a2 = 80B00000
/* 000E4 80AF8D54 24C68DB8 */  addiu   $a2, $a2, %lo(D_80AF8DB8)  ## $a2 = 80AF8DB8
/* 000E8 80AF8D58 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFD4
/* 000EC 80AF8D5C 24070182 */  addiu   $a3, $zero, 0x0182         ## $a3 = 00000182
/* 000F0 80AF8D60 0C031AD5 */  jal     func_800C6B54              
/* 000F4 80AF8D64 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
/* 000F8 80AF8D68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000FC 80AF8D6C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00100 80AF8D70 03E00008 */  jr      $ra                        
/* 00104 80AF8D74 00000000 */  nop
/* 00108 80AF8D78 00000000 */  nop
/* 0010C 80AF8D7C 00000000 */  nop

