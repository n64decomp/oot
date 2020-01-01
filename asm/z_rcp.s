.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80093370
/* B0A510 80093370 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B0A514 80093374 AFB10018 */  sw    $s1, 0x18($sp)
/* B0A518 80093378 8FB10034 */  lw    $s1, 0x34($sp)
/* B0A51C 8009337C 8FAE0038 */  lw    $t6, 0x38($sp)
/* B0A520 80093380 AFB00014 */  sw    $s0, 0x14($sp)
/* B0A524 80093384 00808025 */  move  $s0, $a0
/* B0A528 80093388 AFBF001C */  sw    $ra, 0x1c($sp)
/* B0A52C 8009338C AFA50024 */  sw    $a1, 0x24($sp)
/* B0A530 80093390 AFA60028 */  sw    $a2, 0x28($sp)
/* B0A534 80093394 15D10003 */  bne   $t6, $s1, .L800933A4
/* B0A538 80093398 AFA7002C */   sw    $a3, 0x2c($sp)
/* B0A53C 8009339C 25CF0001 */  addiu $t7, $t6, 1
/* B0A540 800933A0 AFAF0038 */  sw    $t7, 0x38($sp)
.L800933A4:
/* B0A544 800933A4 8FB80038 */  lw    $t8, 0x38($sp)
/* B0A548 800933A8 56380008 */  bnel  $s1, $t8, .L800933CC
/* B0A54C 800933AC 02001025 */   move  $v0, $s0
/* B0A550 800933B0 3C048014 */  lui   $a0, %hi(D_8013EAE0) # $a0, 0x8014
/* B0A554 800933B4 3C058014 */  lui   $a1, %hi(D_8013EAE8) # $a1, 0x8014
/* B0A558 800933B8 24A5EAE8 */  addiu $a1, %lo(D_8013EAE8) # addiu $a1, $a1, -0x1518
/* B0A55C 800933BC 2484EAE0 */  addiu $a0, %lo(D_8013EAE0) # addiu $a0, $a0, -0x1520
/* B0A560 800933C0 0C0007FC */  jal   __assert
/* B0A564 800933C4 24060483 */   li    $a2, 1155
/* B0A568 800933C8 02001025 */  move  $v0, $s0
.L800933CC:
/* B0A56C 800933CC 3C19F800 */  lui   $t9, 0xf800
/* B0A570 800933D0 AC590000 */  sw    $t9, ($v0)
/* B0A574 800933D4 8FA90024 */  lw    $t1, 0x24($sp)
/* B0A578 800933D8 8FAB0028 */  lw    $t3, 0x28($sp)
/* B0A57C 800933DC 8FAF002C */  lw    $t7, 0x2c($sp)
/* B0A580 800933E0 00095600 */  sll   $t2, $t1, 0x18
/* B0A584 800933E4 8FA90030 */  lw    $t1, 0x30($sp)
/* B0A588 800933E8 316C00FF */  andi  $t4, $t3, 0xff
/* B0A58C 800933EC 000C6C00 */  sll   $t5, $t4, 0x10
/* B0A590 800933F0 31F800FF */  andi  $t8, $t7, 0xff
/* B0A594 800933F4 0018CA00 */  sll   $t9, $t8, 8
/* B0A598 800933F8 014D7025 */  or    $t6, $t2, $t5
/* B0A59C 800933FC 01D94025 */  or    $t0, $t6, $t9
/* B0A5A0 80093400 312B00FF */  andi  $t3, $t1, 0xff
/* B0A5A4 80093404 010B6025 */  or    $t4, $t0, $t3
/* B0A5A8 80093408 2A2103E8 */  slti  $at, $s1, 0x3e8
/* B0A5AC 8009340C AC4C0004 */  sw    $t4, 4($v0)
/* B0A5B0 80093410 14200007 */  bnez  $at, .L80093430
/* B0A5B4 80093414 26100008 */   addiu $s0, $s0, 8
/* B0A5B8 80093418 02001025 */  move  $v0, $s0
/* B0A5BC 8009341C 3C0ADB08 */  lui   $t2, 0xdb08
/* B0A5C0 80093420 AC4A0000 */  sw    $t2, ($v0)
/* B0A5C4 80093424 AC400004 */  sw    $zero, 4($v0)
/* B0A5C8 80093428 1000003A */  b     .L80093514
/* B0A5CC 8009342C 26100008 */   addiu $s0, $s0, 8
.L80093430:
/* B0A5D0 80093430 2A2103E5 */  slti  $at, $s1, 0x3e5
/* B0A5D4 80093434 14200008 */  bnez  $at, .L80093458
/* B0A5D8 80093438 02001025 */   move  $v0, $s0
/* B0A5DC 8009343C 3C0F7FFF */  lui   $t7, (0x7FFF8100 >> 16) # lui $t7, 0x7fff
/* B0A5E0 80093440 35EF8100 */  ori   $t7, (0x7FFF8100 & 0xFFFF) # ori $t7, $t7, 0x8100
/* B0A5E4 80093444 3C0DDB08 */  lui   $t5, 0xdb08
/* B0A5E8 80093448 AC4D0000 */  sw    $t5, ($v0)
/* B0A5EC 8009344C AC4F0004 */  sw    $t7, 4($v0)
/* B0A5F0 80093450 10000030 */  b     .L80093514
/* B0A5F4 80093454 26100008 */   addiu $s0, $s0, 8
.L80093458:
/* B0A5F8 80093458 06210008 */  bgez  $s1, .L8009347C
/* B0A5FC 8009345C 02001025 */   move  $v0, $s0
/* B0A600 80093460 02001025 */  move  $v0, $s0
/* B0A604 80093464 3C18DB08 */  lui   $t8, 0xdb08
/* B0A608 80093468 240E00FF */  li    $t6, 255
/* B0A60C 8009346C AC4E0004 */  sw    $t6, 4($v0)
/* B0A610 80093470 AC580000 */  sw    $t8, ($v0)
/* B0A614 80093474 10000027 */  b     .L80093514
/* B0A618 80093478 26100008 */   addiu $s0, $s0, 8
.L8009347C:
/* B0A61C 8009347C 3C19DB08 */  lui   $t9, 0xdb08
/* B0A620 80093480 AC590000 */  sw    $t9, ($v0)
/* B0A624 80093484 8FA90038 */  lw    $t1, 0x38($sp)
/* B0A628 80093488 3C080001 */  lui   $t0, (0x0001F400 >> 16) # lui $t0, 1
/* B0A62C 8009348C 3508F400 */  ori   $t0, (0x0001F400 & 0xFFFF) # ori $t0, $t0, 0xf400
/* B0A630 80093490 01311823 */  subu  $v1, $t1, $s1
/* B0A634 80093494 0103001A */  div   $zero, $t0, $v1
/* B0A638 80093498 00116823 */  negu  $t5, $s1
/* B0A63C 8009349C 000D7A00 */  sll   $t7, $t5, 8
/* B0A640 800934A0 01E8C021 */  addu  $t8, $t7, $t0
/* B0A644 800934A4 00005812 */  mflo  $t3
/* B0A648 800934A8 316CFFFF */  andi  $t4, $t3, 0xffff
/* B0A64C 800934AC 000C5400 */  sll   $t2, $t4, 0x10
/* B0A650 800934B0 0303001A */  div   $zero, $t8, $v1
/* B0A654 800934B4 00007012 */  mflo  $t6
/* B0A658 800934B8 31D9FFFF */  andi  $t9, $t6, 0xffff
/* B0A65C 800934BC 01594825 */  or    $t1, $t2, $t9
/* B0A660 800934C0 AC490004 */  sw    $t1, 4($v0)
/* B0A664 800934C4 26100008 */  addiu $s0, $s0, 8
/* B0A668 800934C8 14600002 */  bnez  $v1, .L800934D4
/* B0A66C 800934CC 00000000 */   nop   
/* B0A670 800934D0 0007000D */  break 7
.L800934D4:
/* B0A674 800934D4 2401FFFF */  li    $at, -1
/* B0A678 800934D8 14610004 */  bne   $v1, $at, .L800934EC
/* B0A67C 800934DC 3C018000 */   lui   $at, 0x8000
/* B0A680 800934E0 15010002 */  bne   $t0, $at, .L800934EC
/* B0A684 800934E4 00000000 */   nop   
/* B0A688 800934E8 0006000D */  break 6
.L800934EC:
/* B0A68C 800934EC 01000821 */  addu  $at, $t0, $zero
/* B0A690 800934F0 14600002 */  bnez  $v1, .L800934FC
/* B0A694 800934F4 00000000 */   nop   
/* B0A698 800934F8 0007000D */  break 7
.L800934FC:
/* B0A69C 800934FC 2401FFFF */  li    $at, -1
/* B0A6A0 80093500 14610004 */  bne   $v1, $at, .L80093514
/* B0A6A4 80093504 3C018000 */   lui   $at, 0x8000
/* B0A6A8 80093508 17010002 */  bne   $t8, $at, .L80093514
/* B0A6AC 8009350C 00000000 */   nop   
/* B0A6B0 80093510 0006000D */  break 6
.L80093514:
/* B0A6B4 80093514 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0A6B8 80093518 02001025 */  move  $v0, $s0
/* B0A6BC 8009351C 8FB00014 */  lw    $s0, 0x14($sp)
/* B0A6C0 80093520 8FB10018 */  lw    $s1, 0x18($sp)
/* B0A6C4 80093524 03E00008 */  jr    $ra
/* B0A6C8 80093528 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_8009352C
/* B0A6CC 8009352C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B0A6D0 80093530 8FAE0038 */  lw    $t6, 0x38($sp)
/* B0A6D4 80093534 8FAF0034 */  lw    $t7, 0x34($sp)
/* B0A6D8 80093538 AFB00018 */  sw    $s0, 0x18($sp)
/* B0A6DC 8009353C 00808025 */  move  $s0, $a0
/* B0A6E0 80093540 AFBF001C */  sw    $ra, 0x1c($sp)
/* B0A6E4 80093544 AFA50024 */  sw    $a1, 0x24($sp)
/* B0A6E8 80093548 AFA60028 */  sw    $a2, 0x28($sp)
/* B0A6EC 8009354C 15CF0003 */  bne   $t6, $t7, .L8009355C
/* B0A6F0 80093550 AFA7002C */   sw    $a3, 0x2c($sp)
/* B0A6F4 80093554 25D80001 */  addiu $t8, $t6, 1
/* B0A6F8 80093558 AFB80038 */  sw    $t8, 0x38($sp)
.L8009355C:
/* B0A6FC 8009355C 8FB90034 */  lw    $t9, 0x34($sp)
/* B0A700 80093560 8FA80038 */  lw    $t0, 0x38($sp)
/* B0A704 80093564 57280008 */  bnel  $t9, $t0, .L80093588
/* B0A708 80093568 02001025 */   move  $v0, $s0
/* B0A70C 8009356C 3C048014 */  lui   $a0, %hi(D_8013EAF4) # $a0, 0x8014
/* B0A710 80093570 3C058014 */  lui   $a1, %hi(D_8013EAFC) # $a1, 0x8014
/* B0A714 80093574 24A5EAFC */  addiu $a1, %lo(D_8013EAFC) # addiu $a1, $a1, -0x1504
/* B0A718 80093578 2484EAF4 */  addiu $a0, %lo(D_8013EAF4) # addiu $a0, $a0, -0x150c
/* B0A71C 8009357C 0C0007FC */  jal   __assert
/* B0A720 80093580 240604A3 */   li    $a2, 1187
/* B0A724 80093584 02001025 */  move  $v0, $s0
.L80093588:
/* B0A728 80093588 3C09E700 */  lui   $t1, 0xe700
/* B0A72C 8009358C AC490000 */  sw    $t1, ($v0)
/* B0A730 80093590 AC400004 */  sw    $zero, 4($v0)
/* B0A734 80093594 26100008 */  addiu $s0, $s0, 8
/* B0A738 80093598 02001025 */  move  $v0, $s0
/* B0A73C 8009359C 3C0AF800 */  lui   $t2, 0xf800
/* B0A740 800935A0 AC4A0000 */  sw    $t2, ($v0)
/* B0A744 800935A4 8FAC0024 */  lw    $t4, 0x24($sp)
/* B0A748 800935A8 8FAF0028 */  lw    $t7, 0x28($sp)
/* B0A74C 800935AC 8FA8002C */  lw    $t0, 0x2c($sp)
/* B0A750 800935B0 000C6E00 */  sll   $t5, $t4, 0x18
/* B0A754 800935B4 8FAC0030 */  lw    $t4, 0x30($sp)
/* B0A758 800935B8 31EE00FF */  andi  $t6, $t7, 0xff
/* B0A75C 800935BC 000EC400 */  sll   $t8, $t6, 0x10
/* B0A760 800935C0 310900FF */  andi  $t1, $t0, 0xff
/* B0A764 800935C4 00095200 */  sll   $t2, $t1, 8
/* B0A768 800935C8 01B8C825 */  or    $t9, $t5, $t8
/* B0A76C 800935CC 032A5825 */  or    $t3, $t9, $t2
/* B0A770 800935D0 318F00FF */  andi  $t7, $t4, 0xff
/* B0A774 800935D4 016F7025 */  or    $t6, $t3, $t7
/* B0A778 800935D8 AC4E0004 */  sw    $t6, 4($v0)
/* B0A77C 800935DC 8FAD0034 */  lw    $t5, 0x34($sp)
/* B0A780 800935E0 26100008 */  addiu $s0, $s0, 8
/* B0A784 800935E4 02001025 */  move  $v0, $s0
/* B0A788 800935E8 29A103E8 */  slti  $at, $t5, 0x3e8
/* B0A78C 800935EC 14200006 */  bnez  $at, .L80093608
/* B0A790 800935F0 8FA80034 */   lw    $t0, 0x34($sp)
/* B0A794 800935F4 3C18DB08 */  lui   $t8, 0xdb08
/* B0A798 800935F8 AC580000 */  sw    $t8, ($v0)
/* B0A79C 800935FC 26100008 */  addiu $s0, $s0, 8
/* B0A7A0 80093600 1000003C */  b     .L800936F4
/* B0A7A4 80093604 AC400004 */   sw    $zero, 4($v0)
.L80093608:
/* B0A7A8 80093608 290103E5 */  slti  $at, $t0, 0x3e5
/* B0A7AC 8009360C 14200009 */  bnez  $at, .L80093634
/* B0A7B0 80093610 8FAA0034 */   lw    $t2, 0x34($sp)
/* B0A7B4 80093614 02001025 */  move  $v0, $s0
/* B0A7B8 80093618 3C197FFF */  lui   $t9, (0x7FFF8100 >> 16) # lui $t9, 0x7fff
/* B0A7BC 8009361C 37398100 */  ori   $t9, (0x7FFF8100 & 0xFFFF) # ori $t9, $t9, 0x8100
/* B0A7C0 80093620 3C09DB08 */  lui   $t1, 0xdb08
/* B0A7C4 80093624 AC490000 */  sw    $t1, ($v0)
/* B0A7C8 80093628 AC590004 */  sw    $t9, 4($v0)
/* B0A7CC 8009362C 10000031 */  b     .L800936F4
/* B0A7D0 80093630 26100008 */   addiu $s0, $s0, 8
.L80093634:
/* B0A7D4 80093634 05410008 */  bgez  $t2, .L80093658
/* B0A7D8 80093638 02001025 */   move  $v0, $s0
/* B0A7DC 8009363C 02001025 */  move  $v0, $s0
/* B0A7E0 80093640 3C0CDB08 */  lui   $t4, 0xdb08
/* B0A7E4 80093644 240B00FF */  li    $t3, 255
/* B0A7E8 80093648 AC4B0004 */  sw    $t3, 4($v0)
/* B0A7EC 8009364C AC4C0000 */  sw    $t4, ($v0)
/* B0A7F0 80093650 10000028 */  b     .L800936F4
/* B0A7F4 80093654 26100008 */   addiu $s0, $s0, 8
.L80093658:
/* B0A7F8 80093658 3C0FDB08 */  lui   $t7, 0xdb08
/* B0A7FC 8009365C AC4F0000 */  sw    $t7, ($v0)
/* B0A800 80093660 8FAD0034 */  lw    $t5, 0x34($sp)
/* B0A804 80093664 8FAE0038 */  lw    $t6, 0x38($sp)
/* B0A808 80093668 3C180001 */  lui   $t8, (0x0001F400 >> 16) # lui $t8, 1
/* B0A80C 8009366C 3718F400 */  ori   $t8, (0x0001F400 & 0xFFFF) # ori $t8, $t8, 0xf400
/* B0A810 80093670 01CD1823 */  subu  $v1, $t6, $t5
/* B0A814 80093674 0303001A */  div   $zero, $t8, $v1
/* B0A818 80093678 000D5023 */  negu  $t2, $t5
/* B0A81C 8009367C 000A6200 */  sll   $t4, $t2, 8
/* B0A820 80093680 01985821 */  addu  $t3, $t4, $t8
/* B0A824 80093684 00004012 */  mflo  $t0
/* B0A828 80093688 3109FFFF */  andi  $t1, $t0, 0xffff
/* B0A82C 8009368C 0009CC00 */  sll   $t9, $t1, 0x10
/* B0A830 80093690 0163001A */  div   $zero, $t3, $v1
/* B0A834 80093694 00007812 */  mflo  $t7
/* B0A838 80093698 31EEFFFF */  andi  $t6, $t7, 0xffff
/* B0A83C 8009369C 26100008 */  addiu $s0, $s0, 8
/* B0A840 800936A0 14600002 */  bnez  $v1, .L800936AC
/* B0A844 800936A4 00000000 */   nop   
/* B0A848 800936A8 0007000D */  break 7
.L800936AC:
/* B0A84C 800936AC 2401FFFF */  li    $at, -1
/* B0A850 800936B0 14610004 */  bne   $v1, $at, .L800936C4
/* B0A854 800936B4 3C018000 */   lui   $at, 0x8000
/* B0A858 800936B8 17010002 */  bne   $t8, $at, .L800936C4
/* B0A85C 800936BC 00000000 */   nop   
/* B0A860 800936C0 0006000D */  break 6
.L800936C4:
/* B0A864 800936C4 03000821 */  addu  $at, $t8, $zero
/* B0A868 800936C8 032EC025 */  or    $t8, $t9, $t6
/* B0A86C 800936CC AC580004 */  sw    $t8, 4($v0)
/* B0A870 800936D0 14600002 */  bnez  $v1, .L800936DC
/* B0A874 800936D4 00000000 */   nop   
/* B0A878 800936D8 0007000D */  break 7
.L800936DC:
/* B0A87C 800936DC 2401FFFF */  li    $at, -1
/* B0A880 800936E0 14610004 */  bne   $v1, $at, .L800936F4
/* B0A884 800936E4 3C018000 */   lui   $at, 0x8000
/* B0A888 800936E8 15610002 */  bne   $t3, $at, .L800936F4
/* B0A88C 800936EC 00000000 */   nop   
/* B0A890 800936F0 0006000D */  break 6
.L800936F4:
/* B0A894 800936F4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0A898 800936F8 02001025 */  move  $v0, $s0
/* B0A89C 800936FC 8FB00018 */  lw    $s0, 0x18($sp)
/* B0A8A0 80093700 03E00008 */  jr    $ra
/* B0A8A4 80093704 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_80093708
/* B0A8A8 80093708 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B0A8AC 8009370C 8FAE0038 */  lw    $t6, 0x38($sp)
/* B0A8B0 80093710 8FAF003C */  lw    $t7, 0x3c($sp)
/* B0A8B4 80093714 8FB80040 */  lw    $t8, 0x40($sp)
/* B0A8B8 80093718 AFBF0024 */  sw    $ra, 0x24($sp)
/* B0A8BC 8009371C AFAE0010 */  sw    $t6, 0x10($sp)
/* B0A8C0 80093720 AFAF0014 */  sw    $t7, 0x14($sp)
/* B0A8C4 80093724 0C024CDC */  jal   func_80093370
/* B0A8C8 80093728 AFB80018 */   sw    $t8, 0x18($sp)
/* B0A8CC 8009372C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B0A8D0 80093730 27BD0028 */  addiu $sp, $sp, 0x28
/* B0A8D4 80093734 03E00008 */  jr    $ra
/* B0A8D8 80093738 00000000 */   nop   

glabel func_8009373C
/* B0A8DC 8009373C 00057880 */  sll   $t7, $a1, 2
/* B0A8E0 80093740 01E57823 */  subu  $t7, $t7, $a1
/* B0A8E4 80093744 000F7840 */  sll   $t7, $t7, 1
/* B0A8E8 80093748 00801025 */  move  $v0, $a0
/* B0A8EC 8009374C 3C198012 */  lui   $t9, %hi(D_80126280) # $t9, 0x8012
/* B0A8F0 80093750 27396280 */  addiu $t9, %lo(D_80126280) # addiu $t9, $t9, 0x6280
/* B0A8F4 80093754 000FC0C0 */  sll   $t8, $t7, 3
/* B0A8F8 80093758 03194021 */  addu  $t0, $t8, $t9
/* B0A8FC 8009375C 3C0EDE00 */  lui   $t6, 0xde00
/* B0A900 80093760 AC4E0000 */  sw    $t6, ($v0)
/* B0A904 80093764 AC480004 */  sw    $t0, 4($v0)
/* B0A908 80093768 24840008 */  addiu $a0, $a0, 8
/* B0A90C 8009376C 03E00008 */  jr    $ra
/* B0A910 80093770 00801025 */   move  $v0, $a0

glabel func_80093774
/* B0A914 80093774 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0A918 80093778 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0A91C 8009377C 0C024DCF */  jal   func_8009373C
/* B0A920 80093780 00000000 */   nop   
/* B0A924 80093784 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0A928 80093788 27BD0018 */  addiu $sp, $sp, 0x18
/* B0A92C 8009378C 03E00008 */  jr    $ra
/* B0A930 80093790 00000000 */   nop   

glabel func_80093794
/* B0A934 80093794 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0A938 80093798 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0A93C 8009379C AFA40018 */  sw    $a0, 0x18($sp)
/* B0A940 800937A0 0C024DDD */  jal   func_80093774
/* B0A944 800937A4 8C840000 */   lw    $a0, ($a0)
/* B0A948 800937A8 8FAF0018 */  lw    $t7, 0x18($sp)
/* B0A94C 800937AC ADE20000 */  sw    $v0, ($t7)
/* B0A950 800937B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0A954 800937B4 27BD0018 */  addiu $sp, $sp, 0x18
/* B0A958 800937B8 03E00008 */  jr    $ra
/* B0A95C 800937BC 00000000 */   nop   

glabel func_800937C0
/* B0A960 800937C0 00801025 */  move  $v0, $a0
/* B0A964 800937C4 3C0F8012 */  lui   $t7, %hi(D_80126D30) # $t7, 0x8012
/* B0A968 800937C8 25EF6D30 */  addiu $t7, %lo(D_80126D30) # addiu $t7, $t7, 0x6d30
/* B0A96C 800937CC 3C0EDE00 */  lui   $t6, 0xde00
/* B0A970 800937D0 AC4E0000 */  sw    $t6, ($v0)
/* B0A974 800937D4 AC4F0004 */  sw    $t7, 4($v0)
/* B0A978 800937D8 24840008 */  addiu $a0, $a0, 8
/* B0A97C 800937DC 03E00008 */  jr    $ra
/* B0A980 800937E0 00801025 */   move  $v0, $a0

glabel func_800937E4
/* B0A984 800937E4 00801025 */  move  $v0, $a0
/* B0A988 800937E8 3C0F8012 */  lui   $t7, %hi(D_80126D30) # $t7, 0x8012
/* B0A98C 800937EC 25EF6D30 */  addiu $t7, %lo(D_80126D30) # addiu $t7, $t7, 0x6d30
/* B0A990 800937F0 3C0EDE00 */  lui   $t6, 0xde00
/* B0A994 800937F4 AC4E0000 */  sw    $t6, ($v0)
/* B0A998 800937F8 AC4F0004 */  sw    $t7, 4($v0)
/* B0A99C 800937FC 24840008 */  addiu $a0, $a0, 8
/* B0A9A0 80093800 03E00008 */  jr    $ra
/* B0A9A4 80093804 00801025 */   move  $v0, $a0

glabel func_80093808
/* B0A9A8 80093808 00801025 */  move  $v0, $a0
/* B0A9AC 8009380C 3C0F8012 */  lui   $t7, %hi(D_80126C40) # $t7, 0x8012
/* B0A9B0 80093810 25EF6C40 */  addiu $t7, %lo(D_80126C40) # addiu $t7, $t7, 0x6c40
/* B0A9B4 80093814 3C0EDE00 */  lui   $t6, 0xde00
/* B0A9B8 80093818 AC4E0000 */  sw    $t6, ($v0)
/* B0A9BC 8009381C AC4F0004 */  sw    $t7, 4($v0)
/* B0A9C0 80093820 24840008 */  addiu $a0, $a0, 8
/* B0A9C4 80093824 00801025 */  move  $v0, $a0
/* B0A9C8 80093828 3C18E300 */  lui   $t8, (0xE3001801 >> 16) # lui $t8, 0xe300
/* B0A9CC 8009382C 37181801 */  ori   $t8, (0xE3001801 & 0xFFFF) # ori $t8, $t8, 0x1801
/* B0A9D0 80093830 241900C0 */  li    $t9, 192
/* B0A9D4 80093834 AC590004 */  sw    $t9, 4($v0)
/* B0A9D8 80093838 AC580000 */  sw    $t8, ($v0)
/* B0A9DC 8009383C 24840008 */  addiu $a0, $a0, 8
/* B0A9E0 80093840 03E00008 */  jr    $ra
/* B0A9E4 80093844 00801025 */   move  $v0, $a0

