.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_808B7400:
/* 000000 808B7400 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000004 808B7404 AFA5001C */  sw    $a1, 0x1c($sp)
/* 000008 808B7408 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00000C 808B740C 3C05808B */  lui   $a1, %hi(D_808B7620) # $a1, 0x808b
/* 000010 808B7410 AFA40018 */  sw    $a0, 0x18($sp)
/* 000014 808B7414 0C01E037 */  jal   Actor_ProcessInitChain
/* 000018 808B7418 24A57620 */   addiu $a1, %lo(D_808B7620) # addiu $a1, $a1, 0x7620
/* 00001C 808B741C 8FAE0018 */  lw    $t6, 0x18($sp)
/* 000020 808B7420 3C04808B */  lui   $a0, %hi(D_808B7630) # $a0, 0x808b
/* 000024 808B7424 24847630 */  addiu $a0, %lo(D_808B7630) # addiu $a0, $a0, 0x7630
/* 000028 808B7428 0C00084C */  jal   osSyncPrintf
/* 00002C 808B742C 85C5001C */   lh    $a1, 0x1c($t6)
/* 000030 808B7430 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000034 808B7434 27BD0018 */  addiu $sp, $sp, 0x18
/* 000038 808B7438 03E00008 */  jr    $ra
/* 00003C 808B743C 00000000 */   nop   

func_808B7440:
/* 000040 808B7440 AFA40000 */  sw    $a0, ($sp)
/* 000044 808B7444 03E00008 */  jr    $ra
/* 000048 808B7448 AFA50004 */   sw    $a1, 4($sp)

func_808B744C:
/* 00004C 808B744C 3C0E808B */  lui   $t6, %hi(func_808B7478) # $t6, 0x808b
/* 000050 808B7450 3C0F808B */  lui   $t7, %hi(func_808B746C) # $t7, 0x808b
/* 000054 808B7454 AFA50004 */  sw    $a1, 4($sp)
/* 000058 808B7458 25CE7478 */  addiu $t6, %lo(func_808B7478) # addiu $t6, $t6, 0x7478
/* 00005C 808B745C 25EF746C */  addiu $t7, %lo(func_808B746C) # addiu $t7, $t7, 0x746c
/* 000060 808B7460 AC8E0134 */  sw    $t6, 0x134($a0)
/* 000064 808B7464 03E00008 */  jr    $ra
/* 000068 808B7468 AC8F0130 */   sw    $t7, 0x130($a0)

func_808B746C:
/* 00006C 808B746C AFA40000 */  sw    $a0, ($sp)
/* 000070 808B7470 03E00008 */  jr    $ra
/* 000074 808B7474 AFA50004 */   sw    $a1, 4($sp)

