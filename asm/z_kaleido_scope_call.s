.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800BBFC0
/* B33160 800BBFC0 3C028013 */  lui   $v0, %hi(D_8012D1DC) # $v0, 0x8013
/* B33164 800BBFC4 8C42D1DC */  lw    $v0, %lo(D_8012D1DC)($v0)
/* B33168 800BBFC8 3C0E8013 */  lui   $t6, %hi(D_8012D1BC) # $t6, 0x8013
/* B3316C 800BBFCC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B33170 800BBFD0 25CED1BC */  addiu $t6, %lo(D_8012D1BC) # addiu $t6, $t6, -0x2e44
/* B33174 800BBFD4 11C2001A */  beq   $t6, $v0, .L800BC040
/* B33178 800BBFD8 AFBF0014 */   sw    $ra, 0x14($sp)
/* B3317C 800BBFDC 1040000C */  beqz  $v0, .L800BC010
/* B33180 800BBFE0 3C048014 */   lui   $a0, %hi(D_80143F50) # $a0, 0x8014
/* B33184 800BBFE4 0C00084C */  jal   osSyncPrintf
/* B33188 800BBFE8 24843F50 */   addiu $a0, %lo(D_80143F50) # addiu $a0, $a0, 0x3f50
/* B3318C 800BBFEC 3C048014 */  lui   $a0, %hi(D_80143F58) # $a0, 0x8014
/* B33190 800BBFF0 0C00084C */  jal   osSyncPrintf
/* B33194 800BBFF4 24843F58 */   addiu $a0, %lo(D_80143F58) # addiu $a0, $a0, 0x3f58
/* B33198 800BBFF8 3C048014 */  lui   $a0, %hi(D_80143F70) # $a0, 0x8014
/* B3319C 800BBFFC 0C00084C */  jal   osSyncPrintf
/* B331A0 800BC000 24843F70 */   addiu $a0, %lo(D_80143F70) # addiu $a0, $a0, 0x3f70
/* B331A4 800BC004 3C048013 */  lui   $a0, %hi(D_8012D1DC) # $a0, 0x8013
/* B331A8 800BC008 0C02EF58 */  jal   func_800BBD60
/* B331AC 800BC00C 8C84D1DC */   lw    $a0, %lo(D_8012D1DC)($a0)
.L800BC010:
/* B331B0 800BC010 3C048014 */  lui   $a0, %hi(D_80143F74) # $a0, 0x8014
/* B331B4 800BC014 0C00084C */  jal   osSyncPrintf
/* B331B8 800BC018 24843F74 */   addiu $a0, %lo(D_80143F74) # addiu $a0, $a0, 0x3f74
/* B331BC 800BC01C 3C048014 */  lui   $a0, %hi(D_80143F7C) # $a0, 0x8014
/* B331C0 800BC020 0C00084C */  jal   osSyncPrintf
/* B331C4 800BC024 24843F7C */   addiu $a0, %lo(D_80143F7C) # addiu $a0, $a0, 0x3f7c
/* B331C8 800BC028 3C048014 */  lui   $a0, %hi(D_80143F94) # $a0, 0x8014
/* B331CC 800BC02C 0C00084C */  jal   osSyncPrintf
/* B331D0 800BC030 24843F94 */   addiu $a0, %lo(D_80143F94) # addiu $a0, $a0, 0x3f94
/* B331D4 800BC034 3C048013 */  lui   $a0, %hi(D_8012D1BC) # $a0, 0x8013
/* B331D8 800BC038 0C02EF24 */  jal   func_800BBC90
/* B331DC 800BC03C 2484D1BC */   addiu $a0, %lo(D_8012D1BC) # addiu $a0, $a0, -0x2e44
.L800BC040:
/* B331E0 800BC040 8FBF0014 */  lw    $ra, 0x14($sp)
/* B331E4 800BC044 27BD0018 */  addiu $sp, $sp, 0x18
/* B331E8 800BC048 03E00008 */  jr    $ra
/* B331EC 800BC04C 00000000 */   nop   

