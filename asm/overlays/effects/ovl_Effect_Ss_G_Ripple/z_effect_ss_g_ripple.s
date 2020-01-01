.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_809A6960:
/* 000000 809A6960 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 000004 809A6964 3C0E809A */  lui   $t6, %hi(D_809A6E88) # $t6, 0x809a
/* 000008 809A6968 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00000C 809A696C AFB10020 */  sw    $s1, 0x20($sp)
/* 000010 809A6970 AFB0001C */  sw    $s0, 0x1c($sp)
/* 000014 809A6974 AFA50054 */  sw    $a1, 0x54($sp)
/* 000018 809A6978 25CE6E88 */  addiu $t6, %lo(D_809A6E88) # addiu $t6, $t6, 0x6e88
/* 00001C 809A697C 8DD80000 */  lw    $t8, ($t6)
/* 000020 809A6980 27A80040 */  addiu $t0, $sp, 0x40
/* 000024 809A6984 27A5002C */  addiu $a1, $sp, 0x2c
/* 000028 809A6988 AD180000 */  sw    $t8, ($t0)
/* 00002C 809A698C 8DCF0004 */  lw    $t7, 4($t6)
/* 000030 809A6990 3C030402 */  lui   $v1, %hi(D_040254B0) # $v1, 0x402
/* 000034 809A6994 246354B0 */  addiu $v1, %lo(D_040254B0) # addiu $v1, $v1, 0x54b0
/* 000038 809A6998 AD0F0004 */  sw    $t7, 4($t0)
/* 00003C 809A699C 8DD80008 */  lw    $t8, 8($t6)
/* 000040 809A69A0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 000044 809A69A4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 000048 809A69A8 AD180008 */  sw    $t8, 8($t0)
/* 00004C 809A69AC AFA0003C */  sw    $zero, 0x3c($sp)
/* 000050 809A69B0 8D090000 */  lw    $t1, ($t0)
/* 000054 809A69B4 8D190004 */  lw    $t9, 4($t0)
/* 000058 809A69B8 0003C100 */  sll   $t8, $v1, 4
/* 00005C 809A69BC ACA90000 */  sw    $t1, ($a1)
/* 000060 809A69C0 8D090008 */  lw    $t1, 8($t0)
/* 000064 809A69C4 8CAB0000 */  lw    $t3, ($a1)
/* 000068 809A69C8 ACB90004 */  sw    $t9, 4($a1)
/* 00006C 809A69CC ACA90008 */  sw    $t1, 8($a1)
/* 000070 809A69D0 ACCB0018 */  sw    $t3, 0x18($a2)
/* 000074 809A69D4 8CAA0004 */  lw    $t2, 4($a1)
/* 000078 809A69D8 0018CF02 */  srl   $t9, $t8, 0x1c
/* 00007C 809A69DC 00194880 */  sll   $t1, $t9, 2
/* 000080 809A69E0 ACCA001C */  sw    $t2, 0x1c($a2)
/* 000084 809A69E4 8CAB0008 */  lw    $t3, 8($a1)
/* 000088 809A69E8 3C0A8016 */  lui   $t2, 0x8016
/* 00008C 809A69EC 01495021 */  addu  $t2, $t2, $t1
/* 000090 809A69F0 ACCB0020 */  sw    $t3, 0x20($a2)
/* 000094 809A69F4 8CAD0000 */  lw    $t5, ($a1)
/* 000098 809A69F8 00615824 */  and   $t3, $v1, $at
/* 00009C 809A69FC 3C018000 */  lui   $at, 0x8000
/* 0000A0 809A6A00 ACCD000C */  sw    $t5, 0xc($a2)
/* 0000A4 809A6A04 8CAC0004 */  lw    $t4, 4($a1)
/* 0000A8 809A6A08 3C18809A */  lui   $t8, %hi(func_809A6D08) # $t8, 0x809a
/* 0000AC 809A6A0C 3C19809A */  lui   $t9, %hi(func_809A6D40) # $t9, 0x809a
/* 0000B0 809A6A10 ACCC0010 */  sw    $t4, 0x10($a2)
/* 0000B4 809A6A14 8CAD0008 */  lw    $t5, 8($a1)
/* 0000B8 809A6A18 27186D08 */  addiu $t8, %lo(func_809A6D08) # addiu $t8, $t8, 0x6d08
/* 0000BC 809A6A1C 27396D40 */  addiu $t9, %lo(func_809A6D40) # addiu $t9, $t9, 0x6d40
/* 0000C0 809A6A20 ACCD0014 */  sw    $t5, 0x14($a2)
/* 0000C4 809A6A24 8CEF0000 */  lw    $t7, ($a3)
/* 0000C8 809A6A28 240200FF */  li    $v0, 255
/* 0000CC 809A6A2C 00C08025 */  move  $s0, $a2
/* 0000D0 809A6A30 ACCF0000 */  sw    $t7, ($a2)
/* 0000D4 809A6A34 8CEE0004 */  lw    $t6, 4($a3)
/* 0000D8 809A6A38 248507C0 */  addiu $a1, $a0, 0x7c0
/* 0000DC 809A6A3C ACCE0004 */  sw    $t6, 4($a2)
/* 0000E0 809A6A40 8CEF0008 */  lw    $t7, 8($a3)
/* 0000E4 809A6A44 ACCF0008 */  sw    $t7, 8($a2)
/* 0000E8 809A6A48 8D4A6FA8 */  lw    $t2, 0x6fa8($t2)
/* 0000EC 809A6A4C 014B6021 */  addu  $t4, $t2, $t3
/* 0000F0 809A6A50 01816821 */  addu  $t5, $t4, $at
/* 0000F4 809A6A54 ACCD0038 */  sw    $t5, 0x38($a2)
/* 0000F8 809A6A58 84EE0010 */  lh    $t6, 0x10($a3)
/* 0000FC 809A6A5C A4C0005A */  sh    $zero, 0x5a($a2)
/* 000100 809A6A60 ACD80028 */  sw    $t8, 0x28($a2)
/* 000104 809A6A64 25CF0014 */  addiu $t7, $t6, 0x14
/* 000108 809A6A68 A4CF005C */  sh    $t7, 0x5c($a2)
/* 00010C 809A6A6C ACD90024 */  sw    $t9, 0x24($a2)
/* 000110 809A6A70 84E9000C */  lh    $t1, 0xc($a3)
/* 000114 809A6A74 27AC003C */  addiu $t4, $sp, 0x3c
/* 000118 809A6A78 A4C90042 */  sh    $t1, 0x42($a2)
/* 00011C 809A6A7C 84EA000E */  lh    $t2, 0xe($a3)
/* 000120 809A6A80 A4CA0044 */  sh    $t2, 0x44($a2)
/* 000124 809A6A84 84EB0010 */  lh    $t3, 0x10($a3)
/* 000128 809A6A88 A4C20046 */  sh    $v0, 0x46($a2)
/* 00012C 809A6A8C A4C20048 */  sh    $v0, 0x48($a2)
/* 000130 809A6A90 A4C2004A */  sh    $v0, 0x4a($a2)
/* 000134 809A6A94 A4C2004C */  sh    $v0, 0x4c($a2)
/* 000138 809A6A98 A4C2004E */  sh    $v0, 0x4e($a2)
/* 00013C 809A6A9C A4C20050 */  sh    $v0, 0x50($a2)
/* 000140 809A6AA0 A4C20052 */  sh    $v0, 0x52($a2)
/* 000144 809A6AA4 A4C20054 */  sh    $v0, 0x54($a2)
/* 000148 809A6AA8 A4CB0056 */  sh    $t3, 0x56($a2)
/* 00014C 809A6AAC 00E03025 */  move  $a2, $a3
/* 000150 809A6AB0 3C074040 */  lui   $a3, 0x4040
/* 000154 809A6AB4 0C0108E7 */  jal   func_8004239C
/* 000158 809A6AB8 AFAC0010 */   sw    $t4, 0x10($sp)
/* 00015C 809A6ABC A6020040 */  sh    $v0, 0x40($s0)
/* 000160 809A6AC0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 000164 809A6AC4 8FB10020 */  lw    $s1, 0x20($sp)
/* 000168 809A6AC8 8FB0001C */  lw    $s0, 0x1c($sp)
/* 00016C 809A6ACC 27BD0050 */  addiu $sp, $sp, 0x50
/* 000170 809A6AD0 03E00008 */  jr    $ra
/* 000174 809A6AD4 24020001 */   li    $v0, 1

