glabel func_80087174
/* AFE314 80087174 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AFE318 80087178 AFB00020 */  sw    $s0, 0x20($sp)
/* AFE31C 8008717C 00058400 */  sll   $s0, $a1, 0x10
/* AFE320 80087180 AFA40028 */  sw    $a0, 0x28($sp)
/* AFE324 80087184 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AFE328 80087188 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AFE32C 8008718C 00108403 */  sra   $s0, $s0, 0x10
/* AFE330 80087190 AFBF0024 */  sw    $ra, 0x24($sp)
/* AFE334 80087194 AFA5002C */  sw    $a1, 0x2c($sp)
/* AFE338 80087198 3C048014 */  lui   $a0, %hi(D_8013E1C8) # $a0, 0x8014
/* AFE33C 8008719C 2484E1C8 */  addiu $a0, %lo(D_8013E1C8) # addiu $a0, $a0, -0x1e38
/* AFE340 800871A0 02002825 */  move  $a1, $s0
/* AFE344 800871A4 85060030 */  lh    $a2, 0x30($t0)
/* AFE348 800871A8 0C00084C */  jal   osSyncPrintf
/* AFE34C 800871AC 8507002E */   lh    $a3, 0x2e($t0)
/* AFE350 800871B0 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AFE354 800871B4 1A00000F */  blez  $s0, .L800871F4
/* AFE358 800871B8 2508E660 */   addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AFE35C 800871BC 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AFE360 800871C0 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* AFE364 800871C4 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* AFE368 800871C8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AFE36C 800871CC 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AFE370 800871D0 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AFE374 800871D4 AFA70010 */  sw    $a3, 0x10($sp)
/* AFE378 800871D8 AFAE0014 */  sw    $t6, 0x14($sp)
/* AFE37C 800871DC 2404480B */  li    $a0, 18443
/* AFE380 800871E0 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AFE384 800871E4 24060004 */   li    $a2, 4
/* AFE388 800871E8 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AFE38C 800871EC 1000000E */  b     .L80087228
/* AFE390 800871F0 2508E660 */   addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
.L800871F4:
/* AFE394 800871F4 910F003D */  lbu   $t7, 0x3d($t0)
/* AFE398 800871F8 51E0000C */  beql  $t7, $zero, .L8008722C
/* AFE39C 800871FC 85180030 */   lh    $t8, 0x30($t0)
/* AFE3A0 80087200 06010009 */  bgez  $s0, .L80087228
/* AFE3A4 80087204 3C048014 */   lui   $a0, %hi(D_8013E1F8) # $a0, 0x8014
/* AFE3A8 80087208 00108043 */  sra   $s0, $s0, 1
/* AFE3AC 8008720C 00108400 */  sll   $s0, $s0, 0x10
/* AFE3B0 80087210 00108403 */  sra   $s0, $s0, 0x10
/* AFE3B4 80087214 02002825 */  move  $a1, $s0
/* AFE3B8 80087218 0C00084C */  jal   osSyncPrintf
/* AFE3BC 8008721C 2484E1F8 */   addiu $a0, %lo(D_8013E1F8) # addiu $a0, $a0, -0x1e08
/* AFE3C0 80087220 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AFE3C4 80087224 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
.L80087228:
/* AFE3C8 80087228 85180030 */  lh    $t8, 0x30($t0)
.L8008722C:
/* AFE3CC 8008722C 8502002E */  lh    $v0, 0x2e($t0)
/* AFE3D0 80087230 0310C821 */  addu  $t9, $t8, $s0
/* AFE3D4 80087234 A5190030 */  sh    $t9, 0x30($t0)
/* AFE3D8 80087238 85050030 */  lh    $a1, 0x30($t0)
/* AFE3DC 8008723C 0045082A */  slt   $at, $v0, $a1
/* AFE3E0 80087240 10200003 */  beqz  $at, .L80087250
/* AFE3E4 80087244 00000000 */   nop   
/* AFE3E8 80087248 A5020030 */  sh    $v0, 0x30($t0)
/* AFE3EC 8008724C 85050030 */  lh    $a1, 0x30($t0)
.L80087250:
/* AFE3F0 80087250 04A10004 */  bgez  $a1, .L80087264
/* AFE3F4 80087254 30A2000F */   andi  $v0, $a1, 0xf
/* AFE3F8 80087258 10400002 */  beqz  $v0, .L80087264
/* AFE3FC 8008725C 00000000 */   nop   
/* AFE400 80087260 2442FFF0 */  addiu $v0, $v0, -0x10
.L80087264:
/* AFE404 80087264 3042FFFF */  andi  $v0, $v0, 0xffff
/* AFE408 80087268 3043FFFF */  andi  $v1, $v0, 0xffff
/* AFE40C 8008726C 1040000B */  beqz  $v0, .L8008729C
/* AFE410 80087270 00402025 */   move  $a0, $v0
/* AFE414 80087274 2841000B */  slti  $at, $v0, 0xb
/* AFE418 80087278 54200004 */  bnezl $at, .L8008728C
/* AFE41C 8008727C 28810006 */   slti  $at, $a0, 6
/* AFE420 80087280 10000006 */  b     .L8008729C
/* AFE424 80087284 24030003 */   li    $v1, 3
/* AFE428 80087288 28810006 */  slti  $at, $a0, 6
.L8008728C:
/* AFE42C 8008728C 14200003 */  bnez  $at, .L8008729C
/* AFE430 80087290 24030001 */   li    $v1, 1
/* AFE434 80087294 10000001 */  b     .L8008729C
/* AFE438 80087298 24030002 */   li    $v1, 2
.L8008729C:
/* AFE43C 8008729C 3C048014 */  lui   $a0, %hi(D_8013E210) # $a0, 0x8014
/* AFE440 800872A0 2484E210 */  addiu $a0, %lo(D_8013E210) # addiu $a0, $a0, -0x1df0
/* AFE444 800872A4 0C00084C */  jal   osSyncPrintf
/* AFE448 800872A8 00603025 */   move  $a2, $v1
/* AFE44C 800872AC 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AFE450 800872B0 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AFE454 800872B4 85090030 */  lh    $t1, 0x30($t0)
/* AFE458 800872B8 00001025 */  move  $v0, $zero
/* AFE45C 800872BC 5D200004 */  bgtzl $t1, .L800872D0
/* AFE460 800872C0 24020001 */   li    $v0, 1
/* AFE464 800872C4 10000002 */  b     .L800872D0
/* AFE468 800872C8 A5000030 */   sh    $zero, 0x30($t0)
/* AFE46C 800872CC 24020001 */  li    $v0, 1
.L800872D0:
/* AFE470 800872D0 8FBF0024 */  lw    $ra, 0x24($sp)
/* AFE474 800872D4 8FB00020 */  lw    $s0, 0x20($sp)
/* AFE478 800872D8 27BD0028 */  addiu $sp, $sp, 0x28
/* AFE47C 800872DC 03E00008 */  jr    $ra
/* AFE480 800872E0 00000000 */   nop   

