.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_809A3CC0:
/* 000000 809A3CC0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 000004 809A3CC4 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* 000008 809A3CC8 AFA40030 */  sw    $a0, 0x30($sp)
/* 00000C 809A3CCC 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* 000010 809A3CD0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000014 809A3CD4 AFA50034 */  sw    $a1, 0x34($sp)
/* 000018 809A3CD8 00812021 */  addu  $a0, $a0, $at
/* 00001C 809A3CDC AFA4001C */  sw    $a0, 0x1c($sp)
/* 000020 809A3CE0 24050117 */  li    $a1, 279
/* 000024 809A3CE4 AFA60038 */  sw    $a2, 0x38($sp)
/* 000028 809A3CE8 0C02604B */  jal   Object_GetIndex
/* 00002C 809A3CEC AFA7003C */   sw    $a3, 0x3c($sp)
/* 000030 809A3CF0 8FA4001C */  lw    $a0, 0x1c($sp)
/* 000034 809A3CF4 8FA60038 */  lw    $a2, 0x38($sp)
/* 000038 809A3CF8 8FA7003C */  lw    $a3, 0x3c($sp)
/* 00003C 809A3CFC 0440003B */  bltz  $v0, .L809A3DEC
/* 000040 809A3D00 00402825 */   move  $a1, $v0
/* 000044 809A3D04 AFA20024 */  sw    $v0, 0x24($sp)
/* 000048 809A3D08 AFA60038 */  sw    $a2, 0x38($sp)
/* 00004C 809A3D0C 0C026062 */  jal   Object_IsLoaded
/* 000050 809A3D10 AFA7003C */   sw    $a3, 0x3c($sp)
/* 000054 809A3D14 8FA50024 */  lw    $a1, 0x24($sp)
/* 000058 809A3D18 8FA60038 */  lw    $a2, 0x38($sp)
/* 00005C 809A3D1C 10400033 */  beqz  $v0, .L809A3DEC
/* 000060 809A3D20 8FA7003C */   lw    $a3, 0x3c($sp)
/* 000064 809A3D24 8FAE0030 */  lw    $t6, 0x30($sp)
/* 000068 809A3D28 00057900 */  sll   $t7, $a1, 4
/* 00006C 809A3D2C 01E57821 */  addu  $t7, $t7, $a1
/* 000070 809A3D30 000F7880 */  sll   $t7, $t7, 2
/* 000074 809A3D34 3C190001 */  lui   $t9, 1
/* 000078 809A3D38 01CFC021 */  addu  $t8, $t6, $t7
/* 00007C 809A3D3C 0338C821 */  addu  $t9, $t9, $t8
/* 000080 809A3D40 8F3917B4 */  lw    $t9, 0x17b4($t9)
/* 000084 809A3D44 3C048016 */  lui   $a0, %hi(D_80166FA8) # $a0, 0x8016
/* 000088 809A3D48 24846FA8 */  addiu $a0, %lo(D_80166FA8) # addiu $a0, $a0, 0x6fa8
/* 00008C 809A3D4C 3C018000 */  lui   $at, 0x8000
/* 000090 809A3D50 8C830018 */  lw    $v1, 0x18($a0)
/* 000094 809A3D54 03214021 */  addu  $t0, $t9, $at
/* 000098 809A3D58 AC880018 */  sw    $t0, 0x18($a0)
/* 00009C 809A3D5C 8CEA0000 */  lw    $t2, ($a3)
/* 0000A0 809A3D60 3C0F809A */  lui   $t7, %hi(func_809A3E00) # $t7, 0x809a
/* 0000A4 809A3D64 3C18809A */  lui   $t8, %hi(func_809A3FF8) # $t8, 0x809a
/* 0000A8 809A3D68 ACCA0000 */  sw    $t2, ($a2)
/* 0000AC 809A3D6C 8CE90004 */  lw    $t1, 4($a3)
/* 0000B0 809A3D70 25EF3E00 */  addiu $t7, %lo(func_809A3E00) # addiu $t7, $t7, 0x3e00
/* 0000B4 809A3D74 27183FF8 */  addiu $t8, %lo(func_809A3FF8) # addiu $t8, $t8, 0x3ff8
/* 0000B8 809A3D78 ACC90004 */  sw    $t1, 4($a2)
/* 0000BC 809A3D7C 8CEA0008 */  lw    $t2, 8($a3)
/* 0000C0 809A3D80 24190032 */  li    $t9, 50
/* 0000C4 809A3D84 24020001 */  li    $v0, 1
/* 0000C8 809A3D88 ACCA0008 */  sw    $t2, 8($a2)
/* 0000CC 809A3D8C 8CEC000C */  lw    $t4, 0xc($a3)
/* 0000D0 809A3D90 240A0005 */  li    $t2, 5
/* 0000D4 809A3D94 ACCC000C */  sw    $t4, 0xc($a2)
/* 0000D8 809A3D98 8CEB0010 */  lw    $t3, 0x10($a3)
/* 0000DC 809A3D9C ACCB0010 */  sw    $t3, 0x10($a2)
/* 0000E0 809A3DA0 8CEC0014 */  lw    $t4, 0x14($a3)
/* 0000E4 809A3DA4 ACCC0014 */  sw    $t4, 0x14($a2)
/* 0000E8 809A3DA8 8CEE0018 */  lw    $t6, 0x18($a3)
/* 0000EC 809A3DAC ACCE0018 */  sw    $t6, 0x18($a2)
/* 0000F0 809A3DB0 8CED001C */  lw    $t5, 0x1c($a3)
/* 0000F4 809A3DB4 ACCD001C */  sw    $t5, 0x1c($a2)
/* 0000F8 809A3DB8 8CEE0020 */  lw    $t6, 0x20($a3)
/* 0000FC 809A3DBC ACCF0028 */  sw    $t7, 0x28($a2)
/* 000100 809A3DC0 ACD80024 */  sw    $t8, 0x24($a2)
/* 000104 809A3DC4 A4D9005C */  sh    $t9, 0x5c($a2)
/* 000108 809A3DC8 ACCE0020 */  sw    $t6, 0x20($a2)
/* 00010C 809A3DCC 84E80026 */  lh    $t0, 0x26($a3)
/* 000110 809A3DD0 A4C80044 */  sh    $t0, 0x44($a2)
/* 000114 809A3DD4 84E90024 */  lh    $t1, 0x24($a3)
/* 000118 809A3DD8 A4CA0042 */  sh    $t2, 0x42($a2)
/* 00011C 809A3DDC A4C50040 */  sh    $a1, 0x40($a2)
/* 000120 809A3DE0 A4C90046 */  sh    $t1, 0x46($a2)
/* 000124 809A3DE4 10000002 */  b     .L809A3DF0
/* 000128 809A3DE8 AC830018 */   sw    $v1, 0x18($a0)
.L809A3DEC:
/* 00012C 809A3DEC 00001025 */  move  $v0, $zero
.L809A3DF0:
/* 000130 809A3DF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000134 809A3DF4 27BD0030 */  addiu $sp, $sp, 0x30
/* 000138 809A3DF8 03E00008 */  jr    $ra
/* 00013C 809A3DFC 00000000 */   nop   

