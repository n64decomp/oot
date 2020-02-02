.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800FD4F0
/* B74690 800FD4F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B74694 800FD4F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B74698 800FD4F8 AFA5001C */  sw    $a1, 0x1c($sp)
/* B7469C 800FD4FC 1480000F */  bnez  $a0, .L800FD53C
/* B746A0 800FD500 AFA60020 */   sw    $a2, 0x20($sp)
/* B746A4 800FD504 3C0E8013 */  lui   $t6, %hi(D_801344B0) # $t6, 0x8013
/* B746A8 800FD508 8DCE44B0 */  lw    $t6, %lo(D_801344B0)($t6)
/* B746AC 800FD50C 3C048015 */  lui   $a0, %hi(D_8014AB10) # $a0, 0x8015
/* B746B0 800FD510 2484AB10 */  addiu $a0, %lo(D_8014AB10) # addiu $a0, $a0, -0x54f0
/* B746B4 800FD514 29C10002 */  slti  $at, $t6, 2
/* B746B8 800FD518 14200011 */  bnez  $at, .L800FD560
/* B746BC 800FD51C 00C02825 */   move  $a1, $a2
/* B746C0 800FD520 0C00084C */  jal   osSyncPrintf
/* B746C4 800FD524 8FA6001C */   lw    $a2, 0x1c($sp)
/* B746C8 800FD528 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B746CC 800FD52C 0C03FBA0 */  jal   func_800FEE80
/* B746D0 800FD530 24845610 */   addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B746D4 800FD534 1000000B */  b     .L800FD564
/* B746D8 800FD538 8FBF0014 */   lw    $ra, 0x14($sp)
.L800FD53C:
/* B746DC 800FD53C 3C0F8013 */  lui   $t7, %hi(D_801344B0) # $t7, 0x8013
/* B746E0 800FD540 8DEF44B0 */  lw    $t7, %lo(D_801344B0)($t7)
/* B746E4 800FD544 3C048015 */  lui   $a0, %hi(D_8014AB34) # $a0, 0x8015
/* B746E8 800FD548 2484AB34 */  addiu $a0, %lo(D_8014AB34) # addiu $a0, $a0, -0x54cc
/* B746EC 800FD54C 29E10003 */  slti  $at, $t7, 3
/* B746F0 800FD550 14200003 */  bnez  $at, .L800FD560
/* B746F4 800FD554 8FA50020 */   lw    $a1, 0x20($sp)
/* B746F8 800FD558 0C00084C */  jal   osSyncPrintf
/* B746FC 800FD55C 8FA6001C */   lw    $a2, 0x1c($sp)
.L800FD560:
/* B74700 800FD560 8FBF0014 */  lw    $ra, 0x14($sp)
.L800FD564:
/* B74704 800FD564 27BD0018 */  addiu $sp, $sp, 0x18
/* B74708 800FD568 03E00008 */  jr    $ra
/* B7470C 800FD56C 00000000 */   nop   

glabel func_800FD570
/* B74710 800FD570 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B74714 800FD574 AFA40020 */  sw    $a0, 0x20($sp)
/* B74718 800FD578 AFBF0014 */  sw    $ra, 0x14($sp)
/* B7471C 800FD57C 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B74720 800FD580 24845610 */  addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B74724 800FD584 0C03F911 */  jal   func_800FE444
/* B74728 800FD588 8FA50020 */   lw    $a1, 0x20($sp)
/* B7472C 800FD58C 3C068015 */  lui   $a2, %hi(D_8014AB58) # $a2, 0x8015
/* B74730 800FD590 3C078015 */  lui   $a3, %hi(D_8014AB60) # $a3, 0x8015
/* B74734 800FD594 AFA2001C */  sw    $v0, 0x1c($sp)
/* B74738 800FD598 24E7AB60 */  addiu $a3, %lo(D_8014AB60) # addiu $a3, $a3, -0x54a0
/* B7473C 800FD59C 24C6AB58 */  addiu $a2, %lo(D_8014AB58) # addiu $a2, $a2, -0x54a8
/* B74740 800FD5A0 00402025 */  move  $a0, $v0
/* B74744 800FD5A4 0C03F53C */  jal   func_800FD4F0
/* B74748 800FD5A8 8FA50020 */   lw    $a1, 0x20($sp)
/* B7474C 800FD5AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B74750 800FD5B0 8FA2001C */  lw    $v0, 0x1c($sp)
/* B74754 800FD5B4 27BD0020 */  addiu $sp, $sp, 0x20
/* B74758 800FD5B8 03E00008 */  jr    $ra
/* B7475C 800FD5BC 00000000 */   nop   