glabel func_80093848
/* B0A9E8 80093848 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0A9EC 8009384C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0A9F0 80093850 00802825 */  move  $a1, $a0
/* B0A9F4 80093854 3C068014 */  lui   $a2, %hi(D_8013EB08) # $a2, 0x8014
/* B0A9F8 80093858 24C6EB08 */  addiu $a2, %lo(D_8013EB08) # addiu $a2, $a2, -0x14f8
/* B0A9FC 8009385C AFA50038 */  sw    $a1, 0x38($sp)
/* B0AA00 80093860 27A40024 */  addiu $a0, $sp, 0x24
/* B0AA04 80093864 0C031AB1 */  jal   func_800C6AC4
/* B0AA08 80093868 2407050D */   li    $a3, 1293
/* B0AA0C 8009386C 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AA10 80093870 3C188012 */  lui   $t8, %hi(D_80126D60) # $t8, 0x8012
/* B0AA14 80093874 27186D60 */  addiu $t8, %lo(D_80126D60) # addiu $t8, $t8, 0x6d60
/* B0AA18 80093878 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AA1C 8009387C 3C0FDE00 */  lui   $t7, 0xde00
/* B0AA20 80093880 3C068014 */  lui   $a2, %hi(D_8013EB14) # $a2, 0x8014
/* B0AA24 80093884 246E0008 */  addiu $t6, $v1, 8
/* B0AA28 80093888 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AA2C 8009388C 24C6EB14 */  addiu $a2, %lo(D_8013EB14) # addiu $a2, $a2, -0x14ec
/* B0AA30 80093890 27A40024 */  addiu $a0, $sp, 0x24
/* B0AA34 80093894 24070511 */  li    $a3, 1297
/* B0AA38 80093898 AC780004 */  sw    $t8, 4($v1)
/* B0AA3C 8009389C 0C031AD5 */  jal   func_800C6B54
/* B0AA40 800938A0 AC6F0000 */   sw    $t7, ($v1)
/* B0AA44 800938A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AA48 800938A8 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AA4C 800938AC 03E00008 */  jr    $ra
/* B0AA50 800938B0 00000000 */   nop   

glabel func_800938B4
/* B0AA54 800938B4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AA58 800938B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AA5C 800938BC 00802825 */  move  $a1, $a0
/* B0AA60 800938C0 3C068014 */  lui   $a2, %hi(D_8013EB20) # $a2, 0x8014
/* B0AA64 800938C4 24C6EB20 */  addiu $a2, %lo(D_8013EB20) # addiu $a2, $a2, -0x14e0
/* B0AA68 800938C8 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AA6C 800938CC 27A40024 */  addiu $a0, $sp, 0x24
/* B0AA70 800938D0 0C031AB1 */  jal   func_800C6AC4
/* B0AA74 800938D4 2407051D */   li    $a3, 1309
/* B0AA78 800938D8 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AA7C 800938DC 3C188012 */  lui   $t8, %hi(D_80126D30) # $t8, 0x8012
/* B0AA80 800938E0 27186D30 */  addiu $t8, %lo(D_80126D30) # addiu $t8, $t8, 0x6d30
/* B0AA84 800938E4 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AA88 800938E8 3C0FDE00 */  lui   $t7, 0xde00
/* B0AA8C 800938EC 3C068014 */  lui   $a2, %hi(D_8013EB2C) # $a2, 0x8014
/* B0AA90 800938F0 246E0008 */  addiu $t6, $v1, 8
/* B0AA94 800938F4 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AA98 800938F8 24C6EB2C */  addiu $a2, %lo(D_8013EB2C) # addiu $a2, $a2, -0x14d4
/* B0AA9C 800938FC 27A40024 */  addiu $a0, $sp, 0x24
/* B0AAA0 80093900 24070521 */  li    $a3, 1313
/* B0AAA4 80093904 AC780004 */  sw    $t8, 4($v1)
/* B0AAA8 80093908 0C031AD5 */  jal   func_800C6B54
/* B0AAAC 8009390C AC6F0000 */   sw    $t7, ($v1)
/* B0AAB0 80093910 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AAB4 80093914 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AAB8 80093918 03E00008 */  jr    $ra
/* B0AABC 8009391C 00000000 */   nop   

glabel func_80093920
/* B0AAC0 80093920 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AAC4 80093924 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AAC8 80093928 00802825 */  move  $a1, $a0
/* B0AACC 8009392C 3C068014 */  lui   $a2, %hi(D_8013EB38) # $a2, 0x8014
/* B0AAD0 80093930 24C6EB38 */  addiu $a2, %lo(D_8013EB38) # addiu $a2, $a2, -0x14c8
/* B0AAD4 80093934 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AAD8 80093938 27A40024 */  addiu $a0, $sp, 0x24
/* B0AADC 8009393C 0C031AB1 */  jal   func_800C6AC4
/* B0AAE0 80093940 2407052D */   li    $a3, 1325
/* B0AAE4 80093944 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AAE8 80093948 3C188012 */  lui   $t8, %hi(D_80126BE0) # $t8, 0x8012
/* B0AAEC 8009394C 27186BE0 */  addiu $t8, %lo(D_80126BE0) # addiu $t8, $t8, 0x6be0
/* B0AAF0 80093950 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AAF4 80093954 3C0FDE00 */  lui   $t7, 0xde00
/* B0AAF8 80093958 3C068014 */  lui   $a2, %hi(D_8013EB44) # $a2, 0x8014
/* B0AAFC 8009395C 246E0008 */  addiu $t6, $v1, 8
/* B0AB00 80093960 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AB04 80093964 24C6EB44 */  addiu $a2, %lo(D_8013EB44) # addiu $a2, $a2, -0x14bc
/* B0AB08 80093968 27A40024 */  addiu $a0, $sp, 0x24
/* B0AB0C 8009396C 24070531 */  li    $a3, 1329
/* B0AB10 80093970 AC780004 */  sw    $t8, 4($v1)
/* B0AB14 80093974 0C031AD5 */  jal   func_800C6B54
/* B0AB18 80093978 AC6F0000 */   sw    $t7, ($v1)
/* B0AB1C 8009397C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AB20 80093980 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AB24 80093984 03E00008 */  jr    $ra
/* B0AB28 80093988 00000000 */   nop   

glabel func_8009398C
/* B0AB2C 8009398C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AB30 80093990 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AB34 80093994 00802825 */  move  $a1, $a0
/* B0AB38 80093998 3C068014 */  lui   $a2, %hi(D_8013EB50) # $a2, 0x8014
/* B0AB3C 8009399C 24C6EB50 */  addiu $a2, %lo(D_8013EB50) # addiu $a2, $a2, -0x14b0
/* B0AB40 800939A0 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AB44 800939A4 27A40024 */  addiu $a0, $sp, 0x24
/* B0AB48 800939A8 0C031AB1 */  jal   func_800C6AC4
/* B0AB4C 800939AC 2407053D */   li    $a3, 1341
/* B0AB50 800939B0 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AB54 800939B4 3C188012 */  lui   $t8, %hi(D_80126C10) # $t8, 0x8012
/* B0AB58 800939B8 27186C10 */  addiu $t8, %lo(D_80126C10) # addiu $t8, $t8, 0x6c10
/* B0AB5C 800939BC 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AB60 800939C0 3C0FDE00 */  lui   $t7, 0xde00
/* B0AB64 800939C4 3C068014 */  lui   $a2, %hi(D_8013EB5C) # $a2, 0x8014
/* B0AB68 800939C8 246E0008 */  addiu $t6, $v1, 8
/* B0AB6C 800939CC ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AB70 800939D0 24C6EB5C */  addiu $a2, %lo(D_8013EB5C) # addiu $a2, $a2, -0x14a4
/* B0AB74 800939D4 27A40024 */  addiu $a0, $sp, 0x24
/* B0AB78 800939D8 24070541 */  li    $a3, 1345
/* B0AB7C 800939DC AC780004 */  sw    $t8, 4($v1)
/* B0AB80 800939E0 0C031AD5 */  jal   func_800C6B54
/* B0AB84 800939E4 AC6F0000 */   sw    $t7, ($v1)
/* B0AB88 800939E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AB8C 800939EC 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AB90 800939F0 03E00008 */  jr    $ra
/* B0AB94 800939F4 00000000 */   nop   

glabel func_800939F8
/* B0AB98 800939F8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AB9C 800939FC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0ABA0 80093A00 00802825 */  move  $a1, $a0
/* B0ABA4 80093A04 3C068014 */  lui   $a2, %hi(D_8013EB68) # $a2, 0x8014
/* B0ABA8 80093A08 24C6EB68 */  addiu $a2, %lo(D_8013EB68) # addiu $a2, $a2, -0x1498
/* B0ABAC 80093A0C AFA50038 */  sw    $a1, 0x38($sp)
/* B0ABB0 80093A10 27A40024 */  addiu $a0, $sp, 0x24
/* B0ABB4 80093A14 0C031AB1 */  jal   func_800C6AC4
/* B0ABB8 80093A18 2407054D */   li    $a3, 1357
/* B0ABBC 80093A1C 8FA50038 */  lw    $a1, 0x38($sp)
/* B0ABC0 80093A20 3C188012 */  lui   $t8, %hi(D_80126C40) # $t8, 0x8012
/* B0ABC4 80093A24 27186C40 */  addiu $t8, %lo(D_80126C40) # addiu $t8, $t8, 0x6c40
/* B0ABC8 80093A28 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0ABCC 80093A2C 3C0FDE00 */  lui   $t7, 0xde00
/* B0ABD0 80093A30 3C068014 */  lui   $a2, %hi(D_8013EB74) # $a2, 0x8014
/* B0ABD4 80093A34 246E0008 */  addiu $t6, $v1, 8
/* B0ABD8 80093A38 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0ABDC 80093A3C 24C6EB74 */  addiu $a2, %lo(D_8013EB74) # addiu $a2, $a2, -0x148c
/* B0ABE0 80093A40 27A40024 */  addiu $a0, $sp, 0x24
/* B0ABE4 80093A44 24070551 */  li    $a3, 1361
/* B0ABE8 80093A48 AC780004 */  sw    $t8, 4($v1)
/* B0ABEC 80093A4C 0C031AD5 */  jal   func_800C6B54
/* B0ABF0 80093A50 AC6F0000 */   sw    $t7, ($v1)
/* B0ABF4 80093A54 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0ABF8 80093A58 27BD0038 */  addiu $sp, $sp, 0x38
/* B0ABFC 80093A5C 03E00008 */  jr    $ra
/* B0AC00 80093A60 00000000 */   nop   

glabel func_80093A64
/* B0AC04 80093A64 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AC08 80093A68 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AC0C 80093A6C 00802825 */  move  $a1, $a0
/* B0AC10 80093A70 3C068014 */  lui   $a2, %hi(D_8013EB80) # $a2, 0x8014
/* B0AC14 80093A74 24C6EB80 */  addiu $a2, %lo(D_8013EB80) # addiu $a2, $a2, -0x1480
/* B0AC18 80093A78 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AC1C 80093A7C 27A40024 */  addiu $a0, $sp, 0x24
/* B0AC20 80093A80 0C031AB1 */  jal   func_800C6AC4
/* B0AC24 80093A84 2407055D */   li    $a3, 1373
/* B0AC28 80093A88 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AC2C 80093A8C 3C188012 */  lui   $t8, %hi(D_80126C70) # $t8, 0x8012
/* B0AC30 80093A90 27186C70 */  addiu $t8, %lo(D_80126C70) # addiu $t8, $t8, 0x6c70
/* B0AC34 80093A94 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AC38 80093A98 3C0FDE00 */  lui   $t7, 0xde00
/* B0AC3C 80093A9C 3C068014 */  lui   $a2, %hi(D_8013EB8C) # $a2, 0x8014
/* B0AC40 80093AA0 246E0008 */  addiu $t6, $v1, 8
/* B0AC44 80093AA4 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AC48 80093AA8 24C6EB8C */  addiu $a2, %lo(D_8013EB8C) # addiu $a2, $a2, -0x1474
/* B0AC4C 80093AAC 27A40024 */  addiu $a0, $sp, 0x24
/* B0AC50 80093AB0 24070561 */  li    $a3, 1377
/* B0AC54 80093AB4 AC780004 */  sw    $t8, 4($v1)
/* B0AC58 80093AB8 0C031AD5 */  jal   func_800C6B54
/* B0AC5C 80093ABC AC6F0000 */   sw    $t7, ($v1)
/* B0AC60 80093AC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AC64 80093AC4 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AC68 80093AC8 03E00008 */  jr    $ra
/* B0AC6C 80093ACC 00000000 */   nop   

glabel func_80093AD0
/* B0AC70 80093AD0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AC74 80093AD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AC78 80093AD8 00802825 */  move  $a1, $a0
/* B0AC7C 80093ADC 3C068014 */  lui   $a2, %hi(D_8013EB98) # $a2, 0x8014
/* B0AC80 80093AE0 24C6EB98 */  addiu $a2, %lo(D_8013EB98) # addiu $a2, $a2, -0x1468
/* B0AC84 80093AE4 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AC88 80093AE8 27A40024 */  addiu $a0, $sp, 0x24
/* B0AC8C 80093AEC 0C031AB1 */  jal   func_800C6AC4
/* B0AC90 80093AF0 2407056D */   li    $a3, 1389
/* B0AC94 80093AF4 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AC98 80093AF8 3C188012 */  lui   $t8, %hi(D_80126CA0) # $t8, 0x8012
/* B0AC9C 80093AFC 27186CA0 */  addiu $t8, %lo(D_80126CA0) # addiu $t8, $t8, 0x6ca0
/* B0ACA0 80093B00 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0ACA4 80093B04 3C0FDE00 */  lui   $t7, 0xde00
/* B0ACA8 80093B08 3C068014 */  lui   $a2, %hi(D_8013EBA4) # $a2, 0x8014
/* B0ACAC 80093B0C 246E0008 */  addiu $t6, $v1, 8
/* B0ACB0 80093B10 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0ACB4 80093B14 24C6EBA4 */  addiu $a2, %lo(D_8013EBA4) # addiu $a2, $a2, -0x145c
/* B0ACB8 80093B18 27A40024 */  addiu $a0, $sp, 0x24
/* B0ACBC 80093B1C 24070571 */  li    $a3, 1393
/* B0ACC0 80093B20 AC780004 */  sw    $t8, 4($v1)
/* B0ACC4 80093B24 0C031AD5 */  jal   func_800C6B54
/* B0ACC8 80093B28 AC6F0000 */   sw    $t7, ($v1)
/* B0ACCC 80093B2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0ACD0 80093B30 27BD0038 */  addiu $sp, $sp, 0x38
/* B0ACD4 80093B34 03E00008 */  jr    $ra
/* B0ACD8 80093B38 00000000 */   nop   

glabel func_80093B3C
/* B0ACDC 80093B3C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0ACE0 80093B40 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0ACE4 80093B44 00802825 */  move  $a1, $a0
/* B0ACE8 80093B48 3C068014 */  lui   $a2, %hi(D_8013EBB0) # $a2, 0x8014
/* B0ACEC 80093B4C 24C6EBB0 */  addiu $a2, %lo(D_8013EBB0) # addiu $a2, $a2, -0x1450
/* B0ACF0 80093B50 AFA50038 */  sw    $a1, 0x38($sp)
/* B0ACF4 80093B54 27A40024 */  addiu $a0, $sp, 0x24
/* B0ACF8 80093B58 0C031AB1 */  jal   func_800C6AC4
/* B0ACFC 80093B5C 2407057D */   li    $a3, 1405
/* B0AD00 80093B60 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AD04 80093B64 3C188012 */  lui   $t8, %hi(D_80126CD0) # $t8, 0x8012
/* B0AD08 80093B68 27186CD0 */  addiu $t8, %lo(D_80126CD0) # addiu $t8, $t8, 0x6cd0
/* B0AD0C 80093B6C 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0AD10 80093B70 3C0FDE00 */  lui   $t7, 0xde00
/* B0AD14 80093B74 3C068014 */  lui   $a2, %hi(D_8013EBBC) # $a2, 0x8014
/* B0AD18 80093B78 246E0008 */  addiu $t6, $v1, 8
/* B0AD1C 80093B7C ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0AD20 80093B80 24C6EBBC */  addiu $a2, %lo(D_8013EBBC) # addiu $a2, $a2, -0x1444
/* B0AD24 80093B84 27A40024 */  addiu $a0, $sp, 0x24
/* B0AD28 80093B88 24070581 */  li    $a3, 1409
/* B0AD2C 80093B8C AC780004 */  sw    $t8, 4($v1)
/* B0AD30 80093B90 0C031AD5 */  jal   func_800C6B54
/* B0AD34 80093B94 AC6F0000 */   sw    $t7, ($v1)
/* B0AD38 80093B98 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AD3C 80093B9C 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AD40 80093BA0 03E00008 */  jr    $ra
/* B0AD44 80093BA4 00000000 */   nop   

glabel func_80093BA8
/* B0AD48 80093BA8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AD4C 80093BAC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AD50 80093BB0 00802825 */  move  $a1, $a0
/* B0AD54 80093BB4 3C068014 */  lui   $a2, %hi(D_8013EBC8) # $a2, 0x8014
/* B0AD58 80093BB8 24C6EBC8 */  addiu $a2, %lo(D_8013EBC8) # addiu $a2, $a2, -0x1438
/* B0AD5C 80093BBC AFA50038 */  sw    $a1, 0x38($sp)
/* B0AD60 80093BC0 27A40024 */  addiu $a0, $sp, 0x24
/* B0AD64 80093BC4 0C031AB1 */  jal   func_800C6AC4
/* B0AD68 80093BC8 2407058D */   li    $a3, 1421
/* B0AD6C 80093BCC 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AD70 80093BD0 3C188012 */  lui   $t8, %hi(D_80126760) # $t8, 0x8012
/* B0AD74 80093BD4 27186760 */  addiu $t8, %lo(D_80126760) # addiu $t8, $t8, 0x6760
/* B0AD78 80093BD8 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AD7C 80093BDC 3C0FDE00 */  lui   $t7, 0xde00
/* B0AD80 80093BE0 3C068014 */  lui   $a2, %hi(D_8013EBD4) # $a2, 0x8014
/* B0AD84 80093BE4 246E0008 */  addiu $t6, $v1, 8
/* B0AD88 80093BE8 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AD8C 80093BEC 24C6EBD4 */  addiu $a2, %lo(D_8013EBD4) # addiu $a2, $a2, -0x142c
/* B0AD90 80093BF0 27A40024 */  addiu $a0, $sp, 0x24
/* B0AD94 80093BF4 24070591 */  li    $a3, 1425
/* B0AD98 80093BF8 AC780004 */  sw    $t8, 4($v1)
/* B0AD9C 80093BFC 0C031AD5 */  jal   func_800C6B54
/* B0ADA0 80093C00 AC6F0000 */   sw    $t7, ($v1)
/* B0ADA4 80093C04 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0ADA8 80093C08 27BD0038 */  addiu $sp, $sp, 0x38
/* B0ADAC 80093C0C 03E00008 */  jr    $ra
/* B0ADB0 80093C10 00000000 */   nop   

glabel func_80093C14
/* B0ADB4 80093C14 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0ADB8 80093C18 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0ADBC 80093C1C 00802825 */  move  $a1, $a0
/* B0ADC0 80093C20 3C068014 */  lui   $a2, %hi(D_8013EBE0) # $a2, 0x8014
/* B0ADC4 80093C24 24C6EBE0 */  addiu $a2, %lo(D_8013EBE0) # addiu $a2, $a2, -0x1420
/* B0ADC8 80093C28 AFA50038 */  sw    $a1, 0x38($sp)
/* B0ADCC 80093C2C 27A40024 */  addiu $a0, $sp, 0x24
/* B0ADD0 80093C30 0C031AB1 */  jal   func_800C6AC4
/* B0ADD4 80093C34 2407059F */   li    $a3, 1439
/* B0ADD8 80093C38 8FA50038 */  lw    $a1, 0x38($sp)
/* B0ADDC 80093C3C 3C188012 */  lui   $t8, %hi(D_80126730) # $t8, 0x8012
/* B0ADE0 80093C40 27186730 */  addiu $t8, %lo(D_80126730) # addiu $t8, $t8, 0x6730
/* B0ADE4 80093C44 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0ADE8 80093C48 3C0FDE00 */  lui   $t7, 0xde00
/* B0ADEC 80093C4C 3C068014 */  lui   $a2, %hi(D_8013EBEC) # $a2, 0x8014
/* B0ADF0 80093C50 246E0008 */  addiu $t6, $v1, 8
/* B0ADF4 80093C54 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0ADF8 80093C58 24C6EBEC */  addiu $a2, %lo(D_8013EBEC) # addiu $a2, $a2, -0x1414
/* B0ADFC 80093C5C 27A40024 */  addiu $a0, $sp, 0x24
/* B0AE00 80093C60 240705A3 */  li    $a3, 1443
/* B0AE04 80093C64 AC780004 */  sw    $t8, 4($v1)
/* B0AE08 80093C68 0C031AD5 */  jal   func_800C6B54
/* B0AE0C 80093C6C AC6F0000 */   sw    $t7, ($v1)
/* B0AE10 80093C70 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AE14 80093C74 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AE18 80093C78 03E00008 */  jr    $ra
/* B0AE1C 80093C7C 00000000 */   nop   

glabel func_80093C80
/* B0AE20 80093C80 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AE24 80093C84 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AE28 80093C88 AFA40038 */  sw    $a0, 0x38($sp)
/* B0AE2C 80093C8C 8C850000 */  lw    $a1, ($a0)
/* B0AE30 80093C90 00A02025 */  move  $a0, $a1
/* B0AE34 80093C94 0C024F46 */  jal   func_80093D18
/* B0AE38 80093C98 AFA50034 */   sw    $a1, 0x34($sp)
/* B0AE3C 80093C9C 8FAF0038 */  lw    $t7, 0x38($sp)
/* B0AE40 80093CA0 3C180001 */  lui   $t8, 1
/* B0AE44 80093CA4 24010003 */  li    $at, 3
/* B0AE48 80093CA8 030FC021 */  addu  $t8, $t8, $t7
/* B0AE4C 80093CAC 93181CBF */  lbu   $t8, 0x1cbf($t8)
/* B0AE50 80093CB0 8FA50034 */  lw    $a1, 0x34($sp)
/* B0AE54 80093CB4 27A40020 */  addiu $a0, $sp, 0x20
/* B0AE58 80093CB8 17010013 */  bne   $t8, $at, .L80093D08
/* B0AE5C 80093CBC 3C068014 */   lui   $a2, %hi(D_8013EBF8) # $a2, 0x8014
/* B0AE60 80093CC0 24C6EBF8 */  addiu $a2, %lo(D_8013EBF8) # addiu $a2, $a2, -0x1408
/* B0AE64 80093CC4 240705B4 */  li    $a3, 1460
/* B0AE68 80093CC8 0C031AB1 */  jal   func_800C6AC4
/* B0AE6C 80093CCC AFA50034 */   sw    $a1, 0x34($sp)
/* B0AE70 80093CD0 8FA50034 */  lw    $a1, 0x34($sp)
/* B0AE74 80093CD4 3C08E300 */  lui   $t0, (0xE3001801 >> 16) # lui $t0, 0xe300
/* B0AE78 80093CD8 35081801 */  ori   $t0, (0xE3001801 & 0xFFFF) # ori $t0, $t0, 0x1801
/* B0AE7C 80093CDC 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AE80 80093CE0 240900C0 */  li    $t1, 192
/* B0AE84 80093CE4 3C068014 */  lui   $a2, %hi(D_8013EC04) # $a2, 0x8014
/* B0AE88 80093CE8 24790008 */  addiu $t9, $v1, 8
/* B0AE8C 80093CEC ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0AE90 80093CF0 24C6EC04 */  addiu $a2, %lo(D_8013EC04) # addiu $a2, $a2, -0x13fc
/* B0AE94 80093CF4 27A40020 */  addiu $a0, $sp, 0x20
/* B0AE98 80093CF8 240705B6 */  li    $a3, 1462
/* B0AE9C 80093CFC AC690004 */  sw    $t1, 4($v1)
/* B0AEA0 80093D00 0C031AD5 */  jal   func_800C6B54
/* B0AEA4 80093D04 AC680000 */   sw    $t0, ($v1)
.L80093D08:
/* B0AEA8 80093D08 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AEAC 80093D0C 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AEB0 80093D10 03E00008 */  jr    $ra
/* B0AEB4 80093D14 00000000 */   nop   

