glabel func_800825E0
/* AF9780 800825E0 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* AF9784 800825E4 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* AF9788 800825E8 944E13EA */  lhu   $t6, 0x13ea($v0)
/* AF978C 800825EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF9790 800825F0 3087FFFF */  andi  $a3, $a0, 0xffff
/* AF9794 800825F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF9798 800825F8 AFA40018 */  sw    $a0, 0x18($sp)
/* AF979C 800825FC 11C7000D */  beq   $t6, $a3, .L80082634
/* AF97A0 80082600 00E02825 */   move  $a1, $a3
/* AF97A4 80082604 3C048014 */  lui   $a0, %hi(D_8013DCF0) # $a0, 0x8014
/* AF97A8 80082608 2484DCF0 */  addiu $a0, %lo(D_8013DCF0) # addiu $a0, $a0, -0x2310
/* AF97AC 8008260C 944613EE */  lhu   $a2, 0x13ee($v0)
/* AF97B0 80082610 0C00084C */  jal   osSyncPrintf
/* AF97B4 80082614 A7A7001A */   sh    $a3, 0x1a($sp)
/* AF97B8 80082618 97AF001A */  lhu   $t7, 0x1a($sp)
/* AF97BC 8008261C 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* AF97C0 80082620 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* AF97C4 80082624 24180001 */  li    $t8, 1
/* AF97C8 80082628 A45813EC */  sh    $t8, 0x13ec($v0)
/* AF97CC 8008262C A44F13E8 */  sh    $t7, 0x13e8($v0)
/* AF97D0 80082630 A44F13EA */  sh    $t7, 0x13ea($v0)
.L80082634:
/* AF97D4 80082634 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF97D8 80082638 27BD0018 */  addiu $sp, $sp, 0x18
/* AF97DC 8008263C 03E00008 */  jr    $ra
/* AF97E0 80082640 00000000 */   nop   

