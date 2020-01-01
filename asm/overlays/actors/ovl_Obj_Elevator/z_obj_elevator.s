.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_80B92B00:
/* 000000 80B92B00 03E00008 */  jr    $ra
/* 000004 80B92B04 AC850164 */   sw    $a1, 0x164($a0)

func_80B92B08:
/* 000008 80B92B08 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00000C 80B92B0C AFBF0024 */  sw    $ra, 0x24($sp)
/* 000010 80B92B10 AFB00020 */  sw    $s0, 0x20($sp)
/* 000014 80B92B14 AFA5003C */  sw    $a1, 0x3c($sp)
/* 000018 80B92B18 00808025 */  move  $s0, $a0
/* 00001C 80B92B1C AFA60040 */  sw    $a2, 0x40($sp)
/* 000020 80B92B20 AFA00030 */  sw    $zero, 0x30($sp)
/* 000024 80B92B24 0C010D20 */  jal   DynaPolyInfo_SetActorMove
/* 000028 80B92B28 00E02825 */   move  $a1, $a3
/* 00002C 80B92B2C 8FA40040 */  lw    $a0, 0x40($sp)
/* 000030 80B92B30 0C010620 */  jal   DynaPolyInfo_Alloc
/* 000034 80B92B34 27A50030 */   addiu $a1, $sp, 0x30
/* 000038 80B92B38 8FA4003C */  lw    $a0, 0x3c($sp)
/* 00003C 80B92B3C 02003025 */  move  $a2, $s0
/* 000040 80B92B40 8FA70030 */  lw    $a3, 0x30($sp)
/* 000044 80B92B44 0C00FA9D */  jal   DynaPolyInfo_RegisterActor
/* 000048 80B92B48 24850810 */   addiu $a1, $a0, 0x810
/* 00004C 80B92B4C 24010032 */  li    $at, 50
/* 000050 80B92B50 1441000A */  bne   $v0, $at, .L80B92B7C
/* 000054 80B92B54 AE02014C */   sw    $v0, 0x14c($s0)
/* 000058 80B92B58 860E001C */  lh    $t6, 0x1c($s0)
/* 00005C 80B92B5C 3C0480B9 */  lui   $a0, %hi(D_80B92E70) # $a0, 0x80b9
/* 000060 80B92B60 3C0580B9 */  lui   $a1, %hi(D_80B92EB0) # $a1, 0x80b9
/* 000064 80B92B64 86070000 */  lh    $a3, ($s0)
/* 000068 80B92B68 24A52EB0 */  addiu $a1, %lo(D_80B92EB0) # addiu $a1, $a1, 0x2eb0
/* 00006C 80B92B6C 24842E70 */  addiu $a0, %lo(D_80B92E70) # addiu $a0, $a0, 0x2e70
/* 000070 80B92B70 24060088 */  li    $a2, 136
/* 000074 80B92B74 0C00084C */  jal   osSyncPrintf
/* 000078 80B92B78 AFAE0010 */   sw    $t6, 0x10($sp)
.L80B92B7C:
/* 00007C 80B92B7C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 000080 80B92B80 8FB00020 */  lw    $s0, 0x20($sp)
/* 000084 80B92B84 27BD0038 */  addiu $sp, $sp, 0x38
/* 000088 80B92B88 03E00008 */  jr    $ra
/* 00008C 80B92B8C 00000000 */   nop   

