.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_809AC2D0:
/* 000000 809AC2D0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 000004 809AC2D4 3C0E809B */  lui   $t6, %hi(D_809AC628) # $t6, 0x809b
/* 000008 809AC2D8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00000C 809AC2DC AFB00018 */  sw    $s0, 0x18($sp)
/* 000010 809AC2E0 AFA40048 */  sw    $a0, 0x48($sp)
/* 000014 809AC2E4 AFA5004C */  sw    $a1, 0x4c($sp)
/* 000018 809AC2E8 AFA70054 */  sw    $a3, 0x54($sp)
/* 00001C 809AC2EC 25CEC628 */  addiu $t6, %lo(D_809AC628) # addiu $t6, $t6, -0x39d8
/* 000020 809AC2F0 8DD80000 */  lw    $t8, ($t6)
/* 000024 809AC2F4 27A20038 */  addiu $v0, $sp, 0x38
/* 000028 809AC2F8 3C198016 */  lui   $t9, %hi(gSaveContext+4) # $t9, 0x8016
/* 00002C 809AC2FC AC580000 */  sw    $t8, ($v0)
/* 000030 809AC300 8DCF0004 */  lw    $t7, 4($t6)
/* 000034 809AC304 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* 000038 809AC308 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* 00003C 809AC30C AC4F0004 */  sw    $t7, 4($v0)
/* 000040 809AC310 8DD80008 */  lw    $t8, 8($t6)
/* 000044 809AC314 00C08025 */  move  $s0, $a2
/* 000048 809AC318 AC580008 */  sw    $t8, 8($v0)
/* 00004C 809AC31C 8DCF000C */  lw    $t7, 0xc($t6)
/* 000050 809AC320 AC4F000C */  sw    $t7, 0xc($v0)
/* 000054 809AC324 8F39E664 */  lw    $t9, %lo(gSaveContext+4)($t9)
/* 000058 809AC328 8FA40048 */  lw    $a0, 0x48($sp)
/* 00005C 809AC32C 001948C0 */  sll   $t1, $t9, 3
/* 000060 809AC330 01224021 */  addu  $t0, $t1, $v0
/* 000064 809AC334 85050000 */  lh    $a1, ($t0)
/* 000068 809AC338 AFA80034 */  sw    $t0, 0x34($sp)
/* 00006C 809AC33C 0C02604B */  jal   Object_GetIndex
/* 000070 809AC340 00812021 */   addu  $a0, $a0, $at
/* 000074 809AC344 8FA80034 */  lw    $t0, 0x34($sp)
/* 000078 809AC348 8FA50054 */  lw    $a1, 0x54($sp)
/* 00007C 809AC34C A6020040 */  sh    $v0, 0x40($s0)
/* 000080 809AC350 8D0A0004 */  lw    $t2, 4($t0)
/* 000084 809AC354 27A30024 */  addiu $v1, $sp, 0x24
/* 000088 809AC358 AE0A0038 */  sw    $t2, 0x38($s0)
/* 00008C 809AC35C 8CAC0000 */  lw    $t4, ($a1)
/* 000090 809AC360 AC6C0000 */  sw    $t4, ($v1)
/* 000094 809AC364 8CAB0004 */  lw    $t3, 4($a1)
/* 000098 809AC368 8C6E0000 */  lw    $t6, ($v1)
/* 00009C 809AC36C AC6B0004 */  sw    $t3, 4($v1)
/* 0000A0 809AC370 8CAC0008 */  lw    $t4, 8($a1)
/* 0000A4 809AC374 AC6C0008 */  sw    $t4, 8($v1)
/* 0000A8 809AC378 AE0E0000 */  sw    $t6, ($s0)
/* 0000AC 809AC37C 8C6D0004 */  lw    $t5, 4($v1)
/* 0000B0 809AC380 AE0D0004 */  sw    $t5, 4($s0)
/* 0000B4 809AC384 8C6E0008 */  lw    $t6, 8($v1)
/* 0000B8 809AC388 AE0E0008 */  sw    $t6, 8($s0)
/* 0000BC 809AC38C 8C780000 */  lw    $t8, ($v1)
/* 0000C0 809AC390 AE18002C */  sw    $t8, 0x2c($s0)
/* 0000C4 809AC394 8C6F0004 */  lw    $t7, 4($v1)
/* 0000C8 809AC398 AE0F0030 */  sw    $t7, 0x30($s0)
/* 0000CC 809AC39C 8C780008 */  lw    $t8, 8($v1)
/* 0000D0 809AC3A0 AE180034 */  sw    $t8, 0x34($s0)
/* 0000D4 809AC3A4 84B9000C */  lh    $t9, 0xc($a1)
/* 0000D8 809AC3A8 A6190042 */  sh    $t9, 0x42($s0)
/* 0000DC 809AC3AC 0C01DE1C */  jal   Math_Sins
/* 0000E0 809AC3B0 84A4000C */   lh    $a0, 0xc($a1)
/* 0000E4 809AC3B4 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0000E8 809AC3B8 44812000 */  mtc1  $at, $f4
/* 0000EC 809AC3BC 8FA50054 */  lw    $a1, 0x54($sp)
/* 0000F0 809AC3C0 46040182 */  mul.s $f6, $f0, $f4
/* 0000F4 809AC3C4 E606000C */  swc1  $f6, 0xc($s0)
/* 0000F8 809AC3C8 0C01DE0D */  jal   Math_Coss
/* 0000FC 809AC3CC 84A4000C */   lh    $a0, 0xc($a1)
/* 000100 809AC3D0 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 000104 809AC3D4 44814000 */  mtc1  $at, $f8
/* 000108 809AC3D8 3C0141D0 */  li    $at, 0x41D00000 # 26.000000
/* 00010C 809AC3DC 44818000 */  mtc1  $at, $f16
/* 000110 809AC3E0 46080282 */  mul.s $f10, $f0, $f8
/* 000114 809AC3E4 3C01C080 */  li    $at, 0xC0800000 # -4.000000
/* 000118 809AC3E8 44819000 */  mtc1  $at, $f18
/* 00011C 809AC3EC 3C0A809B */  lui   $t2, %hi(func_809AC42C) # $t2, 0x809b
/* 000120 809AC3F0 3C0B809B */  lui   $t3, %hi(func_809AC604) # $t3, 0x809b
/* 000124 809AC3F4 24090014 */  li    $t1, 20
/* 000128 809AC3F8 254AC42C */  addiu $t2, %lo(func_809AC42C) # addiu $t2, $t2, -0x3bd4
/* 00012C 809AC3FC 256BC604 */  addiu $t3, %lo(func_809AC604) # addiu $t3, $t3, -0x39fc
/* 000130 809AC400 E60A0014 */  swc1  $f10, 0x14($s0)
/* 000134 809AC404 A609005C */  sh    $t1, 0x5c($s0)
/* 000138 809AC408 AE0A0028 */  sw    $t2, 0x28($s0)
/* 00013C 809AC40C AE0B0024 */  sw    $t3, 0x24($s0)
/* 000140 809AC410 E6100010 */  swc1  $f16, 0x10($s0)
/* 000144 809AC414 E612001C */  swc1  $f18, 0x1c($s0)
/* 000148 809AC418 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00014C 809AC41C 8FB00018 */  lw    $s0, 0x18($sp)
/* 000150 809AC420 27BD0048 */  addiu $sp, $sp, 0x48
/* 000154 809AC424 03E00008 */  jr    $ra
/* 000158 809AC428 24020001 */   li    $v0, 1

