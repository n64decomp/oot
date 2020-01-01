.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_8087DE30:
/* 000000 8087DE30 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 000004 8087DE34 AFA50034 */  sw    $a1, 0x34($sp)
/* 000008 8087DE38 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00000C 8087DE3C AFB00018 */  sw    $s0, 0x18($sp)
/* 000010 8087DE40 3C058088 */  lui   $a1, %hi(D_8087E3F0) # $a1, 0x8088
/* 000014 8087DE44 00808025 */  move  $s0, $a0
/* 000018 8087DE48 AFA00024 */  sw    $zero, 0x24($sp)
/* 00001C 8087DE4C 0C01E037 */  jal   Actor_ProcessInitChain
/* 000020 8087DE50 24A5E3F0 */   addiu $a1, %lo(D_8087E3F0) # addiu $a1, $a1, -0x1c10
/* 000024 8087DE54 8619001C */  lh    $t9, 0x1c($s0)
/* 000028 8087DE58 860E001C */  lh    $t6, 0x1c($s0)
/* 00002C 8087DE5C 24010002 */  li    $at, 2
/* 000030 8087DE60 332800FF */  andi  $t0, $t9, 0xff
/* 000034 8087DE64 A608001C */  sh    $t0, 0x1c($s0)
/* 000038 8087DE68 8609001C */  lh    $t1, 0x1c($s0)
/* 00003C 8087DE6C 000EC203 */  sra   $t8, $t6, 8
/* 000040 8087DE70 A2180168 */  sb    $t8, 0x168($s0)
/* 000044 8087DE74 1521000F */  bne   $t1, $at, .L8087DEB4
/* 000048 8087DE78 02002025 */   move  $a0, $s0
/* 00004C 8087DE7C 02002025 */  move  $a0, $s0
/* 000050 8087DE80 0C010D20 */  jal   DynaPolyInfo_SetActorMove
/* 000054 8087DE84 24050003 */   li    $a1, 3
/* 000058 8087DE88 8E0A0004 */  lw    $t2, 4($s0)
/* 00005C 8087DE8C 3C040600 */  lui   $a0, %hi(D_06005334) # $a0, 0x600
/* 000060 8087DE90 24845334 */  addiu $a0, %lo(D_06005334) # addiu $a0, $a0, 0x5334
/* 000064 8087DE94 354B0010 */  ori   $t3, $t2, 0x10
/* 000068 8087DE98 AE0B0004 */  sw    $t3, 4($s0)
/* 00006C 8087DE9C 0C010620 */  jal   DynaPolyInfo_Alloc
/* 000070 8087DEA0 27A50024 */   addiu $a1, $sp, 0x24
/* 000074 8087DEA4 3C0C8088 */  lui   $t4, %hi(func_8087E258) # $t4, 0x8088
/* 000078 8087DEA8 258CE258 */  addiu $t4, %lo(func_8087E258) # addiu $t4, $t4, -0x1da8
/* 00007C 8087DEAC 1000003B */  b     .L8087DF9C
/* 000080 8087DEB0 AE0C0164 */   sw    $t4, 0x164($s0)
.L8087DEB4:
/* 000084 8087DEB4 0C010D20 */  jal   DynaPolyInfo_SetActorMove
/* 000088 8087DEB8 24050001 */   li    $a1, 1
/* 00008C 8087DEBC 8602001C */  lh    $v0, 0x1c($s0)
/* 000090 8087DEC0 3C040601 */  lui   $a0, %hi(D_06009168) # $a0, 0x601
/* 000094 8087DEC4 24849168 */  addiu $a0, %lo(D_06009168) # addiu $a0, $a0, -0x6e98
/* 000098 8087DEC8 1440000C */  bnez  $v0, .L8087DEFC
/* 00009C 8087DECC 24010003 */   li    $at, 3
/* 0000A0 8087DED0 0C010620 */  jal   DynaPolyInfo_Alloc
/* 0000A4 8087DED4 27A50024 */   addiu $a1, $sp, 0x24
/* 0000A8 8087DED8 8E0D0004 */  lw    $t5, 4($s0)
/* 0000AC 8087DEDC 3C188088 */  lui   $t8, %hi(func_8087DFF8) # $t8, 0x8088
/* 0000B0 8087DEE0 240F0014 */  li    $t7, 20
/* 0000B4 8087DEE4 2718DFF8 */  addiu $t8, %lo(func_8087DFF8) # addiu $t8, $t8, -0x2008
/* 0000B8 8087DEE8 35AE0080 */  ori   $t6, $t5, 0x80
/* 0000BC 8087DEEC AE0E0004 */  sw    $t6, 4($s0)
/* 0000C0 8087DEF0 A60F016A */  sh    $t7, 0x16a($s0)
/* 0000C4 8087DEF4 10000029 */  b     .L8087DF9C
/* 0000C8 8087DEF8 AE180164 */   sw    $t8, 0x164($s0)
.L8087DEFC:
/* 0000CC 8087DEFC 1441001B */  bne   $v0, $at, .L8087DF6C
/* 0000D0 8087DF00 3C040601 */   lui   $a0, 0x601
/* 0000D4 8087DF04 3C040600 */  lui   $a0, %hi(D_06000118) # $a0, 0x600
/* 0000D8 8087DF08 24840118 */  addiu $a0, %lo(D_06000118) # addiu $a0, $a0, 0x118
/* 0000DC 8087DF0C 0C010620 */  jal   DynaPolyInfo_Alloc
/* 0000E0 8087DF10 27A50024 */   addiu $a1, $sp, 0x24
/* 0000E4 8087DF14 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0000E8 8087DF18 44813000 */  mtc1  $at, $f6
/* 0000EC 8087DF1C C604000C */  lwc1  $f4, 0xc($s0)
/* 0000F0 8087DF20 92050168 */  lbu   $a1, 0x168($s0)
/* 0000F4 8087DF24 46062200 */  add.s $f8, $f4, $f6
/* 0000F8 8087DF28 E608000C */  swc1  $f8, 0xc($s0)
/* 0000FC 8087DF2C 0C00B2D0 */  jal   Flags_GetSwitch
/* 000100 8087DF30 8FA40034 */   lw    $a0, 0x34($sp)
/* 000104 8087DF34 10400007 */  beqz  $v0, .L8087DF54
/* 000108 8087DF38 3C0A8088 */   lui   $t2, %hi(func_8087E288) # $t2, 0x8088
/* 00010C 8087DF3C C60A000C */  lwc1  $f10, 0xc($s0)
/* 000110 8087DF40 3C198088 */  lui   $t9, %hi(func_8087E34C) # $t9, 0x8088
/* 000114 8087DF44 2739E34C */  addiu $t9, %lo(func_8087E34C) # addiu $t9, $t9, -0x1cb4
/* 000118 8087DF48 AE190164 */  sw    $t9, 0x164($s0)
/* 00011C 8087DF4C 10000013 */  b     .L8087DF9C
/* 000120 8087DF50 E60A0028 */   swc1  $f10, 0x28($s0)
.L8087DF54:
/* 000124 8087DF54 8E080004 */  lw    $t0, 4($s0)
/* 000128 8087DF58 254AE288 */  addiu $t2, %lo(func_8087E288) # addiu $t2, $t2, -0x1d78
/* 00012C 8087DF5C AE0A0164 */  sw    $t2, 0x164($s0)
/* 000130 8087DF60 35090010 */  ori   $t1, $t0, 0x10
/* 000134 8087DF64 1000000D */  b     .L8087DF9C
/* 000138 8087DF68 AE090004 */   sw    $t1, 4($s0)
.L8087DF6C:
/* 00013C 8087DF6C 2484A7F4 */  addiu $a0, $a0, -0x580c
/* 000140 8087DF70 0C010620 */  jal   DynaPolyInfo_Alloc
/* 000144 8087DF74 27A50024 */   addiu $a1, $sp, 0x24
/* 000148 8087DF78 3C018088 */  lui   $at, %hi(D_8087E420) # $at, 0x8088
/* 00014C 8087DF7C C420E420 */  lwc1  $f0, %lo(D_8087E420)($at)
/* 000150 8087DF80 3C0C8088 */  lui   $t4, %hi(func_8087E10C) # $t4, 0x8088
/* 000154 8087DF84 240B0050 */  li    $t3, 80
/* 000158 8087DF88 258CE10C */  addiu $t4, %lo(func_8087E10C) # addiu $t4, $t4, -0x1ef4
/* 00015C 8087DF8C A60B016A */  sh    $t3, 0x16a($s0)
/* 000160 8087DF90 AE0C0164 */  sw    $t4, 0x164($s0)
/* 000164 8087DF94 E60000F8 */  swc1  $f0, 0xf8($s0)
/* 000168 8087DF98 E60000FC */  swc1  $f0, 0xfc($s0)
.L8087DF9C:
/* 00016C 8087DF9C 8FA40034 */  lw    $a0, 0x34($sp)
/* 000170 8087DFA0 02003025 */  move  $a2, $s0
/* 000174 8087DFA4 8FA70024 */  lw    $a3, 0x24($sp)
/* 000178 8087DFA8 0C00FA9D */  jal   DynaPolyInfo_RegisterActor
/* 00017C 8087DFAC 24850810 */   addiu $a1, $a0, 0x810
/* 000180 8087DFB0 AE02014C */  sw    $v0, 0x14c($s0)
/* 000184 8087DFB4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000188 8087DFB8 8FB00018 */  lw    $s0, 0x18($sp)
/* 00018C 8087DFBC 27BD0030 */  addiu $sp, $sp, 0x30
/* 000190 8087DFC0 03E00008 */  jr    $ra
/* 000194 8087DFC4 00000000 */   nop   

