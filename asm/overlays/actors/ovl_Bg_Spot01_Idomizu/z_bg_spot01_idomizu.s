.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

/* 000000 808ABAE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000004 808ABAE4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 000008 808ABAE8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00000C 808ABAEC 3C05808B */  lui   $a1, %hi(D_808ABDB0) # $a1, 0x808b
/* 000010 808ABAF0 24A5BDB0 */  addiu $a1, %lo(D_808ABDB0) # addiu $a1, $a1, -0x4250
/* 000014 808ABAF4 0C01E037 */  jal   Actor_ProcessInitChain
/* 000018 808ABAF8 AFA40018 */   sw    $a0, 0x18($sp)
/* 00001C 808ABAFC 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* 000020 808ABB00 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* 000024 808ABB04 944E0EE0 */  lhu   $t6, 0xee0($v0)
/* 000028 808ABB08 8FA40018 */  lw    $a0, 0x18($sp)
/* 00002C 808ABB0C 24010011 */  li    $at, 17
/* 000030 808ABB10 31CF0080 */  andi  $t7, $t6, 0x80
/* 000034 808ABB14 15E00008 */  bnez  $t7, .L808ABB38
/* 000038 808ABB18 3C19808B */   lui   $t9, %hi(func_808ABB84) # $t9, 0x808b
/* 00003C 808ABB1C 8C580004 */  lw    $t8, 4($v0)
/* 000040 808ABB20 24020011 */  li    $v0, 17
/* 000044 808ABB24 13000003 */  beqz  $t8, .L808ABB34
/* 000048 808ABB28 00000000 */   nop   
/* 00004C 808ABB2C 10000001 */  b     .L808ABB34
/* 000050 808ABB30 24020005 */   li    $v0, 5
.L808ABB34:
/* 000054 808ABB34 14410004 */  bne   $v0, $at, .L808ABB48
.L808ABB38:
/* 000058 808ABB38 3C01808B */   lui   $at, %hi(D_808ABE14) # $at, 0x808b
/* 00005C 808ABB3C C424BE14 */  lwc1  $f4, %lo(D_808ABE14)($at)
/* 000060 808ABB40 10000005 */  b     .L808ABB58
/* 000064 808ABB44 E4840150 */   swc1  $f4, 0x150($a0)
.L808ABB48:
/* 000068 808ABB48 3C014250 */  li    $at, 0x42500000 # 52.000000
/* 00006C 808ABB4C 44813000 */  mtc1  $at, $f6
/* 000070 808ABB50 00000000 */  nop   
/* 000074 808ABB54 E4860150 */  swc1  $f6, 0x150($a0)
.L808ABB58:
/* 000078 808ABB58 C4880150 */  lwc1  $f8, 0x150($a0)
/* 00007C 808ABB5C 2739BB84 */  addiu $t9, %lo(func_808ABB84) # addiu $t9, $t9, -0x447c
/* 000080 808ABB60 AC99014C */  sw    $t9, 0x14c($a0)
/* 000084 808ABB64 E4880028 */  swc1  $f8, 0x28($a0)
/* 000088 808ABB68 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00008C 808ABB6C 27BD0018 */  addiu $sp, $sp, 0x18
/* 000090 808ABB70 03E00008 */  jr    $ra
/* 000094 808ABB74 00000000 */   nop   

/* 000098 808ABB78 AFA40000 */  sw    $a0, ($sp)
/* 00009C 808ABB7C 03E00008 */  jr    $ra
/* 0000A0 808ABB80 AFA50004 */   sw    $a1, 4($sp)

func_808ABB84:
.incbin "baserom/ovl_Bg_Spot01_Idomizu", 0xA4, 0xB0

func_808ABC34:
.incbin "baserom/ovl_Bg_Spot01_Idomizu", 0x154, 0x24

func_808ABC58:
.incbin "baserom/ovl_Bg_Spot01_Idomizu", 0x178, 0x138

.section .data

D_808ABD90:
.incbin "baserom/ovl_Bg_Spot01_Idomizu", 0x2B0, 0x20
D_808ABDB0:
.incbin "baserom/ovl_Bg_Spot01_Idomizu", 0x2D0, 0x10
D_808ABDC0:
.incbin "baserom/ovl_Bg_Spot01_Idomizu", 0x2E0, 0x1C
D_808ABDDC:
.incbin "baserom/ovl_Bg_Spot01_Idomizu", 0x2FC, 0x1C
D_808ABDF8:
.incbin "baserom/ovl_Bg_Spot01_Idomizu", 0x318, 0x1C
D_808ABE14:
.incbin "baserom/ovl_Bg_Spot01_Idomizu", 0x334, 0x4
D_808ABE18:
.incbin "baserom/ovl_Bg_Spot01_Idomizu", 0x338, 0x68