func_809A6AD8:
/* 000178 809A6AD8 27BDFED8 */  addiu $sp, $sp, -0x128
/* 00017C 809A6ADC AFBF001C */  sw    $ra, 0x1c($sp)
/* 000180 809A6AE0 AFB10018 */  sw    $s1, 0x18($sp)
/* 000184 809A6AE4 AFB00014 */  sw    $s0, 0x14($sp)
/* 000188 809A6AE8 AFA40128 */  sw    $a0, 0x128($sp)
/* 00018C 809A6AEC AFA60130 */  sw    $a2, 0x130($sp)
/* 000190 809A6AF0 8C900000 */  lw    $s0, ($a0)
/* 000194 809A6AF4 00A08825 */  move  $s1, $a1
/* 000198 809A6AF8 3C06809A */  lui   $a2, %hi(D_809A6EA0) # $a2, 0x809a
/* 00019C 809A6AFC 24C66EA0 */  addiu $a2, %lo(D_809A6EA0) # addiu $a2, $a2, 0x6ea0
/* 0001A0 809A6B00 27A40040 */  addiu $a0, $sp, 0x40
/* 0001A4 809A6B04 240700C7 */  li    $a3, 199
/* 0001A8 809A6B08 0C031AB1 */  jal   func_800C6AC4
/* 0001AC 809A6B0C 02002825 */   move  $a1, $s0
/* 0001B0 809A6B10 862F0042 */  lh    $t7, 0x42($s1)
/* 0001B4 809A6B14 3C01809A */  lui   $at, %hi(D_809A6ED0) # $at, 0x809a
/* 0001B8 809A6B18 C4286ED0 */  lwc1  $f8, %lo(D_809A6ED0)($at)
/* 0001BC 809A6B1C 448F2000 */  mtc1  $t7, $f4
/* 0001C0 809A6B20 86220040 */  lh    $v0, 0x40($s1)
/* 0001C4 809A6B24 2401FFFF */  li    $at, -1
/* 0001C8 809A6B28 468021A0 */  cvt.s.w $f6, $f4
/* 0001CC 809A6B2C 8FA40128 */  lw    $a0, 0x128($sp)
/* 0001D0 809A6B30 46083082 */  mul.s $f2, $f6, $f8
/* 0001D4 809A6B34 5041000E */  beql  $v0, $at, .L809A6B70
/* 0001D8 809A6B38 C6200004 */   lwc1  $f0, 4($s1)
/* 0001DC 809A6B3C 8C8307C0 */  lw    $v1, 0x7c0($a0)
/* 0001E0 809A6B40 94780024 */  lhu   $t8, 0x24($v1)
/* 0001E4 809A6B44 0058082A */  slt   $at, $v0, $t8
/* 0001E8 809A6B48 50200009 */  beql  $at, $zero, .L809A6B70
/* 0001EC 809A6B4C C6200004 */   lwc1  $f0, 4($s1)
/* 0001F0 809A6B50 8C680028 */  lw    $t0, 0x28($v1)
/* 0001F4 809A6B54 0002C900 */  sll   $t9, $v0, 4
/* 0001F8 809A6B58 03284821 */  addu  $t1, $t9, $t0
/* 0001FC 809A6B5C 852A0002 */  lh    $t2, 2($t1)
/* 000200 809A6B60 448A5000 */  mtc1  $t2, $f10
/* 000204 809A6B64 10000002 */  b     .L809A6B70
/* 000208 809A6B68 46805020 */   cvt.s.w $f0, $f10
/* 00020C 809A6B6C C6200004 */  lwc1  $f0, 4($s1)
.L809A6B70:
/* 000210 809A6B70 8E250000 */  lw    $a1, ($s1)
/* 000214 809A6B74 44060000 */  mfc1  $a2, $f0
/* 000218 809A6B78 8E270008 */  lw    $a3, 8($s1)
/* 00021C 809A6B7C E7A20120 */  swc1  $f2, 0x120($sp)
/* 000220 809A6B80 0C029E89 */  jal   func_800A7A24
/* 000224 809A6B84 27A400DC */   addiu $a0, $sp, 0xdc
/* 000228 809A6B88 C7A20120 */  lwc1  $f2, 0x120($sp)
/* 00022C 809A6B8C 27A4009C */  addiu $a0, $sp, 0x9c
/* 000230 809A6B90 44051000 */  mfc1  $a1, $f2
/* 000234 809A6B94 44061000 */  mfc1  $a2, $f2
/* 000238 809A6B98 44071000 */  mfc1  $a3, $f2
/* 00023C 809A6B9C 0C029DA9 */  jal   func_800A76A4
/* 000240 809A6BA0 00000000 */   nop   
/* 000244 809A6BA4 27A400DC */  addiu $a0, $sp, 0xdc
/* 000248 809A6BA8 27A5009C */  addiu $a1, $sp, 0x9c
/* 00024C 809A6BAC 0C029BE8 */  jal   func_800A6FA0
/* 000250 809A6BB0 27A6005C */   addiu $a2, $sp, 0x5c
/* 000254 809A6BB4 02002025 */  move  $a0, $s0
/* 000258 809A6BB8 0C029F9C */  jal   func_800A7E70
/* 00025C 809A6BBC 27A5005C */   addiu $a1, $sp, 0x5c
/* 000260 809A6BC0 10400046 */  beqz  $v0, .L809A6CDC
/* 000264 809A6BC4 3C0CDA38 */   lui   $t4, (0xDA380003 >> 16) # lui $t4, 0xda38
/* 000268 809A6BC8 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 00026C 809A6BCC 358C0003 */  ori   $t4, (0xDA380003 & 0xFFFF) # ori $t4, $t4, 3
/* 000270 809A6BD0 02002025 */  move  $a0, $s0
/* 000274 809A6BD4 246B0008 */  addiu $t3, $v1, 8
/* 000278 809A6BD8 AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* 00027C 809A6BDC AC620004 */  sw    $v0, 4($v1)
/* 000280 809A6BE0 0C0252F1 */  jal   func_80094BC4
/* 000284 809A6BE4 AC6C0000 */   sw    $t4, ($v1)
/* 000288 809A6BE8 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 00028C 809A6BEC 3C0EFA00 */  lui   $t6, 0xfa00
/* 000290 809A6BF0 246D0008 */  addiu $t5, $v1, 8
/* 000294 809A6BF4 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* 000298 809A6BF8 AC6E0000 */  sw    $t6, ($v1)
/* 00029C 809A6BFC 862F004C */  lh    $t7, 0x4c($s1)
/* 0002A0 809A6C00 862B0048 */  lh    $t3, 0x48($s1)
/* 0002A4 809A6C04 86280046 */  lh    $t0, 0x46($s1)
/* 0002A8 809A6C08 31F800FF */  andi  $t8, $t7, 0xff
/* 0002AC 809A6C0C 862F004A */  lh    $t7, 0x4a($s1)
/* 0002B0 809A6C10 316C00FF */  andi  $t4, $t3, 0xff
/* 0002B4 809A6C14 00084E00 */  sll   $t1, $t0, 0x18
/* 0002B8 809A6C18 03095025 */  or    $t2, $t8, $t1
/* 0002BC 809A6C1C 000C6C00 */  sll   $t5, $t4, 0x10
/* 0002C0 809A6C20 31F900FF */  andi  $t9, $t7, 0xff
/* 0002C4 809A6C24 00194200 */  sll   $t0, $t9, 8
/* 0002C8 809A6C28 014D7025 */  or    $t6, $t2, $t5
/* 0002CC 809A6C2C 01C8C025 */  or    $t8, $t6, $t0
/* 0002D0 809A6C30 AC780004 */  sw    $t8, 4($v1)
/* 0002D4 809A6C34 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 0002D8 809A6C38 3C0BFB00 */  lui   $t3, 0xfb00
/* 0002DC 809A6C3C 24690008 */  addiu $t1, $v1, 8
/* 0002E0 809A6C40 AE0902D0 */  sw    $t1, 0x2d0($s0)
/* 0002E4 809A6C44 AC6B0000 */  sw    $t3, ($v1)
/* 0002E8 809A6C48 862C0054 */  lh    $t4, 0x54($s1)
/* 0002EC 809A6C4C 86280050 */  lh    $t0, 0x50($s1)
/* 0002F0 809A6C50 862F004E */  lh    $t7, 0x4e($s1)
/* 0002F4 809A6C54 318A00FF */  andi  $t2, $t4, 0xff
/* 0002F8 809A6C58 862C0052 */  lh    $t4, 0x52($s1)
/* 0002FC 809A6C5C 311800FF */  andi  $t8, $t0, 0xff
/* 000300 809A6C60 000FCE00 */  sll   $t9, $t7, 0x18
/* 000304 809A6C64 01597025 */  or    $t6, $t2, $t9
/* 000308 809A6C68 00184C00 */  sll   $t1, $t8, 0x10
/* 00030C 809A6C6C 318D00FF */  andi  $t5, $t4, 0xff
/* 000310 809A6C70 000D7A00 */  sll   $t7, $t5, 8
/* 000314 809A6C74 01C95825 */  or    $t3, $t6, $t1
/* 000318 809A6C78 016F5025 */  or    $t2, $t3, $t7
/* 00031C 809A6C7C AC6A0004 */  sw    $t2, 4($v1)
/* 000320 809A6C80 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 000324 809A6C84 3C08E300 */  lui   $t0, (0xE3001A01 >> 16) # lui $t0, 0xe300
/* 000328 809A6C88 35081A01 */  ori   $t0, (0xE3001A01 & 0xFFFF) # ori $t0, $t0, 0x1a01
/* 00032C 809A6C8C 24790008 */  addiu $t9, $v1, 8
/* 000330 809A6C90 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* 000334 809A6C94 24180020 */  li    $t8, 32
/* 000338 809A6C98 AC780004 */  sw    $t8, 4($v1)
/* 00033C 809A6C9C AC680000 */  sw    $t0, ($v1)
/* 000340 809A6CA0 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 000344 809A6CA4 3C09E300 */  lui   $t1, (0xE3001801 >> 16) # lui $t1, 0xe300
/* 000348 809A6CA8 35291801 */  ori   $t1, (0xE3001801 & 0xFFFF) # ori $t1, $t1, 0x1801
/* 00034C 809A6CAC 246E0008 */  addiu $t6, $v1, 8
/* 000350 809A6CB0 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* 000354 809A6CB4 240C0080 */  li    $t4, 128
/* 000358 809A6CB8 AC6C0004 */  sw    $t4, 4($v1)
/* 00035C 809A6CBC AC690000 */  sw    $t1, ($v1)
/* 000360 809A6CC0 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* 000364 809A6CC4 3C0BDE00 */  lui   $t3, 0xde00
/* 000368 809A6CC8 246D0008 */  addiu $t5, $v1, 8
/* 00036C 809A6CCC AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* 000370 809A6CD0 AC6B0000 */  sw    $t3, ($v1)
/* 000374 809A6CD4 8E2F0038 */  lw    $t7, 0x38($s1)
/* 000378 809A6CD8 AC6F0004 */  sw    $t7, 4($v1)
.L809A6CDC:
/* 00037C 809A6CDC 3C06809A */  lui   $a2, %hi(D_809A6EB8) # $a2, 0x809a
/* 000380 809A6CE0 24C66EB8 */  addiu $a2, %lo(D_809A6EB8) # addiu $a2, $a2, 0x6eb8
/* 000384 809A6CE4 27A40040 */  addiu $a0, $sp, 0x40
/* 000388 809A6CE8 02002825 */  move  $a1, $s0
/* 00038C 809A6CEC 0C031AD5 */  jal   func_800C6B54
/* 000390 809A6CF0 240700F7 */   li    $a3, 247
/* 000394 809A6CF4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000398 809A6CF8 8FB00014 */  lw    $s0, 0x14($sp)
/* 00039C 809A6CFC 8FB10018 */  lw    $s1, 0x18($sp)
/* 0003A0 809A6D00 03E00008 */  jr    $ra
/* 0003A4 809A6D04 27BD0128 */   addiu $sp, $sp, 0x128