/* 000198 8087DFC8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00019C 8087DFCC AFA40018 */  sw    $a0, 0x18($sp)
/* 0001A0 8087DFD0 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0001A4 8087DFD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0001A8 8087DFD8 00A02025 */  move  $a0, $a1
/* 0001AC 8087DFDC 24A50810 */  addiu $a1, $a1, 0x810
/* 0001B0 8087DFE0 0C00FB56 */  jal   DynaPolyInfo_Free
/* 0001B4 8087DFE4 8DC6014C */   lw    $a2, 0x14c($t6)
/* 0001B8 8087DFE8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0001BC 8087DFEC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0001C0 8087DFF0 03E00008 */  jr    $ra
/* 0001C4 8087DFF4 00000000 */   nop   

func_8087DFF8:
.incbin "baserom/ovl_Bg_Haka_MeganeBG", 0x1C8, 0x48

func_8087E040:
/* 000210 8087E040 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000214 8087E044 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000218 8087E048 AFA5001C */  sw    $a1, 0x1c($sp)
/* 00021C 8087E04C 8482016A */  lh    $v0, 0x16a($a0)
/* 000220 8087E050 10400003 */  beqz  $v0, .L8087E060
/* 000224 8087E054 244EFFFF */   addiu $t6, $v0, -1
/* 000228 8087E058 A48E016A */  sh    $t6, 0x16a($a0)
/* 00022C 8087E05C 8482016A */  lh    $v0, 0x16a($a0)
.L8087E060:
/* 000230 8087E060 44822000 */  mtc1  $v0, $f4
/* 000234 8087E064 3C018088 */  lui   $at, %hi(D_8087E424) # $at, 0x8088
/* 000238 8087E068 C428E424 */  lwc1  $f8, %lo(D_8087E424)($at)
/* 00023C 8087E06C 468021A0 */  cvt.s.w $f6, $f4
/* 000240 8087E070 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 000244 8087E074 44818000 */  mtc1  $at, $f16
/* 000248 8087E078 3C018088 */  lui   $at, %hi(D_8087E428) # $at, 0x8088
/* 00024C 8087E07C C424E428 */  lwc1  $f4, %lo(D_8087E428)($at)
/* 000250 8087E080 AFA40018 */  sw    $a0, 0x18($sp)
/* 000254 8087E084 46083282 */  mul.s $f10, $f6, $f8
/* 000258 8087E088 46105480 */  add.s $f18, $f10, $f16
/* 00025C 8087E08C 46049302 */  mul.s $f12, $f18, $f4
/* 000260 8087E090 0C0400A4 */  jal   sinf
/* 000264 8087E094 00000000 */   nop   
/* 000268 8087E098 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 00026C 8087E09C 44813000 */  mtc1  $at, $f6
/* 000270 8087E0A0 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 000274 8087E0A4 44815000 */  mtc1  $at, $f10
/* 000278 8087E0A8 46060200 */  add.s $f8, $f0, $f6
/* 00027C 8087E0AC 8FA40018 */  lw    $a0, 0x18($sp)
/* 000280 8087E0B0 3C098088 */  lui   $t1, %hi(func_8087DFF8) # $t1, 0x8088
/* 000284 8087E0B4 3C0143A0 */  li    $at, 0x43A00000 # 320.000000
/* 000288 8087E0B8 460A4302 */  mul.s $f12, $f8, $f10
/* 00028C 8087E0BC 848F00B6 */  lh    $t7, 0xb6($a0)
/* 000290 8087E0C0 84980032 */  lh    $t8, 0x32($a0)
/* 000294 8087E0C4 24080014 */  li    $t0, 20
/* 000298 8087E0C8 2529DFF8 */  addiu $t1, %lo(func_8087DFF8) # addiu $t1, $t1, -0x2008
/* 00029C 8087E0CC 11F80004 */  beq   $t7, $t8, .L8087E0E0
/* 0002A0 8087E0D0 46006086 */   mov.s $f2, $f12
/* 0002A4 8087E0D4 44818000 */  mtc1  $at, $f16
/* 0002A8 8087E0D8 00000000 */  nop   
/* 0002AC 8087E0DC 460C8081 */  sub.s $f2, $f16, $f12
.L8087E0E0:
/* 0002B0 8087E0E0 C4920008 */  lwc1  $f18, 8($a0)
/* 0002B4 8087E0E4 8499016A */  lh    $t9, 0x16a($a0)
/* 0002B8 8087E0E8 46029101 */  sub.s $f4, $f18, $f2
/* 0002BC 8087E0EC 17200003 */  bnez  $t9, .L8087E0FC
/* 0002C0 8087E0F0 E4840024 */   swc1  $f4, 0x24($a0)
/* 0002C4 8087E0F4 A488016A */  sh    $t0, 0x16a($a0)
/* 0002C8 8087E0F8 AC890164 */  sw    $t1, 0x164($a0)
.L8087E0FC:
/* 0002CC 8087E0FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0002D0 8087E100 27BD0018 */  addiu $sp, $sp, 0x18
/* 0002D4 8087E104 03E00008 */  jr    $ra
/* 0002D8 8087E108 00000000 */   nop   

