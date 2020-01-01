.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800D3220
/* B4A3C0 800D3220 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B4A3C4 800D3224 AFB00014 */  sw    $s0, 0x14($sp)
/* B4A3C8 800D3228 00808025 */  move  $s0, $a0
/* B4A3CC 800D322C AFB10018 */  sw    $s1, 0x18($sp)
/* B4A3D0 800D3230 AFA60028 */  sw    $a2, 0x28($sp)
/* B4A3D4 800D3234 00A08825 */  move  $s1, $a1
/* B4A3D8 800D3238 AFBF001C */  sw    $ra, 0x1c($sp)
/* B4A3DC 800D323C 3C068014 */  lui   $a2, %hi(D_80146698) # $a2, 0x8014
/* B4A3E0 800D3240 3C048014 */  lui   $a0, %hi(D_80146690) # $a0, 0x8014
/* B4A3E4 800D3244 24846690 */  addiu $a0, %lo(D_80146690) # addiu $a0, $a0, 0x6690
/* B4A3E8 800D3248 24C66698 */  addiu $a2, %lo(D_80146698) # addiu $a2, $a2, 0x6698
/* B4A3EC 800D324C 02002825 */  move  $a1, $s0
/* B4A3F0 800D3250 0C000B58 */  jal   NullPointerCheck
/* B4A3F4 800D3254 24070060 */   li    $a3, 96
/* B4A3F8 800D3258 3C048014 */  lui   $a0, %hi(D_801466A4) # $a0, 0x8014
/* B4A3FC 800D325C 3C068014 */  lui   $a2, %hi(D_801466A8) # $a2, 0x8014
/* B4A400 800D3260 24C666A8 */  addiu $a2, %lo(D_801466A8) # addiu $a2, $a2, 0x66a8
/* B4A404 800D3264 248466A4 */  addiu $a0, %lo(D_801466A4) # addiu $a0, $a0, 0x66a4
/* B4A408 800D3268 02202825 */  move  $a1, $s1
/* B4A40C 800D326C 0C000B58 */  jal   NullPointerCheck
/* B4A410 800D3270 24070061 */   li    $a3, 97
/* B4A414 800D3274 3C048014 */  lui   $a0, %hi(D_801466B4) # $a0, 0x8014
/* B4A418 800D3278 3C068014 */  lui   $a2, %hi(D_801466BC) # $a2, 0x8014
/* B4A41C 800D327C 24C666BC */  addiu $a2, %lo(D_801466BC) # addiu $a2, $a2, 0x66bc
/* B4A420 800D3280 248466B4 */  addiu $a0, %lo(D_801466B4) # addiu $a0, $a0, 0x66b4
/* B4A424 800D3284 8FA50028 */  lw    $a1, 0x28($sp)
/* B4A428 800D3288 0C000B58 */  jal   NullPointerCheck
/* B4A42C 800D328C 24070062 */   li    $a3, 98
/* B4A430 800D3290 0C0013D0 */  jal   osSetIntMask
/* B4A434 800D3294 24040001 */   li    $a0, 1
/* B4A438 800D3298 8FAE0028 */  lw    $t6, 0x28($sp)
/* B4A43C 800D329C 00402025 */  move  $a0, $v0
/* B4A440 800D32A0 AE2E0004 */  sw    $t6, 4($s1)
/* B4A444 800D32A4 8E0F0248 */  lw    $t7, 0x248($s0)
/* B4A448 800D32A8 AE2F0000 */  sw    $t7, ($s1)
/* B4A44C 800D32AC 0C0013D0 */  jal   osSetIntMask
/* B4A450 800D32B0 AE110248 */   sw    $s1, 0x248($s0)
/* B4A454 800D32B4 9203024C */  lbu   $v1, 0x24c($s0)
/* B4A458 800D32B8 26050020 */  addiu $a1, $s0, 0x20
/* B4A45C 800D32BC 00003025 */  move  $a2, $zero
/* B4A460 800D32C0 58600005 */  blezl $v1, .L800D32D8
/* B4A464 800D32C4 28610002 */   slti  $at, $v1, 2
/* B4A468 800D32C8 0C000C18 */  jal   osSendMesg
/* B4A46C 800D32CC 8E240004 */   lw    $a0, 4($s1)
/* B4A470 800D32D0 9203024C */  lbu   $v1, 0x24c($s0)
/* B4A474 800D32D4 28610002 */  slti  $at, $v1, 2
.L800D32D8:
/* B4A478 800D32D8 14200004 */  bnez  $at, .L800D32EC
/* B4A47C 800D32DC 26050040 */   addiu $a1, $s0, 0x40
/* B4A480 800D32E0 8E240004 */  lw    $a0, 4($s1)
/* B4A484 800D32E4 0C000C18 */  jal   osSendMesg
/* B4A488 800D32E8 00003025 */   move  $a2, $zero
.L800D32EC:
/* B4A48C 800D32EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B4A490 800D32F0 8FB00014 */  lw    $s0, 0x14($sp)
/* B4A494 800D32F4 8FB10018 */  lw    $s1, 0x18($sp)
/* B4A498 800D32F8 03E00008 */  jr    $ra
/* B4A49C 800D32FC 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_800D3300
/* B4A4A0 800D3300 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B4A4A4 800D3304 AFB00018 */  sw    $s0, 0x18($sp)
/* B4A4A8 800D3308 AFBF001C */  sw    $ra, 0x1c($sp)
/* B4A4AC 800D330C AFA40028 */  sw    $a0, 0x28($sp)
/* B4A4B0 800D3310 8C830248 */  lw    $v1, 0x248($a0)
/* B4A4B4 800D3314 00A08025 */  move  $s0, $a1
/* B4A4B8 800D3318 00802825 */  move  $a1, $a0
/* B4A4BC 800D331C 3C048014 */  lui   $a0, %hi(D_801466C8) # $a0, 0x8014
/* B4A4C0 800D3320 3C068014 */  lui   $a2, %hi(D_801466D0) # $a2, 0x8014
/* B4A4C4 800D3324 24C666D0 */  addiu $a2, %lo(D_801466D0) # addiu $a2, $a2, 0x66d0
/* B4A4C8 800D3328 248466C8 */  addiu $a0, %lo(D_801466C8) # addiu $a0, $a0, 0x66c8
/* B4A4CC 800D332C AFA50028 */  sw    $a1, 0x28($sp)
/* B4A4D0 800D3330 AFA00020 */  sw    $zero, 0x20($sp)
/* B4A4D4 800D3334 24070081 */  li    $a3, 129
/* B4A4D8 800D3338 0C000B58 */  jal   NullPointerCheck
/* B4A4DC 800D333C AFA30024 */   sw    $v1, 0x24($sp)
/* B4A4E0 800D3340 3C048014 */  lui   $a0, %hi(D_801466DC) # $a0, 0x8014
/* B4A4E4 800D3344 3C068014 */  lui   $a2, %hi(D_801466E0) # $a2, 0x8014
/* B4A4E8 800D3348 24C666E0 */  addiu $a2, %lo(D_801466E0) # addiu $a2, $a2, 0x66e0
/* B4A4EC 800D334C 248466DC */  addiu $a0, %lo(D_801466DC) # addiu $a0, $a0, 0x66dc
/* B4A4F0 800D3350 02002825 */  move  $a1, $s0
/* B4A4F4 800D3354 0C000B58 */  jal   NullPointerCheck
/* B4A4F8 800D3358 24070082 */   li    $a3, 130
/* B4A4FC 800D335C 0C0013D0 */  jal   osSetIntMask
/* B4A500 800D3360 24040001 */   li    $a0, 1
/* B4A504 800D3364 8FA30024 */  lw    $v1, 0x24($sp)
/* B4A508 800D3368 8FA80020 */  lw    $t0, 0x20($sp)
/* B4A50C 800D336C 00402025 */  move  $a0, $v0
/* B4A510 800D3370 1060000F */  beqz  $v1, .L800D33B0
/* B4A514 800D3374 8FB80028 */   lw    $t8, 0x28($sp)
.L800D3378:
/* B4A518 800D3378 5470000A */  bnel  $v1, $s0, .L800D33A4
/* B4A51C 800D337C 00604025 */   move  $t0, $v1
/* B4A520 800D3380 51000005 */  beql  $t0, $zero, .L800D3398
/* B4A524 800D3384 8E0F0000 */   lw    $t7, ($s0)
/* B4A528 800D3388 8E0E0000 */  lw    $t6, ($s0)
/* B4A52C 800D338C 10000008 */  b     .L800D33B0
/* B4A530 800D3390 AD0E0000 */   sw    $t6, ($t0)
/* B4A534 800D3394 8E0F0000 */  lw    $t7, ($s0)
.L800D3398:
/* B4A538 800D3398 10000005 */  b     .L800D33B0
/* B4A53C 800D339C AF0F0248 */   sw    $t7, 0x248($t8)
/* B4A540 800D33A0 00604025 */  move  $t0, $v1
.L800D33A4:
/* B4A544 800D33A4 8C630000 */  lw    $v1, ($v1)
/* B4A548 800D33A8 1460FFF3 */  bnez  $v1, .L800D3378
/* B4A54C 800D33AC 00000000 */   nop   
.L800D33B0:
/* B4A550 800D33B0 0C0013D0 */  jal   osSetIntMask
/* B4A554 800D33B4 00000000 */   nop   
/* B4A558 800D33B8 8FBF001C */  lw    $ra, 0x1c($sp)
/* B4A55C 800D33BC 8FB00018 */  lw    $s0, 0x18($sp)
/* B4A560 800D33C0 27BD0028 */  addiu $sp, $sp, 0x28
/* B4A564 800D33C4 03E00008 */  jr    $ra
/* B4A568 800D33C8 00000000 */   nop   

