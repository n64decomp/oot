.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_809A8BF0:
/* 000000 809A8BF0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 000004 809A8BF4 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* 000008 809A8BF8 AFA40038 */  sw    $a0, 0x38($sp)
/* 00000C 809A8BFC 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* 000010 809A8C00 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000014 809A8C04 AFB00018 */  sw    $s0, 0x18($sp)
/* 000018 809A8C08 AFA5003C */  sw    $a1, 0x3c($sp)
/* 00001C 809A8C0C 00812021 */  addu  $a0, $a0, $at
/* 000020 809A8C10 00C08025 */  move  $s0, $a2
/* 000024 809A8C14 AFA70044 */  sw    $a3, 0x44($sp)
/* 000028 809A8C18 AFA40024 */  sw    $a0, 0x24($sp)
/* 00002C 809A8C1C 0C02604B */  jal   Object_GetIndex
/* 000030 809A8C20 24050114 */   li    $a1, 276
/* 000034 809A8C24 8FA40024 */  lw    $a0, 0x24($sp)
/* 000038 809A8C28 04400032 */  bltz  $v0, .L809A8CF4
/* 00003C 809A8C2C 00402825 */   move  $a1, $v0
/* 000040 809A8C30 0C026062 */  jal   Object_IsLoaded
/* 000044 809A8C34 AFA2002C */   sw    $v0, 0x2c($sp)
/* 000048 809A8C38 1040002E */  beqz  $v0, .L809A8CF4
/* 00004C 809A8C3C 3C090001 */   lui   $t1, 1
/* 000050 809A8C40 8FB8002C */  lw    $t8, 0x2c($sp)
/* 000054 809A8C44 3C028016 */  lui   $v0, %hi(D_80166FA8) # $v0, 0x8016
/* 000058 809A8C48 8FAF0038 */  lw    $t7, 0x38($sp)
/* 00005C 809A8C4C 24426FA8 */  addiu $v0, %lo(D_80166FA8) # addiu $v0, $v0, 0x6fa8
/* 000060 809A8C50 0018C900 */  sll   $t9, $t8, 4
/* 000064 809A8C54 8C4E0018 */  lw    $t6, 0x18($v0)
/* 000068 809A8C58 0338C821 */  addu  $t9, $t9, $t8
/* 00006C 809A8C5C 0019C880 */  sll   $t9, $t9, 2
/* 000070 809A8C60 01F94021 */  addu  $t0, $t7, $t9
/* 000074 809A8C64 01284821 */  addu  $t1, $t1, $t0
/* 000078 809A8C68 AFAE0028 */  sw    $t6, 0x28($sp)
/* 00007C 809A8C6C 8D2917B4 */  lw    $t1, 0x17b4($t1)
/* 000080 809A8C70 3C018000 */  lui   $at, 0x8000
/* 000084 809A8C74 02002025 */  move  $a0, $s0
/* 000088 809A8C78 01215021 */  addu  $t2, $t1, $at
/* 00008C 809A8C7C AC4A0018 */  sw    $t2, 0x18($v0)
/* 000090 809A8C80 0C01DF90 */  jal   Math_Vec3f_Copy
/* 000094 809A8C84 8FA50044 */   lw    $a1, 0x44($sp)
/* 000098 809A8C88 8FA50044 */  lw    $a1, 0x44($sp)
/* 00009C 809A8C8C 2604000C */  addiu $a0, $s0, 0xc
/* 0000A0 809A8C90 0C01DF90 */  jal   Math_Vec3f_Copy
/* 0000A4 809A8C94 24A5000C */   addiu $a1, $a1, 0xc
/* 0000A8 809A8C98 8FA50044 */  lw    $a1, 0x44($sp)
/* 0000AC 809A8C9C 26040018 */  addiu $a0, $s0, 0x18
/* 0000B0 809A8CA0 0C01DF90 */  jal   Math_Vec3f_Copy
/* 0000B4 809A8CA4 24A50018 */   addiu $a1, $a1, 0x18
/* 0000B8 809A8CA8 8FAB002C */  lw    $t3, 0x2c($sp)
/* 0000BC 809A8CAC A6000042 */  sh    $zero, 0x42($s0)
/* 0000C0 809A8CB0 3C18809B */  lui   $t8, %hi(func_809A8D18) # $t8, 0x809b
/* 0000C4 809A8CB4 A60B0040 */  sh    $t3, 0x40($s0)
/* 0000C8 809A8CB8 8FAC0044 */  lw    $t4, 0x44($sp)
/* 0000CC 809A8CBC 3C0F809B */  lui   $t7, %hi(func_809A9030) # $t7, 0x809b
/* 0000D0 809A8CC0 240E0032 */  li    $t6, 50
/* 0000D4 809A8CC4 858D0024 */  lh    $t5, 0x24($t4)
/* 0000D8 809A8CC8 27188D18 */  addiu $t8, %lo(func_809A8D18) # addiu $t8, $t8, -0x72e8
/* 0000DC 809A8CCC 25EF9030 */  addiu $t7, %lo(func_809A9030) # addiu $t7, $t7, -0x6fd0
/* 0000E0 809A8CD0 A60E005C */  sh    $t6, 0x5c($s0)
/* 0000E4 809A8CD4 AE180028 */  sw    $t8, 0x28($s0)
/* 0000E8 809A8CD8 AE0F0024 */  sw    $t7, 0x24($s0)
/* 0000EC 809A8CDC A60D0044 */  sh    $t5, 0x44($s0)
/* 0000F0 809A8CE0 8FB90028 */  lw    $t9, 0x28($sp)
/* 0000F4 809A8CE4 3C018016 */  lui   $at, %hi(D_80166FC0) # $at, 0x8016
/* 0000F8 809A8CE8 24020001 */  li    $v0, 1
/* 0000FC 809A8CEC 10000005 */  b     .L809A8D04
/* 000100 809A8CF0 AC396FC0 */   sw    $t9, %lo(D_80166FC0)($at)
.L809A8CF4:
/* 000104 809A8CF4 3C04809B */  lui   $a0, %hi(D_809A90C0) # $a0, 0x809b
/* 000108 809A8CF8 0C00084C */  jal   osSyncPrintf
/* 00010C 809A8CFC 248490C0 */   addiu $a0, %lo(D_809A90C0) # addiu $a0, $a0, -0x6f40
/* 000110 809A8D00 00001025 */  move  $v0, $zero
.L809A8D04:
/* 000114 809A8D04 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000118 809A8D08 8FB00018 */  lw    $s0, 0x18($sp)
/* 00011C 809A8D0C 27BD0038 */  addiu $sp, $sp, 0x38
/* 000120 809A8D10 03E00008 */  jr    $ra
/* 000124 809A8D14 00000000 */   nop   

