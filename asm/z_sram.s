.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800A81A0
/* B1F340 800A81A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1F344 800A81A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1F348 800A81A8 3C048016 */  lui   $a0, %hi(gSaveContext+0x1c) # $a0, 0x8016
/* B1F34C 800A81AC 2484E67C */  addiu $a0, %lo(gSaveContext+0x1c) # addiu $a0, $a0, -0x1984
/* B1F350 800A81B0 0C001114 */  jal   bzero
/* B1F354 800A81B4 24051338 */   li    $a1, 4920
/* B1F358 800A81B8 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B1F35C 800A81BC 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* B1F360 800A81C0 3C0F8013 */  lui   $t7, %hi(D_8012A4F8) # $t7, 0x8013
/* B1F364 800A81C4 25EFA4F8 */  addiu $t7, %lo(D_8012A4F8) # addiu $t7, $t7, -0x5b08
/* B1F368 800A81C8 3C0E8016 */  lui   $t6, %hi(gSaveContext+0x1c) # $t6, 0x8016
/* B1F36C 800A81CC AC400014 */  sw    $zero, 0x14($v0)
/* B1F370 800A81D0 AC400018 */  sw    $zero, 0x18($v0)
/* B1F374 800A81D4 25CEE67C */  addiu $t6, %lo(gSaveContext+0x1c) # addiu $t6, $t6, -0x1984
/* B1F378 800A81D8 25E80048 */  addiu $t0, $t7, 0x48
.L800A81DC:
/* B1F37C 800A81DC 8DF90000 */  lw    $t9, ($t7)
/* B1F380 800A81E0 25EF000C */  addiu $t7, $t7, 0xc
/* B1F384 800A81E4 25CE000C */  addiu $t6, $t6, 0xc
/* B1F388 800A81E8 ADD9FFF4 */  sw    $t9, -0xc($t6)
/* B1F38C 800A81EC 8DF8FFF8 */  lw    $t8, -8($t7)
/* B1F390 800A81F0 ADD8FFF8 */  sw    $t8, -8($t6)
/* B1F394 800A81F4 8DF9FFFC */  lw    $t9, -4($t7)
/* B1F398 800A81F8 15E8FFF8 */  bne   $t7, $t0, .L800A81DC
/* B1F39C 800A81FC ADD9FFFC */   sw    $t9, -4($t6)
/* B1F3A0 800A8200 8DF90000 */  lw    $t9, ($t7)
/* B1F3A4 800A8204 3C0A8013 */  lui   $t2, %hi(D_8012A544) # $t2, 0x8013
/* B1F3A8 800A8208 254AA544 */  addiu $t2, %lo(D_8012A544) # addiu $t2, $t2, -0x5abc
/* B1F3AC 800A820C ADD90000 */  sw    $t9, ($t6)
/* B1F3B0 800A8210 8D4C0000 */  lw    $t4, ($t2)
/* B1F3B4 800A8214 3C098016 */  lui   $t1, %hi(gSaveContext+0x68) # $t1, 0x8016
/* B1F3B8 800A8218 2529E6C8 */  addiu $t1, %lo(gSaveContext+0x68) # addiu $t1, $t1, -0x1938
/* B1F3BC 800A821C A92C0000 */  swl   $t4, ($t1)
/* B1F3C0 800A8220 8D4B0004 */  lw    $t3, 4($t2)
/* B1F3C4 800A8224 B92C0003 */  swr   $t4, 3($t1)
/* B1F3C8 800A8228 954C0008 */  lhu   $t4, 8($t2)
/* B1F3CC 800A822C 3C088013 */  lui   $t0, %hi(D_8012A550) # $t0, 0x8013
/* B1F3D0 800A8230 2508A550 */  addiu $t0, %lo(D_8012A550) # addiu $t0, $t0, -0x5ab0
/* B1F3D4 800A8234 3C0D8016 */  lui   $t5, %hi(gSaveContext+0x74) # $t5, 0x8016
/* B1F3D8 800A8238 A92B0004 */  swl   $t3, 4($t1)
/* B1F3DC 800A823C 25ADE6D4 */  addiu $t5, %lo(gSaveContext+0x74) # addiu $t5, $t5, -0x192c
/* B1F3E0 800A8240 25180060 */  addiu $t8, $t0, 0x60
/* B1F3E4 800A8244 B92B0007 */  swr   $t3, 7($t1)
/* B1F3E8 800A8248 A52C0008 */  sh    $t4, 8($t1)
.L800A824C:
/* B1F3EC 800A824C 8D0E0000 */  lw    $t6, ($t0)
/* B1F3F0 800A8250 2508000C */  addiu $t0, $t0, 0xc
/* B1F3F4 800A8254 25AD000C */  addiu $t5, $t5, 0xc
/* B1F3F8 800A8258 ADAEFFF4 */  sw    $t6, -0xc($t5)
/* B1F3FC 800A825C 8D0FFFF8 */  lw    $t7, -8($t0)
/* B1F400 800A8260 ADAFFFF8 */  sw    $t7, -8($t5)
/* B1F404 800A8264 8D0EFFFC */  lw    $t6, -4($t0)
/* B1F408 800A8268 1518FFF8 */  bne   $t0, $t8, .L800A824C
/* B1F40C 800A826C ADAEFFFC */   sw    $t6, -4($t5)
/* B1F410 800A8270 3C198013 */  lui   $t9, %hi(D_8012A5B0) # $t9, 0x8013
/* B1F414 800A8274 9739A5B0 */  lhu   $t9, %lo(D_8012A5B0)($t9)
/* B1F418 800A8278 3C018016 */  lui   $at, %hi(gSaveContext+0x1352) # $at, 0x8016
/* B1F41C 800A827C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1F420 800A8280 A439F9B2 */  sh    $t9, %lo(gSaveContext+0x1352)($at)
/* B1F424 800A8284 24090051 */  li    $t1, 81
/* B1F428 800A8288 240AF8D0 */  li    $t2, -1840
/* B1F42C 800A828C 240B0048 */  li    $t3, 72
/* B1F430 800A8290 240C1579 */  li    $t4, 5497
/* B1F434 800A8294 24189527 */  li    $t8, -27353
/* B1F438 800A8298 24080001 */  li    $t0, 1
/* B1F43C 800A829C 3C0D4000 */  lui   $t5, 0x4000
/* B1F440 800A82A0 A4491348 */  sh    $t1, 0x1348($v0)
/* B1F444 800A82A4 A44A134A */  sh    $t2, 0x134a($v0)
/* B1F448 800A82A8 A44B134C */  sh    $t3, 0x134c($v0)
/* B1F44C 800A82AC A44C134E */  sh    $t4, 0x134e($v0)
/* B1F450 800A82B0 A4581350 */  sh    $t8, 0x1350($v0)
/* B1F454 800A82B4 A0400032 */  sb    $zero, 0x32($v0)
/* B1F458 800A82B8 A4480F32 */  sh    $t0, 0xf32($v0)
/* B1F45C 800A82BC AC4D0164 */  sw    $t5, 0x164($v0)
/* B1F460 800A82C0 03E00008 */  jr    $ra
/* B1F464 800A82C4 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_800A82C8
/* B1F468 800A82C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1F46C 800A82CC AFBF0014 */  sw    $ra, 0x14($sp)
/* B1F470 800A82D0 3C048016 */  lui   $a0, %hi(gSaveContext+0x1c) # $a0, 0x8016
/* B1F474 800A82D4 2484E67C */  addiu $a0, %lo(gSaveContext+0x1c) # addiu $a0, $a0, -0x1984
/* B1F478 800A82D8 0C001114 */  jal   bzero
/* B1F47C 800A82DC 24051338 */   li    $a1, 4920
/* B1F480 800A82E0 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B1F484 800A82E4 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* B1F488 800A82E8 3C0F8013 */  lui   $t7, %hi(D_8012A5B4) # $t7, 0x8013
/* B1F48C 800A82EC 25EFA5B4 */  addiu $t7, %lo(D_8012A5B4) # addiu $t7, $t7, -0x5a4c
/* B1F490 800A82F0 3C0E8016 */  lui   $t6, %hi(gSaveContext+0x1c) # $t6, 0x8016
/* B1F494 800A82F4 AC400014 */  sw    $zero, 0x14($v0)
/* B1F498 800A82F8 AC400018 */  sw    $zero, 0x18($v0)
/* B1F49C 800A82FC 25CEE67C */  addiu $t6, %lo(gSaveContext+0x1c) # addiu $t6, $t6, -0x1984
/* B1F4A0 800A8300 25E80048 */  addiu $t0, $t7, 0x48
.L800A8304:
/* B1F4A4 800A8304 8DF90000 */  lw    $t9, ($t7)
/* B1F4A8 800A8308 25EF000C */  addiu $t7, $t7, 0xc
/* B1F4AC 800A830C 25CE000C */  addiu $t6, $t6, 0xc
/* B1F4B0 800A8310 ADD9FFF4 */  sw    $t9, -0xc($t6)
/* B1F4B4 800A8314 8DF8FFF8 */  lw    $t8, -8($t7)
/* B1F4B8 800A8318 ADD8FFF8 */  sw    $t8, -8($t6)
/* B1F4BC 800A831C 8DF9FFFC */  lw    $t9, -4($t7)
/* B1F4C0 800A8320 15E8FFF8 */  bne   $t7, $t0, .L800A8304
/* B1F4C4 800A8324 ADD9FFFC */   sw    $t9, -4($t6)
/* B1F4C8 800A8328 8DF90000 */  lw    $t9, ($t7)
/* B1F4CC 800A832C 3C0A8013 */  lui   $t2, %hi(D_8012A600) # $t2, 0x8013
/* B1F4D0 800A8330 254AA600 */  addiu $t2, %lo(D_8012A600) # addiu $t2, $t2, -0x5a00
/* B1F4D4 800A8334 ADD90000 */  sw    $t9, ($t6)
/* B1F4D8 800A8338 8D4C0000 */  lw    $t4, ($t2)
/* B1F4DC 800A833C 3C098016 */  lui   $t1, %hi(gSaveContext+0x68) # $t1, 0x8016
/* B1F4E0 800A8340 2529E6C8 */  addiu $t1, %lo(gSaveContext+0x68) # addiu $t1, $t1, -0x1938
/* B1F4E4 800A8344 A92C0000 */  swl   $t4, ($t1)
/* B1F4E8 800A8348 8D4B0004 */  lw    $t3, 4($t2)
/* B1F4EC 800A834C B92C0003 */  swr   $t4, 3($t1)
/* B1F4F0 800A8350 954C0008 */  lhu   $t4, 8($t2)
/* B1F4F4 800A8354 3C088013 */  lui   $t0, %hi(D_8012A60C) # $t0, 0x8013
/* B1F4F8 800A8358 2508A60C */  addiu $t0, %lo(D_8012A60C) # addiu $t0, $t0, -0x59f4
/* B1F4FC 800A835C 3C0D8016 */  lui   $t5, %hi(gSaveContext+0x74) # $t5, 0x8016
/* B1F500 800A8360 A92B0004 */  swl   $t3, 4($t1)
/* B1F504 800A8364 25ADE6D4 */  addiu $t5, %lo(gSaveContext+0x74) # addiu $t5, $t5, -0x192c
/* B1F508 800A8368 25180060 */  addiu $t8, $t0, 0x60
/* B1F50C 800A836C B92B0007 */  swr   $t3, 7($t1)
/* B1F510 800A8370 A52C0008 */  sh    $t4, 8($t1)
.L800A8374:
/* B1F514 800A8374 8D0E0000 */  lw    $t6, ($t0)
/* B1F518 800A8378 2508000C */  addiu $t0, $t0, 0xc
/* B1F51C 800A837C 25AD000C */  addiu $t5, $t5, 0xc
/* B1F520 800A8380 ADAEFFF4 */  sw    $t6, -0xc($t5)
/* B1F524 800A8384 8D0FFFF8 */  lw    $t7, -8($t0)
/* B1F528 800A8388 ADAFFFF8 */  sw    $t7, -8($t5)
/* B1F52C 800A838C 8D0EFFFC */  lw    $t6, -4($t0)
/* B1F530 800A8390 1518FFF8 */  bne   $t0, $t8, .L800A8374
/* B1F534 800A8394 ADAEFFFC */   sw    $t6, -4($t5)
/* B1F538 800A8398 3C198013 */  lui   $t9, %hi(D_8012A66C) # $t9, 0x8013
/* B1F53C 800A839C 9739A66C */  lhu   $t9, %lo(D_8012A66C)($t9)
/* B1F540 800A83A0 3C018016 */  lui   $at, %hi(gSaveContext+0x1352) # $at, 0x8016
/* B1F544 800A83A4 240AF8D0 */  li    $t2, -1840
/* B1F548 800A83A8 A439F9B2 */  sh    $t9, %lo(gSaveContext+0x1352)($at)
/* B1F54C 800A83AC A44A134A */  sh    $t2, 0x134a($v0)
/* B1F550 800A83B0 240C1579 */  li    $t4, 5497
/* B1F554 800A83B4 94480EF8 */  lhu   $t0, 0xef8($v0)
/* B1F558 800A83B8 944F0ED4 */  lhu   $t7, 0xed4($v0)
/* B1F55C 800A83BC 94590EE4 */  lhu   $t9, 0xee4($v0)
/* B1F560 800A83C0 944A0EEC */  lhu   $t2, 0xeec($v0)
/* B1F564 800A83C4 A44C134E */  sh    $t4, 0x134e($v0)
/* B1F568 800A83C8 8C4C0004 */  lw    $t4, 4($v0)
/* B1F56C 800A83CC 24090051 */  li    $t1, 81
/* B1F570 800A83D0 240B0048 */  li    $t3, 72
/* B1F574 800A83D4 A4491348 */  sh    $t1, 0x1348($v0)
/* B1F578 800A83D8 A44B134C */  sh    $t3, 0x134c($v0)
/* B1F57C 800A83DC 24189527 */  li    $t8, -27353
/* B1F580 800A83E0 350D5009 */  ori   $t5, $t0, 0x5009
/* B1F584 800A83E4 35EE123F */  ori   $t6, $t7, 0x123f
/* B1F588 800A83E8 37290001 */  ori   $t1, $t9, 1
/* B1F58C 800A83EC 354B0010 */  ori   $t3, $t2, 0x10
/* B1F590 800A83F0 A4581350 */  sh    $t8, 0x1350($v0)
/* B1F594 800A83F4 A44D0EF8 */  sh    $t5, 0xef8($v0)
/* B1F598 800A83F8 A44E0ED4 */  sh    $t6, 0xed4($v0)
/* B1F59C 800A83FC A4490EE4 */  sh    $t1, 0xee4($v0)
/* B1F5A0 800A8400 11800003 */  beqz  $t4, .L800A8410
/* B1F5A4 800A8404 A44B0EEC */   sh    $t3, 0xeec($v0)
/* B1F5A8 800A8408 10000002 */  b     .L800A8414
/* B1F5AC 800A840C 24030005 */   li    $v1, 5
.L800A8410:
/* B1F5B0 800A8410 24030011 */  li    $v1, 17
.L800A8414:
/* B1F5B4 800A8414 24010005 */  li    $at, 5
/* B1F5B8 800A8418 14610012 */  bne   $v1, $at, .L800A8464
/* B1F5BC 800A841C 2418003B */   li    $t8, 59
/* B1F5C0 800A8420 A0580068 */  sb    $t8, 0x68($v0)
/* B1F5C4 800A8424 00002025 */  move  $a0, $zero
/* B1F5C8 800A8428 0C025E80 */  jal   func_80097A00
/* B1F5CC 800A842C 24050001 */   li    $a1, 1
/* B1F5D0 800A8430 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B1F5D4 800A8434 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* B1F5D8 800A8438 8C481354 */  lw    $t0, 0x1354($v0)
/* B1F5DC 800A843C 240100FF */  li    $at, 255
/* B1F5E0 800A8440 24030006 */  li    $v1, 6
/* B1F5E4 800A8444 15010007 */  bne   $t0, $at, .L800A8464
/* B1F5E8 800A8448 24040001 */   li    $a0, 1
/* B1F5EC 800A844C A0430069 */  sb    $v1, 0x69($v0)
/* B1F5F0 800A8450 A043006C */  sb    $v1, 0x6c($v0)
/* B1F5F4 800A8454 0C025E80 */  jal   func_80097A00
/* B1F5F8 800A8458 24050001 */   li    $a1, 1
/* B1F5FC 800A845C 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B1F600 800A8460 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
.L800A8464:
/* B1F604 800A8464 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1F608 800A8468 240D00CD */  li    $t5, 205
/* B1F60C 800A846C 3C0F4000 */  lui   $t7, 0x4000
/* B1F610 800A8470 AC4D0000 */  sw    $t5, ($v0)
/* B1F614 800A8474 A0400032 */  sb    $zero, 0x32($v0)
/* B1F618 800A8478 AC4F0164 */  sw    $t7, 0x164($v0)
/* B1F61C 800A847C 03E00008 */  jr    $ra
/* B1F620 800A8480 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_800A8484
/* B1F624 800A8484 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1F628 800A8488 AFB00014 */  sw    $s0, 0x14($sp)
/* B1F62C 800A848C 00808025 */  move  $s0, $a0
/* B1F630 800A8490 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1F634 800A8494 3C048014 */  lui   $a0, %hi(D_80140850) # $a0, 0x8014
/* B1F638 800A8498 AFB10018 */  sw    $s1, 0x18($sp)
/* B1F63C 800A849C 0C00084C */  jal   osSyncPrintf
/* B1F640 800A84A0 24840850 */   addiu $a0, %lo(D_80140850) # addiu $a0, $a0, 0x850
/* B1F644 800A84A4 3C118016 */  lui   $s1, %hi(gSaveContext) # $s1, 0x8016
/* B1F648 800A84A8 2631E660 */  addiu $s1, %lo(gSaveContext) # addiu $s1, $s1, -0x19a0
/* B1F64C 800A84AC 8E261354 */  lw    $a2, 0x1354($s1)
/* B1F650 800A84B0 3C078013 */  lui   $a3, %hi(D_8012A4E0)
/* B1F654 800A84B4 3C048014 */  lui   $a0, %hi(D_80140864) # $a0, 0x8014
/* B1F658 800A84B8 00067040 */  sll   $t6, $a2, 1
/* B1F65C 800A84BC 00EE3821 */  addu  $a3, $a3, $t6
/* B1F660 800A84C0 94E5A4E0 */  lhu   $a1, %lo(D_8012A4E0)($a3)
/* B1F664 800A84C4 24840864 */  addiu $a0, %lo(D_80140864) # addiu $a0, $a0, 0x864
/* B1F668 800A84C8 0C00084C */  jal   osSyncPrintf
/* B1F66C 800A84CC A7A50026 */   sh    $a1, 0x26($sp)
/* B1F670 800A84D0 97A70026 */  lhu   $a3, 0x26($sp)
/* B1F674 800A84D4 8E0F0000 */  lw    $t7, ($s0)
/* B1F678 800A84D8 02202025 */  move  $a0, $s1
/* B1F67C 800A84DC 24061354 */  li    $a2, 4948
/* B1F680 800A84E0 0C01A508 */  jal   MemCopy
/* B1F684 800A84E4 01E72821 */   addu  $a1, $t7, $a3
/* B1F688 800A84E8 3C048014 */  lui   $a0, %hi(D_80140878) # $a0, 0x8014
/* B1F68C 800A84EC 0C00084C */  jal   osSyncPrintf
/* B1F690 800A84F0 24840878 */   addiu $a0, %lo(D_80140878) # addiu $a0, $a0, 0x878
/* B1F694 800A84F4 3C048014 */  lui   $a0, %hi(D_80140880) # $a0, 0x8014
/* B1F698 800A84F8 24840880 */  addiu $a0, %lo(D_80140880) # addiu $a0, $a0, 0x880
/* B1F69C 800A84FC 8E260000 */  lw    $a2, ($s1)
/* B1F6A0 800A8500 0C00084C */  jal   osSyncPrintf
/* B1F6A4 800A8504 86250066 */   lh    $a1, 0x66($s1)
/* B1F6A8 800A8508 86220066 */  lh    $v0, 0x66($s1)
/* B1F6AC 800A850C 2841001B */  slti  $at, $v0, 0x1b
/* B1F6B0 800A8510 14200006 */  bnez  $at, .L800A852C
/* B1F6B4 800A8514 00408025 */   move  $s0, $v0
/* B1F6B8 800A8518 2401004F */  li    $at, 79
/* B1F6BC 800A851C 52010029 */  beql  $s0, $at, .L800A85C4
/* B1F6C0 800A8520 240E041B */   li    $t6, 1051
/* B1F6C4 800A8524 1000002A */  b     .L800A85D0
/* B1F6C8 800A8528 24010034 */   li    $at, 52
.L800A852C:
/* B1F6CC 800A852C 2E01001B */  sltiu $at, $s0, 0x1b
/* B1F6D0 800A8530 10200026 */  beqz  $at, .L800A85CC
/* B1F6D4 800A8534 0010C080 */   sll   $t8, $s0, 2
/* B1F6D8 800A8538 3C018014 */  lui   $at, %hi(jtbl_80140FB8)
/* B1F6DC 800A853C 00380821 */  addu  $at, $at, $t8
/* B1F6E0 800A8540 8C380FB8 */  lw    $t8, %lo(jtbl_80140FB8)($at)
/* B1F6E4 800A8544 03000008 */  jr    $t8
/* B1F6E8 800A8548 00000000 */   nop   
/* B1F6EC 800A854C 0002C840 */  sll   $t9, $v0, 1
/* B1F6F0 800A8550 3C0C8013 */  lui   $t4, %hi(D_8012A670)
/* B1F6F4 800A8554 01996021 */  addu  $t4, $t4, $t9
/* B1F6F8 800A8558 858CA670 */  lh    $t4, %lo(D_8012A670)($t4)
/* B1F6FC 800A855C 1000002C */  b     .L800A8610
/* B1F700 800A8560 AE2C0000 */   sw    $t4, ($s1)
/* B1F704 800A8564 1000002A */  b     .L800A8610
/* B1F708 800A8568 AE200000 */   sw    $zero, ($s1)
/* B1F70C 800A856C 240D0004 */  li    $t5, 4
/* B1F710 800A8570 10000027 */  b     .L800A8610
/* B1F714 800A8574 AE2D0000 */   sw    $t5, ($s1)
/* B1F718 800A8578 240E0028 */  li    $t6, 40
/* B1F71C 800A857C 10000024 */  b     .L800A8610
/* B1F720 800A8580 AE2E0000 */   sw    $t6, ($s1)
/* B1F724 800A8584 240F0169 */  li    $t7, 361
/* B1F728 800A8588 10000021 */  b     .L800A8610
/* B1F72C 800A858C AE2F0000 */   sw    $t7, ($s1)
/* B1F730 800A8590 24180165 */  li    $t8, 357
/* B1F734 800A8594 1000001E */  b     .L800A8610
/* B1F738 800A8598 AE380000 */   sw    $t8, ($s1)
/* B1F73C 800A859C 24190010 */  li    $t9, 16
/* B1F740 800A85A0 1000001B */  b     .L800A8610
/* B1F744 800A85A4 AE390000 */   sw    $t9, ($s1)
/* B1F748 800A85A8 240C0082 */  li    $t4, 130
/* B1F74C 800A85AC 10000018 */  b     .L800A8610
/* B1F750 800A85B0 AE2C0000 */   sw    $t4, ($s1)
/* B1F754 800A85B4 240D0037 */  li    $t5, 55
/* B1F758 800A85B8 10000015 */  b     .L800A8610
/* B1F75C 800A85BC AE2D0000 */   sw    $t5, ($s1)
/* B1F760 800A85C0 240E041B */  li    $t6, 1051
.L800A85C4:
/* B1F764 800A85C4 10000012 */  b     .L800A8610
/* B1F768 800A85C8 AE2E0000 */   sw    $t6, ($s1)
.L800A85CC:
/* B1F76C 800A85CC 24010034 */  li    $at, 52
.L800A85D0:
/* B1F770 800A85D0 1041000E */  beq   $v0, $at, .L800A860C
/* B1F774 800A85D4 240C00BB */   li    $t4, 187
/* B1F778 800A85D8 8E2F0004 */  lw    $t7, 4($s1)
/* B1F77C 800A85DC 24010005 */  li    $at, 5
/* B1F780 800A85E0 24100011 */  li    $s0, 17
/* B1F784 800A85E4 11E00003 */  beqz  $t7, .L800A85F4
/* B1F788 800A85E8 241905F4 */   li    $t9, 1524
/* B1F78C 800A85EC 10000001 */  b     .L800A85F4
/* B1F790 800A85F0 24100005 */   li    $s0, 5
.L800A85F4:
/* B1F794 800A85F4 16010003 */  bne   $s0, $at, .L800A8604
/* B1F798 800A85F8 241800BB */   li    $t8, 187
/* B1F79C 800A85FC 10000004 */  b     .L800A8610
/* B1F7A0 800A8600 AE380000 */   sw    $t8, ($s1)
.L800A8604:
/* B1F7A4 800A8604 10000002 */  b     .L800A8610
/* B1F7A8 800A8608 AE390000 */   sw    $t9, ($s1)
.L800A860C:
/* B1F7AC 800A860C AE2C0000 */  sw    $t4, ($s1)
.L800A8610:
/* B1F7B0 800A8610 3C048014 */  lui   $a0, %hi(D_801408A4) # $a0, 0x8014
/* B1F7B4 800A8614 248408A4 */  addiu $a0, %lo(D_801408A4) # addiu $a0, $a0, 0x8a4
/* B1F7B8 800A8618 0C00084C */  jal   osSyncPrintf
/* B1F7BC 800A861C 8E250000 */   lw    $a1, ($s1)
/* B1F7C0 800A8620 3C048014 */  lui   $a0, %hi(D_801408B4) # $a0, 0x8014
/* B1F7C4 800A8624 0C00084C */  jal   osSyncPrintf
/* B1F7C8 800A8628 248408B4 */   addiu $a0, %lo(D_801408B4) # addiu $a0, $a0, 0x8b4
/* B1F7CC 800A862C 862D0030 */  lh    $t5, 0x30($s1)
/* B1F7D0 800A8630 240E0030 */  li    $t6, 48
/* B1F7D4 800A8634 3C048014 */  lui   $a0, %hi(D_801408B8) # $a0, 0x8014
/* B1F7D8 800A8638 29A10030 */  slti  $at, $t5, 0x30
/* B1F7DC 800A863C 50200003 */  beql  $at, $zero, .L800A864C
/* B1F7E0 800A8640 922F0F40 */   lbu   $t7, 0xf40($s1)
/* B1F7E4 800A8644 A62E0030 */  sh    $t6, 0x30($s1)
/* B1F7E8 800A8648 922F0F40 */  lbu   $t7, 0xf40($s1)
.L800A864C:
/* B1F7EC 800A864C 51E00022 */  beql  $t7, $zero, .L800A86D8
/* B1F7F0 800A8650 923812C5 */   lbu   $t8, 0x12c5($s1)
/* B1F7F4 800A8654 0C00084C */  jal   osSyncPrintf
/* B1F7F8 800A8658 248408B8 */   addiu $a0, %lo(D_801408B8) # addiu $a0, $a0, 0x8b8
/* B1F7FC 800A865C 3C048014 */  lui   $a0, %hi(D_801408C0) # $a0, 0x8014
/* B1F800 800A8660 0C00084C */  jal   osSyncPrintf
/* B1F804 800A8664 248408C0 */   addiu $a0, %lo(D_801408C0) # addiu $a0, $a0, 0x8c0
/* B1F808 800A8668 3C048013 */  lui   $a0, %hi(D_80131BE4) # $a0, 0x8013
/* B1F80C 800A866C 3C058016 */  lui   $a1, %hi(gSaveContext+0xf41) # $a1, 0x8016
/* B1F810 800A8670 24A5F5A1 */  addiu $a1, %lo(gSaveContext+0xf41) # addiu $a1, $a1, -0xa5f
/* B1F814 800A8674 8C841BE4 */  lw    $a0, %lo(D_80131BE4)($a0)
/* B1F818 800A8678 0C01A508 */  jal   MemCopy
/* B1F81C 800A867C 24060360 */   li    $a2, 864
/* B1F820 800A8680 3C108013 */  lui   $s0, %hi(D_80131BE4) # $s0, 0x8013
/* B1F824 800A8684 8E101BE4 */  lw    $s0, %lo(D_80131BE4)($s0)
/* B1F828 800A8688 00003825 */  move  $a3, $zero
.L800A868C:
/* B1F82C 800A868C 3C048014 */  lui   $a0, %hi(D_80140908) # $a0, 0x8014
/* B1F830 800A8690 92050000 */  lbu   $a1, ($s0)
/* B1F834 800A8694 A7A70026 */  sh    $a3, 0x26($sp)
/* B1F838 800A8698 0C00084C */  jal   osSyncPrintf
/* B1F83C 800A869C 24840908 */   addiu $a0, %lo(D_80140908) # addiu $a0, $a0, 0x908
/* B1F840 800A86A0 97A70026 */  lhu   $a3, 0x26($sp)
/* B1F844 800A86A4 26100001 */  addiu $s0, $s0, 1
/* B1F848 800A86A8 24E70001 */  addiu $a3, $a3, 1
/* B1F84C 800A86AC 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B1F850 800A86B0 28E10360 */  slti  $at, $a3, 0x360
/* B1F854 800A86B4 1420FFF5 */  bnez  $at, .L800A868C
/* B1F858 800A86B8 00000000 */   nop   
/* B1F85C 800A86BC 3C048014 */  lui   $a0, %hi(D_80140910) # $a0, 0x8014
/* B1F860 800A86C0 0C00084C */  jal   osSyncPrintf
/* B1F864 800A86C4 24840910 */   addiu $a0, %lo(D_80140910) # addiu $a0, $a0, 0x910
/* B1F868 800A86C8 3C048014 */  lui   $a0, %hi(D_80140958) # $a0, 0x8014
/* B1F86C 800A86CC 0C00084C */  jal   osSyncPrintf
/* B1F870 800A86D0 24840958 */   addiu $a0, %lo(D_80140958) # addiu $a0, $a0, 0x958
/* B1F874 800A86D4 923812C5 */  lbu   $t8, 0x12c5($s1)
.L800A86D8:
/* B1F878 800A86D8 3C048014 */  lui   $a0, %hi(D_8014095C) # $a0, 0x8014
/* B1F87C 800A86DC 53000022 */  beql  $t8, $zero, .L800A8768
/* B1F880 800A86E0 96220EDC */   lhu   $v0, 0xedc($s1)
/* B1F884 800A86E4 0C00084C */  jal   osSyncPrintf
/* B1F888 800A86E8 2484095C */   addiu $a0, %lo(D_8014095C) # addiu $a0, $a0, 0x95c
/* B1F88C 800A86EC 3C048014 */  lui   $a0, %hi(D_80140964) # $a0, 0x8014
/* B1F890 800A86F0 0C00084C */  jal   osSyncPrintf
/* B1F894 800A86F4 24840964 */   addiu $a0, %lo(D_80140964) # addiu $a0, $a0, 0x964
/* B1F898 800A86F8 3C048013 */  lui   $a0, %hi(D_80131BE8) # $a0, 0x8013
/* B1F89C 800A86FC 3C058016 */  lui   $a1, %hi(gSaveContext+0x12c6) # $a1, 0x8016
/* B1F8A0 800A8700 24A5F926 */  addiu $a1, %lo(gSaveContext+0x12c6) # addiu $a1, $a1, -0x6da
/* B1F8A4 800A8704 8C841BE8 */  lw    $a0, %lo(D_80131BE8)($a0)
/* B1F8A8 800A8708 0C01A508 */  jal   MemCopy
/* B1F8AC 800A870C 24060080 */   li    $a2, 128
/* B1F8B0 800A8710 3C108013 */  lui   $s0, %hi(D_80131BE8) # $s0, 0x8013
/* B1F8B4 800A8714 8E101BE8 */  lw    $s0, %lo(D_80131BE8)($s0)
/* B1F8B8 800A8718 00003825 */  move  $a3, $zero
.L800A871C:
/* B1F8BC 800A871C 3C048014 */  lui   $a0, %hi(D_801409AC) # $a0, 0x8014
/* B1F8C0 800A8720 92050000 */  lbu   $a1, ($s0)
/* B1F8C4 800A8724 A7A70026 */  sh    $a3, 0x26($sp)
/* B1F8C8 800A8728 0C00084C */  jal   osSyncPrintf
/* B1F8CC 800A872C 248409AC */   addiu $a0, %lo(D_801409AC) # addiu $a0, $a0, 0x9ac
/* B1F8D0 800A8730 97A70026 */  lhu   $a3, 0x26($sp)
/* B1F8D4 800A8734 26100001 */  addiu $s0, $s0, 1
/* B1F8D8 800A8738 24E70001 */  addiu $a3, $a3, 1
/* B1F8DC 800A873C 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B1F8E0 800A8740 28E10080 */  slti  $at, $a3, 0x80
/* B1F8E4 800A8744 1420FFF5 */  bnez  $at, .L800A871C
/* B1F8E8 800A8748 00000000 */   nop   
/* B1F8EC 800A874C 3C048014 */  lui   $a0, %hi(D_801409B4) # $a0, 0x8014
/* B1F8F0 800A8750 0C00084C */  jal   osSyncPrintf
/* B1F8F4 800A8754 248409B4 */   addiu $a0, %lo(D_801409B4) # addiu $a0, $a0, 0x9b4
/* B1F8F8 800A8758 3C048014 */  lui   $a0, %hi(D_801409FC) # $a0, 0x8014
/* B1F8FC 800A875C 0C00084C */  jal   osSyncPrintf
/* B1F900 800A8760 248409FC */   addiu $a0, %lo(D_801409FC) # addiu $a0, $a0, 0x9fc
/* B1F904 800A8764 96220EDC */  lhu   $v0, 0xedc($s1)
.L800A8768:
/* B1F908 800A8768 3C0A8012 */  lui   $t2, %hi(D_80125A20) # $t2, 0x8012
/* B1F90C 800A876C 254A5A20 */  addiu $t2, %lo(D_80125A20) # addiu $t2, $t2, 0x5a20
/* B1F910 800A8770 30590001 */  andi  $t9, $v0, 1
/* B1F914 800A8774 13200019 */  beqz  $t9, .L800A87DC
/* B1F918 800A8778 3C098012 */   lui   $t1, %hi(D_80125A18) # $t1, 0x8012
/* B1F91C 800A877C 3C0C8012 */  lui   $t4, %hi(D_80127150) # $t4, 0x8012
/* B1F920 800A8780 8D8C7150 */  lw    $t4, %lo(D_80127150)($t4)
/* B1F924 800A8784 8E2D00A4 */  lw    $t5, 0xa4($s1)
/* B1F928 800A8788 3C0B8012 */  lui   $t3, %hi(D_80127464) # $t3, 0x8012
/* B1F92C 800A878C 256B7464 */  addiu $t3, %lo(D_80127464) # addiu $t3, $t3, 0x7464
/* B1F930 800A8790 018D7024 */  and   $t6, $t4, $t5
/* B1F934 800A8794 15C00011 */  bnez  $t6, .L800A87DC
/* B1F938 800A8798 24040022 */   li    $a0, 34
/* B1F93C 800A879C 916F0023 */  lbu   $t7, 0x23($t3)
/* B1F940 800A87A0 3047FFFE */  andi  $a3, $v0, 0xfffe
/* B1F944 800A87A4 A6270EDC */  sh    $a3, 0xedc($s1)
/* B1F948 800A87A8 022FC021 */  addu  $t8, $s1, $t7
/* B1F94C 800A87AC A3040074 */  sb    $a0, 0x74($t8)
/* B1F950 800A87B0 24030001 */  li    $v1, 1
/* B1F954 800A87B4 24050023 */  li    $a1, 35
/* B1F958 800A87B8 02231021 */  addu  $v0, $s1, $v1
.L800A87BC:
/* B1F95C 800A87BC 90590068 */  lbu   $t9, 0x68($v0)
/* B1F960 800A87C0 24630001 */  addiu $v1, $v1, 1
/* B1F964 800A87C4 3063FFFF */  andi  $v1, $v1, 0xffff
/* B1F968 800A87C8 14B90002 */  bne   $a1, $t9, .L800A87D4
/* B1F96C 800A87CC 28610004 */   slti  $at, $v1, 4
/* B1F970 800A87D0 A0440068 */  sb    $a0, 0x68($v0)
.L800A87D4:
/* B1F974 800A87D4 5420FFF9 */  bnezl $at, .L800A87BC
/* B1F978 800A87D8 02231021 */   addu  $v0, $s1, $v1
.L800A87DC:
/* B1F97C 800A87DC 8E2C0004 */  lw    $t4, 4($s1)
/* B1F980 800A87E0 3C0B8012 */  lui   $t3, %hi(D_80127464) # $t3, 0x8012
/* B1F984 800A87E4 256B7464 */  addiu $t3, %lo(D_80127464) # addiu $t3, $t3, 0x7464
/* B1F988 800A87E8 11800003 */  beqz  $t4, .L800A87F8
/* B1F98C 800A87EC 24010011 */   li    $at, 17
/* B1F990 800A87F0 10000002 */  b     .L800A87FC
/* B1F994 800A87F4 24100005 */   li    $s0, 5
.L800A87F8:
/* B1F998 800A87F8 24100011 */  li    $s0, 17
.L800A87FC:
/* B1F99C 800A87FC 16010011 */  bne   $s0, $at, .L800A8844
/* B1F9A0 800A8800 3C0D8012 */   lui   $t5, %hi(D_80127124) # $t5, 0x8012
/* B1F9A4 800A8804 3C0E8012 */  lui   $t6, %hi(D_801271F0) # $t6, 0x8012
/* B1F9A8 800A8808 91CE71F0 */  lbu   $t6, %lo(D_801271F0)($t6)
/* B1F9AC 800A880C 8DAD7124 */  lw    $t5, %lo(D_80127124)($t5)
/* B1F9B0 800A8810 9623009C */  lhu   $v1, 0x9c($s1)
/* B1F9B4 800A8814 2419003C */  li    $t9, 60
/* B1F9B8 800A8818 01CD1004 */  sllv  $v0, $t5, $t6
/* B1F9BC 800A881C 00437824 */  and   $t7, $v0, $v1
/* B1F9C0 800A8820 15E00008 */  bnez  $t7, .L800A8844
/* B1F9C4 800A8824 0062C025 */   or    $t8, $v1, $v0
/* B1F9C8 800A8828 962C0070 */  lhu   $t4, 0x70($s1)
/* B1F9CC 800A882C A638009C */  sh    $t8, 0x9c($s1)
/* B1F9D0 800A8830 A2390068 */  sb    $t9, 0x68($s1)
/* B1F9D4 800A8834 318EFFF0 */  andi  $t6, $t4, 0xfff0
/* B1F9D8 800A8838 A62E0070 */  sh    $t6, 0x70($s1)
/* B1F9DC 800A883C 35CF0002 */  ori   $t7, $t6, 2
/* B1F9E0 800A8840 A62F0070 */  sh    $t7, 0x70($s1)
.L800A8844:
/* B1F9E4 800A8844 9178002D */  lbu   $t8, 0x2d($t3)
/* B1F9E8 800A8848 00003825 */  move  $a3, $zero
/* B1F9EC 800A884C 25295A18 */  addiu $t1, %lo(D_80125A18) # addiu $t1, $t1, 0x5a18
/* B1F9F0 800A8850 02384021 */  addu  $t0, $s1, $t8
/* B1F9F4 800A8854 00073040 */  sll   $a2, $a3, 1
.L800A8858:
/* B1F9F8 800A8858 0126C821 */  addu  $t9, $t1, $a2
/* B1F9FC 800A885C 87240000 */  lh    $a0, ($t9)
/* B1FA00 800A8860 910C0074 */  lbu   $t4, 0x74($t0)
/* B1FA04 800A8864 24E70001 */  addiu $a3, $a3, 1
/* B1FA08 800A8868 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B1FA0C 800A886C 15840010 */  bne   $t4, $a0, .L800A88B0
/* B1FA10 800A8870 01466821 */   addu  $t5, $t2, $a2
/* B1FA14 800A8874 85A50000 */  lh    $a1, ($t5)
/* B1FA18 800A8878 24030001 */  li    $v1, 1
/* B1FA1C 800A887C 01657021 */  addu  $t6, $t3, $a1
/* B1FA20 800A8880 91CF0000 */  lbu   $t7, ($t6)
/* B1FA24 800A8884 022FC021 */  addu  $t8, $s1, $t7
/* B1FA28 800A8888 A3050074 */  sb    $a1, 0x74($t8)
/* B1FA2C 800A888C 02231021 */  addu  $v0, $s1, $v1
.L800A8890:
/* B1FA30 800A8890 90590068 */  lbu   $t9, 0x68($v0)
/* B1FA34 800A8894 24630001 */  addiu $v1, $v1, 1
/* B1FA38 800A8898 3063FFFF */  andi  $v1, $v1, 0xffff
/* B1FA3C 800A889C 17240002 */  bne   $t9, $a0, .L800A88A8
/* B1FA40 800A88A0 28610004 */   slti  $at, $v1, 4
/* B1FA44 800A88A4 A0450068 */  sb    $a1, 0x68($v0)
.L800A88A8:
/* B1FA48 800A88A8 5420FFF9 */  bnezl $at, .L800A8890
/* B1FA4C 800A88AC 02231021 */   addu  $v0, $s1, $v1
.L800A88B0:
/* B1FA50 800A88B0 28E10003 */  slti  $at, $a3, 3
/* B1FA54 800A88B4 5420FFE8 */  bnezl $at, .L800A8858
/* B1FA58 800A88B8 00073040 */   sll   $a2, $a3, 1
/* B1FA5C 800A88BC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1FA60 800A88C0 A2200032 */  sb    $zero, 0x32($s1)
/* B1FA64 800A88C4 8FB10018 */  lw    $s1, 0x18($sp)
/* B1FA68 800A88C8 8FB00014 */  lw    $s0, 0x14($sp)
/* B1FA6C 800A88CC 03E00008 */  jr    $ra
/* B1FA70 800A88D0 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800A88D4
/* B1FA74 800A88D4 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B1FA78 800A88D8 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B1FA7C 800A88DC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1FA80 800A88E0 AFA40020 */  sw    $a0, 0x20($sp)
/* B1FA84 800A88E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1FA88 800A88E8 A4A01352 */  sh    $zero, 0x1352($a1)
/* B1FA8C 800A88EC 00A01825 */  move  $v1, $a1
/* B1FA90 800A88F0 00002025 */  move  $a0, $zero
/* B1FA94 800A88F4 00001025 */  move  $v0, $zero
/* B1FA98 800A88F8 00004025 */  move  $t0, $zero
/* B1FA9C 800A88FC 24090020 */  li    $t1, 32
.L800A8900:
/* B1FAA0 800A8900 24420001 */  addiu $v0, $v0, 1
/* B1FAA4 800A8904 3042FFFF */  andi  $v0, $v0, 0xffff
/* B1FAA8 800A8908 15220002 */  bne   $t1, $v0, .L800A8914
/* B1FAAC 800A890C 25080001 */   addiu $t0, $t0, 1
/* B1FAB0 800A8910 00001025 */  move  $v0, $zero
.L800A8914:
/* B1FAB4 800A8914 946E0000 */  lhu   $t6, ($v1)
/* B1FAB8 800A8918 3108FFFF */  andi  $t0, $t0, 0xffff
/* B1FABC 800A891C 2D0109AA */  sltiu $at, $t0, 0x9aa
/* B1FAC0 800A8920 008E2021 */  addu  $a0, $a0, $t6
/* B1FAC4 800A8924 3084FFFF */  andi  $a0, $a0, 0xffff
/* B1FAC8 800A8928 1420FFF5 */  bnez  $at, .L800A8900
/* B1FACC 800A892C 24630002 */   addiu $v1, $v1, 2
/* B1FAD0 800A8930 A4A41352 */  sh    $a0, 0x1352($a1)
/* B1FAD4 800A8934 00A01825 */  move  $v1, $a1
/* B1FAD8 800A8938 00002025 */  move  $a0, $zero
/* B1FADC 800A893C 00004025 */  move  $t0, $zero
.L800A8940:
/* B1FAE0 800A8940 24420001 */  addiu $v0, $v0, 1
/* B1FAE4 800A8944 3042FFFF */  andi  $v0, $v0, 0xffff
/* B1FAE8 800A8948 15220002 */  bne   $t1, $v0, .L800A8954
/* B1FAEC 800A894C 25080001 */   addiu $t0, $t0, 1
/* B1FAF0 800A8950 00001025 */  move  $v0, $zero
.L800A8954:
/* B1FAF4 800A8954 946F0000 */  lhu   $t7, ($v1)
/* B1FAF8 800A8958 3108FFFF */  andi  $t0, $t0, 0xffff
/* B1FAFC 800A895C 2D0109AA */  sltiu $at, $t0, 0x9aa
/* B1FB00 800A8960 008F2021 */  addu  $a0, $a0, $t7
/* B1FB04 800A8964 3084FFFF */  andi  $a0, $a0, 0xffff
/* B1FB08 800A8968 1420FFF5 */  bnez  $at, .L800A8940
/* B1FB0C 800A896C 24630002 */   addiu $v1, $v1, 2
/* B1FB10 800A8970 8CB81354 */  lw    $t8, 0x1354($a1)
/* B1FB14 800A8974 3C088013 */  lui   $t0, %hi(D_8012A4E0)
/* B1FB18 800A8978 3C010800 */  lui   $at, 0x800
/* B1FB1C 800A897C 0018C840 */  sll   $t9, $t8, 1
/* B1FB20 800A8980 01194021 */  addu  $t0, $t0, $t9
/* B1FB24 800A8984 9508A4E0 */  lhu   $t0, %lo(D_8012A4E0)($t0)
/* B1FB28 800A8988 24061450 */  li    $a2, 5200
/* B1FB2C 800A898C 24070001 */  li    $a3, 1
/* B1FB30 800A8990 A7A2001A */  sh    $v0, 0x1a($sp)
/* B1FB34 800A8994 0C02A7A8 */  jal   func_800A9EA0
/* B1FB38 800A8998 01012021 */   addu  $a0, $t0, $at
/* B1FB3C 800A899C 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B1FB40 800A89A0 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B1FB44 800A89A4 97A2001A */  lhu   $v0, 0x1a($sp)
/* B1FB48 800A89A8 24090020 */  li    $t1, 32
/* B1FB4C 800A89AC 00A01825 */  move  $v1, $a1
/* B1FB50 800A89B0 00002025 */  move  $a0, $zero
/* B1FB54 800A89B4 00004025 */  move  $t0, $zero
.L800A89B8:
/* B1FB58 800A89B8 24420001 */  addiu $v0, $v0, 1
/* B1FB5C 800A89BC 3042FFFF */  andi  $v0, $v0, 0xffff
/* B1FB60 800A89C0 15220002 */  bne   $t1, $v0, .L800A89CC
/* B1FB64 800A89C4 25080001 */   addiu $t0, $t0, 1
/* B1FB68 800A89C8 00001025 */  move  $v0, $zero
.L800A89CC:
/* B1FB6C 800A89CC 946A0000 */  lhu   $t2, ($v1)
/* B1FB70 800A89D0 3108FFFF */  andi  $t0, $t0, 0xffff
/* B1FB74 800A89D4 2D0109AA */  sltiu $at, $t0, 0x9aa
/* B1FB78 800A89D8 008A2021 */  addu  $a0, $a0, $t2
/* B1FB7C 800A89DC 3084FFFF */  andi  $a0, $a0, 0xffff
/* B1FB80 800A89E0 1420FFF5 */  bnez  $at, .L800A89B8
/* B1FB84 800A89E4 24630002 */   addiu $v1, $v1, 2
/* B1FB88 800A89E8 8CAB1354 */  lw    $t3, 0x1354($a1)
/* B1FB8C 800A89EC 3C088013 */  lui   $t0, %hi(D_8012A4E6)
/* B1FB90 800A89F0 3C010800 */  lui   $at, 0x800
/* B1FB94 800A89F4 000B6040 */  sll   $t4, $t3, 1
/* B1FB98 800A89F8 010C4021 */  addu  $t0, $t0, $t4
/* B1FB9C 800A89FC 9508A4E6 */  lhu   $t0, %lo(D_8012A4E6)($t0)
/* B1FBA0 800A8A00 24061450 */  li    $a2, 5200
/* B1FBA4 800A8A04 24070001 */  li    $a3, 1
/* B1FBA8 800A8A08 0C02A7A8 */  jal   func_800A9EA0
/* B1FBAC 800A8A0C 01012021 */   addu  $a0, $t0, $at
/* B1FBB0 800A8A10 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1FBB4 800A8A14 27BD0020 */  addiu $sp, $sp, 0x20
/* B1FBB8 800A8A18 03E00008 */  jr    $ra
/* B1FBBC 800A8A1C 00000000 */   nop   