glabel func_800D33CC
/* B4A56C 800D33CC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B4A570 800D33D0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B4A574 800D33D4 AFB20020 */  sw    $s2, 0x20($sp)
/* B4A578 800D33D8 AFB1001C */  sw    $s1, 0x1c($sp)
/* B4A57C 800D33DC AFB00018 */  sw    $s0, 0x18($sp)
/* B4A580 800D33E0 8C900248 */  lw    $s0, 0x248($a0)
/* B4A584 800D33E4 3C128014 */  lui   $s2, %hi(D_801466EC) # $s2, 0x8014
/* B4A588 800D33E8 00A08825 */  move  $s1, $a1
/* B4A58C 800D33EC 12000013 */  beqz  $s0, .L800D343C
/* B4A590 800D33F0 265266EC */   addiu $s2, %lo(D_801466EC) # addiu $s2, $s2, 0x66ec
/* B4A594 800D33F4 8E070004 */  lw    $a3, 4($s0)
.L800D33F8:
/* B4A598 800D33F8 02202825 */  move  $a1, $s1
/* B4A59C 800D33FC 8CE60008 */  lw    $a2, 8($a3)
/* B4A5A0 800D3400 8CEE0010 */  lw    $t6, 0x10($a3)
/* B4A5A4 800D3404 00E02025 */  move  $a0, $a3
/* B4A5A8 800D3408 00CE082A */  slt   $at, $a2, $t6
/* B4A5AC 800D340C 14200006 */  bnez  $at, .L800D3428
/* B4A5B0 800D3410 00000000 */   nop   
/* B4A5B4 800D3414 02402025 */  move  $a0, $s2
/* B4A5B8 800D3418 0C00084C */  jal   osSyncPrintf
/* B4A5BC 800D341C 00E02825 */   move  $a1, $a3
/* B4A5C0 800D3420 10000004 */  b     .L800D3434
/* B4A5C4 800D3424 8E100000 */   lw    $s0, ($s0)
.L800D3428:
/* B4A5C8 800D3428 0C000C18 */  jal   osSendMesg
/* B4A5CC 800D342C 00003025 */   move  $a2, $zero
/* B4A5D0 800D3430 8E100000 */  lw    $s0, ($s0)
.L800D3434:
/* B4A5D4 800D3434 5600FFF0 */  bnezl $s0, .L800D33F8
/* B4A5D8 800D3438 8E070004 */   lw    $a3, 4($s0)
.L800D343C:
/* B4A5DC 800D343C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B4A5E0 800D3440 8FB00018 */  lw    $s0, 0x18($sp)
/* B4A5E4 800D3444 8FB1001C */  lw    $s1, 0x1c($sp)
/* B4A5E8 800D3448 8FB20020 */  lw    $s2, 0x20($sp)
/* B4A5EC 800D344C 03E00008 */  jr    $ra
/* B4A5F0 800D3450 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800D3454
/* B4A5F4 800D3454 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B4A5F8 800D3458 AFBF0024 */  sw    $ra, 0x24($sp)
/* B4A5FC 800D345C AFB20020 */  sw    $s2, 0x20($sp)
/* B4A600 800D3460 AFB1001C */  sw    $s1, 0x1c($sp)
/* B4A604 800D3464 AFB00018 */  sw    $s0, 0x18($sp)
/* B4A608 800D3468 8C900248 */  lw    $s0, 0x248($a0)
/* B4A60C 800D346C 3C128014 */  lui   $s2, %hi(D_80146744) # $s2, 0x8014
/* B4A610 800D3470 00A08825 */  move  $s1, $a1
/* B4A614 800D3474 12000013 */  beqz  $s0, .L800D34C4
/* B4A618 800D3478 26526744 */   addiu $s2, %lo(D_80146744) # addiu $s2, $s2, 0x6744
/* B4A61C 800D347C 8E070004 */  lw    $a3, 4($s0)
.L800D3480:
/* B4A620 800D3480 02202825 */  move  $a1, $s1
/* B4A624 800D3484 8CE60008 */  lw    $a2, 8($a3)
/* B4A628 800D3488 8CEE0010 */  lw    $t6, 0x10($a3)
/* B4A62C 800D348C 00E02025 */  move  $a0, $a3
/* B4A630 800D3490 00CE082A */  slt   $at, $a2, $t6
/* B4A634 800D3494 14200006 */  bnez  $at, .L800D34B0
/* B4A638 800D3498 00000000 */   nop   
/* B4A63C 800D349C 02402025 */  move  $a0, $s2
/* B4A640 800D34A0 0C00084C */  jal   osSyncPrintf
/* B4A644 800D34A4 00E02825 */   move  $a1, $a3
/* B4A648 800D34A8 10000004 */  b     .L800D34BC
/* B4A64C 800D34AC 8E100000 */   lw    $s0, ($s0)
.L800D34B0:
/* B4A650 800D34B0 0C000C18 */  jal   osSendMesg
/* B4A654 800D34B4 00003025 */   move  $a2, $zero
/* B4A658 800D34B8 8E100000 */  lw    $s0, ($s0)
.L800D34BC:
/* B4A65C 800D34BC 5600FFF0 */  bnezl $s0, .L800D3480
/* B4A660 800D34C0 8E070004 */   lw    $a3, 4($s0)
.L800D34C4:
/* B4A664 800D34C4 8FBF0024 */  lw    $ra, 0x24($sp)
/* B4A668 800D34C8 8FB00018 */  lw    $s0, 0x18($sp)
/* B4A66C 800D34CC 8FB1001C */  lw    $s1, 0x1c($sp)
/* B4A670 800D34D0 8FB20020 */  lw    $s2, 0x20($sp)
/* B4A674 800D34D4 03E00008 */  jr    $ra
/* B4A678 800D34D8 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800D34DC
/* B4A67C 800D34DC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B4A680 800D34E0 AFB00028 */  sw    $s0, 0x28($sp)
/* B4A684 800D34E4 3C0F8013 */  lui   $t7, %hi(D_8012DBD0) # $t7, 0x8013
/* B4A688 800D34E8 AFBF002C */  sw    $ra, 0x2c($sp)
/* B4A68C 800D34EC 25EFDBD0 */  addiu $t7, %lo(D_8012DBD0) # addiu $t7, $t7, -0x2430
/* B4A690 800D34F0 240E0001 */  li    $t6, 1
/* B4A694 800D34F4 00808025 */  move  $s0, $a0
/* B4A698 800D34F8 ADEE0000 */  sw    $t6, ($t7)
/* B4A69C 800D34FC 24180001 */  li    $t8, 1
/* B4A6A0 800D3500 0C001A78 */  jal   osGetTime
/* B4A6A4 800D3504 A218024C */   sb    $t8, 0x24c($s0)
/* B4A6A8 800D3508 3C198013 */  lui   $t9, %hi(D_8012DBD8) # $t9, 0x8013
/* B4A6AC 800D350C 2739DBD8 */  addiu $t9, %lo(D_8012DBD8) # addiu $t9, $t9, -0x2428
/* B4A6B0 800D3510 AE020250 */  sw    $v0, 0x250($s0)
/* B4A6B4 800D3514 AE030254 */  sw    $v1, 0x254($s0)
/* B4A6B8 800D3518 AF220000 */  sw    $v0, ($t9)
/* B4A6BC 800D351C AF230004 */  sw    $v1, 4($t9)
/* B4A6C0 800D3520 3C070141 */  lui   $a3, (0x0141DD76 >> 16) # lui $a3, 0x141
/* B4A6C4 800D3524 24080000 */  li    $t0, 0
/* B4A6C8 800D3528 24090000 */  li    $t1, 0
/* B4A6CC 800D352C 260A0060 */  addiu $t2, $s0, 0x60
/* B4A6D0 800D3530 240B029F */  li    $t3, 671
/* B4A6D4 800D3534 AFAB001C */  sw    $t3, 0x1c($sp)
/* B4A6D8 800D3538 AFAA0018 */  sw    $t2, 0x18($sp)
/* B4A6DC 800D353C AFA90014 */  sw    $t1, 0x14($sp)
/* B4A6E0 800D3540 AFA80010 */  sw    $t0, 0x10($sp)
/* B4A6E4 800D3544 34E7DD76 */  ori   $a3, (0x0141DD76 & 0xFFFF) # ori $a3, $a3, 0xdd76
/* B4A6E8 800D3548 26040258 */  addiu $a0, $s0, 0x258
/* B4A6EC 800D354C 0C0418B8 */  jal   func_801062E0
/* B4A6F0 800D3550 24060000 */   li    $a2, 0
/* B4A6F4 800D3554 02002025 */  move  $a0, $s0
/* B4A6F8 800D3558 0C034D15 */  jal   func_800D3454
/* B4A6FC 800D355C 26050020 */   addiu $a1, $s0, 0x20
/* B4A700 800D3560 8FBF002C */  lw    $ra, 0x2c($sp)
/* B4A704 800D3564 8FB00028 */  lw    $s0, 0x28($sp)
/* B4A708 800D3568 27BD0030 */  addiu $sp, $sp, 0x30
/* B4A70C 800D356C 03E00008 */  jr    $ra
/* B4A710 800D3570 00000000 */   nop   