/* 000090 80B92B90 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 000094 80B92B94 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000098 80B92B98 AFB00018 */  sw    $s0, 0x18($sp)
/* 00009C 80B92B9C 3C060600 */  lui   $a2, %hi(D_06000360) # $a2, 0x600
/* 0000A0 80B92BA0 00808025 */  move  $s0, $a0
/* 0000A4 80B92BA4 24C60360 */  addiu $a2, %lo(D_06000360) # addiu $a2, $a2, 0x360
/* 0000A8 80B92BA8 0C2E4AC2 */  jal   func_80B92B08
/* 0000AC 80B92BAC 24070001 */   li    $a3, 1
/* 0000B0 80B92BB0 860E001C */  lh    $t6, 0x1c($s0)
/* 0000B4 80B92BB4 3C0580B9 */  lui   $a1, %hi(D_80B92E5C)
/* 0000B8 80B92BB8 02002025 */  move  $a0, $s0
/* 0000BC 80B92BBC 31CF0001 */  andi  $t7, $t6, 1
/* 0000C0 80B92BC0 000FC080 */  sll   $t8, $t7, 2
/* 0000C4 80B92BC4 00B82821 */  addu  $a1, $a1, $t8
/* 0000C8 80B92BC8 0C00B58B */  jal   Actor_SetScale
/* 0000CC 80B92BCC 8CA52E5C */   lw    $a1, %lo(D_80B92E5C)($a1)
/* 0000D0 80B92BD0 3C0580B9 */  lui   $a1, %hi(D_80B92E50) # $a1, 0x80b9
/* 0000D4 80B92BD4 24A52E50 */  addiu $a1, %lo(D_80B92E50) # addiu $a1, $a1, 0x2e50
/* 0000D8 80B92BD8 0C01E037 */  jal   Actor_ProcessInitChain
/* 0000DC 80B92BDC 02002025 */   move  $a0, $s0
/* 0000E0 80B92BE0 8619001C */  lh    $t9, 0x1c($s0)
/* 0000E4 80B92BE4 02002025 */  move  $a0, $s0
/* 0000E8 80B92BE8 00194203 */  sra   $t0, $t9, 8
/* 0000EC 80B92BEC 3109000F */  andi  $t1, $t0, 0xf
/* 0000F0 80B92BF0 44892000 */  mtc1  $t1, $f4
/* 0000F4 80B92BF4 00000000 */  nop   
/* 0000F8 80B92BF8 46802020 */  cvt.s.w $f0, $f4
/* 0000FC 80B92BFC 46000180 */  add.s $f6, $f0, $f0
/* 000100 80B92C00 0C2E4B17 */  jal   func_80B92C5C
/* 000104 80B92C04 E606016C */   swc1  $f6, 0x16c($s0)
/* 000108 80B92C08 3C0480B9 */  lui   $a0, %hi(D_80B92EC4) # $a0, 0x80b9
/* 00010C 80B92C0C 24842EC4 */  addiu $a0, %lo(D_80B92EC4) # addiu $a0, $a0, 0x2ec4
/* 000110 80B92C10 0C00084C */  jal   osSyncPrintf
/* 000114 80B92C14 8605001C */   lh    $a1, 0x1c($s0)
/* 000118 80B92C18 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00011C 80B92C1C 8FB00018 */  lw    $s0, 0x18($sp)
/* 000120 80B92C20 27BD0020 */  addiu $sp, $sp, 0x20
/* 000124 80B92C24 03E00008 */  jr    $ra
/* 000128 80B92C28 00000000 */   nop   

/* 00012C 80B92C2C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000130 80B92C30 AFA40018 */  sw    $a0, 0x18($sp)
/* 000134 80B92C34 8FAE0018 */  lw    $t6, 0x18($sp)
/* 000138 80B92C38 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00013C 80B92C3C 00A02025 */  move  $a0, $a1
/* 000140 80B92C40 24A50810 */  addiu $a1, $a1, 0x810
/* 000144 80B92C44 0C00FB56 */  jal   DynaPolyInfo_Free
/* 000148 80B92C48 8DC6014C */   lw    $a2, 0x14c($t6)
/* 00014C 80B92C4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000150 80B92C50 27BD0018 */  addiu $sp, $sp, 0x18
/* 000154 80B92C54 03E00008 */  jr    $ra
/* 000158 80B92C58 00000000 */   nop   

func_80B92C5C:
/* 00015C 80B92C5C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000160 80B92C60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000164 80B92C64 3C0580B9 */  lui   $a1, %hi(D_80B92C80) # $a1, 0x80b9
/* 000168 80B92C68 0C2E4AC0 */  jal   func_80B92B00
/* 00016C 80B92C6C 24A52C80 */   addiu $a1, %lo(D_80B92C80) # addiu $a1, $a1, 0x2c80
/* 000170 80B92C70 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000174 80B92C74 27BD0018 */  addiu $sp, $sp, 0x18
/* 000178 80B92C78 03E00008 */  jr    $ra
/* 00017C 80B92C7C 00000000 */   nop   