func_809AC42C:
/* 00015C 809AC42C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 000160 809AC430 AFB10018 */  sw    $s1, 0x18($sp)
/* 000164 809AC434 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000168 809AC438 AFB00014 */  sw    $s0, 0x14($sp)
/* 00016C 809AC43C AFA40050 */  sw    $a0, 0x50($sp)
/* 000170 809AC440 AFA50054 */  sw    $a1, 0x54($sp)
/* 000174 809AC444 8C900000 */  lw    $s0, ($a0)
/* 000178 809AC448 00C08825 */  move  $s1, $a2
/* 00017C 809AC44C 3C06809B */  lui   $a2, %hi(D_809AC640) # $a2, 0x809b
/* 000180 809AC450 24C6C640 */  addiu $a2, %lo(D_809AC640) # addiu $a2, $a2, -0x39c0
/* 000184 809AC454 27A40034 */  addiu $a0, $sp, 0x34
/* 000188 809AC458 24070099 */  li    $a3, 153
/* 00018C 809AC45C 0C031AB1 */  jal   func_800C6AC4
/* 000190 809AC460 02002825 */   move  $a1, $s0
/* 000194 809AC464 C62C0000 */  lwc1  $f12, ($s1)
/* 000198 809AC468 C62E0004 */  lwc1  $f14, 4($s1)
/* 00019C 809AC46C 8E260008 */  lw    $a2, 8($s1)
/* 0001A0 809AC470 0C034261 */  jal   func_800D0984
/* 0001A4 809AC474 00003825 */   move  $a3, $zero
/* 0001A8 809AC478 3C0F8016 */  lui   $t7, %hi(gSaveContext+4) # $t7, 0x8016
/* 0001AC 809AC47C 8DEFE664 */  lw    $t7, %lo(gSaveContext+4)($t7)
/* 0001B0 809AC480 3C01809B */  lui   $at, 0x809b
/* 0001B4 809AC484 11E0000F */  beqz  $t7, .L809AC4C4
/* 0001B8 809AC488 00000000 */   nop   
/* 0001BC 809AC48C 3C01809B */  lui   $at, %hi(D_809AC67C) # $at, 0x809b
/* 0001C0 809AC490 C42CC67C */  lwc1  $f12, %lo(D_809AC67C)($at)
/* 0001C4 809AC494 3C01809B */  lui   $at, %hi(D_809AC684) # $at, 0x809b
/* 0001C8 809AC498 C42EC680 */  lwc1  $f14, %lo(D_809AC680)($at)
/* 0001CC 809AC49C 44066000 */  mfc1  $a2, $f12
/* 0001D0 809AC4A0 0C0342A3 */  jal   func_800D0A8C
/* 0001D4 809AC4A4 24070001 */   li    $a3, 1
/* 0001D8 809AC4A8 00002025 */  move  $a0, $zero
/* 0001DC 809AC4AC 86250042 */  lh    $a1, 0x42($s1)
/* 0001E0 809AC4B0 00003025 */  move  $a2, $zero
/* 0001E4 809AC4B4 0C034421 */  jal   func_800D1084
/* 0001E8 809AC4B8 24070001 */   li    $a3, 1
/* 0001EC 809AC4BC 10000017 */  b     .L809AC51C
/* 0001F0 809AC4C0 8E0202C0 */   lw    $v0, 0x2c0($s0)
.L809AC4C4:
/* 0001F4 809AC4C4 C42CC684 */  lwc1  $f12, %lo(D_809AC684)($at)
/* 0001F8 809AC4C8 24070001 */  li    $a3, 1
/* 0001FC 809AC4CC 44066000 */  mfc1  $a2, $f12
/* 000200 809AC4D0 0C0342A3 */  jal   func_800D0A8C
/* 000204 809AC4D4 46006386 */   mov.s $f14, $f12
/* 000208 809AC4D8 8FB80050 */  lw    $t8, 0x50($sp)
/* 00020C 809AC4DC 00002025 */  move  $a0, $zero
/* 000210 809AC4E0 86250042 */  lh    $a1, 0x42($s1)
/* 000214 809AC4E4 8F06009C */  lw    $a2, 0x9c($t8)
/* 000218 809AC4E8 24070001 */  li    $a3, 1
/* 00021C 809AC4EC 00C00821 */  addu   $at, $a2, $zero
/* 000220 809AC4F0 00063080 */  sll   $a2, $a2, 2
/* 000224 809AC4F4 00C13021 */  addu  $a2, $a2, $at
/* 000228 809AC4F8 000630C0 */  sll   $a2, $a2, 3
/* 00022C 809AC4FC 00C13023 */  subu  $a2, $a2, $at
/* 000230 809AC500 00063100 */  sll   $a2, $a2, 4
/* 000234 809AC504 00C13021 */  addu  $a2, $a2, $at
/* 000238 809AC508 00063100 */  sll   $a2, $a2, 4
/* 00023C 809AC50C 00063400 */  sll   $a2, $a2, 0x10
/* 000240 809AC510 0C034421 */  jal   func_800D1084
/* 000244 809AC514 00063403 */   sra   $a2, $a2, 0x10
/* 000248 809AC518 8E0202C0 */  lw    $v0, 0x2c0($s0)
.L809AC51C:
/* 00024C 809AC51C 3C08DA38 */  lui   $t0, (0xDA380003 >> 16) # lui $t0, 0xda38
/* 000250 809AC520 35080003 */  ori   $t0, (0xDA380003 & 0xFFFF) # ori $t0, $t0, 3
/* 000254 809AC524 24590008 */  addiu $t9, $v0, 8
/* 000258 809AC528 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* 00025C 809AC52C 3C05809B */  lui   $a1, %hi(D_809AC654) # $a1, 0x809b
/* 000260 809AC530 AC480000 */  sw    $t0, ($v0)
/* 000264 809AC534 24A5C654 */  addiu $a1, %lo(D_809AC654) # addiu $a1, $a1, -0x39ac
/* 000268 809AC538 02002025 */  move  $a0, $s0
/* 00026C 809AC53C 240600B0 */  li    $a2, 176
/* 000270 809AC540 0C0346A2 */  jal   func_800D1A88
/* 000274 809AC544 AFA20030 */   sw    $v0, 0x30($sp)
/* 000278 809AC548 8FA30030 */  lw    $v1, 0x30($sp)
/* 00027C 809AC54C 02002025 */  move  $a0, $s0
/* 000280 809AC550 0C024F46 */  jal   func_80093D18
/* 000284 809AC554 AC620004 */   sw    $v0, 4($v1)
/* 000288 809AC558 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* 00028C 809AC55C 3C0ADB06 */  lui   $t2, (0xDB060018 >> 16) # lui $t2, 0xdb06
/* 000290 809AC560 354A0018 */  ori   $t2, (0xDB060018 & 0xFFFF) # ori $t2, $t2, 0x18
/* 000294 809AC564 24490008 */  addiu $t1, $v0, 8
/* 000298 809AC568 AE0902C0 */  sw    $t1, 0x2c0($s0)
/* 00029C 809AC56C AC4A0000 */  sw    $t2, ($v0)
/* 0002A0 809AC570 862C0040 */  lh    $t4, 0x40($s1)
/* 0002A4 809AC574 8FAB0050 */  lw    $t3, 0x50($sp)
/* 0002A8 809AC578 3C0F0001 */  lui   $t7, 1
/* 0002AC 809AC57C 000C6900 */  sll   $t5, $t4, 4
/* 0002B0 809AC580 01AC6821 */  addu  $t5, $t5, $t4
/* 0002B4 809AC584 000D6880 */  sll   $t5, $t5, 2
/* 0002B8 809AC588 016D7021 */  addu  $t6, $t3, $t5
/* 0002BC 809AC58C 01EE7821 */  addu  $t7, $t7, $t6
/* 0002C0 809AC590 8DEF17B4 */  lw    $t7, 0x17b4($t7)
/* 0002C4 809AC594 3C19DB06 */  lui   $t9, (0xDB060030 >> 16) # lui $t9, 0xdb06
/* 0002C8 809AC598 3C088012 */  lui   $t0, %hi(D_80125F98) # $t0, 0x8012
/* 0002CC 809AC59C AC4F0004 */  sw    $t7, 4($v0)
/* 0002D0 809AC5A0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* 0002D4 809AC5A4 25085F98 */  addiu $t0, %lo(D_80125F98) # addiu $t0, $t0, 0x5f98
/* 0002D8 809AC5A8 37390030 */  ori   $t9, (0xDB060030 & 0xFFFF) # ori $t9, $t9, 0x30
/* 0002DC 809AC5AC 24580008 */  addiu $t8, $v0, 8
/* 0002E0 809AC5B0 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* 0002E4 809AC5B4 AC480004 */  sw    $t0, 4($v0)
/* 0002E8 809AC5B8 AC590000 */  sw    $t9, ($v0)
/* 0002EC 809AC5BC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* 0002F0 809AC5C0 3C0ADE00 */  lui   $t2, 0xde00
/* 0002F4 809AC5C4 3C06809B */  lui   $a2, %hi(D_809AC668) # $a2, 0x809b
/* 0002F8 809AC5C8 24490008 */  addiu $t1, $v0, 8
/* 0002FC 809AC5CC AE0902C0 */  sw    $t1, 0x2c0($s0)
/* 000300 809AC5D0 AC4A0000 */  sw    $t2, ($v0)
/* 000304 809AC5D4 8E2C0038 */  lw    $t4, 0x38($s1)
/* 000308 809AC5D8 24C6C668 */  addiu $a2, %lo(D_809AC668) # addiu $a2, $a2, -0x3998
/* 00030C 809AC5DC 27A40034 */  addiu $a0, $sp, 0x34
/* 000310 809AC5E0 02002825 */  move  $a1, $s0
/* 000314 809AC5E4 240700BC */  li    $a3, 188
/* 000318 809AC5E8 0C031AD5 */  jal   func_800C6B54
/* 00031C 809AC5EC AC4C0004 */   sw    $t4, 4($v0)
/* 000320 809AC5F0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000324 809AC5F4 8FB00014 */  lw    $s0, 0x14($sp)
/* 000328 809AC5F8 8FB10018 */  lw    $s1, 0x18($sp)
/* 00032C 809AC5FC 03E00008 */  jr    $ra
/* 000330 809AC600 27BD0050 */   addiu $sp, $sp, 0x50

func_809AC604:
.incbin "baserom/ovl_Effect_Ss_Stick", 0x334, 0x1C

.section .data

D_809AC620:
.incbin "baserom/ovl_Effect_Ss_Stick", 0x350, 0x8
D_809AC628:
.incbin "baserom/ovl_Effect_Ss_Stick", 0x358, 0x18
D_809AC640:
.incbin "baserom/ovl_Effect_Ss_Stick", 0x370, 0x14
D_809AC654:
.incbin "baserom/ovl_Effect_Ss_Stick", 0x384, 0x14
D_809AC668:
.incbin "baserom/ovl_Effect_Ss_Stick", 0x398, 0x14
D_809AC67C:
.incbin "baserom/ovl_Effect_Ss_Stick", 0x3AC, 0x04
D_809AC680:
.incbin "baserom/ovl_Effect_Ss_Stick", 0x3B0, 0x04
D_809AC684:
.incbin "baserom/ovl_Effect_Ss_Stick", 0x3B4, 0x7C