func_809A8D18:
/* 000128 809A8D18 27BDFF70 */  addiu $sp, $sp, -0x90
/* 00012C 809A8D1C AFBF003C */  sw    $ra, 0x3c($sp)
/* 000130 809A8D20 AFB00038 */  sw    $s0, 0x38($sp)
/* 000134 809A8D24 AFA40090 */  sw    $a0, 0x90($sp)
/* 000138 809A8D28 AFA50094 */  sw    $a1, 0x94($sp)
/* 00013C 809A8D2C AFA60098 */  sw    $a2, 0x98($sp)
/* 000140 809A8D30 84D80040 */  lh    $t8, 0x40($a2)
/* 000144 809A8D34 3C0C0001 */  lui   $t4, 1
/* 000148 809A8D38 3C06809B */  lui   $a2, %hi(D_809A9100) # $a2, 0x809b
/* 00014C 809A8D3C 0018C900 */  sll   $t9, $t8, 4
/* 000150 809A8D40 0338C821 */  addu  $t9, $t9, $t8
/* 000154 809A8D44 0019C880 */  sll   $t9, $t9, 2
/* 000158 809A8D48 00995821 */  addu  $t3, $a0, $t9
/* 00015C 809A8D4C 018B6021 */  addu  $t4, $t4, $t3
/* 000160 809A8D50 8D8C17B4 */  lw    $t4, 0x17b4($t4)
/* 000164 809A8D54 24C69100 */  addiu $a2, %lo(D_809A9100) # addiu $a2, $a2, -0x6f00
/* 000168 809A8D58 2407009B */  li    $a3, 155
/* 00016C 809A8D5C AFAC0088 */  sw    $t4, 0x88($sp)
/* 000170 809A8D60 8C850000 */  lw    $a1, ($a0)
/* 000174 809A8D64 27A40068 */  addiu $a0, $sp, 0x68
/* 000178 809A8D68 0C031AB1 */  jal   func_800C6AC4
/* 00017C 809A8D6C 00A08025 */   move  $s0, $a1
/* 000180 809A8D70 8FA40090 */  lw    $a0, 0x90($sp)
/* 000184 809A8D74 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* 000188 809A8D78 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* 00018C 809A8D7C 00812021 */  addu  $a0, $a0, $at
/* 000190 809A8D80 AFA40044 */  sw    $a0, 0x44($sp)
/* 000194 809A8D84 0C02604B */  jal   Object_GetIndex
/* 000198 809A8D88 24050114 */   li    $a1, 276
/* 00019C 809A8D8C 8FA40044 */  lw    $a0, 0x44($sp)
/* 0001A0 809A8D90 04400098 */  bltz  $v0, .L809A8FF4
/* 0001A4 809A8D94 00402825 */   move  $a1, $v0
/* 0001A8 809A8D98 0C026062 */  jal   Object_IsLoaded
/* 0001AC 809A8D9C 00000000 */   nop   
/* 0001B0 809A8DA0 50400095 */  beql  $v0, $zero, .L809A8FF8
/* 0001B4 809A8DA4 8FAB0098 */   lw    $t3, 0x98($sp)
/* 0001B8 809A8DA8 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 0001BC 809A8DAC 3C0FE700 */  lui   $t7, 0xe700
/* 0001C0 809A8DB0 246D0008 */  addiu $t5, $v1, 8
/* 0001C4 809A8DB4 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* 0001C8 809A8DB8 AC600004 */  sw    $zero, 4($v1)
/* 0001CC 809A8DBC AC6F0000 */  sw    $t7, ($v1)
/* 0001D0 809A8DC0 8FB80090 */  lw    $t8, 0x90($sp)
/* 0001D4 809A8DC4 0C024F61 */  jal   func_80093D84
/* 0001D8 809A8DC8 8F040000 */   lw    $a0, ($t8)
/* 0001DC 809A8DCC 8FA40088 */  lw    $a0, 0x88($sp)
/* 0001E0 809A8DD0 3C0A8016 */  lui   $t2, %hi(D_80166FA8) # $t2, 0x8016
/* 0001E4 809A8DD4 3C018000 */  lui   $at, 0x8000
/* 0001E8 809A8DD8 254A6FA8 */  addiu $t2, %lo(D_80166FA8) # addiu $t2, $t2, 0x6fa8
/* 0001EC 809A8DDC 0081C821 */  addu  $t9, $a0, $at
/* 0001F0 809A8DE0 AD590018 */  sw    $t9, 0x18($t2)
/* 0001F4 809A8DE4 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 0001F8 809A8DE8 3C0CDB06 */  lui   $t4, (0xDB060018 >> 16) # lui $t4, 0xdb06
/* 0001FC 809A8DEC 358C0018 */  ori   $t4, (0xDB060018 & 0xFFFF) # ori $t4, $t4, 0x18
/* 000200 809A8DF0 246B0008 */  addiu $t3, $v1, 8
/* 000204 809A8DF4 AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* 000208 809A8DF8 AC640004 */  sw    $a0, 4($v1)
/* 00020C 809A8DFC AC6C0000 */  sw    $t4, ($v1)
/* 000210 809A8E00 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 000214 809A8E04 3C040600 */  lui   $a0, %hi(D_060030A0) # $a0, 0x600
/* 000218 809A8E08 248430A0 */  addiu $a0, %lo(D_060030A0) # addiu $a0, $a0, 0x30a0
/* 00021C 809A8E0C 00047900 */  sll   $t7, $a0, 4
/* 000220 809A8E10 000FC702 */  srl   $t8, $t7, 0x1c
/* 000224 809A8E14 246E0008 */  addiu $t6, $v1, 8
/* 000228 809A8E18 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* 00022C 809A8E1C 0018C880 */  sll   $t9, $t8, 2
/* 000230 809A8E20 3C0DDE00 */  lui   $t5, 0xde00
/* 000234 809A8E24 01595821 */  addu  $t3, $t2, $t9
/* 000238 809A8E28 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 00023C 809A8E2C AC6D0000 */  sw    $t5, ($v1)
/* 000240 809A8E30 8D6C0000 */  lw    $t4, ($t3)
/* 000244 809A8E34 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 000248 809A8E38 00817024 */  and   $t6, $a0, $at
/* 00024C 809A8E3C 3C018000 */  lui   $at, 0x8000
/* 000250 809A8E40 018E6821 */  addu  $t5, $t4, $t6
/* 000254 809A8E44 01A17821 */  addu  $t7, $t5, $at
/* 000258 809A8E48 AC6F0004 */  sw    $t7, 4($v1)
/* 00025C 809A8E4C 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 000260 809A8E50 3C19E700 */  lui   $t9, 0xe700
/* 000264 809A8E54 3C0CFA00 */  lui   $t4, 0xfa00
/* 000268 809A8E58 24780008 */  addiu $t8, $v1, 8
/* 00026C 809A8E5C AE1802D0 */  sw    $t8, 0x2d0($s0)
/* 000270 809A8E60 AC790000 */  sw    $t9, ($v1)
/* 000274 809A8E64 AC600004 */  sw    $zero, 4($v1)
/* 000278 809A8E68 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 00027C 809A8E6C 8FA90098 */  lw    $t1, 0x98($sp)
/* 000280 809A8E70 3C01C3EB */  lui   $at, (0xC3EBEB00 >> 16) # lui $at, 0xc3eb
/* 000284 809A8E74 246B0008 */  addiu $t3, $v1, 8
/* 000288 809A8E78 AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* 00028C 809A8E7C AC6C0000 */  sw    $t4, ($v1)
/* 000290 809A8E80 852E0042 */  lh    $t6, 0x42($t1)
/* 000294 809A8E84 3421EB00 */  ori   $at, (0xC3EBEB00 & 0xFFFF) # ori $at, $at, 0xeb00
/* 000298 809A8E88 3C19DB06 */  lui   $t9, (0xDB060020 >> 16) # lui $t9, 0xdb06
/* 00029C 809A8E8C 31CD00FF */  andi  $t5, $t6, 0xff
/* 0002A0 809A8E90 01A17825 */  or    $t7, $t5, $at
/* 0002A4 809A8E94 AC6F0004 */  sw    $t7, 4($v1)
/* 0002A8 809A8E98 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 0002AC 809A8E9C 37390020 */  ori   $t9, (0xDB060020 & 0xFFFF) # ori $t9, $t9, 0x20
/* 0002B0 809A8EA0 240F0020 */  li    $t7, 32
/* 0002B4 809A8EA4 24780008 */  addiu $t8, $v1, 8
/* 0002B8 809A8EA8 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* 0002BC 809A8EAC AC790000 */  sw    $t9, ($v1)
/* 0002C0 809A8EB0 8522005C */  lh    $v0, 0x5c($t1)
/* 0002C4 809A8EB4 8FAB0090 */  lw    $t3, 0x90($sp)
/* 0002C8 809A8EB8 24180020 */  li    $t8, 32
/* 0002CC 809A8EBC 240D0001 */  li    $t5, 1
/* 0002D0 809A8EC0 8D640000 */  lw    $a0, ($t3)
/* 0002D4 809A8EC4 240E0040 */  li    $t6, 64
/* 0002D8 809A8EC8 240C0020 */  li    $t4, 32
/* 0002DC 809A8ECC 00023080 */  sll   $a2, $v0, 2
/* 0002E0 809A8ED0 00023900 */  sll   $a3, $v0, 4
/* 0002E4 809A8ED4 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0002E8 809A8ED8 AFAE0014 */  sw    $t6, 0x14($sp)
/* 0002EC 809A8EDC AFB80028 */  sw    $t8, 0x28($sp)
/* 0002F0 809A8EE0 AFAF0024 */  sw    $t7, 0x24($sp)
/* 0002F4 809A8EE4 AFA00020 */  sw    $zero, 0x20($sp)
/* 0002F8 809A8EE8 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0002FC 809A8EEC AFAD0018 */  sw    $t5, 0x18($sp)
/* 000300 809A8EF0 00002825 */  move  $a1, $zero
/* 000304 809A8EF4 AFA30050 */  sw    $v1, 0x50($sp)
/* 000308 809A8EF8 00E23823 */  subu  $a3, $a3, $v0
/* 00030C 809A8EFC 0C0253D0 */  jal   func_80094F40
/* 000310 809A8F00 00C23023 */   subu  $a2, $a2, $v0
/* 000314 809A8F04 8FA80050 */  lw    $t0, 0x50($sp)
/* 000318 809A8F08 00003825 */  move  $a3, $zero
/* 00031C 809A8F0C AD020004 */  sw    $v0, 4($t0)
/* 000320 809A8F10 8FA20098 */  lw    $v0, 0x98($sp)
/* 000324 809A8F14 C44C0000 */  lwc1  $f12, ($v0)
/* 000328 809A8F18 C44E0004 */  lwc1  $f14, 4($v0)
/* 00032C 809A8F1C 0C034261 */  jal   func_800D0984
/* 000330 809A8F20 8C460008 */   lw    $a2, 8($v0)
/* 000334 809A8F24 8FA40090 */  lw    $a0, 0x90($sp)
/* 000338 809A8F28 3C010001 */  lui   $at, (0x00011DA0 >> 16) # lui $at, 1
/* 00033C 809A8F2C 34211DA0 */  ori   $at, (0x00011DA0 & 0xFFFF) # ori $at, $at, 0x1da0
/* 000340 809A8F30 0C0347F5 */  jal   func_800D1FD4
/* 000344 809A8F34 00812021 */   addu  $a0, $a0, $at
/* 000348 809A8F38 8FB90098 */  lw    $t9, 0x98($sp)
/* 00034C 809A8F3C 3C01809B */  lui   $at, %hi(D_809A9148) # $at, 0x809b
/* 000350 809A8F40 C4289148 */  lwc1  $f8, %lo(D_809A9148)($at)
/* 000354 809A8F44 872B0044 */  lh    $t3, 0x44($t9)
/* 000358 809A8F48 3C063F80 */  lui   $a2, 0x3f80
/* 00035C 809A8F4C 24070001 */  li    $a3, 1
/* 000360 809A8F50 448B2000 */  mtc1  $t3, $f4
/* 000364 809A8F54 00000000 */  nop   
/* 000368 809A8F58 468021A0 */  cvt.s.w $f6, $f4
/* 00036C 809A8F5C 46083302 */  mul.s $f12, $f6, $f8
/* 000370 809A8F60 0C0342A3 */  jal   func_800D0A8C
/* 000374 809A8F64 46006386 */   mov.s $f14, $f12
/* 000378 809A8F68 8FAC0090 */  lw    $t4, 0x90($sp)
/* 00037C 809A8F6C 3C05809B */  lui   $a1, %hi(D_809A9118) # $a1, 0x809b
/* 000380 809A8F70 24A59118 */  addiu $a1, %lo(D_809A9118) # addiu $a1, $a1, -0x6ee8
/* 000384 809A8F74 240600C4 */  li    $a2, 196
/* 000388 809A8F78 0C0346A2 */  jal   func_800D1A88
/* 00038C 809A8F7C 8D840000 */   lw    $a0, ($t4)
/* 000390 809A8F80 1040001F */  beqz  $v0, .L809A9000
/* 000394 809A8F84 3C0DDA38 */   lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* 000398 809A8F88 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 00039C 809A8F8C 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* 0003A0 809A8F90 3C040600 */  lui   $a0, %hi(D_06003158) # $a0, 0x600
/* 0003A4 809A8F94 246E0008 */  addiu $t6, $v1, 8
/* 0003A8 809A8F98 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* 0003AC 809A8F9C AC620004 */  sw    $v0, 4($v1)
/* 0003B0 809A8FA0 AC6D0000 */  sw    $t5, ($v1)
/* 0003B4 809A8FA4 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 0003B8 809A8FA8 24843158 */  addiu $a0, %lo(D_06003158) # addiu $a0, $a0, 0x3158
/* 0003BC 809A8FAC 0004C900 */  sll   $t9, $a0, 4
/* 0003C0 809A8FB0 00195F02 */  srl   $t3, $t9, 0x1c
/* 0003C4 809A8FB4 246F0008 */  addiu $t7, $v1, 8
/* 0003C8 809A8FB8 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* 0003CC 809A8FBC 000B6080 */  sll   $t4, $t3, 2
/* 0003D0 809A8FC0 3C0E8016 */  lui   $t6, 0x8016
/* 0003D4 809A8FC4 3C18DE00 */  lui   $t8, 0xde00
/* 0003D8 809A8FC8 01CC7021 */  addu  $t6, $t6, $t4
/* 0003DC 809A8FCC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0003E0 809A8FD0 AC780000 */  sw    $t8, ($v1)
/* 0003E4 809A8FD4 8DCE6FA8 */  lw    $t6, 0x6fa8($t6)
/* 0003E8 809A8FD8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0003EC 809A8FDC 00816824 */  and   $t5, $a0, $at
/* 0003F0 809A8FE0 3C018000 */  lui   $at, 0x8000
/* 0003F4 809A8FE4 01CD7821 */  addu  $t7, $t6, $t5
/* 0003F8 809A8FE8 01E1C021 */  addu  $t8, $t7, $at
/* 0003FC 809A8FEC 10000004 */  b     .L809A9000
/* 000400 809A8FF0 AC780004 */   sw    $t8, 4($v1)
.L809A8FF4:
/* 000404 809A8FF4 8FAB0098 */  lw    $t3, 0x98($sp)
.L809A8FF8:
/* 000408 809A8FF8 2419FFFF */  li    $t9, -1
/* 00040C 809A8FFC A579005C */  sh    $t9, 0x5c($t3)
.L809A9000:
/* 000410 809A9000 8FAC0090 */  lw    $t4, 0x90($sp)
/* 000414 809A9004 3C06809B */  lui   $a2, %hi(D_809A9130) # $a2, 0x809b
/* 000418 809A9008 24C69130 */  addiu $a2, %lo(D_809A9130) # addiu $a2, $a2, -0x6ed0
/* 00041C 809A900C 27A40068 */  addiu $a0, $sp, 0x68
/* 000420 809A9010 240700D2 */  li    $a3, 210
/* 000424 809A9014 0C031AD5 */  jal   func_800C6B54
/* 000428 809A9018 8D850000 */   lw    $a1, ($t4)
/* 00042C 809A901C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 000430 809A9020 8FB00038 */  lw    $s0, 0x38($sp)
/* 000434 809A9024 27BD0090 */  addiu $sp, $sp, 0x90
/* 000438 809A9028 03E00008 */  jr    $ra
/* 00043C 809A902C 00000000 */   nop   

