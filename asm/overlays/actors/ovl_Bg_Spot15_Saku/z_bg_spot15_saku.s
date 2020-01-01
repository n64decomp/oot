.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

/* 000000 808B4850 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 000004 808B4854 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000008 808B4858 AFB00018 */  sw    $s0, 0x18($sp)
/* 00000C 808B485C AFA50034 */  sw    $a1, 0x34($sp)
/* 000010 808B4860 00808025 */  move  $s0, $a0
/* 000014 808B4864 AFA00020 */  sw    $zero, 0x20($sp)
/* 000018 808B4868 0C010D20 */  jal   DynaPolyInfo_SetActorMove
/* 00001C 808B486C 00002825 */   move  $a1, $zero
/* 000020 808B4870 3C040600 */  lui   $a0, %hi(D_060004D0) # $a0, 0x600
/* 000024 808B4874 248404D0 */  addiu $a0, %lo(D_060004D0) # addiu $a0, $a0, 0x4d0
/* 000028 808B4878 0C010620 */  jal   DynaPolyInfo_Alloc
/* 00002C 808B487C 27A50020 */   addiu $a1, $sp, 0x20
/* 000030 808B4880 8FA40034 */  lw    $a0, 0x34($sp)
/* 000034 808B4884 02003025 */  move  $a2, $s0
/* 000038 808B4888 8FA70020 */  lw    $a3, 0x20($sp)
/* 00003C 808B488C 0C00FA9D */  jal   DynaPolyInfo_RegisterActor
/* 000040 808B4890 24850810 */   addiu $a1, $a0, 0x810
/* 000044 808B4894 3C01808B */  lui   $at, %hi(D_808B4B98) # $at, 0x808b
/* 000048 808B4898 C4204B98 */  lwc1  $f0, %lo(D_808B4B98)($at)
/* 00004C 808B489C C6040024 */  lwc1  $f4, 0x24($s0)
/* 000050 808B48A0 C6060028 */  lwc1  $f6, 0x28($s0)
/* 000054 808B48A4 C608002C */  lwc1  $f8, 0x2c($s0)
/* 000058 808B48A8 AE02014C */  sw    $v0, 0x14c($s0)
/* 00005C 808B48AC 3C0E8016 */  lui   $t6, %hi(gSaveContext+0xf06) # $t6, 0x8016
/* 000060 808B48B0 E6000050 */  swc1  $f0, 0x50($s0)
/* 000064 808B48B4 E6000054 */  swc1  $f0, 0x54($s0)
/* 000068 808B48B8 E6000058 */  swc1  $f0, 0x58($s0)
/* 00006C 808B48BC E6040170 */  swc1  $f4, 0x170($s0)
/* 000070 808B48C0 E6060174 */  swc1  $f6, 0x174($s0)
/* 000074 808B48C4 E6080178 */  swc1  $f8, 0x178($s0)
/* 000078 808B48C8 95CEF566 */  lhu   $t6, %lo(gSaveContext+0xf06)($t6)
/* 00007C 808B48CC 3C18808B */  lui   $t8, %hi(func_808B4930) # $t8, 0x808b
/* 000080 808B48D0 3C01808B */  lui   $at, %hi(D_808B4B9C) # $at, 0x808b
/* 000084 808B48D4 31CF0002 */  andi  $t7, $t6, 2
/* 000088 808B48D8 11E00003 */  beqz  $t7, .L808B48E8
/* 00008C 808B48DC 27184930 */   addiu $t8, %lo(func_808B4930) # addiu $t8, $t8, 0x4930
/* 000090 808B48E0 C42A4B9C */  lwc1  $f10, %lo(D_808B4B9C)($at)
/* 000094 808B48E4 E60A002C */  swc1  $f10, 0x2c($s0)
.L808B48E8:
/* 000098 808B48E8 AE180164 */  sw    $t8, 0x164($s0)
/* 00009C 808B48EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0000A0 808B48F0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0000A4 808B48F4 27BD0030 */  addiu $sp, $sp, 0x30
/* 0000A8 808B48F8 03E00008 */  jr    $ra
/* 0000AC 808B48FC 00000000 */   nop   

/* 0000B0 808B4900 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0000B4 808B4904 AFA40018 */  sw    $a0, 0x18($sp)
/* 0000B8 808B4908 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0000BC 808B490C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0000C0 808B4910 00A02025 */  move  $a0, $a1
/* 0000C4 808B4914 24A50810 */  addiu $a1, $a1, 0x810
/* 0000C8 808B4918 0C00FB56 */  jal   DynaPolyInfo_Free
/* 0000CC 808B491C 8DC6014C */   lw    $a2, 0x14c($t6)
/* 0000D0 808B4920 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0000D4 808B4924 27BD0018 */  addiu $sp, $sp, 0x18
/* 0000D8 808B4928 03E00008 */  jr    $ra
/* 0000DC 808B492C 00000000 */   nop   