glabel func_80093D18
/* B0AEB8 80093D18 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AEBC 80093D1C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AEC0 80093D20 00802825 */  move  $a1, $a0
/* B0AEC4 80093D24 3C068014 */  lui   $a2, %hi(D_8013EC10) # $a2, 0x8014
/* B0AEC8 80093D28 24C6EC10 */  addiu $a2, %lo(D_8013EC10) # addiu $a2, $a2, -0x13f0
/* B0AECC 80093D2C AFA50038 */  sw    $a1, 0x38($sp)
/* B0AED0 80093D30 27A40024 */  addiu $a0, $sp, 0x24
/* B0AED4 80093D34 0C031AB1 */  jal   func_800C6AC4
/* B0AED8 80093D38 240705C3 */   li    $a3, 1475
/* B0AEDC 80093D3C 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AEE0 80093D40 3C188012 */  lui   $t8, %hi(D_80126730) # $t8, 0x8012
/* B0AEE4 80093D44 27186730 */  addiu $t8, %lo(D_80126730) # addiu $t8, $t8, 0x6730
/* B0AEE8 80093D48 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AEEC 80093D4C 3C0FDE00 */  lui   $t7, 0xde00
/* B0AEF0 80093D50 3C068014 */  lui   $a2, %hi(D_8013EC1C) # $a2, 0x8014
/* B0AEF4 80093D54 246E0008 */  addiu $t6, $v1, 8
/* B0AEF8 80093D58 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AEFC 80093D5C 24C6EC1C */  addiu $a2, %lo(D_8013EC1C) # addiu $a2, $a2, -0x13e4
/* B0AF00 80093D60 27A40024 */  addiu $a0, $sp, 0x24
/* B0AF04 80093D64 240705C7 */  li    $a3, 1479
/* B0AF08 80093D68 AC780004 */  sw    $t8, 4($v1)
/* B0AF0C 80093D6C 0C031AD5 */  jal   func_800C6B54
/* B0AF10 80093D70 AC6F0000 */   sw    $t7, ($v1)
/* B0AF14 80093D74 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AF18 80093D78 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AF1C 80093D7C 03E00008 */  jr    $ra
/* B0AF20 80093D80 00000000 */   nop   

glabel func_80093D84
/* B0AF24 80093D84 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AF28 80093D88 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AF2C 80093D8C 00802825 */  move  $a1, $a0
/* B0AF30 80093D90 3C068014 */  lui   $a2, %hi(D_8013EC28) # $a2, 0x8014
/* B0AF34 80093D94 24C6EC28 */  addiu $a2, %lo(D_8013EC28) # addiu $a2, $a2, -0x13d8
/* B0AF38 80093D98 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AF3C 80093D9C 27A40024 */  addiu $a0, $sp, 0x24
/* B0AF40 80093DA0 0C031AB1 */  jal   func_800C6AC4
/* B0AF44 80093DA4 240705D3 */   li    $a3, 1491
/* B0AF48 80093DA8 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AF4C 80093DAC 3C188012 */  lui   $t8, %hi(D_80126730) # $t8, 0x8012
/* B0AF50 80093DB0 27186730 */  addiu $t8, %lo(D_80126730) # addiu $t8, $t8, 0x6730
/* B0AF54 80093DB4 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0AF58 80093DB8 3C0FDE00 */  lui   $t7, 0xde00
/* B0AF5C 80093DBC 3C068014 */  lui   $a2, %hi(D_8013EC34) # $a2, 0x8014
/* B0AF60 80093DC0 246E0008 */  addiu $t6, $v1, 8
/* B0AF64 80093DC4 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0AF68 80093DC8 24C6EC34 */  addiu $a2, %lo(D_8013EC34) # addiu $a2, $a2, -0x13cc
/* B0AF6C 80093DCC 27A40024 */  addiu $a0, $sp, 0x24
/* B0AF70 80093DD0 240705D7 */  li    $a3, 1495
/* B0AF74 80093DD4 AC780004 */  sw    $t8, 4($v1)
/* B0AF78 80093DD8 0C031AD5 */  jal   func_800C6B54
/* B0AF7C 80093DDC AC6F0000 */   sw    $t7, ($v1)
/* B0AF80 80093DE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AF84 80093DE4 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AF88 80093DE8 03E00008 */  jr    $ra
/* B0AF8C 80093DEC 00000000 */   nop   

glabel func_80093DF0
/* B0AF90 80093DF0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AF94 80093DF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AF98 80093DF8 00802825 */  move  $a1, $a0
/* B0AF9C 80093DFC 3C068014 */  lui   $a2, %hi(D_8013EC40) # $a2, 0x8014
/* B0AFA0 80093E00 24C6EC40 */  addiu $a2, %lo(D_8013EC40) # addiu $a2, $a2, -0x13c0
/* B0AFA4 80093E04 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AFA8 80093E08 27A40024 */  addiu $a0, $sp, 0x24
/* B0AFAC 80093E0C 0C031AB1 */  jal   func_800C6AC4
/* B0AFB0 80093E10 240705E3 */   li    $a3, 1507
/* B0AFB4 80093E14 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AFB8 80093E18 3C188012 */  lui   $t8, %hi(D_80126850) # $t8, 0x8012
/* B0AFBC 80093E1C 27186850 */  addiu $t8, %lo(D_80126850) # addiu $t8, $t8, 0x6850
/* B0AFC0 80093E20 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AFC4 80093E24 3C0FDE00 */  lui   $t7, 0xde00
/* B0AFC8 80093E28 3C068014 */  lui   $a2, %hi(D_8013EC4C) # $a2, 0x8014
/* B0AFCC 80093E2C 246E0008 */  addiu $t6, $v1, 8
/* B0AFD0 80093E30 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AFD4 80093E34 24C6EC4C */  addiu $a2, %lo(D_8013EC4C) # addiu $a2, $a2, -0x13b4
/* B0AFD8 80093E38 27A40024 */  addiu $a0, $sp, 0x24
/* B0AFDC 80093E3C 240705E7 */  li    $a3, 1511
/* B0AFE0 80093E40 AC780004 */  sw    $t8, 4($v1)
/* B0AFE4 80093E44 0C031AD5 */  jal   func_800C6B54
/* B0AFE8 80093E48 AC6F0000 */   sw    $t7, ($v1)
/* B0AFEC 80093E4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AFF0 80093E50 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AFF4 80093E54 03E00008 */  jr    $ra
/* B0AFF8 80093E58 00000000 */   nop   

glabel func_80093E5C
/* B0AFFC 80093E5C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B000 80093E60 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B004 80093E64 00802825 */  move  $a1, $a0
/* B0B008 80093E68 3C068014 */  lui   $a2, %hi(D_8013EC58) # $a2, 0x8014
/* B0B00C 80093E6C 24C6EC58 */  addiu $a2, %lo(D_8013EC58) # addiu $a2, $a2, -0x13a8
/* B0B010 80093E70 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B014 80093E74 27A40024 */  addiu $a0, $sp, 0x24
/* B0B018 80093E78 0C031AB1 */  jal   func_800C6AC4
/* B0B01C 80093E7C 240705F3 */   li    $a3, 1523
/* B0B020 80093E80 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B024 80093E84 3C188012 */  lui   $t8, %hi(D_80126880) # $t8, 0x8012
/* B0B028 80093E88 27186880 */  addiu $t8, %lo(D_80126880) # addiu $t8, $t8, 0x6880
/* B0B02C 80093E8C 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B030 80093E90 3C0FDE00 */  lui   $t7, 0xde00
/* B0B034 80093E94 3C068014 */  lui   $a2, %hi(D_8013EC64) # $a2, 0x8014
/* B0B038 80093E98 246E0008 */  addiu $t6, $v1, 8
/* B0B03C 80093E9C ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B040 80093EA0 24C6EC64 */  addiu $a2, %lo(D_8013EC64) # addiu $a2, $a2, -0x139c
/* B0B044 80093EA4 27A40024 */  addiu $a0, $sp, 0x24
/* B0B048 80093EA8 240705F7 */  li    $a3, 1527
/* B0B04C 80093EAC AC780004 */  sw    $t8, 4($v1)
/* B0B050 80093EB0 0C031AD5 */  jal   func_800C6B54
/* B0B054 80093EB4 AC6F0000 */   sw    $t7, ($v1)
/* B0B058 80093EB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B05C 80093EBC 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B060 80093EC0 03E00008 */  jr    $ra
/* B0B064 80093EC4 00000000 */   nop   

glabel func_80093EC8
/* B0B068 80093EC8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B06C 80093ECC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B070 80093ED0 00802825 */  move  $a1, $a0
/* B0B074 80093ED4 3C068014 */  lui   $a2, %hi(D_8013EC70) # $a2, 0x8014
/* B0B078 80093ED8 24C6EC70 */  addiu $a2, %lo(D_8013EC70) # addiu $a2, $a2, -0x1390
/* B0B07C 80093EDC AFA50038 */  sw    $a1, 0x38($sp)
/* B0B080 80093EE0 27A40024 */  addiu $a0, $sp, 0x24
/* B0B084 80093EE4 0C031AB1 */  jal   func_800C6AC4
/* B0B088 80093EE8 24070603 */   li    $a3, 1539
/* B0B08C 80093EEC 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B090 80093EF0 3C188012 */  lui   $t8, %hi(D_801268B0) # $t8, 0x8012
/* B0B094 80093EF4 271868B0 */  addiu $t8, %lo(D_801268B0) # addiu $t8, $t8, 0x68b0
/* B0B098 80093EF8 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B09C 80093EFC 3C0FDE00 */  lui   $t7, 0xde00
/* B0B0A0 80093F00 3C068014 */  lui   $a2, %hi(D_8013EC7C) # $a2, 0x8014
/* B0B0A4 80093F04 246E0008 */  addiu $t6, $v1, 8
/* B0B0A8 80093F08 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B0AC 80093F0C 24C6EC7C */  addiu $a2, %lo(D_8013EC7C) # addiu $a2, $a2, -0x1384
/* B0B0B0 80093F10 27A40024 */  addiu $a0, $sp, 0x24
/* B0B0B4 80093F14 24070607 */  li    $a3, 1543
/* B0B0B8 80093F18 AC780004 */  sw    $t8, 4($v1)
/* B0B0BC 80093F1C 0C031AD5 */  jal   func_800C6B54
/* B0B0C0 80093F20 AC6F0000 */   sw    $t7, ($v1)
/* B0B0C4 80093F24 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B0C8 80093F28 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B0CC 80093F2C 03E00008 */  jr    $ra
/* B0B0D0 80093F30 00000000 */   nop   

glabel func_80093F34
/* B0B0D4 80093F34 00801025 */  move  $v0, $a0
/* B0B0D8 80093F38 3C0F8012 */  lui   $t7, %hi(D_80126E80) # $t7, 0x8012
/* B0B0DC 80093F3C 25EF6E80 */  addiu $t7, %lo(D_80126E80) # addiu $t7, $t7, 0x6e80
/* B0B0E0 80093F40 3C0EDE00 */  lui   $t6, 0xde00
/* B0B0E4 80093F44 AC4E0000 */  sw    $t6, ($v0)
/* B0B0E8 80093F48 AC4F0004 */  sw    $t7, 4($v0)
/* B0B0EC 80093F4C 24840008 */  addiu $a0, $a0, 8
/* B0B0F0 80093F50 03E00008 */  jr    $ra
/* B0B0F4 80093F54 00801025 */   move  $v0, $a0

glabel func_80093F58
/* B0B0F8 80093F58 00801025 */  move  $v0, $a0
/* B0B0FC 80093F5C 3C0F8012 */  lui   $t7, %hi(D_801268E0) # $t7, 0x8012
/* B0B100 80093F60 25EF68E0 */  addiu $t7, %lo(D_801268E0) # addiu $t7, $t7, 0x68e0
/* B0B104 80093F64 3C0EDE00 */  lui   $t6, 0xde00
/* B0B108 80093F68 AC4E0000 */  sw    $t6, ($v0)
/* B0B10C 80093F6C AC4F0004 */  sw    $t7, 4($v0)
/* B0B110 80093F70 24840008 */  addiu $a0, $a0, 8
/* B0B114 80093F74 03E00008 */  jr    $ra
/* B0B118 80093F78 00801025 */   move  $v0, $a0

glabel func_80093F7C
/* B0B11C 80093F7C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B0B120 80093F80 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B124 80093F84 AFA40030 */  sw    $a0, 0x30($sp)
/* B0B128 80093F88 3C068014 */  lui   $a2, %hi(D_8013EC88) # $a2, 0x8014
/* B0B12C 80093F8C 24C6EC88 */  addiu $a2, %lo(D_8013EC88) # addiu $a2, $a2, -0x1378
/* B0B130 80093F90 8FA50030 */  lw    $a1, 0x30($sp)
/* B0B134 80093F94 27A4001C */  addiu $a0, $sp, 0x1c
/* B0B138 80093F98 0C031AB1 */  jal   func_800C6AC4
/* B0B13C 80093F9C 24070621 */   li    $a3, 1569
/* B0B140 80093FA0 8FAE0030 */  lw    $t6, 0x30($sp)
/* B0B144 80093FA4 0C024FD6 */  jal   func_80093F58
/* B0B148 80093FA8 8DC402C0 */   lw    $a0, 0x2c0($t6)
/* B0B14C 80093FAC 8FA50030 */  lw    $a1, 0x30($sp)
/* B0B150 80093FB0 3C068014 */  lui   $a2, %hi(D_8013EC94) # $a2, 0x8014
/* B0B154 80093FB4 24C6EC94 */  addiu $a2, %lo(D_8013EC94) # addiu $a2, $a2, -0x136c
/* B0B158 80093FB8 27A4001C */  addiu $a0, $sp, 0x1c
/* B0B15C 80093FBC 24070625 */  li    $a3, 1573
/* B0B160 80093FC0 0C031AD5 */  jal   func_800C6B54
/* B0B164 80093FC4 ACA202C0 */   sw    $v0, 0x2c0($a1)
/* B0B168 80093FC8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B16C 80093FCC 27BD0030 */  addiu $sp, $sp, 0x30
/* B0B170 80093FD0 03E00008 */  jr    $ra
/* B0B174 80093FD4 00000000 */   nop   

glabel func_80093FD8
/* B0B178 80093FD8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B17C 80093FDC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B180 80093FE0 00802825 */  move  $a1, $a0
/* B0B184 80093FE4 3C068014 */  lui   $a2, %hi(D_8013ECA0) # $a2, 0x8014
/* B0B188 80093FE8 24C6ECA0 */  addiu $a2, %lo(D_8013ECA0) # addiu $a2, $a2, -0x1360
/* B0B18C 80093FEC AFA50038 */  sw    $a1, 0x38($sp)
/* B0B190 80093FF0 27A40024 */  addiu $a0, $sp, 0x24
/* B0B194 80093FF4 0C031AB1 */  jal   func_800C6AC4
/* B0B198 80093FF8 24070631 */   li    $a3, 1585
/* B0B19C 80093FFC 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B1A0 80094000 3C188012 */  lui   $t8, %hi(D_80126910) # $t8, 0x8012
/* B0B1A4 80094004 27186910 */  addiu $t8, %lo(D_80126910) # addiu $t8, $t8, 0x6910
/* B0B1A8 80094008 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B1AC 8009400C 3C0FDE00 */  lui   $t7, 0xde00
/* B0B1B0 80094010 3C068014 */  lui   $a2, %hi(D_8013ECAC) # $a2, 0x8014
/* B0B1B4 80094014 246E0008 */  addiu $t6, $v1, 8
/* B0B1B8 80094018 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B1BC 8009401C 24C6ECAC */  addiu $a2, %lo(D_8013ECAC) # addiu $a2, $a2, -0x1354
/* B0B1C0 80094020 27A40024 */  addiu $a0, $sp, 0x24
/* B0B1C4 80094024 24070635 */  li    $a3, 1589
/* B0B1C8 80094028 AC780004 */  sw    $t8, 4($v1)
/* B0B1CC 8009402C 0C031AD5 */  jal   func_800C6B54
/* B0B1D0 80094030 AC6F0000 */   sw    $t7, ($v1)
/* B0B1D4 80094034 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B1D8 80094038 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B1DC 8009403C 03E00008 */  jr    $ra
/* B0B1E0 80094040 00000000 */   nop   

glabel func_80094044
/* B0B1E4 80094044 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B1E8 80094048 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B1EC 8009404C 00802825 */  move  $a1, $a0
/* B0B1F0 80094050 3C068014 */  lui   $a2, %hi(D_8013ECB8) # $a2, 0x8014
/* B0B1F4 80094054 24C6ECB8 */  addiu $a2, %lo(D_8013ECB8) # addiu $a2, $a2, -0x1348
/* B0B1F8 80094058 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B1FC 8009405C 27A40024 */  addiu $a0, $sp, 0x24
/* B0B200 80094060 0C031AB1 */  jal   func_800C6AC4
/* B0B204 80094064 24070641 */   li    $a3, 1601
/* B0B208 80094068 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B20C 8009406C 3C188012 */  lui   $t8, %hi(D_80126AC0) # $t8, 0x8012
/* B0B210 80094070 27186AC0 */  addiu $t8, %lo(D_80126AC0) # addiu $t8, $t8, 0x6ac0
/* B0B214 80094074 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0B218 80094078 3C0FDE00 */  lui   $t7, 0xde00
/* B0B21C 8009407C 3C068014 */  lui   $a2, %hi(D_8013ECC4) # $a2, 0x8014
/* B0B220 80094080 246E0008 */  addiu $t6, $v1, 8
/* B0B224 80094084 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0B228 80094088 24C6ECC4 */  addiu $a2, %lo(D_8013ECC4) # addiu $a2, $a2, -0x133c
/* B0B22C 8009408C 27A40024 */  addiu $a0, $sp, 0x24
/* B0B230 80094090 24070645 */  li    $a3, 1605
/* B0B234 80094094 AC780004 */  sw    $t8, 4($v1)
/* B0B238 80094098 0C031AD5 */  jal   func_800C6B54
/* B0B23C 8009409C AC6F0000 */   sw    $t7, ($v1)
/* B0B240 800940A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B244 800940A4 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B248 800940A8 03E00008 */  jr    $ra
/* B0B24C 800940AC 00000000 */   nop   

glabel func_800940B0
/* B0B250 800940B0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B254 800940B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B258 800940B8 00802825 */  move  $a1, $a0
/* B0B25C 800940BC 3C068014 */  lui   $a2, %hi(D_8013ECD0) # $a2, 0x8014
/* B0B260 800940C0 24C6ECD0 */  addiu $a2, %lo(D_8013ECD0) # addiu $a2, $a2, -0x1330
/* B0B264 800940C4 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B268 800940C8 27A40024 */  addiu $a0, $sp, 0x24
/* B0B26C 800940CC 0C031AB1 */  jal   func_800C6AC4
/* B0B270 800940D0 24070651 */   li    $a3, 1617
/* B0B274 800940D4 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B278 800940D8 3C188012 */  lui   $t8, %hi(D_80126940) # $t8, 0x8012
/* B0B27C 800940DC 27186940 */  addiu $t8, %lo(D_80126940) # addiu $t8, $t8, 0x6940
/* B0B280 800940E0 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B284 800940E4 3C0FDE00 */  lui   $t7, 0xde00
/* B0B288 800940E8 3C068014 */  lui   $a2, %hi(D_8013ECDC) # $a2, 0x8014
/* B0B28C 800940EC 246E0008 */  addiu $t6, $v1, 8
/* B0B290 800940F0 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B294 800940F4 24C6ECDC */  addiu $a2, %lo(D_8013ECDC) # addiu $a2, $a2, -0x1324
/* B0B298 800940F8 27A40024 */  addiu $a0, $sp, 0x24
/* B0B29C 800940FC 24070655 */  li    $a3, 1621
/* B0B2A0 80094100 AC780004 */  sw    $t8, 4($v1)
/* B0B2A4 80094104 0C031AD5 */  jal   func_800C6B54
/* B0B2A8 80094108 AC6F0000 */   sw    $t7, ($v1)
/* B0B2AC 8009410C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B2B0 80094110 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B2B4 80094114 03E00008 */  jr    $ra
/* B0B2B8 80094118 00000000 */   nop   

glabel func_8009411C
/* B0B2BC 8009411C 00801025 */  move  $v0, $a0
/* B0B2C0 80094120 3C0F8012 */  lui   $t7, %hi(D_801267C0) # $t7, 0x8012
/* B0B2C4 80094124 25EF67C0 */  addiu $t7, %lo(D_801267C0) # addiu $t7, $t7, 0x67c0
/* B0B2C8 80094128 3C0EDE00 */  lui   $t6, 0xde00
/* B0B2CC 8009412C AC4E0000 */  sw    $t6, ($v0)
/* B0B2D0 80094130 AC4F0004 */  sw    $t7, 4($v0)
/* B0B2D4 80094134 24840008 */  addiu $a0, $a0, 8
/* B0B2D8 80094138 03E00008 */  jr    $ra
/* B0B2DC 8009413C 00801025 */   move  $v0, $a0

glabel func_80094140
/* B0B2E0 80094140 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B2E4 80094144 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B2E8 80094148 00802825 */  move  $a1, $a0
/* B0B2EC 8009414C 3C068014 */  lui   $a2, %hi(D_8013ECE8) # $a2, 0x8014
/* B0B2F0 80094150 24C6ECE8 */  addiu $a2, %lo(D_8013ECE8) # addiu $a2, $a2, -0x1318
/* B0B2F4 80094154 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B2F8 80094158 27A40024 */  addiu $a0, $sp, 0x24
/* B0B2FC 8009415C 0C031AB1 */  jal   func_800C6AC4
/* B0B300 80094160 24070668 */   li    $a3, 1640
/* B0B304 80094164 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B308 80094168 3C188012 */  lui   $t8, %hi(D_801267C0) # $t8, 0x8012
/* B0B30C 8009416C 271867C0 */  addiu $t8, %lo(D_801267C0) # addiu $t8, $t8, 0x67c0
/* B0B310 80094170 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B314 80094174 3C0FDE00 */  lui   $t7, 0xde00
/* B0B318 80094178 3C068014 */  lui   $a2, %hi(D_8013ECF4) # $a2, 0x8014
/* B0B31C 8009417C 246E0008 */  addiu $t6, $v1, 8
/* B0B320 80094180 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B324 80094184 24C6ECF4 */  addiu $a2, %lo(D_8013ECF4) # addiu $a2, $a2, -0x130c
/* B0B328 80094188 27A40024 */  addiu $a0, $sp, 0x24
/* B0B32C 8009418C 2407066C */  li    $a3, 1644
/* B0B330 80094190 AC780004 */  sw    $t8, 4($v1)
/* B0B334 80094194 0C031AD5 */  jal   func_800C6B54
/* B0B338 80094198 AC6F0000 */   sw    $t7, ($v1)
/* B0B33C 8009419C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B340 800941A0 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B344 800941A4 03E00008 */  jr    $ra
/* B0B348 800941A8 00000000 */   nop   

glabel func_800941AC
/* B0B34C 800941AC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B350 800941B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B354 800941B4 00802825 */  move  $a1, $a0
/* B0B358 800941B8 3C068014 */  lui   $a2, %hi(D_8013ED00) # $a2, 0x8014
/* B0B35C 800941BC 24C6ED00 */  addiu $a2, %lo(D_8013ED00) # addiu $a2, $a2, -0x1300
/* B0B360 800941C0 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B364 800941C4 27A40024 */  addiu $a0, $sp, 0x24
/* B0B368 800941C8 0C031AB1 */  jal   func_800C6AC4
/* B0B36C 800941CC 24070673 */   li    $a3, 1651
/* B0B370 800941D0 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B374 800941D4 3C188012 */  lui   $t8, %hi(D_80126A90) # $t8, 0x8012
/* B0B378 800941D8 27186A90 */  addiu $t8, %lo(D_80126A90) # addiu $t8, $t8, 0x6a90
/* B0B37C 800941DC 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B380 800941E0 3C0FDE00 */  lui   $t7, 0xde00
/* B0B384 800941E4 3C068014 */  lui   $a2, %hi(D_8013ED0C) # $a2, 0x8014
/* B0B388 800941E8 246E0008 */  addiu $t6, $v1, 8
/* B0B38C 800941EC ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B390 800941F0 24C6ED0C */  addiu $a2, %lo(D_8013ED0C) # addiu $a2, $a2, -0x12f4
/* B0B394 800941F4 27A40024 */  addiu $a0, $sp, 0x24
/* B0B398 800941F8 24070677 */  li    $a3, 1655
/* B0B39C 800941FC AC780004 */  sw    $t8, 4($v1)
/* B0B3A0 80094200 0C031AD5 */  jal   func_800C6B54
/* B0B3A4 80094204 AC6F0000 */   sw    $t7, ($v1)
/* B0B3A8 80094208 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B3AC 8009420C 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B3B0 80094210 03E00008 */  jr    $ra
/* B0B3B4 80094214 00000000 */   nop   