glabel func_800FD5C0
/* B74760 800FD5C0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B74764 800FD5C4 AFA40020 */  sw    $a0, 0x20($sp)
/* B74768 800FD5C8 00C03825 */  move  $a3, $a2
/* B7476C 800FD5CC 00A03025 */  move  $a2, $a1
/* B74770 800FD5D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B74774 800FD5D4 AFA50024 */  sw    $a1, 0x24($sp)
/* B74778 800FD5D8 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B7477C 800FD5DC 24845610 */  addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B74780 800FD5E0 0C03F851 */  jal   func_800FE144
/* B74784 800FD5E4 8FA50020 */   lw    $a1, 0x20($sp)
/* B74788 800FD5E8 3C068015 */  lui   $a2, %hi(D_8014AB68) # $a2, 0x8015
/* B7478C 800FD5EC 3C078015 */  lui   $a3, %hi(D_8014AB78) # $a3, 0x8015
/* B74790 800FD5F0 AFA2001C */  sw    $v0, 0x1c($sp)
/* B74794 800FD5F4 24E7AB78 */  addiu $a3, %lo(D_8014AB78) # addiu $a3, $a3, -0x5488
/* B74798 800FD5F8 24C6AB68 */  addiu $a2, %lo(D_8014AB68) # addiu $a2, $a2, -0x5498
/* B7479C 800FD5FC 00402025 */  move  $a0, $v0
/* B747A0 800FD600 0C03F53C */  jal   func_800FD4F0
/* B747A4 800FD604 8FA50020 */   lw    $a1, 0x20($sp)
/* B747A8 800FD608 8FBF0014 */  lw    $ra, 0x14($sp)
/* B747AC 800FD60C 8FA2001C */  lw    $v0, 0x1c($sp)
/* B747B0 800FD610 27BD0020 */  addiu $sp, $sp, 0x20
/* B747B4 800FD614 03E00008 */  jr    $ra
/* B747B8 800FD618 00000000 */   nop   

glabel func_800FD61C
/* B747BC 800FD61C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B747C0 800FD620 AFA40020 */  sw    $a0, 0x20($sp)
/* B747C4 800FD624 AFBF0014 */  sw    $ra, 0x14($sp)
/* B747C8 800FD628 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B747CC 800FD62C 24845610 */  addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B747D0 800FD630 0C03F921 */  jal   func_800FE484
/* B747D4 800FD634 8FA50020 */   lw    $a1, 0x20($sp)
/* B747D8 800FD638 3C068015 */  lui   $a2, %hi(D_8014AB80) # $a2, 0x8015
/* B747DC 800FD63C 3C078015 */  lui   $a3, %hi(D_8014AB8C) # $a3, 0x8015
/* B747E0 800FD640 AFA2001C */  sw    $v0, 0x1c($sp)
/* B747E4 800FD644 24E7AB8C */  addiu $a3, %lo(D_8014AB8C) # addiu $a3, $a3, -0x5474
/* B747E8 800FD648 24C6AB80 */  addiu $a2, %lo(D_8014AB80) # addiu $a2, $a2, -0x5480
/* B747EC 800FD64C 00402025 */  move  $a0, $v0
/* B747F0 800FD650 0C03F53C */  jal   func_800FD4F0
/* B747F4 800FD654 8FA50020 */   lw    $a1, 0x20($sp)
/* B747F8 800FD658 8FBF0014 */  lw    $ra, 0x14($sp)
/* B747FC 800FD65C 8FA2001C */  lw    $v0, 0x1c($sp)
/* B74800 800FD660 27BD0020 */  addiu $sp, $sp, 0x20
/* B74804 800FD664 03E00008 */  jr    $ra
/* B74808 800FD668 00000000 */   nop   

