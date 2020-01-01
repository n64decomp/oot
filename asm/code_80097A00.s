.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80097A00
/* B0EBA0 80097A00 AFA40000 */  sw    $a0, ($sp)
/* B0EBA4 80097A04 00042400 */  sll   $a0, $a0, 0x10
/* B0EBA8 80097A08 00042403 */  sra   $a0, $a0, 0x10
/* B0EBAC 80097A0C 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B0EBB0 80097A10 00047840 */  sll   $t7, $a0, 1
/* B0EBB4 80097A14 3C188012 */  lui   $t8, %hi(D_801271A8)
/* B0EBB8 80097A18 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* B0EBBC 80097A1C 030FC021 */  addu  $t8, $t8, $t7
/* B0EBC0 80097A20 971871A8 */  lhu   $t8, %lo(D_801271A8)($t8)
/* B0EBC4 80097A24 944E0070 */  lhu   $t6, 0x70($v0)
/* B0EBC8 80097A28 3C098012 */  lui   $t1, %hi(D_801271F0)
/* B0EBCC 80097A2C 01244821 */  addu  $t1, $t1, $a0
/* B0EBD0 80097A30 01D84024 */  and   $t0, $t6, $t8
/* B0EBD4 80097A34 A4480070 */  sh    $t0, 0x70($v0)
/* B0EBD8 80097A38 912971F0 */  lbu   $t1, %lo(D_801271F0)($t1)
/* B0EBDC 80097A3C AFA50004 */  sw    $a1, 4($sp)
/* B0EBE0 80097A40 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B0EBE4 80097A44 01255004 */  sllv  $t2, $a1, $t1
/* B0EBE8 80097A48 010A5825 */  or    $t3, $t0, $t2
/* B0EBEC 80097A4C 03E00008 */  jr    $ra
/* B0EBF0 80097A50 A44B0070 */   sh    $t3, 0x70($v0)

glabel func_80097A54
/* B0EBF4 80097A54 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B0EBF8 80097A58 AFA50034 */  sw    $a1, 0x34($sp)
/* B0EBFC 80097A5C 00052C00 */  sll   $a1, $a1, 0x10
/* B0EC00 80097A60 00052C03 */  sra   $a1, $a1, 0x10
/* B0EC04 80097A64 3C188012 */  lui   $t8, %hi(D_801271A0) # $t8, 0x8012
/* B0EC08 80097A68 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0EC0C 80097A6C AFA40030 */  sw    $a0, 0x30($sp)
/* B0EC10 80097A70 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B0EC14 80097A74 271871A0 */  addiu $t8, %lo(D_801271A0) # addiu $t8, $t8, 0x71a0
/* B0EC18 80097A78 00054040 */  sll   $t0, $a1, 1
/* B0EC1C 80097A7C 8C8F1C44 */  lw    $t7, 0x1c44($a0)
/* B0EC20 80097A80 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B0EC24 80097A84 01184821 */  addu  $t1, $t0, $t8
/* B0EC28 80097A88 95390000 */  lhu   $t9, ($t1)
/* B0EC2C 80097A8C 946A0070 */  lhu   $t2, 0x70($v1)
/* B0EC30 80097A90 3C048014 */  lui   $a0, %hi(D_8013F310) # $a0, 0x8014
/* B0EC34 80097A94 2484F310 */  addiu $a0, %lo(D_8013F310) # addiu $a0, $a0, -0xcf0
/* B0EC38 80097A98 032A3824 */  and   $a3, $t9, $t2
/* B0EC3C 80097A9C 30E6FFFF */  andi  $a2, $a3, 0xffff
/* B0EC40 80097AA0 AFA60018 */  sw    $a2, 0x18($sp)
/* B0EC44 80097AA4 A7A60026 */  sh    $a2, 0x26($sp)
/* B0EC48 80097AA8 AFA9001C */  sw    $t1, 0x1c($sp)
/* B0EC4C 80097AAC AFA80020 */  sw    $t0, 0x20($sp)
/* B0EC50 80097AB0 A7A50036 */  sh    $a1, 0x36($sp)
/* B0EC54 80097AB4 0C00084C */  jal   osSyncPrintf
/* B0EC58 80097AB8 AFAF002C */   sw    $t7, 0x2c($sp)
/* B0EC5C 80097ABC 97A70026 */  lhu   $a3, 0x26($sp)
/* B0EC60 80097AC0 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B0EC64 80097AC4 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B0EC68 80097AC8 87A50036 */  lh    $a1, 0x36($sp)
/* B0EC6C 80097ACC 8FA60018 */  lw    $a2, 0x18($sp)
/* B0EC70 80097AD0 8FA80020 */  lw    $t0, 0x20($sp)
/* B0EC74 80097AD4 10E0002C */  beqz  $a3, .L80097B88
/* B0EC78 80097AD8 8FA9001C */   lw    $t1, 0x1c($sp)
/* B0EC7C 80097ADC 3C028012 */  lui   $v0, %hi(D_801271F0)
/* B0EC80 80097AE0 00451021 */  addu  $v0, $v0, $a1
/* B0EC84 80097AE4 3C0B8012 */  lui   $t3, %hi(D_801271A8) # $t3, 0x8012
/* B0EC88 80097AE8 904271F0 */  lbu   $v0, %lo(D_801271F0)($v0)
/* B0EC8C 80097AEC 256B71A8 */  addiu $t3, %lo(D_801271A8) # addiu $t3, $t3, 0x71a8
/* B0EC90 80097AF0 010B2021 */  addu  $a0, $t0, $t3
/* B0EC94 80097AF4 948D0000 */  lhu   $t5, ($a0)
/* B0EC98 80097AF8 946C0070 */  lhu   $t4, 0x70($v1)
/* B0EC9C 80097AFC 00463806 */  srlv  $a3, $a2, $v0
/* B0ECA0 80097B00 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B0ECA4 80097B04 0007C080 */  sll   $t8, $a3, 2
/* B0ECA8 80097B08 3C198012 */  lui   $t9, %hi(D_8012711C)
/* B0ECAC 80097B0C 018D7024 */  and   $t6, $t4, $t5
/* B0ECB0 80097B10 A46E0070 */  sh    $t6, 0x70($v1)
/* B0ECB4 80097B14 0338C821 */  addu  $t9, $t9, $t8
/* B0ECB8 80097B18 8F39711C */  lw    $t9, %lo(D_8012711C)($t9)
/* B0ECBC 80097B1C 946F009C */  lhu   $t7, 0x9c($v1)
/* B0ECC0 80097B20 3C0C8012 */  lui   $t4, %hi(D_801271A4) # $t4, 0x8012
/* B0ECC4 80097B24 00595004 */  sllv  $t2, $t9, $v0
/* B0ECC8 80097B28 258C71A4 */  addiu $t4, %lo(D_801271A4) # addiu $t4, $t4, 0x71a4
/* B0ECCC 80097B2C 01EA5826 */  xor   $t3, $t7, $t2
/* B0ECD0 80097B30 152C0004 */  bne   $t1, $t4, .L80097B44
/* B0ECD4 80097B34 A46B009C */   sh    $t3, 0x9c($v1)
/* B0ECD8 80097B38 01C06825 */  move  $t5, $t6
/* B0ECDC 80097B3C 35AE0100 */  ori   $t6, $t5, 0x100
/* B0ECE0 80097B40 A46E0070 */  sh    $t6, 0x70($v1)
.L80097B44:
/* B0ECE4 80097B44 3C188012 */  lui   $t8, %hi(D_801271A8) # $t8, 0x8012
/* B0ECE8 80097B48 271871A8 */  addiu $t8, %lo(D_801271A8) # addiu $t8, $t8, 0x71a8
/* B0ECEC 80097B4C 14980004 */  bne   $a0, $t8, .L80097B60
/* B0ECF0 80097B50 241900FF */   li    $t9, 255
/* B0ECF4 80097B54 240F0001 */  li    $t7, 1
/* B0ECF8 80097B58 A0790068 */  sb    $t9, 0x68($v1)
/* B0ECFC 80097B5C A46F0F32 */  sh    $t7, 0xf32($v1)
.L80097B60:
/* B0ED00 80097B60 8FA40030 */  lw    $a0, 0x30($sp)
/* B0ED04 80097B64 8FA5002C */  lw    $a1, 0x2c($sp)
/* B0ED08 80097B68 0C023B2B */  jal   func_8008ECAC
/* B0ED0C 80097B6C A7A70026 */   sh    $a3, 0x26($sp)
/* B0ED10 80097B70 8FAB0030 */  lw    $t3, 0x30($sp)
/* B0ED14 80097B74 3C010001 */  lui   $at, 1
/* B0ED18 80097B78 97A70026 */  lhu   $a3, 0x26($sp)
/* B0ED1C 80097B7C 240A000A */  li    $t2, 10
/* B0ED20 80097B80 002B0821 */  addu  $at, $at, $t3
/* B0ED24 80097B84 A42A0998 */  sh    $t2, 0x998($at)
.L80097B88:
/* B0ED28 80097B88 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0ED2C 80097B8C 27BD0030 */  addiu $sp, $sp, 0x30
/* B0ED30 80097B90 30E200FF */  andi  $v0, $a3, 0xff
/* B0ED34 80097B94 03E00008 */  jr    $ra
/* B0ED38 80097B98 00000000 */   nop   