D_80B92C80:
/* 000180 80B92C80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000184 80B92C84 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000188 80B92C88 AFA5001C */  sw    $a1, 0x1c($sp)
/* 00018C 80B92C8C 908E0160 */  lbu   $t6, 0x160($a0)
/* 000190 80B92C90 31CF0002 */  andi  $t7, $t6, 2
/* 000194 80B92C94 51E0001F */  beql  $t7, $zero, .L80B92D14
/* 000198 80B92C98 8FBF0014 */   lw    $ra, 0x14($sp)
/* 00019C 80B92C9C 90980170 */  lbu   $t8, 0x170($a0)
/* 0001A0 80B92CA0 33190002 */  andi  $t9, $t8, 2
/* 0001A4 80B92CA4 5720001B */  bnezl $t9, .L80B92D14
/* 0001A8 80B92CA8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0001AC 80B92CAC C48C000C */  lwc1  $f12, 0xc($a0)
/* 0001B0 80B92CB0 C4840028 */  lwc1  $f4, 0x28($a0)
/* 0001B4 80B92CB4 3C0180B9 */  lui   $at, %hi(D_80B92EEC) # $at, 0x80b9
/* 0001B8 80B92CB8 C4262EEC */  lwc1  $f6, %lo(D_80B92EEC)($at)
/* 0001BC 80B92CBC 460C2081 */  sub.s $f2, $f4, $f12
/* 0001C0 80B92CC0 46001005 */  abs.s $f0, $f2
/* 0001C4 80B92CC4 4606003C */  c.lt.s $f0, $f6
/* 0001C8 80B92CC8 00000000 */  nop   
/* 0001CC 80B92CCC 4502000E */  .byte 0x45,0x02,0x00,0x0E /* Because of invalid n64 opcode bc1fl */
/* 0001D0 80B92CD0 E48C0168 */  .byte 0xE4,0x8C,0x01,0x68
/* 0001D4 80B92CD4 8488001C */  lh    $t0, 0x1c($a0)
/* 0001D8 80B92CD8 3C0142A0 */  li    $at, 0x42A00000 # 80.000000
/* 0001DC 80B92CDC 44818000 */  mtc1  $at, $f16
/* 0001E0 80B92CE0 00084B03 */  sra   $t1, $t0, 0xc
/* 0001E4 80B92CE4 312A000F */  andi  $t2, $t1, 0xf
/* 0001E8 80B92CE8 448A4000 */  mtc1  $t2, $f8
/* 0001EC 80B92CEC 00000000 */  nop   
/* 0001F0 80B92CF0 468042A0 */  cvt.s.w $f10, $f8
/* 0001F4 80B92CF4 46105482 */  mul.s $f18, $f10, $f16
/* 0001F8 80B92CF8 46126100 */  add.s $f4, $f12, $f18
/* 0001FC 80B92CFC 10000002 */  b     .L80B92D08
/* 000200 80B92D00 E4840168 */   swc1  $f4, 0x168($a0)
/* 000204 80B92D04 E48C0168 */  swc1  $f12, 0x168($a0)
.L80B92D08:
/* 000208 80B92D08 0C2E4B48 */  jal   func_80B92D20
/* 00020C 80B92D0C 00000000 */   nop   
/* 000210 80B92D10 8FBF0014 */  lw    $ra, 0x14($sp)
.L80B92D14:
/* 000214 80B92D14 27BD0018 */  addiu $sp, $sp, 0x18
/* 000218 80B92D18 03E00008 */  jr    $ra
/* 00021C 80B92D1C 00000000 */   nop   

func_80B92D20:
/* 000220 80B92D20 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000224 80B92D24 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000228 80B92D28 3C0580B9 */  lui   $a1, %hi(func_80B92D44) # $a1, 0x80b9
/* 00022C 80B92D2C 0C2E4AC0 */  jal   func_80B92B00
/* 000230 80B92D30 24A52D44 */   addiu $a1, %lo(func_80B92D44) # addiu $a1, $a1, 0x2d44
/* 000234 80B92D34 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000238 80B92D38 27BD0018 */  addiu $sp, $sp, 0x18
/* 00023C 80B92D3C 03E00008 */  jr    $ra
/* 000240 80B92D40 00000000 */   nop   