glabel func_80094218
/* B0B3B8 80094218 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B3BC 8009421C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B3C0 80094220 00802825 */  move  $a1, $a0
/* B0B3C4 80094224 3C068014 */  lui   $a2, %hi(D_8013ED18) # $a2, 0x8014
/* B0B3C8 80094228 24C6ED18 */  addiu $a2, %lo(D_8013ED18) # addiu $a2, $a2, -0x12e8
/* B0B3CC 8009422C AFA50038 */  sw    $a1, 0x38($sp)
/* B0B3D0 80094230 27A40024 */  addiu $a0, $sp, 0x24
/* B0B3D4 80094234 0C031AB1 */  jal   func_800C6AC4
/* B0B3D8 80094238 24070686 */   li    $a3, 1670
/* B0B3DC 8009423C 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B3E0 80094240 3C188012 */  lui   $t8, %hi(D_80126AF0) # $t8, 0x8012
/* B0B3E4 80094244 27186AF0 */  addiu $t8, %lo(D_80126AF0) # addiu $t8, $t8, 0x6af0
/* B0B3E8 80094248 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B3EC 8009424C 3C0FDE00 */  lui   $t7, 0xde00
/* B0B3F0 80094250 3C068014 */  lui   $a2, %hi(D_8013ED24) # $a2, 0x8014
/* B0B3F4 80094254 246E0008 */  addiu $t6, $v1, 8
/* B0B3F8 80094258 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B3FC 8009425C 24C6ED24 */  addiu $a2, %lo(D_8013ED24) # addiu $a2, $a2, -0x12dc
/* B0B400 80094260 27A40024 */  addiu $a0, $sp, 0x24
/* B0B404 80094264 2407068A */  li    $a3, 1674
/* B0B408 80094268 AC780004 */  sw    $t8, 4($v1)
/* B0B40C 8009426C 0C031AD5 */  jal   func_800C6B54
/* B0B410 80094270 AC6F0000 */   sw    $t7, ($v1)
/* B0B414 80094274 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B418 80094278 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B41C 8009427C 03E00008 */  jr    $ra
/* B0B420 80094280 00000000 */   nop   

glabel func_80094284
/* B0B424 80094284 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B428 80094288 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B42C 8009428C 00802825 */  move  $a1, $a0
/* B0B430 80094290 3C068014 */  lui   $a2, %hi(D_8013ED30) # $a2, 0x8014
/* B0B434 80094294 24C6ED30 */  addiu $a2, %lo(D_8013ED30) # addiu $a2, $a2, -0x12d0
/* B0B438 80094298 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B43C 8009429C 27A40024 */  addiu $a0, $sp, 0x24
/* B0B440 800942A0 0C031AB1 */  jal   func_800C6AC4
/* B0B444 800942A4 24070691 */   li    $a3, 1681
/* B0B448 800942A8 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B44C 800942AC 3C188012 */  lui   $t8, %hi(D_80126B20) # $t8, 0x8012
/* B0B450 800942B0 27186B20 */  addiu $t8, %lo(D_80126B20) # addiu $t8, $t8, 0x6b20
/* B0B454 800942B4 8CA302B0 */  lw    $v1, 0x2b0($a1)
/* B0B458 800942B8 3C0FDE00 */  lui   $t7, 0xde00
/* B0B45C 800942BC 3C068014 */  lui   $a2, %hi(D_8013ED3C) # $a2, 0x8014
/* B0B460 800942C0 246E0008 */  addiu $t6, $v1, 8
/* B0B464 800942C4 ACAE02B0 */  sw    $t6, 0x2b0($a1)
/* B0B468 800942C8 24C6ED3C */  addiu $a2, %lo(D_8013ED3C) # addiu $a2, $a2, -0x12c4
/* B0B46C 800942CC 27A40024 */  addiu $a0, $sp, 0x24
/* B0B470 800942D0 24070695 */  li    $a3, 1685
/* B0B474 800942D4 AC780004 */  sw    $t8, 4($v1)
/* B0B478 800942D8 0C031AD5 */  jal   func_800C6B54
/* B0B47C 800942DC AC6F0000 */   sw    $t7, ($v1)
/* B0B480 800942E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B484 800942E4 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B488 800942E8 03E00008 */  jr    $ra
/* B0B48C 800942EC 00000000 */   nop   

glabel func_800942F0
/* B0B490 800942F0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B494 800942F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B498 800942F8 00802825 */  move  $a1, $a0
/* B0B49C 800942FC 3C068014 */  lui   $a2, %hi(D_8013ED48) # $a2, 0x8014
/* B0B4A0 80094300 24C6ED48 */  addiu $a2, %lo(D_8013ED48) # addiu $a2, $a2, -0x12b8
/* B0B4A4 80094304 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B4A8 80094308 27A40024 */  addiu $a0, $sp, 0x24
/* B0B4AC 8009430C 0C031AB1 */  jal   func_800C6AC4
/* B0B4B0 80094310 240706A4 */   li    $a3, 1700
/* B0B4B4 80094314 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B4B8 80094318 3C188012 */  lui   $t8, %hi(D_801269A0) # $t8, 0x8012
/* B0B4BC 8009431C 271869A0 */  addiu $t8, %lo(D_801269A0) # addiu $t8, $t8, 0x69a0
/* B0B4C0 80094320 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0B4C4 80094324 3C0FDE00 */  lui   $t7, 0xde00
/* B0B4C8 80094328 3C068014 */  lui   $a2, %hi(D_8013ED54) # $a2, 0x8014
/* B0B4CC 8009432C 246E0008 */  addiu $t6, $v1, 8
/* B0B4D0 80094330 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0B4D4 80094334 24C6ED54 */  addiu $a2, %lo(D_8013ED54) # addiu $a2, $a2, -0x12ac
/* B0B4D8 80094338 27A40024 */  addiu $a0, $sp, 0x24
/* B0B4DC 8009433C 240706A8 */  li    $a3, 1704
/* B0B4E0 80094340 AC780004 */  sw    $t8, 4($v1)
/* B0B4E4 80094344 0C031AD5 */  jal   func_800C6B54
/* B0B4E8 80094348 AC6F0000 */   sw    $t7, ($v1)
/* B0B4EC 8009434C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B4F0 80094350 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B4F4 80094354 03E00008 */  jr    $ra
/* B0B4F8 80094358 00000000 */   nop   

glabel func_8009435C
/* B0B4FC 8009435C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B500 80094360 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B504 80094364 00802825 */  move  $a1, $a0
/* B0B508 80094368 3C068014 */  lui   $a2, %hi(D_8013ED60) # $a2, 0x8014
/* B0B50C 8009436C 24C6ED60 */  addiu $a2, %lo(D_8013ED60) # addiu $a2, $a2, -0x12a0
/* B0B510 80094370 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B514 80094374 27A40024 */  addiu $a0, $sp, 0x24
/* B0B518 80094378 0C031AB1 */  jal   func_800C6AC4
/* B0B51C 8009437C 240706BA */   li    $a3, 1722
/* B0B520 80094380 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B524 80094384 3C188012 */  lui   $t8, %hi(D_80126340) # $t8, 0x8012
/* B0B528 80094388 27186340 */  addiu $t8, %lo(D_80126340) # addiu $t8, $t8, 0x6340
/* B0B52C 8009438C 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0B530 80094390 3C0FDE00 */  lui   $t7, 0xde00
/* B0B534 80094394 3C068014 */  lui   $a2, %hi(D_8013ED6C) # $a2, 0x8014
/* B0B538 80094398 246E0008 */  addiu $t6, $v1, 8
/* B0B53C 8009439C ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0B540 800943A0 24C6ED6C */  addiu $a2, %lo(D_8013ED6C) # addiu $a2, $a2, -0x1294
/* B0B544 800943A4 27A40024 */  addiu $a0, $sp, 0x24
/* B0B548 800943A8 240706BE */  li    $a3, 1726
/* B0B54C 800943AC AC780004 */  sw    $t8, 4($v1)
/* B0B550 800943B0 0C031AD5 */  jal   func_800C6B54
/* B0B554 800943B4 AC6F0000 */   sw    $t7, ($v1)
/* B0B558 800943B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B55C 800943BC 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B560 800943C0 03E00008 */  jr    $ra
/* B0B564 800943C4 00000000 */   nop   

glabel func_800943C8
/* B0B568 800943C8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B56C 800943CC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B570 800943D0 00802825 */  move  $a1, $a0
/* B0B574 800943D4 3C068014 */  lui   $a2, %hi(D_8013ED78) # $a2, 0x8014
/* B0B578 800943D8 24C6ED78 */  addiu $a2, %lo(D_8013ED78) # addiu $a2, $a2, -0x1288
/* B0B57C 800943DC AFA50038 */  sw    $a1, 0x38($sp)
/* B0B580 800943E0 27A40024 */  addiu $a0, $sp, 0x24
/* B0B584 800943E4 0C031AB1 */  jal   func_800C6AC4
/* B0B588 800943E8 240706DE */   li    $a3, 1758
/* B0B58C 800943EC 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B590 800943F0 3C188012 */  lui   $t8, %hi(D_80126970) # $t8, 0x8012
/* B0B594 800943F4 27186970 */  addiu $t8, %lo(D_80126970) # addiu $t8, $t8, 0x6970
/* B0B598 800943F8 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B59C 800943FC 3C0FDE00 */  lui   $t7, 0xde00
/* B0B5A0 80094400 3C068014 */  lui   $a2, %hi(D_8013ED84) # $a2, 0x8014
/* B0B5A4 80094404 246E0008 */  addiu $t6, $v1, 8
/* B0B5A8 80094408 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B5AC 8009440C 24C6ED84 */  addiu $a2, %lo(D_8013ED84) # addiu $a2, $a2, -0x127c
/* B0B5B0 80094410 27A40024 */  addiu $a0, $sp, 0x24
/* B0B5B4 80094414 240706E2 */  li    $a3, 1762
/* B0B5B8 80094418 AC780004 */  sw    $t8, 4($v1)
/* B0B5BC 8009441C 0C031AD5 */  jal   func_800C6B54
/* B0B5C0 80094420 AC6F0000 */   sw    $t7, ($v1)
/* B0B5C4 80094424 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B5C8 80094428 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B5CC 8009442C 03E00008 */  jr    $ra
/* B0B5D0 80094430 00000000 */   nop   

glabel func_80094434
/* B0B5D4 80094434 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B5D8 80094438 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B5DC 8009443C 00802825 */  move  $a1, $a0
/* B0B5E0 80094440 3C068014 */  lui   $a2, %hi(D_8013ED90) # $a2, 0x8014
/* B0B5E4 80094444 24C6ED90 */  addiu $a2, %lo(D_8013ED90) # addiu $a2, $a2, -0x1270
/* B0B5E8 80094448 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B5EC 8009444C 27A40024 */  addiu $a0, $sp, 0x24
/* B0B5F0 80094450 0C031AB1 */  jal   func_800C6AC4
/* B0B5F4 80094454 240706EF */   li    $a3, 1775
/* B0B5F8 80094458 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B5FC 8009445C 3C188012 */  lui   $t8, %hi(D_801262E0) # $t8, 0x8012
/* B0B600 80094460 271862E0 */  addiu $t8, %lo(D_801262E0) # addiu $t8, $t8, 0x62e0
/* B0B604 80094464 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B608 80094468 3C0FDE00 */  lui   $t7, 0xde00
/* B0B60C 8009446C 3C068014 */  lui   $a2, %hi(D_8013ED9C) # $a2, 0x8014
/* B0B610 80094470 246E0008 */  addiu $t6, $v1, 8
/* B0B614 80094474 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B618 80094478 24C6ED9C */  addiu $a2, %lo(D_8013ED9C) # addiu $a2, $a2, -0x1264
/* B0B61C 8009447C 27A40024 */  addiu $a0, $sp, 0x24
/* B0B620 80094480 240706F3 */  li    $a3, 1779
/* B0B624 80094484 AC780004 */  sw    $t8, 4($v1)
/* B0B628 80094488 0C031AD5 */  jal   func_800C6B54
/* B0B62C 8009448C AC6F0000 */   sw    $t7, ($v1)
/* B0B630 80094490 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B634 80094494 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B638 80094498 03E00008 */  jr    $ra
/* B0B63C 8009449C 00000000 */   nop   

glabel func_800944A0
/* B0B640 800944A0 00801025 */  move  $v0, $a0
/* B0B644 800944A4 3C0F8012 */  lui   $t7, %hi(D_801269D0) # $t7, 0x8012
/* B0B648 800944A8 25EF69D0 */  addiu $t7, %lo(D_801269D0) # addiu $t7, $t7, 0x69d0
/* B0B64C 800944AC 3C0EDE00 */  lui   $t6, 0xde00
/* B0B650 800944B0 AC4E0000 */  sw    $t6, ($v0)
/* B0B654 800944B4 AC4F0004 */  sw    $t7, 4($v0)
/* B0B658 800944B8 24840008 */  addiu $a0, $a0, 8
/* B0B65C 800944BC 03E00008 */  jr    $ra
/* B0B660 800944C0 00801025 */   move  $v0, $a0

glabel func_800944C4
/* B0B664 800944C4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B0B668 800944C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B66C 800944CC AFA40030 */  sw    $a0, 0x30($sp)
/* B0B670 800944D0 3C068014 */  lui   $a2, %hi(D_8013EDA8) # $a2, 0x8014
/* B0B674 800944D4 24C6EDA8 */  addiu $a2, %lo(D_8013EDA8) # addiu $a2, $a2, -0x1258
/* B0B678 800944D8 8FA50030 */  lw    $a1, 0x30($sp)
/* B0B67C 800944DC 27A4001C */  addiu $a0, $sp, 0x1c
/* B0B680 800944E0 0C031AB1 */  jal   func_800C6AC4
/* B0B684 800944E4 24070707 */   li    $a3, 1799
/* B0B688 800944E8 8FAE0030 */  lw    $t6, 0x30($sp)
/* B0B68C 800944EC 0C025128 */  jal   func_800944A0
/* B0B690 800944F0 8DC402C0 */   lw    $a0, 0x2c0($t6)
/* B0B694 800944F4 8FA50030 */  lw    $a1, 0x30($sp)
/* B0B698 800944F8 3C068014 */  lui   $a2, %hi(D_8013EDB4) # $a2, 0x8014
/* B0B69C 800944FC 24C6EDB4 */  addiu $a2, %lo(D_8013EDB4) # addiu $a2, $a2, -0x124c
/* B0B6A0 80094500 27A4001C */  addiu $a0, $sp, 0x1c
/* B0B6A4 80094504 24070709 */  li    $a3, 1801
/* B0B6A8 80094508 0C031AD5 */  jal   func_800C6B54
/* B0B6AC 8009450C ACA202C0 */   sw    $v0, 0x2c0($a1)
/* B0B6B0 80094510 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B6B4 80094514 27BD0030 */  addiu $sp, $sp, 0x30
/* B0B6B8 80094518 03E00008 */  jr    $ra
/* B0B6BC 8009451C 00000000 */   nop   

glabel func_80094520
/* B0B6C0 80094520 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B0B6C4 80094524 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B6C8 80094528 AFA40030 */  sw    $a0, 0x30($sp)
/* B0B6CC 8009452C 3C068014 */  lui   $a2, %hi(D_8013EDC0) # $a2, 0x8014
/* B0B6D0 80094530 24C6EDC0 */  addiu $a2, %lo(D_8013EDC0) # addiu $a2, $a2, -0x1240
/* B0B6D4 80094534 8FA50030 */  lw    $a1, 0x30($sp)
/* B0B6D8 80094538 27A4001C */  addiu $a0, $sp, 0x1c
/* B0B6DC 8009453C 0C031AB1 */  jal   func_800C6AC4
/* B0B6E0 80094540 24070711 */   li    $a3, 1809
/* B0B6E4 80094544 8FAE0030 */  lw    $t6, 0x30($sp)
/* B0B6E8 80094548 0C025128 */  jal   func_800944A0
/* B0B6EC 8009454C 8DC402B0 */   lw    $a0, 0x2b0($t6)
/* B0B6F0 80094550 8FA50030 */  lw    $a1, 0x30($sp)
/* B0B6F4 80094554 3C068014 */  lui   $a2, %hi(D_8013EDCC) # $a2, 0x8014
/* B0B6F8 80094558 24C6EDCC */  addiu $a2, %lo(D_8013EDCC) # addiu $a2, $a2, -0x1234
/* B0B6FC 8009455C 27A4001C */  addiu $a0, $sp, 0x1c
/* B0B700 80094560 24070713 */  li    $a3, 1811
/* B0B704 80094564 0C031AD5 */  jal   func_800C6B54
/* B0B708 80094568 ACA202B0 */   sw    $v0, 0x2b0($a1)
/* B0B70C 8009456C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B710 80094570 27BD0030 */  addiu $sp, $sp, 0x30
/* B0B714 80094574 03E00008 */  jr    $ra
/* B0B718 80094578 00000000 */   nop   

glabel func_8009457C
/* B0B71C 8009457C 8C830000 */  lw    $v1, ($a0)
/* B0B720 80094580 3C0F8012 */  lui   $t7, %hi(D_801269D0) # $t7, 0x8012
/* B0B724 80094584 25EF69D0 */  addiu $t7, %lo(D_801269D0) # addiu $t7, $t7, 0x69d0
/* B0B728 80094588 3C0EDE00 */  lui   $t6, 0xde00
/* B0B72C 8009458C AC6E0000 */  sw    $t6, ($v1)
/* B0B730 80094590 AC6F0004 */  sw    $t7, 4($v1)
/* B0B734 80094594 24620008 */  addiu $v0, $v1, 8
/* B0B738 80094598 03E00008 */  jr    $ra
/* B0B73C 8009459C AC820000 */   sw    $v0, ($a0)

glabel func_800945A0
/* B0B740 800945A0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B744 800945A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B748 800945A8 00802825 */  move  $a1, $a0
/* B0B74C 800945AC 3C068014 */  lui   $a2, %hi(D_8013EDD8) # $a2, 0x8014
/* B0B750 800945B0 24C6EDD8 */  addiu $a2, %lo(D_8013EDD8) # addiu $a2, $a2, -0x1228
/* B0B754 800945B4 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B758 800945B8 27A40024 */  addiu $a0, $sp, 0x24
/* B0B75C 800945BC 0C031AB1 */  jal   func_800C6AC4
/* B0B760 800945C0 2407072D */   li    $a3, 1837
/* B0B764 800945C4 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B768 800945C8 3C188012 */  lui   $t8, %hi(D_80126A00) # $t8, 0x8012
/* B0B76C 800945CC 27186A00 */  addiu $t8, %lo(D_80126A00) # addiu $t8, $t8, 0x6a00
/* B0B770 800945D0 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B774 800945D4 3C0FDE00 */  lui   $t7, 0xde00
/* B0B778 800945D8 3C068014 */  lui   $a2, %hi(D_8013EDE4) # $a2, 0x8014
/* B0B77C 800945DC 246E0008 */  addiu $t6, $v1, 8
/* B0B780 800945E0 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B784 800945E4 24C6EDE4 */  addiu $a2, %lo(D_8013EDE4) # addiu $a2, $a2, -0x121c
/* B0B788 800945E8 27A40024 */  addiu $a0, $sp, 0x24
/* B0B78C 800945EC 24070731 */  li    $a3, 1841
/* B0B790 800945F0 AC780004 */  sw    $t8, 4($v1)
/* B0B794 800945F4 0C031AD5 */  jal   func_800C6B54
/* B0B798 800945F8 AC6F0000 */   sw    $t7, ($v1)
/* B0B79C 800945FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B7A0 80094600 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B7A4 80094604 03E00008 */  jr    $ra
/* B0B7A8 80094608 00000000 */   nop   

glabel func_8009460C
/* B0B7AC 8009460C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B7B0 80094610 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B7B4 80094614 00802825 */  move  $a1, $a0
/* B0B7B8 80094618 3C068014 */  lui   $a2, %hi(D_8013EDF0) # $a2, 0x8014
/* B0B7BC 8009461C 24C6EDF0 */  addiu $a2, %lo(D_8013EDF0) # addiu $a2, $a2, -0x1210
/* B0B7C0 80094620 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B7C4 80094624 27A40024 */  addiu $a0, $sp, 0x24
/* B0B7C8 80094628 0C031AB1 */  jal   func_800C6AC4
/* B0B7CC 8009462C 2407073D */   li    $a3, 1853
/* B0B7D0 80094630 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B7D4 80094634 3C188012 */  lui   $t8, %hi(D_80126A30) # $t8, 0x8012
/* B0B7D8 80094638 27186A30 */  addiu $t8, %lo(D_80126A30) # addiu $t8, $t8, 0x6a30
/* B0B7DC 8009463C 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B7E0 80094640 3C0FDE00 */  lui   $t7, 0xde00
/* B0B7E4 80094644 3C068014 */  lui   $a2, %hi(D_8013EDFC) # $a2, 0x8014
/* B0B7E8 80094648 246E0008 */  addiu $t6, $v1, 8
/* B0B7EC 8009464C ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B7F0 80094650 24C6EDFC */  addiu $a2, %lo(D_8013EDFC) # addiu $a2, $a2, -0x1204
/* B0B7F4 80094654 27A40024 */  addiu $a0, $sp, 0x24
/* B0B7F8 80094658 24070741 */  li    $a3, 1857
/* B0B7FC 8009465C AC780004 */  sw    $t8, 4($v1)
/* B0B800 80094660 0C031AD5 */  jal   func_800C6B54
/* B0B804 80094664 AC6F0000 */   sw    $t7, ($v1)
/* B0B808 80094668 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B80C 8009466C 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B810 80094670 03E00008 */  jr    $ra
/* B0B814 80094674 00000000 */   nop   

glabel func_80094678
/* B0B818 80094678 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B81C 8009467C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B820 80094680 00802825 */  move  $a1, $a0
/* B0B824 80094684 3C068014 */  lui   $a2, %hi(D_8013EE08) # $a2, 0x8014
/* B0B828 80094688 24C6EE08 */  addiu $a2, %lo(D_8013EE08) # addiu $a2, $a2, -0x11f8
/* B0B82C 8009468C AFA50038 */  sw    $a1, 0x38($sp)
/* B0B830 80094690 27A40024 */  addiu $a0, $sp, 0x24
/* B0B834 80094694 0C031AB1 */  jal   func_800C6AC4
/* B0B838 80094698 2407074D */   li    $a3, 1869
/* B0B83C 8009469C 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B840 800946A0 3C188012 */  lui   $t8, %hi(D_80126B50) # $t8, 0x8012
/* B0B844 800946A4 27186B50 */  addiu $t8, %lo(D_80126B50) # addiu $t8, $t8, 0x6b50
/* B0B848 800946A8 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0B84C 800946AC 3C0FDE00 */  lui   $t7, 0xde00
/* B0B850 800946B0 3C068014 */  lui   $a2, %hi(D_8013EE14) # $a2, 0x8014
/* B0B854 800946B4 246E0008 */  addiu $t6, $v1, 8
/* B0B858 800946B8 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0B85C 800946BC 24C6EE14 */  addiu $a2, %lo(D_8013EE14) # addiu $a2, $a2, -0x11ec
/* B0B860 800946C0 27A40024 */  addiu $a0, $sp, 0x24
/* B0B864 800946C4 24070751 */  li    $a3, 1873
/* B0B868 800946C8 AC780004 */  sw    $t8, 4($v1)
/* B0B86C 800946CC 0C031AD5 */  jal   func_800C6B54
/* B0B870 800946D0 AC6F0000 */   sw    $t7, ($v1)
/* B0B874 800946D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B878 800946D8 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B87C 800946DC 03E00008 */  jr    $ra
/* B0B880 800946E0 00000000 */   nop   

glabel func_800946E4
/* B0B884 800946E4 00801025 */  move  $v0, $a0
/* B0B888 800946E8 3C0F8012 */  lui   $t7, %hi(D_80126EE0) # $t7, 0x8012
/* B0B88C 800946EC 25EF6EE0 */  addiu $t7, %lo(D_80126EE0) # addiu $t7, $t7, 0x6ee0
/* B0B890 800946F0 3C0EDE00 */  lui   $t6, 0xde00
/* B0B894 800946F4 AC4E0000 */  sw    $t6, ($v0)
/* B0B898 800946F8 AC4F0004 */  sw    $t7, 4($v0)
/* B0B89C 800946FC 24840008 */  addiu $a0, $a0, 8
/* B0B8A0 80094700 03E00008 */  jr    $ra
/* B0B8A4 80094704 00801025 */   move  $v0, $a0

glabel func_80094708
/* B0B8A8 80094708 00801025 */  move  $v0, $a0
/* B0B8AC 8009470C 3C0F8012 */  lui   $t7, %hi(D_80126F10) # $t7, 0x8012
/* B0B8B0 80094710 25EF6F10 */  addiu $t7, %lo(D_80126F10) # addiu $t7, $t7, 0x6f10
/* B0B8B4 80094714 3C0EDE00 */  lui   $t6, 0xde00
/* B0B8B8 80094718 AC4E0000 */  sw    $t6, ($v0)
/* B0B8BC 8009471C AC4F0004 */  sw    $t7, 4($v0)
/* B0B8C0 80094720 24840008 */  addiu $a0, $a0, 8
/* B0B8C4 80094724 03E00008 */  jr    $ra
/* B0B8C8 80094728 00801025 */   move  $v0, $a0