glabel func_800D3574
/* B4A714 800D3574 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4A718 800D3578 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4A71C 800D357C 3C048014 */  lui   $a0, %hi(D_80146798) # $a0, 0x8014
/* B4A720 800D3580 0C00084C */  jal   osSyncPrintf
/* B4A724 800D3584 24846798 */   addiu $a0, %lo(D_80146798) # addiu $a0, $a0, 0x6798
/* B4A728 800D3588 0C000A6D */  jal   func_800029B4
/* B4A72C 800D358C 00002025 */   move  $a0, $zero
/* B4A730 800D3590 14400006 */  bnez  $v0, .L800D35AC
/* B4A734 800D3594 3C048014 */   lui   $a0, %hi(D_801467D4)
/* B4A738 800D3598 3C048014 */  lui   $a0, %hi(D_801467B8) # $a0, 0x8014
/* B4A73C 800D359C 0C00084C */  jal   osSyncPrintf
/* B4A740 800D35A0 248467B8 */   addiu $a0, %lo(D_801467B8) # addiu $a0, $a0, 0x67b8
/* B4A744 800D35A4 10000011 */  b     .L800D35EC
/* B4A748 800D35A8 8FBF0014 */   lw    $ra, 0x14($sp)
.L800D35AC:
/* B4A74C 800D35AC 248467D4 */  addiu $a0, %lo(D_801467D4)
/* B4A750 800D35B0 0C00084C */  jal   osSyncPrintf
/* B4A754 800D35B4 24050007 */   li    $a1, 7
/* B4A758 800D35B8 3C048014 */  lui   $a0, %hi(D_801467D8) # $a0, 0x8014
/* B4A75C 800D35BC 0C00084C */  jal   osSyncPrintf
/* B4A760 800D35C0 248467D8 */   addiu $a0, %lo(D_801467D8) # addiu $a0, $a0, 0x67d8
/* B4A764 800D35C4 3C048014 */  lui   $a0, %hi(D_801467E0) # $a0, 0x8014
/* B4A768 800D35C8 0C00084C */  jal   osSyncPrintf
/* B4A76C 800D35CC 248467E0 */   addiu $a0, %lo(D_801467E0) # addiu $a0, $a0, 0x67e0
/* B4A770 800D35D0 3C048014 */  lui   $a0, %hi(D_80146810) # $a0, 0x8014
/* B4A774 800D35D4 0C00084C */  jal   osSyncPrintf
/* B4A778 800D35D8 24846810 */   addiu $a0, %lo(D_80146810) # addiu $a0, $a0, 0x6810
/* B4A77C 800D35DC 3C048014 */  lui   $a0, %hi(D_80146858) # $a0, 0x8014
/* B4A780 800D35E0 0C00084C */  jal   osSyncPrintf
/* B4A784 800D35E4 24846858 */   addiu $a0, %lo(D_80146858) # addiu $a0, $a0, 0x6858
/* B4A788 800D35E8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800D35EC:
/* B4A78C 800D35EC 27BD0018 */  addiu $sp, $sp, 0x18
/* B4A790 800D35F0 03E00008 */  jr    $ra
/* B4A794 800D35F4 00000000 */   nop   