glabel func_80097B9C
/* B0ED3C 80097B9C AFA40000 */  sw    $a0, ($sp)
/* B0ED40 80097BA0 00042400 */  sll   $a0, $a0, 0x10
/* B0ED44 80097BA4 00042403 */  sra   $a0, $a0, 0x10
/* B0ED48 80097BA8 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B0ED4C 80097BAC 00047880 */  sll   $t7, $a0, 2
/* B0ED50 80097BB0 3C188012 */  lui   $t8, %hi(D_801271D0)
/* B0ED54 80097BB4 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* B0ED58 80097BB8 030FC021 */  addu  $t8, $t8, $t7
/* B0ED5C 80097BBC 8F1871D0 */  lw    $t8, %lo(D_801271D0)($t8)
/* B0ED60 80097BC0 8C4E00A0 */  lw    $t6, 0xa0($v0)
/* B0ED64 80097BC4 3C098012 */  lui   $t1, %hi(D_801271F4)
/* B0ED68 80097BC8 01244821 */  addu  $t1, $t1, $a0
/* B0ED6C 80097BCC 01D8C824 */  and   $t9, $t6, $t8
/* B0ED70 80097BD0 AC5900A0 */  sw    $t9, 0xa0($v0)
/* B0ED74 80097BD4 912971F4 */  lbu   $t1, %lo(D_801271F4)($t1)
/* B0ED78 80097BD8 AFA50004 */  sw    $a1, 4($sp)
/* B0ED7C 80097BDC 00052C00 */  sll   $a1, $a1, 0x10
/* B0ED80 80097BE0 00052C03 */  sra   $a1, $a1, 0x10
/* B0ED84 80097BE4 01255004 */  sllv  $t2, $a1, $t1
/* B0ED88 80097BE8 032A5825 */  or    $t3, $t9, $t2
/* B0ED8C 80097BEC 03E00008 */  jr    $ra
/* B0ED90 80097BF0 AC4B00A0 */   sw    $t3, 0xa0($v0)