func_8087E10C:
/* 0002DC 8087E10C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0002E0 8087E110 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0002E4 8087E114 44811000 */  mtc1  $at, $f2
/* 0002E8 8087E118 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0002EC 8087E11C AFA5001C */  sw    $a1, 0x1c($sp)
/* 0002F0 8087E120 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0002F4 8087E124 44813000 */  mtc1  $at, $f6
/* 0002F8 8087E128 C4840060 */  lwc1  $f4, 0x60($a0)
/* 0002FC 8087E12C 3C014420 */  li    $at, 0x44200000 # 640.000000
/* 000300 8087E130 44818000 */  mtc1  $at, $f16
/* 000304 8087E134 46062200 */  add.s $f8, $f4, $f6
/* 000308 8087E138 00803825 */  move  $a3, $a0
/* 00030C 8087E13C E4880060 */  swc1  $f8, 0x60($a0)
/* 000310 8087E140 C4800060 */  lwc1  $f0, 0x60($a0)
/* 000314 8087E144 4600103C */  c.lt.s $f2, $f0
/* 000318 8087E148 00000000 */  nop   
/* 00031C 8087E14C 45020004 */  .byte 0x45,0x02,0x00,0x04 /* Because of invalid n64 opcode bc1fl */
/* 000320 8087E150 E4E00060 */ .word 0xE4E00060
/* 000324 8087E154 10000002 */  b     .L8087E160
/* 000328 8087E158 E4820060 */   swc1  $f2, 0x60($a0)
/* 00032C 8087E15C E4E00060 */  swc1  $f0, 0x60($a3)
.L8087E160:
/* 000330 8087E160 84E2016A */  lh    $v0, 0x16a($a3)
/* 000334 8087E164 10400002 */  beqz  $v0, .L8087E170
/* 000338 8087E168 244EFFFF */   addiu $t6, $v0, -1
/* 00033C 8087E16C A4EE016A */  sh    $t6, 0x16a($a3)
.L8087E170:
/* 000340 8087E170 C4EA000C */  lwc1  $f10, 0xc($a3)
/* 000344 8087E174 8CE60060 */  lw    $a2, 0x60($a3)
/* 000348 8087E178 AFA70018 */  sw    $a3, 0x18($sp)
/* 00034C 8087E17C 46105481 */  sub.s $f18, $f10, $f16
/* 000350 8087E180 24E40028 */  addiu $a0, $a3, 0x28
/* 000354 8087E184 44059000 */  mfc1  $a1, $f18
/* 000358 8087E188 0C01DE80 */  jal   Math_ApproxF

