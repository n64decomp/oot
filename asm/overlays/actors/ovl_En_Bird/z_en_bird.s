.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text
glabel func_809C1BB0
/* 00000 809C1BB0 03E00008 */  jr      $ra                        
/* 00004 809C1BB4 AC850190 */  sw      $a1, 0x0190($a0)           ## 00000190


glabel func_809C1BB8
/* 00008 809C1BB8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0000C 809C1BBC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 809C1BC0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00014 809C1BC4 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00018 809C1BC8 3C05809C */  lui     $a1, %hi(D_809C1FF0)       ## $a1 = 809C0000
/* 0001C 809C1BCC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 809C1BD0 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00024 809C1BD4 24A51FF0 */  addiu   $a1, $a1, %lo(D_809C1FF0)  ## $a1 = 809C1FF0
/* 00028 809C1BD8 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 0002C 809C1BDC 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00030 809C1BE0 0C00B58B */  jal     Actor_SetScale
              
/* 00034 809C1BE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00038 809C1BE8 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0003C 809C1BEC 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00040 809C1BF0 24E7006C */  addiu   $a3, $a3, 0x006C           ## $a3 = 0600006C
/* 00044 809C1BF4 24C62190 */  addiu   $a2, $a2, 0x2190           ## $a2 = 06002190
/* 00048 809C1BF8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0004C 809C1BFC 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00050 809C1C00 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00054 809C1C04 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00058 809C1C08 0C02915F */  jal     SkelAnime_Init
              
/* 0005C 809C1C0C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00060 809C1C10 3C0545AB */  lui     $a1, 0x45AB                ## $a1 = 45AB0000
/* 00064 809C1C14 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00068 809C1C18 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0006C 809C1C1C 34A5E000 */  ori     $a1, $a1, 0xE000           ## $a1 = 45ABE000
/* 00070 809C1C20 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00074 809C1C24 0C00AC78 */  jal     Actor_InitShadow
              
/* 00078 809C1C28 3C074080 */  lui     $a3, 0x4080                ## $a3 = 40800000
/* 0007C 809C1C2C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00080 809C1C30 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 00084 809C1C34 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00088 809C1C38 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 0008C 809C1C3C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00090 809C1C40 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00094 809C1C44 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 00098 809C1C48 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 0009C 809C1C4C 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 000A0 809C1C50 240E09C4 */  addiu   $t6, $zero, 0x09C4         ## $t6 = 000009C4
/* 000A4 809C1C54 AE000194 */  sw      $zero, 0x0194($s0)         ## 00000194
/* 000A8 809C1C58 AE000198 */  sw      $zero, 0x0198($s0)         ## 00000198
/* 000AC 809C1C5C A60E01C0 */  sh      $t6, 0x01C0($s0)           ## 000001C0
/* 000B0 809C1C60 A20000AE */  sb      $zero, 0x00AE($s0)         ## 000000AE
/* 000B4 809C1C64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B8 809C1C68 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 000BC 809C1C6C E60401A8 */  swc1    $f4, 0x01A8($s0)           ## 000001A8
/* 000C0 809C1C70 E60601AC */  swc1    $f6, 0x01AC($s0)           ## 000001AC
/* 000C4 809C1C74 E60001A0 */  swc1    $f0, 0x01A0($s0)           ## 000001A0
/* 000C8 809C1C78 E60001A4 */  swc1    $f0, 0x01A4($s0)           ## 000001A4
/* 000CC 809C1C7C E60001B8 */  swc1    $f0, 0x01B8($s0)           ## 000001B8
/* 000D0 809C1C80 E60801B0 */  swc1    $f8, 0x01B0($s0)           ## 000001B0
/* 000D4 809C1C84 0C27072B */  jal     func_809C1CAC              
/* 000D8 809C1C88 E60A01BC */  swc1    $f10, 0x01BC($s0)          ## 000001BC
/* 000DC 809C1C8C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 000E0 809C1C90 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 000E4 809C1C94 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 000E8 809C1C98 03E00008 */  jr      $ra                        
/* 000EC 809C1C9C 00000000 */  nop


glabel func_809C1CA0
/* 000F0 809C1CA0 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 000F4 809C1CA4 03E00008 */  jr      $ra                        
/* 000F8 809C1CA8 AFA50004 */  sw      $a1, 0x0004($sp)           