func_809A6D08:
/* 0003A8 809A6D08 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0003AC 809A6D0C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0003B0 809A6D10 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0003B4 809A6D14 84CE0056 */  lh    $t6, 0x56($a2)
/* 0003B8 809A6D18 00C02825 */  move  $a1, $a2
/* 0003BC 809A6D1C 3C060402 */  lui   $a2, %hi(D_040244B0) # $a2, 0x402
/* 0003C0 809A6D20 55C00004 */  bnezl $t6, .L809A6D34
/* 0003C4 809A6D24 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0003C8 809A6D28 0C269AB6 */  jal   func_809A6AD8
/* 0003CC 809A6D2C 24C644B0 */   addiu $a2, %lo(D_040244B0) # addiu $a2, $a2, 0x44b0
/* 0003D0 809A6D30 8FBF0014 */  lw    $ra, 0x14($sp)
.L809A6D34:
/* 0003D4 809A6D34 27BD0018 */  addiu $sp, $sp, 0x18
/* 0003D8 809A6D38 03E00008 */  jr    $ra
/* 0003DC 809A6D3C 00000000 */   nop   

func_809A6D40:
/* 0003E0 809A6D40 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0003E4 809A6D44 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0003E8 809A6D48 AFB00020 */  sw    $s0, 0x20($sp)
/* 0003EC 809A6D4C AFA40040 */  sw    $a0, 0x40($sp)
/* 0003F0 809A6D50 AFA50044 */  sw    $a1, 0x44($sp)
/* 0003F4 809A6D54 84C20056 */  lh    $v0, 0x56($a2)
/* 0003F8 809A6D58 00C08025 */  move  $s0, $a2
/* 0003FC 809A6D5C 14400003 */  bnez  $v0, .L809A6D6C
/* 000400 809A6D60 244EFFFF */   addiu $t6, $v0, -1
/* 000404 809A6D64 10000003 */  b     .L809A6D74
/* 000408 809A6D68 00001825 */   move  $v1, $zero
.L809A6D6C:
/* 00040C 809A6D6C A60E0056 */  sh    $t6, 0x56($s0)
/* 000410 809A6D70 86030056 */  lh    $v1, 0x56($s0)
.L809A6D74:
/* 000414 809A6D74 5460003D */  bnezl $v1, .L809A6E6C
/* 000418 809A6D78 8FBF0024 */   lw    $ra, 0x24($sp)
/* 00041C 809A6D7C 860F0042 */  lh    $t7, 0x42($s0)
/* 000420 809A6D80 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 000424 809A6D84 44815000 */  mtc1  $at, $f10
/* 000428 809A6D88 448F2000 */  mtc1  $t7, $f4
/* 00042C 809A6D8C 3C063E4C */  lui   $a2, (0x3E4CCCCD >> 16) # lui $a2, 0x3e4c
/* 000430 809A6D90 34C6CCCD */  ori   $a2, (0x3E4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 000434 809A6D94 468021A0 */  cvt.s.w $f6, $f4
/* 000438 809A6D98 27A4003C */  addiu $a0, $sp, 0x3c
/* 00043C 809A6D9C 3C0741F0 */  lui   $a3, 0x41f0
/* 000440 809A6DA0 E7A6003C */  swc1  $f6, 0x3c($sp)
/* 000444 809A6DA4 86180044 */  lh    $t8, 0x44($s0)
/* 000448 809A6DA8 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 00044C 809A6DAC 44984000 */  mtc1  $t8, $f8
/* 000450 809A6DB0 00000000 */  nop   
/* 000454 809A6DB4 46804220 */  cvt.s.w $f8, $f8
/* 000458 809A6DB8 44054000 */  mfc1  $a1, $f8
/* 00045C 809A6DBC 0C01E0C4 */  jal   Math_SmoothScaleMaxMinF
/* 000460 809A6DC0 00000000 */   nop   
/* 000464 809A6DC4 8609004C */  lh    $t1, 0x4c($s0)
/* 000468 809A6DC8 C7B0003C */  lwc1  $f16, 0x3c($sp)
/* 00046C 809A6DCC 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 000470 809A6DD0 44892000 */  mtc1  $t1, $f4
/* 000474 809A6DD4 4600848D */  trunc.w.s $f18, $f16
/* 000478 809A6DD8 44818000 */  mtc1  $at, $f16
/* 00047C 809A6DDC 3C063E4C */  lui   $a2, (0x3E4CCCCD >> 16) # lui $a2, 0x3e4c
/* 000480 809A6DE0 468021A0 */  cvt.s.w $f6, $f4
/* 000484 809A6DE4 44089000 */  mfc1  $t0, $f18
/* 000488 809A6DE8 34C6CCCD */  ori   $a2, (0x3E4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 00048C 809A6DEC 27A40038 */  addiu $a0, $sp, 0x38
/* 000490 809A6DF0 A6080042 */  sh    $t0, 0x42($s0)
/* 000494 809A6DF4 24050000 */  li    $a1, 0
/* 000498 809A6DF8 E7A60038 */  swc1  $f6, 0x38($sp)
/* 00049C 809A6DFC 860A0054 */  lh    $t2, 0x54($s0)
/* 0004A0 809A6E00 3C074170 */  lui   $a3, 0x4170
/* 0004A4 809A6E04 E7B00010 */  swc1  $f16, 0x10($sp)
/* 0004A8 809A6E08 448A4000 */  mtc1  $t2, $f8
/* 0004AC 809A6E0C 00000000 */  nop   
/* 0004B0 809A6E10 468042A0 */  cvt.s.w $f10, $f8
/* 0004B4 809A6E14 0C01E0C4 */  jal   Math_SmoothScaleMaxMinF
/* 0004B8 809A6E18 E7AA0034 */   swc1  $f10, 0x34($sp)
/* 0004BC 809A6E1C 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 0004C0 809A6E20 44819000 */  mtc1  $at, $f18
/* 0004C4 809A6E24 3C063E4C */  lui   $a2, (0x3E4CCCCD >> 16) # lui $a2, 0x3e4c
/* 0004C8 809A6E28 34C6CCCD */  ori   $a2, (0x3E4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 0004CC 809A6E2C 27A40034 */  addiu $a0, $sp, 0x34
/* 0004D0 809A6E30 24050000 */  li    $a1, 0
/* 0004D4 809A6E34 3C074170 */  lui   $a3, 0x4170
/* 0004D8 809A6E38 0C01E0C4 */  jal   Math_SmoothScaleMaxMinF
/* 0004DC 809A6E3C E7B20010 */   swc1  $f18, 0x10($sp)
/* 0004E0 809A6E40 C7A40038 */  lwc1  $f4, 0x38($sp)
/* 0004E4 809A6E44 4600218D */  trunc.w.s $f6, $f4
/* 0004E8 809A6E48 440C3000 */  mfc1  $t4, $f6
/* 0004EC 809A6E4C 00000000 */  nop   
/* 0004F0 809A6E50 A60C004C */  sh    $t4, 0x4c($s0)
/* 0004F4 809A6E54 C7A80034 */  lwc1  $f8, 0x34($sp)
/* 0004F8 809A6E58 4600428D */  trunc.w.s $f10, $f8
/* 0004FC 809A6E5C 440E5000 */  mfc1  $t6, $f10
/* 000500 809A6E60 00000000 */  nop   
/* 000504 809A6E64 A60E0054 */  sh    $t6, 0x54($s0)
/* 000508 809A6E68 8FBF0024 */  lw    $ra, 0x24($sp)
.L809A6E6C:
/* 00050C 809A6E6C 8FB00020 */  lw    $s0, 0x20($sp)
/* 000510 809A6E70 27BD0040 */  addiu $sp, $sp, 0x40
/* 000514 809A6E74 03E00008 */  jr    $ra
/* 000518 809A6E78 00000000 */   nop   

.section .data

D_809A6E80:
.incbin "baserom/ovl_Effect_Ss_G_Ripple", 0x520, 0x8
D_809A6E88:
.incbin "baserom/ovl_Effect_Ss_G_Ripple", 0x528, 0x18
D_809A6EA0:
.incbin "baserom/ovl_Effect_Ss_G_Ripple", 0x540, 0x18
D_809A6EB8:
.incbin "baserom/ovl_Effect_Ss_G_Ripple", 0x558, 0x18
D_809A6ED0:
.incbin "baserom/ovl_Effect_Ss_G_Ripple", 0x570, 0x60