glabel func_8009472C
/* B0B8CC 8009472C 00801025 */  move  $v0, $a0
/* B0B8D0 80094730 3C0F8012 */  lui   $t7, %hi(D_80126F40) # $t7, 0x8012
/* B0B8D4 80094734 25EF6F40 */  addiu $t7, %lo(D_80126F40) # addiu $t7, $t7, 0x6f40
/* B0B8D8 80094738 3C0EDE00 */  lui   $t6, 0xde00
/* B0B8DC 8009473C AC4E0000 */  sw    $t6, ($v0)
/* B0B8E0 80094740 AC4F0004 */  sw    $t7, 4($v0)
/* B0B8E4 80094744 24840008 */  addiu $a0, $a0, 8
/* B0B8E8 80094748 00801025 */  move  $v0, $a0
/* B0B8EC 8009474C 3C18E300 */  lui   $t8, (0xE3001801 >> 16) # lui $t8, 0xe300
/* B0B8F0 80094750 37181801 */  ori   $t8, (0xE3001801 & 0xFFFF) # ori $t8, $t8, 0x1801
/* B0B8F4 80094754 241900C0 */  li    $t9, 192
/* B0B8F8 80094758 AC590004 */  sw    $t9, 4($v0)
/* B0B8FC 8009475C AC580000 */  sw    $t8, ($v0)
/* B0B900 80094760 24840008 */  addiu $a0, $a0, 8
/* B0B904 80094764 03E00008 */  jr    $ra
/* B0B908 80094768 00801025 */   move  $v0, $a0

glabel func_8009476C
/* B0B90C 8009476C 00801025 */  move  $v0, $a0
/* B0B910 80094770 3C0F8012 */  lui   $t7, %hi(D_80126F70) # $t7, 0x8012
/* B0B914 80094774 25EF6F70 */  addiu $t7, %lo(D_80126F70) # addiu $t7, $t7, 0x6f70
/* B0B918 80094778 3C0EDE00 */  lui   $t6, 0xde00
/* B0B91C 8009477C AC4E0000 */  sw    $t6, ($v0)
/* B0B920 80094780 AC4F0004 */  sw    $t7, 4($v0)
/* B0B924 80094784 24840008 */  addiu $a0, $a0, 8
/* B0B928 80094788 00801025 */  move  $v0, $a0
/* B0B92C 8009478C 3C18E300 */  lui   $t8, (0xE3001801 >> 16) # lui $t8, 0xe300
/* B0B930 80094790 37181801 */  ori   $t8, (0xE3001801 & 0xFFFF) # ori $t8, $t8, 0x1801
/* B0B934 80094794 241900C0 */  li    $t9, 192
/* B0B938 80094798 AC590004 */  sw    $t9, 4($v0)
/* B0B93C 8009479C AC580000 */  sw    $t8, ($v0)
/* B0B940 800947A0 24840008 */  addiu $a0, $a0, 8
/* B0B944 800947A4 03E00008 */  jr    $ra
/* B0B948 800947A8 00801025 */   move  $v0, $a0

glabel func_800947AC
/* B0B94C 800947AC 00801025 */  move  $v0, $a0
/* B0B950 800947B0 3C0F8012 */  lui   $t7, %hi(D_80126EB0) # $t7, 0x8012
/* B0B954 800947B4 25EF6EB0 */  addiu $t7, %lo(D_80126EB0) # addiu $t7, $t7, 0x6eb0
/* B0B958 800947B8 3C0EDE00 */  lui   $t6, 0xde00
/* B0B95C 800947BC AC4E0000 */  sw    $t6, ($v0)
/* B0B960 800947C0 AC4F0004 */  sw    $t7, 4($v0)
/* B0B964 800947C4 24840008 */  addiu $a0, $a0, 8
/* B0B968 800947C8 00801825 */  move  $v1, $a0
/* B0B96C 800947CC 3C02E300 */  lui   $v0, (0xE3001801 >> 16) # lui $v0, 0xe300
/* B0B970 800947D0 34421801 */  ori   $v0, (0xE3001801 & 0xFFFF) # ori $v0, $v0, 0x1801
/* B0B974 800947D4 240600C0 */  li    $a2, 192
/* B0B978 800947D8 AC660004 */  sw    $a2, 4($v1)
/* B0B97C 800947DC AC620000 */  sw    $v0, ($v1)
/* B0B980 800947E0 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* B0B984 800947E4 8CA5FA90 */  lw    $a1, %lo(gGameInfo)($a1)
/* B0B988 800947E8 24070001 */  li    $a3, 1
/* B0B98C 800947EC 3C18E300 */  lui   $t8, (0xE3001A01 >> 16) # lui $t8, 0xe300
/* B0B990 800947F0 84A30FFE */  lh    $v1, 0xffe($a1)
/* B0B994 800947F4 24840008 */  addiu $a0, $a0, 8
/* B0B998 800947F8 37181A01 */  ori   $t8, (0xE3001A01 & 0xFFFF) # ori $t8, $t8, 0x1a01
/* B0B99C 800947FC 1067000C */  beq   $v1, $a3, .L80094830
/* B0B9A0 80094800 24190030 */   li    $t9, 48
/* B0B9A4 80094804 24010002 */  li    $at, 2
/* B0B9A8 80094808 10610010 */  beq   $v1, $at, .L8009484C
/* B0B9AC 8009480C 3C08E300 */   lui   $t0, (0xE3001A01 >> 16) # lui $t0, 0xe300
/* B0B9B0 80094810 24010003 */  li    $at, 3
/* B0B9B4 80094814 10610015 */  beq   $v1, $at, .L8009486C
/* B0B9B8 80094818 3C09E300 */   lui   $t1, (0xE3001A01 >> 16) # lui $t1, 0xe300
/* B0B9BC 8009481C 24010004 */  li    $at, 4
/* B0B9C0 80094820 1061001B */  beq   $v1, $at, .L80094890
/* B0B9C4 80094824 3C0BE300 */   lui   $t3, (0xE3001A01 >> 16) # lui $t3, 0xe300
/* B0B9C8 80094828 10000022 */  b     .L800948B4
/* B0B9CC 8009482C 84A31000 */   lh    $v1, 0x1000($a1)
.L80094830:
/* B0B9D0 80094830 00801825 */  move  $v1, $a0
/* B0B9D4 80094834 AC780000 */  sw    $t8, ($v1)
/* B0B9D8 80094838 AC790004 */  sw    $t9, 4($v1)
/* B0B9DC 8009483C 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* B0B9E0 80094840 8CA5FA90 */  lw    $a1, %lo(gGameInfo)($a1)
/* B0B9E4 80094844 1000001A */  b     .L800948B0
/* B0B9E8 80094848 24840008 */   addiu $a0, $a0, 8
.L8009484C:
/* B0B9EC 8009484C 00801825 */  move  $v1, $a0
/* B0B9F0 80094850 35081A01 */  ori   $t0, (0xE3001A01 & 0xFFFF) # ori $t0, $t0, 0x1a01
/* B0B9F4 80094854 AC680000 */  sw    $t0, ($v1)
/* B0B9F8 80094858 AC600004 */  sw    $zero, 4($v1)
/* B0B9FC 8009485C 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* B0BA00 80094860 8CA5FA90 */  lw    $a1, %lo(gGameInfo)($a1)
/* B0BA04 80094864 10000012 */  b     .L800948B0
/* B0BA08 80094868 24840008 */   addiu $a0, $a0, 8
.L8009486C:
/* B0BA0C 8009486C 00801825 */  move  $v1, $a0
/* B0BA10 80094870 35291A01 */  ori   $t1, (0xE3001A01 & 0xFFFF) # ori $t1, $t1, 0x1a01
/* B0BA14 80094874 240A0010 */  li    $t2, 16
/* B0BA18 80094878 AC6A0004 */  sw    $t2, 4($v1)
/* B0BA1C 8009487C AC690000 */  sw    $t1, ($v1)
/* B0BA20 80094880 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* B0BA24 80094884 8CA5FA90 */  lw    $a1, %lo(gGameInfo)($a1)
/* B0BA28 80094888 10000009 */  b     .L800948B0
/* B0BA2C 8009488C 24840008 */   addiu $a0, $a0, 8
.L80094890:
/* B0BA30 80094890 00801825 */  move  $v1, $a0
/* B0BA34 80094894 356B1A01 */  ori   $t3, (0xE3001A01 & 0xFFFF) # ori $t3, $t3, 0x1a01
/* B0BA38 80094898 240C0020 */  li    $t4, 32
/* B0BA3C 8009489C AC6C0004 */  sw    $t4, 4($v1)
/* B0BA40 800948A0 AC6B0000 */  sw    $t3, ($v1)
/* B0BA44 800948A4 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* B0BA48 800948A8 8CA5FA90 */  lw    $a1, %lo(gGameInfo)($a1)
/* B0BA4C 800948AC 24840008 */  addiu $a0, $a0, 8
.L800948B0:
/* B0BA50 800948B0 84A31000 */  lh    $v1, 0x1000($a1)
.L800948B4:
/* B0BA54 800948B4 24010002 */  li    $at, 2
/* B0BA58 800948B8 5067000B */  beql  $v1, $a3, .L800948E8
/* B0BA5C 800948BC 00801825 */   move  $v1, $a0
/* B0BA60 800948C0 1061000E */  beq   $v1, $at, .L800948FC
/* B0BA64 800948C4 24010003 */   li    $at, 3
/* B0BA68 800948C8 10610012 */  beq   $v1, $at, .L80094914
/* B0BA6C 800948CC 240D0040 */   li    $t5, 64
/* B0BA70 800948D0 24010004 */  li    $at, 4
/* B0BA74 800948D4 10610015 */  beq   $v1, $at, .L8009492C
/* B0BA78 800948D8 240E0080 */   li    $t6, 128
/* B0BA7C 800948DC 03E00008 */  jr    $ra
/* B0BA80 800948E0 00801025 */   move  $v0, $a0
/* B0BA84 800948E4 00801825 */  move  $v1, $a0
.L800948E8:
/* B0BA88 800948E8 AC620000 */  sw    $v0, ($v1)
/* B0BA8C 800948EC 24840008 */  addiu $a0, $a0, 8
/* B0BA90 800948F0 AC660004 */  sw    $a2, 4($v1)
/* B0BA94 800948F4 03E00008 */  jr    $ra
/* B0BA98 800948F8 00801025 */   move  $v0, $a0
.L800948FC:
/* B0BA9C 800948FC 00801825 */  move  $v1, $a0
/* B0BAA0 80094900 AC620000 */  sw    $v0, ($v1)
/* B0BAA4 80094904 24840008 */  addiu $a0, $a0, 8
/* B0BAA8 80094908 AC600004 */  sw    $zero, 4($v1)
/* B0BAAC 8009490C 03E00008 */  jr    $ra
/* B0BAB0 80094910 00801025 */   move  $v0, $a0
.L80094914:
/* B0BAB4 80094914 00801825 */  move  $v1, $a0
/* B0BAB8 80094918 AC620000 */  sw    $v0, ($v1)
/* B0BABC 8009491C 24840008 */  addiu $a0, $a0, 8
/* B0BAC0 80094920 AC6D0004 */  sw    $t5, 4($v1)
/* B0BAC4 80094924 03E00008 */  jr    $ra
/* B0BAC8 80094928 00801025 */   move  $v0, $a0
.L8009492C:
/* B0BACC 8009492C 00801825 */  move  $v1, $a0
/* B0BAD0 80094930 AC620000 */  sw    $v0, ($v1)
/* B0BAD4 80094934 AC6E0004 */  sw    $t6, 4($v1)
/* B0BAD8 80094938 24840008 */  addiu $a0, $a0, 8
/* B0BADC 8009493C 03E00008 */  jr    $ra
/* B0BAE0 80094940 00801025 */   move  $v0, $a0

glabel func_80094944
/* B0BAE4 80094944 00801025 */  move  $v0, $a0
/* B0BAE8 80094948 3C0F8012 */  lui   $t7, %hi(D_80126FA0) # $t7, 0x8012
/* B0BAEC 8009494C 25EF6FA0 */  addiu $t7, %lo(D_80126FA0) # addiu $t7, $t7, 0x6fa0
/* B0BAF0 80094950 3C0EDE00 */  lui   $t6, 0xde00
/* B0BAF4 80094954 AC4E0000 */  sw    $t6, ($v0)
/* B0BAF8 80094958 AC4F0004 */  sw    $t7, 4($v0)
/* B0BAFC 8009495C 24840008 */  addiu $a0, $a0, 8
/* B0BB00 80094960 03E00008 */  jr    $ra
/* B0BB04 80094964 00801025 */   move  $v0, $a0

glabel func_80094968
/* B0BB08 80094968 00801025 */  move  $v0, $a0
/* B0BB0C 8009496C 3C0F8012 */  lui   $t7, %hi(D_80126640) # $t7, 0x8012
/* B0BB10 80094970 25EF6640 */  addiu $t7, %lo(D_80126640) # addiu $t7, $t7, 0x6640
/* B0BB14 80094974 3C0EDE00 */  lui   $t6, 0xde00
/* B0BB18 80094978 AC4E0000 */  sw    $t6, ($v0)
/* B0BB1C 8009497C AC4F0004 */  sw    $t7, 4($v0)
/* B0BB20 80094980 24840008 */  addiu $a0, $a0, 8
/* B0BB24 80094984 00801025 */  move  $v0, $a0
/* B0BB28 80094988 3C18E300 */  lui   $t8, (0xE3001801 >> 16) # lui $t8, 0xe300
/* B0BB2C 8009498C 37181801 */  ori   $t8, (0xE3001801 & 0xFFFF) # ori $t8, $t8, 0x1801
/* B0BB30 80094990 241900C0 */  li    $t9, 192
/* B0BB34 80094994 AC590004 */  sw    $t9, 4($v0)
/* B0BB38 80094998 AC580000 */  sw    $t8, ($v0)
/* B0BB3C 8009499C 24840008 */  addiu $a0, $a0, 8
/* B0BB40 800949A0 03E00008 */  jr    $ra
/* B0BB44 800949A4 00801025 */   move  $v0, $a0

glabel func_800949A8
/* B0BB48 800949A8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BB4C 800949AC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BB50 800949B0 00802825 */  move  $a1, $a0
/* B0BB54 800949B4 3C068014 */  lui   $a2, %hi(D_8013EE20) # $a2, 0x8014
/* B0BB58 800949B8 24C6EE20 */  addiu $a2, %lo(D_8013EE20) # addiu $a2, $a2, -0x11e0
/* B0BB5C 800949BC AFA50038 */  sw    $a1, 0x38($sp)
/* B0BB60 800949C0 27A40024 */  addiu $a0, $sp, 0x24
/* B0BB64 800949C4 0C031AB1 */  jal   func_800C6AC4
/* B0BB68 800949C8 240707A1 */   li    $a3, 1953
/* B0BB6C 800949CC 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BB70 800949D0 3C188012 */  lui   $t8, %hi(D_80126A60) # $t8, 0x8012
/* B0BB74 800949D4 27186A60 */  addiu $t8, %lo(D_80126A60) # addiu $t8, $t8, 0x6a60
/* B0BB78 800949D8 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0BB7C 800949DC 3C0FDE00 */  lui   $t7, 0xde00
/* B0BB80 800949E0 3C068014 */  lui   $a2, %hi(D_8013EE2C) # $a2, 0x8014
/* B0BB84 800949E4 246E0008 */  addiu $t6, $v1, 8
/* B0BB88 800949E8 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0BB8C 800949EC 24C6EE2C */  addiu $a2, %lo(D_8013EE2C) # addiu $a2, $a2, -0x11d4
/* B0BB90 800949F0 27A40024 */  addiu $a0, $sp, 0x24
/* B0BB94 800949F4 240707A5 */  li    $a3, 1957
/* B0BB98 800949F8 AC780004 */  sw    $t8, 4($v1)
/* B0BB9C 800949FC 0C031AD5 */  jal   func_800C6B54
/* B0BBA0 80094A00 AC6F0000 */   sw    $t7, ($v1)
/* B0BBA4 80094A04 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BBA8 80094A08 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BBAC 80094A0C 03E00008 */  jr    $ra
/* B0BBB0 80094A10 00000000 */   nop   

glabel func_80094A14
/* B0BBB4 80094A14 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BBB8 80094A18 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BBBC 80094A1C 00802825 */  move  $a1, $a0
/* B0BBC0 80094A20 3C068014 */  lui   $a2, %hi(D_8013EE38) # $a2, 0x8014
/* B0BBC4 80094A24 24C6EE38 */  addiu $a2, %lo(D_8013EE38) # addiu $a2, $a2, -0x11c8
/* B0BBC8 80094A28 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BBCC 80094A2C 27A40024 */  addiu $a0, $sp, 0x24
/* B0BBD0 80094A30 0C031AB1 */  jal   func_800C6AC4
/* B0BBD4 80094A34 240707AC */   li    $a3, 1964
/* B0BBD8 80094A38 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BBDC 80094A3C 3C188012 */  lui   $t8, %hi(D_80126A60) # $t8, 0x8012
/* B0BBE0 80094A40 27186A60 */  addiu $t8, %lo(D_80126A60) # addiu $t8, $t8, 0x6a60
/* B0BBE4 80094A44 8CA302B0 */  lw    $v1, 0x2b0($a1)
/* B0BBE8 80094A48 3C0FDE00 */  lui   $t7, 0xde00
/* B0BBEC 80094A4C 3C068014 */  lui   $a2, %hi(D_8013EE44) # $a2, 0x8014
/* B0BBF0 80094A50 246E0008 */  addiu $t6, $v1, 8
/* B0BBF4 80094A54 ACAE02B0 */  sw    $t6, 0x2b0($a1)
/* B0BBF8 80094A58 24C6EE44 */  addiu $a2, %lo(D_8013EE44) # addiu $a2, $a2, -0x11bc
/* B0BBFC 80094A5C 27A40024 */  addiu $a0, $sp, 0x24
/* B0BC00 80094A60 240707B0 */  li    $a3, 1968
/* B0BC04 80094A64 AC780004 */  sw    $t8, 4($v1)
/* B0BC08 80094A68 0C031AD5 */  jal   func_800C6B54
/* B0BC0C 80094A6C AC6F0000 */   sw    $t7, ($v1)
/* B0BC10 80094A70 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BC14 80094A74 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BC18 80094A78 03E00008 */  jr    $ra
/* B0BC1C 80094A7C 00000000 */   nop   

glabel func_80094A80
/* B0BC20 80094A80 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BC24 80094A84 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BC28 80094A88 00802825 */  move  $a1, $a0
/* B0BC2C 80094A8C 3C068014 */  lui   $a2, %hi(D_8013EE50) # $a2, 0x8014
/* B0BC30 80094A90 24C6EE50 */  addiu $a2, %lo(D_8013EE50) # addiu $a2, $a2, -0x11b0
/* B0BC34 80094A94 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BC38 80094A98 27A40024 */  addiu $a0, $sp, 0x24
/* B0BC3C 80094A9C 0C031AB1 */  jal   func_800C6AC4
/* B0BC40 80094AA0 240707C8 */   li    $a3, 1992
/* B0BC44 80094AA4 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BC48 80094AA8 3C188012 */  lui   $t8, %hi(D_80126B80) # $t8, 0x8012
/* B0BC4C 80094AAC 27186B80 */  addiu $t8, %lo(D_80126B80) # addiu $t8, $t8, 0x6b80
/* B0BC50 80094AB0 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0BC54 80094AB4 3C0FDE00 */  lui   $t7, 0xde00
/* B0BC58 80094AB8 3C068014 */  lui   $a2, %hi(D_8013EE5C) # $a2, 0x8014
/* B0BC5C 80094ABC 246E0008 */  addiu $t6, $v1, 8
/* B0BC60 80094AC0 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0BC64 80094AC4 24C6EE5C */  addiu $a2, %lo(D_8013EE5C) # addiu $a2, $a2, -0x11a4
/* B0BC68 80094AC8 27A40024 */  addiu $a0, $sp, 0x24
/* B0BC6C 80094ACC 240707CC */  li    $a3, 1996
/* B0BC70 80094AD0 AC780004 */  sw    $t8, 4($v1)
/* B0BC74 80094AD4 0C031AD5 */  jal   func_800C6B54
/* B0BC78 80094AD8 AC6F0000 */   sw    $t7, ($v1)
/* B0BC7C 80094ADC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BC80 80094AE0 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BC84 80094AE4 03E00008 */  jr    $ra
/* B0BC88 80094AE8 00000000 */   nop   

glabel func_80094AEC
/* B0BC8C 80094AEC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BC90 80094AF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BC94 80094AF4 00802825 */  move  $a1, $a0
/* B0BC98 80094AF8 3C068014 */  lui   $a2, %hi(D_8013EE68) # $a2, 0x8014
/* B0BC9C 80094AFC 24C6EE68 */  addiu $a2, %lo(D_8013EE68) # addiu $a2, $a2, -0x1198
/* B0BCA0 80094B00 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BCA4 80094B04 27A40024 */  addiu $a0, $sp, 0x24
/* B0BCA8 80094B08 0C031AB1 */  jal   func_800C6AC4
/* B0BCAC 80094B0C 240707D8 */   li    $a3, 2008
/* B0BCB0 80094B10 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BCB4 80094B14 3C188012 */  lui   $t8, %hi(D_80126BB0) # $t8, 0x8012
/* B0BCB8 80094B18 27186BB0 */  addiu $t8, %lo(D_80126BB0) # addiu $t8, $t8, 0x6bb0
/* B0BCBC 80094B1C 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0BCC0 80094B20 3C0FDE00 */  lui   $t7, 0xde00
/* B0BCC4 80094B24 3C068014 */  lui   $a2, %hi(D_8013EE74) # $a2, 0x8014
/* B0BCC8 80094B28 246E0008 */  addiu $t6, $v1, 8
/* B0BCCC 80094B2C ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0BCD0 80094B30 24C6EE74 */  addiu $a2, %lo(D_8013EE74) # addiu $a2, $a2, -0x118c
/* B0BCD4 80094B34 27A40024 */  addiu $a0, $sp, 0x24
/* B0BCD8 80094B38 240707DC */  li    $a3, 2012
/* B0BCDC 80094B3C AC780004 */  sw    $t8, 4($v1)
/* B0BCE0 80094B40 0C031AD5 */  jal   func_800C6B54
/* B0BCE4 80094B44 AC6F0000 */   sw    $t7, ($v1)
/* B0BCE8 80094B48 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BCEC 80094B4C 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BCF0 80094B50 03E00008 */  jr    $ra
/* B0BCF4 80094B54 00000000 */   nop   

glabel func_80094B58
/* B0BCF8 80094B58 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BCFC 80094B5C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BD00 80094B60 00802825 */  move  $a1, $a0
/* B0BD04 80094B64 3C068014 */  lui   $a2, %hi(D_8013EE80) # $a2, 0x8014
/* B0BD08 80094B68 24C6EE80 */  addiu $a2, %lo(D_8013EE80) # addiu $a2, $a2, -0x1180
/* B0BD0C 80094B6C AFA50038 */  sw    $a1, 0x38($sp)
/* B0BD10 80094B70 27A40024 */  addiu $a0, $sp, 0x24
/* B0BD14 80094B74 0C031AB1 */  jal   func_800C6AC4
/* B0BD18 80094B78 240707E8 */   li    $a3, 2024
/* B0BD1C 80094B7C 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BD20 80094B80 3C188012 */  lui   $t8, %hi(D_80126790) # $t8, 0x8012
/* B0BD24 80094B84 27186790 */  addiu $t8, %lo(D_80126790) # addiu $t8, $t8, 0x6790
/* B0BD28 80094B88 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0BD2C 80094B8C 3C0FDE00 */  lui   $t7, 0xde00
/* B0BD30 80094B90 3C068014 */  lui   $a2, %hi(D_8013EE8C) # $a2, 0x8014
/* B0BD34 80094B94 246E0008 */  addiu $t6, $v1, 8
/* B0BD38 80094B98 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0BD3C 80094B9C 24C6EE8C */  addiu $a2, %lo(D_8013EE8C) # addiu $a2, $a2, -0x1174
/* B0BD40 80094BA0 27A40024 */  addiu $a0, $sp, 0x24
/* B0BD44 80094BA4 240707EC */  li    $a3, 2028
/* B0BD48 80094BA8 AC780004 */  sw    $t8, 4($v1)
/* B0BD4C 80094BAC 0C031AD5 */  jal   func_800C6B54
/* B0BD50 80094BB0 AC6F0000 */   sw    $t7, ($v1)
/* B0BD54 80094BB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BD58 80094BB8 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BD5C 80094BBC 03E00008 */  jr    $ra
/* B0BD60 80094BC0 00000000 */   nop   