glabel func_809C1CAC
/* 000FC 809C1CAC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00100 809C1CB0 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00104 809C1CB4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00108 809C1CB8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0010C 809C1CBC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00110 809C1CC0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00114 809C1CC4 2484006C */  addiu   $a0, $a0, 0x006C           ## $a0 = 0600006C
/* 00118 809C1CC8 8FAE0030 */  lw      $t6, 0x0030($sp)           
/* 0011C 809C1CCC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00120 809C1CD0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00124 809C1CD4 85CF019C */  lh      $t7, 0x019C($t6)           ## 0000019C
/* 00128 809C1CD8 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 0012C 809C1CDC 24050023 */  addiu   $a1, $zero, 0x0023         ## $a1 = 00000023
/* 00130 809C1CE0 11E00004 */  beq     $t7, $zero, .L809C1CF4     
/* 00134 809C1CE4 468020A0 */  cvt.s.w $f2, $f4                   
/* 00138 809C1CE8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0013C 809C1CEC 10000004 */  beq     $zero, $zero, .L809C1D00   
/* 00140 809C1CF0 E7A00028 */  swc1    $f0, 0x0028($sp)           
.L809C1CF4:
/* 00144 809C1CF4 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00148 809C1CF8 00000000 */  nop
/* 0014C 809C1CFC E7A00028 */  swc1    $f0, 0x0028($sp)           
.L809C1D00:
/* 00150 809C1D00 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00154 809C1D04 E7A2002C */  swc1    $f2, 0x002C($sp)           
/* 00158 809C1D08 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 0015C 809C1D0C C7A00028 */  lwc1    $f0, 0x0028($sp)           
/* 00160 809C1D10 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00164 809C1D14 C7A2002C */  lwc1    $f2, 0x002C($sp)           
/* 00168 809C1D18 AC620198 */  sw      $v0, 0x0198($v1)           ## 00000198
/* 0016C 809C1D1C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00170 809C1D20 44060000 */  mfc1    $a2, $f0                   
/* 00174 809C1D24 44076000 */  mfc1    $a3, $f12                  
/* 00178 809C1D28 24A5006C */  addiu   $a1, $a1, 0x006C           ## $a1 = 0600006C
/* 0017C 809C1D2C AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00180 809C1D30 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 00184 809C1D34 E7AC0018 */  swc1    $f12, 0x0018($sp)          
/* 00188 809C1D38 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 0018C 809C1D3C E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00190 809C1D40 3C05809C */  lui     $a1, %hi(func_809C1D60)    ## $a1 = 809C0000
/* 00194 809C1D44 24A51D60 */  addiu   $a1, $a1, %lo(func_809C1D60) ## $a1 = 809C1D60
/* 00198 809C1D48 0C2706EC */  jal     func_809C1BB0              
/* 0019C 809C1D4C 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 001A0 809C1D50 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 001A4 809C1D54 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 001A8 809C1D58 03E00008 */  jr      $ra                        
/* 001AC 809C1D5C 00000000 */  nop


glabel func_809C1D60
/* 001B0 809C1D60 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 001B4 809C1D64 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 001B8 809C1D68 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 001BC 809C1D6C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 001C0 809C1D70 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001C4 809C1D74 0C0400A4 */  jal     sinf
              
/* 001C8 809C1D78 C48C01B4 */  lwc1    $f12, 0x01B4($a0)          ## 000001B4
/* 001CC 809C1D7C C60601A0 */  lwc1    $f6, 0x01A0($s0)           ## 000001A0
/* 001D0 809C1D80 C60400BC */  lwc1    $f4, 0x00BC($s0)           ## 000000BC
/* 001D4 809C1D84 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 001D8 809C1D88 46060202 */  mul.s   $f8, $f0, $f6              
/* 001DC 809C1D8C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 001E0 809C1D90 44051000 */  mfc1    $a1, $f2                   
/* 001E4 809C1D94 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 001E8 809C1D98 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 001EC 809C1D9C 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 001F0 809C1DA0 46082280 */  add.s   $f10, $f4, $f8             
/* 001F4 809C1DA4 E60A00BC */  swc1    $f10, 0x00BC($s0)          ## 000000BC
/* 001F8 809C1DA8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 001FC 809C1DAC E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00200 809C1DB0 860E019C */  lh      $t6, 0x019C($s0)           ## 0000019C
/* 00204 809C1DB4 11C00004 */  beq     $t6, $zero, .L809C1DC8     
/* 00208 809C1DB8 00000000 */  nop
/* 0020C 809C1DBC C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 00210 809C1DC0 46000400 */  add.s   $f16, $f0, $f0             
/* 00214 809C1DC4 E6100168 */  swc1    $f16, 0x0168($s0)          ## 00000168
.L809C1DC8:
/* 00218 809C1DC8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0021C 809C1DCC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00220 809C1DD0 8E0F0198 */  lw      $t7, 0x0198($s0)           ## 00000198
/* 00224 809C1DD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00228 809C1DD8 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 0022C 809C1DDC 1F000003 */  bgtz    $t8, .L809C1DEC            
/* 00230 809C1DE0 AE180198 */  sw      $t8, 0x0198($s0)           ## 00000198
/* 00234 809C1DE4 0C270780 */  jal     func_809C1E00              
/* 00238 809C1DE8 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L809C1DEC:
/* 0023C 809C1DEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00240 809C1DF0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00244 809C1DF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00248 809C1DF8 03E00008 */  jr      $ra                        
/* 0024C 809C1DFC 00000000 */  nop


