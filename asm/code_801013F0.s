.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_801013F0
/* B78590 801013F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B78594 801013F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B78598 801013F8 AFA5001C */  sw    $a1, 0x1c($sp)
/* B7859C 801013FC 3C0EA480 */  lui   $t6, %hi(D_A4800018) # $t6, 0xa480
/* B785A0 80101400 8DCF0018 */  lw    $t7, %lo(D_A4800018)($t6)
/* B785A4 80101404 00803025 */  move  $a2, $a0
/* B785A8 80101408 24010001 */  li    $at, 1
/* B785AC 8010140C 31F80003 */  andi  $t8, $t7, 3
/* B785B0 80101410 13000003 */  beqz  $t8, .L80101420
/* B785B4 80101414 00000000 */   nop   
/* B785B8 80101418 1000001C */  b     .L8010148C
/* B785BC 8010141C 2402FFFF */   li    $v0, -1
.L80101420:
/* B785C0 80101420 14C10005 */  bne   $a2, $at, .L80101438
/* B785C4 80101424 8FA4001C */   lw    $a0, 0x1c($sp)
/* B785C8 80101428 24050040 */  li    $a1, 64
/* B785CC 8010142C 0C0011B0 */  jal   osWritebackDCache
/* B785D0 80101430 AFA60018 */   sw    $a2, 0x18($sp)
/* B785D4 80101434 8FA60018 */  lw    $a2, 0x18($sp)
.L80101438:
/* B785D8 80101438 8FA4001C */  lw    $a0, 0x1c($sp)
/* B785DC 8010143C 0C001378 */  jal   osVirtualToPhysical
/* B785E0 80101440 AFA60018 */   sw    $a2, 0x18($sp)
/* B785E4 80101444 8FA60018 */  lw    $a2, 0x18($sp)
/* B785E8 80101448 3C19A480 */  lui   $t9, 0xa480
/* B785EC 8010144C AF220000 */  sw    $v0, ($t9)
/* B785F0 80101450 14C00006 */  bnez  $a2, .L8010146C
/* B785F4 80101454 3C0A1FC0 */   lui   $t2, (0x1FC007C0 >> 16) # lui $t2, 0x1fc0
/* B785F8 80101458 3C081FC0 */  lui   $t0, (0x1FC007C0 >> 16) # lui $t0, 0x1fc0
/* B785FC 8010145C 350807C0 */  ori   $t0, (0x1FC007C0 & 0xFFFF) # ori $t0, $t0, 0x7c0
/* B78600 80101460 3C09A480 */  lui   $t1, %hi(D_A4800004) # $t1, 0xa480
/* B78604 80101464 10000004 */  b     .L80101478
/* B78608 80101468 AD280004 */   sw    $t0, %lo(D_A4800004)($t1)
.L8010146C:
/* B7860C 8010146C 354A07C0 */  ori   $t2, (0x1FC007C0 & 0xFFFF) # ori $t2, $t2, 0x7c0
/* B78610 80101470 3C0BA480 */  lui   $t3, %hi(D_A4800010) # $t3, 0xa480
/* B78614 80101474 AD6A0010 */  sw    $t2, %lo(D_A4800010)($t3)
.L80101478:
/* B78618 80101478 14C00003 */  bnez  $a2, .L80101488
/* B7861C 8010147C 8FA4001C */   lw    $a0, 0x1c($sp)
/* B78620 80101480 0C001880 */  jal   osInvalDCache
/* B78624 80101484 24050040 */   li    $a1, 64
.L80101488:
/* B78628 80101488 00001025 */  move  $v0, $zero
.L8010148C:
/* B7862C 8010148C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B78630 80101490 27BD0018 */  addiu $sp, $sp, 0x18
/* B78634 80101494 03E00008 */  jr    $ra
/* B78638 80101498 00000000 */   nop   
