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
/* B33240 800BC0A0 0C000B84 */  jal   LogUtils_LogThreadId
/* B33244 800BC0A4 24050062 */   li    $a1, 98
/* B33248 800BC0A8 3C048014 */  lui   $a0, %hi(D_80143FE0) # $a0, 0x8014
/* B3324C 800BC0AC 24843FE0 */  addiu $a0, %lo(D_80143FE0) # addiu $a0, $a0, 0x3fe0
/* B33250 800BC0B0 0C00084C */  jal   osSyncPrintf
/* B33254 800BC0B4 8FA5001C */   lw    $a1, 0x1c($sp)
/* B33258 800BC0B8 3C048014 */  lui   $a0, %hi(D_80143FFC) # $a0, 0x8014
/* B3325C 800BC0BC 24843FFC */  addiu $a0, %lo(D_80143FFC) # addiu $a0, $a0, 0x3ffc
/* B33260 800BC0C0 0C000B84 */  jal   LogUtils_LogThreadId
/* B33264 800BC0C4 24050063 */   li    $a1, 99
/* B33268 800BC0C8 3C048014 */  lui   $a0, %hi(D_80144018) # $a0, 0x8014
/* B3326C 800BC0CC 3C058016 */  lui   $a1, %hi(D_80161390) # $a1, 0x8016
/* B33270 800BC0D0 8CA51390 */  lw    $a1, %lo(D_80161390)($a1)
/* B33274 800BC0D4 0C00084C */  jal   osSyncPrintf
/* B33278 800BC0D8 24844018 */   addiu $a0, %lo(D_80144018) # addiu $a0, $a0, 0x4018
/* B3327C 800BC0DC 3C048014 */  lui   $a0, %hi(D_80144038) # $a0, 0x8014
/* B33280 800BC0E0 24844038 */  addiu $a0, %lo(D_80144038) # addiu $a0, $a0, 0x4038
/* B33284 800BC0E4 0C000B84 */  jal   LogUtils_LogThreadId
/* B33288 800BC0E8 24050064 */   li    $a1, 100
/* B3328C 800BC0EC 3C048014 */  lui   $a0, %hi(D_80144054) # $a0, 0x8014
/* B33290 800BC0F0 24844054 */  addiu $a0, %lo(D_80144054) # addiu $a0, $a0, 0x4054
/* B33294 800BC0F4 0C00084C */  jal   osSyncPrintf
/* B33298 800BC0F8 8FA50018 */   lw    $a1, 0x18($sp)
/* B3329C 800BC0FC 3C048014 */  lui   $a0, %hi(D_80144070) # $a0, 0x8014
/* B332A0 800BC100 24844070 */  addiu $a0, %lo(D_80144070) # addiu $a0, $a0, 0x4070
/* B332A4 800BC104 0C000B84 */  jal   LogUtils_LogThreadId
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