glabel func_800FD66C
/* B7480C 800FD66C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B74810 800FD670 AFA40020 */  sw    $a0, 0x20($sp)
/* B74814 800FD674 00C03825 */  move  $a3, $a2
/* B74818 800FD678 00A03025 */  move  $a2, $a1
/* B7481C 800FD67C AFBF0014 */  sw    $ra, 0x14($sp)
/* B74820 800FD680 AFA50024 */  sw    $a1, 0x24($sp)
/* B74824 800FD684 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B74828 800FD688 24845610 */  addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B7482C 800FD68C 0C03F865 */  jal   func_800FE194
/* B74830 800FD690 8FA50020 */   lw    $a1, 0x20($sp)
/* B74834 800FD694 3C068015 */  lui   $a2, %hi(D_8014AB94) # $a2, 0x8015
/* B74838 800FD698 3C078015 */  lui   $a3, %hi(D_8014ABA4) # $a3, 0x8015
/* B7483C 800FD69C AFA2001C */  sw    $v0, 0x1c($sp)
/* B74840 800FD6A0 24E7ABA4 */  addiu $a3, %lo(D_8014ABA4) # addiu $a3, $a3, -0x545c
/* B74844 800FD6A4 24C6AB94 */  addiu $a2, %lo(D_8014AB94) # addiu $a2, $a2, -0x546c
/* B74848 800FD6A8 00402025 */  move  $a0, $v0
/* B7484C 800FD6AC 0C03F53C */  jal   func_800FD4F0
/* B74850 800FD6B0 8FA50020 */   lw    $a1, 0x20($sp)
/* B74854 800FD6B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B74858 800FD6B8 8FA2001C */  lw    $v0, 0x1c($sp)
/* B7485C 800FD6BC 27BD0020 */  addiu $sp, $sp, 0x20
/* B74860 800FD6C0 03E00008 */  jr    $ra
/* B74864 800FD6C4 00000000 */   nop   

glabel func_800FD6C8
/* B74868 800FD6C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B7486C 800FD6CC AFA5001C */  sw    $a1, 0x1c($sp)
/* B74870 800FD6D0 00802825 */  move  $a1, $a0
/* B74874 800FD6D4 AFA40018 */  sw    $a0, 0x18($sp)
/* B74878 800FD6D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B7487C 800FD6DC 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B74880 800FD6E0 24845610 */  addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B74884 800FD6E4 0C03FA9C */  jal   func_800FEA70
/* B74888 800FD6E8 8FA6001C */   lw    $a2, 0x1c($sp)
/* B7488C 800FD6EC 3C068015 */  lui   $a2, %hi(D_8014ABAC) # $a2, 0x8015
/* B74890 800FD6F0 3C078015 */  lui   $a3, %hi(D_8014ABB4) # $a3, 0x8015
/* B74894 800FD6F4 AFA20018 */  sw    $v0, 0x18($sp)
/* B74898 800FD6F8 24E7ABB4 */  addiu $a3, %lo(D_8014ABB4) # addiu $a3, $a3, -0x544c
/* B7489C 800FD6FC 24C6ABAC */  addiu $a2, %lo(D_8014ABAC) # addiu $a2, $a2, -0x5454
/* B748A0 800FD700 00402025 */  move  $a0, $v0
/* B748A4 800FD704 0C03F53C */  jal   func_800FD4F0
/* B748A8 800FD708 8FA5001C */   lw    $a1, 0x1c($sp)
/* B748AC 800FD70C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B748B0 800FD710 8FA20018 */  lw    $v0, 0x18($sp)
/* B748B4 800FD714 27BD0018 */  addiu $sp, $sp, 0x18
/* B748B8 800FD718 03E00008 */  jr    $ra
/* B748BC 800FD71C 00000000 */   nop   