/* 00035C 8087E18C 00000000 */   nop   
/* 000360 8087E190 14400006 */  bnez  $v0, .L8087E1AC
/* 000364 8087E194 8FA70018 */   lw    $a3, 0x18($sp)
/* 000368 8087E198 00E02025 */  move  $a0, $a3
/* 00036C 8087E19C 2405204D */  li    $a1, 8269
/* 000370 8087E1A0 0C00BE5D */  jal   func_8002F974
/* 000374 8087E1A4 AFA70018 */   sw    $a3, 0x18($sp)
/* 000378 8087E1A8 8FA70018 */  lw    $a3, 0x18($sp)
.L8087E1AC:
/* 00037C 8087E1AC 84EF016A */  lh    $t7, 0x16a($a3)
/* 000380 8087E1B0 3C198088 */  lui   $t9, %hi(func_8087E1E0) # $t9, 0x8088
/* 000384 8087E1B4 24180078 */  li    $t8, 120
/* 000388 8087E1B8 15E00005 */  bnez  $t7, .L8087E1D0
/* 00038C 8087E1BC 2739E1E0 */   addiu $t9, %lo(func_8087E1E0) # addiu $t9, $t9, -0x1e20
/* 000390 8087E1C0 44802000 */  mtc1  $zero, $f4
/* 000394 8087E1C4 A4F8016A */  sh    $t8, 0x16a($a3)
/* 000398 8087E1C8 ACF90164 */  sw    $t9, 0x164($a3)
/* 00039C 8087E1CC E4E40060 */  swc1  $f4, 0x60($a3)
.L8087E1D0:
/* 0003A0 8087E1D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0003A4 8087E1D4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0003A8 8087E1D8 03E00008 */  jr    $ra
/* 0003AC 8087E1DC 00000000 */   nop   