func_808B7478:
/* 000078 808B7478 27BDFF90 */  addiu $sp, $sp, -0x70
/* 00007C 808B747C AFB10038 */  sw    $s1, 0x38($sp)
/* 000080 808B7480 00A08825 */  move  $s1, $a1
/* 000084 808B7484 AFBF003C */  sw    $ra, 0x3c($sp)
/* 000088 808B7488 AFB00034 */  sw    $s0, 0x34($sp)
/* 00008C 808B748C AFA40070 */  sw    $a0, 0x70($sp)
/* 000090 808B7490 8CA50000 */  lw    $a1, ($a1)
/* 000094 808B7494 3C06808B */  lui   $a2, %hi(D_808B7654) # $a2, 0x808b
/* 000098 808B7498 24C67654 */  addiu $a2, %lo(D_808B7654) # addiu $a2, $a2, 0x7654
/* 00009C 808B749C 27A40058 */  addiu $a0, $sp, 0x58
/* 0000A0 808B74A0 24070099 */  li    $a3, 153
/* 0000A4 808B74A4 0C031AB1 */  jal   func_800C6AC4
/* 0000A8 808B74A8 00A08025 */   move  $s0, $a1
/* 0000AC 808B74AC 0C024F61 */  jal   func_80093D84
/* 0000B0 808B74B0 8E240000 */   lw    $a0, ($s1)
/* 0000B4 808B74B4 862E07A0 */  lh    $t6, 0x7a0($s1)
/* 0000B8 808B74B8 000E7880 */  sll   $t7, $t6, 2
/* 0000BC 808B74BC 022FC021 */  addu  $t8, $s1, $t7
/* 0000C0 808B74C0 0C016A7D */  jal   func_8005A9F4
/* 0000C4 808B74C4 8F040790 */   lw    $a0, 0x790($t8)
/* 0000C8 808B74C8 8FB90070 */  lw    $t9, 0x70($sp)
/* 0000CC 808B74CC 34018000 */  li    $at, 32768
/* 0000D0 808B74D0 24050001 */  li    $a1, 1
/* 0000D4 808B74D4 872800B6 */  lh    $t0, 0xb6($t9)
/* 0000D8 808B74D8 00484823 */  subu  $t1, $v0, $t0
/* 0000DC 808B74DC 01215021 */  addu  $t2, $t1, $at
/* 0000E0 808B74E0 000A5C00 */  sll   $t3, $t2, 0x10
/* 0000E4 808B74E4 000B6403 */  sra   $t4, $t3, 0x10
/* 0000E8 808B74E8 448C2000 */  mtc1  $t4, $f4
/* 0000EC 808B74EC 3C01808B */  lui   $at, %hi(D_808B769C) # $at, 0x808b
/* 0000F0 808B74F0 C428769C */  lwc1  $f8, %lo(D_808B769C)($at)
/* 0000F4 808B74F4 468021A0 */  cvt.s.w $f6, $f4
/* 0000F8 808B74F8 46083302 */  mul.s $f12, $f6, $f8
/* 0000FC 808B74FC 0C034348 */  jal   func_800D0D20
/* 000100 808B7500 00000000 */   nop   
/* 000104 808B7504 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 000108 808B7508 3C0EDA38 */  lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* 00010C 808B750C 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* 000110 808B7510 244D0008 */  addiu $t5, $v0, 8
/* 000114 808B7514 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* 000118 808B7518 AC4E0000 */  sw    $t6, ($v0)
/* 00011C 808B751C 8E240000 */  lw    $a0, ($s1)
/* 000120 808B7520 3C05808B */  lui   $a1, %hi(D_808B766C) # $a1, 0x808b
/* 000124 808B7524 24A5766C */  addiu $a1, %lo(D_808B766C) # addiu $a1, $a1, 0x766c
/* 000128 808B7528 240600A1 */  li    $a2, 161
/* 00012C 808B752C 0C0346A2 */  jal   func_800D1A88
/* 000130 808B7530 AFA20054 */   sw    $v0, 0x54($sp)
/* 000134 808B7534 8FA30054 */  lw    $v1, 0x54($sp)
/* 000138 808B7538 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* 00013C 808B753C 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* 000140 808B7540 AC620004 */  sw    $v0, 4($v1)
/* 000144 808B7544 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 000148 808B7548 3C070001 */  lui   $a3, 1
/* 00014C 808B754C 00F13821 */  addu  $a3, $a3, $s1
/* 000150 808B7550 244F0008 */  addiu $t7, $v0, 8
/* 000154 808B7554 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* 000158 808B7558 AC580000 */  sw    $t8, ($v0)
/* 00015C 808B755C 8CE71DE4 */  lw    $a3, 0x1de4($a3)
/* 000160 808B7560 8E240000 */  lw    $a0, ($s1)
/* 000164 808B7564 24190020 */  li    $t9, 32
/* 000168 808B7568 00073823 */  negu  $a3, $a3
/* 00016C 808B756C 30E7007F */  andi  $a3, $a3, 0x7f
/* 000170 808B7570 24080020 */  li    $t0, 32
/* 000174 808B7574 24090001 */  li    $t1, 1
/* 000178 808B7578 240A0020 */  li    $t2, 32
/* 00017C 808B757C 240B0020 */  li    $t3, 32
/* 000180 808B7580 AFAB0028 */  sw    $t3, 0x28($sp)
/* 000184 808B7584 AFAA0024 */  sw    $t2, 0x24($sp)
/* 000188 808B7588 AFA90018 */  sw    $t1, 0x18($sp)
/* 00018C 808B758C AFA80014 */  sw    $t0, 0x14($sp)
/* 000190 808B7590 AFA70020 */  sw    $a3, 0x20($sp)
/* 000194 808B7594 AFB90010 */  sw    $t9, 0x10($sp)
/* 000198 808B7598 AFA0001C */  sw    $zero, 0x1c($sp)
/* 00019C 808B759C 00002825 */  move  $a1, $zero
/* 0001A0 808B75A0 00003025 */  move  $a2, $zero
/* 0001A4 808B75A4 0C0253D0 */  jal   func_80094F40
/* 0001A8 808B75A8 AFA20050 */   sw    $v0, 0x50($sp)
/* 0001AC 808B75AC 8FA30050 */  lw    $v1, 0x50($sp)
/* 0001B0 808B75B0 3C0E0600 */  lui   $t6, %hi(D_06000B40) # $t6, 0x600
/* 0001B4 808B75B4 25CE0B40 */  addiu $t6, %lo(D_06000B40) # addiu $t6, $t6, 0xb40
/* 0001B8 808B75B8 AC620004 */  sw    $v0, 4($v1)
/* 0001BC 808B75BC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* 0001C0 808B75C0 3C0DDE00 */  lui   $t5, 0xde00
/* 0001C4 808B75C4 3C06808B */  lui   $a2, %hi(D_808B7684) # $a2, 0x808b
/* 0001C8 808B75C8 244C0008 */  addiu $t4, $v0, 8
/* 0001CC 808B75CC AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* 0001D0 808B75D0 AC4E0004 */  sw    $t6, 4($v0)
/* 0001D4 808B75D4 AC4D0000 */  sw    $t5, ($v0)
/* 0001D8 808B75D8 8E250000 */  lw    $a1, ($s1)
/* 0001DC 808B75DC 24C67684 */  addiu $a2, %lo(D_808B7684) # addiu $a2, $a2, 0x7684
/* 0001E0 808B75E0 27A40058 */  addiu $a0, $sp, 0x58
/* 0001E4 808B75E4 0C031AD5 */  jal   func_800C6B54
/* 0001E8 808B75E8 240700B0 */   li    $a3, 176
/* 0001EC 808B75EC 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0001F0 808B75F0 8FB00034 */  lw    $s0, 0x34($sp)
/* 0001F4 808B75F4 8FB10038 */  lw    $s1, 0x38($sp)
/* 0001F8 808B75F8 03E00008 */  jr    $ra
/* 0001FC 808B75FC 27BD0070 */   addiu $sp, $sp, 0x70

.section .data

D_808B7600:
.incbin "baserom/ovl_Bg_Spot17_Funen", 0x200, 0x20
D_808B7620:
.incbin "baserom/ovl_Bg_Spot17_Funen", 0x220, 0x10
D_808B7630:
.incbin "baserom/ovl_Bg_Spot17_Funen", 0x230, 0x24
D_808B7654:
.incbin "baserom/ovl_Bg_Spot17_Funen", 0x254, 0x18
D_808B766C:
.incbin "baserom/ovl_Bg_Spot17_Funen", 0x26C, 0x18
D_808B7684:
.incbin "baserom/ovl_Bg_Spot17_Funen", 0x284, 0x18
D_808B769C:
.incbin "baserom/ovl_Bg_Spot17_Funen", 0x29C, 0x74
