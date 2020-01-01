.rdata
glabel D_801363E4
    .asciz "../z_actor.c"
    .balign 4

glabel D_801363F4
    .incbin "baserom.z64", 0xBAD594, 0x12
    .balign 4

glabel D_80136408
    .incbin "baserom.z64", 0xBAD5A8, 0x29
    .balign 4

glabel D_80136434
    .incbin "baserom.z64", 0xBAD5D4, 0x23
    .balign 4

glabel D_80136458
    .incbin "baserom.z64", 0xBAD5F8, 0x27
    .balign 4

glabel D_80136480
    .incbin "baserom.z64", 0xBAD620, 0x0F
    .balign 4

glabel D_80136490
    .incbin "baserom.z64", 0xBAD630, 0x0F
    .balign 4

glabel D_801364A0
    .incbin "baserom.z64", 0xBAD640, 0x11
    .balign 4

glabel D_801364B4
    .asciz "../z_actor.c"
    .balign 4

.text
glabel func_8003115C
/* AA82FC 8003115C 27BDFF60 */  addiu $sp, $sp, -0xa0
/* AA8300 80031160 AFBF001C */  sw    $ra, 0x1c($sp)
/* AA8304 80031164 AFB10018 */  sw    $s1, 0x18($sp)
/* AA8308 80031168 AFB00014 */  sw    $s0, 0x14($sp)
/* AA830C 8003116C AFA400A0 */  sw    $a0, 0xa0($sp)
/* AA8310 80031170 AFA500A4 */  sw    $a1, 0xa4($sp)
/* AA8314 80031174 AFA600A8 */  sw    $a2, 0xa8($sp)
/* AA8318 80031178 8C910000 */  lw    $s1, ($a0)
/* AA831C 8003117C 3C068013 */  lui   $a2, %hi(D_801363E4) # $a2, 0x8013
/* AA8320 80031180 24C663E4 */  addiu $a2, %lo(D_801363E4) # addiu $a2, $a2, 0x63e4
/* AA8324 80031184 27A40080 */  addiu $a0, $sp, 0x80
/* AA8328 80031188 24071835 */  li    $a3, 6197
/* AA832C 8003118C 0C031AB1 */  jal   func_800C6AC4
/* AA8330 80031190 02202825 */   move  $a1, $s1
/* AA8334 80031194 8E2302C0 */  lw    $v1, 0x2c0($s1)
/* AA8338 80031198 3C188013 */  lui   $t8, %hi(D_801363F4) # $t8, 0x8013
/* AA833C 8003119C 271863F4 */  addiu $t8, %lo(D_801363F4) # addiu $t8, $t8, 0x63f4
/* AA8340 800311A0 246F0008 */  addiu $t7, $v1, 8
/* AA8344 800311A4 AE2F02C0 */  sw    $t7, 0x2c0($s1)
/* AA8348 800311A8 3C080002 */  lui   $t0, 2
/* AA834C 800311AC AC680000 */  sw    $t0, ($v1)
/* AA8350 800311B0 AC780004 */  sw    $t8, 4($v1)
/* AA8354 800311B4 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AA8358 800311B8 3C0AE700 */  lui   $t2, 0xe700
/* AA835C 800311BC 3C010001 */  lui   $at, 1
/* AA8360 800311C0 24590008 */  addiu $t9, $v0, 8
/* AA8364 800311C4 AE3902D0 */  sw    $t9, 0x2d0($s1)
/* AA8368 800311C8 AC400004 */  sw    $zero, 4($v0)
/* AA836C 800311CC AC4A0000 */  sw    $t2, ($v0)
/* AA8370 800311D0 8FA500A0 */  lw    $a1, 0xa0($sp)
/* AA8374 800311D4 3C0FAF50 */  lui   $t7, (0xAF504365 >> 16) # lui $t7, 0xaf50
/* AA8378 800311D8 3C0EEF00 */  lui   $t6, (0xEF002C30 >> 16) # lui $t6, 0xef00
/* AA837C 800311DC 00A12821 */  addu  $a1, $a1, $at
/* AA8380 800311E0 90AB1CC1 */  lbu   $t3, 0x1cc1($a1)
/* AA8384 800311E4 35CE2C30 */  ori   $t6, (0xEF002C30 & 0xFFFF) # ori $t6, $t6, 0x2c30
/* AA8388 800311E8 35EF4365 */  ori   $t7, (0xAF504365 & 0xFFFF) # ori $t7, $t7, 0x4365
/* AA838C 800311EC 1560001C */  bnez  $t3, .L80031260
/* AA8390 800311F0 3C19FC37 */   lui   $t9, 0xfc37
/* AA8394 800311F4 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AA8398 800311F8 3C0DEF00 */  lui   $t5, (0xEF002C30 >> 16) # lui $t5, 0xef00
/* AA839C 800311FC 3C0E0050 */  lui   $t6, (0x00504365 >> 16) # lui $t6, 0x50
/* AA83A0 80031200 244C0008 */  addiu $t4, $v0, 8
/* AA83A4 80031204 AE2C02D0 */  sw    $t4, 0x2d0($s1)
/* AA83A8 80031208 35CE4365 */  ori   $t6, (0x00504365 & 0xFFFF) # ori $t6, $t6, 0x4365
/* AA83AC 8003120C 35AD2C30 */  ori   $t5, (0xEF002C30 & 0xFFFF) # ori $t5, $t5, 0x2c30
/* AA83B0 80031210 AC4D0000 */  sw    $t5, ($v0)
/* AA83B4 80031214 AC4E0004 */  sw    $t6, 4($v0)
/* AA83B8 80031218 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AA83BC 8003121C 3C18FC11 */  lui   $t8, (0xFC119623 >> 16) # lui $t8, 0xfc11
/* AA83C0 80031220 3C19FF2F */  lui   $t9, (0xFF2F3C6E >> 16) # lui $t9, 0xff2f
/* AA83C4 80031224 244F0008 */  addiu $t7, $v0, 8
/* AA83C8 80031228 AE2F02D0 */  sw    $t7, 0x2d0($s1)
/* AA83CC 8003122C 3739FFFF */  ori   $t9, (0xFF2FFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* AA83D0 80031230 37189623 */  ori   $t8, (0xFC119623 & 0xFFFF) # ori $t8, $t8, 0x9623
/* AA83D4 80031234 AC580000 */  sw    $t8, ($v0)
/* AA83D8 80031238 AC590004 */  sw    $t9, 4($v0)
/* AA83DC 8003123C 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AA83E0 80031240 3C0CFF00 */  lui   $t4, (0xFF0000FF >> 16) # lui $t4, 0xff00
/* AA83E4 80031244 358C00FF */  ori   $t4, (0xFF0000FF & 0xFFFF) # ori $t4, $t4, 0xff
/* AA83E8 80031248 244A0008 */  addiu $t2, $v0, 8
/* AA83EC 8003124C AE2A02D0 */  sw    $t2, 0x2d0($s1)
/* AA83F0 80031250 3C0BFA00 */  lui   $t3, 0xfa00
/* AA83F4 80031254 AC4B0000 */  sw    $t3, ($v0)
/* AA83F8 80031258 10000017 */  b     .L800312B8
/* AA83FC 8003125C AC4C0004 */   sw    $t4, 4($v0)
.L80031260:
/* AA8400 80031260 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AA8404 80031264 3C0A117B */  lui   $t2, (0x117B9FCF >> 16) # lui $t2, 0x117b
/* AA8408 80031268 354A9FCF */  ori   $t2, (0x117B9FCF & 0xFFFF) # ori $t2, $t2, 0x9fcf
/* AA840C 8003126C 244D0008 */  addiu $t5, $v0, 8
/* AA8410 80031270 AE2D02D0 */  sw    $t5, 0x2d0($s1)
/* AA8414 80031274 AC4F0004 */  sw    $t7, 4($v0)
/* AA8418 80031278 AC4E0000 */  sw    $t6, ($v0)
/* AA841C 8003127C 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AA8420 80031280 37393C6E */  ori   $t9, (0xFF2F3C6E & 0xFFFF) # ori $t9, $t9, 0x3c6e
/* AA8424 80031284 3C0D4A4A */  lui   $t5, (0x4A4A4A4A >> 16) # lui $t5, 0x4a4a
/* AA8428 80031288 24580008 */  addiu $t8, $v0, 8
/* AA842C 8003128C AE3802D0 */  sw    $t8, 0x2d0($s1)
/* AA8430 80031290 AC4A0004 */  sw    $t2, 4($v0)
/* AA8434 80031294 AC590000 */  sw    $t9, ($v0)
/* AA8438 80031298 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AA843C 8003129C 3C0CFA00 */  lui   $t4, (0xFA0000FF >> 16) # lui $t4, 0xfa00
/* AA8440 800312A0 358C00FF */  ori   $t4, (0xFA0000FF & 0xFFFF) # ori $t4, $t4, 0xff
/* AA8444 800312A4 244B0008 */  addiu $t3, $v0, 8
/* AA8448 800312A8 AE2B02D0 */  sw    $t3, 0x2d0($s1)
/* AA844C 800312AC 35AD4A4A */  ori   $t5, (0x4A4A4A4A & 0xFFFF) # ori $t5, $t5, 0x4a4a
/* AA8450 800312B0 AC4D0004 */  sw    $t5, 4($v0)
/* AA8454 800312B4 AC4C0000 */  sw    $t4, ($v0)
.L800312B8:
/* AA8458 800312B8 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AA845C 800312BC 3C0FEE00 */  lui   $t7, 0xee00
/* AA8460 800312C0 02202025 */  move  $a0, $s1
/* AA8464 800312C4 244E0008 */  addiu $t6, $v0, 8
/* AA8468 800312C8 AE2E02D0 */  sw    $t6, 0x2d0($s1)
/* AA846C 800312CC AC400004 */  sw    $zero, 4($v0)
/* AA8470 800312D0 AC4F0000 */  sw    $t7, ($v0)
/* AA8474 800312D4 0C00C3EA */  jal   func_80030FA8
/* AA8478 800312D8 AFA50030 */   sw    $a1, 0x30($sp)
/* AA847C 800312DC 8FA900A4 */  lw    $t1, 0xa4($sp)
/* AA8480 800312E0 8E2302C0 */  lw    $v1, 0x2c0($s1)
/* AA8484 800312E4 3C080002 */  lui   $t0, 2
/* AA8488 800312E8 3139FFFF */  andi  $t9, $t1, 0xffff
/* AA848C 800312EC 24780008 */  addiu $t8, $v1, 8
/* AA8490 800312F0 AE3802C0 */  sw    $t8, 0x2c0($s1)
/* AA8494 800312F4 03285025 */  or    $t2, $t9, $t0
/* AA8498 800312F8 AFAA002C */  sw    $t2, 0x2c($sp)
/* AA849C 800312FC 3C0B8013 */  lui   $t3, %hi(D_80136408) # $t3, 0x8013
/* AA84A0 80031300 256B6408 */  addiu $t3, %lo(D_80136408) # addiu $t3, $t3, 0x6408
/* AA84A4 80031304 AC6B0004 */  sw    $t3, 4($v1)
/* AA84A8 80031308 AC6A0000 */  sw    $t2, ($v1)
/* AA84AC 8003130C 8FB000A8 */  lw    $s0, 0xa8($sp)
/* AA84B0 80031310 19200016 */  blez  $t1, .L8003136C
/* AA84B4 80031314 00003025 */   move  $a2, $zero
/* AA84B8 80031318 3C078013 */  lui   $a3, %hi(D_80136434) # $a3, 0x8013
/* AA84BC 8003131C 24E76434 */  addiu $a3, %lo(D_80136434) # addiu $a3, $a3, 0x6434
.L80031320:
/* AA84C0 80031320 8E2302C0 */  lw    $v1, 0x2c0($s1)
/* AA84C4 80031324 30CDFFFF */  andi  $t5, $a2, 0xffff
/* AA84C8 80031328 01A87025 */  or    $t6, $t5, $t0
/* AA84CC 8003132C 246C0008 */  addiu $t4, $v1, 8
/* AA84D0 80031330 AE2C02C0 */  sw    $t4, 0x2c0($s1)
/* AA84D4 80031334 AC670004 */  sw    $a3, 4($v1)
/* AA84D8 80031338 AC6E0000 */  sw    $t6, ($v1)
/* AA84DC 8003133C 8E050000 */  lw    $a1, ($s0)
/* AA84E0 80031340 AFA70028 */  sw    $a3, 0x28($sp)
/* AA84E4 80031344 AFA60094 */  sw    $a2, 0x94($sp)
/* AA84E8 80031348 8FA400A0 */  lw    $a0, 0xa0($sp)
/* AA84EC 8003134C 0C00C2FA */  jal   Actor_Draw
/* AA84F0 80031350 26100004 */   addiu $s0, $s0, 4
/* AA84F4 80031354 8FA60094 */  lw    $a2, 0x94($sp)
/* AA84F8 80031358 8FAF00A4 */  lw    $t7, 0xa4($sp)
/* AA84FC 8003135C 8FA70028 */  lw    $a3, 0x28($sp)
/* AA8500 80031360 24C60001 */  addiu $a2, $a2, 1
/* AA8504 80031364 14CFFFEE */  bne   $a2, $t7, .L80031320
/* AA8508 80031368 3C080002 */   lui   $t0, 2
.L8003136C:
/* AA850C 8003136C 8E2302C0 */  lw    $v1, 0x2c0($s1)
/* AA8510 80031370 3C0A8013 */  lui   $t2, %hi(D_80136458) # $t2, 0x8013
/* AA8514 80031374 254A6458 */  addiu $t2, %lo(D_80136458) # addiu $t2, $t2, 0x6458
/* AA8518 80031378 24780008 */  addiu $t8, $v1, 8
/* AA851C 8003137C AE3802C0 */  sw    $t8, 0x2c0($s1)
/* AA8520 80031380 8FB9002C */  lw    $t9, 0x2c($sp)
/* AA8524 80031384 AC6A0004 */  sw    $t2, 4($v1)
/* AA8528 80031388 3C0E8013 */  lui   $t6, %hi(D_80136480) # $t6, 0x8013
/* AA852C 8003138C AC790000 */  sw    $t9, ($v1)
/* AA8530 80031390 8FAB0030 */  lw    $t3, 0x30($sp)
/* AA8534 80031394 3C0AEF00 */  lui   $t2, (0xEF002C30 >> 16) # lui $t2, 0xef00
/* AA8538 80031398 25CE6480 */  addiu $t6, %lo(D_80136480) # addiu $t6, $t6, 0x6480
/* AA853C 8003139C 916C1CC1 */  lbu   $t4, 0x1cc1($t3)
/* AA8540 800313A0 3C18E700 */  lui   $t8, 0xe700
/* AA8544 800313A4 354A2C30 */  ori   $t2, (0xEF002C30 & 0xFFFF) # ori $t2, $t2, 0x2c30
/* AA8548 800313A8 51800030 */  beql  $t4, $zero, .L8003146C
/* AA854C 800313AC 8E2302C0 */   lw    $v1, 0x2c0($s1)
/* AA8550 800313B0 8E2302C0 */  lw    $v1, 0x2c0($s1)
/* AA8554 800313B4 3C0B0050 */  lui   $t3, (0x00504345 >> 16) # lui $t3, 0x50
/* AA8558 800313B8 356B4345 */  ori   $t3, (0x00504345 & 0xFFFF) # ori $t3, $t3, 0x4345
/* AA855C 800313BC 246D0008 */  addiu $t5, $v1, 8
/* AA8560 800313C0 AE2D02C0 */  sw    $t5, 0x2c0($s1)
/* AA8564 800313C4 AC6E0004 */  sw    $t6, 4($v1)
/* AA8568 800313C8 AC680000 */  sw    $t0, ($v1)
/* AA856C 800313CC 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AA8570 800313D0 3C0EFF2F */  lui   $t6, (0xFF2FFFFF >> 16) # lui $t6, 0xff2f
/* AA8574 800313D4 3C0DFC11 */  lui   $t5, (0xFC119623 >> 16) # lui $t5, 0xfc11
/* AA8578 800313D8 244F0008 */  addiu $t7, $v0, 8
/* AA857C 800313DC AE2F02D0 */  sw    $t7, 0x2d0($s1)
/* AA8580 800313E0 AC400004 */  sw    $zero, 4($v0)
/* AA8584 800313E4 AC580000 */  sw    $t8, ($v0)
/* AA8588 800313E8 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AA858C 800313EC 35AD9623 */  ori   $t5, (0xFC119623 & 0xFFFF) # ori $t5, $t5, 0x9623
/* AA8590 800313F0 35CEFFFF */  ori   $t6, (0xFF2FFFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* AA8594 800313F4 24590008 */  addiu $t9, $v0, 8
/* AA8598 800313F8 AE3902D0 */  sw    $t9, 0x2d0($s1)
/* AA859C 800313FC AC4B0004 */  sw    $t3, 4($v0)
/* AA85A0 80031400 AC4A0000 */  sw    $t2, ($v0)
/* AA85A4 80031404 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AA85A8 80031408 3C19FF00 */  lui   $t9, (0xFF0000FF >> 16) # lui $t9, 0xff00
/* AA85AC 8003140C 373900FF */  ori   $t9, (0xFF0000FF & 0xFFFF) # ori $t9, $t9, 0xff
/* AA85B0 80031410 244C0008 */  addiu $t4, $v0, 8
/* AA85B4 80031414 AE2C02D0 */  sw    $t4, 0x2d0($s1)
/* AA85B8 80031418 AC4E0004 */  sw    $t6, 4($v0)
/* AA85BC 8003141C AC4D0000 */  sw    $t5, ($v0)
/* AA85C0 80031420 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* AA85C4 80031424 3C18FA00 */  lui   $t8, 0xfa00
/* AA85C8 80031428 02202025 */  move  $a0, $s1
/* AA85CC 8003142C 244F0008 */  addiu $t7, $v0, 8
/* AA85D0 80031430 AE2F02D0 */  sw    $t7, 0x2d0($s1)
/* AA85D4 80031434 AC590004 */  sw    $t9, 4($v0)
/* AA85D8 80031438 0C00C3EA */  jal   func_80030FA8
/* AA85DC 8003143C AC580000 */   sw    $t8, ($v0)
/* AA85E0 80031440 8E2302C0 */  lw    $v1, 0x2c0($s1)
/* AA85E4 80031444 3C0B0002 */  lui   $t3, (0x00020001 >> 16) # lui $t3, 2
/* AA85E8 80031448 3C0C8013 */  lui   $t4, %hi(D_80136490) # $t4, 0x8013
/* AA85EC 8003144C 246A0008 */  addiu $t2, $v1, 8
/* AA85F0 80031450 AE2A02C0 */  sw    $t2, 0x2c0($s1)
/* AA85F4 80031454 258C6490 */  addiu $t4, %lo(D_80136490) # addiu $t4, $t4, 0x6490
/* AA85F8 80031458 356B0001 */  ori   $t3, (0x00020001 & 0xFFFF) # ori $t3, $t3, 1
/* AA85FC 8003145C 3C080002 */  lui   $t0, 2
/* AA8600 80031460 AC6B0000 */  sw    $t3, ($v1)
/* AA8604 80031464 AC6C0004 */  sw    $t4, 4($v1)
/* AA8608 80031468 8E2302C0 */  lw    $v1, 0x2c0($s1)
.L8003146C:
/* AA860C 8003146C 3C0E8013 */  lui   $t6, %hi(D_801364A0) # $t6, 0x8013
/* AA8610 80031470 25CE64A0 */  addiu $t6, %lo(D_801364A0) # addiu $t6, $t6, 0x64a0
/* AA8614 80031474 246D0008 */  addiu $t5, $v1, 8
/* AA8618 80031478 AE2D02C0 */  sw    $t5, 0x2c0($s1)
/* AA861C 8003147C 3C068013 */  lui   $a2, %hi(D_801364B4) # $a2, 0x8013
/* AA8620 80031480 24C664B4 */  addiu $a2, %lo(D_801364B4) # addiu $a2, $a2, 0x64b4
/* AA8624 80031484 27A40080 */  addiu $a0, $sp, 0x80
/* AA8628 80031488 02202825 */  move  $a1, $s1
/* AA862C 8003148C 2407188C */  li    $a3, 6284
/* AA8630 80031490 AC6E0004 */  sw    $t6, 4($v1)
/* AA8634 80031494 0C031AD5 */  jal   func_800C6B54
/* AA8638 80031498 AC680000 */   sw    $t0, ($v1)
/* AA863C 8003149C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AA8640 800314A0 8FB00014 */  lw    $s0, 0x14($sp)
/* AA8644 800314A4 8FB10018 */  lw    $s1, 0x18($sp)
/* AA8648 800314A8 03E00008 */  jr    $ra
/* AA864C 800314AC 27BD00A0 */   addiu $sp, $sp, 0xa0