func_8087E1E0:
/* 0003B0 8087E1E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0003B4 8087E1E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0003B8 8087E1E8 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0003BC 8087E1EC 00803825 */  move  $a3, $a0
/* 0003C0 8087E1F0 8CE5000C */  lw    $a1, 0xc($a3)
/* 0003C4 8087E1F4 3C0640AA */  lui   $a2, (0x40AAAAAB >> 16) # lui $a2, 0x40aa
/* 0003C8 8087E1F8 34C6AAAB */  ori   $a2, (0x40AAAAAB & 0xFFFF) # ori $a2, $a2, 0xaaab
/* 0003CC 8087E1FC AFA70018 */  sw    $a3, 0x18($sp)
/* 0003D0 8087E200 0C01DE80 */  jal   Math_ApproxF
/* 0003D4 8087E204 24840028 */   addiu $a0, $a0, 0x28
/* 0003D8 8087E208 8FA40018 */  lw    $a0, 0x18($sp)
/* 0003DC 8087E20C 0C00BE5D */  jal   func_8002F974
/* 0003E0 8087E210 2405200D */   li    $a1, 8205
/* 0003E4 8087E214 8FA70018 */  lw    $a3, 0x18($sp)
/* 0003E8 8087E218 3C188088 */  lui   $t8, %hi(func_8087E10C) # $t8, 0x8088
/* 0003EC 8087E21C 240F0050 */  li    $t7, 80
/* 0003F0 8087E220 84E2016A */  lh    $v0, 0x16a($a3)
/* 0003F4 8087E224 2718E10C */  addiu $t8, %lo(func_8087E10C) # addiu $t8, $t8, -0x1ef4
/* 0003F8 8087E228 10400003 */  beqz  $v0, .L8087E238
/* 0003FC 8087E22C 244EFFFF */   addiu $t6, $v0, -1
/* 000400 8087E230 A4EE016A */  sh    $t6, 0x16a($a3)
/* 000404 8087E234 84E2016A */  lh    $v0, 0x16a($a3)
.L8087E238:
/* 000408 8087E238 54400004 */  bnezl $v0, .L8087E24C
/* 00040C 8087E23C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 000410 8087E240 A4EF016A */  sh    $t7, 0x16a($a3)
/* 000414 8087E244 ACF80164 */  sw    $t8, 0x164($a3)
/* 000418 8087E248 8FBF0014 */  lw    $ra, 0x14($sp)
.L8087E24C:
/* 00041C 8087E24C 27BD0018 */  addiu $sp, $sp, 0x18
/* 000420 8087E250 03E00008 */  jr    $ra
/* 000424 8087E254 00000000 */   nop   

