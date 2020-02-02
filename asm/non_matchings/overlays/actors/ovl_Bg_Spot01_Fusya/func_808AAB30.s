glabel func_808AAB30
/* 00170 808AAB30 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00174 808AAB34 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00178 808AAB38 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0017C 808AAB3C AFA40040 */  sw      $a0, 0x0040($sp)           
/* 00180 808AAB40 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00184 808AAB44 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00188 808AAB48 3C06808B */  lui     $a2, %hi(D_808AAC30)       ## $a2 = 808B0000
/* 0018C 808AAB4C 24C6AC30 */  addiu   $a2, $a2, %lo(D_808AAC30)  ## $a2 = 808AAC30
/* 00190 808AAB50 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFEC
/* 00194 808AAB54 240700D2 */  addiu   $a3, $zero, 0x00D2         ## $a3 = 000000D2
/* 00198 808AAB58 0C031AB1 */  jal     func_800C6AC4              
/* 0019C 808AAB5C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 001A0 808AAB60 8FAF0044 */  lw      $t7, 0x0044($sp)           
/* 001A4 808AAB64 0C024F46 */  jal     func_80093D18              
/* 001A8 808AAB68 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 001AC 808AAB6C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 001B0 808AAB70 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 001B4 808AAB74 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 001B8 808AAB78 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 001BC 808AAB7C AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 001C0 808AAB80 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 001C4 808AAB84 8FA80044 */  lw      $t0, 0x0044($sp)           
/* 001C8 808AAB88 3C05808B */  lui     $a1, %hi(D_808AAC48)       ## $a1 = 808B0000
/* 001CC 808AAB8C 24A5AC48 */  addiu   $a1, $a1, %lo(D_808AAC48)  ## $a1 = 808AAC48
/* 001D0 808AAB90 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 001D4 808AAB94 240600D6 */  addiu   $a2, $zero, 0x00D6         ## $a2 = 000000D6
/* 001D8 808AAB98 0C0346A2 */  jal     func_800D1A88              
/* 001DC 808AAB9C AFA20028 */  sw      $v0, 0x0028($sp)           
/* 001E0 808AABA0 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 001E4 808AABA4 3C0B0600 */  lui     $t3, 0x0600                ## $t3 = 06000000
/* 001E8 808AABA8 256B0100 */  addiu   $t3, $t3, 0x0100           ## $t3 = 06000100
/* 001EC 808AABAC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 001F0 808AABB0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 001F4 808AABB4 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 001F8 808AABB8 3C06808B */  lui     $a2, %hi(D_808AAC60)       ## $a2 = 808B0000
/* 001FC 808AABBC 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00200 808AABC0 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 00204 808AABC4 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 00208 808AABC8 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0020C 808AABCC 8FAC0044 */  lw      $t4, 0x0044($sp)           
/* 00210 808AABD0 24C6AC60 */  addiu   $a2, $a2, %lo(D_808AAC60)  ## $a2 = 808AAC60
/* 00214 808AABD4 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFEC
/* 00218 808AABD8 240700DB */  addiu   $a3, $zero, 0x00DB         ## $a3 = 000000DB
/* 0021C 808AABDC 0C031AD5 */  jal     func_800C6B54              
/* 00220 808AABE0 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 00224 808AABE4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00228 808AABE8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0022C 808AABEC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00230 808AABF0 03E00008 */  jr      $ra                        
/* 00234 808AABF4 00000000 */  nop
/* 00238 808AABF8 00000000 */  nop
/* 0023C 808AABFC 00000000 */  nop

