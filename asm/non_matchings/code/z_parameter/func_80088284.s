glabel func_80088284
/* AFF424 80088284 27BDFEF8 */  addiu $sp, $sp, -0x108
/* AFF428 80088288 AFBF002C */  sw    $ra, 0x2c($sp)
/* AFF42C 8008828C AFA40108 */  sw    $a0, 0x108($sp)
/* AFF430 80088290 8C850000 */  lw    $a1, ($a0)
/* AFF434 80088294 3C068014 */  lui   $a2, %hi(D_8013E288) # $a2, 0x8014
/* AFF438 80088298 24C6E288 */  addiu $a2, %lo(D_8013E288) # addiu $a2, $a2, -0x1d78
/* AFF43C 8008829C 27A400EC */  addiu $a0, $sp, 0xec
/* AFF440 800882A0 24070A5A */  li    $a3, 2650
/* AFF444 800882A4 0C031AB1 */  jal   func_800C6AC4
/* AFF448 800882A8 AFA500FC */   sw    $a1, 0xfc($sp)
/* AFF44C 800882AC 3C0B8016 */  lui   $t3, %hi(gSaveContext) # $t3, 0x8016
/* AFF450 800882B0 256BE660 */  addiu $t3, %lo(gSaveContext) # addiu $t3, $t3, -0x19a0
/* AFF454 800882B4 816F0032 */  lb    $t7, 0x32($t3)
/* AFF458 800882B8 8FA800FC */  lw    $t0, 0xfc($sp)
/* AFF45C 800882BC 51E001EE */  beql  $t7, $zero, .L80088A78
/* AFF460 800882C0 8FAF0108 */   lw    $t7, 0x108($sp)
/* AFF464 800882C4 8578002E */  lh    $t8, 0x2e($t3)
/* AFF468 800882C8 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AFF46C 800882CC 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* AFF470 800882D0 2B0100A1 */  slti  $at, $t8, 0xa1
/* AFF474 800882D4 14200006 */  bnez  $at, .L800882F0
/* AFF478 800882D8 8FAF0108 */   lw    $t7, 0x108($sp)
/* AFF47C 800882DC 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AFF480 800882E0 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* AFF484 800882E4 8D390000 */  lw    $t9, ($t1)
/* AFF488 800882E8 10000003 */  b     .L800882F8
/* AFF48C 800882EC 872A0AF8 */   lh    $t2, 0xaf8($t9)
.L800882F0:
/* AFF490 800882F0 8D2E0000 */  lw    $t6, ($t1)
/* AFF494 800882F4 85CA0AF4 */  lh    $t2, 0xaf4($t6)
.L800882F8:
/* AFF498 800882F8 8DE40000 */  lw    $a0, ($t7)
/* AFF49C 800882FC A7AA0102 */  sh    $t2, 0x102($sp)
/* AFF4A0 80088300 0C025148 */  jal   func_80094520
/* AFF4A4 80088304 AFA800FC */   sw    $t0, 0xfc($sp)
/* AFF4A8 80088308 8FA800FC */  lw    $t0, 0xfc($sp)
/* AFF4AC 8008830C 87AA0102 */  lh    $t2, 0x102($sp)
/* AFF4B0 80088310 3C0DFA00 */  lui   $t5, 0xfa00
/* AFF4B4 80088314 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF4B8 80088318 3C198012 */  lui   $t9, %hi(D_80125A28) # $t9, 0x8012
/* AFF4BC 8008831C 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AFF4C0 80088320 24580008 */  addiu $t8, $v0, 8
/* AFF4C4 80088324 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFF4C8 80088328 AC4D0000 */  sw    $t5, ($v0)
/* AFF4CC 8008832C 3C188012 */  lui   $t8, %hi(D_80125A2C) # $t8, 0x8012
/* AFF4D0 80088330 87185A2C */  lh    $t8, %lo(D_80125A2C)($t8)
/* AFF4D4 80088334 872E5A28 */  lh    $t6, %lo(D_80125A28)($t9)
/* AFF4D8 80088338 8FAC0108 */  lw    $t4, 0x108($sp)
/* AFF4DC 8008833C 331900FF */  andi  $t9, $t8, 0xff
/* AFF4E0 80088340 000E7E00 */  sll   $t7, $t6, 0x18
/* AFF4E4 80088344 00197400 */  sll   $t6, $t9, 0x10
/* AFF4E8 80088348 3C198012 */  lui   $t9, %hi(D_80125A30) # $t9, 0x8012
/* AFF4EC 8008834C 87395A30 */  lh    $t9, %lo(D_80125A30)($t9)
/* AFF4F0 80088350 01EEC025 */  or    $t8, $t7, $t6
/* AFF4F4 80088354 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AFF4F8 80088358 332F00FF */  andi  $t7, $t9, 0xff
/* AFF4FC 8008835C 000F7200 */  sll   $t6, $t7, 8
/* AFF500 80088360 01816021 */  addu  $t4, $t4, $at
/* AFF504 80088364 958F0252 */  lhu   $t7, 0x252($t4)
/* AFF508 80088368 030EC825 */  or    $t9, $t8, $t6
/* AFF50C 8008836C 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AFF510 80088370 31F800FF */  andi  $t8, $t7, 0xff
/* AFF514 80088374 03387025 */  or    $t6, $t9, $t8
/* AFF518 80088378 AC4E0004 */  sw    $t6, 4($v0)
/* AFF51C 8008837C 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF520 80088380 3C186432 */  lui   $t8, (0x643232FF >> 16) # lui $t8, 0x6432
/* AFF524 80088384 371832FF */  ori   $t8, (0x643232FF & 0xFFFF) # ori $t8, $t8, 0x32ff
/* AFF528 80088388 244F0008 */  addiu $t7, $v0, 8
/* AFF52C 8008838C AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AFF530 80088390 3C19FB00 */  lui   $t9, 0xfb00
/* AFF534 80088394 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* AFF538 80088398 AC590000 */  sw    $t9, ($v0)
/* AFF53C 8008839C AC580004 */  sw    $t8, 4($v0)
/* AFF540 800883A0 8D2E0000 */  lw    $t6, ($t1)
/* AFF544 800883A4 8D0402B0 */  lw    $a0, 0x2b0($t0)
/* AFF548 800883A8 24180010 */  li    $t8, 16
/* AFF54C 800883AC 85CF0AF6 */  lh    $t7, 0xaf6($t6)
/* AFF550 800883B0 240E0400 */  li    $t6, 1024
/* AFF554 800883B4 24190008 */  li    $t9, 8
/* AFF558 800883B8 AFAF0010 */  sw    $t7, 0x10($sp)
/* AFF55C 800883BC 240F0400 */  li    $t7, 1024
/* AFF560 800883C0 3C050200 */  lui   $a1, %hi(D_020038C0) # $a1, 0x200
/* AFF564 800883C4 24A538C0 */  addiu $a1, %lo(D_020038C0) # addiu $a1, $a1, 0x38c0
/* AFF568 800883C8 AFAF0024 */  sw    $t7, 0x24($sp)
/* AFF56C 800883CC AFB90018 */  sw    $t9, 0x18($sp)
/* AFF570 800883D0 AFAE0020 */  sw    $t6, 0x20($sp)
/* AFF574 800883D4 AFAC0040 */  sw    $t4, 0x40($sp)
/* AFF578 800883D8 AFB8001C */  sw    $t8, 0x1c($sp)
/* AFF57C 800883DC 24060008 */  li    $a2, 8
/* AFF580 800883E0 24070010 */  li    $a3, 16
/* AFF584 800883E4 AFA800FC */  sw    $t0, 0xfc($sp)
/* AFF588 800883E8 A7AA0102 */  sh    $t2, 0x102($sp)
/* AFF58C 800883EC 0C0210A6 */  jal   func_80084298
/* AFF590 800883F0 AFAA0014 */   sw    $t2, 0x14($sp)
/* AFF594 800883F4 8FA800FC */  lw    $t0, 0xfc($sp)
/* AFF598 800883F8 87AA0102 */  lh    $t2, 0x102($sp)
/* AFF59C 800883FC 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AFF5A0 80088400 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* AFF5A4 80088404 AD0202B0 */  sw    $v0, 0x2b0($t0)
/* AFF5A8 80088408 8D390000 */  lw    $t9, ($t1)
/* AFF5AC 8008840C 3C0B8016 */  lui   $t3, %hi(gSaveContext) # $t3, 0x8016
/* AFF5B0 80088410 256BE660 */  addiu $t3, %lo(gSaveContext) # addiu $t3, $t3, -0x19a0
/* AFF5B4 80088414 87380AF6 */  lh    $t8, 0xaf6($t9)
/* AFF5B8 80088418 856F13F4 */  lh    $t7, 0x13f4($t3)
/* AFF5BC 8008841C 24190010 */  li    $t9, 16
/* AFF5C0 80088420 270E0008 */  addiu $t6, $t8, 8
/* AFF5C4 80088424 AFAE0010 */  sw    $t6, 0x10($sp)
/* AFF5C8 80088428 240E0400 */  li    $t6, 1024
/* AFF5CC 8008842C 24180400 */  li    $t8, 1024
/* AFF5D0 80088430 3C050200 */  lui   $a1, %hi(D_02003940) # $a1, 0x200
/* AFF5D4 80088434 24A53940 */  addiu $a1, %lo(D_02003940) # addiu $a1, $a1, 0x3940
/* AFF5D8 80088438 AFB80020 */  sw    $t8, 0x20($sp)
/* AFF5DC 8008843C AFAE0024 */  sw    $t6, 0x24($sp)
/* AFF5E0 80088440 AFB9001C */  sw    $t9, 0x1c($sp)
/* AFF5E4 80088444 00402025 */  move  $a0, $v0
/* AFF5E8 80088448 24060018 */  li    $a2, 24
/* AFF5EC 8008844C 24070010 */  li    $a3, 16
/* AFF5F0 80088450 AFAA0014 */  sw    $t2, 0x14($sp)
/* AFF5F4 80088454 0C0210A6 */  jal   func_80084298
/* AFF5F8 80088458 AFAF0018 */   sw    $t7, 0x18($sp)
/* AFF5FC 8008845C 8FA800FC */  lw    $t0, 0xfc($sp)
/* AFF600 80088460 87AA0102 */  lh    $t2, 0x102($sp)
/* AFF604 80088464 8FAC0040 */  lw    $t4, 0x40($sp)
/* AFF608 80088468 244F0008 */  addiu $t7, $v0, 8
/* AFF60C 8008846C AD0202B0 */  sw    $v0, 0x2b0($t0)
/* AFF610 80088470 3C180200 */  lui   $t8, %hi(D_020038C0) # $t8, 0x200
/* AFF614 80088474 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AFF618 80088478 271838C0 */  addiu $t8, %lo(D_020038C0) # addiu $t8, $t8, 0x38c0
/* AFF61C 8008847C 3C19FD70 */  lui   $t9, 0xfd70
/* AFF620 80088480 AC590000 */  sw    $t9, ($v0)
/* AFF624 80088484 AC580004 */  sw    $t8, 4($v0)
/* AFF628 80088488 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF62C 8008848C 3C190700 */  lui   $t9, (0x07000130 >> 16) # lui $t9, 0x700
/* AFF630 80088490 37390130 */  ori   $t9, (0x07000130 & 0xFFFF) # ori $t9, $t9, 0x130
/* AFF634 80088494 244E0008 */  addiu $t6, $v0, 8
/* AFF638 80088498 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AFF63C 8008849C 3C0FF570 */  lui   $t7, 0xf570
/* AFF640 800884A0 AC4F0000 */  sw    $t7, ($v0)
/* AFF644 800884A4 AC590004 */  sw    $t9, 4($v0)
/* AFF648 800884A8 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF64C 800884AC 3C05E600 */  lui   $a1, 0xe600
/* AFF650 800884B0 3C0F0703 */  lui   $t7, (0x0703F800 >> 16) # lui $t7, 0x703
/* AFF654 800884B4 24580008 */  addiu $t8, $v0, 8
/* AFF658 800884B8 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFF65C 800884BC AC400004 */  sw    $zero, 4($v0)
/* AFF660 800884C0 AC450000 */  sw    $a1, ($v0)
/* AFF664 800884C4 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF668 800884C8 35EFF800 */  ori   $t7, (0x0703F800 & 0xFFFF) # ori $t7, $t7, 0xf800
/* AFF66C 800884CC 3C06F300 */  lui   $a2, 0xf300
/* AFF670 800884D0 244E0008 */  addiu $t6, $v0, 8
/* AFF674 800884D4 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AFF678 800884D8 AC4F0004 */  sw    $t7, 4($v0)
/* AFF67C 800884DC AC460000 */  sw    $a2, ($v0)
/* AFF680 800884E0 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF684 800884E4 3C07E700 */  lui   $a3, 0xe700
/* AFF688 800884E8 3C0EF568 */  lui   $t6, (0xF5680200 >> 16) # lui $t6, 0xf568
/* AFF68C 800884EC 24590008 */  addiu $t9, $v0, 8
/* AFF690 800884F0 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AFF694 800884F4 AC400004 */  sw    $zero, 4($v0)
/* AFF698 800884F8 AC470000 */  sw    $a3, ($v0)
/* AFF69C 800884FC 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF6A0 80088500 35CE0200 */  ori   $t6, (0xF5680200 & 0xFFFF) # ori $t6, $t6, 0x200
/* AFF6A4 80088504 240F0130 */  li    $t7, 304
/* AFF6A8 80088508 24580008 */  addiu $t8, $v0, 8
/* AFF6AC 8008850C AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFF6B0 80088510 AC4F0004 */  sw    $t7, 4($v0)
/* AFF6B4 80088514 AC4E0000 */  sw    $t6, ($v0)
/* AFF6B8 80088518 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF6BC 8008851C 3C0E0001 */  lui   $t6, (0x0001C03C >> 16) # lui $t6, 1
/* AFF6C0 80088520 35CEC03C */  ori   $t6, (0x0001C03C & 0xFFFF) # ori $t6, $t6, 0xc03c
/* AFF6C4 80088524 24590008 */  addiu $t9, $v0, 8
/* AFF6C8 80088528 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AFF6CC 8008852C 3C18F200 */  lui   $t8, 0xf200
/* AFF6D0 80088530 AC580000 */  sw    $t8, ($v0)
/* AFF6D4 80088534 AC4E0004 */  sw    $t6, 4($v0)
/* AFF6D8 80088538 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF6DC 8008853C 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AFF6E0 80088540 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* AFF6E4 80088544 244F0008 */  addiu $t7, $v0, 8
/* AFF6E8 80088548 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AFF6EC 8008854C 8D390000 */  lw    $t9, ($t1)
/* AFF6F0 80088550 3C0B8016 */  lui   $t3, %hi(gSaveContext) # $t3, 0x8016
/* AFF6F4 80088554 256BE660 */  addiu $t3, %lo(gSaveContext) # addiu $t3, $t3, -0x19a0
/* AFF6F8 80088558 856E13F4 */  lh    $t6, 0x13f4($t3)
/* AFF6FC 8008855C 87380AF6 */  lh    $t8, 0xaf6($t9)
/* AFF700 80088560 3C1FE400 */  lui   $ra, 0xe400
/* AFF704 80088564 24010004 */  li    $at, 4
/* AFF708 80088568 030E7821 */  addu  $t7, $t8, $t6
/* AFF70C 8008856C 25F90010 */  addiu $t9, $t7, 0x10
/* AFF710 80088570 0019C080 */  sll   $t8, $t9, 2
/* AFF714 80088574 330E0FFF */  andi  $t6, $t8, 0xfff
/* AFF718 80088578 000E7B00 */  sll   $t7, $t6, 0xc
/* AFF71C 8008857C 25580010 */  addiu $t8, $t2, 0x10
/* AFF720 80088580 00187080 */  sll   $t6, $t8, 2
/* AFF724 80088584 01FFC825 */  or    $t9, $t7, $ra
/* AFF728 80088588 31CF0FFF */  andi  $t7, $t6, 0xfff
/* AFF72C 8008858C 032FC025 */  or    $t8, $t9, $t7
/* AFF730 80088590 AC580000 */  sw    $t8, ($v0)
/* AFF734 80088594 8D2E0000 */  lw    $t6, ($t1)
/* AFF738 80088598 856F13F4 */  lh    $t7, 0x13f4($t3)
/* AFF73C 8008859C 3C0DFA00 */  lui   $t5, 0xfa00
/* AFF740 800885A0 85D90AF6 */  lh    $t9, 0xaf6($t6)
/* AFF744 800885A4 032FC021 */  addu  $t8, $t9, $t7
/* AFF748 800885A8 270E0008 */  addiu $t6, $t8, 8
/* AFF74C 800885AC 000EC880 */  sll   $t9, $t6, 2
/* AFF750 800885B0 332F0FFF */  andi  $t7, $t9, 0xfff
/* AFF754 800885B4 000A7080 */  sll   $t6, $t2, 2
/* AFF758 800885B8 31D90FFF */  andi  $t9, $t6, 0xfff
/* AFF75C 800885BC 000FC300 */  sll   $t8, $t7, 0xc
/* AFF760 800885C0 03197825 */  or    $t7, $t8, $t9
/* AFF764 800885C4 AC4F0004 */  sw    $t7, 4($v0)
/* AFF768 800885C8 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF76C 800885CC 3C190100 */  lui   $t9, 0x100
/* AFF770 800885D0 3C18E100 */  lui   $t8, 0xe100
/* AFF774 800885D4 244E0008 */  addiu $t6, $v0, 8
/* AFF778 800885D8 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AFF77C 800885DC AC590004 */  sw    $t9, 4($v0)
/* AFF780 800885E0 AC580000 */  sw    $t8, ($v0)
/* AFF784 800885E4 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF788 800885E8 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* AFF78C 800885EC 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* AFF790 800885F0 244F0008 */  addiu $t7, $v0, 8
/* AFF794 800885F4 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AFF798 800885F8 3C0EF100 */  lui   $t6, 0xf100
/* AFF79C 800885FC AC4E0000 */  sw    $t6, ($v0)
/* AFF7A0 80088600 AC580004 */  sw    $t8, 4($v0)
/* AFF7A4 80088604 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF7A8 80088608 3C1855FE */  lui   $t8, (0x55FEF77B >> 16) # lui $t8, 0x55fe
/* AFF7AC 8008860C 3C0EFC30 */  lui   $t6, (0xFC30FE61 >> 16) # lui $t6, 0xfc30
/* AFF7B0 80088610 24590008 */  addiu $t9, $v0, 8
/* AFF7B4 80088614 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AFF7B8 80088618 AC400004 */  sw    $zero, 4($v0)
/* AFF7BC 8008861C AC470000 */  sw    $a3, ($v0)
/* AFF7C0 80088620 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF7C4 80088624 35CEFE61 */  ori   $t6, (0xFC30FE61 & 0xFFFF) # ori $t6, $t6, 0xfe61
/* AFF7C8 80088628 3718F77B */  ori   $t8, (0x55FEF77B & 0xFFFF) # ori $t8, $t8, 0xf77b
/* AFF7CC 8008862C 244F0008 */  addiu $t7, $v0, 8
/* AFF7D0 80088630 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AFF7D4 80088634 AC580004 */  sw    $t8, 4($v0)
/* AFF7D8 80088638 AC4E0000 */  sw    $t6, ($v0)
/* AFF7DC 8008863C 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF7E0 80088640 240E00FF */  li    $t6, 255
/* AFF7E4 80088644 3C0FFB00 */  lui   $t7, 0xfb00
/* AFF7E8 80088648 24590008 */  addiu $t9, $v0, 8
/* AFF7EC 8008864C AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AFF7F0 80088650 AC4E0004 */  sw    $t6, 4($v0)
/* AFF7F4 80088654 AC4F0000 */  sw    $t7, ($v0)
/* AFF7F8 80088658 857813F0 */  lh    $t8, 0x13f0($t3)
/* AFF7FC 8008865C 5701009C */  bnel  $t8, $at, .L800888D0
/* AFF800 80088660 8D0202B0 */   lw    $v0, 0x2b0($t0)
/* AFF804 80088664 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF808 80088668 3C01FAFA */  lui   $at, 0xfafa
/* AFF80C 8008866C 24590008 */  addiu $t9, $v0, 8
/* AFF810 80088670 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AFF814 80088674 AC4D0000 */  sw    $t5, ($v0)
/* AFF818 80088678 958F0252 */  lhu   $t7, 0x252($t4)
/* AFF81C 8008867C 31EE00FF */  andi  $t6, $t7, 0xff
/* AFF820 80088680 01C1C025 */  or    $t8, $t6, $at
/* AFF824 80088684 AC580004 */  sw    $t8, 4($v0)
/* AFF828 80088688 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF82C 8008868C 3C0E0200 */  lui   $t6, %hi(D_02003AC0) # $t6, 0x200
/* AFF830 80088690 25CE3AC0 */  addiu $t6, %lo(D_02003AC0) # addiu $t6, $t6, 0x3ac0
/* AFF834 80088694 24590008 */  addiu $t9, $v0, 8
/* AFF838 80088698 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AFF83C 8008869C 3C0FFD90 */  lui   $t7, 0xfd90
/* AFF840 800886A0 AC4F0000 */  sw    $t7, ($v0)
/* AFF844 800886A4 AC4E0004 */  sw    $t6, 4($v0)
/* AFF848 800886A8 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF84C 800886AC 3C0F0700 */  lui   $t7, 0x700
/* AFF850 800886B0 3C19F590 */  lui   $t9, 0xf590
/* AFF854 800886B4 24580008 */  addiu $t8, $v0, 8
/* AFF858 800886B8 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFF85C 800886BC AC4F0004 */  sw    $t7, 4($v0)
/* AFF860 800886C0 AC590000 */  sw    $t9, ($v0)
/* AFF864 800886C4 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF868 800886C8 3C190703 */  lui   $t9, (0x0703F800 >> 16) # lui $t9, 0x703
/* AFF86C 800886CC 3739F800 */  ori   $t9, (0x0703F800 & 0xFFFF) # ori $t9, $t9, 0xf800
/* AFF870 800886D0 244E0008 */  addiu $t6, $v0, 8
/* AFF874 800886D4 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AFF878 800886D8 AC400004 */  sw    $zero, 4($v0)
/* AFF87C 800886DC AC450000 */  sw    $a1, ($v0)
/* AFF880 800886E0 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF884 800886E4 2545000A */  addiu $a1, $t2, 0xa
/* AFF888 800886E8 00052880 */  sll   $a1, $a1, 2
/* AFF88C 800886EC 24580008 */  addiu $t8, $v0, 8
/* AFF890 800886F0 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFF894 800886F4 AC590004 */  sw    $t9, 4($v0)
/* AFF898 800886F8 AC460000 */  sw    $a2, ($v0)
/* AFF89C 800886FC 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF8A0 80088700 3C18F580 */  lui   $t8, (0xF5800200 >> 16) # lui $t8, 0xf580
/* AFF8A4 80088704 37180200 */  ori   $t8, (0xF5800200 & 0xFFFF) # ori $t8, $t8, 0x200
/* AFF8A8 80088708 244F0008 */  addiu $t7, $v0, 8
/* AFF8AC 8008870C AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AFF8B0 80088710 AC400004 */  sw    $zero, 4($v0)
/* AFF8B4 80088714 AC470000 */  sw    $a3, ($v0)
/* AFF8B8 80088718 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF8BC 8008871C 3C0FF200 */  lui   $t7, 0xf200
/* AFF8C0 80088720 30A50FFF */  andi  $a1, $a1, 0xfff
/* AFF8C4 80088724 244E0008 */  addiu $t6, $v0, 8
/* AFF8C8 80088728 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AFF8CC 8008872C AC400004 */  sw    $zero, 4($v0)
/* AFF8D0 80088730 AC580000 */  sw    $t8, ($v0)
/* AFF8D4 80088734 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF8D8 80088738 3C0E0003 */  lui   $t6, (0x0003C03C >> 16) # lui $t6, 3
/* AFF8DC 8008873C 35CEC03C */  ori   $t6, (0x0003C03C & 0xFFFF) # ori $t6, $t6, 0xc03c
/* AFF8E0 80088740 24590008 */  addiu $t9, $v0, 8
/* AFF8E4 80088744 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AFF8E8 80088748 AC4E0004 */  sw    $t6, 4($v0)
/* AFF8EC 8008874C AC4F0000 */  sw    $t7, ($v0)
/* AFF8F0 80088750 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF8F4 80088754 25460003 */  addiu $a2, $t2, 3
/* AFF8F8 80088758 00063080 */  sll   $a2, $a2, 2
/* AFF8FC 8008875C 24580008 */  addiu $t8, $v0, 8
/* AFF900 80088760 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFF904 80088764 8D390000 */  lw    $t9, ($t1)
/* AFF908 80088768 816E0033 */  lb    $t6, 0x33($t3)
/* AFF90C 8008876C 30C60FFF */  andi  $a2, $a2, 0xfff
/* AFF910 80088770 872F0AFA */  lh    $t7, 0xafa($t9)
/* AFF914 80088774 3C0AF100 */  lui   $t2, 0xf100
/* AFF918 80088778 01EEC021 */  addu  $t8, $t7, $t6
/* AFF91C 8008877C 0018C880 */  sll   $t9, $t8, 2
/* AFF920 80088780 332F0FFF */  andi  $t7, $t9, 0xfff
/* AFF924 80088784 000F7300 */  sll   $t6, $t7, 0xc
/* AFF928 80088788 01DFC025 */  or    $t8, $t6, $ra
/* AFF92C 8008878C 0305C825 */  or    $t9, $t8, $a1
/* AFF930 80088790 AC590000 */  sw    $t9, ($v0)
/* AFF934 80088794 8D2F0000 */  lw    $t7, ($t1)
/* AFF938 80088798 85EE0AFA */  lh    $t6, 0xafa($t7)
/* AFF93C 8008879C 000EC080 */  sll   $t8, $t6, 2
/* AFF940 800887A0 33190FFF */  andi  $t9, $t8, 0xfff
/* AFF944 800887A4 00197B00 */  sll   $t7, $t9, 0xc
/* AFF948 800887A8 01E67025 */  or    $t6, $t7, $a2
/* AFF94C 800887AC AC4E0004 */  sw    $t6, 4($v0)
/* AFF950 800887B0 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF954 800887B4 3C19E100 */  lui   $t9, 0xe100
/* AFF958 800887B8 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* AFF95C 800887BC 24580008 */  addiu $t8, $v0, 8
/* AFF960 800887C0 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFF964 800887C4 AC400004 */  sw    $zero, 4($v0)
/* AFF968 800887C8 AC590000 */  sw    $t9, ($v0)
/* AFF96C 800887CC 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF970 800887D0 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* AFF974 800887D4 244F0008 */  addiu $t7, $v0, 8
/* AFF978 800887D8 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AFF97C 800887DC AC4E0004 */  sw    $t6, 4($v0)
/* AFF980 800887E0 AC4A0000 */  sw    $t2, ($v0)
/* AFF984 800887E4 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF988 800887E8 24580008 */  addiu $t8, $v0, 8
/* AFF98C 800887EC AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFF990 800887F0 AC400004 */  sw    $zero, 4($v0)
/* AFF994 800887F4 AC470000 */  sw    $a3, ($v0)
/* AFF998 800887F8 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF99C 800887FC 24590008 */  addiu $t9, $v0, 8
/* AFF9A0 80088800 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AFF9A4 80088804 AC4D0000 */  sw    $t5, ($v0)
/* AFF9A8 80088808 8D230000 */  lw    $v1, ($t1)
/* AFF9AC 8008880C 846F0798 */  lh    $t7, 0x798($v1)
/* AFF9B0 80088810 31EE00FF */  andi  $t6, $t7, 0xff
/* AFF9B4 80088814 846F0794 */  lh    $t7, 0x794($v1)
/* AFF9B8 80088818 000EC200 */  sll   $t8, $t6, 8
/* AFF9BC 8008881C 000F7600 */  sll   $t6, $t7, 0x18
/* AFF9C0 80088820 846F0796 */  lh    $t7, 0x796($v1)
/* AFF9C4 80088824 030EC825 */  or    $t9, $t8, $t6
/* AFF9C8 80088828 31F800FF */  andi  $t8, $t7, 0xff
/* AFF9CC 8008882C 00187400 */  sll   $t6, $t8, 0x10
/* AFF9D0 80088830 95980252 */  lhu   $t8, 0x252($t4)
/* AFF9D4 80088834 032E7825 */  or    $t7, $t9, $t6
/* AFF9D8 80088838 331900FF */  andi  $t9, $t8, 0xff
/* AFF9DC 8008883C 01F97025 */  or    $t6, $t7, $t9
/* AFF9E0 80088840 AC4E0004 */  sw    $t6, 4($v0)
/* AFF9E4 80088844 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFF9E8 80088848 24580008 */  addiu $t8, $v0, 8
/* AFF9EC 8008884C AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFF9F0 80088850 8D2F0000 */  lw    $t7, ($t1)
/* AFF9F4 80088854 856E13F8 */  lh    $t6, 0x13f8($t3)
/* AFF9F8 80088858 85F90AFA */  lh    $t9, 0xafa($t7)
/* AFF9FC 8008885C 032EC021 */  addu  $t8, $t9, $t6
/* AFFA00 80088860 00187880 */  sll   $t7, $t8, 2
/* AFFA04 80088864 31F90FFF */  andi  $t9, $t7, 0xfff
/* AFFA08 80088868 00197300 */  sll   $t6, $t9, 0xc
/* AFFA0C 8008886C 01DFC025 */  or    $t8, $t6, $ra
/* AFFA10 80088870 03057825 */  or    $t7, $t8, $a1
/* AFFA14 80088874 AC4F0000 */  sw    $t7, ($v0)
/* AFFA18 80088878 8D390000 */  lw    $t9, ($t1)
/* AFFA1C 8008887C 872E0AFA */  lh    $t6, 0xafa($t9)
/* AFFA20 80088880 000EC080 */  sll   $t8, $t6, 2
/* AFFA24 80088884 330F0FFF */  andi  $t7, $t8, 0xfff
/* AFFA28 80088888 000FCB00 */  sll   $t9, $t7, 0xc
/* AFFA2C 8008888C 03267025 */  or    $t6, $t9, $a2
/* AFFA30 80088890 AC4E0004 */  sw    $t6, 4($v0)
/* AFFA34 80088894 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFFA38 80088898 3C0FE100 */  lui   $t7, 0xe100
/* AFFA3C 8008889C 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* AFFA40 800888A0 24580008 */  addiu $t8, $v0, 8
/* AFFA44 800888A4 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFFA48 800888A8 AC400004 */  sw    $zero, 4($v0)
/* AFFA4C 800888AC AC4F0000 */  sw    $t7, ($v0)
/* AFFA50 800888B0 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFFA54 800888B4 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* AFFA58 800888B8 24590008 */  addiu $t9, $v0, 8
/* AFFA5C 800888BC AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AFFA60 800888C0 AC4E0004 */  sw    $t6, 4($v0)
/* AFFA64 800888C4 1000006B */  b     .L80088A74
/* AFFA68 800888C8 AC4A0000 */   sw    $t2, ($v0)
/* AFFA6C 800888CC 8D0202B0 */  lw    $v0, 0x2b0($t0)
.L800888D0:
/* AFFA70 800888D0 24580008 */  addiu $t8, $v0, 8
/* AFFA74 800888D4 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFFA78 800888D8 AC4D0000 */  sw    $t5, ($v0)
/* AFFA7C 800888DC 8D230000 */  lw    $v1, ($t1)
/* AFFA80 800888E0 846F0798 */  lh    $t7, 0x798($v1)
/* AFFA84 800888E4 31F900FF */  andi  $t9, $t7, 0xff
/* AFFA88 800888E8 846F0794 */  lh    $t7, 0x794($v1)
/* AFFA8C 800888EC 00197200 */  sll   $t6, $t9, 8
/* AFFA90 800888F0 000FCE00 */  sll   $t9, $t7, 0x18
/* AFFA94 800888F4 846F0796 */  lh    $t7, 0x796($v1)
/* AFFA98 800888F8 01D9C025 */  or    $t8, $t6, $t9
/* AFFA9C 800888FC 31EE00FF */  andi  $t6, $t7, 0xff
/* AFFAA0 80088900 000ECC00 */  sll   $t9, $t6, 0x10
/* AFFAA4 80088904 958E0252 */  lhu   $t6, 0x252($t4)
/* AFFAA8 80088908 03197825 */  or    $t7, $t8, $t9
/* AFFAAC 8008890C 31D800FF */  andi  $t8, $t6, 0xff
/* AFFAB0 80088910 01F8C825 */  or    $t9, $t7, $t8
/* AFFAB4 80088914 AC590004 */  sw    $t9, 4($v0)
/* AFFAB8 80088918 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFFABC 8008891C 3C180200 */  lui   $t8, %hi(D_02003AC0) # $t8, 0x200
/* AFFAC0 80088920 27183AC0 */  addiu $t8, %lo(D_02003AC0) # addiu $t8, $t8, 0x3ac0
/* AFFAC4 80088924 244E0008 */  addiu $t6, $v0, 8
/* AFFAC8 80088928 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AFFACC 8008892C 3C0FFD90 */  lui   $t7, 0xfd90
/* AFFAD0 80088930 AC4F0000 */  sw    $t7, ($v0)
/* AFFAD4 80088934 AC580004 */  sw    $t8, 4($v0)
/* AFFAD8 80088938 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFFADC 8008893C 3C0F0700 */  lui   $t7, 0x700
/* AFFAE0 80088940 3C0EF590 */  lui   $t6, 0xf590
/* AFFAE4 80088944 24590008 */  addiu $t9, $v0, 8
/* AFFAE8 80088948 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AFFAEC 8008894C AC4F0004 */  sw    $t7, 4($v0)
/* AFFAF0 80088950 AC4E0000 */  sw    $t6, ($v0)
/* AFFAF4 80088954 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFFAF8 80088958 3C0E0703 */  lui   $t6, (0x0703F800 >> 16) # lui $t6, 0x703
/* AFFAFC 8008895C 35CEF800 */  ori   $t6, (0x0703F800 & 0xFFFF) # ori $t6, $t6, 0xf800
/* AFFB00 80088960 24580008 */  addiu $t8, $v0, 8
/* AFFB04 80088964 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFFB08 80088968 AC400004 */  sw    $zero, 4($v0)
/* AFFB0C 8008896C AC450000 */  sw    $a1, ($v0)
/* AFFB10 80088970 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFFB14 80088974 24590008 */  addiu $t9, $v0, 8
/* AFFB18 80088978 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AFFB1C 8008897C AC4E0004 */  sw    $t6, 4($v0)
/* AFFB20 80088980 AC460000 */  sw    $a2, ($v0)
/* AFFB24 80088984 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFFB28 80088988 3C19F580 */  lui   $t9, (0xF5800200 >> 16) # lui $t9, 0xf580
/* AFFB2C 8008898C 37390200 */  ori   $t9, (0xF5800200 & 0xFFFF) # ori $t9, $t9, 0x200
/* AFFB30 80088990 244F0008 */  addiu $t7, $v0, 8
/* AFFB34 80088994 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AFFB38 80088998 AC400004 */  sw    $zero, 4($v0)
/* AFFB3C 8008899C AC470000 */  sw    $a3, ($v0)
/* AFFB40 800889A0 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFFB44 800889A4 3C0FF200 */  lui   $t7, 0xf200
/* AFFB48 800889A8 24580008 */  addiu $t8, $v0, 8
/* AFFB4C 800889AC AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFFB50 800889B0 AC400004 */  sw    $zero, 4($v0)
/* AFFB54 800889B4 AC590000 */  sw    $t9, ($v0)
/* AFFB58 800889B8 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFFB5C 800889BC 3C180003 */  lui   $t8, (0x0003C03C >> 16) # lui $t8, 3
/* AFFB60 800889C0 3718C03C */  ori   $t8, (0x0003C03C & 0xFFFF) # ori $t8, $t8, 0xc03c
/* AFFB64 800889C4 244E0008 */  addiu $t6, $v0, 8
/* AFFB68 800889C8 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AFFB6C 800889CC AC580004 */  sw    $t8, 4($v0)
/* AFFB70 800889D0 AC4F0000 */  sw    $t7, ($v0)
/* AFFB74 800889D4 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFFB78 800889D8 24590008 */  addiu $t9, $v0, 8
/* AFFB7C 800889DC AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AFFB80 800889E0 8D2E0000 */  lw    $t6, ($t1)
/* AFFB84 800889E4 81780033 */  lb    $t8, 0x33($t3)
/* AFFB88 800889E8 85CF0AFA */  lh    $t7, 0xafa($t6)
/* AFFB8C 800889EC 01F8C821 */  addu  $t9, $t7, $t8
/* AFFB90 800889F0 00197080 */  sll   $t6, $t9, 2
/* AFFB94 800889F4 31CF0FFF */  andi  $t7, $t6, 0xfff
/* AFFB98 800889F8 000FC300 */  sll   $t8, $t7, 0xc
/* AFFB9C 800889FC 254E000A */  addiu $t6, $t2, 0xa
/* AFFBA0 80088A00 000E7880 */  sll   $t7, $t6, 2
/* AFFBA4 80088A04 031FC825 */  or    $t9, $t8, $ra
/* AFFBA8 80088A08 31F80FFF */  andi  $t8, $t7, 0xfff
/* AFFBAC 80088A0C 03387025 */  or    $t6, $t9, $t8
/* AFFBB0 80088A10 AC4E0000 */  sw    $t6, ($v0)
/* AFFBB4 80088A14 8D2F0000 */  lw    $t7, ($t1)
/* AFFBB8 80088A18 85F90AFA */  lh    $t9, 0xafa($t7)
/* AFFBBC 80088A1C 0019C080 */  sll   $t8, $t9, 2
/* AFFBC0 80088A20 330E0FFF */  andi  $t6, $t8, 0xfff
/* AFFBC4 80088A24 25590003 */  addiu $t9, $t2, 3
/* AFFBC8 80088A28 0019C080 */  sll   $t8, $t9, 2
/* AFFBCC 80088A2C 000E7B00 */  sll   $t7, $t6, 0xc
/* AFFBD0 80088A30 330E0FFF */  andi  $t6, $t8, 0xfff
/* AFFBD4 80088A34 01EEC825 */  or    $t9, $t7, $t6
/* AFFBD8 80088A38 AC590004 */  sw    $t9, 4($v0)
/* AFFBDC 80088A3C 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFFBE0 80088A40 3C0FE100 */  lui   $t7, 0xe100
/* AFFBE4 80088A44 3C19F100 */  lui   $t9, 0xf100
/* AFFBE8 80088A48 24580008 */  addiu $t8, $v0, 8
/* AFFBEC 80088A4C AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AFFBF0 80088A50 AC400004 */  sw    $zero, 4($v0)
/* AFFBF4 80088A54 AC4F0000 */  sw    $t7, ($v0)
/* AFFBF8 80088A58 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AFFBFC 80088A5C 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* AFFC00 80088A60 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* AFFC04 80088A64 244E0008 */  addiu $t6, $v0, 8
/* AFFC08 80088A68 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AFFC0C 80088A6C AC580004 */  sw    $t8, 4($v0)
/* AFFC10 80088A70 AC590000 */  sw    $t9, ($v0)
.L80088A74:
/* AFFC14 80088A74 8FAF0108 */  lw    $t7, 0x108($sp)
.L80088A78:
/* AFFC18 80088A78 3C068014 */  lui   $a2, %hi(D_8013E29C) # $a2, 0x8014
/* AFFC1C 80088A7C 24C6E29C */  addiu $a2, %lo(D_8013E29C) # addiu $a2, $a2, -0x1d64
/* AFFC20 80088A80 27A400EC */  addiu $a0, $sp, 0xec
/* AFFC24 80088A84 24070AAB */  li    $a3, 2731
/* AFFC28 80088A88 0C031AD5 */  jal   func_800C6B54
/* AFFC2C 80088A8C 8DE50000 */   lw    $a1, ($t7)
/* AFFC30 80088A90 8FBF002C */  lw    $ra, 0x2c($sp)
/* AFFC34 80088A94 27BD0108 */  addiu $sp, $sp, 0x108
/* AFFC38 80088A98 03E00008 */  jr    $ra
/* AFFC3C 80088A9C 00000000 */   nop   