func_8087E258:
/* 000428 8087E258 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00042C 8087E25C AFBF0014 */  sw    $ra, 0x14($sp)
/* 000430 8087E260 AFA5001C */  sw    $a1, 0x1c($sp)
/* 000434 8087E264 848E00B6 */  lh    $t6, 0xb6($a0)
/* 000438 8087E268 24052024 */  li    $a1, 8228
/* 00043C 8087E26C 25CF0180 */  addiu $t7, $t6, 0x180
/* 000440 8087E270 0C00BE5D */  jal   func_8002F974
/* 000444 8087E274 A48F00B6 */   sh    $t7, 0xb6($a0)
/* 000448 8087E278 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00044C 8087E27C 27BD0018 */  addiu $sp, $sp, 0x18
/* 000450 8087E280 03E00008 */  jr    $ra
/* 000454 8087E284 00000000 */   nop   

func_8087E288:
/* 000458 8087E288 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00045C 8087E28C AFA40018 */  sw    $a0, 0x18($sp)
/* 000460 8087E290 8FAE0018 */  lw    $t6, 0x18($sp)
/* 000464 8087E294 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000468 8087E298 AFA5001C */  sw    $a1, 0x1c($sp)
/* 00046C 8087E29C 00A02025 */  move  $a0, $a1
/* 000470 8087E2A0 0C00B2D0 */  jal   Flags_GetSwitch
/* 000474 8087E2A4 91C50168 */   lbu   $a1, 0x168($t6)
/* 000478 8087E2A8 10400007 */  beqz  $v0, .L8087E2C8
/* 00047C 8087E2AC 8FA4001C */   lw    $a0, 0x1c($sp)
/* 000480 8087E2B0 0C020120 */  jal   func_80080480
/* 000484 8087E2B4 8FA50018 */   lw    $a1, 0x18($sp)
/* 000488 8087E2B8 8FB80018 */  lw    $t8, 0x18($sp)
/* 00048C 8087E2BC 3C0F8088 */  lui   $t7, %hi(func_8087E2D8) # $t7, 0x8088
/* 000490 8087E2C0 25EFE2D8 */  addiu $t7, %lo(func_8087E2D8) # addiu $t7, $t7, -0x1d28
/* 000494 8087E2C4 AF0F0164 */  sw    $t7, 0x164($t8)
.L8087E2C8:
/* 000498 8087E2C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00049C 8087E2CC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0004A0 8087E2D0 03E00008 */  jr    $ra
/* 0004A4 8087E2D4 00000000 */   nop   