glabel func_800D35F8
/* B4A798 800D35F8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B4A79C 800D35FC AFB00028 */  sw    $s0, 0x28($sp)
/* B4A7A0 800D3600 3C0F8013 */  lui   $t7, %hi(D_8012DBD0) # $t7, 0x8013
/* B4A7A4 800D3604 AFBF002C */  sw    $ra, 0x2c($sp)
/* B4A7A8 800D3608 25EFDBD0 */  addiu $t7, %lo(D_8012DBD0) # addiu $t7, $t7, -0x2430
/* B4A7AC 800D360C 240E0002 */  li    $t6, 2
/* B4A7B0 800D3610 00808025 */  move  $s0, $a0
/* B4A7B4 800D3614 ADEE0000 */  sw    $t6, ($t7)
/* B4A7B8 800D3618 24180002 */  li    $t8, 2
/* B4A7BC 800D361C A218024C */  sb    $t8, 0x24c($s0)
/* B4A7C0 800D3620 26190060 */  addiu $t9, $s0, 0x60
/* B4A7C4 800D3624 3C070015 */  lui   $a3, (0x0015752A >> 16) # lui $a3, 0x15
/* B4A7C8 800D3628 24080000 */  li    $t0, 0
/* B4A7CC 800D362C 24090000 */  li    $t1, 0
/* B4A7D0 800D3630 240A02A0 */  li    $t2, 672
/* B4A7D4 800D3634 AFAA001C */  sw    $t2, 0x1c($sp)
/* B4A7D8 800D3638 AFA90014 */  sw    $t1, 0x14($sp)
/* B4A7DC 800D363C AFA80010 */  sw    $t0, 0x10($sp)
/* B4A7E0 800D3640 34E7752A */  ori   $a3, (0x0015752A & 0xFFFF) # ori $a3, $a3, 0x752a
/* B4A7E4 800D3644 AFB90018 */  sw    $t9, 0x18($sp)
/* B4A7E8 800D3648 26040258 */  addiu $a0, $s0, 0x258
/* B4A7EC 800D364C 0C0418B8 */  jal   func_801062E0
/* B4A7F0 800D3650 24060000 */   li    $a2, 0
/* B4A7F4 800D3654 02002025 */  move  $a0, $s0
/* B4A7F8 800D3658 0C034CF3 */  jal   func_800D33CC
/* B4A7FC 800D365C 26050040 */   addiu $a1, $s0, 0x40
/* B4A800 800D3660 8FBF002C */  lw    $ra, 0x2c($sp)
/* B4A804 800D3664 8FB00028 */  lw    $s0, 0x28($sp)
/* B4A808 800D3668 27BD0030 */  addiu $sp, $sp, 0x30
/* B4A80C 800D366C 03E00008 */  jr    $ra
/* B4A810 800D3670 00000000 */   nop   

