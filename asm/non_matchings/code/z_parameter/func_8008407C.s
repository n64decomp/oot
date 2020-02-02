glabel func_8008407C
/* AFB21C 8008407C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AFB220 80084080 3C010001 */  lui   $at, 1
/* AFB224 80084084 AFBF0024 */  sw    $ra, 0x24($sp)
/* AFB228 80084088 AFB00020 */  sw    $s0, 0x20($sp)
/* AFB22C 8008408C 00811821 */  addu  $v1, $a0, $at
/* AFB230 80084090 00803825 */  move  $a3, $a0
/* AFB234 80084094 A060075D */  sb    $zero, 0x75d($v1)
/* AFB238 80084098 A060075C */  sb    $zero, 0x75c($v1)
/* AFB23C 8008409C A060075B */  sb    $zero, 0x75b($v1)
/* AFB240 800840A0 A060075A */  sb    $zero, 0x75a($v1)
/* AFB244 800840A4 A0600759 */  sb    $zero, 0x759($v1)
/* AFB248 800840A8 A0600758 */  sb    $zero, 0x758($v1)
/* AFB24C 800840AC A0600757 */  sb    $zero, 0x757($v1)
/* AFB250 800840B0 A0600756 */  sb    $zero, 0x756($v1)
/* AFB254 800840B4 A0600755 */  sb    $zero, 0x755($v1)
/* AFB258 800840B8 A0600754 */  sb    $zero, 0x754($v1)
/* AFB25C 800840BC A0600753 */  sb    $zero, 0x753($v1)
/* AFB260 800840C0 A0600752 */  sb    $zero, 0x752($v1)
/* AFB264 800840C4 84E500A4 */  lh    $a1, 0xa4($a3)
/* AFB268 800840C8 3C048014 */  lui   $a0, %hi(D_8013DDCC) # $a0, 0x8014
/* AFB26C 800840CC 2484DDCC */  addiu $a0, %lo(D_8013DDCC) # addiu $a0, $a0, -0x2234
/* AFB270 800840D0 AFA70048 */  sw    $a3, 0x48($sp)
/* AFB274 800840D4 0C00084C */  jal   osSyncPrintf
/* AFB278 800840D8 A7A00042 */   sh    $zero, 0x42($sp)
/* AFB27C 800840DC 8FA70048 */  lw    $a3, 0x48($sp)
/* AFB280 800840E0 3C0E8012 */  lui   $t6, %hi(D_80125870) # $t6, 0x8012
/* AFB284 800840E4 25C85870 */  addiu $t0, $t6, %lo(D_80125870) # addiu $t0, $t6, 0x5870
/* AFB288 800840E8 3C068012 */  lui   $a2, %hi(D_80125870) # $a2, 0x8012
/* AFB28C 800840EC 87A20042 */  lh    $v0, 0x42($sp)
/* AFB290 800840F0 24C65870 */  addiu $a2, %lo(D_80125870) # addiu $a2, $a2, 0x5870
/* AFB294 800840F4 91030000 */  lbu   $v1, ($t0)
/* AFB298 800840F8 240500FF */  li    $a1, 255
/* AFB29C 800840FC 90E400A5 */  lbu   $a0, 0xa5($a3)
.L80084100:
/* AFB2A0 80084100 14830059 */  bne   $a0, $v1, .L80084268
/* AFB2A4 80084104 24420001 */   addiu $v0, $v0, 1
/* AFB2A8 80084108 910F0001 */  lbu   $t7, 1($t0)
/* AFB2AC 8008410C 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AFB2B0 80084110 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AFB2B4 80084114 31F800C0 */  andi  $t8, $t7, 0xc0
/* AFB2B8 80084118 0018C983 */  sra   $t9, $t8, 6
/* AFB2BC 8008411C 00E18021 */  addu  $s0, $a3, $at
/* AFB2C0 80084120 A2190262 */  sb    $t9, 0x262($s0)
/* AFB2C4 80084124 91090001 */  lbu   $t1, 1($t0)
/* AFB2C8 80084128 3C048014 */  lui   $a0, %hi(D_8013DDF8) # $a0, 0x8014
/* AFB2CC 8008412C 2484DDF8 */  addiu $a0, %lo(D_8013DDF8) # addiu $a0, $a0, -0x2208
/* AFB2D0 80084130 312A0030 */  andi  $t2, $t1, 0x30
/* AFB2D4 80084134 000A5903 */  sra   $t3, $t2, 4
/* AFB2D8 80084138 A20B0263 */  sb    $t3, 0x263($s0)
/* AFB2DC 8008413C 910C0001 */  lbu   $t4, 1($t0)
/* AFB2E0 80084140 318D000C */  andi  $t5, $t4, 0xc
/* AFB2E4 80084144 000D7083 */  sra   $t6, $t5, 2
/* AFB2E8 80084148 A20E0264 */  sb    $t6, 0x264($s0)
/* AFB2EC 8008414C 910F0001 */  lbu   $t7, 1($t0)
/* AFB2F0 80084150 31F80003 */  andi  $t8, $t7, 3
/* AFB2F4 80084154 A2180265 */  sb    $t8, 0x265($s0)
/* AFB2F8 80084158 91190002 */  lbu   $t9, 2($t0)
/* AFB2FC 8008415C 332900C0 */  andi  $t1, $t9, 0xc0
/* AFB300 80084160 00095183 */  sra   $t2, $t1, 6
/* AFB304 80084164 A20A0266 */  sb    $t2, 0x266($s0)
/* AFB308 80084168 910B0002 */  lbu   $t3, 2($t0)
/* AFB30C 8008416C 316C0030 */  andi  $t4, $t3, 0x30
/* AFB310 80084170 000C6903 */  sra   $t5, $t4, 4
/* AFB314 80084174 A20D0267 */  sb    $t5, 0x267($s0)
/* AFB318 80084178 910E0002 */  lbu   $t6, 2($t0)
/* AFB31C 8008417C 31CF000C */  andi  $t7, $t6, 0xc
/* AFB320 80084180 000FC083 */  sra   $t8, $t7, 2
/* AFB324 80084184 A2180268 */  sb    $t8, 0x268($s0)
/* AFB328 80084188 91190002 */  lbu   $t9, 2($t0)
/* AFB32C 8008418C 33290003 */  andi  $t1, $t9, 3
/* AFB330 80084190 A2090269 */  sb    $t1, 0x269($s0)
/* AFB334 80084194 910A0003 */  lbu   $t2, 3($t0)
/* AFB338 80084198 314B00C0 */  andi  $t3, $t2, 0xc0
/* AFB33C 8008419C 000B6183 */  sra   $t4, $t3, 6
/* AFB340 800841A0 A20C026A */  sb    $t4, 0x26a($s0)
/* AFB344 800841A4 910D0003 */  lbu   $t5, 3($t0)
/* AFB348 800841A8 31AE0030 */  andi  $t6, $t5, 0x30
/* AFB34C 800841AC 000E7903 */  sra   $t7, $t6, 4
/* AFB350 800841B0 A20F026B */  sb    $t7, 0x26b($s0)
/* AFB354 800841B4 91180003 */  lbu   $t8, 3($t0)
/* AFB358 800841B8 3319000C */  andi  $t9, $t8, 0xc
/* AFB35C 800841BC 00194883 */  sra   $t1, $t9, 2
/* AFB360 800841C0 A209026C */  sb    $t1, 0x26c($s0)
/* AFB364 800841C4 910A0003 */  lbu   $t2, 3($t0)
/* AFB368 800841C8 314B0003 */  andi  $t3, $t2, 3
/* AFB36C 800841CC A20B026D */  sb    $t3, 0x26d($s0)
/* AFB370 800841D0 0C00084C */  jal   osSyncPrintf
/* AFB374 800841D4 AFA8002C */   sw    $t0, 0x2c($sp)
/* AFB378 800841D8 8FA8002C */  lw    $t0, 0x2c($sp)
/* AFB37C 800841DC 3C048014 */  lui   $a0, %hi(D_8013DE00) # $a0, 0x8014
/* AFB380 800841E0 2484DE00 */  addiu $a0, %lo(D_8013DE00) # addiu $a0, $a0, -0x2200
/* AFB384 800841E4 91050001 */  lbu   $a1, 1($t0)
/* AFB388 800841E8 91060002 */  lbu   $a2, 2($t0)
/* AFB38C 800841EC 0C00084C */  jal   osSyncPrintf
/* AFB390 800841F0 91070003 */   lbu   $a3, 3($t0)
/* AFB394 800841F4 920C0265 */  lbu   $t4, 0x265($s0)
/* AFB398 800841F8 3C048014 */  lui   $a0, %hi(D_8013DE28) # $a0, 0x8014
/* AFB39C 800841FC 92050262 */  lbu   $a1, 0x262($s0)
/* AFB3A0 80084200 92060263 */  lbu   $a2, 0x263($s0)
/* AFB3A4 80084204 92070264 */  lbu   $a3, 0x264($s0)
/* AFB3A8 80084208 2484DE28 */  addiu $a0, %lo(D_8013DE28) # addiu $a0, $a0, -0x21d8
/* AFB3AC 8008420C 0C00084C */  jal   osSyncPrintf
/* AFB3B0 80084210 AFAC0010 */   sw    $t4, 0x10($sp)
/* AFB3B4 80084214 920D0269 */  lbu   $t5, 0x269($s0)
/* AFB3B8 80084218 3C048014 */  lui   $a0, %hi(D_8013DE5C) # $a0, 0x8014
/* AFB3BC 8008421C 92050266 */  lbu   $a1, 0x266($s0)
/* AFB3C0 80084220 92060267 */  lbu   $a2, 0x267($s0)
/* AFB3C4 80084224 92070268 */  lbu   $a3, 0x268($s0)
/* AFB3C8 80084228 2484DE5C */  addiu $a0, %lo(D_8013DE5C) # addiu $a0, $a0, -0x21a4
/* AFB3CC 8008422C 0C00084C */  jal   osSyncPrintf
/* AFB3D0 80084230 AFAD0010 */   sw    $t5, 0x10($sp)
/* AFB3D4 80084234 920E026D */  lbu   $t6, 0x26d($s0)
/* AFB3D8 80084238 3C048014 */  lui   $a0, %hi(D_8013DE90) # $a0, 0x8014
/* AFB3DC 8008423C 9205026A */  lbu   $a1, 0x26a($s0)
/* AFB3E0 80084240 9206026B */  lbu   $a2, 0x26b($s0)
/* AFB3E4 80084244 9207026C */  lbu   $a3, 0x26c($s0)
/* AFB3E8 80084248 2484DE90 */  addiu $a0, %lo(D_8013DE90) # addiu $a0, $a0, -0x2170
/* AFB3EC 8008424C 0C00084C */  jal   osSyncPrintf
/* AFB3F0 80084250 AFAE0010 */   sw    $t6, 0x10($sp)
/* AFB3F4 80084254 3C048014 */  lui   $a0, %hi(D_8013DEC4) # $a0, 0x8014
/* AFB3F8 80084258 0C00084C */  jal   osSyncPrintf
/* AFB3FC 8008425C 2484DEC4 */   addiu $a0, %lo(D_8013DEC4) # addiu $a0, $a0, -0x213c
/* AFB400 80084260 10000009 */  b     .L80084288
/* AFB404 80084264 8FBF0024 */   lw    $ra, 0x24($sp)
.L80084268:
/* AFB408 80084268 00021400 */  sll   $v0, $v0, 0x10
/* AFB40C 8008426C 00021403 */  sra   $v0, $v0, 0x10
/* AFB410 80084270 00027880 */  sll   $t7, $v0, 2
/* AFB414 80084274 00CF4021 */  addu  $t0, $a2, $t7
/* AFB418 80084278 91030000 */  lbu   $v1, ($t0)
/* AFB41C 8008427C 14A3FFA0 */  bne   $a1, $v1, .L80084100
/* AFB420 80084280 00000000 */   nop   
/* AFB424 80084284 8FBF0024 */  lw    $ra, 0x24($sp)
.L80084288:
/* AFB428 80084288 8FB00020 */  lw    $s0, 0x20($sp)
/* AFB42C 8008428C 27BD0048 */  addiu $sp, $sp, 0x48
/* AFB430 80084290 03E00008 */  jr    $ra
/* AFB434 80084294 00000000 */   nop   

