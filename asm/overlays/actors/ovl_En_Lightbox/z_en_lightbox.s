.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_80A9E9D0:
/* 000000 80A9E9D0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 000004 80A9E9D4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000008 80A9E9D8 AFB00018 */  sw    $s0, 0x18($sp)
/* 00000C 80A9E9DC AFA50044 */  sw    $a1, 0x44($sp)
/* 000010 80A9E9E0 AFA0003C */  sw    $zero, 0x3c($sp)
/* 000014 80A9E9E4 8482001C */  lh    $v0, 0x1c($a0)
/* 000018 80A9E9E8 00808025 */  move  $s0, $a0
/* 00001C 80A9E9EC 02002025 */  move  $a0, $s0
/* 000020 80A9E9F0 1040000C */  beqz  $v0, .L80A9EA24
/* 000024 80A9E9F4 3C053CCC */   lui   $a1, (0x3CCCCCCD >> 16) # lui $a1, 0x3ccc
/* 000028 80A9E9F8 24010001 */  li    $at, 1
/* 00002C 80A9E9FC 1041000D */  beq   $v0, $at, .L80A9EA34
/* 000030 80A9EA00 02002025 */   move  $a0, $s0
/* 000034 80A9EA04 24010002 */  li    $at, 2
/* 000038 80A9EA08 1041000F */  beq   $v0, $at, .L80A9EA48
/* 00003C 80A9EA0C 02002025 */   move  $a0, $s0
/* 000040 80A9EA10 24010003 */  li    $at, 3
/* 000044 80A9EA14 10410011 */  beq   $v0, $at, .L80A9EA5C
/* 000048 80A9EA18 02002025 */   move  $a0, $s0
/* 00004C 80A9EA1C 10000013 */  b     .L80A9EA6C
/* 000050 80A9EA20 8E0F0024 */   lw    $t7, 0x24($s0)
.L80A9EA24:
/* 000054 80A9EA24 0C00B58B */  jal   Actor_SetScale
/* 000058 80A9EA28 34A5CCCD */   ori   $a1, (0x3CCCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* 00005C 80A9EA2C 1000000F */  b     .L80A9EA6C
/* 000060 80A9EA30 8E0F0024 */   lw    $t7, 0x24($s0)
.L80A9EA34:
/* 000064 80A9EA34 3C053D4C */  lui   $a1, (0x3D4CCCCD >> 16) # lui $a1, 0x3d4c
/* 000068 80A9EA38 0C00B58B */  jal   Actor_SetScale
/* 00006C 80A9EA3C 34A5CCCD */   ori   $a1, (0x3D4CCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* 000070 80A9EA40 1000000A */  b     .L80A9EA6C
/* 000074 80A9EA44 8E0F0024 */   lw    $t7, 0x24($s0)
.L80A9EA48:
/* 000078 80A9EA48 3C053D99 */  lui   $a1, (0x3D99999A >> 16) # lui $a1, 0x3d99
/* 00007C 80A9EA4C 0C00B58B */  jal   Actor_SetScale
/* 000080 80A9EA50 34A5999A */   ori   $a1, (0x3D99999A & 0xFFFF) # ori $a1, $a1, 0x999a
/* 000084 80A9EA54 10000005 */  b     .L80A9EA6C
/* 000088 80A9EA58 8E0F0024 */   lw    $t7, 0x24($s0)
.L80A9EA5C:
/* 00008C 80A9EA5C 3C053DCC */  lui   $a1, (0x3DCCCCCD >> 16) # lui $a1, 0x3dcc
/* 000090 80A9EA60 0C00B58B */  jal   Actor_SetScale
/* 000094 80A9EA64 34A5CCCD */   ori   $a1, (0x3DCCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* 000098 80A9EA68 8E0F0024 */  lw    $t7, 0x24($s0)
.L80A9EA6C:
/* 00009C 80A9EA6C 8E0E0028 */  lw    $t6, 0x28($s0)
/* 0000A0 80A9EA70 2418001E */  li    $t8, 30
/* 0000A4 80A9EA74 AE0F0038 */  sw    $t7, 0x38($s0)
/* 0000A8 80A9EA78 8E0F002C */  lw    $t7, 0x2c($s0)
/* 0000AC 80A9EA7C 24190032 */  li    $t9, 50
/* 0000B0 80A9EA80 3C068003 */  lui   $a2, %hi(ActorShadow_DrawFunc_Circle) # $a2, 0x8003
/* 0000B4 80A9EA84 A61800A8 */  sh    $t8, 0xa8($s0)
/* 0000B8 80A9EA88 A61900AA */  sh    $t9, 0xaa($s0)
/* 0000BC 80A9EA8C 24C6B5EC */  addiu $a2, %lo(ActorShadow_DrawFunc_Circle) # addiu $a2, $a2, -0x4a14
/* 0000C0 80A9EA90 260400B4 */  addiu $a0, $s0, 0xb4
/* 0000C4 80A9EA94 24050000 */  li    $a1, 0
/* 0000C8 80A9EA98 3C0740C0 */  lui   $a3, 0x40c0
/* 0000CC 80A9EA9C AE0E003C */  sw    $t6, 0x3c($s0)
/* 0000D0 80A9EAA0 0C00AC78 */  jal   Actor_InitShadow
/* 0000D4 80A9EAA4 AE0F0040 */   sw    $t7, 0x40($s0)
/* 0000D8 80A9EAA8 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 0000DC 80A9EAAC 44812000 */  mtc1  $at, $f4
/* 0000E0 80A9EAB0 3C040600 */  lui   $a0, %hi(D_06001F10) # $a0, 0x600
/* 0000E4 80A9EAB4 A2000160 */  sb    $zero, 0x160($s0)
/* 0000E8 80A9EAB8 AE00015C */  sw    $zero, 0x15c($s0)
/* 0000EC 80A9EABC A200001F */  sb    $zero, 0x1f($s0)
/* 0000F0 80A9EAC0 24841F10 */  addiu $a0, %lo(D_06001F10) # addiu $a0, $a0, 0x1f10
/* 0000F4 80A9EAC4 27A5003C */  addiu $a1, $sp, 0x3c
/* 0000F8 80A9EAC8 0C010620 */  jal   DynaPolyInfo_Alloc
/* 0000FC 80A9EACC E604006C */   swc1  $f4, 0x6c($s0)
/* 000100 80A9EAD0 8FA40044 */  lw    $a0, 0x44($sp)
/* 000104 80A9EAD4 02003025 */  move  $a2, $s0
/* 000108 80A9EAD8 8FA7003C */  lw    $a3, 0x3c($sp)
/* 00010C 80A9EADC 0C00FA9D */  jal   DynaPolyInfo_RegisterActor
/* 000110 80A9EAE0 24850810 */   addiu $a1, $a0, 0x810
/* 000114 80A9EAE4 AE02014C */  sw    $v0, 0x14c($s0)
/* 000118 80A9EAE8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00011C 80A9EAEC 8FB00018 */  lw    $s0, 0x18($sp)
/* 000120 80A9EAF0 27BD0040 */  addiu $sp, $sp, 0x40
/* 000124 80A9EAF4 03E00008 */  jr    $ra
/* 000128 80A9EAF8 00000000 */   nop   

func_80A9EAFC:
/* 00012C 80A9EAFC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000130 80A9EB00 AFA40018 */  sw    $a0, 0x18($sp)
/* 000134 80A9EB04 8FAE0018 */  lw    $t6, 0x18($sp)
/* 000138 80A9EB08 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00013C 80A9EB0C 00A02025 */  move  $a0, $a1
/* 000140 80A9EB10 24A50810 */  addiu $a1, $a1, 0x810
/* 000144 80A9EB14 0C00FB56 */  jal   DynaPolyInfo_Free
/* 000148 80A9EB18 8DC6014C */   lw    $a2, 0x14c($t6)
/* 00014C 80A9EB1C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000150 80A9EB20 27BD0018 */  addiu $sp, $sp, 0x18
/* 000154 80A9EB24 03E00008 */  jr    $ra
/* 000158 80A9EB28 00000000 */   nop   

func_80A9EB2C:
/* 00015C 80A9EB2C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 000160 80A9EB30 AFBF0024 */  sw    $ra, 0x24($sp)
/* 000164 80A9EB34 AFB00020 */  sw    $s0, 0x20($sp)
/* 000168 80A9EB38 AFA5002C */  sw    $a1, 0x2c($sp)
/* 00016C 80A9EB3C 848E0162 */  lh    $t6, 0x162($a0)
/* 000170 80A9EB40 00808025 */  move  $s0, $a0
/* 000174 80A9EB44 51C00008 */  beql  $t6, $zero, .L80A9EB68
/* 000178 80A9EB48 02002025 */   move  $a0, $s0
/* 00017C 80A9EB4C 0C00BD68 */  jal   func_8002F5A0
/* 000180 80A9EB50 00000000 */   nop   
/* 000184 80A9EB54 1040007C */  beqz  $v0, .L80A9ED48
/* 000188 80A9EB58 00000000 */   nop   
/* 00018C 80A9EB5C 1000007A */  b     .L80A9ED48
/* 000190 80A9EB60 A6000162 */   sh    $zero, 0x162($s0)
/* 000194 80A9EB64 02002025 */  move  $a0, $s0
.L80A9EB68:
/* 000198 80A9EB68 0C00BD04 */  jal   func_8002F410
/* 00019C 80A9EB6C 8FA5002C */   lw    $a1, 0x2c($sp)
/* 0001A0 80A9EB70 50400006 */  beql  $v0, $zero, .L80A9EB8C
/* 0001A4 80A9EB74 44800000 */   mtc1  $zero, $f0
/* 0001A8 80A9EB78 860F0162 */  lh    $t7, 0x162($s0)
/* 0001AC 80A9EB7C 25F80001 */  addiu $t8, $t7, 1
/* 0001B0 80A9EB80 10000071 */  b     .L80A9ED48
/* 0001B4 80A9EB84 A6180162 */   sh    $t8, 0x162($s0)
/* 0001B8 80A9EB88 44800000 */  mtc1  $zero, $f0
.L80A9EB8C:
/* 0001BC 80A9EB8C C6040068 */  lwc1  $f4, 0x68($s0)
/* 0001C0 80A9EB90 46040032 */  c.eq.s $f0, $f4
/* 0001C4 80A9EB94 00000000 */  nop   
/* 0001C8 80A9EB98 4503001D */  .byte 0x45,0x03,0x00,0x1D /* Because of invalid n64 opcode bc1tl */
/* 0001CC 80A9EB9C 960F0088 */ .word 0x960F0088
/* 0001D0 80A9EBA0 96190088 */  lhu   $t9, 0x88($s0)
/* 0001D4 80A9EBA4 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* 0001D8 80A9EBA8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* 0001DC 80A9EBAC 33280008 */  andi  $t0, $t9, 8
/* 0001E0 80A9EBB0 11000016 */  beqz  $t0, .L80A9EC0C
/* 0001E4 80A9EBB4 2404282F */   li    $a0, 10287
/* 0001E8 80A9EBB8 86020032 */  lh    $v0, 0x32($s0)
/* 0001EC 80A9EBBC 8609007E */  lh    $t1, 0x7e($s0)
/* 0001F0 80A9EBC0 3C0C8013 */  lui   $t4, %hi(D_801333E8) # $t4, 0x8013
/* 0001F4 80A9EBC4 258C33E8 */  addiu $t4, %lo(D_801333E8) # addiu $t4, $t4, 0x33e8
/* 0001F8 80A9EBC8 00495021 */  addu  $t2, $v0, $t1
/* 0001FC 80A9EBCC 01425823 */  subu  $t3, $t2, $v0
/* 000200 80A9EBD0 A60B0032 */  sh    $t3, 0x32($s0)
/* 000204 80A9EBD4 AFAC0014 */  sw    $t4, 0x14($sp)
/* 000208 80A9EBD8 AFA70010 */  sw    $a3, 0x10($sp)
/* 00020C 80A9EBDC 260500E4 */  addiu $a1, $s0, 0xe4
/* 000210 80A9EBE0 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* 000214 80A9EBE4 24060004 */   li    $a2, 4
/* 000218 80A9EBE8 3C0180AA */  lui   $at, %hi(D_80A9EE00) # $at, 0x80aa
/* 00021C 80A9EBEC C428EE00 */  lwc1  $f8, %lo(D_80A9EE00)($at)
/* 000220 80A9EBF0 C6060068 */  lwc1  $f6, 0x68($s0)
/* 000224 80A9EBF4 960D0088 */  lhu   $t5, 0x88($s0)
/* 000228 80A9EBF8 44800000 */  mtc1  $zero, $f0
/* 00022C 80A9EBFC 46083282 */  mul.s $f10, $f6, $f8
/* 000230 80A9EC00 31AEFFF7 */  andi  $t6, $t5, 0xfff7
/* 000234 80A9EC04 A60E0088 */  sh    $t6, 0x88($s0)
/* 000238 80A9EC08 E60A0068 */  swc1  $f10, 0x68($s0)
.L80A9EC0C:
/* 00023C 80A9EC0C 960F0088 */  lhu   $t7, 0x88($s0)
.L80A9EC10:
/* 000240 80A9EC10 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* 000244 80A9EC14 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* 000248 80A9EC18 31F80001 */  andi  $t8, $t7, 1
/* 00024C 80A9EC1C 17000010 */  bnez  $t8, .L80A9EC60
/* 000250 80A9EC20 00000000 */   nop   
/* 000254 80A9EC24 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* 000258 80A9EC28 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 00025C 80A9EC2C 44812000 */  mtc1  $at, $f4
/* 000260 80A9EC30 87280746 */  lh    $t0, 0x746($t9)
/* 000264 80A9EC34 44050000 */  mfc1  $a1, $f0
/* 000268 80A9EC38 26040068 */  addiu $a0, $s0, 0x68
/* 00026C 80A9EC3C 44888000 */  mtc1  $t0, $f16
/* 000270 80A9EC40 00000000 */  nop   
/* 000274 80A9EC44 468084A0 */  cvt.s.w $f18, $f16
/* 000278 80A9EC48 46049183 */  div.s $f6, $f18, $f4
/* 00027C 80A9EC4C 44063000 */  mfc1  $a2, $f6
/* 000280 80A9EC50 0C01DE80 */  jal   Math_ApproxF
/* 000284 80A9EC54 00000000 */   nop   
/* 000288 80A9EC58 1000003B */  b     .L80A9ED48
/* 00028C 80A9EC5C 00000000 */   nop   
.L80A9EC60:
/* 000290 80A9EC60 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* 000294 80A9EC64 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 000298 80A9EC68 44818000 */  mtc1  $at, $f16
/* 00029C 80A9EC6C 852A0748 */  lh    $t2, 0x748($t1)
/* 0002A0 80A9EC70 44050000 */  mfc1  $a1, $f0
/* 0002A4 80A9EC74 26040068 */  addiu $a0, $s0, 0x68
/* 0002A8 80A9EC78 448A4000 */  mtc1  $t2, $f8
/* 0002AC 80A9EC7C 00000000 */  nop   
/* 0002B0 80A9EC80 468042A0 */  cvt.s.w $f10, $f8
/* 0002B4 80A9EC84 46105483 */  div.s $f18, $f10, $f16
/* 0002B8 80A9EC88 44069000 */  mfc1  $a2, $f18
/* 0002BC 80A9EC8C 0C01DE80 */  jal   Math_ApproxF
/* 0002C0 80A9EC90 00000000 */   nop   
/* 0002C4 80A9EC94 960B0088 */  lhu   $t3, 0x88($s0)
/* 0002C8 80A9EC98 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* 0002CC 80A9EC9C 02002025 */  move  $a0, $s0
/* 0002D0 80A9ECA0 316C0002 */  andi  $t4, $t3, 2
/* 0002D4 80A9ECA4 11800026 */  beqz  $t4, .L80A9ED40
/* 0002D8 80A9ECA8 00000000 */   nop   
/* 0002DC 80A9ECAC 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* 0002E0 80A9ECB0 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0002E4 80A9ECB4 44815000 */  mtc1  $at, $f10
/* 0002E8 80A9ECB8 85AE074A */  lh    $t6, 0x74a($t5)
/* 0002EC 80A9ECBC C6040060 */  lwc1  $f4, 0x60($s0)
/* 0002F0 80A9ECC0 3C0F8013 */  lui   $t7, 0x8013
/* 0002F4 80A9ECC4 448E3000 */  mtc1  $t6, $f6
/* 0002F8 80A9ECC8 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* 0002FC 80A9ECCC 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* 000300 80A9ECD0 46803220 */  cvt.s.w $f8, $f6
/* 000304 80A9ECD4 25E733E0 */  addiu $a3, $t7, 0x33e0
/* 000308 80A9ECD8 260500E4 */  addiu $a1, $s0, 0xe4
/* 00030C 80A9ECDC 24060004 */  li    $a2, 4
/* 000310 80A9ECE0 460A4403 */  div.s $f16, $f8, $f10
/* 000314 80A9ECE4 4610203C */  c.lt.s $f4, $f16
/* 000318 80A9ECE8 00000000 */  nop   
/* 00031C 80A9ECEC 45000014 */  .byte 0x45,0x00,0x00,0x14 /* Because of invalid n64 opcode bc1f */
/* 000320 80A9ECF0 00000000 */ .word 0x00000000
/* 000324 80A9ECF4 2404282F */  li    $a0, 10287
/* 000328 80A9ECF8 AFA70010 */  sw    $a3, 0x10($sp)
/* 00032C 80A9ECFC 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* 000330 80A9ED00 AFB80014 */   sw    $t8, 0x14($sp)
/* 000334 80A9ED04 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* 000338 80A9ED08 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* 00033C 80A9ED0C 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 000340 80A9ED10 44814000 */  mtc1  $at, $f8
/* 000344 80A9ED14 8728074C */  lh    $t0, 0x74c($t9)
/* 000348 80A9ED18 C6040060 */  lwc1  $f4, 0x60($s0)
/* 00034C 80A9ED1C 96090088 */  lhu   $t1, 0x88($s0)
/* 000350 80A9ED20 44889000 */  mtc1  $t0, $f18
/* 000354 80A9ED24 312AFFFE */  andi  $t2, $t1, 0xfffe
/* 000358 80A9ED28 468091A0 */  cvt.s.w $f6, $f18
/* 00035C 80A9ED2C A60A0088 */  sh    $t2, 0x88($s0)
/* 000360 80A9ED30 46083283 */  div.s $f10, $f6, $f8
/* 000364 80A9ED34 460A2402 */  mul.s $f16, $f4, $f10
/* 000368 80A9ED38 10000003 */  b     .L80A9ED48
/* 00036C 80A9ED3C E6100060 */   swc1  $f16, 0x60($s0)
.L80A9ED40:
/* 000370 80A9ED40 0C00BD60 */  jal   func_8002F580
/* 000374 80A9ED44 8FA5002C */   lw    $a1, 0x2c($sp)
.L80A9ED48:
/* 000378 80A9ED48 0C00B638 */  jal   Actor_MoveForward
/* 00037C 80A9ED4C 02002025 */   move  $a0, $s0
/* 000380 80A9ED50 860B00AA */  lh    $t3, 0xaa($s0)
/* 000384 80A9ED54 860C00A8 */  lh    $t4, 0xa8($s0)
/* 000388 80A9ED58 240D001D */  li    $t5, 29
/* 00038C 80A9ED5C 448B9000 */  mtc1  $t3, $f18
/* 000390 80A9ED60 448C3000 */  mtc1  $t4, $f6
/* 000394 80A9ED64 AFAD0014 */  sw    $t5, 0x14($sp)
/* 000398 80A9ED68 468094A0 */  cvt.s.w $f18, $f18
/* 00039C 80A9ED6C 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0003A0 80A9ED70 02002825 */  move  $a1, $s0
/* 0003A4 80A9ED74 46803020 */  cvt.s.w $f0, $f6
/* 0003A8 80A9ED78 44069000 */  mfc1  $a2, $f18
/* 0003AC 80A9ED7C 44070000 */  mfc1  $a3, $f0
/* 0003B0 80A9ED80 0C00B92D */  jal   func_8002E4B4
/* 0003B4 80A9ED84 E7A00010 */   swc1  $f0, 0x10($sp)
/* 0003B8 80A9ED88 8E0F0024 */  lw    $t7, 0x24($s0)
/* 0003BC 80A9ED8C 8E0E0028 */  lw    $t6, 0x28($s0)
/* 0003C0 80A9ED90 AE0F0038 */  sw    $t7, 0x38($s0)
/* 0003C4 80A9ED94 8E0F002C */  lw    $t7, 0x2c($s0)
/* 0003C8 80A9ED98 AE0E003C */  sw    $t6, 0x3c($s0)
/* 0003CC 80A9ED9C AE0F0040 */  sw    $t7, 0x40($s0)
/* 0003D0 80A9EDA0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0003D4 80A9EDA4 8FB00020 */  lw    $s0, 0x20($sp)
/* 0003D8 80A9EDA8 27BD0028 */  addiu $sp, $sp, 0x28
/* 0003DC 80A9EDAC 03E00008 */  jr    $ra
/* 0003E0 80A9EDB0 00000000 */   nop   

func_80A9EDB4:
/* 0003E4 80A9EDB4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0003E8 80A9EDB8 AFA40018 */  sw    $a0, 0x18($sp)
/* 0003EC 80A9EDBC 00A02025 */  move  $a0, $a1
/* 0003F0 80A9EDC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0003F4 80A9EDC4 3C050600 */  lui   $a1, %hi(D_06000B70) # $a1, 0x600
/* 0003F8 80A9EDC8 0C00D498 */  jal   Draw_DListOpa
/* 0003FC 80A9EDCC 24A50B70 */   addiu $a1, %lo(D_06000B70) # addiu $a1, $a1, 0xb70
/* 000400 80A9EDD0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000404 80A9EDD4 27BD0018 */  addiu $sp, $sp, 0x18
/* 000408 80A9EDD8 03E00008 */  jr    $ra
/* 00040C 80A9EDDC 00000000 */   nop   

.section .data
D_80A9EDE0:
.incbin "baserom/ovl_En_Lightbox", 0x410, 0x20
D_80A9EE00:
.incbin "baserom/ovl_En_Lightbox", 0x430, 0x40