glabel func_800D3674
/* B4A814 800D3674 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B4A818 800D3678 00802825 */  move  $a1, $a0
/* B4A81C 800D367C AFBF0024 */  sw    $ra, 0x24($sp)
/* B4A820 800D3680 24A20060 */  addiu $v0, $a1, 0x60
/* B4A824 800D3684 24840258 */  addiu $a0, $a0, 0x258
/* B4A828 800D3688 3C07000E */  lui   $a3, (0x000E4E1C >> 16) # lui $a3, 0xe
/* B4A82C 800D368C 240E0000 */  li    $t6, 0
/* B4A830 800D3690 240F0000 */  li    $t7, 0
/* B4A834 800D3694 241802A1 */  li    $t8, 673
/* B4A838 800D3698 AFB8001C */  sw    $t8, 0x1c($sp)
/* B4A83C 800D369C AFAF0014 */  sw    $t7, 0x14($sp)
/* B4A840 800D36A0 AFAE0010 */  sw    $t6, 0x10($sp)
/* B4A844 800D36A4 34E74E1C */  ori   $a3, (0x000E4E1C & 0xFFFF) # ori $a3, $a3, 0x4e1c
/* B4A848 800D36A8 AFA40030 */  sw    $a0, 0x30($sp)
/* B4A84C 800D36AC AFA20018 */  sw    $v0, 0x18($sp)
/* B4A850 800D36B0 AFA2002C */  sw    $v0, 0x2c($sp)
/* B4A854 800D36B4 0C0418B8 */  jal   func_801062E0
/* B4A858 800D36B8 24060000 */   li    $a2, 0
/* B4A85C 800D36BC 0C040C7C */  jal   func_801031F0
/* B4A860 800D36C0 00000000 */   nop   
/* B4A864 800D36C4 10400010 */  beqz  $v0, .L800D3708
/* B4A868 800D36C8 00402825 */   move  $a1, $v0
/* B4A86C 800D36CC 3C048014 */  lui   $a0, %hi(D_8014685C) # $a0, 0x8014
/* B4A870 800D36D0 0C00084C */  jal   osSyncPrintf
/* B4A874 800D36D4 2484685C */   addiu $a0, %lo(D_8014685C) # addiu $a0, $a0, 0x685c
/* B4A878 800D36D8 8FB9002C */  lw    $t9, 0x2c($sp)
/* B4A87C 800D36DC 24080000 */  li    $t0, 0
/* B4A880 800D36E0 24090000 */  li    $t1, 0
/* B4A884 800D36E4 240A02A0 */  li    $t2, 672
/* B4A888 800D36E8 AFAA001C */  sw    $t2, 0x1c($sp)
/* B4A88C 800D36EC AFA90014 */  sw    $t1, 0x14($sp)
/* B4A890 800D36F0 AFA80010 */  sw    $t0, 0x10($sp)
/* B4A894 800D36F4 8FA40030 */  lw    $a0, 0x30($sp)
/* B4A898 800D36F8 24060000 */  li    $a2, 0
/* B4A89C 800D36FC 3407B71B */  li    $a3, 46875
/* B4A8A0 800D3700 0C0418B8 */  jal   func_801062E0
/* B4A8A4 800D3704 AFB90018 */   sw    $t9, 0x18($sp)
.L800D3708:
/* B4A8A8 800D3708 8FBF0024 */  lw    $ra, 0x24($sp)
/* B4A8AC 800D370C 27BD0038 */  addiu $sp, $sp, 0x38
/* B4A8B0 800D3710 03E00008 */  jr    $ra
/* B4A8B4 800D3714 00000000 */   nop   

glabel func_800D3718
/* B4A8B8 800D3718 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4A8BC 800D371C AFBF0014 */  sw    $ra, 0x14($sp)
/* B4A8C0 800D3720 0C034D5D */  jal   func_800D3574
/* B4A8C4 800D3724 AFA40018 */   sw    $a0, 0x18($sp)
/* B4A8C8 800D3728 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4A8CC 800D372C 27BD0018 */  addiu $sp, $sp, 0x18
/* B4A8D0 800D3730 03E00008 */  jr    $ra
/* B4A8D4 800D3734 00000000 */   nop   

