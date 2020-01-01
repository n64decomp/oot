.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_808B1AE0:
/* 000000 808B1AE0 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* 000004 808B1AE4 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* 000008 808B1AE8 8C4E1360 */  lw    $t6, 0x1360($v0)
/* 00000C 808B1AEC AFA50004 */  sw    $a1, 4($sp)
/* 000010 808B1AF0 29C10004 */  slti  $at, $t6, 4
/* 000014 808B1AF4 54200005 */  bnezl $at, .L808B1B0C
/* 000018 808B1AF8 94430EE6 */   lhu   $v1, 0xee6($v0)
/* 00001C 808B1AFC 8482001C */  lh    $v0, 0x1c($a0)
/* 000020 808B1B00 03E00008 */  jr    $ra
/* 000024 808B1B04 2C420001 */   sltiu $v0, $v0, 1
/* 000028 808B1B08 94430EE6 */  lhu   $v1, 0xee6($v0)
.L808B1B0C:
/* 00002C 808B1B0C 8C4F0004 */  lw    $t7, 4($v0)
/* 000030 808B1B10 24010011 */  li    $at, 17
/* 000034 808B1B14 3063000F */  andi  $v1, $v1, 0xf
/* 000038 808B1B18 3863000F */  xori  $v1, $v1, 0xf
/* 00003C 808B1B1C 11E00003 */  beqz  $t7, .L808B1B2C
/* 000040 808B1B20 2C630001 */   sltiu $v1, $v1, 1
/* 000044 808B1B24 10000002 */  b     .L808B1B30
/* 000048 808B1B28 24020005 */   li    $v0, 5
.L808B1B2C:
/* 00004C 808B1B2C 24020011 */  li    $v0, 17
.L808B1B30:
/* 000050 808B1B30 54410016 */  bnel  $v0, $at, .L808B1B8C
/* 000054 808B1B34 8482001C */   lh    $v0, 0x1c($a0)
/* 000058 808B1B38 8482001C */  lh    $v0, 0x1c($a0)
/* 00005C 808B1B3C 24010001 */  li    $at, 1
/* 000060 808B1B40 10400009 */  beqz  $v0, .L808B1B68
/* 000064 808B1B44 00000000 */   nop   
/* 000068 808B1B48 10410009 */  beq   $v0, $at, .L808B1B70
/* 00006C 808B1B4C 24010003 */   li    $at, 3
/* 000070 808B1B50 1041000B */  beq   $v0, $at, .L808B1B80
/* 000074 808B1B54 24010004 */   li    $at, 4
/* 000078 808B1B58 10410007 */  beq   $v0, $at, .L808B1B78
/* 00007C 808B1B5C 00000000 */   nop   
/* 000080 808B1B60 1000000D */  b     .L808B1B98
/* 000084 808B1B64 00001025 */   move  $v0, $zero
.L808B1B68:
/* 000088 808B1B68 03E00008 */  jr    $ra
/* 00008C 808B1B6C 00001025 */   move  $v0, $zero
.L808B1B70:
/* 000090 808B1B70 03E00008 */  jr    $ra
/* 000094 808B1B74 2C620001 */   sltiu $v0, $v1, 1
.L808B1B78:
/* 000098 808B1B78 03E00008 */  jr    $ra
/* 00009C 808B1B7C 00601025 */   move  $v0, $v1
.L808B1B80:
/* 0000A0 808B1B80 03E00008 */  jr    $ra
/* 0000A4 808B1B84 24020001 */   li    $v0, 1
/* 0000A8 808B1B88 8482001C */  lh    $v0, 0x1c($a0)
.L808B1B8C:
/* 0000AC 808B1B8C 38420002 */  xori  $v0, $v0, 2
/* 0000B0 808B1B90 03E00008 */  jr    $ra
/* 0000B4 808B1B94 2C420001 */   sltiu $v0, $v0, 1
.L808B1B98:
/* 0000B8 808B1B98 03E00008 */  jr    $ra
/* 0000BC 808B1B9C 00000000 */   nop   

