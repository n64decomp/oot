.rdata

glabel D_80011954
	.asciz "DMA ROM:%08X RAM:%08X SIZE:%08X %s\n"
	.balign 4

glabel D_80011978
	.asciz "Segment Alignment Error"
	.balign 4

glabel D_80011990
	.asciz "\xA5\xBB\xA5\xB0\xA5\xE1\xA5\xF3\xA5\xC8\xB6\xAD\xB3\xA6\xA4\xF2\xA4\xDE\xA4\xBF\xA4\xAC\xA4\xC3\xA4\xC6\xA3\xC4\xA3\xCD\xA3\xC1\xC5\xBE\xC1\xF7\xA4\xB9\xA4\xEB\xA4\xB3\xA4\xC8\xA4\xCF\xA4\xC7\xA4\xAD\xA4\xDE\xA4\xBB\xA4\xF3"
	.balign 4

glabel D_800119CC
	.asciz "No Press ROM:%08X RAM:%08X SIZE:%08X\n"
	.balign 4

glabel D_800119F4
	.asciz "Can't Transfer Segment"
	.balign 4

glabel D_80011A0C
	.asciz "\xB0\xB5\xBD\xCC\xA4\xB5\xA4\xEC\xA4\xBF\xA5\xBB\xA5\xB0\xA5\xE1\xA5\xF3\xA5\xC8\xA4\xCE\xC5\xD3\xC3\xE6\xA4\xAB\xA4\xE9\xA4\xCF\xA3\xC4\xA3\xCD\xA3\xC1\xC5\xBE\xC1\xF7\xA4\xB9\xA4\xEB\xA4\xB3\xA4\xC8\xA4\xCF\xA4\xC7\xA4\xAD\xA4\xDE\xA4\xBB\xA4\xF3"
	.balign 4

glabel D_80011A4C
	.asciz "Can't Transfer Segment"
	.balign 4

glabel D_80011A64
	.asciz "\xB0\xB5\xBD\xCC\xA4\xB5\xA4\xEC\xA4\xBF\xA5\xBB\xA5\xB0\xA5\xE1\xA5\xF3\xA5\xC8\xA4\xCE\xB0\xEC\xC9\xF4\xA4\xC0\xA4\xB1\xA4\xF2\xA3\xC4\xA3\xCD\xA3\xC1\xC5\xBE\xC1\xF7\xA4\xB9\xA4\xEB\xA4\xB3\xA4\xC8\xA4\xCF\xA4\xC7\xA4\xAD\xA4\xDE\xA4\xBB\xA4\xF3"
	.balign 4

glabel D_80011AA4
	.asciz "   Press ROM:%X RAM:%X SIZE:%X\n"
	.balign 4

glabel D_80011AC4
	.asciz "DATA DON'T EXIST"
	.balign 4

glabel D_80011AD8
	.asciz "\xB3\xBA\xC5\xF6\xA4\xB9\xA4\xEB\xA5\xC7\xA1\xBC\xA5\xBF\xA4\xAC\xC2\xB8\xBA\xDF\xA4\xB7\xA4\xDE\xA4\xBB\xA4\xF3"
	.balign 4

glabel D_80011AF8
	.asciz "No Press ROM:%08X RAM:%08X SIZE:%08X (\xC8\xF3\xB8\xF8\xBC\xB0)\n"
	.balign 4