glabel func_80094BC4
/* B0BD64 80094BC4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BD68 80094BC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BD6C 80094BCC 00802825 */  move  $a1, $a0
/* B0BD70 80094BD0 3C068014 */  lui   $a2, %hi(D_8013EE98) # $a2, 0x8014
/* B0BD74 80094BD4 24C6EE98 */  addiu $a2, %lo(D_8013EE98) # addiu $a2, $a2, -0x1168
/* B0BD78 80094BD8 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BD7C 80094BDC 27A40024 */  addiu $a0, $sp, 0x24
/* B0BD80 80094BE0 0C031AB1 */  jal   func_800C6AC4
/* B0BD84 80094BE4 240707F8 */   li    $a3, 2040
/* B0BD88 80094BE8 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BD8C 80094BEC 3C188012 */  lui   $t8, %hi(D_80126DC0) # $t8, 0x8012
/* B0BD90 80094BF0 27186DC0 */  addiu $t8, %lo(D_80126DC0) # addiu $t8, $t8, 0x6dc0
/* B0BD94 80094BF4 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0BD98 80094BF8 3C0FDE00 */  lui   $t7, 0xde00
/* B0BD9C 80094BFC 3C08E300 */  lui   $t0, (0xE3001801 >> 16) # lui $t0, 0xe300
/* B0BDA0 80094C00 246E0008 */  addiu $t6, $v1, 8
/* B0BDA4 80094C04 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0BDA8 80094C08 AC780004 */  sw    $t8, 4($v1)
/* B0BDAC 80094C0C AC6F0000 */  sw    $t7, ($v1)
/* B0BDB0 80094C10 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0BDB4 80094C14 35081801 */  ori   $t0, (0xE3001801 & 0xFFFF) # ori $t0, $t0, 0x1801
/* B0BDB8 80094C18 240900C0 */  li    $t1, 192
/* B0BDBC 80094C1C 24790008 */  addiu $t9, $v1, 8
/* B0BDC0 80094C20 3C068014 */  lui   $a2, %hi(D_8013EEA4) # $a2, 0x8014
/* B0BDC4 80094C24 ACB902D0 */  sw    $t9, 0x2d0($a1)
/* B0BDC8 80094C28 24C6EEA4 */  addiu $a2, %lo(D_8013EEA4) # addiu $a2, $a2, -0x115c
/* B0BDCC 80094C2C 27A40024 */  addiu $a0, $sp, 0x24
/* B0BDD0 80094C30 240707FB */  li    $a3, 2043
/* B0BDD4 80094C34 AC690004 */  sw    $t1, 4($v1)
/* B0BDD8 80094C38 0C031AD5 */  jal   func_800C6B54
/* B0BDDC 80094C3C AC680000 */   sw    $t0, ($v1)
/* B0BDE0 80094C40 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BDE4 80094C44 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BDE8 80094C48 03E00008 */  jr    $ra
/* B0BDEC 80094C4C 00000000 */   nop   

glabel func_80094C50
/* B0BDF0 80094C50 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BDF4 80094C54 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BDF8 80094C58 00802825 */  move  $a1, $a0
/* B0BDFC 80094C5C 3C068014 */  lui   $a2, %hi(D_8013EEB0) # $a2, 0x8014
/* B0BE00 80094C60 24C6EEB0 */  addiu $a2, %lo(D_8013EEB0) # addiu $a2, $a2, -0x1150
/* B0BE04 80094C64 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BE08 80094C68 27A40024 */  addiu $a0, $sp, 0x24
/* B0BE0C 80094C6C 0C031AB1 */  jal   func_800C6AC4
/* B0BE10 80094C70 24070808 */   li    $a3, 2056
/* B0BE14 80094C74 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BE18 80094C78 3C188012 */  lui   $t8, %hi(D_80126DF0) # $t8, 0x8012
/* B0BE1C 80094C7C 27186DF0 */  addiu $t8, %lo(D_80126DF0) # addiu $t8, $t8, 0x6df0
/* B0BE20 80094C80 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0BE24 80094C84 3C0FDE00 */  lui   $t7, 0xde00
/* B0BE28 80094C88 3C068014 */  lui   $a2, %hi(D_8013EEBC) # $a2, 0x8014
/* B0BE2C 80094C8C 246E0008 */  addiu $t6, $v1, 8
/* B0BE30 80094C90 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0BE34 80094C94 24C6EEBC */  addiu $a2, %lo(D_8013EEBC) # addiu $a2, $a2, -0x1144
/* B0BE38 80094C98 27A40024 */  addiu $a0, $sp, 0x24
/* B0BE3C 80094C9C 2407080A */  li    $a3, 2058
/* B0BE40 80094CA0 AC780004 */  sw    $t8, 4($v1)
/* B0BE44 80094CA4 0C031AD5 */  jal   func_800C6B54
/* B0BE48 80094CA8 AC6F0000 */   sw    $t7, ($v1)
/* B0BE4C 80094CAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BE50 80094CB0 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BE54 80094CB4 03E00008 */  jr    $ra
/* B0BE58 80094CB8 00000000 */   nop   

glabel func_80094CBC
/* B0BE5C 80094CBC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BE60 80094CC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BE64 80094CC4 00802825 */  move  $a1, $a0
/* B0BE68 80094CC8 3C068014 */  lui   $a2, %hi(D_8013EEC8) # $a2, 0x8014
/* B0BE6C 80094CCC 24C6EEC8 */  addiu $a2, %lo(D_8013EEC8) # addiu $a2, $a2, -0x1138
/* B0BE70 80094CD0 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BE74 80094CD4 27A40024 */  addiu $a0, $sp, 0x24
/* B0BE78 80094CD8 0C031AB1 */  jal   func_800C6AC4
/* B0BE7C 80094CDC 24070826 */   li    $a3, 2086
/* B0BE80 80094CE0 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BE84 80094CE4 3C188012 */  lui   $t8, %hi(D_80126D00) # $t8, 0x8012
/* B0BE88 80094CE8 27186D00 */  addiu $t8, %lo(D_80126D00) # addiu $t8, $t8, 0x6d00
/* B0BE8C 80094CEC 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0BE90 80094CF0 3C0FDE00 */  lui   $t7, 0xde00
/* B0BE94 80094CF4 3C068014 */  lui   $a2, %hi(D_8013EED4) # $a2, 0x8014
/* B0BE98 80094CF8 246E0008 */  addiu $t6, $v1, 8
/* B0BE9C 80094CFC ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0BEA0 80094D00 24C6EED4 */  addiu $a2, %lo(D_8013EED4) # addiu $a2, $a2, -0x112c
/* B0BEA4 80094D04 27A40024 */  addiu $a0, $sp, 0x24
/* B0BEA8 80094D08 2407082A */  li    $a3, 2090
/* B0BEAC 80094D0C AC780004 */  sw    $t8, 4($v1)
/* B0BEB0 80094D10 0C031AD5 */  jal   func_800C6B54
/* B0BEB4 80094D14 AC6F0000 */   sw    $t7, ($v1)
/* B0BEB8 80094D18 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BEBC 80094D1C 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BEC0 80094D20 03E00008 */  jr    $ra
/* B0BEC4 80094D24 00000000 */   nop   

glabel func_80094D28
/* B0BEC8 80094D28 8C830000 */  lw    $v1, ($a0)
/* B0BECC 80094D2C 3C0F8012 */  lui   $t7, %hi(D_80126D00) # $t7, 0x8012
/* B0BED0 80094D30 25EF6D00 */  addiu $t7, %lo(D_80126D00) # addiu $t7, $t7, 0x6d00
/* B0BED4 80094D34 3C0EDE00 */  lui   $t6, 0xde00
/* B0BED8 80094D38 AC6E0000 */  sw    $t6, ($v1)
/* B0BEDC 80094D3C AC6F0004 */  sw    $t7, 4($v1)
/* B0BEE0 80094D40 24620008 */  addiu $v0, $v1, 8
/* B0BEE4 80094D44 03E00008 */  jr    $ra
/* B0BEE8 80094D48 AC820000 */   sw    $v0, ($a0)

glabel func_80094D4C
/* B0BEEC 80094D4C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BEF0 80094D50 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BEF4 80094D54 00802825 */  move  $a1, $a0
/* B0BEF8 80094D58 3C068014 */  lui   $a2, %hi(D_8013EEE0) # $a2, 0x8014
/* B0BEFC 80094D5C 24C6EEE0 */  addiu $a2, %lo(D_8013EEE0) # addiu $a2, $a2, -0x1120
/* B0BF00 80094D60 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BF04 80094D64 27A40024 */  addiu $a0, $sp, 0x24
/* B0BF08 80094D68 0C031AB1 */  jal   func_800C6AC4
/* B0BF0C 80094D6C 24070840 */   li    $a3, 2112
/* B0BF10 80094D70 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BF14 80094D74 3C188012 */  lui   $t8, %hi(D_80126D90) # $t8, 0x8012
/* B0BF18 80094D78 27186D90 */  addiu $t8, %lo(D_80126D90) # addiu $t8, $t8, 0x6d90
/* B0BF1C 80094D7C 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0BF20 80094D80 3C0FDE00 */  lui   $t7, 0xde00
/* B0BF24 80094D84 3C068014 */  lui   $a2, %hi(D_8013EEEC) # $a2, 0x8014
/* B0BF28 80094D88 246E0008 */  addiu $t6, $v1, 8
/* B0BF2C 80094D8C ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0BF30 80094D90 24C6EEEC */  addiu $a2, %lo(D_8013EEEC) # addiu $a2, $a2, -0x1114
/* B0BF34 80094D94 27A40024 */  addiu $a0, $sp, 0x24
/* B0BF38 80094D98 24070844 */  li    $a3, 2116
/* B0BF3C 80094D9C AC780004 */  sw    $t8, 4($v1)
/* B0BF40 80094DA0 0C031AD5 */  jal   func_800C6B54
/* B0BF44 80094DA4 AC6F0000 */   sw    $t7, ($v1)
/* B0BF48 80094DA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BF4C 80094DAC 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BF50 80094DB0 03E00008 */  jr    $ra
/* B0BF54 80094DB4 00000000 */   nop   

glabel func_80094DB8
/* B0BF58 80094DB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0BF5C 80094DBC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BF60 80094DC0 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0BF64 80094DC4 AFA60020 */  sw    $a2, 0x20($sp)
/* B0BF68 80094DC8 AFA70024 */  sw    $a3, 0x24($sp)
/* B0BF6C 80094DCC 0C031B0F */  jal   func_800C6C3C
/* B0BF70 80094DD0 24050018 */   li    $a1, 24
/* B0BF74 80094DD4 8FA4001C */  lw    $a0, 0x1c($sp)
/* B0BF78 80094DD8 8FA50020 */  lw    $a1, 0x20($sp)
/* B0BF7C 80094DDC 3C01F200 */  lui   $at, 0xf200
/* B0BF80 80094DE0 308F0FFF */  andi  $t7, $a0, 0xfff
/* B0BF84 80094DE4 000FC300 */  sll   $t8, $t7, 0xc
/* B0BF88 80094DE8 0301C825 */  or    $t9, $t8, $at
/* B0BF8C 80094DEC 30A80FFF */  andi  $t0, $a1, 0xfff
/* B0BF90 80094DF0 3C0EE800 */  lui   $t6, 0xe800
/* B0BF94 80094DF4 03284825 */  or    $t1, $t9, $t0
/* B0BF98 80094DF8 AC4E0000 */  sw    $t6, ($v0)
/* B0BF9C 80094DFC AC400004 */  sw    $zero, 4($v0)
/* B0BFA0 80094E00 AC490008 */  sw    $t1, 8($v0)
/* B0BFA4 80094E04 8FAA0024 */  lw    $t2, 0x24($sp)
/* B0BFA8 80094E08 8FB80028 */  lw    $t8, 0x28($sp)
/* B0BFAC 80094E0C AC400014 */  sw    $zero, 0x14($v0)
/* B0BFB0 80094E10 254BFFFF */  addiu $t3, $t2, -1
/* B0BFB4 80094E14 000B6080 */  sll   $t4, $t3, 2
/* B0BFB8 80094E18 2719FFFF */  addiu $t9, $t8, -1
/* B0BFBC 80094E1C 00194080 */  sll   $t0, $t9, 2
/* B0BFC0 80094E20 01846821 */  addu  $t5, $t4, $a0
/* B0BFC4 80094E24 31AE0FFF */  andi  $t6, $t5, 0xfff
/* B0BFC8 80094E28 00A84821 */  addu  $t1, $a1, $t0
/* B0BFCC 80094E2C 312A0FFF */  andi  $t2, $t1, 0xfff
/* B0BFD0 80094E30 000E7B00 */  sll   $t7, $t6, 0xc
/* B0BFD4 80094E34 01EA5825 */  or    $t3, $t7, $t2
/* B0BFD8 80094E38 3C0CDF00 */  lui   $t4, 0xdf00
/* B0BFDC 80094E3C AC4B000C */  sw    $t3, 0xc($v0)
/* B0BFE0 80094E40 AC4C0010 */  sw    $t4, 0x10($v0)
/* B0BFE4 80094E44 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BFE8 80094E48 27BD0018 */  addiu $sp, $sp, 0x18
/* B0BFEC 80094E4C 03E00008 */  jr    $ra
/* B0BFF0 80094E50 00000000 */   nop   

glabel func_80094E54
/* B0BFF4 80094E54 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B0BFF8 80094E58 AFBF001C */  sw    $ra, 0x1c($sp)
/* B0BFFC 80094E5C AFA00010 */  sw    $zero, 0x10($sp)
/* B0C000 80094E60 0C02536E */  jal   func_80094DB8
/* B0C004 80094E64 00003825 */   move  $a3, $zero
/* B0C008 80094E68 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0C00C 80094E6C 27BD0020 */  addiu $sp, $sp, 0x20
/* B0C010 80094E70 03E00008 */  jr    $ra
/* B0C014 80094E74 00000000 */   nop   

glabel func_80094E78
/* B0C018 80094E78 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B0C01C 80094E7C AFBF001C */  sw    $ra, 0x1c($sp)
/* B0C020 80094E80 AFA00010 */  sw    $zero, 0x10($sp)
/* B0C024 80094E84 0C0253A7 */  jal   func_80094E9C
/* B0C028 80094E88 00003825 */   move  $a3, $zero
/* B0C02C 80094E8C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0C030 80094E90 27BD0020 */  addiu $sp, $sp, 0x20
/* B0C034 80094E94 03E00008 */  jr    $ra
/* B0C038 80094E98 00000000 */   nop   

glabel func_80094E9C
/* B0C03C 80094E9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0C040 80094EA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0C044 80094EA4 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0C048 80094EA8 AFA70024 */  sw    $a3, 0x24($sp)
/* B0C04C 80094EAC 24050018 */  li    $a1, 24
/* B0C050 80094EB0 0C031A73 */  jal   Graph_Alloc
/* B0C054 80094EB4 AFA60020 */   sw    $a2, 0x20($sp)
/* B0C058 80094EB8 8FA3001C */  lw    $v1, 0x1c($sp)
/* B0C05C 80094EBC 8FA60020 */  lw    $a2, 0x20($sp)
/* B0C060 80094EC0 3C01F200 */  lui   $at, 0xf200
/* B0C064 80094EC4 306307FF */  andi  $v1, $v1, 0x7ff
/* B0C068 80094EC8 306F0FFF */  andi  $t7, $v1, 0xfff
/* B0C06C 80094ECC 000FC300 */  sll   $t8, $t7, 0xc
/* B0C070 80094ED0 30C607FF */  andi  $a2, $a2, 0x7ff
/* B0C074 80094ED4 30C80FFF */  andi  $t0, $a2, 0xfff
/* B0C078 80094ED8 0301C825 */  or    $t9, $t8, $at
/* B0C07C 80094EDC 3C0EE800 */  lui   $t6, 0xe800
/* B0C080 80094EE0 03284825 */  or    $t1, $t9, $t0
/* B0C084 80094EE4 AC4E0000 */  sw    $t6, ($v0)
/* B0C088 80094EE8 AC400004 */  sw    $zero, 4($v0)
/* B0C08C 80094EEC AC490008 */  sw    $t1, 8($v0)
/* B0C090 80094EF0 8FAA0024 */  lw    $t2, 0x24($sp)
/* B0C094 80094EF4 8FB80028 */  lw    $t8, 0x28($sp)
/* B0C098 80094EF8 AC400014 */  sw    $zero, 0x14($v0)
/* B0C09C 80094EFC 254BFFFF */  addiu $t3, $t2, -1
/* B0C0A0 80094F00 000B6080 */  sll   $t4, $t3, 2
/* B0C0A4 80094F04 2719FFFF */  addiu $t9, $t8, -1
/* B0C0A8 80094F08 00194080 */  sll   $t0, $t9, 2
/* B0C0AC 80094F0C 01836821 */  addu  $t5, $t4, $v1
/* B0C0B0 80094F10 31AE0FFF */  andi  $t6, $t5, 0xfff
/* B0C0B4 80094F14 00C84821 */  addu  $t1, $a2, $t0
/* B0C0B8 80094F18 312A0FFF */  andi  $t2, $t1, 0xfff
/* B0C0BC 80094F1C 000E7B00 */  sll   $t7, $t6, 0xc
/* B0C0C0 80094F20 01EA5825 */  or    $t3, $t7, $t2
/* B0C0C4 80094F24 3C0CDF00 */  lui   $t4, 0xdf00
/* B0C0C8 80094F28 AC4B000C */  sw    $t3, 0xc($v0)
/* B0C0CC 80094F2C AC4C0010 */  sw    $t4, 0x10($v0)
/* B0C0D0 80094F30 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0C0D4 80094F34 27BD0018 */  addiu $sp, $sp, 0x18
/* B0C0D8 80094F38 03E00008 */  jr    $ra
/* B0C0DC 80094F3C 00000000 */   nop   

glabel func_80094F40
/* B0C0E0 80094F40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0C0E4 80094F44 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0C0E8 80094F48 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0C0EC 80094F4C 24050028 */  li    $a1, 40
/* B0C0F0 80094F50 AFA60020 */  sw    $a2, 0x20($sp)
/* B0C0F4 80094F54 0C031A73 */  jal   Graph_Alloc
/* B0C0F8 80094F58 AFA70024 */   sw    $a3, 0x24($sp)
/* B0C0FC 80094F5C 8FA60020 */  lw    $a2, 0x20($sp)
/* B0C100 80094F60 8FA70024 */  lw    $a3, 0x24($sp)
/* B0C104 80094F64 8FA30034 */  lw    $v1, 0x34($sp)
/* B0C108 80094F68 30C607FF */  andi  $a2, $a2, 0x7ff
/* B0C10C 80094F6C 30CE0FFF */  andi  $t6, $a2, 0xfff
/* B0C110 80094F70 8FA40038 */  lw    $a0, 0x38($sp)
/* B0C114 80094F74 000E7B00 */  sll   $t7, $t6, 0xc
/* B0C118 80094F78 3C09F200 */  lui   $t1, 0xf200
/* B0C11C 80094F7C 30E707FF */  andi  $a3, $a3, 0x7ff
/* B0C120 80094F80 30F90FFF */  andi  $t9, $a3, 0xfff
/* B0C124 80094F84 01E9C025 */  or    $t8, $t7, $t1
/* B0C128 80094F88 3C08E800 */  lui   $t0, 0xe800
/* B0C12C 80094F8C 03195025 */  or    $t2, $t8, $t9
/* B0C130 80094F90 AC480000 */  sw    $t0, ($v0)
/* B0C134 80094F94 AC400004 */  sw    $zero, 4($v0)
/* B0C138 80094F98 AC4A0008 */  sw    $t2, 8($v0)
/* B0C13C 80094F9C 8FAE0028 */  lw    $t6, 0x28($sp)
/* B0C140 80094FA0 8FAB001C */  lw    $t3, 0x1c($sp)
/* B0C144 80094FA4 306307FF */  andi  $v1, $v1, 0x7ff
/* B0C148 80094FA8 25CFFFFF */  addiu $t7, $t6, -1
/* B0C14C 80094FAC 8FAE002C */  lw    $t6, 0x2c($sp)
/* B0C150 80094FB0 000FC080 */  sll   $t8, $t7, 2
/* B0C154 80094FB4 00D8C821 */  addu  $t9, $a2, $t8
/* B0C158 80094FB8 316C0007 */  andi  $t4, $t3, 7
/* B0C15C 80094FBC 332A0FFF */  andi  $t2, $t9, 0xfff
/* B0C160 80094FC0 000A5B00 */  sll   $t3, $t2, 0xc
/* B0C164 80094FC4 000C6E00 */  sll   $t5, $t4, 0x18
/* B0C168 80094FC8 25CFFFFF */  addiu $t7, $t6, -1
/* B0C16C 80094FCC 000FC080 */  sll   $t8, $t7, 2
/* B0C170 80094FD0 01AB6025 */  or    $t4, $t5, $t3
/* B0C174 80094FD4 00F8C821 */  addu  $t9, $a3, $t8
/* B0C178 80094FD8 306B0FFF */  andi  $t3, $v1, 0xfff
/* B0C17C 80094FDC 332A0FFF */  andi  $t2, $t9, 0xfff
/* B0C180 80094FE0 000B7300 */  sll   $t6, $t3, 0xc
/* B0C184 80094FE4 308407FF */  andi  $a0, $a0, 0x7ff
/* B0C188 80094FE8 30980FFF */  andi  $t8, $a0, 0xfff
/* B0C18C 80094FEC 01C97825 */  or    $t7, $t6, $t1
/* B0C190 80094FF0 018A6825 */  or    $t5, $t4, $t2
/* B0C194 80094FF4 01F8C825 */  or    $t9, $t7, $t8
/* B0C198 80094FF8 AC4D000C */  sw    $t5, 0xc($v0)
/* B0C19C 80094FFC AC400014 */  sw    $zero, 0x14($v0)
/* B0C1A0 80095000 AC480010 */  sw    $t0, 0x10($v0)
/* B0C1A4 80095004 AC590018 */  sw    $t9, 0x18($v0)
/* B0C1A8 80095008 8FAB003C */  lw    $t3, 0x3c($sp)
/* B0C1AC 8009500C 8FAC0030 */  lw    $t4, 0x30($sp)
/* B0C1B0 80095010 256EFFFF */  addiu $t6, $t3, -1
/* B0C1B4 80095014 8FAB0040 */  lw    $t3, 0x40($sp)
/* B0C1B8 80095018 000E7880 */  sll   $t7, $t6, 2
/* B0C1BC 8009501C 006FC021 */  addu  $t8, $v1, $t7
/* B0C1C0 80095020 318A0007 */  andi  $t2, $t4, 7
/* B0C1C4 80095024 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C1C8 80095028 256EFFFF */  addiu $t6, $t3, -1
/* B0C1CC 8009502C 000E7880 */  sll   $t7, $t6, 2
/* B0C1D0 80095030 00196300 */  sll   $t4, $t9, 0xc
/* B0C1D4 80095034 000A6E00 */  sll   $t5, $t2, 0x18
/* B0C1D8 80095038 01AC5025 */  or    $t2, $t5, $t4
/* B0C1DC 8009503C 008FC021 */  addu  $t8, $a0, $t7
/* B0C1E0 80095040 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C1E4 80095044 01596825 */  or    $t5, $t2, $t9
/* B0C1E8 80095048 3C0CDF00 */  lui   $t4, 0xdf00
/* B0C1EC 8009504C AC4D001C */  sw    $t5, 0x1c($v0)
/* B0C1F0 80095050 AC4C0020 */  sw    $t4, 0x20($v0)
/* B0C1F4 80095054 AC400024 */  sw    $zero, 0x24($v0)
/* B0C1F8 80095058 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0C1FC 8009505C 27BD0018 */  addiu $sp, $sp, 0x18
/* B0C200 80095060 03E00008 */  jr    $ra
/* B0C204 80095064 00000000 */   nop   