glabel func_809C1E00
/* 00250 809C1E00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00254 809C1E04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00258 809C1E08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0025C 809C1E0C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00260 809C1E10 2405002D */  addiu   $a1, $zero, 0x002D         ## $a1 = 0000002D
/* 00264 809C1E14 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00268 809C1E18 24040014 */  addiu   $a0, $zero, 0x0014         ## $a0 = 00000014
/* 0026C 809C1E1C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00270 809C1E20 3C05809C */  lui     $a1, %hi(func_809C1E40)    ## $a1 = 809C0000
/* 00274 809C1E24 24A51E40 */  addiu   $a1, $a1, %lo(func_809C1E40) ## $a1 = 809C1E40
/* 00278 809C1E28 0C2706EC */  jal     func_809C1BB0              
/* 0027C 809C1E2C AC820198 */  sw      $v0, 0x0198($a0)           ## 00000198
/* 00280 809C1E30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00284 809C1E34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00288 809C1E38 03E00008 */  jr      $ra                        
/* 0028C 809C1E3C 00000000 */  nop


glabel func_809C1E40
/* 00290 809C1E40 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00294 809C1E44 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00298 809C1E48 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0029C 809C1E4C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 002A0 809C1E50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002A4 809C1E54 0C0400A4 */  jal     sinf
              
/* 002A8 809C1E58 C48C01B4 */  lwc1    $f12, 0x01B4($a0)          ## 000001B4
/* 002AC 809C1E5C C60601A0 */  lwc1    $f6, 0x01A0($s0)           ## 000001A0
/* 002B0 809C1E60 C60400BC */  lwc1    $f4, 0x00BC($s0)           ## 000000BC
/* 002B4 809C1E64 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 002B8 809C1E68 46060202 */  mul.s   $f8, $f0, $f6              
/* 002BC 809C1E6C 8E0501A8 */  lw      $a1, 0x01A8($s0)           ## 000001A8
/* 002C0 809C1E70 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 002C4 809C1E74 8E0701AC */  lw      $a3, 0x01AC($s0)           ## 000001AC
/* 002C8 809C1E78 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 002CC 809C1E7C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 002D0 809C1E80 46082280 */  add.s   $f10, $f4, $f8             
/* 002D4 809C1E84 E60A00BC */  swc1    $f10, 0x00BC($s0)          ## 000000BC
/* 002D8 809C1E88 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 002DC 809C1E8C E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 002E0 809C1E90 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 002E4 809C1E94 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 002E8 809C1E98 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 002EC 809C1E9C 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 002F0 809C1EA0 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 002F4 809C1EA4 C61201B0 */  lwc1    $f18, 0x01B0($s0)          ## 000001B0
/* 002F8 809C1EA8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 002FC 809C1EAC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00300 809C1EB0 4600903C */  c.lt.s  $f18, $f0                  
/* 00304 809C1EB4 00000000 */  nop
/* 00308 809C1EB8 45010005 */  bc1t    .L809C1ED0                 
/* 0030C 809C1EBC 00000000 */  nop
/* 00310 809C1EC0 8E0E0198 */  lw      $t6, 0x0198($s0)           ## 00000198
/* 00314 809C1EC4 29C10004 */  slti    $at, $t6, 0x0004           
/* 00318 809C1EC8 1020000A */  beq     $at, $zero, .L809C1EF4     
/* 0031C 809C1ECC 00000000 */  nop
.L809C1ED0:
/* 00320 809C1ED0 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00324 809C1ED4 00000000 */  nop
/* 00328 809C1ED8 00022C00 */  sll     $a1, $v0, 16               
/* 0032C 809C1EDC 00052C03 */  sra     $a1, $a1, 16               
/* 00330 809C1EE0 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00334 809C1EE4 0C01DED6 */  jal     func_80077B58              
/* 00338 809C1EE8 860601C0 */  lh      $a2, 0x01C0($s0)           ## 000001C0
/* 0033C 809C1EEC 1000000C */  beq     $zero, $zero, .L809C1F20   
/* 00340 809C1EF0 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
.L809C1EF4:
/* 00344 809C1EF4 0C0400A4 */  jal     sinf
              