glabel func_800FD720
/* B748C0 800FD720 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B748C4 800FD724 AFA50024 */  sw    $a1, 0x24($sp)
/* B748C8 800FD728 AFA7002C */  sw    $a3, 0x2c($sp)
/* B748CC 800FD72C 8FAE002C */  lw    $t6, 0x2c($sp)
/* B748D0 800FD730 00802825 */  move  $a1, $a0
/* B748D4 800FD734 AFA40020 */  sw    $a0, 0x20($sp)
/* B748D8 800FD738 00C03825 */  move  $a3, $a2
/* B748DC 800FD73C AFBF001C */  sw    $ra, 0x1c($sp)
/* B748E0 800FD740 AFA60028 */  sw    $a2, 0x28($sp)
/* B748E4 800FD744 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B748E8 800FD748 24845610 */  addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B748EC 800FD74C 8FA60024 */  lw    $a2, 0x24($sp)
/* B748F0 800FD750 0C03FB67 */  jal   func_800FED9C
/* B748F4 800FD754 AFAE0010 */   sw    $t6, 0x10($sp)
/* B748F8 800FD758 3C068015 */  lui   $a2, %hi(D_8014ABBC) # $a2, 0x8015
/* B748FC 800FD75C 3C078015 */  lui   $a3, %hi(D_8014ABCC) # $a3, 0x8015
/* B74900 800FD760 AFA20020 */  sw    $v0, 0x20($sp)
/* B74904 800FD764 24E7ABCC */  addiu $a3, %lo(D_8014ABCC) # addiu $a3, $a3, -0x5434
/* B74908 800FD768 24C6ABBC */  addiu $a2, %lo(D_8014ABBC) # addiu $a2, $a2, -0x5444
/* B7490C 800FD76C 00402025 */  move  $a0, $v0
/* B74910 800FD770 0C03F53C */  jal   func_800FD4F0
/* B74914 800FD774 8FA50024 */   lw    $a1, 0x24($sp)
/* B74918 800FD778 8FBF001C */  lw    $ra, 0x1c($sp)
/* B7491C 800FD77C 8FA20020 */  lw    $v0, 0x20($sp)
/* B74920 800FD780 27BD0020 */  addiu $sp, $sp, 0x20
/* B74924 800FD784 03E00008 */  jr    $ra
/* B74928 800FD788 00000000 */   nop   

glabel func_800FD78C
/* B7492C 800FD78C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B74930 800FD790 00802825 */  move  $a1, $a0
/* B74934 800FD794 AFBF0014 */  sw    $ra, 0x14($sp)
/* B74938 800FD798 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B7493C 800FD79C 0C03F9F9 */  jal   func_800FE7E4
/* B74940 800FD7A0 24845610 */   addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B74944 800FD7A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B74948 800FD7A8 27BD0018 */  addiu $sp, $sp, 0x18
/* B7494C 800FD7AC 03E00008 */  jr    $ra
/* B74950 800FD7B0 00000000 */   nop   

glabel func_800FD7B4
/* B74954 800FD7B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B74958 800FD7B8 AFA5001C */  sw    $a1, 0x1c($sp)
/* B7495C 800FD7BC 00802825 */  move  $a1, $a0
/* B74960 800FD7C0 AFA40018 */  sw    $a0, 0x18($sp)
/* B74964 800FD7C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B74968 800FD7C8 00C03825 */  move  $a3, $a2
/* B7496C 800FD7CC 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B74970 800FD7D0 8FA6001C */  lw    $a2, 0x1c($sp)
/* B74974 800FD7D4 0C03FA8A */  jal   func_800FEA28
/* B74978 800FD7D8 24845610 */   addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B7497C 800FD7DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B74980 800FD7E0 27BD0018 */  addiu $sp, $sp, 0x18
/* B74984 800FD7E4 03E00008 */  jr    $ra
/* B74988 800FD7E8 00000000 */   nop   