glabel func_800A8A20
/* B1FBC0 800A8A20 27BDFF88 */  addiu $sp, $sp, -0x78
/* B1FBC4 800A8A24 AFA40078 */  sw    $a0, 0x78($sp)
/* B1FBC8 800A8A28 AFBF004C */  sw    $ra, 0x4c($sp)
/* B1FBCC 800A8A2C 3C048014 */  lui   $a0, %hi(D_80140A00) # $a0, 0x8014
/* B1FBD0 800A8A30 AFBE0048 */  sw    $fp, 0x48($sp)
/* B1FBD4 800A8A34 AFB70044 */  sw    $s7, 0x44($sp)
/* B1FBD8 800A8A38 AFB60040 */  sw    $s6, 0x40($sp)
/* B1FBDC 800A8A3C AFB5003C */  sw    $s5, 0x3c($sp)
/* B1FBE0 800A8A40 AFB40038 */  sw    $s4, 0x38($sp)
/* B1FBE4 800A8A44 AFB30034 */  sw    $s3, 0x34($sp)
/* B1FBE8 800A8A48 AFB20030 */  sw    $s2, 0x30($sp)
/* B1FBEC 800A8A4C AFB1002C */  sw    $s1, 0x2c($sp)
/* B1FBF0 800A8A50 AFB00028 */  sw    $s0, 0x28($sp)
/* B1FBF4 800A8A54 AFA5007C */  sw    $a1, 0x7c($sp)
/* B1FBF8 800A8A58 0C00084C */  jal   osSyncPrintf
/* B1FBFC 800A8A5C 24840A00 */   addiu $a0, %lo(D_80140A00) # addiu $a0, $a0, 0xa00
/* B1FC00 800A8A60 8FAE007C */  lw    $t6, 0x7c($sp)
/* B1FC04 800A8A64 34058000 */  li    $a1, 32768
/* B1FC08 800A8A68 0C001114 */  jal   bzero
/* B1FC0C 800A8A6C 8DC40000 */   lw    $a0, ($t6)
/* B1FC10 800A8A70 8FAF007C */  lw    $t7, 0x7c($sp)
/* B1FC14 800A8A74 3C040800 */  lui   $a0, 0x800
/* B1FC18 800A8A78 34068000 */  li    $a2, 32768
/* B1FC1C 800A8A7C 00003825 */  move  $a3, $zero
/* B1FC20 800A8A80 0C02A7A8 */  jal   func_800A9EA0
/* B1FC24 800A8A84 8DE50000 */   lw    $a1, ($t7)
/* B1FC28 800A8A88 3C148016 */  lui   $s4, %hi(gSaveContext) # $s4, 0x8016
/* B1FC2C 800A8A8C 2694E660 */  addiu $s4, %lo(gSaveContext) # addiu $s4, $s4, -0x19a0
/* B1FC30 800A8A90 9698000C */  lhu   $t8, 0xc($s4)
/* B1FC34 800A8A94 3C1E8014 */  lui   $fp, %hi(D_80140BBC) # $fp, 0x8014
/* B1FC38 800A8A98 3C168014 */  lui   $s6, %hi(D_80140BB8) # $s6, 0x8014
/* B1FC3C 800A8A9C 26D60BB8 */  addiu $s6, %lo(D_80140BB8) # addiu $s6, $s6, 0xbb8
/* B1FC40 800A8AA0 27DE0BBC */  addiu $fp, %lo(D_80140BBC) # addiu $fp, $fp, 0xbbc
/* B1FC44 800A8AA4 A7A00072 */  sh    $zero, 0x72($sp)
/* B1FC48 800A8AA8 AFA0005C */  sw    $zero, 0x5c($sp)
/* B1FC4C 800A8AAC 24170020 */  li    $s7, 32
/* B1FC50 800A8AB0 A7B80066 */  sh    $t8, 0x66($sp)
.L800A8AB4:
/* B1FC54 800A8AB4 97B90072 */  lhu   $t9, 0x72($sp)
/* B1FC58 800A8AB8 3C098013 */  lui   $t1, %hi(D_8012A4E0) # $t1, 0x8013
/* B1FC5C 800A8ABC 2529A4E0 */  addiu $t1, %lo(D_8012A4E0) # addiu $t1, $t1, -0x5b20
/* B1FC60 800A8AC0 00194040 */  sll   $t0, $t9, 1
/* B1FC64 800A8AC4 01091021 */  addu  $v0, $t0, $t1
/* B1FC68 800A8AC8 94520000 */  lhu   $s2, ($v0)
/* B1FC6C 800A8ACC 3C048014 */  lui   $a0, %hi(D_80140A20) # $a0, 0x8014
/* B1FC70 800A8AD0 24840A20 */  addiu $a0, %lo(D_80140A20) # addiu $a0, $a0, 0xa20
/* B1FC74 800A8AD4 AFA20060 */  sw    $v0, 0x60($sp)
/* B1FC78 800A8AD8 8E861354 */  lw    $a2, 0x1354($s4)
/* B1FC7C 800A8ADC 24071354 */  li    $a3, 4948
/* B1FC80 800A8AE0 0C00084C */  jal   osSyncPrintf
/* B1FC84 800A8AE4 02402825 */   move  $a1, $s2
/* B1FC88 800A8AE8 8FAA007C */  lw    $t2, 0x7c($sp)
/* B1FC8C 800A8AEC 02802025 */  move  $a0, $s4
/* B1FC90 800A8AF0 24061354 */  li    $a2, 4948
/* B1FC94 800A8AF4 8D4B0000 */  lw    $t3, ($t2)
/* B1FC98 800A8AF8 0C01A508 */  jal   MemCopy
/* B1FC9C 800A8AFC 01722821 */   addu  $a1, $t3, $s2
/* B1FCA0 800A8B00 96951352 */  lhu   $s5, 0x1352($s4)
/* B1FCA4 800A8B04 3C048014 */  lui   $a0, %hi(D_80140A44) # $a0, 0x8014
/* B1FCA8 800A8B08 A6801352 */  sh    $zero, 0x1352($s4)
/* B1FCAC 800A8B0C 02808025 */  move  $s0, $s4
/* B1FCB0 800A8B10 24840A44 */  addiu $a0, %lo(D_80140A44) # addiu $a0, $a0, 0xa44
/* B1FCB4 800A8B14 0C00084C */  jal   osSyncPrintf
/* B1FCB8 800A8B18 8FA5005C */   lw    $a1, 0x5c($sp)
/* B1FCBC 800A8B1C 00009825 */  move  $s3, $zero
/* B1FCC0 800A8B20 00008825 */  move  $s1, $zero
.L800A8B24:
/* B1FCC4 800A8B24 960C0000 */  lhu   $t4, ($s0)
/* B1FCC8 800A8B28 26310001 */  addiu $s1, $s1, 1
/* B1FCCC 800A8B2C 3231FFFF */  andi  $s1, $s1, 0xffff
/* B1FCD0 800A8B30 2E2109AA */  sltiu $at, $s1, 0x9aa
/* B1FCD4 800A8B34 26520002 */  addiu $s2, $s2, 2
/* B1FCD8 800A8B38 026C9821 */  addu  $s3, $s3, $t4
/* B1FCDC 800A8B3C 3252FFFF */  andi  $s2, $s2, 0xffff
/* B1FCE0 800A8B40 3273FFFF */  andi  $s3, $s3, 0xffff
/* B1FCE4 800A8B44 1420FFF7 */  bnez  $at, .L800A8B24
/* B1FCE8 800A8B48 26100002 */   addiu $s0, $s0, 2
/* B1FCEC 800A8B4C 3C048014 */  lui   $a0, %hi(D_80140A88) # $a0, 0x8014
/* B1FCF0 800A8B50 24840A88 */  addiu $a0, %lo(D_80140A88) # addiu $a0, $a0, 0xa88
/* B1FCF4 800A8B54 02609025 */  move  $s2, $s3
/* B1FCF8 800A8B58 02602825 */  move  $a1, $s3
/* B1FCFC 800A8B5C 02A08025 */  move  $s0, $s5
/* B1FD00 800A8B60 0C00084C */  jal   osSyncPrintf
/* B1FD04 800A8B64 02A03025 */   move  $a2, $s5
/* B1FD08 800A8B68 121200BB */  beq   $s0, $s2, .L800A8E58
/* B1FD0C 800A8B6C 3C048014 */   lui   $a0, %hi(D_80140C38)
/* B1FD10 800A8B70 8FAD0060 */  lw    $t5, 0x60($sp)
/* B1FD14 800A8B74 3C048014 */  lui   $a0, %hi(D_80140AB4) # $a0, 0x8014
/* B1FD18 800A8B78 24840AB4 */  addiu $a0, %lo(D_80140AB4) # addiu $a0, $a0, 0xab4
/* B1FD1C 800A8B7C 8FA6005C */  lw    $a2, 0x5c($sp)
/* B1FD20 800A8B80 0C00084C */  jal   osSyncPrintf
/* B1FD24 800A8B84 95A50000 */   lhu   $a1, ($t5)
/* B1FD28 800A8B88 8FAE005C */  lw    $t6, 0x5c($sp)
/* B1FD2C 800A8B8C 8FB9007C */  lw    $t9, 0x7c($sp)
/* B1FD30 800A8B90 3C188013 */  lui   $t8, %hi(D_8012A4E0) # $t8, 0x8013
/* B1FD34 800A8B94 2718A4E0 */  addiu $t8, %lo(D_8012A4E0) # addiu $t8, $t8, -0x5b20
/* B1FD38 800A8B98 000E7840 */  sll   $t7, $t6, 1
/* B1FD3C 800A8B9C 01F81021 */  addu  $v0, $t7, $t8
/* B1FD40 800A8BA0 94520006 */  lhu   $s2, 6($v0)
/* B1FD44 800A8BA4 8F280000 */  lw    $t0, ($t9)
/* B1FD48 800A8BA8 AFA20050 */  sw    $v0, 0x50($sp)
/* B1FD4C 800A8BAC 02802025 */  move  $a0, $s4
/* B1FD50 800A8BB0 24061354 */  li    $a2, 4948
/* B1FD54 800A8BB4 0C01A508 */  jal   MemCopy
/* B1FD58 800A8BB8 01122821 */   addu  $a1, $t0, $s2
/* B1FD5C 800A8BBC 96951352 */  lhu   $s5, 0x1352($s4)
/* B1FD60 800A8BC0 3C048014 */  lui   $a0, %hi(D_80140AD0) # $a0, 0x8014
/* B1FD64 800A8BC4 A6801352 */  sh    $zero, 0x1352($s4)
/* B1FD68 800A8BC8 02808025 */  move  $s0, $s4
/* B1FD6C 800A8BCC 0C00084C */  jal   osSyncPrintf
/* B1FD70 800A8BD0 24840AD0 */   addiu $a0, %lo(D_80140AD0) # addiu $a0, $a0, 0xad0
/* B1FD74 800A8BD4 00009825 */  move  $s3, $zero
/* B1FD78 800A8BD8 00008825 */  move  $s1, $zero
.L800A8BDC:
/* B1FD7C 800A8BDC 96090000 */  lhu   $t1, ($s0)
/* B1FD80 800A8BE0 26310001 */  addiu $s1, $s1, 1
/* B1FD84 800A8BE4 3231FFFF */  andi  $s1, $s1, 0xffff
/* B1FD88 800A8BE8 2E2109AA */  sltiu $at, $s1, 0x9aa
/* B1FD8C 800A8BEC 26520002 */  addiu $s2, $s2, 2
/* B1FD90 800A8BF0 02699821 */  addu  $s3, $s3, $t1
/* B1FD94 800A8BF4 3252FFFF */  andi  $s2, $s2, 0xffff
/* B1FD98 800A8BF8 3273FFFF */  andi  $s3, $s3, 0xffff
/* B1FD9C 800A8BFC 1420FFF7 */  bnez  $at, .L800A8BDC
/* B1FDA0 800A8C00 26100002 */   addiu $s0, $s0, 2
/* B1FDA4 800A8C04 3C048014 */  lui   $a0, %hi(D_80140B0C) # $a0, 0x8014
/* B1FDA8 800A8C08 24840B0C */  addiu $a0, %lo(D_80140B0C) # addiu $a0, $a0, 0xb0c
/* B1FDAC 800A8C0C 02609025 */  move  $s2, $s3
/* B1FDB0 800A8C10 02602825 */  move  $a1, $s3
/* B1FDB4 800A8C14 02A08025 */  move  $s0, $s5
/* B1FDB8 800A8C18 0C00084C */  jal   osSyncPrintf
/* B1FDBC 800A8C1C 02A03025 */   move  $a2, $s5
/* B1FDC0 800A8C20 1212007C */  beq   $s0, $s2, .L800A8E14
/* B1FDC4 800A8C24 3C048014 */   lui   $a0, %hi(D_80140B3C) # $a0, 0x8014
/* B1FDC8 800A8C28 8FAA0050 */  lw    $t2, 0x50($sp)
/* B1FDCC 800A8C2C 24840B3C */  addiu $a0, %lo(D_80140B3C) # addiu $a0, $a0, 0xb3c
/* B1FDD0 800A8C30 8FA6005C */  lw    $a2, 0x5c($sp)
/* B1FDD4 800A8C34 00009025 */  move  $s2, $zero
/* B1FDD8 800A8C38 0C00084C */  jal   osSyncPrintf
/* B1FDDC 800A8C3C 95450006 */   lhu   $a1, 6($t2)
/* B1FDE0 800A8C40 02802025 */  move  $a0, $s4
/* B1FDE4 800A8C44 0C001114 */  jal   bzero
/* B1FDE8 800A8C48 24050004 */   li    $a1, 4
/* B1FDEC 800A8C4C 3C048016 */  lui   $a0, %hi(gSaveContext+4) # $a0, 0x8016
/* B1FDF0 800A8C50 2484E664 */  addiu $a0, %lo(gSaveContext+4) # addiu $a0, $a0, -0x199c
/* B1FDF4 800A8C54 0C001114 */  jal   bzero
/* B1FDF8 800A8C58 24050004 */   li    $a1, 4
/* B1FDFC 800A8C5C 3C048016 */  lui   $a0, %hi(gSaveContext+8) # $a0, 0x8016
/* B1FE00 800A8C60 2484E668 */  addiu $a0, %lo(gSaveContext+8) # addiu $a0, $a0, -0x1998
/* B1FE04 800A8C64 0C001114 */  jal   bzero
/* B1FE08 800A8C68 24050004 */   li    $a1, 4
/* B1FE0C 800A8C6C 3C048016 */  lui   $a0, %hi(gSaveContext+0xc) # $a0, 0x8016
/* B1FE10 800A8C70 2484E66C */  addiu $a0, %lo(gSaveContext+0xc) # addiu $a0, $a0, -0x1994
/* B1FE14 800A8C74 0C001114 */  jal   bzero
/* B1FE18 800A8C78 24050004 */   li    $a1, 4
/* B1FE1C 800A8C7C 3C048016 */  lui   $a0, %hi(gSaveContext+0x10) # $a0, 0x8016
/* B1FE20 800A8C80 2484E670 */  addiu $a0, %lo(gSaveContext+0x10) # addiu $a0, $a0, -0x1990
/* B1FE24 800A8C84 0C001114 */  jal   bzero
/* B1FE28 800A8C88 24050004 */   li    $a1, 4
/* B1FE2C 800A8C8C 3C048016 */  lui   $a0, %hi(gSaveContext+0x14) # $a0, 0x8016
/* B1FE30 800A8C90 2484E674 */  addiu $a0, %lo(gSaveContext+0x14) # addiu $a0, $a0, -0x198c
/* B1FE34 800A8C94 0C001114 */  jal   bzero
/* B1FE38 800A8C98 24050004 */   li    $a1, 4
/* B1FE3C 800A8C9C 3C048016 */  lui   $a0, %hi(gSaveContext+0x18) # $a0, 0x8016
/* B1FE40 800A8CA0 2484E678 */  addiu $a0, %lo(gSaveContext+0x18) # addiu $a0, $a0, -0x1988
/* B1FE44 800A8CA4 0C001114 */  jal   bzero
/* B1FE48 800A8CA8 24050004 */   li    $a1, 4
/* B1FE4C 800A8CAC 97AB0072 */  lhu   $t3, 0x72($sp)
/* B1FE50 800A8CB0 1560001C */  bnez  $t3, .L800A8D24
/* B1FE54 800A8CB4 00000000 */   nop   
/* B1FE58 800A8CB8 0C02A0B2 */  jal   func_800A82C8
/* B1FE5C 800A8CBC 00000000 */   nop   
/* B1FE60 800A8CC0 2402005A */  li    $v0, 90
/* B1FE64 800A8CC4 240E0044 */  li    $t6, 68
/* B1FE68 800A8CC8 240F0041 */  li    $t7, 65
/* B1FE6C 800A8CCC 240C0045 */  li    $t4, 69
/* B1FE70 800A8CD0 240D004C */  li    $t5, 76
/* B1FE74 800A8CD4 31F900FF */  andi  $t9, $t7, 0xff
/* B1FE78 800A8CD8 31D800FF */  andi  $t8, $t6, 0xff
/* B1FE7C 800A8CDC 304800FF */  andi  $t0, $v0, 0xff
/* B1FE80 800A8CE0 3C048014 */  lui   $a0, %hi(D_80140B5C) # $a0, 0x8014
/* B1FE84 800A8CE4 A282001C */  sb    $v0, 0x1c($s4)
/* B1FE88 800A8CE8 A28C001D */  sb    $t4, 0x1d($s4)
/* B1FE8C 800A8CEC A28D001E */  sb    $t5, 0x1e($s4)
/* B1FE90 800A8CF0 A28E001F */  sb    $t6, 0x1f($s4)
/* B1FE94 800A8CF4 A28F0020 */  sb    $t7, 0x20($s4)
/* B1FE98 800A8CF8 A2820021 */  sb    $v0, 0x21($s4)
/* B1FE9C 800A8CFC 24840B5C */  addiu $a0, %lo(D_80140B5C) # addiu $a0, $a0, 0xb5c
/* B1FEA0 800A8D00 AFA80018 */  sw    $t0, 0x18($sp)
/* B1FEA4 800A8D04 AFB80010 */  sw    $t8, 0x10($sp)
/* B1FEA8 800A8D08 AFB90014 */  sw    $t9, 0x14($sp)
/* B1FEAC 800A8D0C 31A700FF */  andi  $a3, $t5, 0xff
/* B1FEB0 800A8D10 318600FF */  andi  $a2, $t4, 0xff
/* B1FEB4 800A8D14 0C00084C */  jal   osSyncPrintf
/* B1FEB8 800A8D18 304500FF */   andi  $a1, $v0, 0xff
/* B1FEBC 800A8D1C 10000003 */  b     .L800A8D2C
/* B1FEC0 800A8D20 00000000 */   nop   
.L800A8D24:
/* B1FEC4 800A8D24 0C02A068 */  jal   func_800A81A0
/* B1FEC8 800A8D28 00000000 */   nop   
.L800A8D2C:
/* B1FECC 800A8D2C 3C048014 */  lui   $a0, %hi(D_80140B74) # $a0, 0x8014
/* B1FED0 800A8D30 02808025 */  move  $s0, $s4
/* B1FED4 800A8D34 0C00084C */  jal   osSyncPrintf
/* B1FED8 800A8D38 24840B74 */   addiu $a0, %lo(D_80140B74) # addiu $a0, $a0, 0xb74
/* B1FEDC 800A8D3C 00009825 */  move  $s3, $zero
/* B1FEE0 800A8D40 00008825 */  move  $s1, $zero
.L800A8D44:
/* B1FEE4 800A8D44 02C02025 */  move  $a0, $s6
/* B1FEE8 800A8D48 0C00084C */  jal   osSyncPrintf
/* B1FEEC 800A8D4C 96050000 */   lhu   $a1, ($s0)
/* B1FEF0 800A8D50 26520001 */  addiu $s2, $s2, 1
/* B1FEF4 800A8D54 3252FFFF */  andi  $s2, $s2, 0xffff
/* B1FEF8 800A8D58 56F20005 */  bnel  $s7, $s2, .L800A8D70
/* B1FEFC 800A8D5C 96090000 */   lhu   $t1, ($s0)
/* B1FF00 800A8D60 0C00084C */  jal   osSyncPrintf
/* B1FF04 800A8D64 03C02025 */   move  $a0, $fp
/* B1FF08 800A8D68 00009025 */  move  $s2, $zero
/* B1FF0C 800A8D6C 96090000 */  lhu   $t1, ($s0)
.L800A8D70:
/* B1FF10 800A8D70 26310001 */  addiu $s1, $s1, 1
/* B1FF14 800A8D74 3231FFFF */  andi  $s1, $s1, 0xffff
/* B1FF18 800A8D78 2E2109AA */  sltiu $at, $s1, 0x9aa
/* B1FF1C 800A8D7C 02699821 */  addu  $s3, $s3, $t1
/* B1FF20 800A8D80 3273FFFF */  andi  $s3, $s3, 0xffff
/* B1FF24 800A8D84 1420FFEF */  bnez  $at, .L800A8D44
/* B1FF28 800A8D88 26100002 */   addiu $s0, $s0, 2
/* B1FF2C 800A8D8C 3C048014 */  lui   $a0, %hi(D_80140BC0) # $a0, 0x8014
/* B1FF30 800A8D90 A6931352 */  sh    $s3, 0x1352($s4)
/* B1FF34 800A8D94 24840BC0 */  addiu $a0, %lo(D_80140BC0) # addiu $a0, $a0, 0xbc0
/* B1FF38 800A8D98 3265FFFF */  andi  $a1, $s3, 0xffff
/* B1FF3C 800A8D9C 02609025 */  move  $s2, $s3
/* B1FF40 800A8DA0 0C00084C */  jal   osSyncPrintf
/* B1FF44 800A8DA4 02603025 */   move  $a2, $s3
/* B1FF48 800A8DA8 8FAA0050 */  lw    $t2, 0x50($sp)
/* B1FF4C 800A8DAC 3C010800 */  lui   $at, 0x800
/* B1FF50 800A8DB0 02802825 */  move  $a1, $s4
/* B1FF54 800A8DB4 95500006 */  lhu   $s0, 6($t2)
/* B1FF58 800A8DB8 24061450 */  li    $a2, 5200
/* B1FF5C 800A8DBC 24070001 */  li    $a3, 1
/* B1FF60 800A8DC0 0C02A7A8 */  jal   func_800A9EA0
/* B1FF64 800A8DC4 02012021 */   addu  $a0, $s0, $at
/* B1FF68 800A8DC8 928B001F */  lbu   $t3, 0x1f($s4)
/* B1FF6C 800A8DCC 928C0020 */  lbu   $t4, 0x20($s4)
/* B1FF70 800A8DD0 928D0021 */  lbu   $t5, 0x21($s4)
/* B1FF74 800A8DD4 3C048014 */  lui   $a0, %hi(D_80140BD4) # $a0, 0x8014
/* B1FF78 800A8DD8 24840BD4 */  addiu $a0, %lo(D_80140BD4) # addiu $a0, $a0, 0xbd4
/* B1FF7C 800A8DDC 9285001C */  lbu   $a1, 0x1c($s4)
/* B1FF80 800A8DE0 9286001D */  lbu   $a2, 0x1d($s4)
/* B1FF84 800A8DE4 9287001E */  lbu   $a3, 0x1e($s4)
/* B1FF88 800A8DE8 AFAB0010 */  sw    $t3, 0x10($sp)
/* B1FF8C 800A8DEC AFAC0014 */  sw    $t4, 0x14($sp)
/* B1FF90 800A8DF0 0C00084C */  jal   osSyncPrintf
/* B1FF94 800A8DF4 AFAD0018 */   sw    $t5, 0x18($sp)
/* B1FF98 800A8DF8 3C048014 */  lui   $a0, %hi(D_80140BEC) # $a0, 0x8014
/* B1FF9C 800A8DFC 24840BEC */  addiu $a0, %lo(D_80140BEC) # addiu $a0, $a0, 0xbec
/* B1FFA0 800A8E00 02002825 */  move  $a1, $s0
/* B1FFA4 800A8E04 8FA6005C */  lw    $a2, 0x5c($sp)
/* B1FFA8 800A8E08 96871352 */  lhu   $a3, 0x1352($s4)
/* B1FFAC 800A8E0C 0C00084C */  jal   osSyncPrintf
/* B1FFB0 800A8E10 AFB20010 */   sw    $s2, 0x10($sp)
.L800A8E14:
/* B1FFB4 800A8E14 8FAE0060 */  lw    $t6, 0x60($sp)
/* B1FFB8 800A8E18 3C010800 */  lui   $at, 0x800
/* B1FFBC 800A8E1C 02802825 */  move  $a1, $s4
/* B1FFC0 800A8E20 95D00000 */  lhu   $s0, ($t6)
/* B1FFC4 800A8E24 24061450 */  li    $a2, 5200
/* B1FFC8 800A8E28 24070001 */  li    $a3, 1
/* B1FFCC 800A8E2C 0C02A7A8 */  jal   func_800A9EA0
/* B1FFD0 800A8E30 02012021 */   addu  $a0, $s0, $at
/* B1FFD4 800A8E34 3C048014 */  lui   $a0, %hi(D_80140C14) # $a0, 0x8014
/* B1FFD8 800A8E38 24840C14 */  addiu $a0, %lo(D_80140C14) # addiu $a0, $a0, 0xc14
/* B1FFDC 800A8E3C 02002825 */  move  $a1, $s0
/* B1FFE0 800A8E40 8FA6005C */  lw    $a2, 0x5c($sp)
/* B1FFE4 800A8E44 96871352 */  lhu   $a3, 0x1352($s4)
/* B1FFE8 800A8E48 0C00084C */  jal   osSyncPrintf
/* B1FFEC 800A8E4C AFB20010 */   sw    $s2, 0x10($sp)
/* B1FFF0 800A8E50 10000004 */  b     .L800A8E64
/* B1FFF4 800A8E54 97AF0072 */   lhu   $t7, 0x72($sp)
.L800A8E58:
/* B1FFF8 800A8E58 0C00084C */  jal   osSyncPrintf
/* B1FFFC 800A8E5C 24840C38 */   addiu $a0, $a0, %lo(D_80140C38)
/* B20000 800A8E60 97AF0072 */  lhu   $t7, 0x72($sp)
.L800A8E64:
/* B20004 800A8E64 25F80001 */  addiu $t8, $t7, 1
/* B20008 800A8E68 3302FFFF */  andi  $v0, $t8, 0xffff
/* B2000C 800A8E6C 28410003 */  slti  $at, $v0, 3
/* B20010 800A8E70 AFA2005C */  sw    $v0, 0x5c($sp)
/* B20014 800A8E74 1420FF0F */  bnez  $at, .L800A8AB4
/* B20018 800A8E78 A7B80072 */   sh    $t8, 0x72($sp)
/* B2001C 800A8E7C 8FB9007C */  lw    $t9, 0x7c($sp)
/* B20020 800A8E80 34058000 */  li    $a1, 32768
/* B20024 800A8E84 0C001114 */  jal   bzero
/* B20028 800A8E88 8F240000 */   lw    $a0, ($t9)
/* B2002C 800A8E8C 8FA8007C */  lw    $t0, 0x7c($sp)
/* B20030 800A8E90 3C040800 */  lui   $a0, 0x800
/* B20034 800A8E94 34068000 */  li    $a2, 32768
/* B20038 800A8E98 00003825 */  move  $a3, $zero
/* B2003C 800A8E9C 0C02A7A8 */  jal   func_800A9EA0
/* B20040 800A8EA0 8D050000 */   lw    $a1, ($t0)
/* B20044 800A8EA4 97A90066 */  lhu   $t1, 0x66($sp)
/* B20048 800A8EA8 3C048014 */  lui   $a0, %hi(D_80140C58) # $a0, 0x8014
/* B2004C 800A8EAC 240A00A4 */  li    $t2, 164
/* B20050 800A8EB0 240B002C */  li    $t3, 44
/* B20054 800A8EB4 240C00CF */  li    $t4, 207
/* B20058 800A8EB8 AFAC0018 */  sw    $t4, 0x18($sp)
/* B2005C 800A8EBC AFAB0014 */  sw    $t3, 0x14($sp)
/* B20060 800A8EC0 AFAA0010 */  sw    $t2, 0x10($sp)
/* B20064 800A8EC4 24840C58 */  addiu $a0, %lo(D_80140C58) # addiu $a0, $a0, 0xc58
/* B20068 800A8EC8 24050022 */  li    $a1, 34
/* B2006C 800A8ECC 24060024 */  li    $a2, 36
/* B20070 800A8ED0 2407002E */  li    $a3, 46
/* B20074 800A8ED4 0C00084C */  jal   osSyncPrintf
/* B20078 800A8ED8 A689000C */   sh    $t1, 0xc($s4)
/* B2007C 800A8EDC 8FAD007C */  lw    $t5, 0x7c($sp)
/* B20080 800A8EE0 8FA40078 */  lw    $a0, 0x78($sp)
/* B20084 800A8EE4 3C010001 */  lui   $at, (0x0001C9F6 >> 16) # lui $at, 1
/* B20088 800A8EE8 8DA50000 */  lw    $a1, ($t5)
/* B2008C 800A8EEC 3421C9F6 */  ori   $at, (0x0001C9F6 & 0xFFFF) # ori $at, $at, 0xc9f6
/* B20090 800A8EF0 24060002 */  li    $a2, 2
/* B20094 800A8EF4 00812021 */  addu  $a0, $a0, $at
/* B20098 800A8EF8 0C01A508 */  jal   MemCopy
/* B2009C 800A8EFC 24A50042 */   addiu $a1, $a1, 0x42
/* B200A0 800A8F00 8FAE007C */  lw    $t6, 0x7c($sp)
/* B200A4 800A8F04 8FA40078 */  lw    $a0, 0x78($sp)
/* B200A8 800A8F08 3C010001 */  lui   $at, (0x0001C9F8 >> 16) # lui $at, 1
/* B200AC 800A8F0C 8DC50000 */  lw    $a1, ($t6)
/* B200B0 800A8F10 3421C9F8 */  ori   $at, (0x0001C9F8 & 0xFFFF) # ori $at, $at, 0xc9f8
/* B200B4 800A8F14 24060002 */  li    $a2, 2
/* B200B8 800A8F18 00812021 */  addu  $a0, $a0, $at
/* B200BC 800A8F1C 0C01A508 */  jal   MemCopy
/* B200C0 800A8F20 24A51492 */   addiu $a1, $a1, 0x1492
/* B200C4 800A8F24 8FAF007C */  lw    $t7, 0x7c($sp)
/* B200C8 800A8F28 8FA40078 */  lw    $a0, 0x78($sp)
/* B200CC 800A8F2C 3C010001 */  lui   $at, (0x0001C9FA >> 16) # lui $at, 1
/* B200D0 800A8F30 8DE50000 */  lw    $a1, ($t7)
/* B200D4 800A8F34 3421C9FA */  ori   $at, (0x0001C9FA & 0xFFFF) # ori $at, $at, 0xc9fa
/* B200D8 800A8F38 24060002 */  li    $a2, 2
/* B200DC 800A8F3C 00812021 */  addu  $a0, $a0, $at
/* B200E0 800A8F40 0C01A508 */  jal   MemCopy
/* B200E4 800A8F44 24A528E2 */   addiu $a1, $a1, 0x28e2
/* B200E8 800A8F48 8FB8007C */  lw    $t8, 0x7c($sp)
/* B200EC 800A8F4C 8FA40078 */  lw    $a0, 0x78($sp)
/* B200F0 800A8F50 3C010001 */  lui   $at, (0x0001C9FC >> 16) # lui $at, 1
/* B200F4 800A8F54 8F050000 */  lw    $a1, ($t8)
/* B200F8 800A8F58 3421C9FC */  ori   $at, (0x0001C9FC & 0xFFFF) # ori $at, $at, 0xc9fc
/* B200FC 800A8F5C 24060008 */  li    $a2, 8
/* B20100 800A8F60 00812021 */  addu  $a0, $a0, $at
/* B20104 800A8F64 0C01A508 */  jal   MemCopy
/* B20108 800A8F68 24A50044 */   addiu $a1, $a1, 0x44
/* B2010C 800A8F6C 8FB9007C */  lw    $t9, 0x7c($sp)
/* B20110 800A8F70 8FA40078 */  lw    $a0, 0x78($sp)
/* B20114 800A8F74 3C010001 */  lui   $at, (0x0001CA04 >> 16) # lui $at, 1
/* B20118 800A8F78 8F250000 */  lw    $a1, ($t9)
/* B2011C 800A8F7C 3421CA04 */  ori   $at, (0x0001CA04 & 0xFFFF) # ori $at, $at, 0xca04
/* B20120 800A8F80 24060008 */  li    $a2, 8
/* B20124 800A8F84 00812021 */  addu  $a0, $a0, $at
/* B20128 800A8F88 0C01A508 */  jal   MemCopy
/* B2012C 800A8F8C 24A51494 */   addiu $a1, $a1, 0x1494
/* B20130 800A8F90 8FA8007C */  lw    $t0, 0x7c($sp)
/* B20134 800A8F94 8FA40078 */  lw    $a0, 0x78($sp)
/* B20138 800A8F98 3C010001 */  lui   $at, (0x0001CA0C >> 16) # lui $at, 1
/* B2013C 800A8F9C 8D050000 */  lw    $a1, ($t0)
/* B20140 800A8FA0 3421CA0C */  ori   $at, (0x0001CA0C & 0xFFFF) # ori $at, $at, 0xca0c
/* B20144 800A8FA4 24060008 */  li    $a2, 8
/* B20148 800A8FA8 00812021 */  addu  $a0, $a0, $at
/* B2014C 800A8FAC 0C01A508 */  jal   MemCopy
/* B20150 800A8FB0 24A528E4 */   addiu $a1, $a1, 0x28e4
/* B20154 800A8FB4 8FA9007C */  lw    $t1, 0x7c($sp)
/* B20158 800A8FB8 8FA40078 */  lw    $a0, 0x78($sp)
/* B2015C 800A8FBC 3C010001 */  lui   $at, (0x0001CA14 >> 16) # lui $at, 1
/* B20160 800A8FC0 8D250000 */  lw    $a1, ($t1)
/* B20164 800A8FC4 3421CA14 */  ori   $at, (0x0001CA14 & 0xFFFF) # ori $at, $at, 0xca14
/* B20168 800A8FC8 24060002 */  li    $a2, 2
/* B2016C 800A8FCC 00812021 */  addu  $a0, $a0, $at
/* B20170 800A8FD0 0C01A508 */  jal   MemCopy
/* B20174 800A8FD4 24A5004E */   addiu $a1, $a1, 0x4e
/* B20178 800A8FD8 8FAA007C */  lw    $t2, 0x7c($sp)
/* B2017C 800A8FDC 8FA40078 */  lw    $a0, 0x78($sp)
/* B20180 800A8FE0 3C010001 */  lui   $at, (0x0001CA16 >> 16) # lui $at, 1
/* B20184 800A8FE4 8D450000 */  lw    $a1, ($t2)
/* B20188 800A8FE8 3421CA16 */  ori   $at, (0x0001CA16 & 0xFFFF) # ori $at, $at, 0xca16
/* B2018C 800A8FEC 24060002 */  li    $a2, 2
/* B20190 800A8FF0 00812021 */  addu  $a0, $a0, $at
/* B20194 800A8FF4 0C01A508 */  jal   MemCopy
/* B20198 800A8FF8 24A5149E */   addiu $a1, $a1, 0x149e
/* B2019C 800A8FFC 8FAB007C */  lw    $t3, 0x7c($sp)
/* B201A0 800A9000 8FA40078 */  lw    $a0, 0x78($sp)
/* B201A4 800A9004 3C010001 */  lui   $at, (0x0001CA18 >> 16) # lui $at, 1
/* B201A8 800A9008 8D650000 */  lw    $a1, ($t3)
/* B201AC 800A900C 3421CA18 */  ori   $at, (0x0001CA18 & 0xFFFF) # ori $at, $at, 0xca18
/* B201B0 800A9010 24060002 */  li    $a2, 2
/* B201B4 800A9014 00812021 */  addu  $a0, $a0, $at
/* B201B8 800A9018 0C01A508 */  jal   MemCopy
/* B201BC 800A901C 24A528EE */   addiu $a1, $a1, 0x28ee
/* B201C0 800A9020 8FAC007C */  lw    $t4, 0x7c($sp)
/* B201C4 800A9024 8FA40078 */  lw    $a0, 0x78($sp)
/* B201C8 800A9028 3C010001 */  lui   $at, (0x0001CA1C >> 16) # lui $at, 1
/* B201CC 800A902C 8D850000 */  lw    $a1, ($t4)
/* B201D0 800A9030 3421CA1C */  ori   $at, (0x0001CA1C & 0xFFFF) # ori $at, $at, 0xca1c
/* B201D4 800A9034 24060004 */  li    $a2, 4
/* B201D8 800A9038 00812021 */  addu  $a0, $a0, $at
/* B201DC 800A903C 0C01A508 */  jal   MemCopy
/* B201E0 800A9040 24A500C4 */   addiu $a1, $a1, 0xc4
/* B201E4 800A9044 8FAD007C */  lw    $t5, 0x7c($sp)
/* B201E8 800A9048 8FA40078 */  lw    $a0, 0x78($sp)
/* B201EC 800A904C 3C010001 */  lui   $at, (0x0001CA20 >> 16) # lui $at, 1
/* B201F0 800A9050 8DA50000 */  lw    $a1, ($t5)
/* B201F4 800A9054 3421CA20 */  ori   $at, (0x0001CA20 & 0xFFFF) # ori $at, $at, 0xca20
/* B201F8 800A9058 24060004 */  li    $a2, 4
/* B201FC 800A905C 00812021 */  addu  $a0, $a0, $at
/* B20200 800A9060 0C01A508 */  jal   MemCopy
/* B20204 800A9064 24A51514 */   addiu $a1, $a1, 0x1514
/* B20208 800A9068 8FAE007C */  lw    $t6, 0x7c($sp)
/* B2020C 800A906C 8FA40078 */  lw    $a0, 0x78($sp)
/* B20210 800A9070 3C010001 */  lui   $at, (0x0001CA24 >> 16) # lui $at, 1
/* B20214 800A9074 8DC50000 */  lw    $a1, ($t6)
/* B20218 800A9078 3421CA24 */  ori   $at, (0x0001CA24 & 0xFFFF) # ori $at, $at, 0xca24
/* B2021C 800A907C 24060004 */  li    $a2, 4
/* B20220 800A9080 00812021 */  addu  $a0, $a0, $at
/* B20224 800A9084 0C01A508 */  jal   MemCopy
/* B20228 800A9088 24A52964 */   addiu $a1, $a1, 0x2964
/* B2022C 800A908C 8FAF007C */  lw    $t7, 0x7c($sp)
/* B20230 800A9090 8FA40078 */  lw    $a0, 0x78($sp)
/* B20234 800A9094 3C010001 */  lui   $at, (0x0001CA28 >> 16) # lui $at, 1
/* B20238 800A9098 8DE50000 */  lw    $a1, ($t7)
/* B2023C 800A909C 3421CA28 */  ori   $at, (0x0001CA28 & 0xFFFF) # ori $at, $at, 0xca28
/* B20240 800A90A0 24060002 */  li    $a2, 2
/* B20244 800A90A4 00812021 */  addu  $a0, $a0, $at
/* B20248 800A90A8 0C01A508 */  jal   MemCopy
/* B2024C 800A90AC 24A5004C */   addiu $a1, $a1, 0x4c
/* B20250 800A90B0 8FB8007C */  lw    $t8, 0x7c($sp)
/* B20254 800A90B4 8FA40078 */  lw    $a0, 0x78($sp)
/* B20258 800A90B8 3C010001 */  lui   $at, (0x0001CA2A >> 16) # lui $at, 1
/* B2025C 800A90BC 8F050000 */  lw    $a1, ($t8)
/* B20260 800A90C0 3421CA2A */  ori   $at, (0x0001CA2A & 0xFFFF) # ori $at, $at, 0xca2a
/* B20264 800A90C4 24060002 */  li    $a2, 2
/* B20268 800A90C8 00812021 */  addu  $a0, $a0, $at
/* B2026C 800A90CC 0C01A508 */  jal   MemCopy
/* B20270 800A90D0 24A5149C */   addiu $a1, $a1, 0x149c
/* B20274 800A90D4 8FB9007C */  lw    $t9, 0x7c($sp)
/* B20278 800A90D8 8FA40078 */  lw    $a0, 0x78($sp)
/* B2027C 800A90DC 3C010001 */  lui   $at, (0x0001CA2C >> 16) # lui $at, 1
/* B20280 800A90E0 8F250000 */  lw    $a1, ($t9)
/* B20284 800A90E4 3421CA2C */  ori   $at, (0x0001CA2C & 0xFFFF) # ori $at, $at, 0xca2c
/* B20288 800A90E8 24060002 */  li    $a2, 2
/* B2028C 800A90EC 00812021 */  addu  $a0, $a0, $at
/* B20290 800A90F0 0C01A508 */  jal   MemCopy
/* B20294 800A90F4 24A528EC */   addiu $a1, $a1, 0x28ec
/* B20298 800A90F8 8FA8007C */  lw    $t0, 0x7c($sp)
/* B2029C 800A90FC 8FA40078 */  lw    $a0, 0x78($sp)
/* B202A0 800A9100 3C010001 */  lui   $at, (0x0001CA2E >> 16) # lui $at, 1
/* B202A4 800A9104 8D050000 */  lw    $a1, ($t0)
/* B202A8 800A9108 3421CA2E */  ori   $at, (0x0001CA2E & 0xFFFF) # ori $at, $at, 0xca2e
/* B202AC 800A910C 24060001 */  li    $a2, 1
/* B202B0 800A9110 00812021 */  addu  $a0, $a0, $at
/* B202B4 800A9114 0C01A508 */  jal   MemCopy
/* B202B8 800A9118 24A500EF */   addiu $a1, $a1, 0xef
/* B202BC 800A911C 8FA9007C */  lw    $t1, 0x7c($sp)
/* B202C0 800A9120 8FA40078 */  lw    $a0, 0x78($sp)
/* B202C4 800A9124 3C010001 */  lui   $at, (0x0001CA2F >> 16) # lui $at, 1
/* B202C8 800A9128 8D250000 */  lw    $a1, ($t1)
/* B202CC 800A912C 3421CA2F */  ori   $at, (0x0001CA2F & 0xFFFF) # ori $at, $at, 0xca2f
/* B202D0 800A9130 24060001 */  li    $a2, 1
/* B202D4 800A9134 00812021 */  addu  $a0, $a0, $at
/* B202D8 800A9138 0C01A508 */  jal   MemCopy
/* B202DC 800A913C 24A5153F */   addiu $a1, $a1, 0x153f
/* B202E0 800A9140 8FAA007C */  lw    $t2, 0x7c($sp)
/* B202E4 800A9144 8FA40078 */  lw    $a0, 0x78($sp)
/* B202E8 800A9148 3C010001 */  lui   $at, (0x0001CA30 >> 16) # lui $at, 1
/* B202EC 800A914C 8D450000 */  lw    $a1, ($t2)
/* B202F0 800A9150 3421CA30 */  ori   $at, (0x0001CA30 & 0xFFFF) # ori $at, $at, 0xca30
/* B202F4 800A9154 24060001 */  li    $a2, 1
/* B202F8 800A9158 00812021 */  addu  $a0, $a0, $at
/* B202FC 800A915C 0C01A508 */  jal   MemCopy
/* B20300 800A9160 24A5298F */   addiu $a1, $a1, 0x298f
/* B20304 800A9164 8FAB007C */  lw    $t3, 0x7c($sp)
/* B20308 800A9168 8FA40078 */  lw    $a0, 0x78($sp)
/* B2030C 800A916C 3C010001 */  lui   $at, (0x0001CA32 >> 16) # lui $at, 1
/* B20310 800A9170 8D650000 */  lw    $a1, ($t3)
/* B20314 800A9174 3421CA32 */  ori   $at, (0x0001CA32 & 0xFFFF) # ori $at, $at, 0xca32
/* B20318 800A9178 24060002 */  li    $a2, 2
/* B2031C 800A917C 00812021 */  addu  $a0, $a0, $at
/* B20320 800A9180 0C01A508 */  jal   MemCopy
/* B20324 800A9184 24A50050 */   addiu $a1, $a1, 0x50
/* B20328 800A9188 8FAC007C */  lw    $t4, 0x7c($sp)
/* B2032C 800A918C 8FA40078 */  lw    $a0, 0x78($sp)
/* B20330 800A9190 3C010001 */  lui   $at, (0x0001CA34 >> 16) # lui $at, 1
/* B20334 800A9194 8D850000 */  lw    $a1, ($t4)
/* B20338 800A9198 3421CA34 */  ori   $at, (0x0001CA34 & 0xFFFF) # ori $at, $at, 0xca34
/* B2033C 800A919C 24060002 */  li    $a2, 2
/* B20340 800A91A0 00812021 */  addu  $a0, $a0, $at
/* B20344 800A91A4 0C01A508 */  jal   MemCopy
/* B20348 800A91A8 24A514A0 */   addiu $a1, $a1, 0x14a0
/* B2034C 800A91AC 8FAD007C */  lw    $t5, 0x7c($sp)
/* B20350 800A91B0 8FA40078 */  lw    $a0, 0x78($sp)
/* B20354 800A91B4 3C010001 */  lui   $at, (0x0001CA36 >> 16) # lui $at, 1
/* B20358 800A91B8 8DA50000 */  lw    $a1, ($t5)
/* B2035C 800A91BC 3421CA36 */  ori   $at, (0x0001CA36 & 0xFFFF) # ori $at, $at, 0xca36
/* B20360 800A91C0 24060002 */  li    $a2, 2
/* B20364 800A91C4 00812021 */  addu  $a0, $a0, $at
/* B20368 800A91C8 0C01A508 */  jal   MemCopy
/* B2036C 800A91CC 24A528F0 */   addiu $a1, $a1, 0x28f0
/* B20370 800A91D0 8FB00078 */  lw    $s0, 0x78($sp)
/* B20374 800A91D4 3C010001 */  lui   $at, (0x00018000 >> 16) # lui $at, 1
/* B20378 800A91D8 34218000 */  ori   $at, (0x00018000 & 0xFFFF) # ori $at, $at, 0x8000
/* B2037C 800A91DC 02018021 */  addu  $s0, $s0, $at
/* B20380 800A91E0 3C048014 */  lui   $a0, %hi(D_80140C94) # $a0, 0x8014
/* B20384 800A91E4 24840C94 */  addiu $a0, %lo(D_80140C94) # addiu $a0, $a0, 0xc94
/* B20388 800A91E8 86054A28 */  lh    $a1, 0x4a28($s0)
/* B2038C 800A91EC 86064A2A */  lh    $a2, 0x4a2a($s0)
/* B20390 800A91F0 0C00084C */  jal   osSyncPrintf
/* B20394 800A91F4 86074A2C */   lh    $a3, 0x4a2c($s0)
/* B20398 800A91F8 3C048014 */  lui   $a0, %hi(D_80140CA8) # $a0, 0x8014
/* B2039C 800A91FC 24840CA8 */  addiu $a0, %lo(D_80140CA8) # addiu $a0, $a0, 0xca8
/* B203A0 800A9200 82054A2E */  lb    $a1, 0x4a2e($s0)
/* B203A4 800A9204 82064A2F */  lb    $a2, 0x4a2f($s0)
/* B203A8 800A9208 0C00084C */  jal   osSyncPrintf
/* B203AC 800A920C 82074A30 */   lb    $a3, 0x4a30($s0)
/* B203B0 800A9210 3C048014 */  lui   $a0, %hi(D_80140CC4) # $a0, 0x8014
/* B203B4 800A9214 24840CC4 */  addiu $a0, %lo(D_80140CC4) # addiu $a0, $a0, 0xcc4
/* B203B8 800A9218 96054A32 */  lhu   $a1, 0x4a32($s0)
/* B203BC 800A921C 96064A34 */  lhu   $a2, 0x4a34($s0)
/* B203C0 800A9220 0C00084C */  jal   osSyncPrintf
/* B203C4 800A9224 96074A36 */   lhu   $a3, 0x4a36($s0)
/* B203C8 800A9228 8FBF004C */  lw    $ra, 0x4c($sp)
/* B203CC 800A922C 8FB00028 */  lw    $s0, 0x28($sp)
/* B203D0 800A9230 8FB1002C */  lw    $s1, 0x2c($sp)
/* B203D4 800A9234 8FB20030 */  lw    $s2, 0x30($sp)
/* B203D8 800A9238 8FB30034 */  lw    $s3, 0x34($sp)
/* B203DC 800A923C 8FB40038 */  lw    $s4, 0x38($sp)
/* B203E0 800A9240 8FB5003C */  lw    $s5, 0x3c($sp)
/* B203E4 800A9244 8FB60040 */  lw    $s6, 0x40($sp)
/* B203E8 800A9248 8FB70044 */  lw    $s7, 0x44($sp)
/* B203EC 800A924C 8FBE0048 */  lw    $fp, 0x48($sp)
/* B203F0 800A9250 03E00008 */  jr    $ra
/* B203F4 800A9254 27BD0078 */   addiu $sp, $sp, 0x78