glabel func_800D3738
/* B4A8D8 800D3738 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4A8DC 800D373C 3C0E8013 */  lui   $t6, %hi(D_8012DBE0) # $t6, 0x8013
/* B4A8E0 800D3740 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4A8E4 800D3744 25CEDBE0 */  addiu $t6, %lo(D_8012DBE0) # addiu $t6, $t6, -0x2420
/* B4A8E8 800D3748 8DD80000 */  lw    $t8, ($t6)
/* B4A8EC 800D374C 8DD90004 */  lw    $t9, 4($t6)
/* B4A8F0 800D3750 1700001C */  bnez  $t8, .L800D37C4
/* B4A8F4 800D3754 00000000 */   nop   
/* B4A8F8 800D3758 1720001A */  bnez  $t9, .L800D37C4
/* B4A8FC 800D375C 00000000 */   nop   
/* B4A900 800D3760 8C880278 */  lw    $t0, 0x278($a0)
/* B4A904 800D3764 8C89027C */  lw    $t1, 0x27c($a0)
/* B4A908 800D3768 15000009 */  bnez  $t0, .L800D3790
/* B4A90C 800D376C 00000000 */   nop   
/* B4A910 800D3770 15200007 */  bnez  $t1, .L800D3790
/* B4A914 800D3774 00000000 */   nop   
/* B4A918 800D3778 0C001A78 */  jal   osGetTime
/* B4A91C 800D377C AFA40018 */   sw    $a0, 0x18($sp)
/* B4A920 800D3780 8FA40018 */  lw    $a0, 0x18($sp)
/* B4A924 800D3784 AC820278 */  sw    $v0, 0x278($a0)
/* B4A928 800D3788 1000000E */  b     .L800D37C4
/* B4A92C 800D378C AC83027C */   sw    $v1, 0x27c($a0)
.L800D3790:
/* B4A930 800D3790 0C001A78 */  jal   osGetTime
/* B4A934 800D3794 AFA40018 */   sw    $a0, 0x18($sp)
/* B4A938 800D3798 8FA40018 */  lw    $a0, 0x18($sp)
/* B4A93C 800D379C 3C0F8013 */  lui   $t7, %hi(D_8012DBE0) # $t7, 0x8013
/* B4A940 800D37A0 25EFDBE0 */  addiu $t7, %lo(D_8012DBE0) # addiu $t7, $t7, -0x2420
/* B4A944 800D37A4 8C8A0278 */  lw    $t2, 0x278($a0)
/* B4A948 800D37A8 8C8B027C */  lw    $t3, 0x27c($a0)
/* B4A94C 800D37AC 004A6023 */  subu  $t4, $v0, $t2
/* B4A950 800D37B0 006B082B */  sltu  $at, $v1, $t3
/* B4A954 800D37B4 01816023 */  subu  $t4, $t4, $at
/* B4A958 800D37B8 ADEC0000 */  sw    $t4, ($t7)
/* B4A95C 800D37BC 006B6823 */  subu  $t5, $v1, $t3
/* B4A960 800D37C0 ADED0004 */  sw    $t5, 4($t7)
.L800D37C4:
/* B4A964 800D37C4 3C028013 */  lui   $v0, %hi(D_8012DBE8) # $v0, 0x8013
/* B4A968 800D37C8 2442DBE8 */  addiu $v0, %lo(D_8012DBE8) # addiu $v0, $v0, -0x2418
/* B4A96C 800D37CC 8C4E0000 */  lw    $t6, ($v0)
/* B4A970 800D37D0 00802825 */  move  $a1, $a0
/* B4A974 800D37D4 25D80001 */  addiu $t8, $t6, 1
/* B4A978 800D37D8 0C034CF3 */  jal   func_800D33CC
/* B4A97C 800D37DC AC580000 */   sw    $t8, ($v0)
/* B4A980 800D37E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4A984 800D37E4 27BD0018 */  addiu $sp, $sp, 0x18
/* B4A988 800D37E8 03E00008 */  jr    $ra
/* B4A98C 800D37EC 00000000 */   nop   