glabel func_800FD7EC
/* B7498C 800FD7EC 00803025 */  move  $a2, $a0
/* B74990 800FD7F0 00C50019 */  multu $a2, $a1
/* B74994 800FD7F4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B74998 800FD7F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B7499C 800FD7FC 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B749A0 800FD800 24845610 */  addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B749A4 800FD804 00002812 */  mflo  $a1
/* B749A8 800FD808 AFA5001C */  sw    $a1, 0x1c($sp)
/* B749AC 800FD80C 0C03F911 */  jal   func_800FE444
/* B749B0 800FD810 00000000 */   nop   
/* B749B4 800FD814 10400004 */  beqz  $v0, .L800FD828
/* B749B8 800FD818 AFA20024 */   sw    $v0, 0x24($sp)
/* B749BC 800FD81C 00402025 */  move  $a0, $v0
/* B749C0 800FD820 0C001114 */  jal   bzero
/* B749C4 800FD824 8FA5001C */   lw    $a1, 0x1c($sp)
.L800FD828:
/* B749C8 800FD828 3C068015 */  lui   $a2, %hi(D_8014ABD4) # $a2, 0x8015
/* B749CC 800FD82C 3C078015 */  lui   $a3, %hi(D_8014ABDC) # $a3, 0x8015
/* B749D0 800FD830 24E7ABDC */  addiu $a3, %lo(D_8014ABDC) # addiu $a3, $a3, -0x5424
/* B749D4 800FD834 24C6ABD4 */  addiu $a2, %lo(D_8014ABD4) # addiu $a2, $a2, -0x542c
/* B749D8 800FD838 8FA40024 */  lw    $a0, 0x24($sp)
/* B749DC 800FD83C 0C03F53C */  jal   func_800FD4F0
/* B749E0 800FD840 8FA5001C */   lw    $a1, 0x1c($sp)
/* B749E4 800FD844 8FBF0014 */  lw    $ra, 0x14($sp)
/* B749E8 800FD848 8FA20024 */  lw    $v0, 0x24($sp)
/* B749EC 800FD84C 27BD0028 */  addiu $sp, $sp, 0x28
/* B749F0 800FD850 03E00008 */  jr    $ra
/* B749F4 800FD854 00000000 */   nop   

glabel func_800FD858
/* B749F8 800FD858 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B749FC 800FD85C AFBF0014 */  sw    $ra, 0x14($sp)
/* B74A00 800FD860 3C048015 */  lui   $a0, %hi(D_8014ABE4) # $a0, 0x8015
/* B74A04 800FD864 0C00084C */  jal   osSyncPrintf
/* B74A08 800FD868 2484ABE4 */   addiu $a0, %lo(D_8014ABE4) # addiu $a0, $a0, -0x541c
/* B74A0C 800FD86C 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B74A10 800FD870 0C03FBA0 */  jal   func_800FEE80
/* B74A14 800FD874 24845610 */   addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B74A18 800FD878 8FBF0014 */  lw    $ra, 0x14($sp)
/* B74A1C 800FD87C 27BD0018 */  addiu $sp, $sp, 0x18
/* B74A20 800FD880 03E00008 */  jr    $ra
/* B74A24 800FD884 00000000 */   nop   