func_808B4930:
/* 0000E0 808B4930 AFA50004 */  sw    $a1, 4($sp)
/* 0000E4 808B4934 8C8E0168 */  lw    $t6, 0x168($a0)
/* 0000E8 808B4938 8C8F016C */  lw    $t7, 0x16c($a0)
/* 0000EC 808B493C 3C188016 */  lui   $t8, %hi(gSaveContext+0xf06) # $t8, 0x8016
/* 0000F0 808B4940 15C00003 */  bnez  $t6, .L808B4950
/* 0000F4 808B4944 00000000 */   nop   
/* 0000F8 808B4948 11E00009 */  beqz  $t7, .L808B4970
/* 0000FC 808B494C 00000000 */   nop   
.L808B4950:
/* 000100 808B4950 9718F566 */  lhu   $t8, %lo(gSaveContext+0xf06)($t8)
/* 000104 808B4954 3C09808B */  lui   $t1, %hi(func_808B4978) # $t1, 0x808b
/* 000108 808B4958 24080002 */  li    $t0, 2
/* 00010C 808B495C 33190002 */  andi  $t9, $t8, 2
/* 000110 808B4960 17200003 */  bnez  $t9, .L808B4970
/* 000114 808B4964 25294978 */   addiu $t1, %lo(func_808B4978) # addiu $t1, $t1, 0x4978
/* 000118 808B4968 A488017C */  sh    $t0, 0x17c($a0)
/* 00011C 808B496C AC890164 */  sw    $t1, 0x164($a0)
.L808B4970:
/* 000120 808B4970 03E00008 */  jr    $ra
/* 000124 808B4974 00000000 */   nop   

func_808B4978:
/* 000128 808B4978 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00012C 808B497C AFBF0014 */  sw    $ra, 0x14($sp)
/* 000130 808B4980 AFA5001C */  sw    $a1, 0x1c($sp)
/* 000134 808B4984 848E017C */  lh    $t6, 0x17c($a0)
/* 000138 808B4988 24052067 */  li    $a1, 8295
/* 00013C 808B498C 55C0001A */  bnezl $t6, .L808B49F8
/* 000140 808B4990 8FBF0014 */   lw    $ra, 0x14($sp)
/* 000144 808B4994 0C00BE0A */  jal   Audio_PlayActorSound2
/* 000148 808B4998 AFA40018 */   sw    $a0, 0x18($sp)
/* 00014C 808B499C 8FA40018 */  lw    $a0, 0x18($sp)
/* 000150 808B49A0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 000154 808B49A4 44813000 */  mtc1  $at, $f6
/* 000158 808B49A8 C484002C */  lwc1  $f4, 0x2c($a0)
/* 00015C 808B49AC 3C01808B */  lui   $at, %hi(D_808B4BA0) # $at, 0x808b
/* 000160 808B49B0 2405280E */  li    $a1, 10254
/* 000164 808B49B4 46062201 */  sub.s $f8, $f4, $f6
/* 000168 808B49B8 E488002C */  swc1  $f8, 0x2c($a0)
/* 00016C 808B49BC C4304BA0 */  lwc1  $f16, %lo(D_808B4BA0)($at)
/* 000170 808B49C0 C48A002C */  lwc1  $f10, 0x2c($a0)
/* 000174 808B49C4 4610503C */  c.lt.s $f10, $f16
/* 000178 808B49C8 00000000 */  nop   
/* 00017C 808B49CC 4502000A */  .byte 0x45,0x02,0x00,0x0A /* Because of invalid n64 opcode bc1fl */
/* 000180 808B49D0 8FBF0014 */ .word 0x8FBF0014
/* 000184 808B49D4 0C00BE0A */  jal   Audio_PlayActorSound2
/* 000188 808B49D8 AFA40018 */   sw    $a0, 0x18($sp)
/* 00018C 808B49DC 8FA40018 */  lw    $a0, 0x18($sp)
/* 000190 808B49E0 3C18808B */  lui   $t8, %hi(func_808B4A04) # $t8, 0x808b
/* 000194 808B49E4 240F001E */  li    $t7, 30
/* 000198 808B49E8 27184A04 */  addiu $t8, %lo(func_808B4A04) # addiu $t8, $t8, 0x4a04
/* 00019C 808B49EC A48F017C */  sh    $t7, 0x17c($a0)
/* 0001A0 808B49F0 AC980164 */  sw    $t8, 0x164($a0)
/* 0001A4 808B49F4 8FBF0014 */  lw    $ra, 0x14($sp)
.L808B49F8:
/* 0001A8 808B49F8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0001AC 808B49FC 03E00008 */  jr    $ra
/* 0001B0 808B4A00 00000000 */   nop   

func_808B4A04:
.incbin "baserom/ovl_Bg_Spot15_Saku", 0x1B4, 0x30

func_808B4A34:
.incbin "baserom/ovl_Bg_Spot15_Saku", 0x1E4, 0x34

func_808B4A68:
.incbin "baserom/ovl_Bg_Spot15_Saku", 0x218, 0xC8

.section .data

D_808B4B30:
.incbin "baserom/ovl_Bg_Spot15_Saku", 0x2E0, 0x20
D_808B4B50:
.incbin "baserom/ovl_Bg_Spot15_Saku", 0x300, 0x18
D_808B4B68:
.incbin "baserom/ovl_Bg_Spot15_Saku", 0x318, 0x18
D_808B4B80:
.incbin "baserom/ovl_Bg_Spot15_Saku", 0x330, 0x18
D_808B4B98:
.incbin "baserom/ovl_Bg_Spot15_Saku", 0x348, 0x4
D_808B4B9C:
.incbin "baserom/ovl_Bg_Spot15_Saku", 0x34C, 0x4
D_808B4BA0:
.incbin "baserom/ovl_Bg_Spot15_Saku", 0x350, 0x90