func_809A3E00:
/* 000140 809A3E00 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 000144 809A3E04 AFBF0024 */  sw    $ra, 0x24($sp)
/* 000148 809A3E08 AFB20020 */  sw    $s2, 0x20($sp)
/* 00014C 809A3E0C AFB1001C */  sw    $s1, 0x1c($sp)
/* 000150 809A3E10 AFB00018 */  sw    $s0, 0x18($sp)
/* 000154 809A3E14 AFA50064 */  sw    $a1, 0x64($sp)
/* 000158 809A3E18 84CE0046 */  lh    $t6, 0x46($a2)
/* 00015C 809A3E1C 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 000160 809A3E20 44814000 */  mtc1  $at, $f8
/* 000164 809A3E24 448E2000 */  mtc1  $t6, $f4
/* 000168 809A3E28 3C080001 */  lui   $t0, 1
/* 00016C 809A3E2C 00C08825 */  move  $s1, $a2
/* 000170 809A3E30 468021A0 */  cvt.s.w $f6, $f4
/* 000174 809A3E34 00809025 */  move  $s2, $a0
/* 000178 809A3E38 240700A8 */  li    $a3, 168
/* 00017C 809A3E3C 46083283 */  div.s $f10, $f6, $f8
/* 000180 809A3E40 E7AA0058 */  swc1  $f10, 0x58($sp)
/* 000184 809A3E44 84CF0040 */  lh    $t7, 0x40($a2)
/* 000188 809A3E48 8C850000 */  lw    $a1, ($a0)
/* 00018C 809A3E4C 3C06809A */  lui   $a2, %hi(D_809A4080) # $a2, 0x809a
/* 000190 809A3E50 000FC100 */  sll   $t8, $t7, 4
/* 000194 809A3E54 030FC021 */  addu  $t8, $t8, $t7
/* 000198 809A3E58 0018C080 */  sll   $t8, $t8, 2
/* 00019C 809A3E5C 0098C821 */  addu  $t9, $a0, $t8
/* 0001A0 809A3E60 01194021 */  addu  $t0, $t0, $t9
/* 0001A4 809A3E64 8D0817B4 */  lw    $t0, 0x17b4($t0)
/* 0001A8 809A3E68 27A40040 */  addiu $a0, $sp, 0x40
/* 0001AC 809A3E6C 24C64080 */  addiu $a2, %lo(D_809A4080) # addiu $a2, $a2, 0x4080
/* 0001B0 809A3E70 00A08025 */  move  $s0, $a1
/* 0001B4 809A3E74 0C031AB1 */  jal   func_800C6AC4
/* 0001B8 809A3E78 AFA80054 */   sw    $t0, 0x54($sp)
/* 0001BC 809A3E7C 8FA80054 */  lw    $t0, 0x54($sp)
/* 0001C0 809A3E80 3C018000 */  lui   $at, 0x8000
/* 0001C4 809A3E84 3C0BDB06 */  lui   $t3, (0xDB060018 >> 16) # lui $t3, 0xdb06
/* 0001C8 809A3E88 01014821 */  addu  $t1, $t0, $at
/* 0001CC 809A3E8C 3C018016 */  lui   $at, %hi(D_80166FC0) # $at, 0x8016
/* 0001D0 809A3E90 AC296FC0 */  sw    $t1, %lo(D_80166FC0)($at)
/* 0001D4 809A3E94 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 0001D8 809A3E98 356B0018 */  ori   $t3, (0xDB060018 & 0xFFFF) # ori $t3, $t3, 0x18
/* 0001DC 809A3E9C 00003825 */  move  $a3, $zero
/* 0001E0 809A3EA0 244A0008 */  addiu $t2, $v0, 8
/* 0001E4 809A3EA4 AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* 0001E8 809A3EA8 AC480004 */  sw    $t0, 4($v0)
/* 0001EC 809A3EAC AC4B0000 */  sw    $t3, ($v0)
/* 0001F0 809A3EB0 8E260008 */  lw    $a2, 8($s1)
/* 0001F4 809A3EB4 C62E0004 */  lwc1  $f14, 4($s1)
/* 0001F8 809A3EB8 0C034261 */  jal   func_800D0984
/* 0001FC 809A3EBC C62C0000 */   lwc1  $f12, ($s1)
/* 000200 809A3EC0 C7AC0058 */  lwc1  $f12, 0x58($sp)
/* 000204 809A3EC4 24070001 */  li    $a3, 1
/* 000208 809A3EC8 44066000 */  mfc1  $a2, $f12
/* 00020C 809A3ECC 0C0342A3 */  jal   func_800D0A8C
/* 000210 809A3ED0 46006386 */   mov.s $f14, $f12
/* 000214 809A3ED4 0C024F61 */  jal   func_80093D84
/* 000218 809A3ED8 8E440000 */   lw    $a0, ($s2)
/* 00021C 809A3EDC 3C010001 */  lui   $at, (0x00011DA0 >> 16) # lui $at, 1
/* 000220 809A3EE0 34211DA0 */  ori   $at, (0x00011DA0 & 0xFFFF) # ori $at, $at, 0x1da0
/* 000224 809A3EE4 0C0347F5 */  jal   func_800D1FD4
/* 000228 809A3EE8 02412021 */   addu  $a0, $s2, $at
/* 00022C 809A3EEC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 000230 809A3EF0 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* 000234 809A3EF4 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* 000238 809A3EF8 244C0008 */  addiu $t4, $v0, 8
/* 00023C 809A3EFC AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* 000240 809A3F00 AC4D0000 */  sw    $t5, ($v0)
/* 000244 809A3F04 8E440000 */  lw    $a0, ($s2)
/* 000248 809A3F08 3C05809A */  lui   $a1, %hi(D_809A4094) # $a1, 0x809a
/* 00024C 809A3F0C 24A54094 */  addiu $a1, %lo(D_809A4094) # addiu $a1, $a1, 0x4094
/* 000250 809A3F10 240600BA */  li    $a2, 186
/* 000254 809A3F14 0C0346A2 */  jal   func_800D1A88
/* 000258 809A3F18 AFA20038 */   sw    $v0, 0x38($sp)
/* 00025C 809A3F1C 8FA30038 */  lw    $v1, 0x38($sp)
/* 000260 809A3F20 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* 000264 809A3F24 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* 000268 809A3F28 AC620004 */  sw    $v0, 4($v1)
/* 00026C 809A3F2C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 000270 809A3F30 3C04809A */  lui   $a0, 0x809a
/* 000274 809A3F34 3C078016 */  lui   $a3, %hi(D_80166FA8) # $a3, 0x8016
/* 000278 809A3F38 244E0008 */  addiu $t6, $v0, 8
/* 00027C 809A3F3C AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* 000280 809A3F40 AC4F0000 */  sw    $t7, ($v0)
/* 000284 809A3F44 86380044 */  lh    $t8, 0x44($s1)
/* 000288 809A3F48 24E76FA8 */  addiu $a3, %lo(D_80166FA8) # addiu $a3, $a3, 0x6fa8
/* 00028C 809A3F4C 3C0500FF */  lui   $a1, (0x00FFFFFF >> 16) # lui $a1, 0xff
/* 000290 809A3F50 0018C880 */  sll   $t9, $t8, 2
/* 000294 809A3F54 00992021 */  addu  $a0, $a0, $t9
/* 000298 809A3F58 8C844070 */  lw    $a0, 0x4070($a0)
/* 00029C 809A3F5C 34A5FFFF */  ori   $a1, (0x00FFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* 0002A0 809A3F60 3C068000 */  lui   $a2, 0x8000
/* 0002A4 809A3F64 00045100 */  sll   $t2, $a0, 4
/* 0002A8 809A3F68 000A5F02 */  srl   $t3, $t2, 0x1c
/* 0002AC 809A3F6C 000B6080 */  sll   $t4, $t3, 2
/* 0002B0 809A3F70 00EC6821 */  addu  $t5, $a3, $t4
/* 0002B4 809A3F74 8DAE0000 */  lw    $t6, ($t5)
/* 0002B8 809A3F78 00854824 */  and   $t1, $a0, $a1
/* 0002BC 809A3F7C 3C040600 */  lui   $a0, %hi(D_06000DC0) # $a0, 0x600
/* 0002C0 809A3F80 012E7821 */  addu  $t7, $t1, $t6
/* 0002C4 809A3F84 01E6C021 */  addu  $t8, $t7, $a2
/* 0002C8 809A3F88 AC580004 */  sw    $t8, 4($v0)
/* 0002CC 809A3F8C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 0002D0 809A3F90 24840DC0 */  addiu $a0, %lo(D_06000DC0) # addiu $a0, $a0, 0xdc0
/* 0002D4 809A3F94 00045900 */  sll   $t3, $a0, 4
/* 0002D8 809A3F98 000B6702 */  srl   $t4, $t3, 0x1c
/* 0002DC 809A3F9C 24590008 */  addiu $t9, $v0, 8
/* 0002E0 809A3FA0 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* 0002E4 809A3FA4 000C6880 */  sll   $t5, $t4, 2
/* 0002E8 809A3FA8 3C0ADE00 */  lui   $t2, 0xde00
/* 0002EC 809A3FAC 00ED4821 */  addu  $t1, $a3, $t5
/* 0002F0 809A3FB0 AC4A0000 */  sw    $t2, ($v0)
/* 0002F4 809A3FB4 8D2E0000 */  lw    $t6, ($t1)
/* 0002F8 809A3FB8 00857824 */  and   $t7, $a0, $a1
/* 0002FC 809A3FBC 27A40040 */  addiu $a0, $sp, 0x40
/* 000300 809A3FC0 01CFC021 */  addu  $t8, $t6, $t7
/* 000304 809A3FC4 0306C821 */  addu  $t9, $t8, $a2
/* 000308 809A3FC8 3C06809A */  lui   $a2, %hi(D_809A40A8) # $a2, 0x809a
/* 00030C 809A3FCC AC590004 */  sw    $t9, 4($v0)
/* 000310 809A3FD0 8E450000 */  lw    $a1, ($s2)
/* 000314 809A3FD4 24C640A8 */  addiu $a2, %lo(D_809A40A8) # addiu $a2, $a2, 0x40a8
/* 000318 809A3FD8 0C031AD5 */  jal   func_800C6B54
/* 00031C 809A3FDC 240700C2 */   li    $a3, 194
/* 000320 809A3FE0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 000324 809A3FE4 8FB00018 */  lw    $s0, 0x18($sp)
/* 000328 809A3FE8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00032C 809A3FEC 8FB20020 */  lw    $s2, 0x20($sp)
/* 000330 809A3FF0 03E00008 */  jr    $ra
/* 000334 809A3FF4 27BD0060 */   addiu $sp, $sp, 0x60

func_809A3FF8:
.incbin "baserom/ovl_Effect_Ss_Extra", 0x338, 0x68

.section .data

D_809A4060:
.incbin "baserom/ovl_Effect_Ss_Extra", 0x3A0, 0x20
D_809A4080:
.incbin "baserom/ovl_Effect_Ss_Extra", 0x3C0, 0x14
D_809A4094:
.incbin "baserom/ovl_Effect_Ss_Extra", 0x3D4, 0x14
D_809A40A8:
.incbin "baserom/ovl_Effect_Ss_Extra", 0x3E8, 0x78