func_809A9030:
/* 000440 809A9030 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 000444 809A9034 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* 000448 809A9038 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* 00044C 809A903C AFBF0014 */  sw    $ra, 0x14($sp)
/* 000450 809A9040 AFA50024 */  sw    $a1, 0x24($sp)
/* 000454 809A9044 00812021 */  addu  $a0, $a0, $at
/* 000458 809A9048 AFA60028 */  sw    $a2, 0x28($sp)
/* 00045C 809A904C AFA40018 */  sw    $a0, 0x18($sp)
/* 000460 809A9050 0C02604B */  jal   Object_GetIndex
/* 000464 809A9054 24050114 */   li    $a1, 276
/* 000468 809A9058 8FA30028 */  lw    $v1, 0x28($sp)
/* 00046C 809A905C 8FA40018 */  lw    $a0, 0x18($sp)
/* 000470 809A9060 0440000B */  bltz  $v0, .L809A9090
/* 000474 809A9064 00402825 */   move  $a1, $v0
/* 000478 809A9068 0C026062 */  jal   Object_IsLoaded
/* 00047C 809A906C 00000000 */   nop   
/* 000480 809A9070 10400007 */  beqz  $v0, .L809A9090
/* 000484 809A9074 8FA30028 */   lw    $v1, 0x28($sp)
/* 000488 809A9078 84620042 */  lh    $v0, 0x42($v1)
/* 00048C 809A907C 28410064 */  slti  $at, $v0, 0x64
/* 000490 809A9080 10200005 */  beqz  $at, .L809A9098
/* 000494 809A9084 244E000A */   addiu $t6, $v0, 0xa
/* 000498 809A9088 10000003 */  b     .L809A9098
/* 00049C 809A908C A46E0042 */   sh    $t6, 0x42($v1)
.L809A9090:
/* 0004A0 809A9090 240FFFFF */  li    $t7, -1
/* 0004A4 809A9094 A46F005C */  sh    $t7, 0x5c($v1)
.L809A9098:
/* 0004A8 809A9098 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0004AC 809A909C 27BD0020 */  addiu $sp, $sp, 0x20
/* 0004B0 809A90A0 03E00008 */  jr    $ra
/* 0004B4 809A90A4 00000000 */   nop   

.section .data

D_809A90B0:
.incbin "baserom/ovl_Effect_Ss_Ice_Smoke", 0x4C0, 0x10
D_809A90C0:
.incbin "baserom/ovl_Effect_Ss_Ice_Smoke", 0x4D0, 0x40
D_809A9100:
.incbin "baserom/ovl_Effect_Ss_Ice_Smoke", 0x510, 0x18
D_809A9118:
.incbin "baserom/ovl_Effect_Ss_Ice_Smoke", 0x528, 0x18
D_809A9130:
.incbin "baserom/ovl_Effect_Ss_Ice_Smoke", 0x540, 0x18
D_809A9148:
.incbin "baserom/ovl_Effect_Ss_Ice_Smoke", 0x558, 0x10
D_809A9158:
.incbin "baserom/ovl_Effect_Ss_Ice_Smoke", 0x568, 0x58