glabel func_800BC050
/* B331F0 800BC050 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B331F4 800BC054 AFA40020 */  sw    $a0, 0x20($sp)
/* B331F8 800BC058 AFBF0014 */  sw    $ra, 0x14($sp)
/* B331FC 800BC05C 3C048014 */  lui   $a0, %hi(D_80143F98) # $a0, 0x8014
/* B33200 800BC060 0C00084C */  jal   osSyncPrintf
/* B33204 800BC064 24843F98 */   addiu $a0, %lo(D_80143F98) # addiu $a0, $a0, 0x3f98
/* B33208 800BC068 3C048082 */  lui   $a0, %hi(func_80826CB4) # $a0, 0x8082
/* B3320C 800BC06C 24846CB4 */  addiu $a0, %lo(func_80826CB4) # addiu $a0, $a0, 0x6cb4
/* B33210 800BC070 0C02EFBB */  jal   func_800BBEEC
/* B33214 800BC074 AFA4001C */   sw    $a0, 0x1c($sp)
/* B33218 800BC078 3C048082 */  lui   $a0, %hi(func_808262B8) # $a0, 0x8082
/* B3321C 800BC07C 3C018016 */  lui   $at, %hi(D_80161390) # $at, 0x8016
/* B33220 800BC080 248462B8 */  addiu $a0, %lo(func_808262B8) # addiu $a0, $a0, 0x62b8
/* B33224 800BC084 AC221390 */  sw    $v0, %lo(D_80161390)($at)
/* B33228 800BC088 0C02EFBB */  jal   func_800BBEEC
/* B3322C 800BC08C AFA40018 */   sw    $a0, 0x18($sp)
/* B33230 800BC090 3C018016 */  lui   $at, %hi(D_80161394) # $at, 0x8016
/* B33234 800BC094 3C048014 */  lui   $a0, %hi(D_80143FC4) # $a0, 0x8014
/* B33238 800BC098 AC221394 */  sw    $v0, %lo(D_80161394)($at)
/* B3323C 800BC09C 24843FC4 */  addiu $a0, %lo(D_80143FC4) # addiu $a0, $a0, 0x3fc4
/* B33240 800BC0A0 0C000B84 */  jal   SyncPrintfWithThreadId
/* B33244 800BC0A4 24050062 */   li    $a1, 98
/* B33248 800BC0A8 3C048014 */  lui   $a0, %hi(D_80143FE0) # $a0, 0x8014
/* B3324C 800BC0AC 24843FE0 */  addiu $a0, %lo(D_80143FE0) # addiu $a0, $a0, 0x3fe0
/* B33250 800BC0B0 0C00084C */  jal   osSyncPrintf
/* B33254 800BC0B4 8FA5001C */   lw    $a1, 0x1c($sp)
/* B33258 800BC0B8 3C048014 */  lui   $a0, %hi(D_80143FFC) # $a0, 0x8014
/* B3325C 800BC0BC 24843FFC */  addiu $a0, %lo(D_80143FFC) # addiu $a0, $a0, 0x3ffc
/* B33260 800BC0C0 0C000B84 */  jal   SyncPrintfWithThreadId
/* B33264 800BC0C4 24050063 */   li    $a1, 99
/* B33268 800BC0C8 3C048014 */  lui   $a0, %hi(D_80144018) # $a0, 0x8014
/* B3326C 800BC0CC 3C058016 */  lui   $a1, %hi(D_80161390) # $a1, 0x8016
/* B33270 800BC0D0 8CA51390 */  lw    $a1, %lo(D_80161390)($a1)
/* B33274 800BC0D4 0C00084C */  jal   osSyncPrintf
/* B33278 800BC0D8 24844018 */   addiu $a0, %lo(D_80144018) # addiu $a0, $a0, 0x4018
/* B3327C 800BC0DC 3C048014 */  lui   $a0, %hi(D_80144038) # $a0, 0x8014
/* B33280 800BC0E0 24844038 */  addiu $a0, %lo(D_80144038) # addiu $a0, $a0, 0x4038
/* B33284 800BC0E4 0C000B84 */  jal   SyncPrintfWithThreadId
/* B33288 800BC0E8 24050064 */   li    $a1, 100
/* B3328C 800BC0EC 3C048014 */  lui   $a0, %hi(D_80144054) # $a0, 0x8014
/* B33290 800BC0F0 24844054 */  addiu $a0, %lo(D_80144054) # addiu $a0, $a0, 0x4054
/* B33294 800BC0F4 0C00084C */  jal   osSyncPrintf
/* B33298 800BC0F8 8FA50018 */   lw    $a1, 0x18($sp)
/* B3329C 800BC0FC 3C048014 */  lui   $a0, %hi(D_80144070) # $a0, 0x8014
/* B332A0 800BC100 24844070 */  addiu $a0, %lo(D_80144070) # addiu $a0, $a0, 0x4070
/* B332A4 800BC104 0C000B84 */  jal   SyncPrintfWithThreadId
/* B332A8 800BC108 24050065 */   li    $a1, 101
/* B332AC 800BC10C 3C048014 */  lui   $a0, %hi(D_8014408C) # $a0, 0x8014
/* B332B0 800BC110 3C058016 */  lui   $a1, %hi(D_80161394) # $a1, 0x8016
/* B332B4 800BC114 8CA51394 */  lw    $a1, %lo(D_80161394)($a1)
/* B332B8 800BC118 0C00084C */  jal   osSyncPrintf
/* B332BC 800BC11C 2484408C */   addiu $a0, %lo(D_8014408C) # addiu $a0, $a0, 0x408c
/* B332C0 800BC120 0C01BB3D */  jal   func_8006ECF4
/* B332C4 800BC124 8FA40020 */   lw    $a0, 0x20($sp)
/* B332C8 800BC128 8FBF0014 */  lw    $ra, 0x14($sp)
/* B332CC 800BC12C 27BD0020 */  addiu $sp, $sp, 0x20
/* B332D0 800BC130 03E00008 */  jr    $ra
/* B332D4 800BC134 00000000 */   nop   

