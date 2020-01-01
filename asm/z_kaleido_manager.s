.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800BBC90
/* B32E30 800BBC90 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B32E34 800BBC94 AFB00028 */  sw    $s0, 0x28($sp)
/* B32E38 800BBC98 00808025 */  move  $s0, $a0
/* B32E3C 800BBC9C AFBF002C */  sw    $ra, 0x2c($sp)
/* B32E40 800BBCA0 3C048014 */  lui   $a0, %hi(D_80143E30) # $a0, 0x8014
/* B32E44 800BBCA4 3C058013 */  lui   $a1, %hi(D_8012D1D8) # $a1, 0x8013
/* B32E48 800BBCA8 3C068014 */  lui   $a2, %hi(D_80143E44) # $a2, 0x8014
/* B32E4C 800BBCAC 24C63E44 */  addiu $a2, %lo(D_80143E44) # addiu $a2, $a2, 0x3e44
/* B32E50 800BBCB0 8CA5D1D8 */  lw    $a1, %lo(D_8012D1D8)($a1)
/* B32E54 800BBCB4 24843E30 */  addiu $a0, %lo(D_80143E30) # addiu $a0, $a0, 0x3e30
/* B32E58 800BBCB8 0C000B58 */  jal   NullPointerCheck
/* B32E5C 800BBCBC 24070063 */   li    $a3, 99
/* B32E60 800BBCC0 3C0E8013 */  lui   $t6, %hi(D_8012D1D8) # $t6, 0x8013
/* B32E64 800BBCC4 8DCED1D8 */  lw    $t6, %lo(D_8012D1D8)($t6)
/* B32E68 800BBCC8 8E040004 */  lw    $a0, 4($s0)
/* B32E6C 800BBCCC 8E050008 */  lw    $a1, 8($s0)
/* B32E70 800BBCD0 8E06000C */  lw    $a2, 0xc($s0)
/* B32E74 800BBCD4 8E070010 */  lw    $a3, 0x10($s0)
/* B32E78 800BBCD8 AE0E0000 */  sw    $t6, ($s0)
/* B32E7C 800BBCDC 0C03F188 */  jal   func_800FC620
/* B32E80 800BBCE0 AFAE0010 */   sw    $t6, 0x10($sp)
/* B32E84 800BBCE4 3C048014 */  lui   $a0, %hi(D_80143E5C) # $a0, 0x8014
/* B32E88 800BBCE8 0C00084C */  jal   osSyncPrintf
/* B32E8C 800BBCEC 24843E5C */   addiu $a0, %lo(D_80143E5C) # addiu $a0, $a0, 0x3e5c
/* B32E90 800BBCF0 8E05000C */  lw    $a1, 0xc($s0)
/* B32E94 800BBCF4 8E060010 */  lw    $a2, 0x10($s0)
/* B32E98 800BBCF8 8E070000 */  lw    $a3, ($s0)
/* B32E9C 800BBCFC 3C048014 */  lui   $a0, %hi(D_80143E64) # $a0, 0x8014
/* B32EA0 800BBD00 24843E64 */  addiu $a0, %lo(D_80143E64) # addiu $a0, $a0, 0x3e64
/* B32EA4 800BBD04 00E6C021 */  addu  $t8, $a3, $a2
/* B32EA8 800BBD08 0305C823 */  subu  $t9, $t8, $a1
/* B32EAC 800BBD0C 00A74023 */  subu  $t0, $a1, $a3
/* B32EB0 800BBD10 AFA80014 */  sw    $t0, 0x14($sp)
/* B32EB4 800BBD14 AFB90010 */  sw    $t9, 0x10($sp)
/* B32EB8 800BBD18 8E090018 */  lw    $t1, 0x18($s0)
/* B32EBC 800BBD1C 00A01825 */  move  $v1, $a1
/* B32EC0 800BBD20 00E01025 */  move  $v0, $a3
/* B32EC4 800BBD24 0C00084C */  jal   osSyncPrintf
/* B32EC8 800BBD28 AFA90018 */   sw    $t1, 0x18($sp)
/* B32ECC 800BBD2C 3C048014 */  lui   $a0, %hi(D_80143E94) # $a0, 0x8014
/* B32ED0 800BBD30 0C00084C */  jal   osSyncPrintf
/* B32ED4 800BBD34 24843E94 */   addiu $a0, %lo(D_80143E94) # addiu $a0, $a0, 0x3e94
/* B32ED8 800BBD38 8E0A0000 */  lw    $t2, ($s0)
/* B32EDC 800BBD3C 8E0B000C */  lw    $t3, 0xc($s0)
/* B32EE0 800BBD40 3C018013 */  lui   $at, %hi(D_8012D1DC) # $at, 0x8013
/* B32EE4 800BBD44 014B6023 */  subu  $t4, $t2, $t3
/* B32EE8 800BBD48 AE0C0014 */  sw    $t4, 0x14($s0)
/* B32EEC 800BBD4C 8FBF002C */  lw    $ra, 0x2c($sp)
/* B32EF0 800BBD50 AC30D1DC */  sw    $s0, %lo(D_8012D1DC)($at)
/* B32EF4 800BBD54 8FB00028 */  lw    $s0, 0x28($sp)
/* B32EF8 800BBD58 03E00008 */  jr    $ra
/* B32EFC 800BBD5C 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800BBD60
/* B32F00 800BBD60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B32F04 800BBD64 AFBF0014 */  sw    $ra, 0x14($sp)
/* B32F08 800BBD68 8C870000 */  lw    $a3, ($a0)
/* B32F0C 800BBD6C 00803025 */  move  $a2, $a0
/* B32F10 800BBD70 50E0000D */  beql  $a3, $zero, .L800BBDA8
/* B32F14 800BBD74 8FBF0014 */   lw    $ra, 0x14($sp)
/* B32F18 800BBD78 AC800014 */  sw    $zero, 0x14($a0)
/* B32F1C 800BBD7C 8CCF000C */  lw    $t7, 0xc($a2)
/* B32F20 800BBD80 8CCE0010 */  lw    $t6, 0x10($a2)
/* B32F24 800BBD84 AFA60018 */  sw    $a2, 0x18($sp)
/* B32F28 800BBD88 00E02025 */  move  $a0, $a3
/* B32F2C 800BBD8C 0C001114 */  jal   bzero
/* B32F30 800BBD90 01CF2823 */   subu  $a1, $t6, $t7
/* B32F34 800BBD94 8FA60018 */  lw    $a2, 0x18($sp)
/* B32F38 800BBD98 3C018013 */  lui   $at, %hi(D_8012D1DC) # $at, 0x8013
/* B32F3C 800BBD9C ACC00000 */  sw    $zero, ($a2)
/* B32F40 800BBDA0 AC20D1DC */  sw    $zero, %lo(D_8012D1DC)($at)
/* B32F44 800BBDA4 8FBF0014 */  lw    $ra, 0x14($sp)
.L800BBDA8:
/* B32F48 800BBDA8 27BD0018 */  addiu $sp, $sp, 0x18
/* B32F4C 800BBDAC 03E00008 */  jr    $ra
/* B32F50 800BBDB0 00000000 */   nop   