glabel func_800A9258
/* B203F8 800A9258 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B203FC 800A925C AFB60040 */  sw    $s6, 0x40($sp)
/* B20400 800A9260 3C160001 */  lui   $s6, (0x00018000 >> 16) # lui $s6, 1
/* B20404 800A9264 36D68000 */  ori   $s6, (0x00018000 & 0xFFFF) # ori $s6, $s6, 0x8000
/* B20408 800A9268 AFB1002C */  sw    $s1, 0x2c($sp)
/* B2040C 800A926C AFBF0044 */  sw    $ra, 0x44($sp)
/* B20410 800A9270 AFB5003C */  sw    $s5, 0x3c($sp)
/* B20414 800A9274 AFB40038 */  sw    $s4, 0x38($sp)
/* B20418 800A9278 AFB30034 */  sw    $s3, 0x34($sp)
/* B2041C 800A927C AFB20030 */  sw    $s2, 0x30($sp)
/* B20420 800A9280 AFB00028 */  sw    $s0, 0x28($sp)
/* B20424 800A9284 AFA5004C */  sw    $a1, 0x4c($sp)
/* B20428 800A9288 00968821 */  addu  $s1, $a0, $s6
/* B2042C 800A928C 862E4A38 */  lh    $t6, 0x4a38($s1)
/* B20430 800A9290 0080A825 */  move  $s5, $a0
/* B20434 800A9294 11C00005 */  beqz  $t6, .L800A92AC
/* B20438 800A9298 00000000 */   nop   
/* B2043C 800A929C 0C02A068 */  jal   func_800A81A0
/* B20440 800A92A0 00000000 */   nop   
/* B20444 800A92A4 10000003 */  b     .L800A92B4
/* B20448 800A92A8 00000000 */   nop   
.L800A92AC:
/* B2044C 800A92AC 0C02A0B2 */  jal   func_800A82C8
/* B20450 800A92B0 00000000 */   nop   
.L800A92B4:
/* B20454 800A92B4 3C148016 */  lui   $s4, %hi(gSaveContext) # $s4, 0x8016
/* B20458 800A92B8 2694E660 */  addiu $s4, %lo(gSaveContext) # addiu $s4, $s4, -0x19a0
/* B2045C 800A92BC 240F00BB */  li    $t7, 187
/* B20460 800A92C0 24180001 */  li    $t8, 1
/* B20464 800A92C4 24196AAB */  li    $t9, 27307
/* B20468 800A92C8 3408FFF1 */  li    $t0, 65521
/* B2046C 800A92CC AE8F0000 */  sw    $t7, ($s4)
/* B20470 800A92D0 AE980004 */  sw    $t8, 4($s4)
/* B20474 800A92D4 A699000C */  sh    $t9, 0xc($s4)
/* B20478 800A92D8 AE880008 */  sw    $t0, 8($s4)
/* B2047C 800A92DC 86294A38 */  lh    $t1, 0x4a38($s1)
/* B20480 800A92E0 00008025 */  move  $s0, $zero
/* B20484 800A92E4 2402005A */  li    $v0, 90
/* B20488 800A92E8 15200002 */  bnez  $t1, .L800A92F4
/* B2048C 800A92EC 24190045 */   li    $t9, 69
/* B20490 800A92F0 AE800008 */  sw    $zero, 8($s4)
.L800A92F4:
/* B20494 800A92F4 862A4A38 */  lh    $t2, 0x4a38($s1)
/* B20498 800A92F8 0290C021 */  addu  $t8, $s4, $s0
/* B2049C 800A92FC 000A58C0 */  sll   $t3, $t2, 3
/* B204A0 800A9300 02AB6021 */  addu  $t4, $s5, $t3
/* B204A4 800A9304 01906821 */  addu  $t5, $t4, $s0
/* B204A8 800A9308 26100001 */  addiu $s0, $s0, 1
/* B204AC 800A930C 01B67021 */  addu  $t6, $t5, $s6
/* B204B0 800A9310 91CF49FC */  lbu   $t7, 0x49fc($t6)
/* B204B4 800A9314 3210FFFF */  andi  $s0, $s0, 0xffff
/* B204B8 800A9318 2A010008 */  slti  $at, $s0, 8
/* B204BC 800A931C 1420FFF5 */  bnez  $at, .L800A92F4
/* B204C0 800A9320 A30F0024 */   sb    $t7, 0x24($t8)
/* B204C4 800A9324 2408004C */  li    $t0, 76
/* B204C8 800A9328 24090044 */  li    $t1, 68
/* B204CC 800A932C 240A0041 */  li    $t2, 65
/* B204D0 800A9330 A282001C */  sb    $v0, 0x1c($s4)
/* B204D4 800A9334 A299001D */  sb    $t9, 0x1d($s4)
/* B204D8 800A9338 A288001E */  sb    $t0, 0x1e($s4)
/* B204DC 800A933C A289001F */  sb    $t1, 0x1f($s4)
/* B204E0 800A9340 A28A0020 */  sb    $t2, 0x20($s4)
/* B204E4 800A9344 A2820021 */  sb    $v0, 0x21($s4)
/* B204E8 800A9348 922B49F4 */  lbu   $t3, 0x49f4($s1)
/* B204EC 800A934C 3C048014 */  lui   $a0, %hi(D_80140CDC) # $a0, 0x8014
/* B204F0 800A9350 24840CDC */  addiu $a0, %lo(D_80140CDC) # addiu $a0, $a0, 0xcdc
/* B204F4 800A9354 A68B002C */  sh    $t3, 0x2c($s4)
/* B204F8 800A9358 0C00084C */  jal   osSyncPrintf
/* B204FC 800A935C 922549F4 */   lbu   $a1, 0x49f4($s1)
/* B20500 800A9360 928C001F */  lbu   $t4, 0x1f($s4)
/* B20504 800A9364 928D0020 */  lbu   $t5, 0x20($s4)
/* B20508 800A9368 928E0021 */  lbu   $t6, 0x21($s4)
/* B2050C 800A936C 3C048014 */  lui   $a0, %hi(D_80140CF0) # $a0, 0x8014
/* B20510 800A9370 24840CF0 */  addiu $a0, %lo(D_80140CF0) # addiu $a0, $a0, 0xcf0
/* B20514 800A9374 9285001C */  lbu   $a1, 0x1c($s4)
/* B20518 800A9378 9286001D */  lbu   $a2, 0x1d($s4)
/* B2051C 800A937C 9287001E */  lbu   $a3, 0x1e($s4)
/* B20520 800A9380 AFAC0010 */  sw    $t4, 0x10($sp)
/* B20524 800A9384 AFAD0014 */  sw    $t5, 0x14($sp)
/* B20528 800A9388 0C00084C */  jal   osSyncPrintf
/* B2052C 800A938C AFAE0018 */   sw    $t6, 0x18($sp)
/* B20530 800A9390 3C048014 */  lui   $a0, %hi(D_80140D08) # $a0, 0x8014
/* B20534 800A9394 0C00084C */  jal   osSyncPrintf
/* B20538 800A9398 24840D08 */   addiu $a0, %lo(D_80140D08) # addiu $a0, $a0, 0xd08
/* B2053C 800A939C 02808825 */  move  $s1, $s4
/* B20540 800A93A0 00009025 */  move  $s2, $zero
/* B20544 800A93A4 00009825 */  move  $s3, $zero
/* B20548 800A93A8 00008025 */  move  $s0, $zero
.L800A93AC:
/* B2054C 800A93AC 3C048014 */  lui   $a0, %hi(D_80140D58) # $a0, 0x8014
/* B20550 800A93B0 24840D58 */  addiu $a0, %lo(D_80140D58) # addiu $a0, $a0, 0xd58
/* B20554 800A93B4 0C00084C */  jal   osSyncPrintf
/* B20558 800A93B8 96250000 */   lhu   $a1, ($s1)
/* B2055C 800A93BC 962F0000 */  lhu   $t7, ($s1)
/* B20560 800A93C0 26520001 */  addiu $s2, $s2, 1
/* B20564 800A93C4 3252FFFF */  andi  $s2, $s2, 0xffff
/* B20568 800A93C8 24010020 */  li    $at, 32
/* B2056C 800A93CC 026F9821 */  addu  $s3, $s3, $t7
/* B20570 800A93D0 3273FFFF */  andi  $s3, $s3, 0xffff
/* B20574 800A93D4 16410005 */  bne   $s2, $at, .L800A93EC
/* B20578 800A93D8 26310002 */   addiu $s1, $s1, 2
/* B2057C 800A93DC 3C048014 */  lui   $a0, %hi(D_80140D5C) # $a0, 0x8014
/* B20580 800A93E0 0C00084C */  jal   osSyncPrintf
/* B20584 800A93E4 24840D5C */   addiu $a0, %lo(D_80140D5C) # addiu $a0, $a0, 0xd5c
/* B20588 800A93E8 00009025 */  move  $s2, $zero
.L800A93EC:
/* B2058C 800A93EC 26100001 */  addiu $s0, $s0, 1
/* B20590 800A93F0 3210FFFF */  andi  $s0, $s0, 0xffff
/* B20594 800A93F4 2E0109AA */  sltiu $at, $s0, 0x9aa
/* B20598 800A93F8 1420FFEC */  bnez  $at, .L800A93AC
/* B2059C 800A93FC 00000000 */   nop   
/* B205A0 800A9400 3C048014 */  lui   $a0, %hi(D_80140D60) # $a0, 0x8014
/* B205A4 800A9404 A6931352 */  sh    $s3, 0x1352($s4)
/* B205A8 800A9408 24840D60 */  addiu $a0, %lo(D_80140D60) # addiu $a0, $a0, 0xd60
/* B205AC 800A940C 0C00084C */  jal   osSyncPrintf
/* B205B0 800A9410 3265FFFF */   andi  $a1, $s3, 0xffff
/* B205B4 800A9414 8E861354 */  lw    $a2, 0x1354($s4)
/* B205B8 800A9418 3C138013 */  lui   $s3, %hi(D_8012A4E0) # $s3, 0x8013
/* B205BC 800A941C 2673A4E0 */  addiu $s3, %lo(D_8012A4E0) # addiu $s3, $s3, -0x5b20
/* B205C0 800A9420 0006C040 */  sll   $t8, $a2, 1
/* B205C4 800A9424 0278C821 */  addu  $t9, $s3, $t8
/* B205C8 800A9428 97300000 */  lhu   $s0, ($t9)
/* B205CC 800A942C 3C048014 */  lui   $a0, %hi(D_80140D74) # $a0, 0x8014
/* B205D0 800A9430 24840D74 */  addiu $a0, %lo(D_80140D74) # addiu $a0, $a0, 0xd74
/* B205D4 800A9434 0C00084C */  jal   osSyncPrintf
/* B205D8 800A9438 02002825 */   move  $a1, $s0
/* B205DC 800A943C 8FA8004C */  lw    $t0, 0x4c($sp)
/* B205E0 800A9440 02802825 */  move  $a1, $s4
/* B205E4 800A9444 24061354 */  li    $a2, 4948
/* B205E8 800A9448 8D090000 */  lw    $t1, ($t0)
/* B205EC 800A944C 0C01A508 */  jal   MemCopy
/* B205F0 800A9450 01302021 */   addu  $a0, $t1, $s0
/* B205F4 800A9454 8E911354 */  lw    $s1, 0x1354($s4)
/* B205F8 800A9458 3C048014 */  lui   $a0, %hi(D_80140D80) # $a0, 0x8014
/* B205FC 800A945C 24840D80 */  addiu $a0, %lo(D_80140D80) # addiu $a0, $a0, 0xd80
/* B20600 800A9460 00115040 */  sll   $t2, $s1, 1
/* B20604 800A9464 026A5821 */  addu  $t3, $s3, $t2
/* B20608 800A9468 95700006 */  lhu   $s0, 6($t3)
/* B2060C 800A946C 26260003 */  addiu $a2, $s1, 3
/* B20610 800A9470 0C00084C */  jal   osSyncPrintf
/* B20614 800A9474 02002825 */   move  $a1, $s0
/* B20618 800A9478 8FAC004C */  lw    $t4, 0x4c($sp)
/* B2061C 800A947C 02802825 */  move  $a1, $s4
/* B20620 800A9480 24061354 */  li    $a2, 4948
/* B20624 800A9484 8D8D0000 */  lw    $t5, ($t4)
/* B20628 800A9488 0C01A508 */  jal   MemCopy
/* B2062C 800A948C 01B02021 */   addu  $a0, $t5, $s0
/* B20630 800A9490 8FAE004C */  lw    $t6, 0x4c($sp)
/* B20634 800A9494 3C040800 */  lui   $a0, 0x800
/* B20638 800A9498 34068000 */  li    $a2, 32768
/* B2063C 800A949C 24070001 */  li    $a3, 1
/* B20640 800A94A0 0C02A7A8 */  jal   func_800A9EA0
/* B20644 800A94A4 8DC50000 */   lw    $a1, ($t6)
/* B20648 800A94A8 3C048014 */  lui   $a0, %hi(D_80140D8C) # $a0, 0x8014
/* B2064C 800A94AC 0C00084C */  jal   osSyncPrintf
/* B20650 800A94B0 24840D8C */   addiu $a0, %lo(D_80140D8C) # addiu $a0, $a0, 0xd8c
/* B20654 800A94B4 3C048014 */  lui   $a0, %hi(D_80140D9C) # $a0, 0x8014
/* B20658 800A94B8 24840D9C */  addiu $a0, %lo(D_80140D9C) # addiu $a0, $a0, 0xd9c
/* B2065C 800A94BC 0C00084C */  jal   osSyncPrintf
/* B20660 800A94C0 8E851354 */   lw    $a1, 0x1354($s4)
/* B20664 800A94C4 3C048014 */  lui   $a0, %hi(D_80140DB8) # $a0, 0x8014
/* B20668 800A94C8 240F00A4 */  li    $t7, 164
/* B2066C 800A94CC 2418002C */  li    $t8, 44
/* B20670 800A94D0 AFB80014 */  sw    $t8, 0x14($sp)
/* B20674 800A94D4 AFAF0010 */  sw    $t7, 0x10($sp)
/* B20678 800A94D8 24840DB8 */  addiu $a0, %lo(D_80140DB8) # addiu $a0, $a0, 0xdb8
/* B2067C 800A94DC 24050022 */  li    $a1, 34
/* B20680 800A94E0 24060024 */  li    $a2, 36
/* B20684 800A94E4 0C00084C */  jal   osSyncPrintf
/* B20688 800A94E8 2407002E */   li    $a3, 46
/* B2068C 800A94EC 8E821354 */  lw    $v0, 0x1354($s4)
/* B20690 800A94F0 8FA8004C */  lw    $t0, 0x4c($sp)
/* B20694 800A94F4 3C010001 */  lui   $at, (0x0001C9F6 >> 16) # lui $at, 1
/* B20698 800A94F8 00021040 */  sll   $v0, $v0, 1
/* B2069C 800A94FC 0262C821 */  addu  $t9, $s3, $v0
/* B206A0 800A9500 97320000 */  lhu   $s2, ($t9)
/* B206A4 800A9504 8D090000 */  lw    $t1, ($t0)
/* B206A8 800A9508 02A22021 */  addu  $a0, $s5, $v0
/* B206AC 800A950C 3421C9F6 */  ori   $at, (0x0001C9F6 & 0xFFFF) # ori $at, $at, 0xc9f6
/* B206B0 800A9510 01322821 */  addu  $a1, $t1, $s2
/* B206B4 800A9514 24A50022 */  addiu $a1, $a1, 0x22
/* B206B8 800A9518 00812021 */  addu  $a0, $a0, $at
/* B206BC 800A951C 0C01A508 */  jal   MemCopy
/* B206C0 800A9520 24060002 */   li    $a2, 2
/* B206C4 800A9524 8FAC004C */  lw    $t4, 0x4c($sp)
/* B206C8 800A9528 8E8A1354 */  lw    $t2, 0x1354($s4)
/* B206CC 800A952C 3C010001 */  lui   $at, (0x0001C9FC >> 16) # lui $at, 1
/* B206D0 800A9530 8D8D0000 */  lw    $t5, ($t4)
/* B206D4 800A9534 000A58C0 */  sll   $t3, $t2, 3
/* B206D8 800A9538 02AB2021 */  addu  $a0, $s5, $t3
/* B206DC 800A953C 3421C9FC */  ori   $at, (0x0001C9FC & 0xFFFF) # ori $at, $at, 0xc9fc
/* B206E0 800A9540 01B22821 */  addu  $a1, $t5, $s2
/* B206E4 800A9544 24A50024 */  addiu $a1, $a1, 0x24
/* B206E8 800A9548 00812021 */  addu  $a0, $a0, $at
/* B206EC 800A954C 0C01A508 */  jal   MemCopy
/* B206F0 800A9550 24060008 */   li    $a2, 8
/* B206F4 800A9554 8FB8004C */  lw    $t8, 0x4c($sp)
/* B206F8 800A9558 8E8E1354 */  lw    $t6, 0x1354($s4)
/* B206FC 800A955C 3C010001 */  lui   $at, (0x0001CA14 >> 16) # lui $at, 1
/* B20700 800A9560 8F190000 */  lw    $t9, ($t8)
/* B20704 800A9564 000E7840 */  sll   $t7, $t6, 1
/* B20708 800A9568 02AF2021 */  addu  $a0, $s5, $t7
/* B2070C 800A956C 3421CA14 */  ori   $at, (0x0001CA14 & 0xFFFF) # ori $at, $at, 0xca14
/* B20710 800A9570 03322821 */  addu  $a1, $t9, $s2
/* B20714 800A9574 24A5002E */  addiu $a1, $a1, 0x2e
/* B20718 800A9578 00812021 */  addu  $a0, $a0, $at
/* B2071C 800A957C 0C01A508 */  jal   MemCopy
/* B20720 800A9580 24060002 */   li    $a2, 2
/* B20724 800A9584 8FAA004C */  lw    $t2, 0x4c($sp)
/* B20728 800A9588 8E881354 */  lw    $t0, 0x1354($s4)
/* B2072C 800A958C 3C010001 */  lui   $at, (0x0001CA1C >> 16) # lui $at, 1
/* B20730 800A9590 8D4B0000 */  lw    $t3, ($t2)
/* B20734 800A9594 00084880 */  sll   $t1, $t0, 2
/* B20738 800A9598 02A92021 */  addu  $a0, $s5, $t1
/* B2073C 800A959C 3421CA1C */  ori   $at, (0x0001CA1C & 0xFFFF) # ori $at, $at, 0xca1c
/* B20740 800A95A0 01722821 */  addu  $a1, $t3, $s2
/* B20744 800A95A4 24A500A4 */  addiu $a1, $a1, 0xa4
/* B20748 800A95A8 00812021 */  addu  $a0, $a0, $at
/* B2074C 800A95AC 0C01A508 */  jal   MemCopy
/* B20750 800A95B0 24060004 */   li    $a2, 4
/* B20754 800A95B4 8FAE004C */  lw    $t6, 0x4c($sp)
/* B20758 800A95B8 8E8C1354 */  lw    $t4, 0x1354($s4)
/* B2075C 800A95BC 3C010001 */  lui   $at, (0x0001CA28 >> 16) # lui $at, 1
/* B20760 800A95C0 8DCF0000 */  lw    $t7, ($t6)
/* B20764 800A95C4 000C6840 */  sll   $t5, $t4, 1
/* B20768 800A95C8 02AD2021 */  addu  $a0, $s5, $t5
/* B2076C 800A95CC 3421CA28 */  ori   $at, (0x0001CA28 & 0xFFFF) # ori $at, $at, 0xca28
/* B20770 800A95D0 01F22821 */  addu  $a1, $t7, $s2
/* B20774 800A95D4 24A5002C */  addiu $a1, $a1, 0x2c
/* B20778 800A95D8 00812021 */  addu  $a0, $a0, $at
/* B2077C 800A95DC 0C01A508 */  jal   MemCopy
/* B20780 800A95E0 24060002 */   li    $a2, 2
/* B20784 800A95E4 8FB9004C */  lw    $t9, 0x4c($sp)
/* B20788 800A95E8 8E981354 */  lw    $t8, 0x1354($s4)
/* B2078C 800A95EC 3C010001 */  lui   $at, (0x0001CA2E >> 16) # lui $at, 1
/* B20790 800A95F0 8F280000 */  lw    $t0, ($t9)
/* B20794 800A95F4 3421CA2E */  ori   $at, (0x0001CA2E & 0xFFFF) # ori $at, $at, 0xca2e
/* B20798 800A95F8 02B82021 */  addu  $a0, $s5, $t8
/* B2079C 800A95FC 01122821 */  addu  $a1, $t0, $s2
/* B207A0 800A9600 24A500CF */  addiu $a1, $a1, 0xcf
/* B207A4 800A9604 00812021 */  addu  $a0, $a0, $at
/* B207A8 800A9608 0C01A508 */  jal   MemCopy
/* B207AC 800A960C 24060001 */   li    $a2, 1
/* B207B0 800A9610 8FAB004C */  lw    $t3, 0x4c($sp)
/* B207B4 800A9614 8E891354 */  lw    $t1, 0x1354($s4)
/* B207B8 800A9618 3C010001 */  lui   $at, (0x0001CA32 >> 16) # lui $at, 1
/* B207BC 800A961C 8D6C0000 */  lw    $t4, ($t3)
/* B207C0 800A9620 00095040 */  sll   $t2, $t1, 1
/* B207C4 800A9624 02AA2021 */  addu  $a0, $s5, $t2
/* B207C8 800A9628 3421CA32 */  ori   $at, (0x0001CA32 & 0xFFFF) # ori $at, $at, 0xca32
/* B207CC 800A962C 01922821 */  addu  $a1, $t4, $s2
/* B207D0 800A9630 24A50030 */  addiu $a1, $a1, 0x30
/* B207D4 800A9634 00812021 */  addu  $a0, $a0, $at
/* B207D8 800A9638 0C01A508 */  jal   MemCopy
/* B207DC 800A963C 24060002 */   li    $a2, 2
/* B207E0 800A9640 8E911354 */  lw    $s1, 0x1354($s4)
/* B207E4 800A9644 3C048014 */  lui   $a0, %hi(D_80140DF0) # $a0, 0x8014
/* B207E8 800A9648 24840DF0 */  addiu $a0, %lo(D_80140DF0) # addiu $a0, $a0, 0xdf0
/* B207EC 800A964C 00116840 */  sll   $t5, $s1, 1
/* B207F0 800A9650 02AD7021 */  addu  $t6, $s5, $t5
/* B207F4 800A9654 01D67821 */  addu  $t7, $t6, $s6
/* B207F8 800A9658 85E64A28 */  lh    $a2, 0x4a28($t7)
/* B207FC 800A965C 0C00084C */  jal   osSyncPrintf
/* B20800 800A9660 02202825 */   move  $a1, $s1
/* B20804 800A9664 8E911354 */  lw    $s1, 0x1354($s4)
/* B20808 800A9668 3C048014 */  lui   $a0, %hi(D_80140E00) # $a0, 0x8014
/* B2080C 800A966C 24840E00 */  addiu $a0, %lo(D_80140E00) # addiu $a0, $a0, 0xe00
/* B20810 800A9670 02B1C021 */  addu  $t8, $s5, $s1
/* B20814 800A9674 0316C821 */  addu  $t9, $t8, $s6
/* B20818 800A9678 83264A2E */  lb    $a2, 0x4a2e($t9)
/* B2081C 800A967C 0C00084C */  jal   osSyncPrintf
/* B20820 800A9680 02202825 */   move  $a1, $s1
/* B20824 800A9684 8E911354 */  lw    $s1, 0x1354($s4)
/* B20828 800A9688 3C048014 */  lui   $a0, %hi(D_80140E18) # $a0, 0x8014
/* B2082C 800A968C 24840E18 */  addiu $a0, %lo(D_80140E18) # addiu $a0, $a0, 0xe18
/* B20830 800A9690 00114040 */  sll   $t0, $s1, 1
/* B20834 800A9694 02A84821 */  addu  $t1, $s5, $t0
/* B20838 800A9698 01365021 */  addu  $t2, $t1, $s6
/* B2083C 800A969C 95464A32 */  lhu   $a2, 0x4a32($t2)
/* B20840 800A96A0 0C00084C */  jal   osSyncPrintf
/* B20844 800A96A4 02202825 */   move  $a1, $s1
/* B20848 800A96A8 8FBF0044 */  lw    $ra, 0x44($sp)
/* B2084C 800A96AC 8FB00028 */  lw    $s0, 0x28($sp)
/* B20850 800A96B0 8FB1002C */  lw    $s1, 0x2c($sp)
/* B20854 800A96B4 8FB20030 */  lw    $s2, 0x30($sp)
/* B20858 800A96B8 8FB30034 */  lw    $s3, 0x34($sp)
/* B2085C 800A96BC 8FB40038 */  lw    $s4, 0x38($sp)
/* B20860 800A96C0 8FB5003C */  lw    $s5, 0x3c($sp)
/* B20864 800A96C4 8FB60040 */  lw    $s6, 0x40($sp)
/* B20868 800A96C8 03E00008 */  jr    $ra
/* B2086C 800A96CC 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_800A96D0
/* B20870 800A96D0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B20874 800A96D4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B20878 800A96D8 AFB00018 */  sw    $s0, 0x18($sp)
/* B2087C 800A96DC AFA40028 */  sw    $a0, 0x28($sp)
/* B20880 800A96E0 0C02A068 */  jal   func_800A81A0
/* B20884 800A96E4 AFA5002C */   sw    $a1, 0x2c($sp)
/* B20888 800A96E8 8FA20028 */  lw    $v0, 0x28($sp)
/* B2088C 800A96EC 3C010001 */  lui   $at, (0x00018000 >> 16) # lui $at, 1
/* B20890 800A96F0 34218000 */  ori   $at, (0x00018000 & 0xFFFF) # ori $at, $at, 0x8000
/* B20894 800A96F4 00411021 */  addu  $v0, $v0, $at
/* B20898 800A96F8 844E4A46 */  lh    $t6, 0x4a46($v0)
/* B2089C 800A96FC 8FB8002C */  lw    $t8, 0x2c($sp)
/* B208A0 800A9700 3C108013 */  lui   $s0, %hi(D_8012A4E0)
/* B208A4 800A9704 000E7840 */  sll   $t7, $t6, 1
/* B208A8 800A9708 020F8021 */  addu  $s0, $s0, $t7
/* B208AC 800A970C 9610A4E0 */  lhu   $s0, %lo(D_8012A4E0)($s0)
/* B208B0 800A9710 8F190000 */  lw    $t9, ($t8)
/* B208B4 800A9714 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B208B8 800A9718 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B208BC 800A971C AFA20020 */  sw    $v0, 0x20($sp)
/* B208C0 800A9720 24061354 */  li    $a2, 4948
/* B208C4 800A9724 0C01A508 */  jal   MemCopy
/* B208C8 800A9728 03302021 */   addu  $a0, $t9, $s0
/* B208CC 800A972C 3C010800 */  lui   $at, 0x800
/* B208D0 800A9730 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B208D4 800A9734 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B208D8 800A9738 02012021 */  addu  $a0, $s0, $at
/* B208DC 800A973C 24061450 */  li    $a2, 5200
/* B208E0 800A9740 0C02A7A8 */  jal   func_800A9EA0
/* B208E4 800A9744 24070001 */   li    $a3, 1
/* B208E8 800A9748 8FA90020 */  lw    $t1, 0x20($sp)
/* B208EC 800A974C 8FAC002C */  lw    $t4, 0x2c($sp)
/* B208F0 800A9750 8FA80028 */  lw    $t0, 0x28($sp)
/* B208F4 800A9754 852A4A46 */  lh    $t2, 0x4a46($t1)
/* B208F8 800A9758 8D8D0000 */  lw    $t5, ($t4)
/* B208FC 800A975C 3C010001 */  lui   $at, (0x0001CA28 >> 16) # lui $at, 1
/* B20900 800A9760 000A5840 */  sll   $t3, $t2, 1
/* B20904 800A9764 3421CA28 */  ori   $at, (0x0001CA28 & 0xFFFF) # ori $at, $at, 0xca28
/* B20908 800A9768 010B2021 */  addu  $a0, $t0, $t3
/* B2090C 800A976C 01B02821 */  addu  $a1, $t5, $s0
/* B20910 800A9770 24A5002C */  addiu $a1, $a1, 0x2c
/* B20914 800A9774 00812021 */  addu  $a0, $a0, $at
/* B20918 800A9778 0C01A508 */  jal   MemCopy
/* B2091C 800A977C 24060002 */   li    $a2, 2
/* B20920 800A9780 8FAE0020 */  lw    $t6, 0x20($sp)
/* B20924 800A9784 8FB9002C */  lw    $t9, 0x2c($sp)
/* B20928 800A9788 3C108013 */  lui   $s0, %hi(D_8012A4E6)
/* B2092C 800A978C 85CF4A46 */  lh    $t7, 0x4a46($t6)
/* B20930 800A9790 8F290000 */  lw    $t1, ($t9)
/* B20934 800A9794 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B20938 800A9798 000FC040 */  sll   $t8, $t7, 1
/* B2093C 800A979C 02188021 */  addu  $s0, $s0, $t8
/* B20940 800A97A0 9610A4E6 */  lhu   $s0, %lo(D_8012A4E6)($s0)
/* B20944 800A97A4 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B20948 800A97A8 24061354 */  li    $a2, 4948
/* B2094C 800A97AC 0C01A508 */  jal   MemCopy
/* B20950 800A97B0 01302021 */   addu  $a0, $t1, $s0
/* B20954 800A97B4 3C010800 */  lui   $at, 0x800
/* B20958 800A97B8 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B2095C 800A97BC 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B20960 800A97C0 02012021 */  addu  $a0, $s0, $at
/* B20964 800A97C4 24061450 */  li    $a2, 5200
/* B20968 800A97C8 0C02A7A8 */  jal   func_800A9EA0
/* B2096C 800A97CC 24070001 */   li    $a3, 1
/* B20970 800A97D0 3C048014 */  lui   $a0, %hi(D_80140E2C) # $a0, 0x8014
/* B20974 800A97D4 0C00084C */  jal   osSyncPrintf
/* B20978 800A97D8 24840E2C */   addiu $a0, %lo(D_80140E2C) # addiu $a0, $a0, 0xe2c
/* B2097C 800A97DC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B20980 800A97E0 8FB00018 */  lw    $s0, 0x18($sp)
/* B20984 800A97E4 27BD0028 */  addiu $sp, $sp, 0x28
/* B20988 800A97E8 03E00008 */  jr    $ra
/* B2098C 800A97EC 00000000 */   nop   