.text
glabel DmaMgr_ProcessMsg
/* 001FFC 800013FC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 002000 80001400 AFBF001C */  sw    $ra, 0x1c($sp)
/* 002004 80001404 AFB00018 */  sw    $s0, 0x18($sp)
/* 002008 80001408 8C8E0004 */  lw    $t6, 4($a0)
/* 00200C 8000140C 8C900000 */  lw    $s0, ($a0)
/* 002010 80001410 00803025 */  move  $a2, $a0
/* 002014 80001414 AFAE0038 */  sw    $t6, 0x38($sp)
/* 002018 80001418 8C8F0008 */  lw    $t7, 8($a0)
/* 00201C 8000141C AFA60040 */  sw    $a2, 0x40($sp)
/* 002020 80001420 A3A0002B */  sb    $zero, 0x2b($sp)
/* 002024 80001424 02002025 */  move  $a0, $s0
/* 002028 80001428 0C0004E4 */  jal   DmaMgr_GetFileName
/* 00202C 8000142C AFAF0034 */   sw    $t7, 0x34($sp)
/* 002030 80001430 3C048001 */  lui   $a0, %hi(gDmaDataTable)
/* 002034 80001434 24836DA0 */  addiu $v1, $a0, %lo(gDmaDataTable)
/* 002038 80001438 AFA20020 */  sw    $v0, 0x20($sp)
/* 00203C 8000143C 8C780004 */  lw    $t8, 4($v1)
/* 002040 80001440 93A5002B */  lbu   $a1, 0x2b($sp)
/* 002044 80001444 1300004B */  beqz  $t8, .L80001574
/* 002048 80001448 00000000 */   nop   
/* 00204C 8000144C 8C670000 */  lw    $a3, ($v1)
.L80001450:
/* 002050 80001450 0207082B */  sltu  $at, $s0, $a3
/* 002054 80001454 54200044 */  bnezl $at, .L80001568
/* 002058 80001458 8C6E0014 */   lw    $t6, 0x14($v1)
/* 00205C 8000145C 8C620004 */  lw    $v0, 4($v1)
/* 002060 80001460 0202082B */  sltu  $at, $s0, $v0
/* 002064 80001464 50200040 */  beql  $at, $zero, .L80001568
/* 002068 80001468 8C6E0014 */   lw    $t6, 0x14($v1)
/* 00206C 8000146C 8C65000C */  lw    $a1, 0xc($v1)
/* 002070 80001470 8FB90034 */  lw    $t9, 0x34($sp)
/* 002074 80001474 14A00015 */  bnez  $a1, .L800014CC
/* 002078 80001478 02194021 */   addu  $t0, $s0, $t9
/* 00207C 8000147C 0048082B */  sltu  $at, $v0, $t0
/* 002080 80001480 1020000A */  beqz  $at, .L800014AC
/* 002084 80001484 8FA40040 */   lw    $a0, 0x40($sp)
/* 002088 80001488 3C068001 */  lui   $a2, %hi(D_80011978) # $a2, 0x8001
/* 00208C 8000148C 3C078001 */  lui   $a3, %hi(D_80011990) # $a3, 0x8001
/* 002090 80001490 24E71990 */  addiu $a3, %lo(D_80011990) # addiu $a3, $a3, 0x1990
/* 002094 80001494 24C61978 */  addiu $a2, %lo(D_80011978) # addiu $a2, $a2, 0x1978
/* 002098 80001498 8FA50020 */  lw    $a1, 0x20($sp)
/* 00209C 8000149C 0C000450 */  jal   DmaMgr_Error
/* 0020A0 800014A0 AFA30024 */   sw    $v1, 0x24($sp)
/* 0020A4 800014A4 8FA30024 */  lw    $v1, 0x24($sp)
/* 0020A8 800014A8 8C670000 */  lw    $a3, ($v1)
.L800014AC:
/* 0020AC 800014AC 8C690008 */  lw    $t1, 8($v1)
/* 0020B0 800014B0 8FA50038 */  lw    $a1, 0x38($sp)
/* 0020B4 800014B4 8FA60034 */  lw    $a2, 0x34($sp)
/* 0020B8 800014B8 01305021 */  addu  $t2, $t1, $s0
/* 0020BC 800014BC 0C0002FF */  jal   DmaMgr_DMARomToRam
/* 0020C0 800014C0 01472023 */   subu  $a0, $t2, $a3
/* 0020C4 800014C4 1000002B */  b     .L80001574
/* 0020C8 800014C8 24050001 */   li    $a1, 1
.L800014CC:
/* 0020CC 800014CC 8C640008 */  lw    $a0, 8($v1)
/* 0020D0 800014D0 3C068001 */  lui   $a2, %hi(D_800119F4) # $a2, 0x8001
/* 0020D4 800014D4 24C619F4 */  addiu $a2, %lo(D_800119F4) # addiu $a2, $a2, 0x19f4
/* 0020D8 800014D8 00A45823 */  subu  $t3, $a1, $a0
/* 0020DC 800014DC AFAB002C */  sw    $t3, 0x2c($sp)
/* 0020E0 800014E0 1207000A */  beq   $s0, $a3, .L8000150C
/* 0020E4 800014E4 AFA40030 */   sw    $a0, 0x30($sp)
/* 0020E8 800014E8 3C078001 */  lui   $a3, %hi(D_80011A0C) # $a3, 0x8001
/* 0020EC 800014EC 24E71A0C */  addiu $a3, %lo(D_80011A0C) # addiu $a3, $a3, 0x1a0c
/* 0020F0 800014F0 8FA40040 */  lw    $a0, 0x40($sp)
/* 0020F4 800014F4 8FA50020 */  lw    $a1, 0x20($sp)
/* 0020F8 800014F8 0C000450 */  jal   DmaMgr_Error
/* 0020FC 800014FC AFA30024 */   sw    $v1, 0x24($sp)
/* 002100 80001500 8FA30024 */  lw    $v1, 0x24($sp)
/* 002104 80001504 8C670000 */  lw    $a3, ($v1)
/* 002108 80001508 8C620004 */  lw    $v0, 4($v1)
.L8000150C:
/* 00210C 8000150C 8FAC0034 */  lw    $t4, 0x34($sp)
/* 002110 80001510 00476823 */  subu  $t5, $v0, $a3
/* 002114 80001514 8FA40040 */  lw    $a0, 0x40($sp)
/* 002118 80001518 118D0006 */  beq   $t4, $t5, .L80001534
/* 00211C 8000151C 8FA50020 */   lw    $a1, 0x20($sp)
/* 002120 80001520 3C068001 */  lui   $a2, %hi(D_80011A4C) # $a2, 0x8001
/* 002124 80001524 3C078001 */  lui   $a3, %hi(D_80011A64) # $a3, 0x8001
/* 002128 80001528 24E71A64 */  addiu $a3, %lo(D_80011A64) # addiu $a3, $a3, 0x1a64
/* 00212C 8000152C 0C000450 */  jal   DmaMgr_Error
/* 002130 80001530 24C61A4C */   addiu $a2, %lo(D_80011A4C) # addiu $a2, $a2, 0x1a4c
.L80001534:
/* 002134 80001534 00002025 */  move  $a0, $zero
/* 002138 80001538 0C00190C */  jal   osSetThreadPri
/* 00213C 8000153C 2405000A */   li    $a1, 10
/* 002140 80001540 8FA40030 */  lw    $a0, 0x30($sp)
/* 002144 80001544 8FA50038 */  lw    $a1, 0x38($sp)
/* 002148 80001548 0C000785 */  jal   func_80001E14
/* 00214C 8000154C 8FA6002C */   lw    $a2, 0x2c($sp)
/* 002150 80001550 00002025 */  move  $a0, $zero
/* 002154 80001554 0C00190C */  jal   osSetThreadPri
/* 002158 80001558 24050010 */   li    $a1, 16
/* 00215C 8000155C 10000005 */  b     .L80001574
/* 002160 80001560 24050001 */   li    $a1, 1
/* 002164 80001564 8C6E0014 */  lw    $t6, 0x14($v1)
.L80001568:
/* 002168 80001568 24630010 */  addiu $v1, $v1, 0x10
/* 00216C 8000156C 55C0FFB8 */  bnezl $t6, .L80001450
/* 002170 80001570 8C670000 */   lw    $a3, ($v1)
.L80001574:
/* 002174 80001574 14A00010 */  bnez  $a1, .L800015B8
/* 002178 80001578 3C0F8001 */   lui   $t7, %hi(sDmaMgrDataExistError) # $t7, 0x8001
/* 00217C 8000157C 8DEF9468 */  lw    $t7, %lo(sDmaMgrDataExistError)($t7)
/* 002180 80001580 3C068001 */  lui   $a2, %hi(D_80011AC4) # $a2, 0x8001
/* 002184 80001584 02002025 */  move  $a0, $s0
/* 002188 80001588 11E00009 */  beqz  $t7, .L800015B0
/* 00218C 8000158C 8FA50038 */   lw    $a1, 0x38($sp)
/* 002190 80001590 3C078001 */  lui   $a3, %hi(D_80011AD8) # $a3, 0x8001
/* 002194 80001594 24E71AD8 */  addiu $a3, %lo(D_80011AD8) # addiu $a3, $a3, 0x1ad8
/* 002198 80001598 8FA40040 */  lw    $a0, 0x40($sp)
/* 00219C 8000159C 00002825 */  move  $a1, $zero
/* 0021A0 800015A0 0C000450 */  jal   DmaMgr_Error
/* 0021A4 800015A4 24C61AC4 */   addiu $a2, %lo(D_80011AC4) # addiu $a2, $a2, 0x1ac4
/* 0021A8 800015A8 10000004 */  b     .L800015BC
/* 0021AC 800015AC 8FBF001C */   lw    $ra, 0x1c($sp)
.L800015B0:
/* 0021B0 800015B0 0C0002FF */  jal   DmaMgr_DMARomToRam
/* 0021B4 800015B4 8FA60034 */   lw    $a2, 0x34($sp)
.L800015B8:
/* 0021B8 800015B8 8FBF001C */  lw    $ra, 0x1c($sp)
.L800015BC:
/* 0021BC 800015BC 8FB00018 */  lw    $s0, 0x18($sp)
/* 0021C0 800015C0 27BD0040 */  addiu $sp, $sp, 0x40
/* 0021C4 800015C4 03E00008 */  jr    $ra
/* 0021C8 800015C8 00000000 */   nop   