glabel func_80095068
/* B0C208 80095068 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0C20C 8009506C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0C210 80095070 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0C214 80095074 24050030 */  li    $a1, 48
/* B0C218 80095078 AFA60020 */  sw    $a2, 0x20($sp)
/* B0C21C 8009507C 0C031A73 */  jal   Graph_Alloc
/* B0C220 80095080 AFA70024 */   sw    $a3, 0x24($sp)
/* B0C224 80095084 8FA60020 */  lw    $a2, 0x20($sp)
/* B0C228 80095088 8FA70024 */  lw    $a3, 0x24($sp)
/* B0C22C 8009508C 8FA30034 */  lw    $v1, 0x34($sp)
/* B0C230 80095090 30C607FF */  andi  $a2, $a2, 0x7ff
/* B0C234 80095094 30CE0FFF */  andi  $t6, $a2, 0xfff
/* B0C238 80095098 8FA40038 */  lw    $a0, 0x38($sp)
/* B0C23C 8009509C 000E7B00 */  sll   $t7, $t6, 0xc
/* B0C240 800950A0 3C09F200 */  lui   $t1, 0xf200
/* B0C244 800950A4 30E707FF */  andi  $a3, $a3, 0x7ff
/* B0C248 800950A8 30F90FFF */  andi  $t9, $a3, 0xfff
/* B0C24C 800950AC 01E9C025 */  or    $t8, $t7, $t1
/* B0C250 800950B0 3C08E800 */  lui   $t0, 0xe800
/* B0C254 800950B4 03195025 */  or    $t2, $t8, $t9
/* B0C258 800950B8 AC480000 */  sw    $t0, ($v0)
/* B0C25C 800950BC AC400004 */  sw    $zero, 4($v0)
/* B0C260 800950C0 AC4A0008 */  sw    $t2, 8($v0)
/* B0C264 800950C4 8FAE0028 */  lw    $t6, 0x28($sp)
/* B0C268 800950C8 8FAB001C */  lw    $t3, 0x1c($sp)
/* B0C26C 800950CC 306307FF */  andi  $v1, $v1, 0x7ff
/* B0C270 800950D0 25CFFFFF */  addiu $t7, $t6, -1
/* B0C274 800950D4 8FAE002C */  lw    $t6, 0x2c($sp)
/* B0C278 800950D8 000FC080 */  sll   $t8, $t7, 2
/* B0C27C 800950DC 00D8C821 */  addu  $t9, $a2, $t8
/* B0C280 800950E0 316C0007 */  andi  $t4, $t3, 7
/* B0C284 800950E4 332A0FFF */  andi  $t2, $t9, 0xfff
/* B0C288 800950E8 000A5B00 */  sll   $t3, $t2, 0xc
/* B0C28C 800950EC 000C6E00 */  sll   $t5, $t4, 0x18
/* B0C290 800950F0 25CFFFFF */  addiu $t7, $t6, -1
/* B0C294 800950F4 000FC080 */  sll   $t8, $t7, 2
/* B0C298 800950F8 01AB6025 */  or    $t4, $t5, $t3
/* B0C29C 800950FC 00F8C821 */  addu  $t9, $a3, $t8
/* B0C2A0 80095100 306B0FFF */  andi  $t3, $v1, 0xfff
/* B0C2A4 80095104 332A0FFF */  andi  $t2, $t9, 0xfff
/* B0C2A8 80095108 000B7300 */  sll   $t6, $t3, 0xc
/* B0C2AC 8009510C 308407FF */  andi  $a0, $a0, 0x7ff
/* B0C2B0 80095110 30980FFF */  andi  $t8, $a0, 0xfff
/* B0C2B4 80095114 01C97825 */  or    $t7, $t6, $t1
/* B0C2B8 80095118 018A6825 */  or    $t5, $t4, $t2
/* B0C2BC 8009511C 01F8C825 */  or    $t9, $t7, $t8
/* B0C2C0 80095120 AC4D000C */  sw    $t5, 0xc($v0)
/* B0C2C4 80095124 AC400014 */  sw    $zero, 0x14($v0)
/* B0C2C8 80095128 AC480010 */  sw    $t0, 0x10($v0)
/* B0C2CC 8009512C AC590018 */  sw    $t9, 0x18($v0)
/* B0C2D0 80095130 8FAB003C */  lw    $t3, 0x3c($sp)
/* B0C2D4 80095134 8FAC0030 */  lw    $t4, 0x30($sp)
/* B0C2D8 80095138 256EFFFF */  addiu $t6, $t3, -1
/* B0C2DC 8009513C 8FAB0040 */  lw    $t3, 0x40($sp)
/* B0C2E0 80095140 000E7880 */  sll   $t7, $t6, 2
/* B0C2E4 80095144 006FC021 */  addu  $t8, $v1, $t7
/* B0C2E8 80095148 318A0007 */  andi  $t2, $t4, 7
/* B0C2EC 8009514C 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C2F0 80095150 256EFFFF */  addiu $t6, $t3, -1
/* B0C2F4 80095154 000E7880 */  sll   $t7, $t6, 2
/* B0C2F8 80095158 00196300 */  sll   $t4, $t9, 0xc
/* B0C2FC 8009515C 000A6E00 */  sll   $t5, $t2, 0x18
/* B0C300 80095160 01AC5025 */  or    $t2, $t5, $t4
/* B0C304 80095164 008FC021 */  addu  $t8, $a0, $t7
/* B0C308 80095168 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C30C 8009516C 01596825 */  or    $t5, $t2, $t9
/* B0C310 80095170 3C0CFB00 */  lui   $t4, 0xfb00
/* B0C314 80095174 AC4D001C */  sw    $t5, 0x1c($v0)
/* B0C318 80095178 AC4C0020 */  sw    $t4, 0x20($v0)
/* B0C31C 8009517C 8FB80048 */  lw    $t8, 0x48($sp)
/* B0C320 80095180 8FAE0044 */  lw    $t6, 0x44($sp)
/* B0C324 80095184 8FAC004C */  lw    $t4, 0x4c($sp)
/* B0C328 80095188 330A00FF */  andi  $t2, $t8, 0xff
/* B0C32C 8009518C 000ACC00 */  sll   $t9, $t2, 0x10
/* B0C330 80095190 8FAA0050 */  lw    $t2, 0x50($sp)
/* B0C334 80095194 000E7E00 */  sll   $t7, $t6, 0x18
/* B0C338 80095198 01F96825 */  or    $t5, $t7, $t9
/* B0C33C 8009519C 318B00FF */  andi  $t3, $t4, 0xff
/* B0C340 800951A0 000B7200 */  sll   $t6, $t3, 8
/* B0C344 800951A4 01AEC025 */  or    $t8, $t5, $t6
/* B0C348 800951A8 314F00FF */  andi  $t7, $t2, 0xff
/* B0C34C 800951AC 030FC825 */  or    $t9, $t8, $t7
/* B0C350 800951B0 3C0CDF00 */  lui   $t4, 0xdf00
/* B0C354 800951B4 AC590024 */  sw    $t9, 0x24($v0)
/* B0C358 800951B8 AC4C0028 */  sw    $t4, 0x28($v0)
/* B0C35C 800951BC AC40002C */  sw    $zero, 0x2c($v0)
/* B0C360 800951C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0C364 800951C4 27BD0018 */  addiu $sp, $sp, 0x18
/* B0C368 800951C8 03E00008 */  jr    $ra
/* B0C36C 800951CC 00000000 */   nop   

glabel func_800951D0
/* B0C370 800951D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0C374 800951D4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0C378 800951D8 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0C37C 800951DC AFA60020 */  sw    $a2, 0x20($sp)
/* B0C380 800951E0 AFA70024 */  sw    $a3, 0x24($sp)
/* B0C384 800951E4 0C031A73 */  jal   Graph_Alloc
/* B0C388 800951E8 24050010 */   li    $a1, 16
/* B0C38C 800951EC 3C0EFB00 */  lui   $t6, 0xfb00
/* B0C390 800951F0 AC4E0000 */  sw    $t6, ($v0)
/* B0C394 800951F4 8FB8001C */  lw    $t8, 0x1c($sp)
/* B0C398 800951F8 8FA80020 */  lw    $t0, 0x20($sp)
/* B0C39C 800951FC 8FAC0024 */  lw    $t4, 0x24($sp)
/* B0C3A0 80095200 0018CE00 */  sll   $t9, $t8, 0x18
/* B0C3A4 80095204 8FB80028 */  lw    $t8, 0x28($sp)
/* B0C3A8 80095208 310900FF */  andi  $t1, $t0, 0xff
/* B0C3AC 8009520C 00095400 */  sll   $t2, $t1, 0x10
/* B0C3B0 80095210 318D00FF */  andi  $t5, $t4, 0xff
/* B0C3B4 80095214 000D7200 */  sll   $t6, $t5, 8
/* B0C3B8 80095218 032A5825 */  or    $t3, $t9, $t2
/* B0C3BC 8009521C 016E7825 */  or    $t7, $t3, $t6
/* B0C3C0 80095220 330800FF */  andi  $t0, $t8, 0xff
/* B0C3C4 80095224 01E84825 */  or    $t1, $t7, $t0
/* B0C3C8 80095228 3C19DF00 */  lui   $t9, 0xdf00
/* B0C3CC 8009522C AC490004 */  sw    $t1, 4($v0)
/* B0C3D0 80095230 AC590008 */  sw    $t9, 8($v0)
/* B0C3D4 80095234 AC40000C */  sw    $zero, 0xc($v0)
/* B0C3D8 80095238 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0C3DC 8009523C 27BD0018 */  addiu $sp, $sp, 0x18
/* B0C3E0 80095240 03E00008 */  jr    $ra
/* B0C3E4 80095244 00000000 */   nop   