func_80B92D44:
/* 000244 80B92D44 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 000248 80B92D48 AFB00020 */  sw    $s0, 0x20($sp)
/* 00024C 80B92D4C 00808025 */  move  $s0, $a0
/* 000250 80B92D50 AFBF0024 */  sw    $ra, 0x24($sp)
/* 000254 80B92D54 AFA5002C */  sw    $a1, 0x2c($sp)
/* 000258 80B92D58 44802000 */  mtc1  $zero, $f4
/* 00025C 80B92D5C 8E07016C */  lw    $a3, 0x16c($s0)
/* 000260 80B92D60 8E050168 */  lw    $a1, 0x168($s0)
/* 000264 80B92D64 24840028 */  addiu $a0, $a0, 0x28
/* 000268 80B92D68 3C063F80 */  lui   $a2, 0x3f80
/* 00026C 80B92D6C 0C01E0C4 */  jal   Math_SmoothScaleMaxMinF
/* 000270 80B92D70 E7A40010 */   swc1  $f4, 0x10($sp)
/* 000274 80B92D74 3C0180B9 */  lui   $at, %hi(D_80B92EF0) # $at, 0x80b9
/* 000278 80B92D78 C4262EF0 */  lwc1  $f6, %lo(D_80B92EF0)($at)
/* 00027C 80B92D7C 46000005 */  abs.s $f0, $f0
/* 000280 80B92D80 24052815 */  li    $a1, 10261
/* 000284 80B92D84 4606003C */  c.lt.s $f0, $f6
/* 000288 80B92D88 02002025 */  move  $a0, $s0
/* 00028C 80B92D8C 45000007 */  .byte 0x45,0x00,0x00,0x07 /* Because of invalid n64 opcode bc1f */
/* 000290 80B92D90 00000000 */  nop   
/* 000294 80B92D94 0C00BE0A */  jal   Audio_PlayActorSound2
/* 000298 80B92D98 02002025 */   move  $a0, $s0
/* 00029C 80B92D9C 0C2E4B17 */  jal   func_80B92C5C
/* 0002A0 80B92DA0 02002025 */   move  $a0, $s0
/* 0002A4 80B92DA4 10000004 */  b     .L80B92DB8
/* 0002A8 80B92DA8 8FBF0024 */   lw    $ra, 0x24($sp)
.L80B92DAC:
/* 0002AC 80B92DAC 0C00BE0A */  jal   Audio_PlayActorSound2
/* 0002B0 80B92DB0 2405201E */   li    $a1, 8222
/* 0002B4 80B92DB4 8FBF0024 */  lw    $ra, 0x24($sp)
.L80B92DB8:
/* 0002B8 80B92DB8 8FB00020 */  lw    $s0, 0x20($sp)
/* 0002BC 80B92DBC 27BD0028 */  addiu $sp, $sp, 0x28
/* 0002C0 80B92DC0 03E00008 */  jr    $ra
/* 0002C4 80B92DC4 00000000 */   nop   

/* 0002C8 80B92DC8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0002CC 80B92DCC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0002D0 80B92DD0 8C820164 */  lw    $v0, 0x164($a0)
/* 0002D4 80B92DD4 50400005 */  beql  $v0, $zero, .L80B92DEC
/* 0002D8 80B92DD8 908E0160 */   lbu   $t6, 0x160($a0)
/* 0002DC 80B92DDC 0040F809 */  jalr  $v0
/* 0002E0 80B92DE0 AFA40018 */  sw    $a0, 0x18($sp)
/* 0002E4 80B92DE4 8FA40018 */  lw    $a0, 0x18($sp)
/* 0002E8 80B92DE8 908E0160 */  lbu   $t6, 0x160($a0)
.L80B92DEC:
/* 0002EC 80B92DEC A08E0170 */  sb    $t6, 0x170($a0)
/* 0002F0 80B92DF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0002F4 80B92DF4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0002F8 80B92DF8 03E00008 */  jr    $ra
/* 0002FC 80B92DFC 00000000 */   nop   

/* 000300 80B92E00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000304 80B92E04 AFA40018 */  sw    $a0, 0x18($sp)
/* 000308 80B92E08 00A02025 */  move  $a0, $a1
/* 00030C 80B92E0C AFBF0014 */  sw    $ra, 0x14($sp)
/* 000310 80B92E10 3C050600 */  lui   $a1, %hi(D_06000180) # $a1, 0x600
/* 000314 80B92E14 0C00D498 */  jal   Draw_DListOpa
/* 000318 80B92E18 24A50180 */   addiu $a1, %lo(D_06000180) # addiu $a1, $a1, 0x180
/* 00031C 80B92E1C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000320 80B92E20 27BD0018 */  addiu $sp, $sp, 0x18
/* 000324 80B92E24 03E00008 */  jr    $ra
/* 000328 80B92E28 00000000 */   nop   

.section .data

D_80B92E30:
.incbin "baserom/ovl_Obj_Elevator", 0x330, 0x20
D_80B92E50:
.incbin "baserom/ovl_Obj_Elevator", 0x350, 0xC
D_80B92E5C:
.incbin "baserom/ovl_Obj_Elevator", 0x35C, 0x14
D_80B92E70:
.incbin "baserom/ovl_Obj_Elevator", 0x370, 0x40
D_80B92EB0:
.incbin "baserom/ovl_Obj_Elevator", 0x3B0, 0x14
D_80B92EC4:
.incbin "baserom/ovl_Obj_Elevator", 0x3C4, 0x28
D_80B92EEC:
.incbin "baserom/ovl_Obj_Elevator", 0x3EC, 0x4
D_80B92EF0:
.incbin "baserom/ovl_Obj_Elevator", 0x3F0, 0xA0