glabel func_800A97F0
/* B20990 800A97F0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B20994 800A97F4 AFB3002C */  sw    $s3, 0x2c($sp)
/* B20998 800A97F8 3C010001 */  lui   $at, (0x00018000 >> 16) # lui $at, 1
/* B2099C 800A97FC 00809825 */  move  $s3, $a0
/* B209A0 800A9800 AFB20028 */  sw    $s2, 0x28($sp)
/* B209A4 800A9804 AFB10024 */  sw    $s1, 0x24($sp)
/* B209A8 800A9808 34218000 */  ori   $at, (0x00018000 & 0xFFFF) # ori $at, $at, 0x8000
/* B209AC 800A980C AFBF0034 */  sw    $ra, 0x34($sp)
/* B209B0 800A9810 AFB40030 */  sw    $s4, 0x30($sp)
/* B209B4 800A9814 AFB00020 */  sw    $s0, 0x20($sp)
/* B209B8 800A9818 02618821 */  addu  $s1, $s3, $at
/* B209BC 800A981C 86274A5E */  lh    $a3, 0x4a5e($s1)
/* B209C0 800A9820 00A09025 */  move  $s2, $a1
/* B209C4 800A9824 86254A46 */  lh    $a1, 0x4a46($s1)
/* B209C8 800A9828 3C148013 */  lui   $s4, %hi(D_8012A4E0) # $s4, 0x8013
/* B209CC 800A982C 2694A4E0 */  addiu $s4, %lo(D_8012A4E0) # addiu $s4, $s4, -0x5b20
/* B209D0 800A9830 0007C040 */  sll   $t8, $a3, 1
/* B209D4 800A9834 0298C821 */  addu  $t9, $s4, $t8
/* B209D8 800A9838 00057040 */  sll   $t6, $a1, 1
/* B209DC 800A983C 97280000 */  lhu   $t0, ($t9)
/* B209E0 800A9840 028E7821 */  addu  $t7, $s4, $t6
/* B209E4 800A9844 95E60000 */  lhu   $a2, ($t7)
/* B209E8 800A9848 3C048014 */  lui   $a0, %hi(D_80140E3C) # $a0, 0x8014
/* B209EC 800A984C 24840E3C */  addiu $a0, %lo(D_80140E3C) # addiu $a0, $a0, 0xe3c
/* B209F0 800A9850 0C00084C */  jal   osSyncPrintf
/* B209F4 800A9854 AFA80010 */   sw    $t0, 0x10($sp)
/* B209F8 800A9858 86294A46 */  lh    $t1, 0x4a46($s1)
/* B209FC 800A985C 8E4C0000 */  lw    $t4, ($s2)
/* B20A00 800A9860 3C048016 */  lui   $a0, %hi(gSaveContext) # $a0, 0x8016
/* B20A04 800A9864 00095040 */  sll   $t2, $t1, 1
/* B20A08 800A9868 028A5821 */  addu  $t3, $s4, $t2
/* B20A0C 800A986C 95700000 */  lhu   $s0, ($t3)
/* B20A10 800A9870 2484E660 */  addiu $a0, %lo(gSaveContext) # addiu $a0, $a0, -0x19a0
/* B20A14 800A9874 24061354 */  li    $a2, 4948
/* B20A18 800A9878 0C01A508 */  jal   MemCopy
/* B20A1C 800A987C 01902821 */   addu  $a1, $t4, $s0
/* B20A20 800A9880 862D4A5E */  lh    $t5, 0x4a5e($s1)
/* B20A24 800A9884 8E580000 */  lw    $t8, ($s2)
/* B20A28 800A9888 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B20A2C 800A988C 000D7040 */  sll   $t6, $t5, 1
/* B20A30 800A9890 028E7821 */  addu  $t7, $s4, $t6
/* B20A34 800A9894 95F00000 */  lhu   $s0, ($t7)
/* B20A38 800A9898 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B20A3C 800A989C 24061354 */  li    $a2, 4948
/* B20A40 800A98A0 0C01A508 */  jal   MemCopy
/* B20A44 800A98A4 03102021 */   addu  $a0, $t8, $s0
/* B20A48 800A98A8 86394A5E */  lh    $t9, 0x4a5e($s1)
/* B20A4C 800A98AC 8E4A0000 */  lw    $t2, ($s2)
/* B20A50 800A98B0 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B20A54 800A98B4 00194040 */  sll   $t0, $t9, 1
/* B20A58 800A98B8 02884821 */  addu  $t1, $s4, $t0
/* B20A5C 800A98BC 95300006 */  lhu   $s0, 6($t1)
/* B20A60 800A98C0 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B20A64 800A98C4 24061354 */  li    $a2, 4948
/* B20A68 800A98C8 0C01A508 */  jal   MemCopy
/* B20A6C 800A98CC 01502021 */   addu  $a0, $t2, $s0
/* B20A70 800A98D0 3C040800 */  lui   $a0, 0x800
/* B20A74 800A98D4 8E450000 */  lw    $a1, ($s2)
/* B20A78 800A98D8 34068000 */  li    $a2, 32768
/* B20A7C 800A98DC 0C02A7A8 */  jal   func_800A9EA0
/* B20A80 800A98E0 24070001 */   li    $a3, 1
/* B20A84 800A98E4 86224A5E */  lh    $v0, 0x4a5e($s1)
/* B20A88 800A98E8 8E4C0000 */  lw    $t4, ($s2)
/* B20A8C 800A98EC 3C010001 */  lui   $at, (0x0001C9F6 >> 16) # lui $at, 1
/* B20A90 800A98F0 00021040 */  sll   $v0, $v0, 1
/* B20A94 800A98F4 02825821 */  addu  $t3, $s4, $v0
/* B20A98 800A98F8 95700000 */  lhu   $s0, ($t3)
/* B20A9C 800A98FC 02622021 */  addu  $a0, $s3, $v0
/* B20AA0 800A9900 3421C9F6 */  ori   $at, (0x0001C9F6 & 0xFFFF) # ori $at, $at, 0xc9f6
/* B20AA4 800A9904 01902821 */  addu  $a1, $t4, $s0
/* B20AA8 800A9908 24A50022 */  addiu $a1, $a1, 0x22
/* B20AAC 800A990C 00812021 */  addu  $a0, $a0, $at
/* B20AB0 800A9910 0C01A508 */  jal   MemCopy
/* B20AB4 800A9914 24060002 */   li    $a2, 2
/* B20AB8 800A9918 862D4A5E */  lh    $t5, 0x4a5e($s1)
/* B20ABC 800A991C 8E4F0000 */  lw    $t7, ($s2)
/* B20AC0 800A9920 3C010001 */  lui   $at, (0x0001C9FC >> 16) # lui $at, 1
/* B20AC4 800A9924 000D70C0 */  sll   $t6, $t5, 3
/* B20AC8 800A9928 026E2021 */  addu  $a0, $s3, $t6
/* B20ACC 800A992C 3421C9FC */  ori   $at, (0x0001C9FC & 0xFFFF) # ori $at, $at, 0xc9fc
/* B20AD0 800A9930 01F02821 */  addu  $a1, $t7, $s0
/* B20AD4 800A9934 24A50024 */  addiu $a1, $a1, 0x24
/* B20AD8 800A9938 00812021 */  addu  $a0, $a0, $at
/* B20ADC 800A993C 0C01A508 */  jal   MemCopy
/* B20AE0 800A9940 24060008 */   li    $a2, 8
/* B20AE4 800A9944 86384A5E */  lh    $t8, 0x4a5e($s1)
/* B20AE8 800A9948 8E480000 */  lw    $t0, ($s2)
/* B20AEC 800A994C 3C010001 */  lui   $at, (0x0001CA14 >> 16) # lui $at, 1
/* B20AF0 800A9950 0018C840 */  sll   $t9, $t8, 1
/* B20AF4 800A9954 02792021 */  addu  $a0, $s3, $t9
/* B20AF8 800A9958 3421CA14 */  ori   $at, (0x0001CA14 & 0xFFFF) # ori $at, $at, 0xca14
/* B20AFC 800A995C 01102821 */  addu  $a1, $t0, $s0
/* B20B00 800A9960 24A5002E */  addiu $a1, $a1, 0x2e
/* B20B04 800A9964 00812021 */  addu  $a0, $a0, $at
/* B20B08 800A9968 0C01A508 */  jal   MemCopy
/* B20B0C 800A996C 24060002 */   li    $a2, 2
/* B20B10 800A9970 86294A5E */  lh    $t1, 0x4a5e($s1)
/* B20B14 800A9974 8E4B0000 */  lw    $t3, ($s2)
/* B20B18 800A9978 3C010001 */  lui   $at, (0x0001CA1C >> 16) # lui $at, 1
/* B20B1C 800A997C 00095080 */  sll   $t2, $t1, 2
/* B20B20 800A9980 026A2021 */  addu  $a0, $s3, $t2
/* B20B24 800A9984 3421CA1C */  ori   $at, (0x0001CA1C & 0xFFFF) # ori $at, $at, 0xca1c
/* B20B28 800A9988 01702821 */  addu  $a1, $t3, $s0
/* B20B2C 800A998C 24A500A4 */  addiu $a1, $a1, 0xa4
/* B20B30 800A9990 00812021 */  addu  $a0, $a0, $at
/* B20B34 800A9994 0C01A508 */  jal   MemCopy
/* B20B38 800A9998 24060004 */   li    $a2, 4
/* B20B3C 800A999C 862C4A5E */  lh    $t4, 0x4a5e($s1)
/* B20B40 800A99A0 8E4E0000 */  lw    $t6, ($s2)
/* B20B44 800A99A4 3C010001 */  lui   $at, (0x0001CA28 >> 16) # lui $at, 1
/* B20B48 800A99A8 000C6840 */  sll   $t5, $t4, 1
/* B20B4C 800A99AC 026D2021 */  addu  $a0, $s3, $t5
/* B20B50 800A99B0 3421CA28 */  ori   $at, (0x0001CA28 & 0xFFFF) # ori $at, $at, 0xca28
/* B20B54 800A99B4 01D02821 */  addu  $a1, $t6, $s0
/* B20B58 800A99B8 24A5002C */  addiu $a1, $a1, 0x2c
/* B20B5C 800A99BC 00812021 */  addu  $a0, $a0, $at
/* B20B60 800A99C0 0C01A508 */  jal   MemCopy
/* B20B64 800A99C4 24060002 */   li    $a2, 2
/* B20B68 800A99C8 862F4A5E */  lh    $t7, 0x4a5e($s1)
/* B20B6C 800A99CC 8E580000 */  lw    $t8, ($s2)
/* B20B70 800A99D0 3C010001 */  lui   $at, (0x0001CA2E >> 16) # lui $at, 1
/* B20B74 800A99D4 3421CA2E */  ori   $at, (0x0001CA2E & 0xFFFF) # ori $at, $at, 0xca2e
/* B20B78 800A99D8 026F2021 */  addu  $a0, $s3, $t7
/* B20B7C 800A99DC 03102821 */  addu  $a1, $t8, $s0
/* B20B80 800A99E0 24A500CF */  addiu $a1, $a1, 0xcf
/* B20B84 800A99E4 00812021 */  addu  $a0, $a0, $at
/* B20B88 800A99E8 0C01A508 */  jal   MemCopy
/* B20B8C 800A99EC 24060001 */   li    $a2, 1
/* B20B90 800A99F0 86394A5E */  lh    $t9, 0x4a5e($s1)
/* B20B94 800A99F4 8E490000 */  lw    $t1, ($s2)
/* B20B98 800A99F8 3C010001 */  lui   $at, (0x0001CA32 >> 16) # lui $at, 1
/* B20B9C 800A99FC 00194040 */  sll   $t0, $t9, 1
/* B20BA0 800A9A00 02682021 */  addu  $a0, $s3, $t0
/* B20BA4 800A9A04 3421CA32 */  ori   $at, (0x0001CA32 & 0xFFFF) # ori $at, $at, 0xca32
/* B20BA8 800A9A08 01302821 */  addu  $a1, $t1, $s0
/* B20BAC 800A9A0C 24A50030 */  addiu $a1, $a1, 0x30
/* B20BB0 800A9A10 00812021 */  addu  $a0, $a0, $at
/* B20BB4 800A9A14 0C01A508 */  jal   MemCopy
/* B20BB8 800A9A18 24060002 */   li    $a2, 2
/* B20BBC 800A9A1C 3C108016 */  lui   $s0, %hi(gSaveContext+0x1354) # $s0, 0x8016
/* B20BC0 800A9A20 8E10F9B4 */  lw    $s0, %lo(gSaveContext+0x1354)($s0)
/* B20BC4 800A9A24 3C060002 */  lui   $a2, 2
/* B20BC8 800A9A28 3C048014 */  lui   $a0, %hi(D_80140E60) # $a0, 0x8014
/* B20BCC 800A9A2C 00105040 */  sll   $t2, $s0, 1
/* B20BD0 800A9A30 026A5821 */  addu  $t3, $s3, $t2
/* B20BD4 800A9A34 00CB3021 */  addu  $a2, $a2, $t3
/* B20BD8 800A9A38 84C6CA28 */  lh    $a2, -0x35d8($a2)
/* B20BDC 800A9A3C 24840E60 */  addiu $a0, %lo(D_80140E60) # addiu $a0, $a0, 0xe60
/* B20BE0 800A9A40 0C00084C */  jal   osSyncPrintf
/* B20BE4 800A9A44 02002825 */   move  $a1, $s0
/* B20BE8 800A9A48 3C108016 */  lui   $s0, %hi(gSaveContext+0x1354) # $s0, 0x8016
/* B20BEC 800A9A4C 8E10F9B4 */  lw    $s0, %lo(gSaveContext+0x1354)($s0)
/* B20BF0 800A9A50 3C060002 */  lui   $a2, 2
/* B20BF4 800A9A54 3C048014 */  lui   $a0, %hi(D_80140E70) # $a0, 0x8014
/* B20BF8 800A9A58 02706021 */  addu  $t4, $s3, $s0
/* B20BFC 800A9A5C 00CC3021 */  addu  $a2, $a2, $t4
/* B20C00 800A9A60 80C6CA2E */  lb    $a2, -0x35d2($a2)
/* B20C04 800A9A64 24840E70 */  addiu $a0, %lo(D_80140E70) # addiu $a0, $a0, 0xe70
/* B20C08 800A9A68 0C00084C */  jal   osSyncPrintf
/* B20C0C 800A9A6C 02002825 */   move  $a1, $s0
/* B20C10 800A9A70 3C048014 */  lui   $a0, %hi(D_80140E88) # $a0, 0x8014
/* B20C14 800A9A74 0C00084C */  jal   osSyncPrintf
/* B20C18 800A9A78 24840E88 */   addiu $a0, %lo(D_80140E88) # addiu $a0, $a0, 0xe88
/* B20C1C 800A9A7C 8FBF0034 */  lw    $ra, 0x34($sp)
/* B20C20 800A9A80 8FB00020 */  lw    $s0, 0x20($sp)
/* B20C24 800A9A84 8FB10024 */  lw    $s1, 0x24($sp)
/* B20C28 800A9A88 8FB20028 */  lw    $s2, 0x28($sp)
/* B20C2C 800A9A8C 8FB3002C */  lw    $s3, 0x2c($sp)
/* B20C30 800A9A90 8FB40030 */  lw    $s4, 0x30($sp)
/* B20C34 800A9A94 03E00008 */  jr    $ra
/* B20C38 800A9A98 27BD0038 */   addiu $sp, $sp, 0x38