glabel func_80095248
/* B0C3E8 80095248 27BDFF38 */  addiu $sp, $sp, -0xc8
/* B0C3EC 8009524C AFA500CC */  sw    $a1, 0xcc($sp)
/* B0C3F0 80095250 AFA600D0 */  sw    $a2, 0xd0($sp)
/* B0C3F4 80095254 00802825 */  move  $a1, $a0
/* B0C3F8 80095258 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0C3FC 8009525C AFA400C8 */  sw    $a0, 0xc8($sp)
/* B0C400 80095260 AFA700D4 */  sw    $a3, 0xd4($sp)
/* B0C404 80095264 3C068014 */  lui   $a2, %hi(D_8013EEF8) # $a2, 0x8014
/* B0C408 80095268 24C6EEF8 */  addiu $a2, %lo(D_8013EEF8) # addiu $a2, $a2, -0x1108
/* B0C40C 8009526C 24070952 */  li    $a3, 2386
/* B0C410 80095270 AFA500C8 */  sw    $a1, 0xc8($sp)
/* B0C414 80095274 0C031AB1 */  jal   func_800C6AC4
/* B0C418 80095278 27A400B4 */   addiu $a0, $sp, 0xb4
/* B0C41C 8009527C 8FA500C8 */  lw    $a1, 0xc8($sp)
/* B0C420 80095280 93AC00CF */  lbu   $t4, 0xcf($sp)
/* B0C424 80095284 3C048012 */  lui   $a0, %hi(D_80126FD0) # $a0, 0x8012
/* B0C428 80095288 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C42C 8009528C 24846FD0 */  addiu $a0, %lo(D_80126FD0) # addiu $a0, $a0, 0x6fd0
/* B0C430 80095290 3C06DE00 */  lui   $a2, 0xde00
/* B0C434 80095294 244E0008 */  addiu $t6, $v0, 8
/* B0C438 80095298 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0C43C 8009529C AC440004 */  sw    $a0, 4($v0)
/* B0C440 800952A0 AC460000 */  sw    $a2, ($v0)
/* B0C444 800952A4 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* B0C448 800952A8 3C098013 */  lui   $t1, %hi(D_8012D270) # $t1, 0x8013
/* B0C44C 800952AC 2529D270 */  addiu $t1, %lo(D_8012D270) # addiu $t1, $t1, -0x2d90
/* B0C450 800952B0 244F0008 */  addiu $t7, $v0, 8
/* B0C454 800952B4 ACAF02D0 */  sw    $t7, 0x2d0($a1)
/* B0C458 800952B8 AC440004 */  sw    $a0, 4($v0)
/* B0C45C 800952BC AC460000 */  sw    $a2, ($v0)
/* B0C460 800952C0 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0C464 800952C4 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B0C468 800952C8 44810000 */  mtc1  $at, $f0
/* B0C46C 800952CC 24580008 */  addiu $t8, $v0, 8
/* B0C470 800952D0 ACB802B0 */  sw    $t8, 0x2b0($a1)
/* B0C474 800952D4 AC440004 */  sw    $a0, 4($v0)
/* B0C478 800952D8 AC460000 */  sw    $a2, ($v0)
/* B0C47C 800952DC 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C480 800952E0 3C04ED00 */  lui   $a0, 0xed00
/* B0C484 800952E4 3C068013 */  lui   $a2, %hi(D_8012D274) # $a2, 0x8013
/* B0C488 800952E8 24590008 */  addiu $t9, $v0, 8
/* B0C48C 800952EC ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0C490 800952F0 AC440000 */  sw    $a0, ($v0)
/* B0C494 800952F4 8D2E0000 */  lw    $t6, ($t1)
/* B0C498 800952F8 24C6D274 */  addiu $a2, %lo(D_8012D274) # addiu $a2, $a2, -0x2d8c
/* B0C49C 800952FC 8CCF0000 */  lw    $t7, ($a2)
/* B0C4A0 80095300 448E2000 */  mtc1  $t6, $f4
/* B0C4A4 80095304 3C0BFF10 */  li    $t3, 0xFF100000 # 0.000000
/* B0C4A8 80095308 448F8000 */  mtc1  $t7, $f16
/* B0C4AC 8009530C 468021A0 */  cvt.s.w $f6, $f4
/* B0C4B0 80095310 3C088017 */  lui   $t0, %hi(D_801759C0) # $t0, 0x8017
/* B0C4B4 80095314 250859C0 */  addiu $t0, %lo(D_801759C0) # addiu $t0, $t0, 0x59c0
/* B0C4B8 80095318 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B0C4BC 8009531C 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* B0C4C0 80095320 468084A0 */  cvt.s.w $f18, $f16
/* B0C4C4 80095324 46003202 */  mul.s $f8, $f6, $f0
/* B0C4C8 80095328 4600428D */  trunc.w.s $f10, $f8
/* B0C4CC 8009532C 46009102 */  mul.s $f4, $f18, $f0
/* B0C4D0 80095330 44185000 */  mfc1  $t8, $f10
/* B0C4D4 80095334 00000000 */  nop   
/* B0C4D8 80095338 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C4DC 8009533C 4600218D */  trunc.w.s $f6, $f4
/* B0C4E0 80095340 00197300 */  sll   $t6, $t9, 0xc
/* B0C4E4 80095344 44193000 */  mfc1  $t9, $f6
/* B0C4E8 80095348 00000000 */  nop   
/* B0C4EC 8009534C 332F0FFF */  andi  $t7, $t9, 0xfff
/* B0C4F0 80095350 01CFC025 */  or    $t8, $t6, $t7
/* B0C4F4 80095354 AC580004 */  sw    $t8, 4($v0)
/* B0C4F8 80095358 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* B0C4FC 8009535C 24590008 */  addiu $t9, $v0, 8
/* B0C500 80095360 ACB902D0 */  sw    $t9, 0x2d0($a1)
/* B0C504 80095364 AC440000 */  sw    $a0, ($v0)
/* B0C508 80095368 8D2E0000 */  lw    $t6, ($t1)
/* B0C50C 8009536C 8CCF0000 */  lw    $t7, ($a2)
/* B0C510 80095370 448E4000 */  mtc1  $t6, $f8
/* B0C514 80095374 448F2000 */  mtc1  $t7, $f4
/* B0C518 80095378 468042A0 */  cvt.s.w $f10, $f8
/* B0C51C 8009537C 468021A0 */  cvt.s.w $f6, $f4
/* B0C520 80095380 46005402 */  mul.s $f16, $f10, $f0
/* B0C524 80095384 4600848D */  trunc.w.s $f18, $f16
/* B0C528 80095388 46003202 */  mul.s $f8, $f6, $f0
/* B0C52C 8009538C 44189000 */  mfc1  $t8, $f18
/* B0C530 80095390 00000000 */  nop   
/* B0C534 80095394 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C538 80095398 4600428D */  trunc.w.s $f10, $f8
/* B0C53C 8009539C 00197300 */  sll   $t6, $t9, 0xc
/* B0C540 800953A0 44195000 */  mfc1  $t9, $f10
/* B0C544 800953A4 00000000 */  nop   
/* B0C548 800953A8 332F0FFF */  andi  $t7, $t9, 0xfff
/* B0C54C 800953AC 01CFC025 */  or    $t8, $t6, $t7
/* B0C550 800953B0 AC580004 */  sw    $t8, 4($v0)
/* B0C554 800953B4 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0C558 800953B8 24590008 */  addiu $t9, $v0, 8
/* B0C55C 800953BC ACB902B0 */  sw    $t9, 0x2b0($a1)
/* B0C560 800953C0 AC440000 */  sw    $a0, ($v0)
/* B0C564 800953C4 8D2E0000 */  lw    $t6, ($t1)
/* B0C568 800953C8 8CCF0000 */  lw    $t7, ($a2)
/* B0C56C 800953CC 3C04FE00 */  li    $a0, 0xFE000000 # 0.000000
/* B0C570 800953D0 448E8000 */  mtc1  $t6, $f16
/* B0C574 800953D4 448F4000 */  mtc1  $t7, $f8
/* B0C578 800953D8 468084A0 */  cvt.s.w $f18, $f16
/* B0C57C 800953DC 468042A0 */  cvt.s.w $f10, $f8
/* B0C580 800953E0 46009102 */  mul.s $f4, $f18, $f0
/* B0C584 800953E4 4600218D */  trunc.w.s $f6, $f4
/* B0C588 800953E8 46005402 */  mul.s $f16, $f10, $f0
/* B0C58C 800953EC 44183000 */  mfc1  $t8, $f6
/* B0C590 800953F0 00000000 */  nop   
/* B0C594 800953F4 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C598 800953F8 4600848D */  trunc.w.s $f18, $f16
/* B0C59C 800953FC 00197300 */  sll   $t6, $t9, 0xc
/* B0C5A0 80095400 44199000 */  mfc1  $t9, $f18
/* B0C5A4 80095404 00000000 */  nop   
/* B0C5A8 80095408 332F0FFF */  andi  $t7, $t9, 0xfff
/* B0C5AC 8009540C 01CFC025 */  or    $t8, $t6, $t7
/* B0C5B0 80095410 AC580004 */  sw    $t8, 4($v0)
/* B0C5B4 80095414 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C5B8 80095418 24590008 */  addiu $t9, $v0, 8
/* B0C5BC 8009541C ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0C5C0 80095420 8D2E0000 */  lw    $t6, ($t1)
/* B0C5C4 80095424 25CFFFFF */  addiu $t7, $t6, -1
/* B0C5C8 80095428 31F80FFF */  andi  $t8, $t7, 0xfff
/* B0C5CC 8009542C 030BC825 */  or    $t9, $t8, $t3
/* B0C5D0 80095430 AC590000 */  sw    $t9, ($v0)
/* B0C5D4 80095434 8CAE02DC */  lw    $t6, 0x2dc($a1)
/* B0C5D8 80095438 AC4E0004 */  sw    $t6, 4($v0)
/* B0C5DC 8009543C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C5E0 80095440 244F0008 */  addiu $t7, $v0, 8
/* B0C5E4 80095444 ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B0C5E8 80095448 8D380000 */  lw    $t8, ($t1)
/* B0C5EC 8009544C 2719FFFF */  addiu $t9, $t8, -1
/* B0C5F0 80095450 332E0FFF */  andi  $t6, $t9, 0xfff
/* B0C5F4 80095454 01CB7825 */  or    $t7, $t6, $t3
/* B0C5F8 80095458 AC4F0000 */  sw    $t7, ($v0)
/* B0C5FC 8009545C 8CB802DC */  lw    $t8, 0x2dc($a1)
/* B0C600 80095460 AC580004 */  sw    $t8, 4($v0)
/* B0C604 80095464 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* B0C608 80095468 24590008 */  addiu $t9, $v0, 8
/* B0C60C 8009546C ACB902D0 */  sw    $t9, 0x2d0($a1)
/* B0C610 80095470 8D2E0000 */  lw    $t6, ($t1)
/* B0C614 80095474 25CFFFFF */  addiu $t7, $t6, -1
/* B0C618 80095478 31F80FFF */  andi  $t8, $t7, 0xfff
/* B0C61C 8009547C 030BC825 */  or    $t9, $t8, $t3
/* B0C620 80095480 AC590000 */  sw    $t9, ($v0)
/* B0C624 80095484 8CAE02DC */  lw    $t6, 0x2dc($a1)
/* B0C628 80095488 AC4E0004 */  sw    $t6, 4($v0)
/* B0C62C 8009548C 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0C630 80095490 244F0008 */  addiu $t7, $v0, 8
/* B0C634 80095494 ACAF02B0 */  sw    $t7, 0x2b0($a1)
/* B0C638 80095498 8D380000 */  lw    $t8, ($t1)
/* B0C63C 8009549C 2719FFFF */  addiu $t9, $t8, -1
/* B0C640 800954A0 332E0FFF */  andi  $t6, $t9, 0xfff
/* B0C644 800954A4 01CB7825 */  or    $t7, $t6, $t3
/* B0C648 800954A8 AC4F0000 */  sw    $t7, ($v0)
/* B0C64C 800954AC 8CB802DC */  lw    $t8, 0x2dc($a1)
/* B0C650 800954B0 AC580004 */  sw    $t8, 4($v0)
/* B0C654 800954B4 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C658 800954B8 24590008 */  addiu $t9, $v0, 8
/* B0C65C 800954BC ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0C660 800954C0 AC480004 */  sw    $t0, 4($v0)
/* B0C664 800954C4 AC440000 */  sw    $a0, ($v0)
/* B0C668 800954C8 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* B0C66C 800954CC 244E0008 */  addiu $t6, $v0, 8
/* B0C670 800954D0 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0C674 800954D4 AC480004 */  sw    $t0, 4($v0)
/* B0C678 800954D8 AC440000 */  sw    $a0, ($v0)
/* B0C67C 800954DC 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0C680 800954E0 3C0E8016 */  lui   $t6, %hi(D_80161490) # $t6, 0x8016
/* B0C684 800954E4 244F0008 */  addiu $t7, $v0, 8
/* B0C688 800954E8 ACAF02B0 */  sw    $t7, 0x2b0($a1)
/* B0C68C 800954EC AC480004 */  sw    $t0, 4($v0)
/* B0C690 800954F0 AC440000 */  sw    $a0, ($v0)
/* B0C694 800954F4 8C780000 */  lw    $t8, ($v1)
/* B0C698 800954F8 87190190 */  lh    $t9, 0x190($t8)
/* B0C69C 800954FC 2B210002 */  slti  $at, $t9, 2
/* B0C6A0 80095500 10200113 */  beqz  $at, .L80095950
/* B0C6A4 80095504 00000000 */   nop   
/* B0C6A8 80095508 8DCE1490 */  lw    $t6, %lo(D_80161490)($t6)
/* B0C6AC 8009550C 29C10002 */  slti  $at, $t6, 2
/* B0C6B0 80095510 1020010F */  beqz  $at, .L80095950
/* B0C6B4 80095514 00000000 */   nop   
/* B0C6B8 80095518 AFA500C8 */  sw    $a1, 0xc8($sp)
/* B0C6BC 8009551C AFA8002C */  sw    $t0, 0x2c($sp)
/* B0C6C0 80095520 0C02CE3F */  jal   func_800B38FC
/* B0C6C4 80095524 A3AC00CF */   sb    $t4, 0xcf($sp)
/* B0C6C8 80095528 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B0C6CC 8009552C 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* B0C6D0 80095530 8C640000 */  lw    $a0, ($v1)
/* B0C6D4 80095534 24060010 */  li    $a2, 16
/* B0C6D8 80095538 3C098013 */  lui   $t1, %hi(D_8012D270) # $t1, 0x8013
/* B0C6DC 8009553C 848F1074 */  lh    $t7, 0x1074($a0)
/* B0C6E0 80095540 2529D270 */  addiu $t1, %lo(D_8012D270) # addiu $t1, $t1, -0x2d90
/* B0C6E4 80095544 8FA500C8 */  lw    $a1, 0xc8($sp)
/* B0C6E8 80095548 8FA8002C */  lw    $t0, 0x2c($sp)
/* B0C6EC 8009554C 3C0BFF10 */  lui   $t3, 0xff10
/* B0C6F0 80095550 93AC00CF */  lbu   $t4, 0xcf($sp)
/* B0C6F4 80095554 14CF0041 */  bne   $a2, $t7, .L8009565C
/* B0C6F8 80095558 00405025 */   move  $t2, $v0
/* B0C6FC 8009555C 84981092 */  lh    $t8, 0x1092($a0)
/* B0C700 80095560 24070003 */  li    $a3, 3
/* B0C704 80095564 50D80020 */  beql  $a2, $t8, .L800955E8
/* B0C708 80095568 84861076 */   lh    $a2, 0x1076($a0)
/* B0C70C 8009556C A4871076 */  sh    $a3, 0x1076($a0)
/* B0C710 80095570 8C790000 */  lw    $t9, ($v1)
/* B0C714 80095574 A7271078 */  sh    $a3, 0x1078($t9)
/* B0C718 80095578 8C6E0000 */  lw    $t6, ($v1)
/* B0C71C 8009557C A5C0107A */  sh    $zero, 0x107a($t6)
/* B0C720 80095580 8C6F0000 */  lw    $t7, ($v1)
/* B0C724 80095584 A5E0107C */  sh    $zero, 0x107c($t7)
/* B0C728 80095588 8C780000 */  lw    $t8, ($v1)
/* B0C72C 8009558C A700107E */  sh    $zero, 0x107e($t8)
/* B0C730 80095590 8C790000 */  lw    $t9, ($v1)
/* B0C734 80095594 A7201080 */  sh    $zero, 0x1080($t9)
/* B0C738 80095598 8C6E0000 */  lw    $t6, ($v1)
/* B0C73C 8009559C A5C01082 */  sh    $zero, 0x1082($t6)
/* B0C740 800955A0 8C6F0000 */  lw    $t7, ($v1)
/* B0C744 800955A4 A5E01084 */  sh    $zero, 0x1084($t7)
/* B0C748 800955A8 8C780000 */  lw    $t8, ($v1)
/* B0C74C 800955AC A7001086 */  sh    $zero, 0x1086($t8)
/* B0C750 800955B0 8C790000 */  lw    $t9, ($v1)
/* B0C754 800955B4 A7201088 */  sh    $zero, 0x1088($t9)
/* B0C758 800955B8 8C6E0000 */  lw    $t6, ($v1)
/* B0C75C 800955BC A5C0108A */  sh    $zero, 0x108a($t6)
/* B0C760 800955C0 8C6F0000 */  lw    $t7, ($v1)
/* B0C764 800955C4 A5E0108C */  sh    $zero, 0x108c($t7)
/* B0C768 800955C8 8C780000 */  lw    $t8, ($v1)
/* B0C76C 800955CC A700108E */  sh    $zero, 0x108e($t8)
/* B0C770 800955D0 8C790000 */  lw    $t9, ($v1)
/* B0C774 800955D4 A7201090 */  sh    $zero, 0x1090($t9)
/* B0C778 800955D8 8C6E0000 */  lw    $t6, ($v1)
/* B0C77C 800955DC A5C61092 */  sh    $a2, 0x1092($t6)
/* B0C780 800955E0 8C640000 */  lw    $a0, ($v1)
/* B0C784 800955E4 84861076 */  lh    $a2, 0x1076($a0)
.L800955E8:
/* B0C788 800955E8 30CF0001 */  andi  $t7, $a2, 1
/* B0C78C 800955EC 51E00005 */  beql  $t7, $zero, .L80095604
/* B0C790 800955F0 30D80002 */   andi  $t8, $a2, 2
/* B0C794 800955F4 A482107A */  sh    $v0, 0x107a($a0)
/* B0C798 800955F8 8C640000 */  lw    $a0, ($v1)
/* B0C79C 800955FC 84861076 */  lh    $a2, 0x1076($a0)
/* B0C7A0 80095600 30D80002 */  andi  $t8, $a2, 2
.L80095604:
/* B0C7A4 80095604 5300000A */  beql  $t8, $zero, .L80095630
/* B0C7A8 80095608 84821078 */   lh    $v0, 0x1078($a0)
/* B0C7AC 8009560C A48C107C */  sh    $t4, 0x107c($a0)
/* B0C7B0 80095610 8C6E0000 */  lw    $t6, ($v1)
/* B0C7B4 80095614 93B900D3 */  lbu   $t9, 0xd3($sp)
/* B0C7B8 80095618 A5D9107E */  sh    $t9, 0x107e($t6)
/* B0C7BC 8009561C 8C780000 */  lw    $t8, ($v1)
/* B0C7C0 80095620 93AF00D7 */  lbu   $t7, 0xd7($sp)
/* B0C7C4 80095624 A70F1080 */  sh    $t7, 0x1080($t8)
/* B0C7C8 80095628 8C640000 */  lw    $a0, ($v1)
/* B0C7CC 8009562C 84821078 */  lh    $v0, 0x1078($a0)
.L80095630:
/* B0C7D0 80095630 30590001 */  andi  $t9, $v0, 1
/* B0C7D4 80095634 13200002 */  beqz  $t9, .L80095640
/* B0C7D8 80095638 304E0002 */   andi  $t6, $v0, 2
/* B0C7DC 8009563C 848A107A */  lh    $t2, 0x107a($a0)
.L80095640:
/* B0C7E0 80095640 51C00007 */  beql  $t6, $zero, .L80095660
/* B0C7E4 80095644 93B900D7 */   lbu   $t9, 0xd7($sp)
/* B0C7E8 80095648 848F107E */  lh    $t7, 0x107e($a0)
/* B0C7EC 8009564C 908C107D */  lbu   $t4, 0x107d($a0)
/* B0C7F0 80095650 A3AF00D3 */  sb    $t7, 0xd3($sp)
/* B0C7F4 80095654 84981080 */  lh    $t8, 0x1080($a0)
/* B0C7F8 80095658 A3B800D7 */  sb    $t8, 0xd7($sp)
.L8009565C:
/* B0C7FC 8009565C 93B900D7 */  lbu   $t9, 0xd7($sp)
.L80095660:
/* B0C800 80095660 93BF00D3 */  lbu   $ra, 0xd3($sp)
/* B0C804 80095664 3C04E300 */  lui   $a0, (0xE3000001 >> 16) # lui $a0, 0xe300
/* B0C808 80095668 AFB90020 */  sw    $t9, 0x20($sp)
/* B0C80C 8009566C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C810 80095670 34840A01 */  ori   $a0, (0xE3000A01 & 0xFFFF) # ori $a0, $a0, 0xa01
/* B0C814 80095674 3C070030 */  lui   $a3, 0x30
/* B0C818 80095678 244E0008 */  addiu $t6, $v0, 8
/* B0C81C 8009567C ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0C820 80095680 8D2F0000 */  lw    $t7, ($t1)
/* B0C824 80095684 AC480004 */  sw    $t0, 4($v0)
/* B0C828 80095688 3C08F600 */  lui   $t0, 0xf600
/* B0C82C 8009568C 25F8FFFF */  addiu $t8, $t7, -1
/* B0C830 80095690 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C834 80095694 032B7025 */  or    $t6, $t9, $t3
/* B0C838 80095698 AC4E0000 */  sw    $t6, ($v0)
/* B0C83C 8009569C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C840 800956A0 3C19E200 */  lui   $t9, (0xE200001C >> 16) # lui $t9, 0xe200
/* B0C844 800956A4 3739001C */  ori   $t9, (0xE200001C & 0xFFFF) # ori $t9, $t9, 0x1c
/* B0C848 800956A8 244F0008 */  addiu $t7, $v0, 8
/* B0C84C 800956AC ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B0C850 800956B0 AC470004 */  sw    $a3, 4($v0)
/* B0C854 800956B4 AC440000 */  sw    $a0, ($v0)
/* B0C858 800956B8 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C85C 800956BC 3C0FF700 */  lui   $t7, 0xf700
/* B0C860 800956C0 314603FF */  andi  $a2, $t2, 0x3ff
/* B0C864 800956C4 24580008 */  addiu $t8, $v0, 8
/* B0C868 800956C8 ACB802C0 */  sw    $t8, 0x2c0($a1)
/* B0C86C 800956CC AC400004 */  sw    $zero, 4($v0)
/* B0C870 800956D0 AC590000 */  sw    $t9, ($v0)
/* B0C874 800956D4 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C878 800956D8 3C18FFFC */  lui   $t8, (0xFFFCFFFC >> 16) # lui $t8, 0xfffc
/* B0C87C 800956DC 3718FFFC */  ori   $t8, (0xFFFCFFFC & 0xFFFF) # ori $t8, $t8, 0xfffc
/* B0C880 800956E0 244E0008 */  addiu $t6, $v0, 8
/* B0C884 800956E4 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0C888 800956E8 AC580004 */  sw    $t8, 4($v0)
/* B0C88C 800956EC AC4F0000 */  sw    $t7, ($v0)
/* B0C890 800956F0 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C894 800956F4 00063080 */  sll   $a2, $a2, 2
/* B0C898 800956F8 01806825 */  move  $t5, $t4
/* B0C89C 800956FC 24590008 */  addiu $t9, $v0, 8
/* B0C8A0 80095700 ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0C8A4 80095704 8D2E0000 */  lw    $t6, ($t1)
/* B0C8A8 80095708 3C0CE700 */  lui   $t4, 0xe700
/* B0C8AC 8009570C 25CFFFFF */  addiu $t7, $t6, -1
/* B0C8B0 80095710 31F803FF */  andi  $t8, $t7, 0x3ff
/* B0C8B4 80095714 3C0F8013 */  lui   $t7, %hi(D_8012D274) # $t7, 0x8013
/* B0C8B8 80095718 8DEFD274 */  lw    $t7, %lo(D_8012D274)($t7)
/* B0C8BC 8009571C 0018CB80 */  sll   $t9, $t8, 0xe
/* B0C8C0 80095720 03287025 */  or    $t6, $t9, $t0
/* B0C8C4 80095724 01EAC023 */  subu  $t8, $t7, $t2
/* B0C8C8 80095728 2719FFFF */  addiu $t9, $t8, -1
/* B0C8CC 8009572C 332F03FF */  andi  $t7, $t9, 0x3ff
/* B0C8D0 80095730 000FC080 */  sll   $t8, $t7, 2
/* B0C8D4 80095734 01D8C825 */  or    $t9, $t6, $t8
/* B0C8D8 80095738 AC590000 */  sw    $t9, ($v0)
/* B0C8DC 8009573C AC460004 */  sw    $a2, 4($v0)
/* B0C8E0 80095740 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C8E4 80095744 244F0008 */  addiu $t7, $v0, 8
/* B0C8E8 80095748 ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B0C8EC 8009574C AC400004 */  sw    $zero, 4($v0)
/* B0C8F0 80095750 AC4C0000 */  sw    $t4, ($v0)
/* B0C8F4 80095754 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C8F8 80095758 244E0008 */  addiu $t6, $v0, 8
/* B0C8FC 8009575C ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0C900 80095760 8D380000 */  lw    $t8, ($t1)
/* B0C904 80095764 2719FFFF */  addiu $t9, $t8, -1
/* B0C908 80095768 332F0FFF */  andi  $t7, $t9, 0xfff
/* B0C90C 8009576C 01EB7025 */  or    $t6, $t7, $t3
/* B0C910 80095770 AC4E0000 */  sw    $t6, ($v0)
/* B0C914 80095774 8CB802DC */  lw    $t8, 0x2dc($a1)
/* B0C918 80095778 3C0EE200 */  lui   $t6, (0xE200001C >> 16) # lui $t6, 0xe200
/* B0C91C 8009577C 35CE001C */  ori   $t6, (0xE200001C & 0xFFFF) # ori $t6, $t6, 0x1c
/* B0C920 80095780 AC580004 */  sw    $t8, 4($v0)
/* B0C924 80095784 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C928 80095788 3C0BF700 */  lui   $t3, 0xf700
/* B0C92C 8009578C 24590008 */  addiu $t9, $v0, 8
/* B0C930 80095790 ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0C934 80095794 AC470004 */  sw    $a3, 4($v0)
/* B0C938 80095798 AC440000 */  sw    $a0, ($v0)
/* B0C93C 8009579C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C940 800957A0 000DCA00 */  sll   $t9, $t5, 8
/* B0C944 800957A4 244F0008 */  addiu $t7, $v0, 8
/* B0C948 800957A8 ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B0C94C 800957AC AC400004 */  sw    $zero, 4($v0)
/* B0C950 800957B0 AC4E0000 */  sw    $t6, ($v0)
/* B0C954 800957B4 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C958 800957B8 001F70C0 */  sll   $t6, $ra, 3
/* B0C95C 800957BC 332FF800 */  andi  $t7, $t9, 0xf800
/* B0C960 800957C0 24580008 */  addiu $t8, $v0, 8
/* B0C964 800957C4 ACB802C0 */  sw    $t8, 0x2c0($a1)
/* B0C968 800957C8 31D807C0 */  andi  $t8, $t6, 0x7c0
/* B0C96C 800957CC AC4B0000 */  sw    $t3, ($v0)
/* B0C970 800957D0 8FAE0020 */  lw    $t6, 0x20($sp)
/* B0C974 800957D4 01F8C825 */  or    $t9, $t7, $t8
/* B0C978 800957D8 000E7883 */  sra   $t7, $t6, 2
/* B0C97C 800957DC 31F8003E */  andi  $t8, $t7, 0x3e
/* B0C980 800957E0 03382025 */  or    $a0, $t9, $t8
/* B0C984 800957E4 34840001 */  ori   $a0, (0xE3000001 & 0xFFFF) # ori $a0, $a0, 1
/* B0C988 800957E8 00047400 */  sll   $t6, $a0, 0x10
/* B0C98C 800957EC 01C43825 */  or    $a3, $t6, $a0
/* B0C990 800957F0 AC470004 */  sw    $a3, 4($v0)
/* B0C994 800957F4 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C998 800957F8 3C048013 */  lui   $a0, %hi(D_8012D274) # $a0, 0x8013
/* B0C99C 800957FC 2484D274 */  addiu $a0, %lo(D_8012D274) # addiu $a0, $a0, -0x2d8c
/* B0C9A0 80095800 244F0008 */  addiu $t7, $v0, 8
/* B0C9A4 80095804 ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B0C9A8 80095808 8D390000 */  lw    $t9, ($t1)
/* B0C9AC 8009580C 2738FFFF */  addiu $t8, $t9, -1
/* B0C9B0 80095810 330E03FF */  andi  $t6, $t8, 0x3ff
/* B0C9B4 80095814 8C980000 */  lw    $t8, ($a0)
/* B0C9B8 80095818 000E7B80 */  sll   $t7, $t6, 0xe
/* B0C9BC 8009581C 01E8C825 */  or    $t9, $t7, $t0
/* B0C9C0 80095820 030A7023 */  subu  $t6, $t8, $t2
/* B0C9C4 80095824 25CFFFFF */  addiu $t7, $t6, -1
/* B0C9C8 80095828 31F803FF */  andi  $t8, $t7, 0x3ff
/* B0C9CC 8009582C 00187080 */  sll   $t6, $t8, 2
/* B0C9D0 80095830 032E7825 */  or    $t7, $t9, $t6
/* B0C9D4 80095834 AC4F0000 */  sw    $t7, ($v0)
/* B0C9D8 80095838 AC460004 */  sw    $a2, 4($v0)
/* B0C9DC 8009583C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C9E0 80095840 24580008 */  addiu $t8, $v0, 8
/* B0C9E4 80095844 ACB802C0 */  sw    $t8, 0x2c0($a1)
/* B0C9E8 80095848 AC400004 */  sw    $zero, 4($v0)
/* B0C9EC 8009584C 19400040 */  blez  $t2, .L80095950
/* B0C9F0 80095850 AC4C0000 */   sw    $t4, ($v0)
/* B0C9F4 80095854 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0C9F8 80095858 3C0FE300 */  lui   $t7, (0xE3000A01 >> 16) # lui $t7, 0xe300
/* B0C9FC 8009585C 35EF0A01 */  ori   $t7, (0xE3000A01 & 0xFFFF) # ori $t7, $t7, 0xa01
/* B0CA00 80095860 24590008 */  addiu $t9, $v0, 8
/* B0CA04 80095864 ACB902B0 */  sw    $t9, 0x2b0($a1)
/* B0CA08 80095868 AC400004 */  sw    $zero, 4($v0)
/* B0CA0C 8009586C AC4C0000 */  sw    $t4, ($v0)
/* B0CA10 80095870 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0CA14 80095874 3C180030 */  lui   $t8, 0x30
/* B0CA18 80095878 244E0008 */  addiu $t6, $v0, 8
/* B0CA1C 8009587C ACAE02B0 */  sw    $t6, 0x2b0($a1)
/* B0CA20 80095880 AC580004 */  sw    $t8, 4($v0)
/* B0CA24 80095884 AC4F0000 */  sw    $t7, ($v0)
/* B0CA28 80095888 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0CA2C 8009588C 3C0EE200 */  lui   $t6, (0xE200001C >> 16) # lui $t6, 0xe200
/* B0CA30 80095890 35CE001C */  ori   $t6, (0xE200001C & 0xFFFF) # ori $t6, $t6, 0x1c
/* B0CA34 80095894 24590008 */  addiu $t9, $v0, 8
/* B0CA38 80095898 ACB902B0 */  sw    $t9, 0x2b0($a1)
/* B0CA3C 8009589C AC400004 */  sw    $zero, 4($v0)
/* B0CA40 800958A0 AC4E0000 */  sw    $t6, ($v0)
/* B0CA44 800958A4 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0CA48 800958A8 244F0008 */  addiu $t7, $v0, 8
/* B0CA4C 800958AC ACAF02B0 */  sw    $t7, 0x2b0($a1)
/* B0CA50 800958B0 AC470004 */  sw    $a3, 4($v0)
/* B0CA54 800958B4 AC4B0000 */  sw    $t3, ($v0)
/* B0CA58 800958B8 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0CA5C 800958BC 24580008 */  addiu $t8, $v0, 8
/* B0CA60 800958C0 ACB802B0 */  sw    $t8, 0x2b0($a1)
/* B0CA64 800958C4 8D390000 */  lw    $t9, ($t1)
/* B0CA68 800958C8 AC400004 */  sw    $zero, 4($v0)
/* B0CA6C 800958CC 272EFFFF */  addiu $t6, $t9, -1
/* B0CA70 800958D0 31CF03FF */  andi  $t7, $t6, 0x3ff
/* B0CA74 800958D4 000FC380 */  sll   $t8, $t7, 0xe
/* B0CA78 800958D8 254EFFFF */  addiu $t6, $t2, -1
/* B0CA7C 800958DC 31CF03FF */  andi  $t7, $t6, 0x3ff
/* B0CA80 800958E0 0308C825 */  or    $t9, $t8, $t0
/* B0CA84 800958E4 000FC080 */  sll   $t8, $t7, 2
/* B0CA88 800958E8 03387025 */  or    $t6, $t9, $t8
/* B0CA8C 800958EC AC4E0000 */  sw    $t6, ($v0)
/* B0CA90 800958F0 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0CA94 800958F4 244F0008 */  addiu $t7, $v0, 8
/* B0CA98 800958F8 ACAF02B0 */  sw    $t7, 0x2b0($a1)
/* B0CA9C 800958FC 8D390000 */  lw    $t9, ($t1)
/* B0CAA0 80095900 2738FFFF */  addiu $t8, $t9, -1
/* B0CAA4 80095904 330E03FF */  andi  $t6, $t8, 0x3ff
/* B0CAA8 80095908 8C980000 */  lw    $t8, ($a0)
/* B0CAAC 8009590C 000E7B80 */  sll   $t7, $t6, 0xe
/* B0CAB0 80095910 01E8C825 */  or    $t9, $t7, $t0
/* B0CAB4 80095914 270EFFFF */  addiu $t6, $t8, -1
/* B0CAB8 80095918 31CF03FF */  andi  $t7, $t6, 0x3ff
/* B0CABC 8009591C 000FC080 */  sll   $t8, $t7, 2
/* B0CAC0 80095920 03387025 */  or    $t6, $t9, $t8
/* B0CAC4 80095924 AC4E0000 */  sw    $t6, ($v0)
/* B0CAC8 80095928 8C8F0000 */  lw    $t7, ($a0)
/* B0CACC 8009592C 01EAC823 */  subu  $t9, $t7, $t2
/* B0CAD0 80095930 333803FF */  andi  $t8, $t9, 0x3ff
/* B0CAD4 80095934 00187080 */  sll   $t6, $t8, 2
/* B0CAD8 80095938 AC4E0004 */  sw    $t6, 4($v0)
/* B0CADC 8009593C 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0CAE0 80095940 244F0008 */  addiu $t7, $v0, 8
/* B0CAE4 80095944 ACAF02B0 */  sw    $t7, 0x2b0($a1)
/* B0CAE8 80095948 AC400004 */  sw    $zero, 4($v0)
/* B0CAEC 8009594C AC4C0000 */  sw    $t4, ($v0)
.L80095950:
/* B0CAF0 80095950 3C068014 */  lui   $a2, %hi(D_8013EF04) # $a2, 0x8014
/* B0CAF4 80095954 24C6EF04 */  addiu $a2, %lo(D_8013EF04) # addiu $a2, $a2, -0x10fc
/* B0CAF8 80095958 27A400B4 */  addiu $a0, $sp, 0xb4
/* B0CAFC 8009595C 0C031AD5 */  jal   func_800C6B54
/* B0CB00 80095960 240709C1 */   li    $a3, 2497
/* B0CB04 80095964 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0CB08 80095968 27BD00C8 */  addiu $sp, $sp, 0xc8
/* B0CB0C 8009596C 03E00008 */  jr    $ra
/* B0CB10 80095970 00000000 */   nop   

glabel func_80095974
/* B0CB14 80095974 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B0CB18 80095978 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0CB1C 8009597C 00802825 */  move  $a1, $a0
/* B0CB20 80095980 3C068014 */  lui   $a2, %hi(D_8013EF10) # $a2, 0x8014
/* B0CB24 80095984 24C6EF10 */  addiu $a2, %lo(D_8013EF10) # addiu $a2, $a2, -0x10f0
/* B0CB28 80095988 AFA50040 */  sw    $a1, 0x40($sp)
/* B0CB2C 8009598C 27A4002C */  addiu $a0, $sp, 0x2c
/* B0CB30 80095990 0C031AB1 */  jal   func_800C6AC4
/* B0CB34 80095994 240709C7 */   li    $a3, 2503
/* B0CB38 80095998 8FA50040 */  lw    $a1, 0x40($sp)
/* B0CB3C 8009599C 3C188012 */  lui   $t8, %hi(D_80126FD0) # $t8, 0x8012
/* B0CB40 800959A0 27186FD0 */  addiu $t8, %lo(D_80126FD0) # addiu $t8, $t8, 0x6fd0
/* B0CB44 800959A4 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0CB48 800959A8 3C0FDE00 */  lui   $t7, 0xde00
/* B0CB4C 800959AC 3C048013 */  lui   $a0, %hi(D_8012D270) # $a0, 0x8013
/* B0CB50 800959B0 244E0008 */  addiu $t6, $v0, 8
/* B0CB54 800959B4 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0CB58 800959B8 AC580004 */  sw    $t8, 4($v0)
/* B0CB5C 800959BC AC4F0000 */  sw    $t7, ($v0)
/* B0CB60 800959C0 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0CB64 800959C4 3C08ED00 */  li    $t0, 0xED000000 # 0.000000
/* B0CB68 800959C8 2484D270 */  addiu $a0, %lo(D_8012D270) # addiu $a0, $a0, -0x2d90
/* B0CB6C 800959CC 24590008 */  addiu $t9, $v0, 8
/* B0CB70 800959D0 ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0CB74 800959D4 AC480000 */  sw    $t0, ($v0)
/* B0CB78 800959D8 8C890000 */  lw    $t1, ($a0)
/* B0CB7C 800959DC 3C0E8013 */  lui   $t6, %hi(D_8012D274)
/* B0CB80 800959E0 8DCED274 */  lw    $t6, %lo(D_8012D274)($t6)
/* B0CB84 800959E4 44892000 */  mtc1  $t1, $f4
/* B0CB88 800959E8 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B0CB8C 800959EC 448E8000 */  mtc1  $t6, $f16
/* B0CB90 800959F0 468021A0 */  cvt.s.w $f6, $f4
/* B0CB94 800959F4 44810000 */  mtc1  $at, $f0
/* B0CB98 800959F8 3C0AFE00 */  lui   $t2, 0xfe00
/* B0CB9C 800959FC 3C01FF10 */  lui   $at, 0xff10
/* B0CBA0 80095A00 3C068014 */  lui   $a2, %hi(D_8013EF1C) # $a2, 0x8014
/* B0CBA4 80095A04 468084A0 */  cvt.s.w $f18, $f16
/* B0CBA8 80095A08 46003202 */  mul.s $f8, $f6, $f0
/* B0CBAC 80095A0C 24C6EF1C */  addiu $a2, %lo(D_8013EF1C) # addiu $a2, $a2, -0x10e4
/* B0CBB0 80095A10 240709D1 */  li    $a3, 2513
/* B0CBB4 80095A14 46009102 */  mul.s $f4, $f18, $f0
/* B0CBB8 80095A18 4600428D */  trunc.w.s $f10, $f8
/* B0CBBC 80095A1C 4600218D */  trunc.w.s $f6, $f4
/* B0CBC0 80095A20 440B5000 */  mfc1  $t3, $f10
/* B0CBC4 80095A24 44183000 */  mfc1  $t8, $f6
/* B0CBC8 80095A28 316C0FFF */  andi  $t4, $t3, 0xfff
/* B0CBCC 80095A2C 000C6B00 */  sll   $t5, $t4, 0xc
/* B0CBD0 80095A30 33190FFF */  andi  $t9, $t8, 0xfff
/* B0CBD4 80095A34 01B94025 */  or    $t0, $t5, $t9
/* B0CBD8 80095A38 AC480004 */  sw    $t0, 4($v0)
/* B0CBDC 80095A3C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0CBE0 80095A40 3C0B8017 */  lui   $t3, %hi(D_801759C0) # $t3, 0x8017
/* B0CBE4 80095A44 256B59C0 */  addiu $t3, %lo(D_801759C0) # addiu $t3, $t3, 0x59c0
/* B0CBE8 80095A48 24490008 */  addiu $t1, $v0, 8
/* B0CBEC 80095A4C ACA902C0 */  sw    $t1, 0x2c0($a1)
/* B0CBF0 80095A50 AC4B0004 */  sw    $t3, 4($v0)
/* B0CBF4 80095A54 AC4A0000 */  sw    $t2, ($v0)
/* B0CBF8 80095A58 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0CBFC 80095A5C 244C0008 */  addiu $t4, $v0, 8
/* B0CC00 80095A60 ACAC02C0 */  sw    $t4, 0x2c0($a1)
/* B0CC04 80095A64 8C8E0000 */  lw    $t6, ($a0)
/* B0CC08 80095A68 27A4002C */  addiu $a0, $sp, 0x2c
/* B0CC0C 80095A6C 25CFFFFF */  addiu $t7, $t6, -1
/* B0CC10 80095A70 31F80FFF */  andi  $t8, $t7, 0xfff
/* B0CC14 80095A74 03016825 */  or    $t5, $t8, $at
/* B0CC18 80095A78 AC4D0000 */  sw    $t5, ($v0)
/* B0CC1C 80095A7C 8CB902DC */  lw    $t9, 0x2dc($a1)
/* B0CC20 80095A80 0C031AD5 */  jal   func_800C6B54
/* B0CC24 80095A84 AC590004 */   sw    $t9, 4($v0)
/* B0CC28 80095A88 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0CC2C 80095A8C 27BD0040 */  addiu $sp, $sp, 0x40
/* B0CC30 80095A90 03E00008 */  jr    $ra
/* B0CC34 80095A94 00000000 */   nop   