/* 00348 809C1EF8 C60C01B4 */  lwc1    $f12, 0x01B4($s0)          ## 000001B4
/* 0034C 809C1EFC C60601A4 */  lwc1    $f6, 0x01A4($s0)           ## 000001A4
/* 00350 809C1F00 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 00354 809C1F04 46060102 */  mul.s   $f4, $f0, $f6              
/* 00358 809C1F08 4600220D */  trunc.w.s $f8, $f4                   
/* 0035C 809C1F0C 44094000 */  mfc1    $t1, $f8                   
/* 00360 809C1F10 00000000 */  nop
/* 00364 809C1F14 01E95021 */  addu    $t2, $t7, $t1              
/* 00368 809C1F18 A60A0032 */  sh      $t2, 0x0032($s0)           ## 00000032
/* 0036C 809C1F1C 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
.L809C1F20:
/* 00370 809C1F20 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00374 809C1F24 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00378 809C1F28 A60B00B6 */  sh      $t3, 0x00B6($s0)           ## 000000B6
/* 0037C 809C1F2C 8E0C0198 */  lw      $t4, 0x0198($s0)           ## 00000198
/* 00380 809C1F30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00384 809C1F34 258DFFFF */  addiu   $t5, $t4, 0xFFFF           ## $t5 = FFFFFFFF
/* 00388 809C1F38 05A10003 */  bgez    $t5, .L809C1F48            
/* 0038C 809C1F3C AE0D0198 */  sw      $t5, 0x0198($s0)           ## 00000198
/* 00390 809C1F40 0C27072B */  jal     func_809C1CAC              
/* 00394 809C1F44 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L809C1F48:
/* 00398 809C1F48 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0039C 809C1F4C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 003A0 809C1F50 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 003A4 809C1F54 03E00008 */  jr      $ra                        
/* 003A8 809C1F58 00000000 */  nop


glabel func_809C1F5C
/* 003AC 809C1F5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003B0 809C1F60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003B4 809C1F64 C48401B4 */  lwc1    $f4, 0x01B4($a0)           ## 000001B4
/* 003B8 809C1F68 C48601B8 */  lwc1    $f6, 0x01B8($a0)           ## 000001B8
/* 003BC 809C1F6C 8C990190 */  lw      $t9, 0x0190($a0)           ## 00000190
/* 003C0 809C1F70 46062200 */  add.s   $f8, $f4, $f6              
/* 003C4 809C1F74 0320F809 */  jalr    $ra, $t9                   
/* 003C8 809C1F78 E48801B4 */  swc1    $f8, 0x01B4($a0)           ## 000001B4
/* 003CC 809C1F7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003D0 809C1F80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003D4 809C1F84 03E00008 */  jr      $ra                        
/* 003D8 809C1F88 00000000 */  nop


glabel func_809C1F8C
/* 003DC 809C1F8C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 003E0 809C1F90 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 003E4 809C1F94 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 003E8 809C1F98 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 003EC 809C1F9C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 003F0 809C1FA0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003F4 809C1FA4 8DC50150 */  lw      $a1, 0x0150($t6)           ## 00000150
/* 003F8 809C1FA8 8DC6016C */  lw      $a2, 0x016C($t6)           ## 0000016C
/* 003FC 809C1FAC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00400 809C1FB0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00404 809C1FB4 0C028572 */  jal     SkelAnime_Draw
              
/* 00408 809C1FB8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0040C 809C1FBC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00410 809C1FC0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00414 809C1FC4 03E00008 */  jr      $ra                        
/* 00418 809C1FC8 00000000 */  nop
/* 0041C 809C1FCC 00000000 */  nop

.section .data

D_809C1FD0: .word 0x00720600, 0x00000000, 0x00770000, 0x000001DC
.word func_809C1BB8
.word func_809C1CA0
.word func_809C1F5C
.word func_809C1F8C
D_809C1FF0: .word 0x304C15E0, 0x00000000, 0x00000000, 0x00000000

.section .rodata



.section .rodata
D_809C2000:
.incbin "baserom/ovl_En_Bird", 0x450, 0x00000060