/* 0000C0 808B1BA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0000C4 808B1BA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0000C8 808B1BA8 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0000CC 808B1BAC 848E001C */  lh    $t6, 0x1c($a0)
/* 0000D0 808B1BB0 24010003 */  li    $at, 3
/* 0000D4 808B1BB4 3C053DCC */  lui   $a1, (0x3DCCCCCD >> 16) # lui $a1, 0x3dcc
/* 0000D8 808B1BB8 15C10005 */  bne   $t6, $at, .L808B1BD0
/* 0000DC 808B1BBC 00000000 */   nop   
/* 0000E0 808B1BC0 0C00B58B */  jal   Actor_SetScale
/* 0000E4 808B1BC4 34A5CCCD */   ori   $a1, (0x3DCCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* 0000E8 808B1BC8 10000004 */  b     .L808B1BDC
/* 0000EC 808B1BCC 8FBF0014 */   lw    $ra, 0x14($sp)
.L808B1BD0:
/* 0000F0 808B1BD0 0C00B58B */  jal   Actor_SetScale
/* 0000F4 808B1BD4 3C053F80 */   lui   $a1, 0x3f80
/* 0000F8 808B1BD8 8FBF0014 */  lw    $ra, 0x14($sp)
.L808B1BDC:
/* 0000FC 808B1BDC 27BD0018 */  addiu $sp, $sp, 0x18
/* 000100 808B1BE0 24020001 */  li    $v0, 1
/* 000104 808B1BE4 03E00008 */  jr    $ra
/* 000108 808B1BE8 00000000 */   nop   

/* 00010C 808B1BEC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 000110 808B1BF0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000114 808B1BF4 AFB00018 */  sw    $s0, 0x18($sp)
/* 000118 808B1BF8 AFA50034 */  sw    $a1, 0x34($sp)
/* 00011C 808B1BFC AFA00028 */  sw    $zero, 0x28($sp)
/* 000120 808B1C00 848E001C */  lh    $t6, 0x1c($a0)
/* 000124 808B1C04 3C18808B */  lui   $t8, 0x808b
/* 000128 808B1C08 00808025 */  move  $s0, $a0
/* 00012C 808B1C0C 000E7880 */  sll   $t7, $t6, 2
/* 000130 808B1C10 030FC021 */  addu  $t8, $t8, $t7
/* 000134 808B1C14 8F181F90 */  lw    $t8, 0x1f90($t8)
/* 000138 808B1C18 53000011 */  beql  $t8, $zero, .L808B1C60
/* 00013C 808B1C1C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 000140 808B1C20 0C010D20 */  jal   DynaPolyInfo_SetActorMove
/* 000144 808B1C24 00002825 */   move  $a1, $zero
/* 000148 808B1C28 8619001C */  lh    $t9, 0x1c($s0)
/* 00014C 808B1C2C 3C04808B */  lui   $a0, 0x808b
/* 000150 808B1C30 27A50028 */  addiu $a1, $sp, 0x28
/* 000154 808B1C34 00194080 */  sll   $t0, $t9, 2
/* 000158 808B1C38 00882021 */  addu  $a0, $a0, $t0
/* 00015C 808B1C3C 0C010620 */  jal   DynaPolyInfo_Alloc
/* 000160 808B1C40 8C841F90 */   lw    $a0, 0x1f90($a0)
/* 000164 808B1C44 8FA40034 */  lw    $a0, 0x34($sp)
/* 000168 808B1C48 02003025 */  move  $a2, $s0
/* 00016C 808B1C4C 8FA70028 */  lw    $a3, 0x28($sp)
/* 000170 808B1C50 0C00FA9D */  jal   DynaPolyInfo_RegisterActor
/* 000174 808B1C54 24850810 */   addiu $a1, $a0, 0x810
/* 000178 808B1C58 AE02014C */  sw    $v0, 0x14c($s0)
/* 00017C 808B1C5C 8FBF001C */  lw    $ra, 0x1c($sp)
.L808B1C60:
/* 000180 808B1C60 8FB00018 */  lw    $s0, 0x18($sp)
/* 000184 808B1C64 27BD0030 */  addiu $sp, $sp, 0x30
/* 000188 808B1C68 03E00008 */  jr    $ra
/* 00018C 808B1C6C 24020001 */   li    $v0, 1

func_808B1C70:
/* 000190 808B1C70 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 000194 808B1C74 AFB30020 */  sw    $s3, 0x20($sp)
/* 000198 808B1C78 AFB00014 */  sw    $s0, 0x14($sp)
/* 00019C 808B1C7C AFB2001C */  sw    $s2, 0x1c($sp)
/* 0001A0 808B1C80 AFB10018 */  sw    $s1, 0x18($sp)
/* 0001A4 808B1C84 3C10808B */  lui   $s0, %hi(D_808B1FA4) # $s0, 0x808b
/* 0001A8 808B1C88 3C13808B */  lui   $s3, %hi(D_808B1FB0) # $s3, 0x808b
/* 0001AC 808B1C8C 00808825 */  move  $s1, $a0
/* 0001B0 808B1C90 00A09025 */  move  $s2, $a1
/* 0001B4 808B1C94 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0001B8 808B1C98 26731FB0 */  addiu $s3, %lo(D_808B1FB0) # addiu $s3, $s3, 0x1fb0
/* 0001BC 808B1C9C 26101FA4 */  addiu $s0, %lo(D_808B1FA4) # addiu $s0, $s0, 0x1fa4
/* 0001C0 808B1CA0 8E190000 */  lw    $t9, ($s0)
.L808B1CA4:
/* 0001C4 808B1CA4 02202025 */  move  $a0, $s1
/* 0001C8 808B1CA8 02402825 */  move  $a1, $s2
/* 0001CC 808B1CAC 0320F809 */  jalr  $t9
/* 0001D0 808B1CB0 00000000 */  nop   
/* 0001D4 808B1CB4 14400003 */  bnez  $v0, .L808B1CC4
/* 0001D8 808B1CB8 26100004 */   addiu $s0, $s0, 4
/* 0001DC 808B1CBC 10000004 */  b     .L808B1CD0
/* 0001E0 808B1CC0 00001025 */   move  $v0, $zero
.L808B1CC4:
/* 0001E4 808B1CC4 5613FFF7 */  bnel  $s0, $s3, .L808B1CA4
/* 0001E8 808B1CC8 8E190000 */   lw    $t9, ($s0)
/* 0001EC 808B1CCC 24020001 */  li    $v0, 1
.L808B1CD0:
/* 0001F0 808B1CD0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0001F4 808B1CD4 8FB00014 */  lw    $s0, 0x14($sp)
/* 0001F8 808B1CD8 8FB10018 */  lw    $s1, 0x18($sp)
/* 0001FC 808B1CDC 8FB2001C */  lw    $s2, 0x1c($sp)
/* 000200 808B1CE0 8FB30020 */  lw    $s3, 0x20($sp)
/* 000204 808B1CE4 03E00008 */  jr    $ra
/* 000208 808B1CE8 27BD0028 */   addiu $sp, $sp, 0x28

func_808B1CEC:
/* 00020C 808B1CEC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000210 808B1CF0 AFA5001C */  sw    $a1, 0x1c($sp)
/* 000214 808B1CF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000218 808B1CF8 3C05808B */  lui   $a1, %hi(D_808B1FB0) # $a1, 0x808b
/* 00021C 808B1CFC 0C01E037 */  jal   Actor_ProcessInitChain
/* 000220 808B1D00 24A51FB0 */   addiu $a1, %lo(D_808B1FB0) # addiu $a1, $a1, 0x1fb0
/* 000224 808B1D04 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000228 808B1D08 27BD0018 */  addiu $sp, $sp, 0x18
/* 00022C 808B1D0C 24020001 */  li    $v0, 1
/* 000230 808B1D10 03E00008 */  jr    $ra
/* 000234 808B1D14 00000000 */   nop   

func_808B1D18:
/* 000238 808B1D18 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00023C 808B1D1C AFA5001C */  sw    $a1, 0x1c($sp)
/* 000240 808B1D20 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000244 808B1D24 3C05808B */  lui   $a1, %hi(D_808B1FBC) # $a1, 0x808b
/* 000248 808B1D28 0C01E037 */  jal   Actor_ProcessInitChain
/* 00024C 808B1D2C 24A51FBC */   addiu $a1, %lo(D_808B1FBC) # addiu $a1, $a1, 0x1fbc
/* 000250 808B1D30 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000254 808B1D34 27BD0018 */  addiu $sp, $sp, 0x18
/* 000258 808B1D38 24020001 */  li    $v0, 1
/* 00025C 808B1D3C 03E00008 */  jr    $ra
/* 000260 808B1D40 00000000 */   nop   

func_808B1D44:
/* 000264 808B1D44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000268 808B1D48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00026C 808B1D4C 848E001C */  lh    $t6, 0x1c($a0)
/* 000270 808B1D50 24010003 */  li    $at, 3
/* 000274 808B1D54 15C10005 */  bne   $t6, $at, .L808B1D6C
/* 000278 808B1D58 00000000 */   nop   
/* 00027C 808B1D5C 0C22C746 */  jal   func_808B1D18
/* 000280 808B1D60 00000000 */   nop   
/* 000284 808B1D64 10000004 */  b     .L808B1D78
/* 000288 808B1D68 8FBF0014 */   lw    $ra, 0x14($sp)
.L808B1D6C:
/* 00028C 808B1D6C 0C22C73B */  jal   func_808B1CEC
/* 000290 808B1D70 00000000 */   nop   
/* 000294 808B1D74 8FBF0014 */  lw    $ra, 0x14($sp)
.L808B1D78:
/* 000298 808B1D78 27BD0018 */  addiu $sp, $sp, 0x18
/* 00029C 808B1D7C 03E00008 */  jr    $ra
/* 0002A0 808B1D80 00000000 */   nop   

func_808B1D84:
/* 0002A4 808B1D84 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0002A8 808B1D88 AFB00018 */  sw    $s0, 0x18($sp)
/* 0002AC 808B1D8C 3C068016 */  lui   $a2, %hi(gSaveContext+0xee6) # $a2, 0x8016
/* 0002B0 808B1D90 94C6F546 */  lhu   $a2, %lo(gSaveContext+0xee6)($a2)
/* 0002B4 808B1D94 00808025 */  move  $s0, $a0
/* 0002B8 808B1D98 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0002BC 808B1D9C AFA50024 */  sw    $a1, 0x24($sp)
/* 0002C0 808B1DA0 3C04808B */  lui   $a0, %hi(D_808B1FE0) # $a0, 0x808b
/* 0002C4 808B1DA4 24841FE0 */  addiu $a0, %lo(D_808B1FE0) # addiu $a0, $a0, 0x1fe0
/* 0002C8 808B1DA8 8605001C */  lh    $a1, 0x1c($s0)
/* 0002CC 808B1DAC 0C00084C */  jal   osSyncPrintf
/* 0002D0 808B1DB0 30C6000F */   andi  $a2, $a2, 0xf
/* 0002D4 808B1DB4 860E001C */  lh    $t6, 0x1c($s0)
/* 0002D8 808B1DB8 3C04808B */  lui   $a0, %hi(D_808B2018) # $a0, 0x808b
/* 0002DC 808B1DBC 3C05808B */  lui   $a1, %hi(D_808B2064) # $a1, 0x808b
/* 0002E0 808B1DC0 31CF00FF */  andi  $t7, $t6, 0xff
/* 0002E4 808B1DC4 A60F001C */  sh    $t7, 0x1c($s0)
/* 0002E8 808B1DC8 8607001C */  lh    $a3, 0x1c($s0)
/* 0002EC 808B1DCC 24A52064 */  addiu $a1, %lo(D_808B2064) # addiu $a1, $a1, 0x2064
/* 0002F0 808B1DD0 24842018 */  addiu $a0, %lo(D_808B2018) # addiu $a0, $a0, 0x2018
/* 0002F4 808B1DD4 04E00003 */  bltz  $a3, .L808B1DE4
/* 0002F8 808B1DD8 28E10005 */   slti  $at, $a3, 5
/* 0002FC 808B1DDC 54200004 */  bnezl $at, .L808B1DF0
/* 000300 808B1DE0 02002025 */   move  $a0, $s0
.L808B1DE4:
/* 000304 808B1DE4 0C00084C */  jal   osSyncPrintf
/* 000308 808B1DE8 24060142 */   li    $a2, 322
/* 00030C 808B1DEC 02002025 */  move  $a0, $s0
.L808B1DF0:
/* 000310 808B1DF0 0C22C71C */  jal   func_808B1C70
/* 000314 808B1DF4 8FA50024 */   lw    $a1, 0x24($sp)
/* 000318 808B1DF8 14400005 */  bnez  $v0, .L808B1E10
/* 00031C 808B1DFC 02002025 */   move  $a0, $s0
/* 000320 808B1E00 0C00B55C */  jal   Actor_Kill
/* 000324 808B1E04 02002025 */   move  $a0, $s0
/* 000328 808B1E08 10000008 */  b     .L808B1E2C
/* 00032C 808B1E0C 8FBF001C */   lw    $ra, 0x1c($sp)
.L808B1E10:
/* 000330 808B1E10 0C22C751 */  jal   func_808B1D44
/* 000334 808B1E14 8FA50024 */   lw    $a1, 0x24($sp)
/* 000338 808B1E18 54400004 */  bnezl $v0, .L808B1E2C
/* 00033C 808B1E1C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 000340 808B1E20 0C00B55C */  jal   Actor_Kill
/* 000344 808B1E24 02002025 */   move  $a0, $s0
/* 000348 808B1E28 8FBF001C */  lw    $ra, 0x1c($sp)
.L808B1E2C:
/* 00034C 808B1E2C 8FB00018 */  lw    $s0, 0x18($sp)
/* 000350 808B1E30 27BD0020 */  addiu $sp, $sp, 0x20
/* 000354 808B1E34 03E00008 */  jr    $ra
/* 000358 808B1E38 00000000 */   nop   

func_808B1E3C:
/* 00035C 808B1E3C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000360 808B1E40 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000364 808B1E44 AFA40018 */  sw    $a0, 0x18($sp)
/* 000368 808B1E48 848F001C */  lh    $t7, 0x1c($a0)
/* 00036C 808B1E4C 00807025 */  move  $t6, $a0
/* 000370 808B1E50 00A02025 */  move  $a0, $a1
/* 000374 808B1E54 11E00003 */  beqz  $t7, .L808B1E64
/* 000378 808B1E58 24A50810 */   addiu $a1, $a1, 0x810
/* 00037C 808B1E5C 0C00FB56 */  jal   DynaPolyInfo_Free
/* 000380 808B1E60 8DC6014C */   lw    $a2, 0x14c($t6)
.L808B1E64:
/* 000384 808B1E64 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000388 808B1E68 27BD0018 */  addiu $sp, $sp, 0x18
/* 00038C 808B1E6C 03E00008 */  jr    $ra
/* 000390 808B1E70 00000000 */   nop   

func_808B1E74:
/* 000394 808B1E74 AFA40000 */  sw    $a0, ($sp)
/* 000398 808B1E78 03E00008 */  jr    $ra
/* 00039C 808B1E7C AFA50004 */   sw    $a1, 4($sp)

func_808B1E80:
/* 0003A0 808B1E80 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0003A4 808B1E84 AFB00014 */  sw    $s0, 0x14($sp)
/* 0003A8 808B1E88 00808025 */  move  $s0, $a0
/* 0003AC 808B1E8C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0003B0 808B1E90 AFB10018 */  sw    $s1, 0x18($sp)
/* 0003B4 808B1E94 860E001C */  lh    $t6, 0x1c($s0)
/* 0003B8 808B1E98 00A08825 */  move  $s1, $a1
/* 0003BC 808B1E9C 00A02025 */  move  $a0, $a1
/* 0003C0 808B1EA0 3C05808B */  lui   $a1, 0x808b
/* 0003C4 808B1EA4 000E7880 */  sll   $t7, $t6, 2
/* 0003C8 808B1EA8 00AF2821 */  addu  $a1, $a1, $t7
/* 0003CC 808B1EAC 0C00D498 */  jal   Draw_DListOpa
/* 0003D0 808B1EB0 8CA51FC8 */   lw    $a1, 0x1fc8($a1)
/* 0003D4 808B1EB4 8618001C */  lh    $t8, 0x1c($s0)
/* 0003D8 808B1EB8 24010003 */  li    $at, 3
/* 0003DC 808B1EBC 27A4002C */  addiu $a0, $sp, 0x2c
/* 0003E0 808B1EC0 17010024 */  bne   $t8, $at, .L808B1F54
/* 0003E4 808B1EC4 3C06808B */   lui   $a2, %hi(D_808B207C) # $a2, 0x808b
/* 0003E8 808B1EC8 8E250000 */  lw    $a1, ($s1)
/* 0003EC 808B1ECC 24C6207C */  addiu $a2, %lo(D_808B207C) # addiu $a2, $a2, 0x207c
/* 0003F0 808B1ED0 24070184 */  li    $a3, 388
/* 0003F4 808B1ED4 0C031AB1 */  jal   func_800C6AC4
/* 0003F8 808B1ED8 00A08025 */   move  $s0, $a1
/* 0003FC 808B1EDC 0C024F61 */  jal   func_80093D84
/* 000400 808B1EE0 8E240000 */   lw    $a0, ($s1)
/* 000404 808B1EE4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 000408 808B1EE8 3C08DA38 */  lui   $t0, (0xDA380003 >> 16) # lui $t0, 0xda38
/* 00040C 808B1EEC 35080003 */  ori   $t0, (0xDA380003 & 0xFFFF) # ori $t0, $t0, 3
/* 000410 808B1EF0 24590008 */  addiu $t9, $v0, 8
/* 000414 808B1EF4 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* 000418 808B1EF8 AC480000 */  sw    $t0, ($v0)
/* 00041C 808B1EFC 8E240000 */  lw    $a0, ($s1)
/* 000420 808B1F00 3C05808B */  lui   $a1, %hi(D_808B2094) # $a1, 0x808b
/* 000424 808B1F04 24A52094 */  addiu $a1, %lo(D_808B2094) # addiu $a1, $a1, 0x2094
/* 000428 808B1F08 24060187 */  li    $a2, 391
/* 00042C 808B1F0C 0C0346A2 */  jal   func_800D1A88
/* 000430 808B1F10 AFA20028 */   sw    $v0, 0x28($sp)
/* 000434 808B1F14 8FA30028 */  lw    $v1, 0x28($sp)
/* 000438 808B1F18 3C0B0601 */  lui   $t3, %hi(D_06008010) # $t3, 0x601
/* 00043C 808B1F1C 256B8010 */  addiu $t3, %lo(D_06008010) # addiu $t3, $t3, -0x7ff0
/* 000440 808B1F20 AC620004 */  sw    $v0, 4($v1)
/* 000444 808B1F24 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 000448 808B1F28 3C0ADE00 */  lui   $t2, 0xde00
/* 00044C 808B1F2C 3C06808B */  lui   $a2, %hi(D_808B20AC) # $a2, 0x808b
/* 000450 808B1F30 24490008 */  addiu $t1, $v0, 8
/* 000454 808B1F34 AE0902D0 */  sw    $t1, 0x2d0($s0)
/* 000458 808B1F38 AC4B0004 */  sw    $t3, 4($v0)
/* 00045C 808B1F3C AC4A0000 */  sw    $t2, ($v0)
/* 000460 808B1F40 8E250000 */  lw    $a1, ($s1)
/* 000464 808B1F44 24C620AC */  addiu $a2, %lo(D_808B20AC) # addiu $a2, $a2, 0x20ac
/* 000468 808B1F48 27A4002C */  addiu $a0, $sp, 0x2c
/* 00046C 808B1F4C 0C031AD5 */  jal   func_800C6B54
/* 000470 808B1F50 2407018C */   li    $a3, 396
.L808B1F54:
/* 000474 808B1F54 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000478 808B1F58 8FB00014 */  lw    $s0, 0x14($sp)
/* 00047C 808B1F5C 8FB10018 */  lw    $s1, 0x18($sp)
/* 000480 808B1F60 03E00008 */  jr    $ra
/* 000484 808B1F64 27BD0040 */   addiu $sp, $sp, 0x40

.section .data

D_808B1F70:
.incbin "baserom/ovl_Bg_Spot09_Obj", 0x490, 0x34
D_808B1FA4:
.incbin "baserom/ovl_Bg_Spot09_Obj", 0x4C4, 0xC
D_808B1FB0:
.incbin "baserom/ovl_Bg_Spot09_Obj", 0x4D0, 0xC
D_808B1FBC:
.incbin "baserom/ovl_Bg_Spot09_Obj", 0x4DC, 0x24
D_808B1FE0:
.incbin "baserom/ovl_Bg_Spot09_Obj", 0x500, 0x38
D_808B2018:
.incbin "baserom/ovl_Bg_Spot09_Obj", 0x538, 0x4C
D_808B2064:
.incbin "baserom/ovl_Bg_Spot09_Obj", 0x584, 0x18
D_808B207C:
.incbin "baserom/ovl_Bg_Spot09_Obj", 0x59C, 0x18
D_808B2094:
.incbin "baserom/ovl_Bg_Spot09_Obj", 0x5B4, 0x18
D_808B20AC:
.incbin "baserom/ovl_Bg_Spot09_Obj", 0x5CC, 0xD4