func_8087E2D8:
/* 0004A8 8087E2D8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0004AC 8087E2DC AFB00018 */  sw    $s0, 0x18($sp)
/* 0004B0 8087E2E0 00808025 */  move  $s0, $a0
/* 0004B4 8087E2E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0004B8 8087E2E8 AFA50024 */  sw    $a1, 0x24($sp)
/* 0004BC 8087E2EC 3C0541F0 */  lui   $a1, 0x41f0
/* 0004C0 8087E2F0 24840068 */  addiu $a0, $a0, 0x68
/* 0004C4 8087E2F4 0C01DE80 */  jal   Math_ApproxF
/* 0004C8 8087E2F8 3C064000 */   lui   $a2, 0x4000
/* 0004CC 8087E2FC 26040028 */  addiu $a0, $s0, 0x28
/* 0004D0 8087E300 8E05000C */  lw    $a1, 0xc($s0)
/* 0004D4 8087E304 0C01DE80 */  jal   Math_ApproxF
/* 0004D8 8087E308 8E060068 */   lw    $a2, 0x68($s0)
/* 0004DC 8087E30C 10400008 */  beqz  $v0, .L8087E330
/* 0004E0 8087E310 02002025 */   move  $a0, $s0
/* 0004E4 8087E314 02002025 */  move  $a0, $s0
/* 0004E8 8087E318 0C00B56E */  jal   Actor_SetHeight
/* 0004EC 8087E31C 3C054248 */   lui   $a1, 0x4248
/* 0004F0 8087E320 3C0E8088 */  lui   $t6, %hi(func_8087E34C) # $t6, 0x8088
/* 0004F4 8087E324 25CEE34C */  addiu $t6, %lo(func_8087E34C) # addiu $t6, $t6, -0x1cb4
/* 0004F8 8087E328 10000003 */  b     .L8087E338
/* 0004FC 8087E32C AE0E0164 */   sw    $t6, 0x164($s0)
.L8087E330:
/* 000500 8087E330 0C00BE5D */  jal   func_8002F974
/* 000504 8087E334 24052859 */   li    $a1, 10329
.L8087E338:
/* 000508 8087E338 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00050C 8087E33C 8FB00018 */  lw    $s0, 0x18($sp)
/* 000510 8087E340 27BD0020 */  addiu $sp, $sp, 0x20
/* 000514 8087E344 03E00008 */  jr    $ra
/* 000518 8087E348 00000000 */   nop   

func_8087E34C:
.incbin "baserom/ovl_Bg_Haka_MeganeBG", 0x51C, 0xC

func_8087E358:
.incbin "baserom/ovl_Bg_Haka_MeganeBG", 0x528, 0x24

func_8087E37C:
.incbin "baserom/ovl_Bg_Haka_MeganeBG", 0x54C, 0x54

.section .data

D_8087E3D0:
.incbin "baserom/ovl_Bg_Haka_MeganeBG", 0x5A0, 0x20
D_8087E3F0:
.incbin "baserom/ovl_Bg_Haka_MeganeBG", 0x5C0, 0x30
D_8087E420:
.incbin "baserom/ovl_Bg_Haka_MeganeBG", 0x5F0, 0x4
D_8087E424:
.incbin "baserom/ovl_Bg_Haka_MeganeBG", 0x5F4, 0x4
D_8087E428:
.incbin "baserom/ovl_Bg_Haka_MeganeBG", 0x5F8, 0xB8