glabel func_800A9A9C
/* B20C3C 800A9A9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B20C40 800A9AA0 AFA40018 */  sw    $a0, 0x18($sp)
/* B20C44 800A9AA4 8FAE0018 */  lw    $t6, 0x18($sp)
/* B20C48 800A9AA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B20C4C 800A9AAC 3C040800 */  lui   $a0, 0x800
/* B20C50 800A9AB0 24060010 */  li    $a2, 16
/* B20C54 800A9AB4 24070001 */  li    $a3, 1
/* B20C58 800A9AB8 0C02A7A8 */  jal   func_800A9EA0
/* B20C5C 800A9ABC 8DC50000 */   lw    $a1, ($t6)
/* B20C60 800A9AC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B20C64 800A9AC4 27BD0018 */  addiu $sp, $sp, 0x18
/* B20C68 800A9AC8 03E00008 */  jr    $ra
/* B20C6C 800A9ACC 00000000 */   nop   

glabel func_800A9AD0
/* B20C70 800A9AD0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B20C74 800A9AD4 AFA40030 */  sw    $a0, 0x30($sp)
/* B20C78 800A9AD8 AFBF002C */  sw    $ra, 0x2c($sp)
/* B20C7C 800A9ADC AFB1001C */  sw    $s1, 0x1c($sp)
/* B20C80 800A9AE0 3C048014 */  lui   $a0, %hi(D_80140E98) # $a0, 0x8014
/* B20C84 800A9AE4 00A08825 */  move  $s1, $a1
/* B20C88 800A9AE8 AFB40028 */  sw    $s4, 0x28($sp)
/* B20C8C 800A9AEC AFB30024 */  sw    $s3, 0x24($sp)
/* B20C90 800A9AF0 AFB20020 */  sw    $s2, 0x20($sp)
/* B20C94 800A9AF4 AFB00018 */  sw    $s0, 0x18($sp)
/* B20C98 800A9AF8 0C00084C */  jal   osSyncPrintf
/* B20C9C 800A9AFC 24840E98 */   addiu $a0, %lo(D_80140E98) # addiu $a0, $a0, 0xe98
/* B20CA0 800A9B00 3C040800 */  lui   $a0, 0x800
/* B20CA4 800A9B04 8E250000 */  lw    $a1, ($s1)
/* B20CA8 800A9B08 34068000 */  li    $a2, 32768
/* B20CAC 800A9B0C 0C02A7A8 */  jal   func_800A9EA0
/* B20CB0 800A9B10 00003825 */   move  $a3, $zero
/* B20CB4 800A9B14 3C148014 */  lui   $s4, %hi(D_80140EC4) # $s4, 0x8014
/* B20CB8 800A9B18 3C138016 */  lui   $s3, %hi(gSaveContext) # $s3, 0x8016
/* B20CBC 800A9B1C 3C128013 */  lui   $s2, %hi(D_8012A4EC) # $s2, 0x8013
/* B20CC0 800A9B20 2652A4EC */  addiu $s2, %lo(D_8012A4EC) # addiu $s2, $s2, -0x5b14
/* B20CC4 800A9B24 2673E660 */  addiu $s3, %lo(gSaveContext) # addiu $s3, $s3, -0x19a0
/* B20CC8 800A9B28 26940EC4 */  addiu $s4, %lo(D_80140EC4) # addiu $s4, $s4, 0xec4
/* B20CCC 800A9B2C 00008025 */  move  $s0, $zero
/* B20CD0 800A9B30 8E230000 */  lw    $v1, ($s1)
/* B20CD4 800A9B34 00001025 */  move  $v0, $zero
.L800A9B38:
/* B20CD8 800A9B38 02427021 */  addu  $t6, $s2, $v0
/* B20CDC 800A9B3C 0062C021 */  addu  $t8, $v1, $v0
/* B20CE0 800A9B40 93190003 */  lbu   $t9, 3($t8)
/* B20CE4 800A9B44 91CF0003 */  lbu   $t7, 3($t6)
/* B20CE8 800A9B48 51F90011 */  beql  $t7, $t9, .L800A9B90
/* B20CEC 800A9B4C 26100001 */   addiu $s0, $s0, 1
/* B20CF0 800A9B50 0C00084C */  jal   osSyncPrintf
/* B20CF4 800A9B54 02802025 */   move  $a0, $s4
/* B20CF8 800A9B58 8E280000 */  lw    $t0, ($s1)
/* B20CFC 800A9B5C 02402825 */  move  $a1, $s2
/* B20D00 800A9B60 2406000C */  li    $a2, 12
/* B20D04 800A9B64 91090002 */  lbu   $t1, 2($t0)
/* B20D08 800A9B68 A2691409 */  sb    $t1, 0x1409($s3)
/* B20D0C 800A9B6C 0C01A508 */  jal   MemCopy
/* B20D10 800A9B70 8E240000 */   lw    $a0, ($s1)
/* B20D14 800A9B74 926A1409 */  lbu   $t2, 0x1409($s3)
/* B20D18 800A9B78 8E2B0000 */  lw    $t3, ($s1)
/* B20D1C 800A9B7C 02202025 */  move  $a0, $s1
/* B20D20 800A9B80 0C02A6A7 */  jal   func_800A9A9C
/* B20D24 800A9B84 A16A0002 */   sb    $t2, 2($t3)
/* B20D28 800A9B88 8E230000 */  lw    $v1, ($s1)
/* B20D2C 800A9B8C 26100001 */  addiu $s0, $s0, 1
.L800A9B90:
/* B20D30 800A9B90 3210FFFF */  andi  $s0, $s0, 0xffff
/* B20D34 800A9B94 2E010009 */  sltiu $at, $s0, 9
/* B20D38 800A9B98 1420FFE7 */  bnez  $at, .L800A9B38
/* B20D3C 800A9B9C 02001025 */   move  $v0, $s0
/* B20D40 800A9BA0 906C0000 */  lbu   $t4, ($v1)
/* B20D44 800A9BA4 318D0003 */  andi  $t5, $t4, 3
/* B20D48 800A9BA8 A26D140A */  sb    $t5, 0x140a($s3)
/* B20D4C 800A9BAC 8E2E0000 */  lw    $t6, ($s1)
/* B20D50 800A9BB0 91D80001 */  lbu   $t8, 1($t6)
/* B20D54 800A9BB4 330F0001 */  andi  $t7, $t8, 1
/* B20D58 800A9BB8 A26F140C */  sb    $t7, 0x140c($s3)
/* B20D5C 800A9BBC 8E390000 */  lw    $t9, ($s1)
/* B20D60 800A9BC0 93280002 */  lbu   $t0, 2($t9)
/* B20D64 800A9BC4 310900FF */  andi  $t1, $t0, 0xff
/* B20D68 800A9BC8 29210003 */  slti  $at, $t1, 3
/* B20D6C 800A9BCC 14200006 */  bnez  $at, .L800A9BE8
/* B20D70 800A9BD0 A2681409 */   sb    $t0, 0x1409($s3)
/* B20D74 800A9BD4 A2601409 */  sb    $zero, 0x1409($s3)
/* B20D78 800A9BD8 8E2B0000 */  lw    $t3, ($s1)
/* B20D7C 800A9BDC 02202025 */  move  $a0, $s1
/* B20D80 800A9BE0 0C02A6A7 */  jal   func_800A9A9C
/* B20D84 800A9BE4 A1600002 */   sb    $zero, 2($t3)
.L800A9BE8:
/* B20D88 800A9BE8 8FAC0030 */  lw    $t4, 0x30($sp)
/* B20D8C 800A9BEC 34058000 */  li    $a1, 32768
/* B20D90 800A9BF0 958D0044 */  lhu   $t5, 0x44($t4)
/* B20D94 800A9BF4 31AE0100 */  andi  $t6, $t5, 0x100
/* B20D98 800A9BF8 11C00014 */  beqz  $t6, .L800A9C4C
/* B20D9C 800A9BFC 00000000 */   nop   
/* B20DA0 800A9C00 0C001114 */  jal   bzero
/* B20DA4 800A9C04 8E240000 */   lw    $a0, ($s1)
/* B20DA8 800A9C08 00008025 */  move  $s0, $zero
/* B20DAC 800A9C0C 8E380000 */  lw    $t8, ($s1)
.L800A9C10:
/* B20DB0 800A9C10 03107821 */  addu  $t7, $t8, $s0
/* B20DB4 800A9C14 A1F00000 */  sb    $s0, ($t7)
/* B20DB8 800A9C18 26100001 */  addiu $s0, $s0, 1
/* B20DBC 800A9C1C 3210FFFF */  andi  $s0, $s0, 0xffff
/* B20DC0 800A9C20 2E0109AA */  sltiu $at, $s0, 0x9aa
/* B20DC4 800A9C24 5420FFFA */  bnezl $at, .L800A9C10
/* B20DC8 800A9C28 8E380000 */   lw    $t8, ($s1)
/* B20DCC 800A9C2C 3C040800 */  lui   $a0, 0x800
/* B20DD0 800A9C30 8E250000 */  lw    $a1, ($s1)
/* B20DD4 800A9C34 34068000 */  li    $a2, 32768
/* B20DD8 800A9C38 0C02A7A8 */  jal   func_800A9EA0
/* B20DDC 800A9C3C 24070001 */   li    $a3, 1
/* B20DE0 800A9C40 3C048014 */  lui   $a0, %hi(D_80140EE0) # $a0, 0x8014
/* B20DE4 800A9C44 0C00084C */  jal   osSyncPrintf
/* B20DE8 800A9C48 24840EE0 */   addiu $a0, %lo(D_80140EE0) # addiu $a0, $a0, 0xee0
.L800A9C4C:
/* B20DEC 800A9C4C 3C048014 */  lui   $a0, %hi(D_80140EFC) # $a0, 0x8014
/* B20DF0 800A9C50 24840EFC */  addiu $a0, %lo(D_80140EFC) # addiu $a0, $a0, 0xefc
/* B20DF4 800A9C54 24051338 */  li    $a1, 4920
/* B20DF8 800A9C58 24060004 */  li    $a2, 4
/* B20DFC 800A9C5C 0C00084C */  jal   osSyncPrintf
/* B20E00 800A9C60 2407133C */   li    $a3, 4924
/* B20E04 800A9C64 3C048014 */  lui   $a0, %hi(D_80140F28) # $a0, 0x8014
/* B20E08 800A9C68 0C00084C */  jal   osSyncPrintf
/* B20E0C 800A9C6C 24840F28 */   addiu $a0, %lo(D_80140F28) # addiu $a0, $a0, 0xf28
/* B20E10 800A9C70 3C048014 */  lui   $a0, %hi(D_80140F30) # $a0, 0x8014
/* B20E14 800A9C74 24840F30 */  addiu $a0, %lo(D_80140F30) # addiu $a0, $a0, 0xf30
/* B20E18 800A9C78 0C00084C */  jal   osSyncPrintf
/* B20E1C 800A9C7C 9265140A */   lbu   $a1, 0x140a($s3)
/* B20E20 800A9C80 3C048014 */  lui   $a0, %hi(D_80140F4C) # $a0, 0x8014
/* B20E24 800A9C84 24840F4C */  addiu $a0, %lo(D_80140F4C) # addiu $a0, $a0, 0xf4c
/* B20E28 800A9C88 0C00084C */  jal   osSyncPrintf
/* B20E2C 800A9C8C 9265140A */   lbu   $a1, 0x140a($s3)
/* B20E30 800A9C90 3C048014 */  lui   $a0, %hi(D_80140F68) # $a0, 0x8014
/* B20E34 800A9C94 24840F68 */  addiu $a0, %lo(D_80140F68) # addiu $a0, $a0, 0xf68
/* B20E38 800A9C98 0C00084C */  jal   osSyncPrintf
/* B20E3C 800A9C9C 9265140A */   lbu   $a1, 0x140a($s3)
/* B20E40 800A9CA0 3C048014 */  lui   $a0, %hi(D_80140F84) # $a0, 0x8014
/* B20E44 800A9CA4 0C00084C */  jal   osSyncPrintf
/* B20E48 800A9CA8 24840F84 */   addiu $a0, %lo(D_80140F84) # addiu $a0, $a0, 0xf84
/* B20E4C 800A9CAC 0C03D9C0 */  jal   func_800F6700
/* B20E50 800A9CB0 8264140A */   lb    $a0, 0x140a($s3)
/* B20E54 800A9CB4 8FBF002C */  lw    $ra, 0x2c($sp)
/* B20E58 800A9CB8 8FB00018 */  lw    $s0, 0x18($sp)
/* B20E5C 800A9CBC 8FB1001C */  lw    $s1, 0x1c($sp)
/* B20E60 800A9CC0 8FB20020 */  lw    $s2, 0x20($sp)
/* B20E64 800A9CC4 8FB30024 */  lw    $s3, 0x24($sp)
/* B20E68 800A9CC8 8FB40028 */  lw    $s4, 0x28($sp)
/* B20E6C 800A9CCC 03E00008 */  jr    $ra
/* B20E70 800A9CD0 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800A9CD4
/* B20E74 800A9CD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B20E78 800A9CD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B20E7C 800A9CDC AFA5001C */  sw    $a1, 0x1c($sp)
/* B20E80 800A9CE0 3C068014 */  lui   $a2, %hi(D_80140F88) # $a2, 0x8014
/* B20E84 800A9CE4 24C60F88 */  addiu $a2, %lo(D_80140F88) # addiu $a2, $a2, 0xf88
/* B20E88 800A9CE8 34058000 */  li    $a1, 32768
/* B20E8C 800A9CEC 0C031521 */  jal   Game_Alloc
/* B20E90 800A9CF0 2407050E */   li    $a3, 1294
/* B20E94 800A9CF4 8FAE001C */  lw    $t6, 0x1c($sp)
/* B20E98 800A9CF8 3C048014 */  lui   $a0, %hi(D_80140F94) # $a0, 0x8014
/* B20E9C 800A9CFC 14400006 */  bnez  $v0, .L800A9D18
/* B20EA0 800A9D00 ADC20000 */   sw    $v0, ($t6)
/* B20EA4 800A9D04 3C058014 */  lui   $a1, %hi(D_80140FAC) # $a1, 0x8014
/* B20EA8 800A9D08 24A50FAC */  addiu $a1, %lo(D_80140FAC) # addiu $a1, $a1, 0xfac
/* B20EAC 800A9D0C 24840F94 */  addiu $a0, %lo(D_80140F94) # addiu $a0, $a0, 0xf94
/* B20EB0 800A9D10 0C0007FC */  jal   __assert
/* B20EB4 800A9D14 2406050F */   li    $a2, 1295
.L800A9D18:
/* B20EB8 800A9D18 8FBF0014 */  lw    $ra, 0x14($sp)
/* B20EBC 800A9D1C 27BD0018 */  addiu $sp, $sp, 0x18
/* B20EC0 800A9D20 03E00008 */  jr    $ra
/* B20EC4 800A9D24 00000000 */   nop   

glabel func_800A9D28
/* B20EC8 800A9D28 AFA40000 */  sw    $a0, ($sp)
/* B20ECC 800A9D2C 03E00008 */  jr    $ra
/* B20ED0 800A9D30 AFA50004 */   sw    $a1, 4($sp)