glabel func_800D37F0
/* B4A990 800D37F0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B4A994 800D37F4 AFB00018 */  sw    $s0, 0x18($sp)
/* B4A998 800D37F8 00808025 */  move  $s0, $a0
/* B4A99C 800D37FC AFBF003C */  sw    $ra, 0x3c($sp)
/* B4A9A0 800D3800 3C048014 */  lui   $a0, %hi(D_80146884) # $a0, 0x8014
/* B4A9A4 800D3804 AFBE0038 */  sw    $fp, 0x38($sp)
/* B4A9A8 800D3808 AFB70034 */  sw    $s7, 0x34($sp)
/* B4A9AC 800D380C AFB60030 */  sw    $s6, 0x30($sp)
/* B4A9B0 800D3810 AFB5002C */  sw    $s5, 0x2c($sp)
/* B4A9B4 800D3814 AFB40028 */  sw    $s4, 0x28($sp)
/* B4A9B8 800D3818 AFB30024 */  sw    $s3, 0x24($sp)
/* B4A9BC 800D381C AFB20020 */  sw    $s2, 0x20($sp)
/* B4A9C0 800D3820 AFB1001C */  sw    $s1, 0x1c($sp)
/* B4A9C4 800D3824 AFA0004C */  sw    $zero, 0x4c($sp)
/* B4A9C8 800D3828 0C00084C */  jal   osSyncPrintf
/* B4A9CC 800D382C 24846884 */   addiu $a0, %lo(D_80146884) # addiu $a0, $a0, 0x6884
/* B4A9D0 800D3830 3C1E8014 */  lui   $fp, %hi(D_801468E0) # $fp, 0x8014
/* B4A9D4 800D3834 3C178014 */  lui   $s7, %hi(D_8014692C) # $s7, 0x8014
/* B4A9D8 800D3838 3C168014 */  lui   $s6, %hi(D_8014691C) # $s6, 0x8014
/* B4A9DC 800D383C 3C158014 */  lui   $s5, %hi(D_80146968) # $s5, 0x8014
/* B4A9E0 800D3840 3C148014 */  lui   $s4, %hi(D_80146958) # $s4, 0x8014
/* B4A9E4 800D3844 00008825 */  move  $s1, $zero
/* B4A9E8 800D3848 26946958 */  addiu $s4, %lo(D_80146958) # addiu $s4, $s4, 0x6958
/* B4A9EC 800D384C 26B56968 */  addiu $s5, %lo(D_80146968) # addiu $s5, $s5, 0x6968
/* B4A9F0 800D3850 26D6691C */  addiu $s6, %lo(D_8014691C) # addiu $s6, $s6, 0x691c
/* B4A9F4 800D3854 26F7692C */  addiu $s7, %lo(D_8014692C) # addiu $s7, $s7, 0x692c
/* B4A9F8 800D3858 27DE68E0 */  addiu $fp, %lo(D_801468E0) # addiu $fp, $fp, 0x68e0
/* B4A9FC 800D385C 26120060 */  addiu $s2, $s0, 0x60
/* B4AA00 800D3860 27B3004C */  addiu $s3, $sp, 0x4c
/* B4AA04 800D3864 02402025 */  move  $a0, $s2
.L800D3868:
/* B4AA08 800D3868 02602825 */  move  $a1, $s3
/* B4AA0C 800D386C 0C000CA0 */  jal   osRecvMesg
/* B4AA10 800D3870 24060001 */   li    $a2, 1
/* B4AA14 800D3874 8FAE004C */  lw    $t6, 0x4c($sp)
/* B4AA18 800D3878 25CFFD66 */  addiu $t7, $t6, -0x29a
/* B4AA1C 800D387C 2DE10008 */  sltiu $at, $t7, 8
/* B4AA20 800D3880 1020002E */  beqz  $at, .L800D393C
/* B4AA24 800D3884 000F7880 */   sll   $t7, $t7, 2
/* B4AA28 800D3888 3C018014 */  lui   $at, %hi(jtbl_80146A18)
/* B4AA2C 800D388C 002F0821 */  addu  $at, $at, $t7
/* B4AA30 800D3890 8C2F6A18 */  lw    $t7, %lo(jtbl_80146A18)($at)
/* B4AA34 800D3894 01E00008 */  jr    $t7
/* B4AA38 800D3898 00000000 */   nop   
/* B4AA3C 800D389C 0C034DCE */  jal   func_800D3738
/* B4AA40 800D38A0 02002025 */   move  $a0, $s0
/* B4AA44 800D38A4 10000029 */  b     .L800D394C
/* B4AA48 800D38A8 00000000 */   nop   
/* B4AA4C 800D38AC 3C048014 */  lui   $a0, %hi(D_801468A8) # $a0, 0x8014
/* B4AA50 800D38B0 0C00084C */  jal   osSyncPrintf
/* B4AA54 800D38B4 248468A8 */   addiu $a0, %lo(D_801468A8) # addiu $a0, $a0, 0x68a8
/* B4AA58 800D38B8 3C048014 */  lui   $a0, %hi(D_801468B8) # $a0, 0x8014
/* B4AA5C 800D38BC 0C00084C */  jal   osSyncPrintf
/* B4AA60 800D38C0 248468B8 */   addiu $a0, %lo(D_801468B8) # addiu $a0, $a0, 0x68b8
/* B4AA64 800D38C4 0C034D37 */  jal   func_800D34DC
/* B4AA68 800D38C8 02002025 */   move  $a0, $s0
/* B4AA6C 800D38CC 1000001F */  b     .L800D394C
/* B4AA70 800D38D0 00000000 */   nop   
/* B4AA74 800D38D4 0C00084C */  jal   osSyncPrintf
/* B4AA78 800D38D8 03C02025 */   move  $a0, $fp
/* B4AA7C 800D38DC 3C048014 */  lui   $a0, %hi(D_801468F0) # $a0, 0x8014
/* B4AA80 800D38E0 0C00084C */  jal   osSyncPrintf
/* B4AA84 800D38E4 248468F0 */   addiu $a0, %lo(D_801468F0) # addiu $a0, $a0, 0x68f0
/* B4AA88 800D38E8 0C034D7E */  jal   func_800D35F8
/* B4AA8C 800D38EC 02002025 */   move  $a0, $s0
/* B4AA90 800D38F0 10000016 */  b     .L800D394C
/* B4AA94 800D38F4 00000000 */   nop   
/* B4AA98 800D38F8 0C00084C */  jal   osSyncPrintf
/* B4AA9C 800D38FC 02C02025 */   move  $a0, $s6
/* B4AAA0 800D3900 0C00084C */  jal   osSyncPrintf
/* B4AAA4 800D3904 02E02025 */   move  $a0, $s7
/* B4AAA8 800D3908 0C034D9D */  jal   func_800D3674
/* B4AAAC 800D390C 02002025 */   move  $a0, $s0
/* B4AAB0 800D3910 1000000E */  b     .L800D394C
/* B4AAB4 800D3914 00000000 */   nop   
/* B4AAB8 800D3918 02802025 */  move  $a0, $s4
/* B4AABC 800D391C 0C00084C */  jal   osSyncPrintf
/* B4AAC0 800D3920 24110001 */   li    $s1, 1
/* B4AAC4 800D3924 0C00084C */  jal   osSyncPrintf
/* B4AAC8 800D3928 02A02025 */   move  $a0, $s5
/* B4AACC 800D392C 0C034DC6 */  jal   func_800D3718
/* B4AAD0 800D3930 02002025 */   move  $a0, $s0
/* B4AAD4 800D3934 10000005 */  b     .L800D394C
/* B4AAD8 800D3938 00000000 */   nop   
.L800D393C:
/* B4AADC 800D393C 3C048014 */  lui   $a0, %hi(D_80146994) # $a0, 0x8014
/* B4AAE0 800D3940 24846994 */  addiu $a0, %lo(D_80146994) # addiu $a0, $a0, 0x6994
/* B4AAE4 800D3944 0C00084C */  jal   osSyncPrintf
/* B4AAE8 800D3948 8FA5004C */   lw    $a1, 0x4c($sp)
.L800D394C:
/* B4AAEC 800D394C 5220FFC6 */  beql  $s1, $zero, .L800D3868
/* B4AAF0 800D3950 02402025 */   move  $a0, $s2
/* B4AAF4 800D3954 3C048014 */  lui   $a0, %hi(D_801469CC) # $a0, 0x8014
/* B4AAF8 800D3958 0C00084C */  jal   osSyncPrintf
/* B4AAFC 800D395C 248469CC */   addiu $a0, %lo(D_801469CC) # addiu $a0, $a0, 0x69cc
/* B4AB00 800D3960 8FBF003C */  lw    $ra, 0x3c($sp)
/* B4AB04 800D3964 8FB00018 */  lw    $s0, 0x18($sp)
/* B4AB08 800D3968 8FB1001C */  lw    $s1, 0x1c($sp)
/* B4AB0C 800D396C 8FB20020 */  lw    $s2, 0x20($sp)
/* B4AB10 800D3970 8FB30024 */  lw    $s3, 0x24($sp)
/* B4AB14 800D3974 8FB40028 */  lw    $s4, 0x28($sp)
/* B4AB18 800D3978 8FB5002C */  lw    $s5, 0x2c($sp)
/* B4AB1C 800D397C 8FB60030 */  lw    $s6, 0x30($sp)
/* B4AB20 800D3980 8FB70034 */  lw    $s7, 0x34($sp)
/* B4AB24 800D3984 8FBE0038 */  lw    $fp, 0x38($sp)
/* B4AB28 800D3988 03E00008 */  jr    $ra
/* B4AB2C 800D398C 27BD0050 */   addiu $sp, $sp, 0x50