glabel func_800BBDB4
/* B32F54 800BBDB4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B32F58 800BBDB8 AFA40020 */  sw    $a0, 0x20($sp)
/* B32F5C 800BBDBC AFB00018 */  sw    $s0, 0x18($sp)
/* B32F60 800BBDC0 3C048013 */  lui   $a0, %hi(D_8012D1D8) # $a0, 0x8013
/* B32F64 800BBDC4 3C028013 */  lui   $v0, %hi(D_8012D1A0) # $v0, 0x8013
/* B32F68 800BBDC8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B32F6C 800BBDCC 00008025 */  move  $s0, $zero
/* B32F70 800BBDD0 2442D1A0 */  addiu $v0, %lo(D_8012D1A0) # addiu $v0, $v0, -0x2e60
/* B32F74 800BBDD4 2484D1D8 */  addiu $a0, %lo(D_8012D1D8) # addiu $a0, $a0, -0x2e28
/* B32F78 800BBDD8 8C4E0010 */  lw    $t6, 0x10($v0)
.L800BBDDC:
/* B32F7C 800BBDDC 8C4F000C */  lw    $t7, 0xc($v0)
/* B32F80 800BBDE0 2442001C */  addiu $v0, $v0, 0x1c
/* B32F84 800BBDE4 01CF1823 */  subu  $v1, $t6, $t7
/* B32F88 800BBDE8 0203082A */  slt   $at, $s0, $v1
/* B32F8C 800BBDEC 10200002 */  beqz  $at, .L800BBDF8
/* B32F90 800BBDF0 00000000 */   nop   
/* B32F94 800BBDF4 00608025 */  move  $s0, $v1
.L800BBDF8:
/* B32F98 800BBDF8 5444FFF8 */  bnel  $v0, $a0, .L800BBDDC
/* B32F9C 800BBDFC 8C4E0010 */   lw    $t6, 0x10($v0)
/* B32FA0 800BBE00 3C048014 */  lui   $a0, %hi(D_80143E98) # $a0, 0x8014
/* B32FA4 800BBE04 0C00084C */  jal   osSyncPrintf
/* B32FA8 800BBE08 24843E98 */   addiu $a0, %lo(D_80143E98) # addiu $a0, $a0, 0x3e98
/* B32FAC 800BBE0C 3C048014 */  lui   $a0, %hi(D_80143EA0) # $a0, 0x8014
/* B32FB0 800BBE10 24843EA0 */  addiu $a0, %lo(D_80143EA0) # addiu $a0, $a0, 0x3ea0
/* B32FB4 800BBE14 0C00084C */  jal   osSyncPrintf
/* B32FB8 800BBE18 02002825 */   move  $a1, $s0
/* B32FBC 800BBE1C 3C048014 */  lui   $a0, %hi(D_80143ED4) # $a0, 0x8014
/* B32FC0 800BBE20 0C00084C */  jal   osSyncPrintf
/* B32FC4 800BBE24 24843ED4 */   addiu $a0, %lo(D_80143ED4) # addiu $a0, $a0, 0x3ed4
/* B32FC8 800BBE28 3C068014 */  lui   $a2, %hi(D_80143ED8) # $a2, 0x8014
/* B32FCC 800BBE2C 24C63ED8 */  addiu $a2, %lo(D_80143ED8) # addiu $a2, $a2, 0x3ed8
/* B32FD0 800BBE30 8FA40020 */  lw    $a0, 0x20($sp)
/* B32FD4 800BBE34 02002825 */  move  $a1, $s0
/* B32FD8 800BBE38 0C031521 */  jal   Game_Alloc
/* B32FDC 800BBE3C 24070096 */   li    $a3, 150
/* B32FE0 800BBE40 3C038013 */  lui   $v1, %hi(D_8012D1D8) # $v1, 0x8013
/* B32FE4 800BBE44 2463D1D8 */  addiu $v1, %lo(D_8012D1D8) # addiu $v1, $v1, -0x2e28
/* B32FE8 800BBE48 3C048014 */  lui   $a0, %hi(D_80143EF0) # $a0, 0x8014
/* B32FEC 800BBE4C 3C068014 */  lui   $a2, %hi(D_80143F04) # $a2, 0x8014
/* B32FF0 800BBE50 AC620000 */  sw    $v0, ($v1)
/* B32FF4 800BBE54 24C63F04 */  addiu $a2, %lo(D_80143F04) # addiu $a2, $a2, 0x3f04
/* B32FF8 800BBE58 24843EF0 */  addiu $a0, %lo(D_80143EF0) # addiu $a0, $a0, 0x3ef0
/* B32FFC 800BBE5C 00402825 */  move  $a1, $v0
/* B33000 800BBE60 0C000B58 */  jal   NullPointerCheck
/* B33004 800BBE64 24070097 */   li    $a3, 151
/* B33008 800BBE68 3C048014 */  lui   $a0, %hi(D_80143F1C) # $a0, 0x8014
/* B3300C 800BBE6C 0C00084C */  jal   osSyncPrintf
/* B33010 800BBE70 24843F1C */   addiu $a0, %lo(D_80143F1C) # addiu $a0, $a0, 0x3f1c
/* B33014 800BBE74 3C058013 */  lui   $a1, %hi(D_8012D1D8) # $a1, 0x8013
/* B33018 800BBE78 8CA5D1D8 */  lw    $a1, %lo(D_8012D1D8)($a1)
/* B3301C 800BBE7C 3C048014 */  lui   $a0, %hi(D_80143F24) # $a0, 0x8014
/* B33020 800BBE80 24843F24 */  addiu $a0, %lo(D_80143F24) # addiu $a0, $a0, 0x3f24
/* B33024 800BBE84 0C00084C */  jal   osSyncPrintf
/* B33028 800BBE88 00B03021 */   addu  $a2, $a1, $s0
/* B3302C 800BBE8C 3C048014 */  lui   $a0, %hi(D_80143F40) # $a0, 0x8014
/* B33030 800BBE90 0C00084C */  jal   osSyncPrintf
/* B33034 800BBE94 24843F40 */   addiu $a0, %lo(D_80143F40) # addiu $a0, $a0, 0x3f40
/* B33038 800BBE98 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3303C 800BBE9C 3C018013 */  lui   $at, %hi(D_8012D1DC) # $at, 0x8013
/* B33040 800BBEA0 8FB00018 */  lw    $s0, 0x18($sp)
/* B33044 800BBEA4 AC20D1DC */  sw    $zero, %lo(D_8012D1DC)($at)
/* B33048 800BBEA8 03E00008 */  jr    $ra
/* B3304C 800BBEAC 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_800BBEB0
/* B33050 800BBEB0 3C048013 */  lui   $a0, %hi(D_8012D1DC) # $a0, 0x8013
/* B33054 800BBEB4 8C84D1DC */  lw    $a0, %lo(D_8012D1DC)($a0)
/* B33058 800BBEB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3305C 800BBEBC AFBF0014 */  sw    $ra, 0x14($sp)
/* B33060 800BBEC0 50800006 */  beql  $a0, $zero, .L800BBEDC
/* B33064 800BBEC4 8FBF0014 */   lw    $ra, 0x14($sp)
/* B33068 800BBEC8 0C02EF58 */  jal   func_800BBD60
/* B3306C 800BBECC 00000000 */   nop   
/* B33070 800BBED0 3C018013 */  lui   $at, %hi(D_8012D1DC) # $at, 0x8013
/* B33074 800BBED4 AC20D1DC */  sw    $zero, %lo(D_8012D1DC)($at)
/* B33078 800BBED8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800BBEDC:
/* B3307C 800BBEDC 3C018013 */  lui   $at, %hi(D_8012D1D8) # $at, 0x8013
/* B33080 800BBEE0 AC20D1D8 */  sw    $zero, %lo(D_8012D1D8)($at)
/* B33084 800BBEE4 03E00008 */  jr    $ra
/* B33088 800BBEE8 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_800BBEEC
/* B3308C 800BBEEC 3C088013 */  lui   $t0, %hi(D_8012D1DC) # $t0, 0x8013
/* B33090 800BBEF0 8D08D1DC */  lw    $t0, %lo(D_8012D1DC)($t0)
/* B33094 800BBEF4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B33098 800BBEF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3309C 800BBEFC 1500001E */  bnez  $t0, .L800BBF78
/* B330A0 800BBF00 00802825 */   move  $a1, $a0
/* B330A4 800BBF04 3C068013 */  lui   $a2, %hi(D_8012D1AC) # $a2, 0x8013
/* B330A8 800BBF08 3C088013 */  lui   $t0, %hi(D_8012D1A0) # $t0, 0x8013
/* B330AC 800BBF0C 3C048013 */  lui   $a0, %hi(D_8012D1B0) # $a0, 0x8013
/* B330B0 800BBF10 8CC3D1AC */  lw    $v1, %lo(D_8012D1AC)($a2)
/* B330B4 800BBF14 2508D1A0 */  addiu $t0, %lo(D_8012D1A0) # addiu $t0, $t0, -0x2e60
/* B330B8 800BBF18 8C84D1B0 */  lw    $a0, %lo(D_8012D1B0)($a0)
/* B330BC 800BBF1C 00001025 */  move  $v0, $zero
/* B330C0 800BBF20 24070002 */  li    $a3, 2
/* B330C4 800BBF24 00A3082B */  sltu  $at, $a1, $v1
.L800BBF28:
/* B330C8 800BBF28 1420000C */  bnez  $at, .L800BBF5C
/* B330CC 800BBF2C 24420001 */   addiu $v0, $v0, 1
/* B330D0 800BBF30 0085082B */  sltu  $at, $a0, $a1
/* B330D4 800BBF34 14200009 */  bnez  $at, .L800BBF5C
/* B330D8 800BBF38 00000000 */   nop   
/* B330DC 800BBF3C 3C048013 */  lui   $a0, %hi(D_8012D1A0) # $a0, 0x8013
/* B330E0 800BBF40 2484D1A0 */  addiu $a0, %lo(D_8012D1A0) # addiu $a0, $a0, -0x2e60
/* B330E4 800BBF44 AFA50020 */  sw    $a1, 0x20($sp)
/* B330E8 800BBF48 0C02EF24 */  jal   func_800BBC90
/* B330EC 800BBF4C AFA8001C */   sw    $t0, 0x1c($sp)
/* B330F0 800BBF50 8FA50020 */  lw    $a1, 0x20($sp)
/* B330F4 800BBF54 10000008 */  b     .L800BBF78
/* B330F8 800BBF58 8FA8001C */   lw    $t0, 0x1c($sp)
.L800BBF5C:
/* B330FC 800BBF5C 5447FFF2 */  bnel  $v0, $a3, .L800BBF28
/* B33100 800BBF60 00A3082B */   sltu  $at, $a1, $v1
/* B33104 800BBF64 3C048014 */  lui   $a0, %hi(D_80143F44) # $a0, 0x8014
/* B33108 800BBF68 0C00084C */  jal   osSyncPrintf
/* B3310C 800BBF6C 24843F44 */   addiu $a0, %lo(D_80143F44) # addiu $a0, $a0, 0x3f44
/* B33110 800BBF70 1000000F */  b     .L800BBFB0
/* B33114 800BBF74 00001025 */   move  $v0, $zero
.L800BBF78:
/* B33118 800BBF78 11000009 */  beqz  $t0, .L800BBFA0
/* B3311C 800BBF7C 00000000 */   nop   
/* B33120 800BBF80 8D0E000C */  lw    $t6, 0xc($t0)
/* B33124 800BBF84 00AE082B */  sltu  $at, $a1, $t6
/* B33128 800BBF88 14200005 */  bnez  $at, .L800BBFA0
/* B3312C 800BBF8C 00000000 */   nop   
/* B33130 800BBF90 8D0F0010 */  lw    $t7, 0x10($t0)
/* B33134 800BBF94 00AF082B */  sltu  $at, $a1, $t7
/* B33138 800BBF98 54200004 */  bnezl $at, .L800BBFAC
/* B3313C 800BBF9C 8D180014 */   lw    $t8, 0x14($t0)
.L800BBFA0:
/* B33140 800BBFA0 10000003 */  b     .L800BBFB0
/* B33144 800BBFA4 00001025 */   move  $v0, $zero
/* B33148 800BBFA8 8D180014 */  lw    $t8, 0x14($t0)
.L800BBFAC:
/* B3314C 800BBFAC 00B81021 */  addu  $v0, $a1, $t8
.L800BBFB0:
/* B33150 800BBFB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B33154 800BBFB4 27BD0020 */  addiu $sp, $sp, 0x20
/* B33158 800BBFB8 03E00008 */  jr    $ra
/* B3315C 800BBFBC 00000000 */   nop   
