.rdata
glabel D_80011C88
	.asciz "dma_rom_ad[]\n"
	.balign 4

glabel D_80011C98
	.asciz "%3d %08x %08x %08x %08x %08x %c %s\n"
	.balign 4

glabel D_80011CBC
    .asciz ""
    .balign 4

glabel D_80011CC0
	.asciz "_bootSegmentRomStart(%08x) != dma_rom_ad[0].rom_b(%08x)\n"
	.balign 4

glabel D_80011CFC
	.asciz "../z_std_dma.c"
	.balign 4

glabel D_80011D0C
	.asciz "dmamgr"
	.balign 4
    
.text
glabel DmaMgr_Start
/* 00243C 8000183C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 002440 80001840 3C020001 */  lui   $v0, 1
/* 002444 80001844 3C0E0002 */  lui   $t6, %hi(_AudiobankSegmentRomStart) # $t6, 2
/* 002448 80001848 24442F70 */  addiu $a0, $v0, 0x2f70
/* 00244C 8000184C AFBF004C */  sw    $ra, 0x4c($sp)
/* 002450 80001850 25CE9030 */  addiu $t6, %lo(_AudiobankSegmentRomStart) # addiu $t6, $t6, -0x6fd0
/* 002454 80001854 3C058001 */  lui   $a1, %hi(_dmadataSegmentStart) # $a1, 0x8001
/* 002458 80001858 AFB70048 */  sw    $s7, 0x48($sp)
/* 00245C 8000185C AFB60044 */  sw    $s6, 0x44($sp)
/* 002460 80001860 AFB50040 */  sw    $s5, 0x40($sp)
/* 002464 80001864 AFB4003C */  sw    $s4, 0x3c($sp)
/* 002468 80001868 AFB30038 */  sw    $s3, 0x38($sp)
/* 00246C 8000186C AFB20034 */  sw    $s2, 0x34($sp)
/* 002470 80001870 AFB10030 */  sw    $s1, 0x30($sp)
/* 002474 80001874 AFB0002C */  sw    $s0, 0x2c($sp)
/* 002478 80001878 24A56DA0 */  addiu $a1, %lo(_dmadataSegmentStart) # addiu $a1, $a1, 0x6da0
/* 00247C 8000187C 0C0002FF */  jal   DmaMgr_DMARomToRam
/* 002480 80001880 01C43023 */   subu  $a2, $t6, $a0
/* 002484 80001884 3C048001 */  lui   $a0, %hi(D_80011C88) # $a0, 0x8001
/* 002488 80001888 0C00084C */  jal   osSyncPrintf
/* 00248C 8000188C 24841C88 */   addiu $a0, %lo(D_80011C88) # addiu $a0, $a0, 0x1c88
/* 002490 80001890 3C138001 */  lui   $s3, %hi(sDmaMgrDataExistError) # $s3, 0x8001
/* 002494 80001894 26739468 */  addiu $s3, %lo(sDmaMgrDataExistError) # addiu $s3, $s3, -0x6b98
/* 002498 80001898 3C028001 */  lui   $v0, %hi(gDmaDataTable)
/* 00249C 8000189C 24506DA0 */  addiu $s0, $v0, %lo(gDmaDataTable)
/* 0024A0 800018A0 AE600000 */  sw    $zero, ($s3)
/* 0024A4 800018A4 8E060004 */  lw    $a2, 4($s0)
/* 0024A8 800018A8 3C118001 */  lui   $s1, %hi(sDmaMgrFileNames) # $s1, 0x8001
/* 0024AC 800018AC 2631946C */  addiu $s1, %lo(sDmaMgrFileNames) # addiu $s1, $s1, -0x6b94
/* 0024B0 800018B0 10C00034 */  beqz  $a2, .L80001984
/* 0024B4 800018B4 00009025 */   move  $s2, $zero
/* 0024B8 800018B8 3C178001 */  lui   $s7, %hi(D_80011CBC) # $s7, 0x8001
/* 0024BC 800018BC 3C168001 */  lui   $s6, %hi(D_80011C98) # $s6, 0x8001
/* 0024C0 800018C0 3C150001 */  lui   $s5, (0x00010001 >> 16) # lui $s5, 1
/* 0024C4 800018C4 36B50001 */  ori   $s5, (0x00010001 & 0xFFFF) # ori $s5, $s5, 1
/* 0024C8 800018C8 26D61C98 */  addiu $s6, %lo(D_80011C98) # addiu $s6, $s6, 0x1c98
/* 0024CC 800018CC 26F71CBC */  addiu $s7, %lo(D_80011CBC) # addiu $s7, $s7, 0x1cbc
/* 0024D0 800018D0 24140001 */  li    $s4, 1
/* 0024D4 800018D4 8E02000C */  lw    $v0, 0xc($s0)
.L800018D8:
/* 0024D8 800018D8 02C02025 */  move  $a0, $s6
/* 0024DC 800018DC 02402825 */  move  $a1, $s2
/* 0024E0 800018E0 10400003 */  beqz  $v0, .L800018F0
/* 0024E4 800018E4 00001825 */   move  $v1, $zero
/* 0024E8 800018E8 AE740000 */  sw    $s4, ($s3)
/* 0024EC 800018EC 8E02000C */  lw    $v0, 0xc($s0)
.L800018F0:
/* 0024F0 800018F0 10400005 */  beqz  $v0, .L80001908
/* 0024F4 800018F4 8E070004 */   lw    $a3, 4($s0)
/* 0024F8 800018F8 8E080008 */  lw    $t0, 8($s0)
/* 0024FC 800018FC 8E060000 */  lw    $a2, ($s0)
/* 002500 80001900 10000004 */  b     .L80001914
/* 002504 80001904 00485023 */   subu  $t2, $v0, $t0
.L80001908:
/* 002508 80001908 8E060000 */  lw    $a2, ($s0)
/* 00250C 8000190C 8E080008 */  lw    $t0, 8($s0)
/* 002510 80001910 00E65023 */  subu  $t2, $a3, $a2
.L80001914:
/* 002514 80001914 10400003 */  beqz  $v0, .L80001924
/* 002518 80001918 24090020 */   li    $t1, 32
/* 00251C 8000191C 10000001 */  b     .L80001924
/* 002520 80001920 00481823 */   subu  $v1, $v0, $t0
.L80001924:
/* 002524 80001924 0075082B */  sltu  $at, $v1, $s5
/* 002528 80001928 14200003 */  bnez  $at, .L80001938
/* 00252C 8000192C 02E01825 */   move  $v1, $s7
/* 002530 80001930 10000001 */  b     .L80001938
/* 002534 80001934 2409002A */   li    $t1, 42
.L80001938:
/* 002538 80001938 12200003 */  beqz  $s1, .L80001948
/* 00253C 8000193C 00000000 */   nop   
/* 002540 80001940 10000001 */  b     .L80001948
/* 002544 80001944 8E230000 */   lw    $v1, ($s1)
.L80001948:
/* 002548 80001948 AFA80010 */  sw    $t0, 0x10($sp)
/* 00254C 8000194C AFA20014 */  sw    $v0, 0x14($sp)
/* 002550 80001950 AFAA0018 */  sw    $t2, 0x18($sp)
/* 002554 80001954 AFA9001C */  sw    $t1, 0x1c($sp)
/* 002558 80001958 0C00084C */  jal   osSyncPrintf
/* 00255C 8000195C AFA30020 */   sw    $v1, 0x20($sp)
/* 002560 80001960 26520001 */  addiu $s2, $s2, 1
/* 002564 80001964 12200002 */  beqz  $s1, .L80001970
/* 002568 80001968 26100010 */   addiu $s0, $s0, 0x10
/* 00256C 8000196C 26310004 */  addiu $s1, $s1, 4
.L80001970:
/* 002570 80001970 8E0F0004 */  lw    $t7, 4($s0)
/* 002574 80001974 55E0FFD8 */  bnezl $t7, .L800018D8
/* 002578 80001978 8E02000C */   lw    $v0, 0xc($s0)
/* 00257C 8000197C 3C068001 */  lui   $a2, %hi(gDmaDataTable+4) # $a2, 0x8001
/* 002580 80001980 8CC66DA4 */  lw    $a2, %lo(gDmaDataTable+4)($a2)
.L80001984:
/* 002584 80001984 3C050000 */  lui   $a1, %hi(_bootSegmentRomStart) # $a1, 0
/* 002588 80001988 24A51060 */  addiu $a1, %lo(_bootSegmentRomStart) # addiu $a1, $a1, 0x1060
/* 00258C 8000198C 10A60007 */  beq   $a1, $a2, .L800019AC
/* 002590 80001990 3C048001 */   lui   $a0, %hi(D_80011CC0) # $a0, 0x8001
/* 002594 80001994 0C00084C */  jal   osSyncPrintf
/* 002598 80001998 24841CC0 */   addiu $a0, %lo(D_80011CC0) # addiu $a0, $a0, 0x1cc0
/* 00259C 8000199C 3C048001 */  lui   $a0, %hi(D_80011CFC) # $a0, 0x8001
/* 0025A0 800019A0 24841CFC */  addiu $a0, %lo(D_80011CFC) # addiu $a0, $a0, 0x1cfc
/* 0025A4 800019A4 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* 0025A8 800019A8 2405041F */   li    $a1, 1055
.L800019AC:
/* 0025AC 800019AC 3C048001 */  lui   $a0, %hi(sDmaMgrMsgQueue) # $a0, 0x8001
/* 0025B0 800019B0 3C058001 */  lui   $a1, %hi(sDmaMgrMsgs) # $a1, 0x8001
/* 0025B4 800019B4 24A539A8 */  addiu $a1, %lo(sDmaMgrMsgs) # addiu $a1, $a1, 0x39a8
/* 0025B8 800019B8 24843990 */  addiu $a0, %lo(sDmaMgrMsgQueue) # addiu $a0, $a0, 0x3990
/* 0025BC 800019BC 0C001874 */  jal   osCreateMesgQueue
/* 0025C0 800019C0 24060020 */   li    $a2, 32
/* 0025C4 800019C4 3C108001 */  lui   $s0, %hi(sDmaMgrCurFileName) # $s0, 0x8001
/* 0025C8 800019C8 3C198001 */  lui   $t9, %hi(D_80011D0C) # $t9, 0x8001
/* 0025CC 800019CC 261040D8 */  addiu $s0, %lo(sDmaMgrCurFileName) # addiu $s0, $s0, 0x40d8
/* 0025D0 800019D0 27391D0C */  addiu $t9, %lo(D_80011D0C) # addiu $t9, $t9, 0x1d0c
/* 0025D4 800019D4 3C048001 */  lui   $a0, %hi(sDmaMgrStackInfo) # $a0, 0x8001
/* 0025D8 800019D8 3C058001 */  lui   $a1, %hi(sDmaMgrStack) # $a1, 0x8001
/* 0025DC 800019DC 24180100 */  li    $t8, 256
/* 0025E0 800019E0 AFB80010 */  sw    $t8, 0x10($sp)
/* 0025E4 800019E4 24A53BD8 */  addiu $a1, %lo(sDmaMgrStack) # addiu $a1, $a1, 0x3bd8
/* 0025E8 800019E8 24843970 */  addiu $a0, %lo(sDmaMgrStackInfo) # addiu $a0, $a0, 0x3970
/* 0025EC 800019EC AFB90014 */  sw    $t9, 0x14($sp)
/* 0025F0 800019F0 02003025 */  move  $a2, $s0
/* 0025F4 800019F4 0C000998 */  jal   StackCheck_Init
/* 0025F8 800019F8 00003825 */   move  $a3, $zero
/* 0025FC 800019FC 3C118001 */  lui   $s1, %hi(sDmaMgrThread) # $s1, 0x8001
/* 002600 80001A00 26313A28 */  addiu $s1, %lo(sDmaMgrThread) # addiu $s1, $s1, 0x3a28
/* 002604 80001A04 3C068000 */  lui   $a2, %hi(DmaMgr_ThreadEntry) # $a2, 0x8000
/* 002608 80001A08 240B0010 */  li    $t3, 16
/* 00260C 80001A0C AFAB0014 */  sw    $t3, 0x14($sp)
/* 002610 80001A10 24C615CC */  addiu $a2, %lo(DmaMgr_ThreadEntry) # addiu $a2, $a2, 0x15cc
/* 002614 80001A14 02202025 */  move  $a0, $s1
/* 002618 80001A18 24050012 */  li    $a1, 18
/* 00261C 80001A1C 00003825 */  move  $a3, $zero
/* 002620 80001A20 0C001154 */  jal   osCreateThread
/* 002624 80001A24 AFB00010 */   sw    $s0, 0x10($sp)
/* 002628 80001A28 0C0023F0 */  jal   osStartThread
/* 00262C 80001A2C 02202025 */   move  $a0, $s1
/* 002630 80001A30 8FBF004C */  lw    $ra, 0x4c($sp)
/* 002634 80001A34 8FB0002C */  lw    $s0, 0x2c($sp)
/* 002638 80001A38 8FB10030 */  lw    $s1, 0x30($sp)
/* 00263C 80001A3C 8FB20034 */  lw    $s2, 0x34($sp)
/* 002640 80001A40 8FB30038 */  lw    $s3, 0x38($sp)
/* 002644 80001A44 8FB4003C */  lw    $s4, 0x3c($sp)
/* 002648 80001A48 8FB50040 */  lw    $s5, 0x40($sp)
/* 00264C 80001A4C 8FB60044 */  lw    $s6, 0x44($sp)
/* 002650 80001A50 8FB70048 */  lw    $s7, 0x48($sp)
/* 002654 80001A54 03E00008 */  jr    $ra
/* 002658 80001A58 27BD0050 */   addiu $sp, $sp, 0x50