glabel func_800D3990
/* B4AB30 800D3990 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B4AB34 800D3994 AFB00020 */  sw    $s0, 0x20($sp)
/* B4AB38 800D3998 00808025 */  move  $s0, $a0
/* B4AB3C 800D399C AFA60038 */  sw    $a2, 0x38($sp)
/* B4AB40 800D39A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B4AB44 800D39A4 AFA50034 */  sw    $a1, 0x34($sp)
/* B4AB48 800D39A8 AFA7003C */  sw    $a3, 0x3c($sp)
/* B4AB4C 800D39AC 3C068014 */  lui   $a2, %hi(D_801469F8) # $a2, 0x8014
/* B4AB50 800D39B0 3C048014 */  lui   $a0, %hi(D_801469F0) # $a0, 0x8014
/* B4AB54 800D39B4 248469F0 */  addiu $a0, %lo(D_801469F0) # addiu $a0, $a0, 0x69f0
/* B4AB58 800D39B8 24C669F8 */  addiu $a2, %lo(D_801469F8) # addiu $a2, $a2, 0x69f8
/* B4AB5C 800D39BC 2407015A */  li    $a3, 346
/* B4AB60 800D39C0 0C000B58 */  jal   NullPointerCheck
/* B4AB64 800D39C4 02002825 */   move  $a1, $s0
/* B4AB68 800D39C8 3C048014 */  lui   $a0, %hi(D_80146A04) # $a0, 0x8014
/* B4AB6C 800D39CC 3C068014 */  lui   $a2, %hi(D_80146A0C) # $a2, 0x8014
/* B4AB70 800D39D0 24C66A0C */  addiu $a2, %lo(D_80146A0C) # addiu $a2, $a2, 0x6a0c
/* B4AB74 800D39D4 24846A04 */  addiu $a0, %lo(D_80146A04) # addiu $a0, $a0, 0x6a04
/* B4AB78 800D39D8 8FA50034 */  lw    $a1, 0x34($sp)
/* B4AB7C 800D39DC 0C000B58 */  jal   NullPointerCheck
/* B4AB80 800D39E0 2407015B */   li    $a3, 347
/* B4AB84 800D39E4 240E0001 */  li    $t6, 1
/* B4AB88 800D39E8 240F0004 */  li    $t7, 4
/* B4AB8C 800D39EC 24180003 */  li    $t8, 3
/* B4AB90 800D39F0 24080000 */  li    $t0, 0
/* B4AB94 800D39F4 24090000 */  li    $t1, 0
/* B4AB98 800D39F8 AE000248 */  sw    $zero, 0x248($s0)
/* B4AB9C 800D39FC A60E0000 */  sh    $t6, ($s0)
/* B4ABA0 800D3A00 A60F0020 */  sh    $t7, 0x20($s0)
/* B4ABA4 800D3A04 A6180040 */  sh    $t8, 0x40($s0)
/* B4ABA8 800D3A08 A200024C */  sb    $zero, 0x24c($s0)
/* B4ABAC 800D3A0C AE090254 */  sw    $t1, 0x254($s0)
/* B4ABB0 800D3A10 AE080250 */  sw    $t0, 0x250($s0)
/* B4ABB4 800D3A14 26040060 */  addiu $a0, $s0, 0x60
/* B4ABB8 800D3A18 AFA4002C */  sw    $a0, 0x2c($sp)
/* B4ABBC 800D3A1C 26050078 */  addiu $a1, $s0, 0x78
/* B4ABC0 800D3A20 0C001874 */  jal   osCreateMesgQueue
/* B4ABC4 800D3A24 24060008 */   li    $a2, 8
/* B4ABC8 800D3A28 2404000E */  li    $a0, 14
/* B4ABCC 800D3A2C 8FA5002C */  lw    $a1, 0x2c($sp)
/* B4ABD0 800D3A30 0C001488 */  jal   func_80005220
/* B4ABD4 800D3A34 2406029D */   li    $a2, 669
/* B4ABD8 800D3A38 8FA4002C */  lw    $a0, 0x2c($sp)
/* B4ABDC 800D3A3C 2405029A */  li    $a1, 666
/* B4ABE0 800D3A40 0C0411EC */  jal   func_801047B0
/* B4ABE4 800D3A44 93A6003F */   lbu   $a2, 0x3f($sp)
/* B4ABE8 800D3A48 8FB90034 */  lw    $t9, 0x34($sp)
/* B4ABEC 800D3A4C 8FAA0038 */  lw    $t2, 0x38($sp)
/* B4ABF0 800D3A50 26040098 */  addiu $a0, $s0, 0x98
/* B4ABF4 800D3A54 3C06800D */  lui   $a2, %hi(func_800D37F0) # $a2, 0x800d
/* B4ABF8 800D3A58 24C637F0 */  addiu $a2, %lo(func_800D37F0) # addiu $a2, $a2, 0x37f0
/* B4ABFC 800D3A5C AFA4002C */  sw    $a0, 0x2c($sp)
/* B4AC00 800D3A60 24050013 */  li    $a1, 19
/* B4AC04 800D3A64 02003825 */  move  $a3, $s0
/* B4AC08 800D3A68 AFB90010 */  sw    $t9, 0x10($sp)
/* B4AC0C 800D3A6C 0C001154 */  jal   osCreateThread
/* B4AC10 800D3A70 AFAA0014 */   sw    $t2, 0x14($sp)
/* B4AC14 800D3A74 0C0023F0 */  jal   osStartThread
/* B4AC18 800D3A78 8FA4002C */   lw    $a0, 0x2c($sp)
/* B4AC1C 800D3A7C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B4AC20 800D3A80 8FB00020 */  lw    $s0, 0x20($sp)
/* B4AC24 800D3A84 27BD0030 */  addiu $sp, $sp, 0x30
/* B4AC28 800D3A88 03E00008 */  jr    $ra
/* B4AC2C 800D3A8C 00000000 */   nop   