glabel func_800FD888
/* B74A28 800FD888 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B74A2C 800FD88C AFA5001C */  sw    $a1, 0x1c($sp)
/* B74A30 800FD890 00802825 */  move  $a1, $a0
/* B74A34 800FD894 AFA40018 */  sw    $a0, 0x18($sp)
/* B74A38 800FD898 AFBF0014 */  sw    $ra, 0x14($sp)
/* B74A3C 800FD89C 00C03825 */  move  $a3, $a2
/* B74A40 800FD8A0 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B74A44 800FD8A4 8FA6001C */  lw    $a2, 0x1c($sp)
/* B74A48 800FD8A8 0C03FB6F */  jal   func_800FEDBC
/* B74A4C 800FD8AC 24845610 */   addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B74A50 800FD8B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B74A54 800FD8B4 27BD0018 */  addiu $sp, $sp, 0x18
/* B74A58 800FD8B8 03E00008 */  jr    $ra
/* B74A5C 800FD8BC 00000000 */   nop   

glabel func_800FD8C0
/* B74A60 800FD8C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B74A64 800FD8C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B74A68 800FD8C8 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B74A6C 800FD8CC 0C03FCA0 */  jal   func_800FF280
/* B74A70 800FD8D0 24845610 */   addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B74A74 800FD8D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B74A78 800FD8D8 27BD0018 */  addiu $sp, $sp, 0x18
/* B74A7C 800FD8DC 03E00008 */  jr    $ra
/* B74A80 800FD8E0 00000000 */   nop   

glabel func_800FD8E4
/* B74A84 800FD8E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B74A88 800FD8E8 00A03025 */  move  $a2, $a1
/* B74A8C 800FD8EC 00802825 */  move  $a1, $a0
/* B74A90 800FD8F0 AFA40018 */  sw    $a0, 0x18($sp)
/* B74A94 800FD8F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B74A98 800FD8F8 3C018013 */  lui   $at, %hi(D_801344B0) # $at, 0x8013
/* B74A9C 800FD8FC 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B74AA0 800FD900 AC2044B0 */  sw    $zero, %lo(D_801344B0)($at)
/* B74AA4 800FD904 0C03F769 */  jal   func_800FDDA4
/* B74AA8 800FD908 24845610 */   addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B74AAC 800FD90C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B74AB0 800FD910 27BD0018 */  addiu $sp, $sp, 0x18
/* B74AB4 800FD914 03E00008 */  jr    $ra
/* B74AB8 800FD918 00000000 */   nop   

glabel func_800FD91C
/* B74ABC 800FD91C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B74AC0 800FD920 AFBF0014 */  sw    $ra, 0x14($sp)
/* B74AC4 800FD924 3C018013 */  lui   $at, %hi(D_801344B0) # $at, 0x8013
/* B74AC8 800FD928 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B74ACC 800FD92C AC2044B0 */  sw    $zero, %lo(D_801344B0)($at)
/* B74AD0 800FD930 0C03F7C8 */  jal   func_800FDF20
/* B74AD4 800FD934 24845610 */   addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B74AD8 800FD938 8FBF0014 */  lw    $ra, 0x14($sp)
/* B74ADC 800FD93C 27BD0018 */  addiu $sp, $sp, 0x18
/* B74AE0 800FD940 03E00008 */  jr    $ra
/* B74AE4 800FD944 00000000 */   nop   

glabel func_800FD948
/* B74AE8 800FD948 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B74AEC 800FD94C AFBF0014 */  sw    $ra, 0x14($sp)
/* B74AF0 800FD950 3C048017 */  lui   $a0, %hi(D_80175610) # $a0, 0x8017
/* B74AF4 800FD954 0C03F7D3 */  jal   func_800FDF4C
/* B74AF8 800FD958 24845610 */   addiu $a0, %lo(D_80175610) # addiu $a0, $a0, 0x5610
/* B74AFC 800FD95C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B74B00 800FD960 27BD0018 */  addiu $sp, $sp, 0x18
/* B74B04 800FD964 03E00008 */  jr    $ra
/* B74B08 800FD968 00000000 */   nop   