glabel func_800BC138
/* B332D8 800BC138 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B332DC 800BC13C AFA40018 */  sw    $a0, 0x18($sp)
/* B332E0 800BC140 AFBF0014 */  sw    $ra, 0x14($sp)
/* B332E4 800BC144 3C048014 */  lui   $a0, %hi(D_801440AC) # $a0, 0x8014
/* B332E8 800BC148 0C00084C */  jal   osSyncPrintf
/* B332EC 800BC14C 248440AC */   addiu $a0, %lo(D_801440AC) # addiu $a0, $a0, 0x40ac
/* B332F0 800BC150 0C01BB92 */  jal   func_8006EE48
/* B332F4 800BC154 8FA40018 */   lw    $a0, 0x18($sp)
/* B332F8 800BC158 8FBF0014 */  lw    $ra, 0x14($sp)
/* B332FC 800BC15C 27BD0018 */  addiu $sp, $sp, 0x18
/* B33300 800BC160 03E00008 */  jr    $ra
/* B33304 800BC164 00000000 */   nop   

glabel func_800BC168
/* B33308 800BC168 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3330C 800BC16C 3C010001 */  lui   $at, 1
/* B33310 800BC170 00817821 */  addu  $t7, $a0, $at
/* B33314 800BC174 3C180001 */  lui   $t8, 1
/* B33318 800BC178 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3331C 800BC17C AFA40028 */  sw    $a0, 0x28($sp)
/* B33320 800BC180 0304C021 */  addu  $t8, $t8, $a0
/* B33324 800BC184 AFAF0018 */  sw    $t7, 0x18($sp)
/* B33328 800BC188 97180934 */  lhu   $t8, 0x934($t8)
/* B3332C 800BC18C 3C190001 */  lui   $t9, 1
/* B33330 800BC190 0324C821 */  addu  $t9, $t9, $a0
/* B33334 800BC194 17000003 */  bnez  $t8, .L800BC1A4
/* B33338 800BC198 8FA30028 */   lw    $v1, 0x28($sp)
/* B3333C 800BC19C 97390936 */  lhu   $t9, 0x936($t9)
/* B33340 800BC1A0 13200087 */  beqz  $t9, .L800BC3C0
.L800BC1A4:
/* B33344 800BC1A4 3C010001 */   lui   $at, (0x00010760 >> 16) # lui $at, 1
/* B33348 800BC1A8 34210760 */  ori   $at, (0x00010760 & 0xFFFF) # ori $at, $at, 0x760
/* B3334C 800BC1AC 00611821 */  addu  $v1, $v1, $at
/* B33350 800BC1B0 946201D4 */  lhu   $v0, 0x1d4($v1)
/* B33354 800BC1B4 24040001 */  li    $a0, 1
/* B33358 800BC1B8 24010008 */  li    $at, 8
/* B3335C 800BC1BC 14820016 */  bne   $a0, $v0, .L800BC218
/* B33360 800BC1C0 00000000 */   nop   
/* B33364 800BC1C4 0C02CE3F */  jal   func_800B38FC
/* B33368 800BC1C8 AFA3001C */   sw    $v1, 0x1c($sp)
/* B3336C 800BC1CC 8FA3001C */  lw    $v1, 0x1c($sp)
/* B33370 800BC1D0 1440007B */  bnez  $v0, .L800BC3C0
/* B33374 800BC1D4 24040001 */   li    $a0, 1
/* B33378 800BC1D8 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3337C 800BC1DC 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B33380 800BC1E0 8C490000 */  lw    $t1, ($v0)
/* B33384 800BC1E4 24080007 */  li    $t0, 7
/* B33388 800BC1E8 240A0003 */  li    $t2, 3
/* B3338C 800BC1EC A5281074 */  sh    $t0, 0x1074($t1)
/* B33390 800BC1F0 8C4B0000 */  lw    $t3, ($v0)
/* B33394 800BC1F4 A56A1078 */  sh    $t2, 0x1078($t3)
/* B33398 800BC1F8 8C4C0000 */  lw    $t4, ($v0)
/* B3339C 800BC1FC A5840190 */  sh    $a0, 0x190($t4)
/* B333A0 800BC200 946F01D4 */  lhu   $t7, 0x1d4($v1)
/* B333A4 800BC204 A46001E4 */  sh    $zero, 0x1e4($v1)
/* B333A8 800BC208 A46001EC */  sh    $zero, 0x1ec($v1)
/* B333AC 800BC20C 25F80001 */  addiu $t8, $t7, 1
/* B333B0 800BC210 1000006B */  b     .L800BC3C0
/* B333B4 800BC214 A47801D4 */   sh    $t8, 0x1d4($v1)
.L800BC218:
/* B333B8 800BC218 54410012 */  bnel  $v0, $at, .L800BC264
/* B333BC 800BC21C 24010002 */   li    $at, 2
/* B333C0 800BC220 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B333C4 800BC224 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B333C8 800BC228 8C590000 */  lw    $t9, ($v0)
/* B333CC 800BC22C 240E0007 */  li    $t6, 7
/* B333D0 800BC230 24080003 */  li    $t0, 3
/* B333D4 800BC234 A72E1074 */  sh    $t6, 0x1074($t9)
/* B333D8 800BC238 8C490000 */  lw    $t1, ($v0)
/* B333DC 800BC23C A5281078 */  sh    $t0, 0x1078($t1)
/* B333E0 800BC240 8C4A0000 */  lw    $t2, ($v0)
/* B333E4 800BC244 A5440190 */  sh    $a0, 0x190($t2)
/* B333E8 800BC248 946C01D4 */  lhu   $t4, 0x1d4($v1)
/* B333EC 800BC24C A46001E4 */  sh    $zero, 0x1e4($v1)
/* B333F0 800BC250 A46001EC */  sh    $zero, 0x1ec($v1)
/* B333F4 800BC254 258D0001 */  addiu $t5, $t4, 1
/* B333F8 800BC258 10000059 */  b     .L800BC3C0
/* B333FC 800BC25C A46D01D4 */   sh    $t5, 0x1d4($v1)
/* B33400 800BC260 24010002 */  li    $at, 2
.L800BC264:
/* B33404 800BC264 10410003 */  beq   $v0, $at, .L800BC274
/* B33408 800BC268 24010009 */   li    $at, 9
/* B3340C 800BC26C 14410015 */  bne   $v0, $at, .L800BC2C4
/* B33410 800BC270 00000000 */   nop   
.L800BC274:
/* B33414 800BC274 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B33418 800BC278 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B3341C 800BC27C 8C4F0000 */  lw    $t7, ($v0)
/* B33420 800BC280 3C048014 */  lui   $a0, %hi(D_801440D8) # $a0, 0x8014
/* B33424 800BC284 248440D8 */  addiu $a0, %lo(D_801440D8) # addiu $a0, $a0, 0x40d8
/* B33428 800BC288 85E50190 */  lh    $a1, 0x190($t7)
/* B3342C 800BC28C 0C00084C */  jal   osSyncPrintf
/* B33430 800BC290 AFA3001C */   sw    $v1, 0x1c($sp)
/* B33434 800BC294 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B33438 800BC298 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B3343C 800BC29C 8C580000 */  lw    $t8, ($v0)
/* B33440 800BC2A0 8FA3001C */  lw    $v1, 0x1c($sp)
/* B33444 800BC2A4 870E0190 */  lh    $t6, 0x190($t8)
/* B33448 800BC2A8 29C10003 */  slti  $at, $t6, 3
/* B3344C 800BC2AC 54200045 */  bnezl $at, .L800BC3C4
/* B33450 800BC2B0 8FBF0014 */   lw    $ra, 0x14($sp)
/* B33454 800BC2B4 947901D4 */  lhu   $t9, 0x1d4($v1)
/* B33458 800BC2B8 27280001 */  addiu $t0, $t9, 1
/* B3345C 800BC2BC 10000040 */  b     .L800BC3C0
/* B33460 800BC2C0 A46801D4 */   sh    $t0, 0x1d4($v1)
.L800BC2C4:
/* B33464 800BC2C4 1040003E */  beqz  $v0, .L800BC3C0
/* B33468 800BC2C8 3C028013 */   lui   $v0, %hi(D_8012D1DC) # $v0, 0x8013
/* B3346C 800BC2CC 8C42D1DC */  lw    $v0, %lo(D_8012D1DC)($v0)
/* B33470 800BC2D0 3C098013 */  lui   $t1, %hi(D_8012D1A0) # $t1, 0x8013
/* B33474 800BC2D4 2529D1A0 */  addiu $t1, %lo(D_8012D1A0) # addiu $t1, $t1, -0x2e60
/* B33478 800BC2D8 1122001C */  beq   $t1, $v0, .L800BC34C
/* B3347C 800BC2DC 00000000 */   nop   
/* B33480 800BC2E0 1040000C */  beqz  $v0, .L800BC314
/* B33484 800BC2E4 3C048014 */   lui   $a0, %hi(D_801440F4) # $a0, 0x8014
/* B33488 800BC2E8 0C00084C */  jal   osSyncPrintf
/* B3348C 800BC2EC 248440F4 */   addiu $a0, %lo(D_801440F4) # addiu $a0, $a0, 0x40f4
/* B33490 800BC2F0 3C048014 */  lui   $a0, %hi(D_801440FC) # $a0, 0x8014
/* B33494 800BC2F4 0C00084C */  jal   osSyncPrintf
/* B33498 800BC2F8 248440FC */   addiu $a0, %lo(D_801440FC) # addiu $a0, $a0, 0x40fc
/* B3349C 800BC2FC 3C048014 */  lui   $a0, %hi(D_80144120) # $a0, 0x8014
/* B334A0 800BC300 0C00084C */  jal   osSyncPrintf
/* B334A4 800BC304 24844120 */   addiu $a0, %lo(D_80144120) # addiu $a0, $a0, 0x4120
/* B334A8 800BC308 3C048013 */  lui   $a0, %hi(D_8012D1DC) # $a0, 0x8013
/* B334AC 800BC30C 0C02EF58 */  jal   func_800BBD60
/* B334B0 800BC310 8C84D1DC */   lw    $a0, %lo(D_8012D1DC)($a0)
.L800BC314:
/* B334B4 800BC314 3C048014 */  lui   $a0, %hi(D_80144124) # $a0, 0x8014
/* B334B8 800BC318 0C00084C */  jal   osSyncPrintf
/* B334BC 800BC31C 24844124 */   addiu $a0, %lo(D_80144124) # addiu $a0, $a0, 0x4124
/* B334C0 800BC320 3C048014 */  lui   $a0, %hi(D_8014412C) # $a0, 0x8014
/* B334C4 800BC324 0C00084C */  jal   osSyncPrintf
/* B334C8 800BC328 2484412C */   addiu $a0, %lo(D_8014412C) # addiu $a0, $a0, 0x412c
/* B334CC 800BC32C 3C048014 */  lui   $a0, %hi(D_80144150) # $a0, 0x8014
/* B334D0 800BC330 0C00084C */  jal   osSyncPrintf
/* B334D4 800BC334 24844150 */   addiu $a0, %lo(D_80144150) # addiu $a0, $a0, 0x4150
/* B334D8 800BC338 3C048013 */  lui   $a0, %hi(D_8012D1A0) # $a0, 0x8013
/* B334DC 800BC33C 0C02EF24 */  jal   func_800BBC90
/* B334E0 800BC340 2484D1A0 */   addiu $a0, %lo(D_8012D1A0) # addiu $a0, $a0, -0x2e60
/* B334E4 800BC344 3C028013 */  lui   $v0, %hi(D_8012D1DC) # $v0, 0x8013
/* B334E8 800BC348 8C42D1DC */  lw    $v0, %lo(D_8012D1DC)($v0)
.L800BC34C:
/* B334EC 800BC34C 3C0A8013 */  lui   $t2, %hi(D_8012D1A0) # $t2, 0x8013
/* B334F0 800BC350 254AD1A0 */  addiu $t2, %lo(D_8012D1A0) # addiu $t2, $t2, -0x2e60
/* B334F4 800BC354 1542001A */  bne   $t2, $v0, .L800BC3C0
/* B334F8 800BC358 3C198016 */   lui   $t9, %hi(D_80161390) # $t9, 0x8016
/* B334FC 800BC35C 8F391390 */  lw    $t9, %lo(D_80161390)($t9)
/* B33500 800BC360 8FA40028 */  lw    $a0, 0x28($sp)
/* B33504 800BC364 0320F809 */  jalr  $t9
/* B33508 800BC368 00000000 */  nop   
/* B3350C 800BC36C 8FAB0018 */  lw    $t3, 0x18($sp)
/* B33510 800BC370 956C0934 */  lhu   $t4, 0x934($t3)
/* B33514 800BC374 55800013 */  bnezl $t4, .L800BC3C4
/* B33518 800BC378 8FBF0014 */   lw    $ra, 0x14($sp)
/* B3351C 800BC37C 956D0936 */  lhu   $t5, 0x936($t3)
/* B33520 800BC380 3C048014 */  lui   $a0, %hi(D_80144154) # $a0, 0x8014
/* B33524 800BC384 55A0000F */  bnezl $t5, .L800BC3C4
/* B33528 800BC388 8FBF0014 */   lw    $ra, 0x14($sp)
/* B3352C 800BC38C 0C00084C */  jal   osSyncPrintf
/* B33530 800BC390 24844154 */   addiu $a0, %lo(D_80144154) # addiu $a0, $a0, 0x4154
/* B33534 800BC394 3C048014 */  lui   $a0, %hi(D_8014415C) # $a0, 0x8014
/* B33538 800BC398 0C00084C */  jal   osSyncPrintf
/* B3353C 800BC39C 2484415C */   addiu $a0, %lo(D_8014415C) # addiu $a0, $a0, 0x415c
/* B33540 800BC3A0 3C048014 */  lui   $a0, %hi(D_80144180) # $a0, 0x8014
/* B33544 800BC3A4 0C00084C */  jal   osSyncPrintf
/* B33548 800BC3A8 24844180 */   addiu $a0, %lo(D_80144180) # addiu $a0, $a0, 0x4180
/* B3354C 800BC3AC 3C048013 */  lui   $a0, %hi(D_8012D1A0) # $a0, 0x8013
/* B33550 800BC3B0 0C02EF58 */  jal   func_800BBD60
/* B33554 800BC3B4 2484D1A0 */   addiu $a0, %lo(D_8012D1A0) # addiu $a0, $a0, -0x2e60
/* B33558 800BC3B8 0C02EFF0 */  jal   func_800BBFC0
/* B3355C 800BC3BC 00000000 */   nop   
.L800BC3C0:
/* B33560 800BC3C0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800BC3C4:
/* B33564 800BC3C4 27BD0028 */  addiu $sp, $sp, 0x28
/* B33568 800BC3C8 03E00008 */  jr    $ra
/* B3356C 800BC3CC 00000000 */   nop   

glabel func_800BC3D0
/* B33570 800BC3D0 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B33574 800BC3D4 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B33578 800BC3D8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3357C 800BC3DC AFBF0014 */  sw    $ra, 0x14($sp)
/* B33580 800BC3E0 85CF0190 */  lh    $t7, 0x190($t6)
/* B33584 800BC3E4 3C020001 */  lui   $v0, 1
/* B33588 800BC3E8 00441021 */  addu  $v0, $v0, $a0
/* B3358C 800BC3EC 29E10003 */  slti  $at, $t7, 3
/* B33590 800BC3F0 54200014 */  bnezl $at, .L800BC444
/* B33594 800BC3F4 8FBF0014 */   lw    $ra, 0x14($sp)
/* B33598 800BC3F8 94420934 */  lhu   $v0, 0x934($v0)
/* B3359C 800BC3FC 28410004 */  slti  $at, $v0, 4
/* B335A0 800BC400 14200002 */  bnez  $at, .L800BC40C
/* B335A4 800BC404 28410008 */   slti  $at, $v0, 8
/* B335A8 800BC408 14200004 */  bnez  $at, .L800BC41C
.L800BC40C:
/* B335AC 800BC40C 2841000B */   slti  $at, $v0, 0xb
/* B335B0 800BC410 1420000B */  bnez  $at, .L800BC440
/* B335B4 800BC414 28410013 */   slti  $at, $v0, 0x13
/* B335B8 800BC418 10200009 */  beqz  $at, .L800BC440
.L800BC41C:
/* B335BC 800BC41C 3C198013 */   lui   $t9, %hi(D_8012D1DC) # $t9, 0x8013
/* B335C0 800BC420 8F39D1DC */  lw    $t9, %lo(D_8012D1DC)($t9)
/* B335C4 800BC424 3C188013 */  lui   $t8, %hi(D_8012D1A0) # $t8, 0x8013
/* B335C8 800BC428 2718D1A0 */  addiu $t8, %lo(D_8012D1A0) # addiu $t8, $t8, -0x2e60
/* B335CC 800BC42C 17190004 */  bne   $t8, $t9, .L800BC440
/* B335D0 800BC430 3C198016 */   lui   $t9, %hi(D_80161394) # $t9, 0x8016
/* B335D4 800BC434 8F391394 */  lw    $t9, %lo(D_80161394)($t9)
/* B335D8 800BC438 0320F809 */  jalr  $t9
/* B335DC 800BC43C 00000000 */  nop   
.L800BC440:
/* B335E0 800BC440 8FBF0014 */  lw    $ra, 0x14($sp)
.L800BC444:
/* B335E4 800BC444 27BD0018 */  addiu $sp, $sp, 0x18
/* B335E8 800BC448 03E00008 */  jr    $ra
/* B335EC 800BC44C 00000000 */   nop   
