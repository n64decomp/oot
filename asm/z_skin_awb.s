.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800A6460
/* B1D600 800A6460 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B1D604 800A6464 AFB30014 */  sw    $s3, 0x14($sp)
/* B1D608 800A6468 AFB20010 */  sw    $s2, 0x10($sp)
/* B1D60C 800A646C AFB1000C */  sw    $s1, 0xc($sp)
/* B1D610 800A6470 AFB00008 */  sw    $s0, 8($sp)
/* B1D614 800A6474 AFA40048 */  sw    $a0, 0x48($sp)
/* B1D618 800A6478 8CAE0000 */  lw    $t6, ($a1)
/* B1D61C 800A647C 3C048016 */  lui   $a0, %hi(D_80166FA8) # $a0, 0x8016
/* B1D620 800A6480 24846FA8 */  addiu $a0, %lo(D_80166FA8) # addiu $a0, $a0, 0x6fa8
/* B1D624 800A6484 8DCB0000 */  lw    $t3, ($t6)
/* B1D628 800A6488 3C0700FF */  lui   $a3, (0x00FFFFFF >> 16) # lui $a3, 0xff
/* B1D62C 800A648C 34E7FFFF */  ori   $a3, (0x00FFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* B1D630 800A6490 000B7900 */  sll   $t7, $t3, 4
/* B1D634 800A6494 000FC702 */  srl   $t8, $t7, 0x1c
/* B1D638 800A6498 0018C880 */  sll   $t9, $t8, 2
/* B1D63C 800A649C 00997021 */  addu  $t6, $a0, $t9
/* B1D640 800A64A0 8DCF0000 */  lw    $t7, ($t6)
/* B1D644 800A64A4 0167C024 */  and   $t8, $t3, $a3
/* B1D648 800A64A8 3C088000 */  lui   $t0, 0x8000
/* B1D64C 800A64AC 01F8C821 */  addu  $t9, $t7, $t8
/* B1D650 800A64B0 03285021 */  addu  $t2, $t9, $t0
/* B1D654 800A64B4 00067080 */  sll   $t6, $a2, 2
/* B1D658 800A64B8 014E7821 */  addu  $t7, $t2, $t6
/* B1D65C 800A64BC 8DEC0000 */  lw    $t4, ($t7)
/* B1D660 800A64C0 2412000A */  li    $s2, 10
/* B1D664 800A64C4 24130008 */  li    $s3, 8
/* B1D668 800A64C8 000CC900 */  sll   $t9, $t4, 4
/* B1D66C 800A64CC 00197702 */  srl   $t6, $t9, 0x1c
/* B1D670 800A64D0 000E7880 */  sll   $t7, $t6, 2
/* B1D674 800A64D4 008FC821 */  addu  $t9, $a0, $t7
/* B1D678 800A64D8 8F2E0000 */  lw    $t6, ($t9)
/* B1D67C 800A64DC 0187C024 */  and   $t8, $t4, $a3
/* B1D680 800A64E0 00004825 */  move  $t1, $zero
/* B1D684 800A64E4 030E7821 */  addu  $t7, $t8, $t6
/* B1D688 800A64E8 01E8C821 */  addu  $t9, $t7, $t0
/* B1D68C 800A64EC 8F2D000C */  lw    $t5, 0xc($t9)
/* B1D690 800A64F0 000D7100 */  sll   $t6, $t5, 4
/* B1D694 800A64F4 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1D698 800A64F8 000FC880 */  sll   $t9, $t7, 2
/* B1D69C 800A64FC 00997021 */  addu  $t6, $a0, $t9
/* B1D6A0 800A6500 8DCF0000 */  lw    $t7, ($t6)
/* B1D6A4 800A6504 01A7C024 */  and   $t8, $t5, $a3
/* B1D6A8 800A6508 030FC821 */  addu  $t9, $t8, $t7
/* B1D6AC 800A650C 03281821 */  addu  $v1, $t9, $t0
/* B1D6B0 800A6510 8C780004 */  lw    $t8, 4($v1)
/* B1D6B4 800A6514 00187900 */  sll   $t7, $t8, 4
/* B1D6B8 800A6518 000FCF02 */  srl   $t9, $t7, 0x1c
/* B1D6BC 800A651C 00197080 */  sll   $t6, $t9, 2
/* B1D6C0 800A6520 008E7821 */  addu  $t7, $a0, $t6
/* B1D6C4 800A6524 8DF90000 */  lw    $t9, ($t7)
/* B1D6C8 800A6528 AFA00044 */  sw    $zero, 0x44($sp)
/* B1D6CC 800A652C 03077024 */  and   $t6, $t8, $a3
/* B1D6D0 800A6530 AFB80018 */  sw    $t8, 0x18($sp)
/* B1D6D4 800A6534 94780002 */  lhu   $t8, 2($v1)
/* B1D6D8 800A6538 032E7821 */  addu  $t7, $t9, $t6
/* B1D6DC 800A653C 01E81021 */  addu  $v0, $t7, $t0
/* B1D6E0 800A6540 0018C900 */  sll   $t9, $t8, 4
/* B1D6E4 800A6544 03228021 */  addu  $s0, $t9, $v0
/* B1D6E8 800A6548 8CAE0048 */  lw    $t6, 0x48($a1)
.L800A654C:
/* B1D6EC 800A654C 00067880 */  sll   $t7, $a2, 2
/* B1D6F0 800A6550 01E67823 */  subu  $t7, $t7, $a2
/* B1D6F4 800A6554 000F7880 */  sll   $t7, $t7, 2
/* B1D6F8 800A6558 01CFC021 */  addu  $t8, $t6, $t7
/* B1D6FC 800A655C 0309C821 */  addu  $t9, $t8, $t1
/* B1D700 800A6560 0050082B */  sltu  $at, $v0, $s0
/* B1D704 800A6564 8F2A0004 */  lw    $t2, 4($t9)
/* B1D708 800A6568 1020002B */  beqz  $at, .L800A6618
/* B1D70C 800A656C 00405825 */   move  $t3, $v0
/* B1D710 800A6570 8D6D0008 */  lw    $t5, 8($t3)
.L800A6574:
/* B1D714 800A6574 000D7100 */  sll   $t6, $t5, 4
/* B1D718 800A6578 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1D71C 800A657C 000FC080 */  sll   $t8, $t7, 2
/* B1D720 800A6580 0098C821 */  addu  $t9, $a0, $t8
/* B1D724 800A6584 8F2E0000 */  lw    $t6, ($t9)
/* B1D728 800A6588 95790000 */  lhu   $t9, ($t3)
/* B1D72C 800A658C 01A77824 */  and   $t7, $t5, $a3
/* B1D730 800A6590 01CFC021 */  addu  $t8, $t6, $t7
/* B1D734 800A6594 03320019 */  multu $t9, $s2
/* B1D738 800A6598 03086021 */  addu  $t4, $t8, $t0
/* B1D73C 800A659C 01808825 */  move  $s1, $t4
/* B1D740 800A65A0 00007012 */  mflo  $t6
/* B1D744 800A65A4 01CC7821 */  addu  $t7, $t6, $t4
/* B1D748 800A65A8 018F082B */  sltu  $at, $t4, $t7
/* B1D74C 800A65AC 50200017 */  beql  $at, $zero, .L800A660C
/* B1D750 800A65B0 256B0010 */   addiu $t3, $t3, 0x10
/* B1D754 800A65B4 96380000 */  lhu   $t8, ($s1)
.L800A65B8:
/* B1D758 800A65B8 2631000A */  addiu $s1, $s1, 0xa
/* B1D75C 800A65BC 0018C900 */  sll   $t9, $t8, 4
/* B1D760 800A65C0 032A6821 */  addu  $t5, $t9, $t2
/* B1D764 800A65C4 A5A00006 */  sh    $zero, 6($t5)
/* B1D768 800A65C8 862EFFF8 */  lh    $t6, -8($s1)
/* B1D76C 800A65CC A5AE0008 */  sh    $t6, 8($t5)
/* B1D770 800A65D0 862FFFFA */  lh    $t7, -6($s1)
/* B1D774 800A65D4 A5AF000A */  sh    $t7, 0xa($t5)
/* B1D778 800A65D8 9238FFFF */  lbu   $t8, -1($s1)
/* B1D77C 800A65DC A1B8000F */  sb    $t8, 0xf($t5)
/* B1D780 800A65E0 95790000 */  lhu   $t9, ($t3)
/* B1D784 800A65E4 03320019 */  multu $t9, $s2
/* B1D788 800A65E8 00007012 */  mflo  $t6
/* B1D78C 800A65EC 01CC7821 */  addu  $t7, $t6, $t4
/* B1D790 800A65F0 022F082B */  sltu  $at, $s1, $t7
/* B1D794 800A65F4 5420FFF0 */  bnezl $at, .L800A65B8
/* B1D798 800A65F8 96380000 */   lhu   $t8, ($s1)
/* B1D79C 800A65FC 94780002 */  lhu   $t8, 2($v1)
/* B1D7A0 800A6600 0018C900 */  sll   $t9, $t8, 4
/* B1D7A4 800A6604 03228021 */  addu  $s0, $t9, $v0
/* B1D7A8 800A6608 256B0010 */  addiu $t3, $t3, 0x10
.L800A660C:
/* B1D7AC 800A660C 0170082B */  sltu  $at, $t3, $s0
/* B1D7B0 800A6610 5420FFD8 */  bnezl $at, .L800A6574
/* B1D7B4 800A6614 8D6D0008 */   lw    $t5, 8($t3)
.L800A6618:
/* B1D7B8 800A6618 25290004 */  addiu $t1, $t1, 4
/* B1D7BC 800A661C 5533FFCB */  bnel  $t1, $s3, .L800A654C
/* B1D7C0 800A6620 8CAE0048 */   lw    $t6, 0x48($a1)
/* B1D7C4 800A6624 8FB00008 */  lw    $s0, 8($sp)
/* B1D7C8 800A6628 8FB1000C */  lw    $s1, 0xc($sp)
/* B1D7CC 800A662C 8FB20010 */  lw    $s2, 0x10($sp)
/* B1D7D0 800A6630 8FB30014 */  lw    $s3, 0x14($sp)
/* B1D7D4 800A6634 03E00008 */  jr    $ra
/* B1D7D8 800A6638 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_800A663C
/* B1D7DC 800A663C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B1D7E0 800A6640 AFB60030 */  sw    $s6, 0x30($sp)
/* B1D7E4 800A6644 00067100 */  sll   $t6, $a2, 4
/* B1D7E8 800A6648 3C168016 */  lui   $s6, %hi(D_80166FA8) # $s6, 0x8016
/* B1D7EC 800A664C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1D7F0 800A6650 26D66FA8 */  addiu $s6, %lo(D_80166FA8) # addiu $s6, $s6, 0x6fa8
/* B1D7F4 800A6654 000FC080 */  sll   $t8, $t7, 2
/* B1D7F8 800A6658 AFB70034 */  sw    $s7, 0x34($sp)
/* B1D7FC 800A665C 02D8C821 */  addu  $t9, $s6, $t8
/* B1D800 800A6660 8F290000 */  lw    $t1, ($t9)
/* B1D804 800A6664 3C1700FF */  lui   $s7, (0x00FFFFFF >> 16) # lui $s7, 0xff
/* B1D808 800A6668 36F7FFFF */  ori   $s7, (0x00FFFFFF & 0xFFFF) # ori $s7, $s7, 0xffff
/* B1D80C 800A666C AFBE0038 */  sw    $fp, 0x38($sp)
/* B1D810 800A6670 00D75024 */  and   $t2, $a2, $s7
/* B1D814 800A6674 3C1E8000 */  lui   $fp, 0x8000
/* B1D818 800A6678 012A5821 */  addu  $t3, $t1, $t2
/* B1D81C 800A667C AFBF003C */  sw    $ra, 0x3c($sp)
/* B1D820 800A6680 AFB5002C */  sw    $s5, 0x2c($sp)
/* B1D824 800A6684 AFB40028 */  sw    $s4, 0x28($sp)
/* B1D828 800A6688 AFB30024 */  sw    $s3, 0x24($sp)
/* B1D82C 800A668C AFB20020 */  sw    $s2, 0x20($sp)
/* B1D830 800A6690 AFB1001C */  sw    $s1, 0x1c($sp)
/* B1D834 800A6694 AFB00018 */  sw    $s0, 0x18($sp)
/* B1D838 800A6698 AFA40048 */  sw    $a0, 0x48($sp)
/* B1D83C 800A669C AFA70054 */  sw    $a3, 0x54($sp)
/* B1D840 800A66A0 017E1021 */  addu  $v0, $t3, $fp
/* B1D844 800A66A4 904C0004 */  lbu   $t4, 4($v0)
/* B1D848 800A66A8 ACA20000 */  sw    $v0, ($a1)
/* B1D84C 800A66AC 00A0A825 */  move  $s5, $a1
/* B1D850 800A66B0 ACAC0044 */  sw    $t4, 0x44($a1)
/* B1D854 800A66B4 8C430000 */  lw    $v1, ($v0)
/* B1D858 800A66B8 90480004 */  lbu   $t0, 4($v0)
/* B1D85C 800A66BC 00C08825 */  move  $s1, $a2
/* B1D860 800A66C0 00036900 */  sll   $t5, $v1, 4
/* B1D864 800A66C4 000D7702 */  srl   $t6, $t5, 0x1c
/* B1D868 800A66C8 000E7880 */  sll   $t7, $t6, 2
/* B1D86C 800A66CC 02CFC021 */  addu  $t8, $s6, $t7
/* B1D870 800A66D0 8F190000 */  lw    $t9, ($t8)
/* B1D874 800A66D4 00774824 */  and   $t1, $v1, $s7
/* B1D878 800A66D8 00082080 */  sll   $a0, $t0, 2
/* B1D87C 800A66DC 3C058014 */  lui   $a1, %hi(D_801406F0) # $a1, 0x8014
/* B1D880 800A66E0 00882023 */  subu  $a0, $a0, $t0
/* B1D884 800A66E4 03295021 */  addu  $t2, $t9, $t1
/* B1D888 800A66E8 015E8021 */  addu  $s0, $t2, $fp
/* B1D88C 800A66EC 00042080 */  sll   $a0, $a0, 2
/* B1D890 800A66F0 24A506F0 */  addiu $a1, %lo(D_801406F0) # addiu $a1, $a1, 0x6f0
/* B1D894 800A66F4 AFB10050 */  sw    $s1, 0x50($sp)
/* B1D898 800A66F8 240600D4 */  li    $a2, 212
/* B1D89C 800A66FC 0C01EBB8 */  jal   func_8007AEE0
/* B1D8A0 800A6700 AFA80044 */   sw    $t0, 0x44($sp)
/* B1D8A4 800A6704 14400007 */  bnez  $v0, .L800A6724
/* B1D8A8 800A6708 AEA20048 */   sw    $v0, 0x48($s5)
/* B1D8AC 800A670C 3C048014 */  lui   $a0, %hi(D_80140700) # $a0, 0x8014
/* B1D8B0 800A6710 3C058014 */  lui   $a1, %hi(D_8014071C) # $a1, 0x8014
/* B1D8B4 800A6714 24A5071C */  addiu $a1, %lo(D_8014071C) # addiu $a1, $a1, 0x71c
/* B1D8B8 800A6718 24840700 */  addiu $a0, %lo(D_80140700) # addiu $a0, $a0, 0x700
/* B1D8BC 800A671C 0C0007FC */  jal   __assert
/* B1D8C0 800A6720 240600D6 */   li    $a2, 214
.L800A6724:
/* B1D8C4 800A6724 8FAB0044 */  lw    $t3, 0x44($sp)
/* B1D8C8 800A6728 00009025 */  move  $s2, $zero
/* B1D8CC 800A672C 00009825 */  move  $s3, $zero
/* B1D8D0 800A6730 19600044 */  blez  $t3, .L800A6844
/* B1D8D4 800A6734 0200A025 */   move  $s4, $s0
.L800A6738:
/* B1D8D8 800A6738 8E820000 */  lw    $v0, ($s4)
/* B1D8DC 800A673C 8EAC0048 */  lw    $t4, 0x48($s5)
/* B1D8E0 800A6740 24010004 */  li    $at, 4
/* B1D8E4 800A6744 00027100 */  sll   $t6, $v0, 4
/* B1D8E8 800A6748 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1D8EC 800A674C 000FC080 */  sll   $t8, $t7, 2
/* B1D8F0 800A6750 02D8C821 */  addu  $t9, $s6, $t8
/* B1D8F4 800A6754 8F290000 */  lw    $t1, ($t9)
/* B1D8F8 800A6758 00576824 */  and   $t5, $v0, $s7
/* B1D8FC 800A675C 01938021 */  addu  $s0, $t4, $s3
/* B1D900 800A6760 01A95021 */  addu  $t2, $t5, $t1
/* B1D904 800A6764 015E1821 */  addu  $v1, $t2, $fp
/* B1D908 800A6768 8C6B0008 */  lw    $t3, 8($v1)
/* B1D90C 800A676C 55610006 */  bnel  $t3, $at, .L800A6788
/* B1D910 800A6770 A2000000 */   sb    $zero, ($s0)
/* B1D914 800A6774 8C67000C */  lw    $a3, 0xc($v1)
/* B1D918 800A6778 3C058014 */  lui   $a1, %hi(D_8014072C) # $a1, 0x8014
/* B1D91C 800A677C 14E00005 */  bnez  $a3, .L800A6794
/* B1D920 800A6780 00F76024 */   and   $t4, $a3, $s7
/* B1D924 800A6784 A2000000 */  sb    $zero, ($s0)
.L800A6788:
/* B1D928 800A6788 AE000004 */  sw    $zero, 4($s0)
/* B1D92C 800A678C 10000028 */  b     .L800A6830
/* B1D930 800A6790 AE000008 */   sw    $zero, 8($s0)
.L800A6794:
/* B1D934 800A6794 00077100 */  sll   $t6, $a3, 4
/* B1D938 800A6798 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1D93C 800A679C 000FC080 */  sll   $t8, $t7, 2
/* B1D940 800A67A0 02D8C821 */  addu  $t9, $s6, $t8
/* B1D944 800A67A4 8F2D0000 */  lw    $t5, ($t9)
/* B1D948 800A67A8 A2000000 */  sb    $zero, ($s0)
/* B1D94C 800A67AC 24A5072C */  addiu $a1, %lo(D_8014072C) # addiu $a1, $a1, 0x72c
/* B1D950 800A67B0 018D4821 */  addu  $t1, $t4, $t5
/* B1D954 800A67B4 013E8821 */  addu  $s1, $t1, $fp
/* B1D958 800A67B8 96240000 */  lhu   $a0, ($s1)
/* B1D95C 800A67BC 240600EB */  li    $a2, 235
/* B1D960 800A67C0 0C01EBB8 */  jal   func_8007AEE0
/* B1D964 800A67C4 00042100 */   sll   $a0, $a0, 4
/* B1D968 800A67C8 14400007 */  bnez  $v0, .L800A67E8
/* B1D96C 800A67CC AE020004 */   sw    $v0, 4($s0)
/* B1D970 800A67D0 3C048014 */  lui   $a0, %hi(D_8014073C) # $a0, 0x8014
/* B1D974 800A67D4 3C058014 */  lui   $a1, %hi(D_80140754) # $a1, 0x8014
/* B1D978 800A67D8 24A50754 */  addiu $a1, %lo(D_80140754) # addiu $a1, $a1, 0x754
/* B1D97C 800A67DC 2484073C */  addiu $a0, %lo(D_8014073C) # addiu $a0, $a0, 0x73c
/* B1D980 800A67E0 0C0007FC */  jal   __assert
/* B1D984 800A67E4 240600ED */   li    $a2, 237
.L800A67E8:
/* B1D988 800A67E8 96240000 */  lhu   $a0, ($s1)
/* B1D98C 800A67EC 3C058014 */  lui   $a1, %hi(D_80140764) # $a1, 0x8014
/* B1D990 800A67F0 24A50764 */  addiu $a1, %lo(D_80140764) # addiu $a1, $a1, 0x764
/* B1D994 800A67F4 240600F0 */  li    $a2, 240
/* B1D998 800A67F8 0C01EBB8 */  jal   func_8007AEE0
/* B1D99C 800A67FC 00042100 */   sll   $a0, $a0, 4
/* B1D9A0 800A6800 14400007 */  bnez  $v0, .L800A6820
/* B1D9A4 800A6804 AE020008 */   sw    $v0, 8($s0)
/* B1D9A8 800A6808 3C048014 */  lui   $a0, %hi(D_80140774) # $a0, 0x8014
/* B1D9AC 800A680C 3C058014 */  lui   $a1, %hi(D_8014078C) # $a1, 0x8014
/* B1D9B0 800A6810 24A5078C */  addiu $a1, %lo(D_8014078C) # addiu $a1, $a1, 0x78c
/* B1D9B4 800A6814 24840774 */  addiu $a0, %lo(D_80140774) # addiu $a0, $a0, 0x774
/* B1D9B8 800A6818 0C0007FC */  jal   __assert
/* B1D9BC 800A681C 240600F2 */   li    $a2, 242
.L800A6820:
/* B1D9C0 800A6820 8FA40048 */  lw    $a0, 0x48($sp)
/* B1D9C4 800A6824 02A02825 */  move  $a1, $s5
/* B1D9C8 800A6828 0C029918 */  jal   func_800A6460
/* B1D9CC 800A682C 02403025 */   move  $a2, $s2
.L800A6830:
/* B1D9D0 800A6830 8FAA0044 */  lw    $t2, 0x44($sp)
/* B1D9D4 800A6834 26520001 */  addiu $s2, $s2, 1
/* B1D9D8 800A6838 2673000C */  addiu $s3, $s3, 0xc
/* B1D9DC 800A683C 164AFFBE */  bne   $s2, $t2, .L800A6738
/* B1D9E0 800A6840 26940004 */   addiu $s4, $s4, 4
.L800A6844:
/* B1D9E4 800A6844 8FA40048 */  lw    $a0, 0x48($sp)
/* B1D9E8 800A6848 26A5004C */  addiu $a1, $s5, 0x4c
/* B1D9EC 800A684C 8FA60050 */  lw    $a2, 0x50($sp)
/* B1D9F0 800A6850 0C02921F */  jal   func_800A487C
/* B1D9F4 800A6854 8FA70054 */   lw    $a3, 0x54($sp)
/* B1D9F8 800A6858 8FBF003C */  lw    $ra, 0x3c($sp)
/* B1D9FC 800A685C 8FB00018 */  lw    $s0, 0x18($sp)
/* B1DA00 800A6860 8FB1001C */  lw    $s1, 0x1c($sp)
/* B1DA04 800A6864 8FB20020 */  lw    $s2, 0x20($sp)
/* B1DA08 800A6868 8FB30024 */  lw    $s3, 0x24($sp)
/* B1DA0C 800A686C 8FB40028 */  lw    $s4, 0x28($sp)
/* B1DA10 800A6870 8FB5002C */  lw    $s5, 0x2c($sp)
/* B1DA14 800A6874 8FB60030 */  lw    $s6, 0x30($sp)
/* B1DA18 800A6878 8FB70034 */  lw    $s7, 0x34($sp)
/* B1DA1C 800A687C 8FBE0038 */  lw    $fp, 0x38($sp)
/* B1DA20 800A6880 03E00008 */  jr    $ra
/* B1DA24 800A6884 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_800A6888
/* B1DA28 800A6888 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1DA2C 800A688C AFBF002C */  sw    $ra, 0x2c($sp)
/* B1DA30 800A6890 AFB40028 */  sw    $s4, 0x28($sp)
/* B1DA34 800A6894 AFB30024 */  sw    $s3, 0x24($sp)
/* B1DA38 800A6898 AFB20020 */  sw    $s2, 0x20($sp)
/* B1DA3C 800A689C AFB1001C */  sw    $s1, 0x1c($sp)
/* B1DA40 800A68A0 AFB00018 */  sw    $s0, 0x18($sp)
/* B1DA44 800A68A4 AFA40030 */  sw    $a0, 0x30($sp)
/* B1DA48 800A68A8 8CA70048 */  lw    $a3, 0x48($a1)
/* B1DA4C 800A68AC 00A08825 */  move  $s1, $a1
/* B1DA50 800A68B0 50E0002F */  beql  $a3, $zero, .L800A6970
/* B1DA54 800A68B4 8FBF002C */   lw    $ra, 0x2c($sp)
/* B1DA58 800A68B8 8CAE0044 */  lw    $t6, 0x44($a1)
/* B1DA5C 800A68BC 00009025 */  move  $s2, $zero
/* B1DA60 800A68C0 00008025 */  move  $s0, $zero
/* B1DA64 800A68C4 19C00020 */  blez  $t6, .L800A6948
/* B1DA68 800A68C8 3C148014 */   lui   $s4, %hi(D_801407AC) # $s4, 0x8014
/* B1DA6C 800A68CC 3C138014 */  lui   $s3, %hi(D_8014079C) # $s3, 0x8014
/* B1DA70 800A68D0 2673079C */  addiu $s3, %lo(D_8014079C) # addiu $s3, $s3, 0x79c
/* B1DA74 800A68D4 269407AC */  addiu $s4, %lo(D_801407AC) # addiu $s4, $s4, 0x7ac
/* B1DA78 800A68D8 00F01021 */  addu  $v0, $a3, $s0
.L800A68DC:
/* B1DA7C 800A68DC 8C440004 */  lw    $a0, 4($v0)
/* B1DA80 800A68E0 02602825 */  move  $a1, $s3
/* B1DA84 800A68E4 50800009 */  beql  $a0, $zero, .L800A690C
/* B1DA88 800A68E8 8C440008 */   lw    $a0, 8($v0)
/* B1DA8C 800A68EC 0C01EC35 */  jal   func_8007B0D4
/* B1DA90 800A68F0 24060114 */   li    $a2, 276
/* B1DA94 800A68F4 8E2F0048 */  lw    $t7, 0x48($s1)
/* B1DA98 800A68F8 01F0C021 */  addu  $t8, $t7, $s0
/* B1DA9C 800A68FC AF000004 */  sw    $zero, 4($t8)
/* B1DAA0 800A6900 8E270048 */  lw    $a3, 0x48($s1)
/* B1DAA4 800A6904 00F01021 */  addu  $v0, $a3, $s0
/* B1DAA8 800A6908 8C440008 */  lw    $a0, 8($v0)
.L800A690C:
/* B1DAAC 800A690C 02802825 */  move  $a1, $s4
/* B1DAB0 800A6910 50800008 */  beql  $a0, $zero, .L800A6934
/* B1DAB4 800A6914 8E290044 */   lw    $t1, 0x44($s1)
/* B1DAB8 800A6918 0C01EC35 */  jal   func_8007B0D4
/* B1DABC 800A691C 24060118 */   li    $a2, 280
/* B1DAC0 800A6920 8E390048 */  lw    $t9, 0x48($s1)
/* B1DAC4 800A6924 03304021 */  addu  $t0, $t9, $s0
/* B1DAC8 800A6928 AD000008 */  sw    $zero, 8($t0)
/* B1DACC 800A692C 8E270048 */  lw    $a3, 0x48($s1)
/* B1DAD0 800A6930 8E290044 */  lw    $t1, 0x44($s1)
.L800A6934:
/* B1DAD4 800A6934 26520001 */  addiu $s2, $s2, 1
/* B1DAD8 800A6938 2610000C */  addiu $s0, $s0, 0xc
/* B1DADC 800A693C 0249082A */  slt   $at, $s2, $t1
/* B1DAE0 800A6940 5420FFE6 */  bnezl $at, .L800A68DC
/* B1DAE4 800A6944 00F01021 */   addu  $v0, $a3, $s0
.L800A6948:
/* B1DAE8 800A6948 10E00005 */  beqz  $a3, .L800A6960
/* B1DAEC 800A694C 00E02025 */   move  $a0, $a3
/* B1DAF0 800A6950 3C058014 */  lui   $a1, %hi(D_801407BC) # $a1, 0x8014
/* B1DAF4 800A6954 24A507BC */  addiu $a1, %lo(D_801407BC) # addiu $a1, $a1, 0x7bc
/* B1DAF8 800A6958 0C01EC35 */  jal   func_8007B0D4
/* B1DAFC 800A695C 2406011E */   li    $a2, 286
.L800A6960:
/* B1DB00 800A6960 2624004C */  addiu $a0, $s1, 0x4c
/* B1DB04 800A6964 0C0295BC */  jal   func_800A56F0
/* B1DB08 800A6968 8FA50030 */   lw    $a1, 0x30($sp)
/* B1DB0C 800A696C 8FBF002C */  lw    $ra, 0x2c($sp)
.L800A6970:
/* B1DB10 800A6970 8FB00018 */  lw    $s0, 0x18($sp)
/* B1DB14 800A6974 8FB1001C */  lw    $s1, 0x1c($sp)
/* B1DB18 800A6978 8FB20020 */  lw    $s2, 0x20($sp)
/* B1DB1C 800A697C 8FB30024 */  lw    $s3, 0x24($sp)
/* B1DB20 800A6980 8FB40028 */  lw    $s4, 0x28($sp)
/* B1DB24 800A6984 03E00008 */  jr    $ra
/* B1DB28 800A6988 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800A698C
/* B1DB2C 800A698C 27BDFF88 */  addiu $sp, $sp, -0x78
/* B1DB30 800A6990 93AF008B */  lbu   $t7, 0x8b($sp)
/* B1DB34 800A6994 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1DB38 800A6998 AFA40078 */  sw    $a0, 0x78($sp)
/* B1DB3C 800A699C 000FC080 */  sll   $t8, $t7, 2
/* B1DB40 800A69A0 AFA5007C */  sw    $a1, 0x7c($sp)
/* B1DB44 800A69A4 AFA60080 */  sw    $a2, 0x80($sp)
/* B1DB48 800A69A8 AFA70084 */  sw    $a3, 0x84($sp)
/* B1DB4C 800A69AC 00B8C821 */  addu  $t9, $a1, $t8
/* B1DB50 800A69B0 8F220000 */  lw    $v0, ($t9)
/* B1DB54 800A69B4 3C0C8016 */  lui   $t4, %hi(D_80166FA8)
/* B1DB58 800A69B8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1DB5C 800A69BC 00024900 */  sll   $t1, $v0, 4
/* B1DB60 800A69C0 00095702 */  srl   $t2, $t1, 0x1c
/* B1DB64 800A69C4 000A5880 */  sll   $t3, $t2, 2
/* B1DB68 800A69C8 018B6021 */  addu  $t4, $t4, $t3
/* B1DB6C 800A69CC 8D8C6FA8 */  lw    $t4, %lo(D_80166FA8)($t4)
/* B1DB70 800A69D0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1DB74 800A69D4 00414024 */  and   $t0, $v0, $at
/* B1DB78 800A69D8 93A30087 */  lbu   $v1, 0x87($sp)
/* B1DB7C 800A69DC 3C018000 */  lui   $at, 0x8000
/* B1DB80 800A69E0 010C6821 */  addu  $t5, $t0, $t4
/* B1DB84 800A69E4 01A17821 */  addu  $t7, $t5, $at
/* B1DB88 800A69E8 240100FF */  li    $at, 255
/* B1DB8C 800A69EC 14610005 */  bne   $v1, $at, .L800A6A04
/* B1DB90 800A69F0 AFAF0070 */   sw    $t7, 0x70($sp)
/* B1DB94 800A69F4 0C029CBF */  jal   func_800A72FC
/* B1DB98 800A69F8 27A4006C */   addiu $a0, $sp, 0x6c
/* B1DB9C 800A69FC 10000006 */  b     .L800A6A18
/* B1DBA0 800A6A00 93A9008B */   lbu   $t1, 0x8b($sp)
.L800A6A04:
/* B1DBA4 800A6A04 8FB80080 */  lw    $t8, 0x80($sp)
/* B1DBA8 800A6A08 00037180 */  sll   $t6, $v1, 6
/* B1DBAC 800A6A0C 01D8C821 */  addu  $t9, $t6, $t8
/* B1DBB0 800A6A10 AFB9006C */  sw    $t9, 0x6c($sp)
/* B1DBB4 800A6A14 93A9008B */  lbu   $t1, 0x8b($sp)
.L800A6A18:
/* B1DBB8 800A6A18 8FAB0080 */  lw    $t3, 0x80($sp)
/* B1DBBC 800A6A1C 8FA4006C */  lw    $a0, 0x6c($sp)
/* B1DBC0 800A6A20 00095180 */  sll   $t2, $t1, 6
/* B1DBC4 800A6A24 014B2821 */  addu  $a1, $t2, $t3
/* B1DBC8 800A6A28 AFA50024 */  sw    $a1, 0x24($sp)
/* B1DBCC 800A6A2C 0C029BE8 */  jal   func_800A6FA0
/* B1DBD0 800A6A30 27A60028 */   addiu $a2, $sp, 0x28
/* B1DBD4 800A6A34 8FA50024 */  lw    $a1, 0x24($sp)
/* B1DBD8 800A6A38 0C029CD7 */  jal   func_800A735C
/* B1DBDC 800A6A3C 27A40028 */   addiu $a0, $sp, 0x28
/* B1DBE0 800A6A40 8FA80070 */  lw    $t0, 0x70($sp)
/* B1DBE4 800A6A44 240100FF */  li    $at, 255
/* B1DBE8 800A6A48 8FA40078 */  lw    $a0, 0x78($sp)
/* B1DBEC 800A6A4C 91020006 */  lbu   $v0, 6($t0)
/* B1DBF0 800A6A50 8FA5007C */  lw    $a1, 0x7c($sp)
/* B1DBF4 800A6A54 8FA60080 */  lw    $a2, 0x80($sp)
/* B1DBF8 800A6A58 10410007 */  beq   $v0, $at, .L800A6A78
/* B1DBFC 800A6A5C 93A7008B */   lbu   $a3, 0x8b($sp)
/* B1DC00 800A6A60 0C029A63 */  jal   func_800A698C
/* B1DC04 800A6A64 AFA20010 */   sw    $v0, 0x10($sp)
/* B1DC08 800A6A68 50400004 */  beql  $v0, $zero, .L800A6A7C
/* B1DC0C 800A6A6C 8FAC0070 */   lw    $t4, 0x70($sp)
/* B1DC10 800A6A70 10000011 */  b     .L800A6AB8
/* B1DC14 800A6A74 8FBF001C */   lw    $ra, 0x1c($sp)
.L800A6A78:
/* B1DC18 800A6A78 8FAC0070 */  lw    $t4, 0x70($sp)
.L800A6A7C:
/* B1DC1C 800A6A7C 240100FF */  li    $at, 255
/* B1DC20 800A6A80 8FA40078 */  lw    $a0, 0x78($sp)
/* B1DC24 800A6A84 91820007 */  lbu   $v0, 7($t4)
/* B1DC28 800A6A88 8FA5007C */  lw    $a1, 0x7c($sp)
/* B1DC2C 800A6A8C 8FA60080 */  lw    $a2, 0x80($sp)
/* B1DC30 800A6A90 10410007 */  beq   $v0, $at, .L800A6AB0
/* B1DC34 800A6A94 93A70087 */   lbu   $a3, 0x87($sp)
/* B1DC38 800A6A98 0C029A63 */  jal   func_800A698C
/* B1DC3C 800A6A9C AFA20010 */   sw    $v0, 0x10($sp)
/* B1DC40 800A6AA0 50400004 */  beql  $v0, $zero, .L800A6AB4
/* B1DC44 800A6AA4 00001025 */   move  $v0, $zero
/* B1DC48 800A6AA8 10000003 */  b     .L800A6AB8
/* B1DC4C 800A6AAC 8FBF001C */   lw    $ra, 0x1c($sp)
.L800A6AB0:
/* B1DC50 800A6AB0 00001025 */  move  $v0, $zero
.L800A6AB4:
/* B1DC54 800A6AB4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A6AB8:
/* B1DC58 800A6AB8 27BD0078 */  addiu $sp, $sp, 0x78
/* B1DC5C 800A6ABC 03E00008 */  jr    $ra
/* B1DC60 800A6AC0 00000000 */   nop   

glabel func_800A6AC4
/* B1DC64 800A6AC4 27BDFF80 */  addiu $sp, $sp, -0x80
/* B1DC68 800A6AC8 AFBF0054 */  sw    $ra, 0x54($sp)
/* B1DC6C 800A6ACC AFBE0050 */  sw    $fp, 0x50($sp)
/* B1DC70 800A6AD0 AFB7004C */  sw    $s7, 0x4c($sp)
/* B1DC74 800A6AD4 AFB60048 */  sw    $s6, 0x48($sp)
/* B1DC78 800A6AD8 AFB50044 */  sw    $s5, 0x44($sp)
/* B1DC7C 800A6ADC AFB40040 */  sw    $s4, 0x40($sp)
/* B1DC80 800A6AE0 AFB3003C */  sw    $s3, 0x3c($sp)
/* B1DC84 800A6AE4 AFB20038 */  sw    $s2, 0x38($sp)
/* B1DC88 800A6AE8 AFB10034 */  sw    $s1, 0x34($sp)
/* B1DC8C 800A6AEC AFB00030 */  sw    $s0, 0x30($sp)
/* B1DC90 800A6AF0 AFA50084 */  sw    $a1, 0x84($sp)
/* B1DC94 800A6AF4 8C8E0000 */  lw    $t6, ($a0)
/* B1DC98 800A6AF8 3C168016 */  lui   $s6, %hi(D_80166FA8) # $s6, 0x8016
/* B1DC9C 800A6AFC 26D66FA8 */  addiu $s6, %lo(D_80166FA8) # addiu $s6, $s6, 0x6fa8
/* B1DCA0 800A6B00 8DC20000 */  lw    $v0, ($t6)
/* B1DCA4 800A6B04 3C1700FF */  lui   $s7, (0x00FFFFFF >> 16) # lui $s7, 0xff
/* B1DCA8 800A6B08 36F7FFFF */  ori   $s7, (0x00FFFFFF & 0xFFFF) # ori $s7, $s7, 0xffff
/* B1DCAC 800A6B0C 00027900 */  sll   $t7, $v0, 4
/* B1DCB0 800A6B10 000FC702 */  srl   $t8, $t7, 0x1c
/* B1DCB4 800A6B14 0018C880 */  sll   $t9, $t8, 2
/* B1DCB8 800A6B18 02D94021 */  addu  $t0, $s6, $t9
/* B1DCBC 800A6B1C 8D090000 */  lw    $t1, ($t0)
/* B1DCC0 800A6B20 00575024 */  and   $t2, $v0, $s7
/* B1DCC4 800A6B24 3C1E8000 */  li    $fp, 0x80000000 # 0.000000
/* B1DCC8 800A6B28 012A5821 */  addu  $t3, $t1, $t2
/* B1DCCC 800A6B2C 017E6021 */  addu  $t4, $t3, $fp
/* B1DCD0 800A6B30 AFAC0058 */  sw    $t4, 0x58($sp)
/* B1DCD4 800A6B34 8C90006C */  lw    $s0, 0x6c($a0)
/* B1DCD8 800A6B38 0080A025 */  move  $s4, $a0
/* B1DCDC 800A6B3C 00C0A825 */  move  $s5, $a2
/* B1DCE0 800A6B40 860D0006 */  lh    $t5, 6($s0)
/* B1DCE4 800A6B44 860E0008 */  lh    $t6, 8($s0)
/* B1DCE8 800A6B48 860F000A */  lh    $t7, 0xa($s0)
/* B1DCEC 800A6B4C 448D2000 */  mtc1  $t5, $f4
/* B1DCF0 800A6B50 448E3000 */  mtc1  $t6, $f6
/* B1DCF4 800A6B54 448F4000 */  mtc1  $t7, $f8
/* B1DCF8 800A6B58 26100006 */  addiu $s0, $s0, 6
/* B1DCFC 800A6B5C 46802420 */  cvt.s.w $f16, $f4
/* B1DD00 800A6B60 468033A0 */  cvt.s.w $f14, $f6
/* B1DD04 800A6B64 10E00025 */  beqz  $a3, .L800A6BFC
/* B1DD08 800A6B68 468044A0 */   cvt.s.w $f18, $f8
/* B1DD0C 800A6B6C 8618FFFA */  lh    $t8, -6($s0)
/* B1DD10 800A6B70 8619FFFC */  lh    $t9, -4($s0)
/* B1DD14 800A6B74 8608FFFE */  lh    $t0, -2($s0)
/* B1DD18 800A6B78 44985000 */  mtc1  $t8, $f10
/* B1DD1C 800A6B7C 44992000 */  mtc1  $t9, $f4
/* B1DD20 800A6B80 44883000 */  mtc1  $t0, $f6
/* B1DD24 800A6B84 24010023 */  li    $at, 35
/* B1DD28 800A6B88 26100000 */  addiu $s0, $s0, 0
/* B1DD2C 800A6B8C 46805020 */  cvt.s.w $f0, $f10
/* B1DD30 800A6B90 468020A0 */  cvt.s.w $f2, $f4
/* B1DD34 800A6B94 14E10006 */  bne   $a3, $at, .L800A6BB0
/* B1DD38 800A6B98 46803320 */   cvt.s.w $f12, $f6
/* B1DD3C 800A6B9C 84C901E0 */  lh    $t1, 0x1e0($a2)
/* B1DD40 800A6BA0 44894000 */  mtc1  $t1, $f8
/* B1DD44 800A6BA4 00000000 */  nop   
/* B1DD48 800A6BA8 468042A0 */  cvt.s.w $f10, $f8
/* B1DD4C 800A6BAC 460A7380 */  add.s $f14, $f14, $f10
.L800A6BB0:
/* B1DD50 800A6BB0 4600810D */  trunc.w.s $f4, $f16
/* B1DD54 800A6BB4 8FA40084 */  lw    $a0, 0x84($sp)
/* B1DD58 800A6BB8 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1DD5C 800A6BBC 4600718D */  trunc.w.s $f6, $f14
/* B1DD60 800A6BC0 44052000 */  mfc1  $a1, $f4
/* B1DD64 800A6BC4 E7A20014 */  swc1  $f2, 0x14($sp)
/* B1DD68 800A6BC8 4600920D */  trunc.w.s $f8, $f18
/* B1DD6C 800A6BCC 44063000 */  mfc1  $a2, $f6
/* B1DD70 800A6BD0 00052C00 */  sll   $a1, $a1, 0x10
/* B1DD74 800A6BD4 00052C03 */  sra   $a1, $a1, 0x10
/* B1DD78 800A6BD8 44074000 */  mfc1  $a3, $f8
/* B1DD7C 800A6BDC 00063400 */  sll   $a2, $a2, 0x10
/* B1DD80 800A6BE0 00063403 */  sra   $a2, $a2, 0x10
/* B1DD84 800A6BE4 00073C00 */  sll   $a3, $a3, 0x10
/* B1DD88 800A6BE8 00073C03 */  sra   $a3, $a3, 0x10
/* B1DD8C 800A6BEC 0C029EE1 */  jal   func_800A7B84
/* B1DD90 800A6BF0 E7AC0018 */   swc1  $f12, 0x18($sp)
/* B1DD94 800A6BF4 10000014 */  b     .L800A6C48
/* B1DD98 800A6BF8 8E980000 */   lw    $t8, ($s4)
.L800A6BFC:
/* B1DD9C 800A6BFC 4600828D */  trunc.w.s $f10, $f16
/* B1DDA0 800A6C00 44800000 */  mtc1  $zero, $f0
/* B1DDA4 800A6C04 8FA40084 */  lw    $a0, 0x84($sp)
/* B1DDA8 800A6C08 4600710D */  trunc.w.s $f4, $f14
/* B1DDAC 800A6C0C 44055000 */  mfc1  $a1, $f10
/* B1DDB0 800A6C10 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1DDB4 800A6C14 4600918D */  trunc.w.s $f6, $f18
/* B1DDB8 800A6C18 44062000 */  mfc1  $a2, $f4
/* B1DDBC 800A6C1C 00052C00 */  sll   $a1, $a1, 0x10
/* B1DDC0 800A6C20 00052C03 */  sra   $a1, $a1, 0x10
/* B1DDC4 800A6C24 44073000 */  mfc1  $a3, $f6
/* B1DDC8 800A6C28 00063400 */  sll   $a2, $a2, 0x10
/* B1DDCC 800A6C2C 00063403 */  sra   $a2, $a2, 0x10
/* B1DDD0 800A6C30 00073C00 */  sll   $a3, $a3, 0x10
/* B1DDD4 800A6C34 00073C03 */  sra   $a3, $a3, 0x10
/* B1DDD8 800A6C38 E7A00014 */  swc1  $f0, 0x14($sp)
/* B1DDDC 800A6C3C 0C029EE1 */  jal   func_800A7B84
/* B1DDE0 800A6C40 E7A00018 */   swc1  $f0, 0x18($sp)
/* B1DDE4 800A6C44 8E980000 */  lw    $t8, ($s4)
.L800A6C48:
/* B1DDE8 800A6C48 8FB30084 */  lw    $s3, 0x84($sp)
/* B1DDEC 800A6C4C 26100006 */  addiu $s0, $s0, 6
/* B1DDF0 800A6C50 93190004 */  lbu   $t9, 4($t8)
/* B1DDF4 800A6C54 24110001 */  li    $s1, 1
/* B1DDF8 800A6C58 8FB20058 */  lw    $s2, 0x58($sp)
/* B1DDFC 800A6C5C 2B210002 */  slti  $at, $t9, 2
/* B1DE00 800A6C60 14200037 */  bnez  $at, .L800A6D40
/* B1DE04 800A6C64 26730040 */   addiu $s3, $s3, 0x40
/* B1DE08 800A6C68 26520004 */  addiu $s2, $s2, 4
/* B1DE0C 800A6C6C 8E430000 */  lw    $v1, ($s2)
.L800A6C70:
/* B1DE10 800A6C70 26100006 */  addiu $s0, $s0, 6
/* B1DE14 800A6C74 02602025 */  move  $a0, $s3
/* B1DE18 800A6C78 00034900 */  sll   $t1, $v1, 4
/* B1DE1C 800A6C7C 00095702 */  srl   $t2, $t1, 0x1c
/* B1DE20 800A6C80 000A5880 */  sll   $t3, $t2, 2
/* B1DE24 800A6C84 02CB6021 */  addu  $t4, $s6, $t3
/* B1DE28 800A6C88 8D8D0000 */  lw    $t5, ($t4)
/* B1DE2C 800A6C8C 00774024 */  and   $t0, $v1, $s7
/* B1DE30 800A6C90 8609FFFA */  lh    $t1, -6($s0)
/* B1DE34 800A6C94 010D7021 */  addu  $t6, $t0, $t5
/* B1DE38 800A6C98 01DE1021 */  addu  $v0, $t6, $fp
/* B1DE3C 800A6C9C 844F0000 */  lh    $t7, ($v0)
/* B1DE40 800A6CA0 84580002 */  lh    $t8, 2($v0)
/* B1DE44 800A6CA4 860AFFFC */  lh    $t2, -4($s0)
/* B1DE48 800A6CA8 448F4000 */  mtc1  $t7, $f8
/* B1DE4C 800A6CAC 44985000 */  mtc1  $t8, $f10
/* B1DE50 800A6CB0 860BFFFE */  lh    $t3, -2($s0)
/* B1DE54 800A6CB4 46804020 */  cvt.s.w $f0, $f8
/* B1DE58 800A6CB8 44893000 */  mtc1  $t1, $f6
/* B1DE5C 800A6CBC 448A4000 */  mtc1  $t2, $f8
/* B1DE60 800A6CC0 84590004 */  lh    $t9, 4($v0)
/* B1DE64 800A6CC4 468050A0 */  cvt.s.w $f2, $f10
/* B1DE68 800A6CC8 448B5000 */  mtc1  $t3, $f10
/* B1DE6C 800A6CCC 44992000 */  mtc1  $t9, $f4
/* B1DE70 800A6CD0 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1DE74 800A6CD4 46803420 */  cvt.s.w $f16, $f6
/* B1DE78 800A6CD8 E7A20014 */  swc1  $f2, 0x14($sp)
/* B1DE7C 800A6CDC 468043A0 */  cvt.s.w $f14, $f8
/* B1DE80 800A6CE0 468054A0 */  cvt.s.w $f18, $f10
/* B1DE84 800A6CE4 46802320 */  cvt.s.w $f12, $f4
/* B1DE88 800A6CE8 4600810D */  trunc.w.s $f4, $f16
/* B1DE8C 800A6CEC E7AC0018 */  swc1  $f12, 0x18($sp)
/* B1DE90 800A6CF0 4600920D */  trunc.w.s $f8, $f18
/* B1DE94 800A6CF4 44052000 */  mfc1  $a1, $f4
/* B1DE98 800A6CF8 4600718D */  trunc.w.s $f6, $f14
/* B1DE9C 800A6CFC 44074000 */  mfc1  $a3, $f8
/* B1DEA0 800A6D00 00052C00 */  sll   $a1, $a1, 0x10
/* B1DEA4 800A6D04 00052C03 */  sra   $a1, $a1, 0x10
/* B1DEA8 800A6D08 44063000 */  mfc1  $a2, $f6
/* B1DEAC 800A6D0C 00073C00 */  sll   $a3, $a3, 0x10
/* B1DEB0 800A6D10 00073C03 */  sra   $a3, $a3, 0x10
/* B1DEB4 800A6D14 00063400 */  sll   $a2, $a2, 0x10
/* B1DEB8 800A6D18 0C029EE1 */  jal   func_800A7B84
/* B1DEBC 800A6D1C 00063403 */   sra   $a2, $a2, 0x10
/* B1DEC0 800A6D20 8E8E0000 */  lw    $t6, ($s4)
/* B1DEC4 800A6D24 26310001 */  addiu $s1, $s1, 1
/* B1DEC8 800A6D28 26520004 */  addiu $s2, $s2, 4
/* B1DECC 800A6D2C 91CF0004 */  lbu   $t7, 4($t6)
/* B1DED0 800A6D30 26730040 */  addiu $s3, $s3, 0x40
/* B1DED4 800A6D34 022F082A */  slt   $at, $s1, $t7
/* B1DED8 800A6D38 5420FFCD */  bnezl $at, .L800A6C70
/* B1DEDC 800A6D3C 8E430000 */   lw    $v1, ($s2)
.L800A6D40:
/* B1DEE0 800A6D40 86B800B4 */  lh    $t8, 0xb4($s5)
/* B1DEE4 800A6D44 C6A00054 */  lwc1  $f0, 0x54($s5)
/* B1DEE8 800A6D48 8EA50050 */  lw    $a1, 0x50($s5)
/* B1DEEC 800A6D4C 8EA70058 */  lw    $a3, 0x58($s5)
/* B1DEF0 800A6D50 AFB80010 */  sw    $t8, 0x10($sp)
/* B1DEF4 800A6D54 86B900B6 */  lh    $t9, 0xb6($s5)
/* B1DEF8 800A6D58 44060000 */  mfc1  $a2, $f0
/* B1DEFC 800A6D5C 26840004 */  addiu $a0, $s4, 4
/* B1DF00 800A6D60 AFB90014 */  sw    $t9, 0x14($sp)
/* B1DF04 800A6D64 86A900B8 */  lh    $t1, 0xb8($s5)
/* B1DF08 800A6D68 AFA90018 */  sw    $t1, 0x18($sp)
/* B1DF0C 800A6D6C C6AA0024 */  lwc1  $f10, 0x24($s5)
/* B1DF10 800A6D70 E7AA001C */  swc1  $f10, 0x1c($sp)
/* B1DF14 800A6D74 C6A600BC */  lwc1  $f6, 0xbc($s5)
/* B1DF18 800A6D78 C6A40028 */  lwc1  $f4, 0x28($s5)
/* B1DF1C 800A6D7C 46003202 */  mul.s $f8, $f6, $f0
/* B1DF20 800A6D80 46082280 */  add.s $f10, $f4, $f8
/* B1DF24 800A6D84 E7AA0020 */  swc1  $f10, 0x20($sp)
/* B1DF28 800A6D88 C6A6002C */  lwc1  $f6, 0x2c($s5)
/* B1DF2C 800A6D8C 0C029EC1 */  jal   func_800A7B04
/* B1DF30 800A6D90 E7A60024 */   swc1  $f6, 0x24($sp)
/* B1DF34 800A6D94 8E8A0000 */  lw    $t2, ($s4)
/* B1DF38 800A6D98 02802025 */  move  $a0, $s4
/* B1DF3C 800A6D9C 8FA60084 */  lw    $a2, 0x84($sp)
/* B1DF40 800A6DA0 8D420000 */  lw    $v0, ($t2)
/* B1DF44 800A6DA4 240700FF */  li    $a3, 255
/* B1DF48 800A6DA8 00025900 */  sll   $t3, $v0, 4
/* B1DF4C 800A6DAC 000B6702 */  srl   $t4, $t3, 0x1c
/* B1DF50 800A6DB0 000C4080 */  sll   $t0, $t4, 2
/* B1DF54 800A6DB4 02C86821 */  addu  $t5, $s6, $t0
/* B1DF58 800A6DB8 8DAE0000 */  lw    $t6, ($t5)
/* B1DF5C 800A6DBC 00577824 */  and   $t7, $v0, $s7
/* B1DF60 800A6DC0 AFA00010 */  sw    $zero, 0x10($sp)
/* B1DF64 800A6DC4 01CFC021 */  addu  $t8, $t6, $t7
/* B1DF68 800A6DC8 0C029A63 */  jal   func_800A698C
/* B1DF6C 800A6DCC 031E2821 */   addu  $a1, $t8, $fp
/* B1DF70 800A6DD0 14400003 */  bnez  $v0, .L800A6DE0
/* B1DF74 800A6DD4 8FB00030 */   lw    $s0, 0x30($sp)
/* B1DF78 800A6DD8 10000003 */  b     .L800A6DE8
/* B1DF7C 800A6DDC 8FBF0054 */   lw    $ra, 0x54($sp)
.L800A6DE0:
/* B1DF80 800A6DE0 00001025 */  move  $v0, $zero
/* B1DF84 800A6DE4 8FBF0054 */  lw    $ra, 0x54($sp)
.L800A6DE8:
/* B1DF88 800A6DE8 8FB10034 */  lw    $s1, 0x34($sp)
/* B1DF8C 800A6DEC 8FB20038 */  lw    $s2, 0x38($sp)
/* B1DF90 800A6DF0 8FB3003C */  lw    $s3, 0x3c($sp)
/* B1DF94 800A6DF4 8FB40040 */  lw    $s4, 0x40($sp)
/* B1DF98 800A6DF8 8FB50044 */  lw    $s5, 0x44($sp)
/* B1DF9C 800A6DFC 8FB60048 */  lw    $s6, 0x48($sp)
/* B1DFA0 800A6E00 8FB7004C */  lw    $s7, 0x4c($sp)
/* B1DFA4 800A6E04 8FBE0050 */  lw    $fp, 0x50($sp)
/* B1DFA8 800A6E08 03E00008 */  jr    $ra
/* B1DFAC 800A6E0C 27BD0080 */   addiu $sp, $sp, 0x80

glabel func_800A6E10
/* B1DFB0 800A6E10 C4A40000 */  lwc1  $f4, ($a1)
/* B1DFB4 800A6E14 C4860000 */  lwc1  $f6, ($a0)
/* B1DFB8 800A6E18 C4AA0004 */  lwc1  $f10, 4($a1)
/* B1DFBC 800A6E1C C4900010 */  lwc1  $f16, 0x10($a0)
/* B1DFC0 800A6E20 46062202 */  mul.s $f8, $f4, $f6
/* B1DFC4 800A6E24 C4A60008 */  lwc1  $f6, 8($a1)
/* B1DFC8 800A6E28 46105482 */  mul.s $f18, $f10, $f16
/* B1DFCC 800A6E2C C48A0020 */  lwc1  $f10, 0x20($a0)
/* B1DFD0 800A6E30 460A3402 */  mul.s $f16, $f6, $f10
/* B1DFD4 800A6E34 46124100 */  add.s $f4, $f8, $f18
/* B1DFD8 800A6E38 C4920030 */  lwc1  $f18, 0x30($a0)
/* B1DFDC 800A6E3C 46102200 */  add.s $f8, $f4, $f16
/* B1DFE0 800A6E40 46089180 */  add.s $f6, $f18, $f8
/* B1DFE4 800A6E44 E4C60000 */  swc1  $f6, ($a2)
/* B1DFE8 800A6E48 C4AA0000 */  lwc1  $f10, ($a1)
/* B1DFEC 800A6E4C C4840004 */  lwc1  $f4, 4($a0)
/* B1DFF0 800A6E50 C4B20004 */  lwc1  $f18, 4($a1)
/* B1DFF4 800A6E54 C4880014 */  lwc1  $f8, 0x14($a0)
/* B1DFF8 800A6E58 46045402 */  mul.s $f16, $f10, $f4
/* B1DFFC 800A6E5C C4A40008 */  lwc1  $f4, 8($a1)
/* B1E000 800A6E60 46089182 */  mul.s $f6, $f18, $f8
/* B1E004 800A6E64 C4920024 */  lwc1  $f18, 0x24($a0)
/* B1E008 800A6E68 46122202 */  mul.s $f8, $f4, $f18
/* B1E00C 800A6E6C 46068280 */  add.s $f10, $f16, $f6
/* B1E010 800A6E70 C4860034 */  lwc1  $f6, 0x34($a0)
/* B1E014 800A6E74 46085400 */  add.s $f16, $f10, $f8
/* B1E018 800A6E78 46103100 */  add.s $f4, $f6, $f16
/* B1E01C 800A6E7C E4C40004 */  swc1  $f4, 4($a2)
/* B1E020 800A6E80 C4B20000 */  lwc1  $f18, ($a1)
/* B1E024 800A6E84 C48A0008 */  lwc1  $f10, 8($a0)
/* B1E028 800A6E88 C4A60004 */  lwc1  $f6, 4($a1)
/* B1E02C 800A6E8C C4900018 */  lwc1  $f16, 0x18($a0)
/* B1E030 800A6E90 460A9202 */  mul.s $f8, $f18, $f10
/* B1E034 800A6E94 C4AA0008 */  lwc1  $f10, 8($a1)
/* B1E038 800A6E98 46103102 */  mul.s $f4, $f6, $f16
/* B1E03C 800A6E9C C4860028 */  lwc1  $f6, 0x28($a0)
/* B1E040 800A6EA0 46065402 */  mul.s $f16, $f10, $f6
/* B1E044 800A6EA4 46044480 */  add.s $f18, $f8, $f4
/* B1E048 800A6EA8 C4840038 */  lwc1  $f4, 0x38($a0)
/* B1E04C 800A6EAC 46109200 */  add.s $f8, $f18, $f16
/* B1E050 800A6EB0 46082280 */  add.s $f10, $f4, $f8
/* B1E054 800A6EB4 E4CA0008 */  swc1  $f10, 8($a2)
/* B1E058 800A6EB8 C492000C */  lwc1  $f18, 0xc($a0)
/* B1E05C 800A6EBC C4A60000 */  lwc1  $f6, ($a1)
/* B1E060 800A6EC0 C488001C */  lwc1  $f8, 0x1c($a0)
/* B1E064 800A6EC4 C4A40004 */  lwc1  $f4, 4($a1)
/* B1E068 800A6EC8 46123402 */  mul.s $f16, $f6, $f18
/* B1E06C 800A6ECC C4B20008 */  lwc1  $f18, 8($a1)
/* B1E070 800A6ED0 46082282 */  mul.s $f10, $f4, $f8
/* B1E074 800A6ED4 C484002C */  lwc1  $f4, 0x2c($a0)
/* B1E078 800A6ED8 46049202 */  mul.s $f8, $f18, $f4
/* B1E07C 800A6EDC 460A8180 */  add.s $f6, $f16, $f10
/* B1E080 800A6EE0 C48A003C */  lwc1  $f10, 0x3c($a0)
/* B1E084 800A6EE4 46083400 */  add.s $f16, $f6, $f8
/* B1E088 800A6EE8 46105480 */  add.s $f18, $f10, $f16
/* B1E08C 800A6EEC 03E00008 */  jr    $ra
/* B1E090 800A6EF0 E4F20000 */   swc1  $f18, ($a3)

glabel func_800A6EF4
/* B1E094 800A6EF4 C4800000 */  lwc1  $f0, ($a0)
/* B1E098 800A6EF8 C4A40000 */  lwc1  $f4, ($a1)
/* B1E09C 800A6EFC C4820010 */  lwc1  $f2, 0x10($a0)
/* B1E0A0 800A6F00 C4A80004 */  lwc1  $f8, 4($a1)
/* B1E0A4 800A6F04 46002182 */  mul.s $f6, $f4, $f0
/* B1E0A8 800A6F08 C48C0020 */  lwc1  $f12, 0x20($a0)
/* B1E0AC 800A6F0C C4B20008 */  lwc1  $f18, 8($a1)
/* B1E0B0 800A6F10 46024282 */  mul.s $f10, $f8, $f2
/* B1E0B4 800A6F14 C48E0030 */  lwc1  $f14, 0x30($a0)
/* B1E0B8 800A6F18 460C9102 */  mul.s $f4, $f18, $f12
/* B1E0BC 800A6F1C 460A3400 */  add.s $f16, $f6, $f10
/* B1E0C0 800A6F20 46048200 */  add.s $f8, $f16, $f4
/* B1E0C4 800A6F24 460E4180 */  add.s $f6, $f8, $f14
/* B1E0C8 800A6F28 E4C60000 */  swc1  $f6, ($a2)
/* B1E0CC 800A6F2C C4800004 */  lwc1  $f0, 4($a0)
/* B1E0D0 800A6F30 C4AA0000 */  lwc1  $f10, ($a1)
/* B1E0D4 800A6F34 C4820014 */  lwc1  $f2, 0x14($a0)
/* B1E0D8 800A6F38 C4B00004 */  lwc1  $f16, 4($a1)
/* B1E0DC 800A6F3C 46005482 */  mul.s $f18, $f10, $f0
/* B1E0E0 800A6F40 C48C0024 */  lwc1  $f12, 0x24($a0)
/* B1E0E4 800A6F44 C4A60008 */  lwc1  $f6, 8($a1)
/* B1E0E8 800A6F48 46028102 */  mul.s $f4, $f16, $f2
/* B1E0EC 800A6F4C C48E0034 */  lwc1  $f14, 0x34($a0)
/* B1E0F0 800A6F50 460C3282 */  mul.s $f10, $f6, $f12
/* B1E0F4 800A6F54 46049200 */  add.s $f8, $f18, $f4
/* B1E0F8 800A6F58 460A4400 */  add.s $f16, $f8, $f10
/* B1E0FC 800A6F5C 460E8480 */  add.s $f18, $f16, $f14
/* B1E100 800A6F60 E4D20004 */  swc1  $f18, 4($a2)
/* B1E104 800A6F64 C4800008 */  lwc1  $f0, 8($a0)
/* B1E108 800A6F68 C4A40000 */  lwc1  $f4, ($a1)
/* B1E10C 800A6F6C C4820018 */  lwc1  $f2, 0x18($a0)
/* B1E110 800A6F70 C4A80004 */  lwc1  $f8, 4($a1)
/* B1E114 800A6F74 46002182 */  mul.s $f6, $f4, $f0
/* B1E118 800A6F78 C48C0028 */  lwc1  $f12, 0x28($a0)
/* B1E11C 800A6F7C C4B20008 */  lwc1  $f18, 8($a1)
/* B1E120 800A6F80 46024282 */  mul.s $f10, $f8, $f2
/* B1E124 800A6F84 C48E0038 */  lwc1  $f14, 0x38($a0)
/* B1E128 800A6F88 460C9102 */  mul.s $f4, $f18, $f12
/* B1E12C 800A6F8C 460A3400 */  add.s $f16, $f6, $f10
/* B1E130 800A6F90 46048200 */  add.s $f8, $f16, $f4
/* B1E134 800A6F94 460E4180 */  add.s $f6, $f8, $f14
/* B1E138 800A6F98 03E00008 */  jr    $ra
/* B1E13C 800A6F9C E4C60008 */   swc1  $f6, 8($a2)

glabel func_800A6FA0
/* B1E140 800A6FA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1E144 800A6FA4 F7B60010 */  sdc1  $f22, 0x10($sp)
/* B1E148 800A6FA8 F7B40008 */  sdc1  $f20, 8($sp)
/* B1E14C 800A6FAC C4800000 */  lwc1  $f0, ($a0)
/* B1E150 800A6FB0 C4B00000 */  lwc1  $f16, ($a1)
/* B1E154 800A6FB4 C4820010 */  lwc1  $f2, 0x10($a0)
/* B1E158 800A6FB8 C4B20004 */  lwc1  $f18, 4($a1)
/* B1E15C 800A6FBC 46100102 */  mul.s $f4, $f0, $f16
/* B1E160 800A6FC0 C48C0020 */  lwc1  $f12, 0x20($a0)
/* B1E164 800A6FC4 C4B40008 */  lwc1  $f20, 8($a1)
/* B1E168 800A6FC8 46121182 */  mul.s $f6, $f2, $f18
/* B1E16C 800A6FCC C48E0030 */  lwc1  $f14, 0x30($a0)
/* B1E170 800A6FD0 C4B6000C */  lwc1  $f22, 0xc($a1)
/* B1E174 800A6FD4 46146282 */  mul.s $f10, $f12, $f20
/* B1E178 800A6FD8 46062200 */  add.s $f8, $f4, $f6
/* B1E17C 800A6FDC 46167182 */  mul.s $f6, $f14, $f22
/* B1E180 800A6FE0 460A4100 */  add.s $f4, $f8, $f10
/* B1E184 800A6FE4 46062200 */  add.s $f8, $f4, $f6
/* B1E188 800A6FE8 E4C80000 */  swc1  $f8, ($a2)
/* B1E18C 800A6FEC C4B00010 */  lwc1  $f16, 0x10($a1)
/* B1E190 800A6FF0 C4B20014 */  lwc1  $f18, 0x14($a1)
/* B1E194 800A6FF4 C4B40018 */  lwc1  $f20, 0x18($a1)
/* B1E198 800A6FF8 46100282 */  mul.s $f10, $f0, $f16
/* B1E19C 800A6FFC C4B6001C */  lwc1  $f22, 0x1c($a1)
/* B1E1A0 800A7000 46121102 */  mul.s $f4, $f2, $f18
/* B1E1A4 800A7004 46045180 */  add.s $f6, $f10, $f4
/* B1E1A8 800A7008 46146202 */  mul.s $f8, $f12, $f20
/* B1E1AC 800A700C 46083280 */  add.s $f10, $f6, $f8
/* B1E1B0 800A7010 46167102 */  mul.s $f4, $f14, $f22
/* B1E1B4 800A7014 46045180 */  add.s $f6, $f10, $f4
/* B1E1B8 800A7018 E4C60010 */  swc1  $f6, 0x10($a2)
/* B1E1BC 800A701C C4B00020 */  lwc1  $f16, 0x20($a1)
/* B1E1C0 800A7020 C4B20024 */  lwc1  $f18, 0x24($a1)
/* B1E1C4 800A7024 C4B40028 */  lwc1  $f20, 0x28($a1)
/* B1E1C8 800A7028 46100202 */  mul.s $f8, $f0, $f16
/* B1E1CC 800A702C C4B6002C */  lwc1  $f22, 0x2c($a1)
/* B1E1D0 800A7030 46121282 */  mul.s $f10, $f2, $f18
/* B1E1D4 800A7034 460A4100 */  add.s $f4, $f8, $f10
/* B1E1D8 800A7038 46146182 */  mul.s $f6, $f12, $f20
/* B1E1DC 800A703C 46062200 */  add.s $f8, $f4, $f6
/* B1E1E0 800A7040 46167282 */  mul.s $f10, $f14, $f22
/* B1E1E4 800A7044 460A4100 */  add.s $f4, $f8, $f10
/* B1E1E8 800A7048 E4C40020 */  swc1  $f4, 0x20($a2)
/* B1E1EC 800A704C C4B00030 */  lwc1  $f16, 0x30($a1)
/* B1E1F0 800A7050 C4B20034 */  lwc1  $f18, 0x34($a1)
/* B1E1F4 800A7054 C4B40038 */  lwc1  $f20, 0x38($a1)
/* B1E1F8 800A7058 46100182 */  mul.s $f6, $f0, $f16
/* B1E1FC 800A705C C4B6003C */  lwc1  $f22, 0x3c($a1)
/* B1E200 800A7060 46121202 */  mul.s $f8, $f2, $f18
/* B1E204 800A7064 46083280 */  add.s $f10, $f6, $f8
/* B1E208 800A7068 46146102 */  mul.s $f4, $f12, $f20
/* B1E20C 800A706C 46045180 */  add.s $f6, $f10, $f4
/* B1E210 800A7070 46167202 */  mul.s $f8, $f14, $f22
/* B1E214 800A7074 46083280 */  add.s $f10, $f6, $f8
/* B1E218 800A7078 E4CA0030 */  swc1  $f10, 0x30($a2)
/* B1E21C 800A707C C4800004 */  lwc1  $f0, 4($a0)
/* B1E220 800A7080 C4B00000 */  lwc1  $f16, ($a1)
/* B1E224 800A7084 C4820014 */  lwc1  $f2, 0x14($a0)
/* B1E228 800A7088 C4B20004 */  lwc1  $f18, 4($a1)
/* B1E22C 800A708C 46100102 */  mul.s $f4, $f0, $f16
/* B1E230 800A7090 C48C0024 */  lwc1  $f12, 0x24($a0)
/* B1E234 800A7094 C4B40008 */  lwc1  $f20, 8($a1)
/* B1E238 800A7098 46121182 */  mul.s $f6, $f2, $f18
/* B1E23C 800A709C C48E0034 */  lwc1  $f14, 0x34($a0)
/* B1E240 800A70A0 C4B6000C */  lwc1  $f22, 0xc($a1)
/* B1E244 800A70A4 46146282 */  mul.s $f10, $f12, $f20
/* B1E248 800A70A8 46062200 */  add.s $f8, $f4, $f6
/* B1E24C 800A70AC 46167182 */  mul.s $f6, $f14, $f22
/* B1E250 800A70B0 460A4100 */  add.s $f4, $f8, $f10
/* B1E254 800A70B4 46062200 */  add.s $f8, $f4, $f6
/* B1E258 800A70B8 E4C80004 */  swc1  $f8, 4($a2)
/* B1E25C 800A70BC C4B00010 */  lwc1  $f16, 0x10($a1)
/* B1E260 800A70C0 C4B20014 */  lwc1  $f18, 0x14($a1)
/* B1E264 800A70C4 C4B40018 */  lwc1  $f20, 0x18($a1)
/* B1E268 800A70C8 46100282 */  mul.s $f10, $f0, $f16
/* B1E26C 800A70CC C4B6001C */  lwc1  $f22, 0x1c($a1)
/* B1E270 800A70D0 46121102 */  mul.s $f4, $f2, $f18
/* B1E274 800A70D4 46045180 */  add.s $f6, $f10, $f4
/* B1E278 800A70D8 46146202 */  mul.s $f8, $f12, $f20
/* B1E27C 800A70DC 46083280 */  add.s $f10, $f6, $f8
/* B1E280 800A70E0 46167102 */  mul.s $f4, $f14, $f22
/* B1E284 800A70E4 46045180 */  add.s $f6, $f10, $f4
/* B1E288 800A70E8 E4C60014 */  swc1  $f6, 0x14($a2)
/* B1E28C 800A70EC C4B00020 */  lwc1  $f16, 0x20($a1)
/* B1E290 800A70F0 C4B20024 */  lwc1  $f18, 0x24($a1)
/* B1E294 800A70F4 C4B40028 */  lwc1  $f20, 0x28($a1)
/* B1E298 800A70F8 46100202 */  mul.s $f8, $f0, $f16
/* B1E29C 800A70FC C4B6002C */  lwc1  $f22, 0x2c($a1)
/* B1E2A0 800A7100 46121282 */  mul.s $f10, $f2, $f18
/* B1E2A4 800A7104 460A4100 */  add.s $f4, $f8, $f10
/* B1E2A8 800A7108 46146182 */  mul.s $f6, $f12, $f20
/* B1E2AC 800A710C 46062200 */  add.s $f8, $f4, $f6
/* B1E2B0 800A7110 46167282 */  mul.s $f10, $f14, $f22
/* B1E2B4 800A7114 460A4100 */  add.s $f4, $f8, $f10
/* B1E2B8 800A7118 E4C40024 */  swc1  $f4, 0x24($a2)
/* B1E2BC 800A711C C4B00030 */  lwc1  $f16, 0x30($a1)
/* B1E2C0 800A7120 C4B20034 */  lwc1  $f18, 0x34($a1)
/* B1E2C4 800A7124 C4B40038 */  lwc1  $f20, 0x38($a1)
/* B1E2C8 800A7128 46100182 */  mul.s $f6, $f0, $f16
/* B1E2CC 800A712C C4B6003C */  lwc1  $f22, 0x3c($a1)
/* B1E2D0 800A7130 46121202 */  mul.s $f8, $f2, $f18
/* B1E2D4 800A7134 46083280 */  add.s $f10, $f6, $f8
/* B1E2D8 800A7138 46146102 */  mul.s $f4, $f12, $f20
/* B1E2DC 800A713C 46045180 */  add.s $f6, $f10, $f4
/* B1E2E0 800A7140 46167202 */  mul.s $f8, $f14, $f22
/* B1E2E4 800A7144 46083280 */  add.s $f10, $f6, $f8
/* B1E2E8 800A7148 E4CA0034 */  swc1  $f10, 0x34($a2)
/* B1E2EC 800A714C C4800008 */  lwc1  $f0, 8($a0)
/* B1E2F0 800A7150 C4B00000 */  lwc1  $f16, ($a1)
/* B1E2F4 800A7154 C4820018 */  lwc1  $f2, 0x18($a0)
/* B1E2F8 800A7158 C4B20004 */  lwc1  $f18, 4($a1)
/* B1E2FC 800A715C 46100102 */  mul.s $f4, $f0, $f16
/* B1E300 800A7160 C48C0028 */  lwc1  $f12, 0x28($a0)
/* B1E304 800A7164 C4B40008 */  lwc1  $f20, 8($a1)
/* B1E308 800A7168 46121182 */  mul.s $f6, $f2, $f18
/* B1E30C 800A716C C48E0038 */  lwc1  $f14, 0x38($a0)
/* B1E310 800A7170 C4B6000C */  lwc1  $f22, 0xc($a1)
/* B1E314 800A7174 46146282 */  mul.s $f10, $f12, $f20
/* B1E318 800A7178 46062200 */  add.s $f8, $f4, $f6
/* B1E31C 800A717C 46167182 */  mul.s $f6, $f14, $f22
/* B1E320 800A7180 460A4100 */  add.s $f4, $f8, $f10
/* B1E324 800A7184 46062200 */  add.s $f8, $f4, $f6
/* B1E328 800A7188 E4C80008 */  swc1  $f8, 8($a2)
/* B1E32C 800A718C C4B00010 */  lwc1  $f16, 0x10($a1)
/* B1E330 800A7190 C4B20014 */  lwc1  $f18, 0x14($a1)
/* B1E334 800A7194 C4B40018 */  lwc1  $f20, 0x18($a1)
/* B1E338 800A7198 46100282 */  mul.s $f10, $f0, $f16
/* B1E33C 800A719C C4B6001C */  lwc1  $f22, 0x1c($a1)
/* B1E340 800A71A0 46121102 */  mul.s $f4, $f2, $f18
/* B1E344 800A71A4 46045180 */  add.s $f6, $f10, $f4
/* B1E348 800A71A8 46146202 */  mul.s $f8, $f12, $f20
/* B1E34C 800A71AC 46083280 */  add.s $f10, $f6, $f8
/* B1E350 800A71B0 46167102 */  mul.s $f4, $f14, $f22
/* B1E354 800A71B4 46045180 */  add.s $f6, $f10, $f4
/* B1E358 800A71B8 E4C60018 */  swc1  $f6, 0x18($a2)
/* B1E35C 800A71BC C4B00020 */  lwc1  $f16, 0x20($a1)
/* B1E360 800A71C0 C4B20024 */  lwc1  $f18, 0x24($a1)
/* B1E364 800A71C4 C4B40028 */  lwc1  $f20, 0x28($a1)
/* B1E368 800A71C8 46100202 */  mul.s $f8, $f0, $f16
/* B1E36C 800A71CC C4B6002C */  lwc1  $f22, 0x2c($a1)
/* B1E370 800A71D0 46121282 */  mul.s $f10, $f2, $f18
/* B1E374 800A71D4 460A4100 */  add.s $f4, $f8, $f10
/* B1E378 800A71D8 46146182 */  mul.s $f6, $f12, $f20
/* B1E37C 800A71DC 46062200 */  add.s $f8, $f4, $f6
/* B1E380 800A71E0 46167282 */  mul.s $f10, $f14, $f22
/* B1E384 800A71E4 460A4100 */  add.s $f4, $f8, $f10
/* B1E388 800A71E8 E4C40028 */  swc1  $f4, 0x28($a2)
/* B1E38C 800A71EC C4B00030 */  lwc1  $f16, 0x30($a1)
/* B1E390 800A71F0 C4B20034 */  lwc1  $f18, 0x34($a1)
/* B1E394 800A71F4 C4B40038 */  lwc1  $f20, 0x38($a1)
/* B1E398 800A71F8 46100182 */  mul.s $f6, $f0, $f16
/* B1E39C 800A71FC C4B6003C */  lwc1  $f22, 0x3c($a1)
/* B1E3A0 800A7200 46121202 */  mul.s $f8, $f2, $f18
/* B1E3A4 800A7204 46083280 */  add.s $f10, $f6, $f8
/* B1E3A8 800A7208 46146102 */  mul.s $f4, $f12, $f20
/* B1E3AC 800A720C 46045180 */  add.s $f6, $f10, $f4
/* B1E3B0 800A7210 46167202 */  mul.s $f8, $f14, $f22
/* B1E3B4 800A7214 46083280 */  add.s $f10, $f6, $f8
/* B1E3B8 800A7218 E4CA0038 */  swc1  $f10, 0x38($a2)
/* B1E3BC 800A721C C480000C */  lwc1  $f0, 0xc($a0)
/* B1E3C0 800A7220 C4B00000 */  lwc1  $f16, ($a1)
/* B1E3C4 800A7224 C482001C */  lwc1  $f2, 0x1c($a0)
/* B1E3C8 800A7228 C4B20004 */  lwc1  $f18, 4($a1)
/* B1E3CC 800A722C 46100102 */  mul.s $f4, $f0, $f16
/* B1E3D0 800A7230 C48C002C */  lwc1  $f12, 0x2c($a0)
/* B1E3D4 800A7234 C4B40008 */  lwc1  $f20, 8($a1)
/* B1E3D8 800A7238 46121182 */  mul.s $f6, $f2, $f18
/* B1E3DC 800A723C C48E003C */  lwc1  $f14, 0x3c($a0)
/* B1E3E0 800A7240 C4B6000C */  lwc1  $f22, 0xc($a1)
/* B1E3E4 800A7244 46146282 */  mul.s $f10, $f12, $f20
/* B1E3E8 800A7248 46062200 */  add.s $f8, $f4, $f6
/* B1E3EC 800A724C 46167182 */  mul.s $f6, $f14, $f22
/* B1E3F0 800A7250 460A4100 */  add.s $f4, $f8, $f10
/* B1E3F4 800A7254 46062200 */  add.s $f8, $f4, $f6
/* B1E3F8 800A7258 E4C8000C */  swc1  $f8, 0xc($a2)
/* B1E3FC 800A725C C4B00010 */  lwc1  $f16, 0x10($a1)
/* B1E400 800A7260 C4B20014 */  lwc1  $f18, 0x14($a1)
/* B1E404 800A7264 C4B40018 */  lwc1  $f20, 0x18($a1)
/* B1E408 800A7268 46100282 */  mul.s $f10, $f0, $f16
/* B1E40C 800A726C C4B6001C */  lwc1  $f22, 0x1c($a1)
/* B1E410 800A7270 46121102 */  mul.s $f4, $f2, $f18
/* B1E414 800A7274 46045180 */  add.s $f6, $f10, $f4
/* B1E418 800A7278 46146202 */  mul.s $f8, $f12, $f20
/* B1E41C 800A727C 46083280 */  add.s $f10, $f6, $f8
/* B1E420 800A7280 46167102 */  mul.s $f4, $f14, $f22
/* B1E424 800A7284 46045180 */  add.s $f6, $f10, $f4
/* B1E428 800A7288 E4C6001C */  swc1  $f6, 0x1c($a2)
/* B1E42C 800A728C C4B00020 */  lwc1  $f16, 0x20($a1)
/* B1E430 800A7290 C4B20024 */  lwc1  $f18, 0x24($a1)
/* B1E434 800A7294 C4B40028 */  lwc1  $f20, 0x28($a1)
/* B1E438 800A7298 46100202 */  mul.s $f8, $f0, $f16
/* B1E43C 800A729C C4B6002C */  lwc1  $f22, 0x2c($a1)
/* B1E440 800A72A0 46121282 */  mul.s $f10, $f2, $f18
/* B1E444 800A72A4 460A4100 */  add.s $f4, $f8, $f10
/* B1E448 800A72A8 46146182 */  mul.s $f6, $f12, $f20
/* B1E44C 800A72AC 46062200 */  add.s $f8, $f4, $f6
/* B1E450 800A72B0 46167282 */  mul.s $f10, $f14, $f22
/* B1E454 800A72B4 460A4100 */  add.s $f4, $f8, $f10
/* B1E458 800A72B8 E4C4002C */  swc1  $f4, 0x2c($a2)
/* B1E45C 800A72BC C4B00030 */  lwc1  $f16, 0x30($a1)
/* B1E460 800A72C0 C4B20034 */  lwc1  $f18, 0x34($a1)
/* B1E464 800A72C4 C4B40038 */  lwc1  $f20, 0x38($a1)
/* B1E468 800A72C8 46100182 */  mul.s $f6, $f0, $f16
/* B1E46C 800A72CC C4B6003C */  lwc1  $f22, 0x3c($a1)
/* B1E470 800A72D0 46121202 */  mul.s $f8, $f2, $f18
/* B1E474 800A72D4 46083280 */  add.s $f10, $f6, $f8
/* B1E478 800A72D8 46146102 */  mul.s $f4, $f12, $f20
/* B1E47C 800A72DC 46045180 */  add.s $f6, $f10, $f4
/* B1E480 800A72E0 46167202 */  mul.s $f8, $f14, $f22
/* B1E484 800A72E4 46083280 */  add.s $f10, $f6, $f8
/* B1E488 800A72E8 E4CA003C */  swc1  $f10, 0x3c($a2)
/* B1E48C 800A72EC D7B60010 */  ldc1  $f22, 0x10($sp)
/* B1E490 800A72F0 D7B40008 */  ldc1  $f20, 8($sp)
/* B1E494 800A72F4 03E00008 */  jr    $ra
/* B1E498 800A72F8 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_800A72FC
/* B1E49C 800A72FC 3C0E8013 */  lui   $t6, %hi(D_8012A4A0) # $t6, 0x8013
/* B1E4A0 800A7300 25CEA4A0 */  addiu $t6, %lo(D_8012A4A0) # addiu $t6, $t6, -0x5b60
/* B1E4A4 800A7304 03E00008 */  jr    $ra
/* B1E4A8 800A7308 AC8E0000 */   sw    $t6, ($a0)

glabel func_800A730C
/* B1E4AC 800A730C 44801000 */  mtc1  $zero, $f2
/* B1E4B0 800A7310 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1E4B4 800A7314 44810000 */  mtc1  $at, $f0
/* B1E4B8 800A7318 E4820004 */  swc1  $f2, 4($a0)
/* B1E4BC 800A731C E4820008 */  swc1  $f2, 8($a0)
/* B1E4C0 800A7320 E482000C */  swc1  $f2, 0xc($a0)
/* B1E4C4 800A7324 E4820010 */  swc1  $f2, 0x10($a0)
/* B1E4C8 800A7328 E4820018 */  swc1  $f2, 0x18($a0)
/* B1E4CC 800A732C E482001C */  swc1  $f2, 0x1c($a0)
/* B1E4D0 800A7330 E4820020 */  swc1  $f2, 0x20($a0)
/* B1E4D4 800A7334 E4820024 */  swc1  $f2, 0x24($a0)
/* B1E4D8 800A7338 E482002C */  swc1  $f2, 0x2c($a0)
/* B1E4DC 800A733C E4820030 */  swc1  $f2, 0x30($a0)
/* B1E4E0 800A7340 E4820034 */  swc1  $f2, 0x34($a0)
/* B1E4E4 800A7344 E4820038 */  swc1  $f2, 0x38($a0)
/* B1E4E8 800A7348 E4800000 */  swc1  $f0, ($a0)
/* B1E4EC 800A734C E4800014 */  swc1  $f0, 0x14($a0)
/* B1E4F0 800A7350 E4800028 */  swc1  $f0, 0x28($a0)
/* B1E4F4 800A7354 03E00008 */  jr    $ra
/* B1E4F8 800A7358 E480003C */   swc1  $f0, 0x3c($a0)

glabel func_800A735C
/* B1E4FC 800A735C C4840000 */  lwc1  $f4, ($a0)
/* B1E500 800A7360 E4A40000 */  swc1  $f4, ($a1)
/* B1E504 800A7364 C4860004 */  lwc1  $f6, 4($a0)
/* B1E508 800A7368 E4A60004 */  swc1  $f6, 4($a1)
/* B1E50C 800A736C C4880008 */  lwc1  $f8, 8($a0)
/* B1E510 800A7370 E4A80008 */  swc1  $f8, 8($a1)
/* B1E514 800A7374 C48A000C */  lwc1  $f10, 0xc($a0)
/* B1E518 800A7378 E4AA000C */  swc1  $f10, 0xc($a1)
/* B1E51C 800A737C C4900010 */  lwc1  $f16, 0x10($a0)
/* B1E520 800A7380 E4B00010 */  swc1  $f16, 0x10($a1)
/* B1E524 800A7384 C4920014 */  lwc1  $f18, 0x14($a0)
/* B1E528 800A7388 E4B20014 */  swc1  $f18, 0x14($a1)
/* B1E52C 800A738C C4840018 */  lwc1  $f4, 0x18($a0)
/* B1E530 800A7390 E4A40018 */  swc1  $f4, 0x18($a1)
/* B1E534 800A7394 C486001C */  lwc1  $f6, 0x1c($a0)
/* B1E538 800A7398 E4A6001C */  swc1  $f6, 0x1c($a1)
/* B1E53C 800A739C C4880020 */  lwc1  $f8, 0x20($a0)
/* B1E540 800A73A0 E4A80020 */  swc1  $f8, 0x20($a1)
/* B1E544 800A73A4 C48A0024 */  lwc1  $f10, 0x24($a0)
/* B1E548 800A73A8 E4AA0024 */  swc1  $f10, 0x24($a1)
/* B1E54C 800A73AC C4900028 */  lwc1  $f16, 0x28($a0)
/* B1E550 800A73B0 E4B00028 */  swc1  $f16, 0x28($a1)
/* B1E554 800A73B4 C492002C */  lwc1  $f18, 0x2c($a0)
/* B1E558 800A73B8 E4B2002C */  swc1  $f18, 0x2c($a1)
/* B1E55C 800A73BC C4840030 */  lwc1  $f4, 0x30($a0)
/* B1E560 800A73C0 E4A40030 */  swc1  $f4, 0x30($a1)
/* B1E564 800A73C4 C4860034 */  lwc1  $f6, 0x34($a0)
/* B1E568 800A73C8 E4A60034 */  swc1  $f6, 0x34($a1)
/* B1E56C 800A73CC C4880038 */  lwc1  $f8, 0x38($a0)
/* B1E570 800A73D0 E4A80038 */  swc1  $f8, 0x38($a1)
/* B1E574 800A73D4 C48A003C */  lwc1  $f10, 0x3c($a0)
/* B1E578 800A73D8 03E00008 */  jr    $ra
/* B1E57C 800A73DC E4AA003C */   swc1  $f10, 0x3c($a1)

glabel func_800A73E0
/* B1E580 800A73E0 27BDFF48 */  addiu $sp, $sp, -0xb8
/* B1E584 800A73E4 AFB40028 */  sw    $s4, 0x28($sp)
/* B1E588 800A73E8 AFB30024 */  sw    $s3, 0x24($sp)
/* B1E58C 800A73EC 00A09825 */  move  $s3, $a1
/* B1E590 800A73F0 27B40078 */  addiu $s4, $sp, 0x78
/* B1E594 800A73F4 AFBF002C */  sw    $ra, 0x2c($sp)
/* B1E598 800A73F8 AFB20020 */  sw    $s2, 0x20($sp)
/* B1E59C 800A73FC AFB1001C */  sw    $s1, 0x1c($sp)
/* B1E5A0 800A7400 AFB00018 */  sw    $s0, 0x18($sp)
/* B1E5A4 800A7404 0C029CD7 */  jal   func_800A735C
/* B1E5A8 800A7408 02802825 */   move  $a1, $s4
/* B1E5AC 800A740C 0C029CC3 */  jal   func_800A730C
/* B1E5B0 800A7410 02602025 */   move  $a0, $s3
/* B1E5B4 800A7414 3C018014 */  lui   $at, %hi(D_80140844)
/* B1E5B8 800A7418 C42C0844 */  lwc1  $f12, %lo(D_80140844)($at)
/* B1E5BC 800A741C 00008025 */  move  $s0, $zero
/* B1E5C0 800A7420 240C0004 */  li    $t4, 4
/* B1E5C4 800A7424 2A010004 */  slti  $at, $s0, 4
.L800A7428:
/* B1E5C8 800A7428 10200016 */  beqz  $at, .L800A7484
/* B1E5CC 800A742C 02004825 */   move  $t1, $s0
/* B1E5D0 800A7430 00107100 */  sll   $t6, $s0, 4
/* B1E5D4 800A7434 028E5821 */  addu  $t3, $s4, $t6
/* B1E5D8 800A7438 00107880 */  sll   $t7, $s0, 2
/* B1E5DC 800A743C 016FC021 */  addu  $t8, $t3, $t7
/* B1E5E0 800A7440 C7000000 */  lwc1  $f0, ($t8)
/* B1E5E4 800A7444 46000005 */  abs.s $f0, $f0
/* B1E5E8 800A7448 460C003C */  c.lt.s $f0, $f12
/* B1E5EC 800A744C 00000000 */  nop   
/* B1E5F0 800A7450 4500000C */  bc1f  .L800A7484
/* B1E5F4 800A7454 00000000 */   nop   
/* B1E5F8 800A7458 25290001 */  addiu $t1, $t1, 1
.L800A745C:
/* B1E5FC 800A745C 29210004 */  slti  $at, $t1, 4
/* B1E600 800A7460 10200008 */  beqz  $at, .L800A7484
/* B1E604 800A7464 0009C880 */   sll   $t9, $t1, 2
/* B1E608 800A7468 01797021 */  addu  $t6, $t3, $t9
/* B1E60C 800A746C C5C00000 */  lwc1  $f0, ($t6)
/* B1E610 800A7470 46000005 */  abs.s $f0, $f0
/* B1E614 800A7474 460C003C */  c.lt.s $f0, $f12
/* B1E618 800A7478 00000000 */  nop   
/* B1E61C 800A747C 4503FFF7 */  bc1tl .L800A745C
/* B1E620 800A7480 25290001 */   addiu $t1, $t1, 1
.L800A7484:
/* B1E624 800A7484 152C000C */  bne   $t1, $t4, .L800A74B8
/* B1E628 800A7488 00107900 */   sll   $t7, $s0, 4
/* B1E62C 800A748C 3C048014 */  lui   $a0, %hi(D_801407D0) # $a0, 0x8014
/* B1E630 800A7490 0C00084C */  jal   osSyncPrintf
/* B1E634 800A7494 248407D0 */   addiu $a0, %lo(D_801407D0) # addiu $a0, $a0, 0x7d0
/* B1E638 800A7498 3C048014 */  lui   $a0, %hi(D_801407DC) # $a0, 0x8014
/* B1E63C 800A749C 0C00084C */  jal   osSyncPrintf
/* B1E640 800A74A0 248407DC */   addiu $a0, %lo(D_801407DC) # addiu $a0, $a0, 0x7dc
/* B1E644 800A74A4 3C048014 */  lui   $a0, %hi(D_8014080C) # $a0, 0x8014
/* B1E648 800A74A8 0C00084C */  jal   osSyncPrintf
/* B1E64C 800A74AC 2484080C */   addiu $a0, %lo(D_8014080C) # addiu $a0, $a0, 0x80c
/* B1E650 800A74B0 10000074 */  b     .L800A7684
/* B1E654 800A74B4 24020002 */   li    $v0, 2
.L800A74B8:
/* B1E658 800A74B8 00106880 */  sll   $t5, $s0, 2
/* B1E65C 800A74BC 028F5821 */  addu  $t3, $s4, $t7
/* B1E660 800A74C0 016D9021 */  addu  $s2, $t3, $t5
/* B1E664 800A74C4 028D2021 */  addu  $a0, $s4, $t5
/* B1E668 800A74C8 026D2821 */  addu  $a1, $s3, $t5
/* B1E66C 800A74CC 1130001E */  beq   $t1, $s0, .L800A7548
/* B1E670 800A74D0 0260F825 */   move  $ra, $s3
/* B1E674 800A74D4 00094080 */  sll   $t0, $t1, 2
/* B1E678 800A74D8 27B80078 */  addiu $t8, $sp, 0x78
/* B1E67C 800A74DC 01181021 */  addu  $v0, $t0, $t8
/* B1E680 800A74E0 01B81821 */  addu  $v1, $t5, $t8
/* B1E684 800A74E4 02683021 */  addu  $a2, $s3, $t0
/* B1E688 800A74E8 00005025 */  move  $t2, $zero
/* B1E68C 800A74EC 026D3821 */  addu  $a3, $s3, $t5
.L800A74F0:
/* B1E690 800A74F0 C4640000 */  lwc1  $f4, ($v1)
/* B1E694 800A74F4 C4400000 */  lwc1  $f0, ($v0)
/* B1E698 800A74F8 254A0002 */  addiu $t2, $t2, 2
/* B1E69C 800A74FC E4440000 */  swc1  $f4, ($v0)
/* B1E6A0 800A7500 E4600000 */  swc1  $f0, ($v1)
/* B1E6A4 800A7504 C4E60000 */  lwc1  $f6, ($a3)
/* B1E6A8 800A7508 C4C20000 */  lwc1  $f2, ($a2)
/* B1E6AC 800A750C 24420020 */  addiu $v0, $v0, 0x20
/* B1E6B0 800A7510 E4C60000 */  swc1  $f6, ($a2)
/* B1E6B4 800A7514 E4E20000 */  swc1  $f2, ($a3)
/* B1E6B8 800A7518 C4680010 */  lwc1  $f8, 0x10($v1)
/* B1E6BC 800A751C C440FFF0 */  lwc1  $f0, -0x10($v0)
/* B1E6C0 800A7520 24630020 */  addiu $v1, $v1, 0x20
/* B1E6C4 800A7524 E448FFF0 */  swc1  $f8, -0x10($v0)
/* B1E6C8 800A7528 E460FFF0 */  swc1  $f0, -0x10($v1)
/* B1E6CC 800A752C C4EA0010 */  lwc1  $f10, 0x10($a3)
/* B1E6D0 800A7530 C4C20010 */  lwc1  $f2, 0x10($a2)
/* B1E6D4 800A7534 24C60020 */  addiu $a2, $a2, 0x20
/* B1E6D8 800A7538 E4CAFFF0 */  swc1  $f10, -0x10($a2)
/* B1E6DC 800A753C 24E70020 */  addiu $a3, $a3, 0x20
/* B1E6E0 800A7540 154CFFEB */  bne   $t2, $t4, .L800A74F0
/* B1E6E4 800A7544 E4E2FFF0 */   swc1  $f2, -0x10($a3)
.L800A7548:
/* B1E6E8 800A7548 C6400000 */  lwc1  $f0, ($s2)
/* B1E6EC 800A754C C4900000 */  lwc1  $f16, ($a0)
/* B1E6F0 800A7550 00004825 */  move  $t1, $zero
/* B1E6F4 800A7554 46008483 */  div.s $f18, $f16, $f0
/* B1E6F8 800A7558 E4920000 */  swc1  $f18, ($a0)
/* B1E6FC 800A755C C4A40000 */  lwc1  $f4, ($a1)
/* B1E700 800A7560 46002183 */  div.s $f6, $f4, $f0
/* B1E704 800A7564 E4A60000 */  swc1  $f6, ($a1)
/* B1E708 800A7568 C4880010 */  lwc1  $f8, 0x10($a0)
/* B1E70C 800A756C 46004283 */  div.s $f10, $f8, $f0
/* B1E710 800A7570 E48A0010 */  swc1  $f10, 0x10($a0)
/* B1E714 800A7574 C4B00010 */  lwc1  $f16, 0x10($a1)
/* B1E718 800A7578 46008483 */  div.s $f18, $f16, $f0
/* B1E71C 800A757C E4B20010 */  swc1  $f18, 0x10($a1)
/* B1E720 800A7580 C4840020 */  lwc1  $f4, 0x20($a0)
/* B1E724 800A7584 46002183 */  div.s $f6, $f4, $f0
/* B1E728 800A7588 E4860020 */  swc1  $f6, 0x20($a0)
/* B1E72C 800A758C C4A80020 */  lwc1  $f8, 0x20($a1)
/* B1E730 800A7590 46004283 */  div.s $f10, $f8, $f0
/* B1E734 800A7594 E4AA0020 */  swc1  $f10, 0x20($a1)
/* B1E738 800A7598 C4900030 */  lwc1  $f16, 0x30($a0)
/* B1E73C 800A759C 46008483 */  div.s $f18, $f16, $f0
/* B1E740 800A75A0 E4920030 */  swc1  $f18, 0x30($a0)
/* B1E744 800A75A4 C4A40030 */  lwc1  $f4, 0x30($a1)
/* B1E748 800A75A8 46002183 */  div.s $f6, $f4, $f0
/* B1E74C 800A75AC E4A60030 */  swc1  $f6, 0x30($a1)
.L800A75B0:
/* B1E750 800A75B0 1130002D */  beq   $t1, $s0, .L800A7668
/* B1E754 800A75B4 00094080 */   sll   $t0, $t1, 2
/* B1E758 800A75B8 0168C821 */  addu  $t9, $t3, $t0
/* B1E75C 800A75BC C7200000 */  lwc1  $f0, ($t9)
/* B1E760 800A75C0 C48A0000 */  lwc1  $f10, ($a0)
/* B1E764 800A75C4 02881021 */  addu  $v0, $s4, $t0
/* B1E768 800A75C8 C4480000 */  lwc1  $f8, ($v0)
/* B1E76C 800A75CC 46005402 */  mul.s $f16, $f10, $f0
/* B1E770 800A75D0 03E81821 */  addu  $v1, $ra, $t0
/* B1E774 800A75D4 46104481 */  sub.s $f18, $f8, $f16
/* B1E778 800A75D8 E4520000 */  swc1  $f18, ($v0)
/* B1E77C 800A75DC C4A60000 */  lwc1  $f6, ($a1)
/* B1E780 800A75E0 C4640000 */  lwc1  $f4, ($v1)
/* B1E784 800A75E4 46003282 */  mul.s $f10, $f6, $f0
/* B1E788 800A75E8 460A2201 */  sub.s $f8, $f4, $f10
/* B1E78C 800A75EC E4680000 */  swc1  $f8, ($v1)
/* B1E790 800A75F0 C4920010 */  lwc1  $f18, 0x10($a0)
/* B1E794 800A75F4 C4500010 */  lwc1  $f16, 0x10($v0)
/* B1E798 800A75F8 46009182 */  mul.s $f6, $f18, $f0
/* B1E79C 800A75FC 46068101 */  sub.s $f4, $f16, $f6
/* B1E7A0 800A7600 E4440010 */  swc1  $f4, 0x10($v0)
/* B1E7A4 800A7604 C4A80010 */  lwc1  $f8, 0x10($a1)
/* B1E7A8 800A7608 C46A0010 */  lwc1  $f10, 0x10($v1)
/* B1E7AC 800A760C 46004482 */  mul.s $f18, $f8, $f0
/* B1E7B0 800A7610 46125401 */  sub.s $f16, $f10, $f18
/* B1E7B4 800A7614 E4700010 */  swc1  $f16, 0x10($v1)
/* B1E7B8 800A7618 C4840020 */  lwc1  $f4, 0x20($a0)
/* B1E7BC 800A761C C4460020 */  lwc1  $f6, 0x20($v0)
/* B1E7C0 800A7620 46002202 */  mul.s $f8, $f4, $f0
/* B1E7C4 800A7624 46083281 */  sub.s $f10, $f6, $f8
/* B1E7C8 800A7628 E44A0020 */  swc1  $f10, 0x20($v0)
/* B1E7CC 800A762C C4B00020 */  lwc1  $f16, 0x20($a1)
/* B1E7D0 800A7630 C4720020 */  lwc1  $f18, 0x20($v1)
/* B1E7D4 800A7634 46008102 */  mul.s $f4, $f16, $f0
/* B1E7D8 800A7638 46049181 */  sub.s $f6, $f18, $f4
/* B1E7DC 800A763C E4660020 */  swc1  $f6, 0x20($v1)
/* B1E7E0 800A7640 C48A0030 */  lwc1  $f10, 0x30($a0)
/* B1E7E4 800A7644 C4480030 */  lwc1  $f8, 0x30($v0)
/* B1E7E8 800A7648 46005402 */  mul.s $f16, $f10, $f0
/* B1E7EC 800A764C 46104481 */  sub.s $f18, $f8, $f16
/* B1E7F0 800A7650 E4520030 */  swc1  $f18, 0x30($v0)
/* B1E7F4 800A7654 C4A60030 */  lwc1  $f6, 0x30($a1)
/* B1E7F8 800A7658 C4640030 */  lwc1  $f4, 0x30($v1)
/* B1E7FC 800A765C 46003282 */  mul.s $f10, $f6, $f0
/* B1E800 800A7660 460A2201 */  sub.s $f8, $f4, $f10
/* B1E804 800A7664 E4680030 */  swc1  $f8, 0x30($v1)
.L800A7668:
/* B1E808 800A7668 25290001 */  addiu $t1, $t1, 1
/* B1E80C 800A766C 152CFFD0 */  bne   $t1, $t4, .L800A75B0
/* B1E810 800A7670 00000000 */   nop   
/* B1E814 800A7674 26100001 */  addiu $s0, $s0, 1
/* B1E818 800A7678 560CFF6B */  bnel  $s0, $t4, .L800A7428
/* B1E81C 800A767C 2A010004 */   slti  $at, $s0, 4
/* B1E820 800A7680 00001025 */  move  $v0, $zero
.L800A7684:
/* B1E824 800A7684 8FBF002C */  lw    $ra, 0x2c($sp)
/* B1E828 800A7688 8FB00018 */  lw    $s0, 0x18($sp)
/* B1E82C 800A768C 8FB1001C */  lw    $s1, 0x1c($sp)
/* B1E830 800A7690 8FB20020 */  lw    $s2, 0x20($sp)
/* B1E834 800A7694 8FB30024 */  lw    $s3, 0x24($sp)
/* B1E838 800A7698 8FB40028 */  lw    $s4, 0x28($sp)
/* B1E83C 800A769C 03E00008 */  jr    $ra
/* B1E840 800A76A0 27BD00B8 */   addiu $sp, $sp, 0xb8

glabel func_800A76A4
/* B1E844 800A76A4 AFA7000C */  sw    $a3, 0xc($sp)
/* B1E848 800A76A8 44800000 */  mtc1  $zero, $f0
/* B1E84C 800A76AC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1E850 800A76B0 44856000 */  mtc1  $a1, $f12
/* B1E854 800A76B4 44867000 */  mtc1  $a2, $f14
/* B1E858 800A76B8 44812000 */  mtc1  $at, $f4
/* B1E85C 800A76BC E4800004 */  swc1  $f0, 4($a0)
/* B1E860 800A76C0 E4800008 */  swc1  $f0, 8($a0)
/* B1E864 800A76C4 E480000C */  swc1  $f0, 0xc($a0)
/* B1E868 800A76C8 E4800010 */  swc1  $f0, 0x10($a0)
/* B1E86C 800A76CC E4800018 */  swc1  $f0, 0x18($a0)
/* B1E870 800A76D0 E480001C */  swc1  $f0, 0x1c($a0)
/* B1E874 800A76D4 E4800020 */  swc1  $f0, 0x20($a0)
/* B1E878 800A76D8 E4800024 */  swc1  $f0, 0x24($a0)
/* B1E87C 800A76DC E480002C */  swc1  $f0, 0x2c($a0)
/* B1E880 800A76E0 E4800030 */  swc1  $f0, 0x30($a0)
/* B1E884 800A76E4 E4800034 */  swc1  $f0, 0x34($a0)
/* B1E888 800A76E8 E4800038 */  swc1  $f0, 0x38($a0)
/* B1E88C 800A76EC E48C0000 */  swc1  $f12, ($a0)
/* B1E890 800A76F0 E48E0014 */  swc1  $f14, 0x14($a0)
/* B1E894 800A76F4 E484003C */  swc1  $f4, 0x3c($a0)
/* B1E898 800A76F8 C7A6000C */  lwc1  $f6, 0xc($sp)
/* B1E89C 800A76FC 03E00008 */  jr    $ra
/* B1E8A0 800A7700 E4860028 */   swc1  $f6, 0x28($a0)

glabel func_800A7704
/* B1E8A4 800A7704 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B1E8A8 800A7708 AFB00018 */  sw    $s0, 0x18($sp)
/* B1E8AC 800A770C 00808025 */  move  $s0, $a0
/* B1E8B0 800A7710 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1E8B4 800A7714 AFA70044 */  sw    $a3, 0x44($sp)
/* B1E8B8 800A7718 AFA5003C */  sw    $a1, 0x3c($sp)
/* B1E8BC 800A771C AFA60040 */  sw    $a2, 0x40($sp)
/* B1E8C0 800A7720 0C01DE1C */  jal   Math_Sins
/* B1E8C4 800A7724 87A40046 */   lh    $a0, 0x46($sp)
/* B1E8C8 800A7728 87A40046 */  lh    $a0, 0x46($sp)
/* B1E8CC 800A772C 0C01DE0D */  jal   Math_Coss
/* B1E8D0 800A7730 E7A00030 */   swc1  $f0, 0x30($sp)
/* B1E8D4 800A7734 87A40042 */  lh    $a0, 0x42($sp)
/* B1E8D8 800A7738 C7AE0030 */  lwc1  $f14, 0x30($sp)
/* B1E8DC 800A773C 44808000 */  mtc1  $zero, $f16
/* B1E8E0 800A7740 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1E8E4 800A7744 44811000 */  mtc1  $at, $f2
/* B1E8E8 800A7748 46007107 */  neg.s $f4, $f14
/* B1E8EC 800A774C 46000306 */  mov.s $f12, $f0
/* B1E8F0 800A7750 E6000014 */  swc1  $f0, 0x14($s0)
/* B1E8F4 800A7754 E6040010 */  swc1  $f4, 0x10($s0)
/* B1E8F8 800A7758 E610002C */  swc1  $f16, 0x2c($s0)
/* B1E8FC 800A775C E610001C */  swc1  $f16, 0x1c($s0)
/* B1E900 800A7760 E610000C */  swc1  $f16, 0xc($s0)
/* B1E904 800A7764 E6100038 */  swc1  $f16, 0x38($s0)
/* B1E908 800A7768 E6100034 */  swc1  $f16, 0x34($s0)
/* B1E90C 800A776C E6100030 */  swc1  $f16, 0x30($s0)
/* B1E910 800A7770 10800017 */  beqz  $a0, .L800A77D0
/* B1E914 800A7774 E602003C */   swc1  $f2, 0x3c($s0)
/* B1E918 800A7778 E7AC002C */  swc1  $f12, 0x2c($sp)
/* B1E91C 800A777C 0C01DE1C */  jal   Math_Sins
/* B1E920 800A7780 E7AE0030 */   swc1  $f14, 0x30($sp)
/* B1E924 800A7784 87A40042 */  lh    $a0, 0x42($sp)
/* B1E928 800A7788 0C01DE0D */  jal   Math_Coss
/* B1E92C 800A778C E7A00024 */   swc1  $f0, 0x24($sp)
/* B1E930 800A7790 C7AC002C */  lwc1  $f12, 0x2c($sp)
/* B1E934 800A7794 C7A20024 */  lwc1  $f2, 0x24($sp)
/* B1E938 800A7798 C7AE0030 */  lwc1  $f14, 0x30($sp)
/* B1E93C 800A779C 46006182 */  mul.s $f6, $f12, $f0
/* B1E940 800A77A0 46001107 */  neg.s $f4, $f2
/* B1E944 800A77A4 44808000 */  mtc1  $zero, $f16
/* B1E948 800A77A8 46026202 */  mul.s $f8, $f12, $f2
/* B1E94C 800A77AC E6040008 */  swc1  $f4, 8($s0)
/* B1E950 800A77B0 E6000028 */  swc1  $f0, 0x28($s0)
/* B1E954 800A77B4 46007282 */  mul.s $f10, $f14, $f0
/* B1E958 800A77B8 E6060000 */  swc1  $f6, ($s0)
/* B1E95C 800A77BC 46027482 */  mul.s $f18, $f14, $f2
/* B1E960 800A77C0 E6080020 */  swc1  $f8, 0x20($s0)
/* B1E964 800A77C4 E60A0004 */  swc1  $f10, 4($s0)
/* B1E968 800A77C8 10000007 */  b     .L800A77E8
/* B1E96C 800A77CC E6120024 */   swc1  $f18, 0x24($s0)
.L800A77D0:
/* B1E970 800A77D0 E6000000 */  swc1  $f0, ($s0)
/* B1E974 800A77D4 E60E0004 */  swc1  $f14, 4($s0)
/* B1E978 800A77D8 E6100024 */  swc1  $f16, 0x24($s0)
/* B1E97C 800A77DC E6100020 */  swc1  $f16, 0x20($s0)
/* B1E980 800A77E0 E6100008 */  swc1  $f16, 8($s0)
/* B1E984 800A77E4 E6020028 */  swc1  $f2, 0x28($s0)
.L800A77E8:
/* B1E988 800A77E8 87A4003E */  lh    $a0, 0x3e($sp)
/* B1E98C 800A77EC 50800024 */  beql  $a0, $zero, .L800A7880
/* B1E990 800A77F0 E6100018 */   swc1  $f16, 0x18($s0)
/* B1E994 800A77F4 0C01DE1C */  jal   Math_Sins
/* B1E998 800A77F8 00000000 */   nop   
/* B1E99C 800A77FC 87A4003E */  lh    $a0, 0x3e($sp)
/* B1E9A0 800A7800 0C01DE0D */  jal   Math_Coss
/* B1E9A4 800A7804 E7A00024 */   swc1  $f0, 0x24($sp)
/* B1E9A8 800A7808 C60E0010 */  lwc1  $f14, 0x10($s0)
/* B1E9AC 800A780C C7A20024 */  lwc1  $f2, 0x24($sp)
/* B1E9B0 800A7810 C60C0020 */  lwc1  $f12, 0x20($s0)
/* B1E9B4 800A7814 46007182 */  mul.s $f6, $f14, $f0
/* B1E9B8 800A7818 00000000 */  nop   
/* B1E9BC 800A781C 46026202 */  mul.s $f8, $f12, $f2
/* B1E9C0 800A7820 00000000 */  nop   
/* B1E9C4 800A7824 46006482 */  mul.s $f18, $f12, $f0
/* B1E9C8 800A7828 C60C0024 */  lwc1  $f12, 0x24($s0)
/* B1E9CC 800A782C 46027102 */  mul.s $f4, $f14, $f2
/* B1E9D0 800A7830 C60E0014 */  lwc1  $f14, 0x14($s0)
/* B1E9D4 800A7834 46083280 */  add.s $f10, $f6, $f8
/* B1E9D8 800A7838 46007202 */  mul.s $f8, $f14, $f0
/* B1E9DC 800A783C E60A0010 */  swc1  $f10, 0x10($s0)
/* B1E9E0 800A7840 46026282 */  mul.s $f10, $f12, $f2
/* B1E9E4 800A7844 46049181 */  sub.s $f6, $f18, $f4
/* B1E9E8 800A7848 46006102 */  mul.s $f4, $f12, $f0
/* B1E9EC 800A784C C60C0028 */  lwc1  $f12, 0x28($s0)
/* B1E9F0 800A7850 E6060020 */  swc1  $f6, 0x20($s0)
/* B1E9F4 800A7854 46027182 */  mul.s $f6, $f14, $f2
/* B1E9F8 800A7858 460A4480 */  add.s $f18, $f8, $f10
/* B1E9FC 800A785C 46026282 */  mul.s $f10, $f12, $f2
/* B1EA00 800A7860 E6120014 */  swc1  $f18, 0x14($s0)
/* B1EA04 800A7864 46006482 */  mul.s $f18, $f12, $f0
/* B1EA08 800A7868 46062201 */  sub.s $f8, $f4, $f6
/* B1EA0C 800A786C E60A0018 */  swc1  $f10, 0x18($s0)
/* B1EA10 800A7870 E6080024 */  swc1  $f8, 0x24($s0)
/* B1EA14 800A7874 10000002 */  b     .L800A7880
/* B1EA18 800A7878 E6120028 */   swc1  $f18, 0x28($s0)
/* B1EA1C 800A787C E6100018 */  swc1  $f16, 0x18($s0)
.L800A7880:
/* B1EA20 800A7880 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1EA24 800A7884 8FB00018 */  lw    $s0, 0x18($sp)
/* B1EA28 800A7888 27BD0038 */  addiu $sp, $sp, 0x38
/* B1EA2C 800A788C 03E00008 */  jr    $ra
/* B1EA30 800A7890 00000000 */   nop   

glabel func_800A7894
/* B1EA34 800A7894 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B1EA38 800A7898 AFB00018 */  sw    $s0, 0x18($sp)
/* B1EA3C 800A789C 00808025 */  move  $s0, $a0
/* B1EA40 800A78A0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1EA44 800A78A4 AFA60040 */  sw    $a2, 0x40($sp)
/* B1EA48 800A78A8 AFA5003C */  sw    $a1, 0x3c($sp)
/* B1EA4C 800A78AC AFA70044 */  sw    $a3, 0x44($sp)
/* B1EA50 800A78B0 0C01DE1C */  jal   Math_Sins
/* B1EA54 800A78B4 87A40042 */   lh    $a0, 0x42($sp)
/* B1EA58 800A78B8 87A40042 */  lh    $a0, 0x42($sp)
/* B1EA5C 800A78BC 0C01DE0D */  jal   Math_Coss
/* B1EA60 800A78C0 E7A00030 */   swc1  $f0, 0x30($sp)
/* B1EA64 800A78C4 87A4003E */  lh    $a0, 0x3e($sp)
/* B1EA68 800A78C8 C7AE0030 */  lwc1  $f14, 0x30($sp)
/* B1EA6C 800A78CC 44808000 */  mtc1  $zero, $f16
/* B1EA70 800A78D0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1EA74 800A78D4 44811000 */  mtc1  $at, $f2
/* B1EA78 800A78D8 46007107 */  neg.s $f4, $f14
/* B1EA7C 800A78DC 46000306 */  mov.s $f12, $f0
/* B1EA80 800A78E0 E6000000 */  swc1  $f0, ($s0)
/* B1EA84 800A78E4 E6040008 */  swc1  $f4, 8($s0)
/* B1EA88 800A78E8 E610002C */  swc1  $f16, 0x2c($s0)
/* B1EA8C 800A78EC E610001C */  swc1  $f16, 0x1c($s0)
/* B1EA90 800A78F0 E610000C */  swc1  $f16, 0xc($s0)
/* B1EA94 800A78F4 E6100038 */  swc1  $f16, 0x38($s0)
/* B1EA98 800A78F8 E6100034 */  swc1  $f16, 0x34($s0)
/* B1EA9C 800A78FC E6100030 */  swc1  $f16, 0x30($s0)
/* B1EAA0 800A7900 10800017 */  beqz  $a0, .L800A7960
/* B1EAA4 800A7904 E602003C */   swc1  $f2, 0x3c($s0)
/* B1EAA8 800A7908 E7AC002C */  swc1  $f12, 0x2c($sp)
/* B1EAAC 800A790C 0C01DE1C */  jal   Math_Sins
/* B1EAB0 800A7910 E7AE0030 */   swc1  $f14, 0x30($sp)
/* B1EAB4 800A7914 87A4003E */  lh    $a0, 0x3e($sp)
/* B1EAB8 800A7918 0C01DE0D */  jal   Math_Coss
/* B1EABC 800A791C E7A00024 */   swc1  $f0, 0x24($sp)
/* B1EAC0 800A7920 C7AC002C */  lwc1  $f12, 0x2c($sp)
/* B1EAC4 800A7924 C7A20024 */  lwc1  $f2, 0x24($sp)
/* B1EAC8 800A7928 C7AE0030 */  lwc1  $f14, 0x30($sp)
/* B1EACC 800A792C 46006182 */  mul.s $f6, $f12, $f0
/* B1EAD0 800A7930 46001107 */  neg.s $f4, $f2
/* B1EAD4 800A7934 44808000 */  mtc1  $zero, $f16
/* B1EAD8 800A7938 46026202 */  mul.s $f8, $f12, $f2
/* B1EADC 800A793C E6040024 */  swc1  $f4, 0x24($s0)
/* B1EAE0 800A7940 E6000014 */  swc1  $f0, 0x14($s0)
/* B1EAE4 800A7944 46007282 */  mul.s $f10, $f14, $f0
/* B1EAE8 800A7948 E6060028 */  swc1  $f6, 0x28($s0)
/* B1EAEC 800A794C 46027482 */  mul.s $f18, $f14, $f2
/* B1EAF0 800A7950 E6080018 */  swc1  $f8, 0x18($s0)
/* B1EAF4 800A7954 E60A0020 */  swc1  $f10, 0x20($s0)
/* B1EAF8 800A7958 10000007 */  b     .L800A7978
/* B1EAFC 800A795C E6120010 */   swc1  $f18, 0x10($s0)
.L800A7960:
/* B1EB00 800A7960 E6000028 */  swc1  $f0, 0x28($s0)
/* B1EB04 800A7964 E60E0020 */  swc1  $f14, 0x20($s0)
/* B1EB08 800A7968 E6100024 */  swc1  $f16, 0x24($s0)
/* B1EB0C 800A796C E6100018 */  swc1  $f16, 0x18($s0)
/* B1EB10 800A7970 E6100010 */  swc1  $f16, 0x10($s0)
/* B1EB14 800A7974 E6020014 */  swc1  $f2, 0x14($s0)
.L800A7978:
/* B1EB18 800A7978 87A40046 */  lh    $a0, 0x46($sp)
/* B1EB1C 800A797C 50800024 */  beql  $a0, $zero, .L800A7A10
/* B1EB20 800A7980 E6100004 */   swc1  $f16, 4($s0)
/* B1EB24 800A7984 0C01DE1C */  jal   Math_Sins
/* B1EB28 800A7988 00000000 */   nop   
/* B1EB2C 800A798C 87A40046 */  lh    $a0, 0x46($sp)
/* B1EB30 800A7990 0C01DE0D */  jal   Math_Coss
/* B1EB34 800A7994 E7A00024 */   swc1  $f0, 0x24($sp)
/* B1EB38 800A7998 C60E0000 */  lwc1  $f14, ($s0)
/* B1EB3C 800A799C C7A20024 */  lwc1  $f2, 0x24($sp)
/* B1EB40 800A79A0 C60C0010 */  lwc1  $f12, 0x10($s0)
/* B1EB44 800A79A4 46007182 */  mul.s $f6, $f14, $f0
/* B1EB48 800A79A8 00000000 */  nop   
/* B1EB4C 800A79AC 46026202 */  mul.s $f8, $f12, $f2
/* B1EB50 800A79B0 00000000 */  nop   
/* B1EB54 800A79B4 46006482 */  mul.s $f18, $f12, $f0
/* B1EB58 800A79B8 C60C0018 */  lwc1  $f12, 0x18($s0)
/* B1EB5C 800A79BC 46027102 */  mul.s $f4, $f14, $f2
/* B1EB60 800A79C0 C60E0008 */  lwc1  $f14, 8($s0)
/* B1EB64 800A79C4 46083280 */  add.s $f10, $f6, $f8
/* B1EB68 800A79C8 46007202 */  mul.s $f8, $f14, $f0
/* B1EB6C 800A79CC E60A0000 */  swc1  $f10, ($s0)
/* B1EB70 800A79D0 46026282 */  mul.s $f10, $f12, $f2
/* B1EB74 800A79D4 46049181 */  sub.s $f6, $f18, $f4
/* B1EB78 800A79D8 46006102 */  mul.s $f4, $f12, $f0
/* B1EB7C 800A79DC C60C0014 */  lwc1  $f12, 0x14($s0)
/* B1EB80 800A79E0 E6060010 */  swc1  $f6, 0x10($s0)
/* B1EB84 800A79E4 46027182 */  mul.s $f6, $f14, $f2
/* B1EB88 800A79E8 460A4480 */  add.s $f18, $f8, $f10
/* B1EB8C 800A79EC 46026282 */  mul.s $f10, $f12, $f2
/* B1EB90 800A79F0 E6120008 */  swc1  $f18, 8($s0)
/* B1EB94 800A79F4 46006482 */  mul.s $f18, $f12, $f0
/* B1EB98 800A79F8 46062201 */  sub.s $f8, $f4, $f6
/* B1EB9C 800A79FC E60A0004 */  swc1  $f10, 4($s0)
/* B1EBA0 800A7A00 E6080018 */  swc1  $f8, 0x18($s0)
/* B1EBA4 800A7A04 10000002 */  b     .L800A7A10
/* B1EBA8 800A7A08 E6120014 */   swc1  $f18, 0x14($s0)
/* B1EBAC 800A7A0C E6100004 */  swc1  $f16, 4($s0)
.L800A7A10:
/* B1EBB0 800A7A10 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1EBB4 800A7A14 8FB00018 */  lw    $s0, 0x18($sp)
/* B1EBB8 800A7A18 27BD0038 */  addiu $sp, $sp, 0x38
/* B1EBBC 800A7A1C 03E00008 */  jr    $ra
/* B1EBC0 800A7A20 00000000 */   nop   

glabel func_800A7A24
/* B1EBC4 800A7A24 AFA7000C */  sw    $a3, 0xc($sp)
/* B1EBC8 800A7A28 44800000 */  mtc1  $zero, $f0
/* B1EBCC 800A7A2C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1EBD0 800A7A30 44811000 */  mtc1  $at, $f2
/* B1EBD4 800A7A34 44856000 */  mtc1  $a1, $f12
/* B1EBD8 800A7A38 44867000 */  mtc1  $a2, $f14
/* B1EBDC 800A7A3C E4800004 */  swc1  $f0, 4($a0)
/* B1EBE0 800A7A40 E4800008 */  swc1  $f0, 8($a0)
/* B1EBE4 800A7A44 E480000C */  swc1  $f0, 0xc($a0)
/* B1EBE8 800A7A48 E4800010 */  swc1  $f0, 0x10($a0)
/* B1EBEC 800A7A4C E4800018 */  swc1  $f0, 0x18($a0)
/* B1EBF0 800A7A50 E480001C */  swc1  $f0, 0x1c($a0)
/* B1EBF4 800A7A54 E4800020 */  swc1  $f0, 0x20($a0)
/* B1EBF8 800A7A58 E4800024 */  swc1  $f0, 0x24($a0)
/* B1EBFC 800A7A5C E480002C */  swc1  $f0, 0x2c($a0)
/* B1EC00 800A7A60 E4820000 */  swc1  $f2, ($a0)
/* B1EC04 800A7A64 E4820014 */  swc1  $f2, 0x14($a0)
/* B1EC08 800A7A68 E4820028 */  swc1  $f2, 0x28($a0)
/* B1EC0C 800A7A6C E482003C */  swc1  $f2, 0x3c($a0)
/* B1EC10 800A7A70 E48C0030 */  swc1  $f12, 0x30($a0)
/* B1EC14 800A7A74 E48E0034 */  swc1  $f14, 0x34($a0)
/* B1EC18 800A7A78 C7A4000C */  lwc1  $f4, 0xc($sp)
/* B1EC1C 800A7A7C 03E00008 */  jr    $ra
/* B1EC20 800A7A80 E4840038 */   swc1  $f4, 0x38($a0)

glabel func_800A7A84
/* B1EC24 800A7A84 27BDFF68 */  addiu $sp, $sp, -0x98
/* B1EC28 800A7A88 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1EC2C 800A7A8C AFA5009C */  sw    $a1, 0x9c($sp)
/* B1EC30 800A7A90 AFA600A0 */  sw    $a2, 0xa0($sp)
/* B1EC34 800A7A94 AFA700A4 */  sw    $a3, 0xa4($sp)
/* B1EC38 800A7A98 AFA40098 */  sw    $a0, 0x98($sp)
/* B1EC3C 800A7A9C 8FA700BC */  lw    $a3, 0xbc($sp)
/* B1EC40 800A7AA0 8FA600B8 */  lw    $a2, 0xb8($sp)
/* B1EC44 800A7AA4 0C029E89 */  jal   func_800A7A24
/* B1EC48 800A7AA8 8FA500B4 */   lw    $a1, 0xb4($sp)
/* B1EC4C 800A7AAC 27A40058 */  addiu $a0, $sp, 0x58
/* B1EC50 800A7AB0 87A500AA */  lh    $a1, 0xaa($sp)
/* B1EC54 800A7AB4 87A600AE */  lh    $a2, 0xae($sp)
/* B1EC58 800A7AB8 0C029DC1 */  jal   func_800A7704
/* B1EC5C 800A7ABC 87A700B2 */   lh    $a3, 0xb2($sp)
/* B1EC60 800A7AC0 8FA40098 */  lw    $a0, 0x98($sp)
/* B1EC64 800A7AC4 27A50058 */  addiu $a1, $sp, 0x58
/* B1EC68 800A7AC8 0C029BE8 */  jal   func_800A6FA0
/* B1EC6C 800A7ACC 27A60018 */   addiu $a2, $sp, 0x18
/* B1EC70 800A7AD0 27A40058 */  addiu $a0, $sp, 0x58
/* B1EC74 800A7AD4 8FA5009C */  lw    $a1, 0x9c($sp)
/* B1EC78 800A7AD8 8FA600A0 */  lw    $a2, 0xa0($sp)
/* B1EC7C 800A7ADC 0C029DA9 */  jal   func_800A76A4
/* B1EC80 800A7AE0 8FA700A4 */   lw    $a3, 0xa4($sp)
/* B1EC84 800A7AE4 27A40018 */  addiu $a0, $sp, 0x18
/* B1EC88 800A7AE8 27A50058 */  addiu $a1, $sp, 0x58
/* B1EC8C 800A7AEC 0C029BE8 */  jal   func_800A6FA0
/* B1EC90 800A7AF0 8FA60098 */   lw    $a2, 0x98($sp)
/* B1EC94 800A7AF4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1EC98 800A7AF8 27BD0098 */  addiu $sp, $sp, 0x98
/* B1EC9C 800A7AFC 03E00008 */  jr    $ra
/* B1ECA0 800A7B00 00000000 */   nop   

glabel func_800A7B04
/* B1ECA4 800A7B04 27BDFF68 */  addiu $sp, $sp, -0x98
/* B1ECA8 800A7B08 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1ECAC 800A7B0C AFA5009C */  sw    $a1, 0x9c($sp)
/* B1ECB0 800A7B10 AFA600A0 */  sw    $a2, 0xa0($sp)
/* B1ECB4 800A7B14 AFA700A4 */  sw    $a3, 0xa4($sp)
/* B1ECB8 800A7B18 AFA40098 */  sw    $a0, 0x98($sp)
/* B1ECBC 800A7B1C 8FA700BC */  lw    $a3, 0xbc($sp)
/* B1ECC0 800A7B20 8FA600B8 */  lw    $a2, 0xb8($sp)
/* B1ECC4 800A7B24 0C029E89 */  jal   func_800A7A24
/* B1ECC8 800A7B28 8FA500B4 */   lw    $a1, 0xb4($sp)
/* B1ECCC 800A7B2C 27A40058 */  addiu $a0, $sp, 0x58
/* B1ECD0 800A7B30 87A500AA */  lh    $a1, 0xaa($sp)
/* B1ECD4 800A7B34 87A600AE */  lh    $a2, 0xae($sp)
/* B1ECD8 800A7B38 0C029E25 */  jal   func_800A7894
/* B1ECDC 800A7B3C 87A700B2 */   lh    $a3, 0xb2($sp)
/* B1ECE0 800A7B40 8FA40098 */  lw    $a0, 0x98($sp)
/* B1ECE4 800A7B44 27A50058 */  addiu $a1, $sp, 0x58
/* B1ECE8 800A7B48 0C029BE8 */  jal   func_800A6FA0
/* B1ECEC 800A7B4C 27A60018 */   addiu $a2, $sp, 0x18
/* B1ECF0 800A7B50 27A40058 */  addiu $a0, $sp, 0x58
/* B1ECF4 800A7B54 8FA5009C */  lw    $a1, 0x9c($sp)
/* B1ECF8 800A7B58 8FA600A0 */  lw    $a2, 0xa0($sp)
/* B1ECFC 800A7B5C 0C029DA9 */  jal   func_800A76A4
/* B1ED00 800A7B60 8FA700A4 */   lw    $a3, 0xa4($sp)
/* B1ED04 800A7B64 27A40018 */  addiu $a0, $sp, 0x18
/* B1ED08 800A7B68 27A50058 */  addiu $a1, $sp, 0x58
/* B1ED0C 800A7B6C 0C029BE8 */  jal   func_800A6FA0
/* B1ED10 800A7B70 8FA60098 */   lw    $a2, 0x98($sp)
/* B1ED14 800A7B74 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1ED18 800A7B78 27BD0098 */  addiu $sp, $sp, 0x98
/* B1ED1C 800A7B7C 03E00008 */  jr    $ra
/* B1ED20 800A7B80 00000000 */   nop   

glabel func_800A7B84
/* B1ED24 800A7B84 27BDFF68 */  addiu $sp, $sp, -0x98
/* B1ED28 800A7B88 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1ED2C 800A7B8C AFA40098 */  sw    $a0, 0x98($sp)
/* B1ED30 800A7B90 AFA5009C */  sw    $a1, 0x9c($sp)
/* B1ED34 800A7B94 AFA600A0 */  sw    $a2, 0xa0($sp)
/* B1ED38 800A7B98 AFA700A4 */  sw    $a3, 0xa4($sp)
/* B1ED3C 800A7B9C 8FA700B0 */  lw    $a3, 0xb0($sp)
/* B1ED40 800A7BA0 8FA600AC */  lw    $a2, 0xac($sp)
/* B1ED44 800A7BA4 8FA500A8 */  lw    $a1, 0xa8($sp)
/* B1ED48 800A7BA8 0C029E89 */  jal   func_800A7A24
/* B1ED4C 800A7BAC 27A40018 */   addiu $a0, $sp, 0x18
/* B1ED50 800A7BB0 27A40058 */  addiu $a0, $sp, 0x58
/* B1ED54 800A7BB4 87A5009E */  lh    $a1, 0x9e($sp)
/* B1ED58 800A7BB8 87A600A2 */  lh    $a2, 0xa2($sp)
/* B1ED5C 800A7BBC 0C029DC1 */  jal   func_800A7704
/* B1ED60 800A7BC0 87A700A6 */   lh    $a3, 0xa6($sp)
/* B1ED64 800A7BC4 27A40018 */  addiu $a0, $sp, 0x18
/* B1ED68 800A7BC8 27A50058 */  addiu $a1, $sp, 0x58
/* B1ED6C 800A7BCC 0C029BE8 */  jal   func_800A6FA0
/* B1ED70 800A7BD0 8FA60098 */   lw    $a2, 0x98($sp)
/* B1ED74 800A7BD4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1ED78 800A7BD8 27BD0098 */  addiu $sp, $sp, 0x98
/* B1ED7C 800A7BDC 03E00008 */  jr    $ra
/* B1ED80 800A7BE0 00000000 */   nop   

glabel func_800A7BE4
/* B1ED84 800A7BE4 C4840000 */  lwc1  $f4, ($a0)
/* B1ED88 800A7BE8 4600218D */  trunc.w.s $f6, $f4
/* B1ED8C 800A7BEC 440F3000 */  mfc1  $t7, $f6
/* B1ED90 800A7BF0 00000000 */  nop   
/* B1ED94 800A7BF4 A4AF0000 */  sh    $t7, ($a1)
/* B1ED98 800A7BF8 C4880004 */  lwc1  $f8, 4($a0)
/* B1ED9C 800A7BFC 4600428D */  trunc.w.s $f10, $f8
/* B1EDA0 800A7C00 44195000 */  mfc1  $t9, $f10
/* B1EDA4 800A7C04 00000000 */  nop   
/* B1EDA8 800A7C08 A4B90002 */  sh    $t9, 2($a1)
/* B1EDAC 800A7C0C C4900008 */  lwc1  $f16, 8($a0)
/* B1EDB0 800A7C10 4600848D */  trunc.w.s $f18, $f16
/* B1EDB4 800A7C14 44099000 */  mfc1  $t1, $f18
/* B1EDB8 800A7C18 03E00008 */  jr    $ra
/* B1EDBC 800A7C1C A4A90004 */   sh    $t1, 4($a1)

glabel func_800A7C20
/* B1EDC0 800A7C20 848E0000 */  lh    $t6, ($a0)
/* B1EDC4 800A7C24 448E2000 */  mtc1  $t6, $f4
/* B1EDC8 800A7C28 00000000 */  nop   
/* B1EDCC 800A7C2C 468021A0 */  cvt.s.w $f6, $f4
/* B1EDD0 800A7C30 E4A60000 */  swc1  $f6, ($a1)
/* B1EDD4 800A7C34 848F0002 */  lh    $t7, 2($a0)
/* B1EDD8 800A7C38 448F4000 */  mtc1  $t7, $f8
/* B1EDDC 800A7C3C 00000000 */  nop   
/* B1EDE0 800A7C40 468042A0 */  cvt.s.w $f10, $f8
/* B1EDE4 800A7C44 E4AA0004 */  swc1  $f10, 4($a1)
/* B1EDE8 800A7C48 84980004 */  lh    $t8, 4($a0)
/* B1EDEC 800A7C4C 44988000 */  mtc1  $t8, $f16
/* B1EDF0 800A7C50 00000000 */  nop   
/* B1EDF4 800A7C54 468084A0 */  cvt.s.w $f18, $f16
/* B1EDF8 800A7C58 03E00008 */  jr    $ra
/* B1EDFC 800A7C5C E4B20008 */   swc1  $f18, 8($a1)

glabel func_800A7C60
/* B1EE00 800A7C60 3C014780 */  li    $at, 0x47800000 # 0.000000
/* B1EE04 800A7C64 44810000 */  mtc1  $at, $f0
/* B1EE08 800A7C68 C4840000 */  lwc1  $f4, ($a0)
/* B1EE0C 800A7C6C 24A20020 */  addiu $v0, $a1, 0x20
/* B1EE10 800A7C70 46002182 */  mul.s $f6, $f4, $f0
/* B1EE14 800A7C74 4600320D */  trunc.w.s $f8, $f6
/* B1EE18 800A7C78 44184000 */  mfc1  $t8, $f8
/* B1EE1C 800A7C7C 00000000 */  nop   
/* B1EE20 800A7C80 00187C03 */  sra   $t7, $t8, 0x10
/* B1EE24 800A7C84 A4AF0000 */  sh    $t7, ($a1)
/* B1EE28 800A7C88 A4B80020 */  sh    $t8, 0x20($a1)
/* B1EE2C 800A7C8C C48A0004 */  lwc1  $f10, 4($a0)
/* B1EE30 800A7C90 46005402 */  mul.s $f16, $f10, $f0
/* B1EE34 800A7C94 4600848D */  trunc.w.s $f18, $f16
/* B1EE38 800A7C98 44099000 */  mfc1  $t1, $f18
/* B1EE3C 800A7C9C 00000000 */  nop   
/* B1EE40 800A7CA0 00094403 */  sra   $t0, $t1, 0x10
/* B1EE44 800A7CA4 A4A80002 */  sh    $t0, 2($a1)
/* B1EE48 800A7CA8 A4A90022 */  sh    $t1, 0x22($a1)
/* B1EE4C 800A7CAC C4840008 */  lwc1  $f4, 8($a0)
/* B1EE50 800A7CB0 46002182 */  mul.s $f6, $f4, $f0
/* B1EE54 800A7CB4 4600320D */  trunc.w.s $f8, $f6
/* B1EE58 800A7CB8 440C4000 */  mfc1  $t4, $f8
/* B1EE5C 800A7CBC 00000000 */  nop   
/* B1EE60 800A7CC0 000C5C03 */  sra   $t3, $t4, 0x10
/* B1EE64 800A7CC4 A4AB0004 */  sh    $t3, 4($a1)
/* B1EE68 800A7CC8 A4AC0024 */  sh    $t4, 0x24($a1)
/* B1EE6C 800A7CCC C48A000C */  lwc1  $f10, 0xc($a0)
/* B1EE70 800A7CD0 46005402 */  mul.s $f16, $f10, $f0
/* B1EE74 800A7CD4 4600848D */  trunc.w.s $f18, $f16
/* B1EE78 800A7CD8 440F9000 */  mfc1  $t7, $f18
/* B1EE7C 800A7CDC 00000000 */  nop   
/* B1EE80 800A7CE0 000F7403 */  sra   $t6, $t7, 0x10
/* B1EE84 800A7CE4 A4AE0006 */  sh    $t6, 6($a1)
/* B1EE88 800A7CE8 A4AF0026 */  sh    $t7, 0x26($a1)
/* B1EE8C 800A7CEC C4840010 */  lwc1  $f4, 0x10($a0)
/* B1EE90 800A7CF0 46002182 */  mul.s $f6, $f4, $f0
/* B1EE94 800A7CF4 4600320D */  trunc.w.s $f8, $f6
/* B1EE98 800A7CF8 44084000 */  mfc1  $t0, $f8
/* B1EE9C 800A7CFC 00000000 */  nop   
/* B1EEA0 800A7D00 0008CC03 */  sra   $t9, $t0, 0x10
/* B1EEA4 800A7D04 A4B90008 */  sh    $t9, 8($a1)
/* B1EEA8 800A7D08 A4A80028 */  sh    $t0, 0x28($a1)
/* B1EEAC 800A7D0C C48A0014 */  lwc1  $f10, 0x14($a0)
/* B1EEB0 800A7D10 46005402 */  mul.s $f16, $f10, $f0
/* B1EEB4 800A7D14 4600848D */  trunc.w.s $f18, $f16
/* B1EEB8 800A7D18 440B9000 */  mfc1  $t3, $f18
/* B1EEBC 800A7D1C 00000000 */  nop   
/* B1EEC0 800A7D20 000B5403 */  sra   $t2, $t3, 0x10
/* B1EEC4 800A7D24 A4AA000A */  sh    $t2, 0xa($a1)
/* B1EEC8 800A7D28 A4AB002A */  sh    $t3, 0x2a($a1)
/* B1EECC 800A7D2C C4840018 */  lwc1  $f4, 0x18($a0)
/* B1EED0 800A7D30 46002182 */  mul.s $f6, $f4, $f0
/* B1EED4 800A7D34 4600320D */  trunc.w.s $f8, $f6
/* B1EED8 800A7D38 440E4000 */  mfc1  $t6, $f8
/* B1EEDC 800A7D3C 00000000 */  nop   
/* B1EEE0 800A7D40 000E6C03 */  sra   $t5, $t6, 0x10
/* B1EEE4 800A7D44 A4AD000C */  sh    $t5, 0xc($a1)
/* B1EEE8 800A7D48 A4AE002C */  sh    $t6, 0x2c($a1)
/* B1EEEC 800A7D4C C48A001C */  lwc1  $f10, 0x1c($a0)
/* B1EEF0 800A7D50 46005402 */  mul.s $f16, $f10, $f0
/* B1EEF4 800A7D54 4600848D */  trunc.w.s $f18, $f16
/* B1EEF8 800A7D58 44199000 */  mfc1  $t9, $f18
/* B1EEFC 800A7D5C 00000000 */  nop   
/* B1EF00 800A7D60 0019C403 */  sra   $t8, $t9, 0x10
/* B1EF04 800A7D64 A4B8000E */  sh    $t8, 0xe($a1)
/* B1EF08 800A7D68 A4B9002E */  sh    $t9, 0x2e($a1)
/* B1EF0C 800A7D6C C4840020 */  lwc1  $f4, 0x20($a0)
/* B1EF10 800A7D70 46002182 */  mul.s $f6, $f4, $f0
/* B1EF14 800A7D74 4600320D */  trunc.w.s $f8, $f6
/* B1EF18 800A7D78 440A4000 */  mfc1  $t2, $f8
/* B1EF1C 800A7D7C 00000000 */  nop   
/* B1EF20 800A7D80 000A4C03 */  sra   $t1, $t2, 0x10
/* B1EF24 800A7D84 A4A90010 */  sh    $t1, 0x10($a1)
/* B1EF28 800A7D88 A4AA0030 */  sh    $t2, 0x30($a1)
/* B1EF2C 800A7D8C C48A0024 */  lwc1  $f10, 0x24($a0)
/* B1EF30 800A7D90 46005402 */  mul.s $f16, $f10, $f0
/* B1EF34 800A7D94 4600848D */  trunc.w.s $f18, $f16
/* B1EF38 800A7D98 440D9000 */  mfc1  $t5, $f18
/* B1EF3C 800A7D9C 00000000 */  nop   
/* B1EF40 800A7DA0 000D6403 */  sra   $t4, $t5, 0x10
/* B1EF44 800A7DA4 A4AC0012 */  sh    $t4, 0x12($a1)
/* B1EF48 800A7DA8 A44D0012 */  sh    $t5, 0x12($v0)
/* B1EF4C 800A7DAC C4840028 */  lwc1  $f4, 0x28($a0)
/* B1EF50 800A7DB0 46002182 */  mul.s $f6, $f4, $f0
/* B1EF54 800A7DB4 4600320D */  trunc.w.s $f8, $f6
/* B1EF58 800A7DB8 44184000 */  mfc1  $t8, $f8
/* B1EF5C 800A7DBC 00000000 */  nop   
/* B1EF60 800A7DC0 00187C03 */  sra   $t7, $t8, 0x10
/* B1EF64 800A7DC4 A4AF0014 */  sh    $t7, 0x14($a1)
/* B1EF68 800A7DC8 A4580014 */  sh    $t8, 0x14($v0)
/* B1EF6C 800A7DCC C48A002C */  lwc1  $f10, 0x2c($a0)
/* B1EF70 800A7DD0 46005402 */  mul.s $f16, $f10, $f0
/* B1EF74 800A7DD4 4600848D */  trunc.w.s $f18, $f16
/* B1EF78 800A7DD8 44099000 */  mfc1  $t1, $f18
/* B1EF7C 800A7DDC 00000000 */  nop   
/* B1EF80 800A7DE0 00094403 */  sra   $t0, $t1, 0x10
/* B1EF84 800A7DE4 A4A80016 */  sh    $t0, 0x16($a1)
/* B1EF88 800A7DE8 A4490016 */  sh    $t1, 0x16($v0)
/* B1EF8C 800A7DEC C4840030 */  lwc1  $f4, 0x30($a0)
/* B1EF90 800A7DF0 46002182 */  mul.s $f6, $f4, $f0
/* B1EF94 800A7DF4 4600320D */  trunc.w.s $f8, $f6
/* B1EF98 800A7DF8 440C4000 */  mfc1  $t4, $f8
/* B1EF9C 800A7DFC 00000000 */  nop   
/* B1EFA0 800A7E00 000C5C03 */  sra   $t3, $t4, 0x10
/* B1EFA4 800A7E04 A4AB0018 */  sh    $t3, 0x18($a1)
/* B1EFA8 800A7E08 A44C0018 */  sh    $t4, 0x18($v0)
/* B1EFAC 800A7E0C C48A0034 */  lwc1  $f10, 0x34($a0)
/* B1EFB0 800A7E10 46005402 */  mul.s $f16, $f10, $f0
/* B1EFB4 800A7E14 4600848D */  trunc.w.s $f18, $f16
/* B1EFB8 800A7E18 440F9000 */  mfc1  $t7, $f18
/* B1EFBC 800A7E1C 00000000 */  nop   
/* B1EFC0 800A7E20 000F7403 */  sra   $t6, $t7, 0x10
/* B1EFC4 800A7E24 A4AE001A */  sh    $t6, 0x1a($a1)
/* B1EFC8 800A7E28 A44F001A */  sh    $t7, 0x1a($v0)
/* B1EFCC 800A7E2C C4840038 */  lwc1  $f4, 0x38($a0)
/* B1EFD0 800A7E30 46002182 */  mul.s $f6, $f4, $f0
/* B1EFD4 800A7E34 4600320D */  trunc.w.s $f8, $f6
/* B1EFD8 800A7E38 44084000 */  mfc1  $t0, $f8
/* B1EFDC 800A7E3C 00000000 */  nop   
/* B1EFE0 800A7E40 0008CC03 */  sra   $t9, $t0, 0x10
/* B1EFE4 800A7E44 A4B9001C */  sh    $t9, 0x1c($a1)
/* B1EFE8 800A7E48 A448001C */  sh    $t0, 0x1c($v0)
/* B1EFEC 800A7E4C C48A003C */  lwc1  $f10, 0x3c($a0)
/* B1EFF0 800A7E50 46005402 */  mul.s $f16, $f10, $f0
/* B1EFF4 800A7E54 4600848D */  trunc.w.s $f18, $f16
/* B1EFF8 800A7E58 440B9000 */  mfc1  $t3, $f18
/* B1EFFC 800A7E5C 00000000 */  nop   
/* B1F000 800A7E60 000B5403 */  sra   $t2, $t3, 0x10
/* B1F004 800A7E64 A4AA001E */  sh    $t2, 0x1e($a1)
/* B1F008 800A7E68 03E00008 */  jr    $ra
/* B1F00C 800A7E6C A44B001E */   sh    $t3, 0x1e($v0)

glabel func_800A7E70
/* B1F010 800A7E70 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1F014 800A7E74 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1F018 800A7E78 AFA50024 */  sw    $a1, 0x24($sp)
/* B1F01C 800A7E7C 0C031A73 */  jal   Graph_Alloc
/* B1F020 800A7E80 24050040 */   li    $a1, 64
/* B1F024 800A7E84 14400006 */  bnez  $v0, .L800A7EA0
/* B1F028 800A7E88 00402825 */   move  $a1, $v0
/* B1F02C 800A7E8C 3C048014 */  lui   $a0, %hi(D_80140810) # $a0, 0x8014
/* B1F030 800A7E90 0C00084C */  jal   osSyncPrintf
/* B1F034 800A7E94 24840810 */   addiu $a0, %lo(D_80140810) # addiu $a0, $a0, 0x810
/* B1F038 800A7E98 10000005 */  b     .L800A7EB0
/* B1F03C 800A7E9C 00001025 */   move  $v0, $zero
.L800A7EA0:
/* B1F040 800A7EA0 8FA40024 */  lw    $a0, 0x24($sp)
/* B1F044 800A7EA4 0C029F18 */  jal   func_800A7C60
/* B1F048 800A7EA8 AFA5001C */   sw    $a1, 0x1c($sp)
/* B1F04C 800A7EAC 8FA2001C */  lw    $v0, 0x1c($sp)
.L800A7EB0:
/* B1F050 800A7EB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1F054 800A7EB4 27BD0020 */  addiu $sp, $sp, 0x20
/* B1F058 800A7EB8 03E00008 */  jr    $ra
/* B1F05C 800A7EBC 00000000 */   nop   

glabel func_800A7EC0
/* B1F060 800A7EC0 27BDFF98 */  addiu $sp, $sp, -0x68
/* B1F064 800A7EC4 F7B40010 */  sdc1  $f20, 0x10($sp)
/* B1F068 800A7EC8 4486A000 */  mtc1  $a2, $f20
/* B1F06C 800A7ECC F7B60018 */  sdc1  $f22, 0x18($sp)
/* B1F070 800A7ED0 4487B000 */  mtc1  $a3, $f22
/* B1F074 800A7ED4 00803025 */  move  $a2, $a0
/* B1F078 800A7ED8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1F07C 800A7EDC AFA40068 */  sw    $a0, 0x68($sp)
/* B1F080 800A7EE0 AFA5006C */  sw    $a1, 0x6c($sp)
/* B1F084 800A7EE4 87A4006E */  lh    $a0, 0x6e($sp)
/* B1F088 800A7EE8 0C01DE1C */  jal   Math_Sins
/* B1F08C 800A7EEC AFA60068 */   sw    $a2, 0x68($sp)
/* B1F090 800A7EF0 87A4006E */  lh    $a0, 0x6e($sp)
/* B1F094 800A7EF4 0C01DE0D */  jal   Math_Coss
/* B1F098 800A7EF8 E7A00064 */   swc1  $f0, 0x64($sp)
/* B1F09C 800A7EFC 4616A302 */  mul.s $f12, $f20, $f22
/* B1F0A0 800A7F00 C7A40078 */  lwc1  $f4, 0x78($sp)
/* B1F0A4 800A7F04 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1F0A8 800A7F08 44814000 */  mtc1  $at, $f8
/* B1F0AC 800A7F0C 4604B182 */  mul.s $f6, $f22, $f4
/* B1F0B0 800A7F10 8FA60068 */  lw    $a2, 0x68($sp)
/* B1F0B4 800A7F14 C7B20064 */  lwc1  $f18, 0x64($sp)
/* B1F0B8 800A7F18 4604A382 */  mul.s $f14, $f20, $f4
/* B1F0BC 800A7F1C E7AC0050 */  swc1  $f12, 0x50($sp)
/* B1F0C0 800A7F20 4614A082 */  mul.s $f2, $f20, $f20
/* B1F0C4 800A7F24 E7A6004C */  swc1  $f6, 0x4c($sp)
/* B1F0C8 800A7F28 E7AE0048 */  swc1  $f14, 0x48($sp)
/* B1F0CC 800A7F2C 46024281 */  sub.s $f10, $f8, $f2
/* B1F0D0 800A7F30 44814000 */  mtc1  $at, $f8
/* B1F0D4 800A7F34 46005182 */  mul.s $f6, $f10, $f0
/* B1F0D8 800A7F38 46004401 */  sub.s $f16, $f8, $f0
/* B1F0DC 800A7F3C 46023100 */  add.s $f4, $f6, $f2
/* B1F0E0 800A7F40 E4C40000 */  swc1  $f4, ($a2)
/* B1F0E4 800A7F44 C7AA0078 */  lwc1  $f10, 0x78($sp)
/* B1F0E8 800A7F48 46125182 */  mul.s $f6, $f10, $f18
/* B1F0EC 800A7F4C 00000000 */  nop   
/* B1F0F0 800A7F50 460C8102 */  mul.s $f4, $f16, $f12
/* B1F0F4 800A7F54 44806000 */  mtc1  $zero, $f12
/* B1F0F8 800A7F58 4612B282 */  mul.s $f10, $f22, $f18
/* B1F0FC 800A7F5C E7A60038 */  swc1  $f6, 0x38($sp)
/* B1F100 800A7F60 46062200 */  add.s $f8, $f4, $f6
/* B1F104 800A7F64 460E8102 */  mul.s $f4, $f16, $f14
/* B1F108 800A7F68 E4C80004 */  swc1  $f8, 4($a2)
/* B1F10C 800A7F6C E7AA0034 */  swc1  $f10, 0x34($sp)
/* B1F110 800A7F70 C7A60034 */  lwc1  $f6, 0x34($sp)
/* B1F114 800A7F74 E4CC000C */  swc1  $f12, 0xc($a2)
/* B1F118 800A7F78 46062201 */  sub.s $f8, $f4, $f6
/* B1F11C 800A7F7C E4C80008 */  swc1  $f8, 8($a2)
/* B1F120 800A7F80 C7AA0050 */  lwc1  $f10, 0x50($sp)
/* B1F124 800A7F84 C7A60038 */  lwc1  $f6, 0x38($sp)
/* B1F128 800A7F88 460A8102 */  mul.s $f4, $f16, $f10
/* B1F12C 800A7F8C 44815000 */  mtc1  $at, $f10
/* B1F130 800A7F90 4616B082 */  mul.s $f2, $f22, $f22
/* B1F134 800A7F94 46062201 */  sub.s $f8, $f4, $f6
/* B1F138 800A7F98 46025101 */  sub.s $f4, $f10, $f2
/* B1F13C 800A7F9C E4C80010 */  swc1  $f8, 0x10($a2)
/* B1F140 800A7FA0 46002182 */  mul.s $f6, $f4, $f0
/* B1F144 800A7FA4 46023200 */  add.s $f8, $f6, $f2
/* B1F148 800A7FA8 E4C80014 */  swc1  $f8, 0x14($a2)
/* B1F14C 800A7FAC C7AA004C */  lwc1  $f10, 0x4c($sp)
/* B1F150 800A7FB0 460A8102 */  mul.s $f4, $f16, $f10
/* B1F154 800A7FB4 E7A4002C */  swc1  $f4, 0x2c($sp)
/* B1F158 800A7FB8 4612A382 */  mul.s $f14, $f20, $f18
/* B1F15C 800A7FBC C7A6002C */  lwc1  $f6, 0x2c($sp)
/* B1F160 800A7FC0 E4CC001C */  swc1  $f12, 0x1c($a2)
/* B1F164 800A7FC4 460E3200 */  add.s $f8, $f6, $f14
/* B1F168 800A7FC8 E4C80018 */  swc1  $f8, 0x18($a2)
/* B1F16C 800A7FCC C7AA0048 */  lwc1  $f10, 0x48($sp)
/* B1F170 800A7FD0 C7A60034 */  lwc1  $f6, 0x34($sp)
/* B1F174 800A7FD4 460A8102 */  mul.s $f4, $f16, $f10
/* B1F178 800A7FD8 44818000 */  mtc1  $at, $f16
/* B1F17C 800A7FDC 46062200 */  add.s $f8, $f4, $f6
/* B1F180 800A7FE0 E4C80020 */  swc1  $f8, 0x20($a2)
/* B1F184 800A7FE4 C7B20078 */  lwc1  $f18, 0x78($sp)
/* B1F188 800A7FE8 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* B1F18C 800A7FEC E4CC002C */  swc1  $f12, 0x2c($a2)
/* B1F190 800A7FF0 46129082 */  mul.s $f2, $f18, $f18
/* B1F194 800A7FF4 460E5101 */  sub.s $f4, $f10, $f14
/* B1F198 800A7FF8 E4CC0030 */  swc1  $f12, 0x30($a2)
/* B1F19C 800A7FFC E4CC0034 */  swc1  $f12, 0x34($a2)
/* B1F1A0 800A8000 E4CC0038 */  swc1  $f12, 0x38($a2)
/* B1F1A4 800A8004 E4C40024 */  swc1  $f4, 0x24($a2)
/* B1F1A8 800A8008 E4D0003C */  swc1  $f16, 0x3c($a2)
/* B1F1AC 800A800C 46028181 */  sub.s $f6, $f16, $f2
/* B1F1B0 800A8010 46003202 */  mul.s $f8, $f6, $f0
/* B1F1B4 800A8014 46024280 */  add.s $f10, $f8, $f2
/* B1F1B8 800A8018 E4CA0028 */  swc1  $f10, 0x28($a2)
/* B1F1BC 800A801C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1F1C0 800A8020 D7B60018 */  ldc1  $f22, 0x18($sp)
/* B1F1C4 800A8024 D7B40010 */  ldc1  $f20, 0x10($sp)
/* B1F1C8 800A8028 03E00008 */  jr    $ra
/* B1F1CC 800A802C 27BD0068 */   addiu $sp, $sp, 0x68

glabel func_800A8030
/* B1F1D0 800A8030 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B1F1D4 800A8034 F7B40008 */  sdc1  $f20, 8($sp)
/* B1F1D8 800A8038 C4A00000 */  lwc1  $f0, ($a1)
/* B1F1DC 800A803C C4A20004 */  lwc1  $f2, 4($a1)
/* B1F1E0 800A8040 C4AC0008 */  lwc1  $f12, 8($a1)
/* B1F1E4 800A8044 46000102 */  mul.s $f4, $f0, $f0
/* B1F1E8 800A8048 C4B4000C */  lwc1  $f20, 0xc($a1)
/* B1F1EC 800A804C 3C014000 */  li    $at, 0x40000000 # 0.000000
/* B1F1F0 800A8050 46021182 */  mul.s $f6, $f2, $f2
/* B1F1F4 800A8054 46062200 */  add.s $f8, $f4, $f6
/* B1F1F8 800A8058 460C6282 */  mul.s $f10, $f12, $f12
/* B1F1FC 800A805C 460A4100 */  add.s $f4, $f8, $f10
/* B1F200 800A8060 4614A182 */  mul.s $f6, $f20, $f20
/* B1F204 800A8064 44815000 */  mtc1  $at, $f10
/* B1F208 800A8068 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1F20C 800A806C 46062200 */  add.s $f8, $f4, $f6
/* B1F210 800A8070 46085483 */  div.s $f18, $f10, $f8
/* B1F214 800A8074 46120102 */  mul.s $f4, $f0, $f18
/* B1F218 800A8078 E7A40040 */  swc1  $f4, 0x40($sp)
/* B1F21C 800A807C 46121402 */  mul.s $f16, $f2, $f18
/* B1F220 800A8080 C7A60040 */  lwc1  $f6, 0x40($sp)
/* B1F224 800A8084 46126382 */  mul.s $f14, $f12, $f18
/* B1F228 800A8088 00000000 */  nop   
/* B1F22C 800A808C 4606A282 */  mul.s $f10, $f20, $f6
/* B1F230 800A8090 00000000 */  nop   
/* B1F234 800A8094 4610A202 */  mul.s $f8, $f20, $f16
/* B1F238 800A8098 00000000 */  nop   
/* B1F23C 800A809C 460EA102 */  mul.s $f4, $f20, $f14
/* B1F240 800A80A0 E7AA0034 */  swc1  $f10, 0x34($sp)
/* B1F244 800A80A4 46060282 */  mul.s $f10, $f0, $f6
/* B1F248 800A80A8 E7A80030 */  swc1  $f8, 0x30($sp)
/* B1F24C 800A80AC 46100202 */  mul.s $f8, $f0, $f16
/* B1F250 800A80B0 E7A4002C */  swc1  $f4, 0x2c($sp)
/* B1F254 800A80B4 460E0482 */  mul.s $f18, $f0, $f14
/* B1F258 800A80B8 E7AA0028 */  swc1  $f10, 0x28($sp)
/* B1F25C 800A80BC 44800000 */  mtc1  $zero, $f0
/* B1F260 800A80C0 46101102 */  mul.s $f4, $f2, $f16
/* B1F264 800A80C4 E7A80024 */  swc1  $f8, 0x24($sp)
/* B1F268 800A80C8 44818000 */  mtc1  $at, $f16
/* B1F26C 800A80CC 460E1182 */  mul.s $f6, $f2, $f14
/* B1F270 800A80D0 00000000 */  nop   
/* B1F274 800A80D4 460E6282 */  mul.s $f10, $f12, $f14
/* B1F278 800A80D8 E7A4001C */  swc1  $f4, 0x1c($sp)
/* B1F27C 800A80DC C7A8001C */  lwc1  $f8, 0x1c($sp)
/* B1F280 800A80E0 E7A60018 */  swc1  $f6, 0x18($sp)
/* B1F284 800A80E4 E7AA0014 */  swc1  $f10, 0x14($sp)
/* B1F288 800A80E8 C7A40014 */  lwc1  $f4, 0x14($sp)
/* B1F28C 800A80EC 44815000 */  mtc1  $at, $f10
/* B1F290 800A80F0 46044180 */  add.s $f6, $f8, $f4
/* B1F294 800A80F4 46065201 */  sub.s $f8, $f10, $f6
/* B1F298 800A80F8 E4880000 */  swc1  $f8, ($a0)
/* B1F29C 800A80FC C7AA002C */  lwc1  $f10, 0x2c($sp)
/* B1F2A0 800A8100 C7A40024 */  lwc1  $f4, 0x24($sp)
/* B1F2A4 800A8104 460A2180 */  add.s $f6, $f4, $f10
/* B1F2A8 800A8108 E4860004 */  swc1  $f6, 4($a0)
/* B1F2AC 800A810C C7A80030 */  lwc1  $f8, 0x30($sp)
/* B1F2B0 800A8110 46089101 */  sub.s $f4, $f18, $f8
/* B1F2B4 800A8114 E4840008 */  swc1  $f4, 8($a0)
/* B1F2B8 800A8118 C7AE0028 */  lwc1  $f14, 0x28($sp)
/* B1F2BC 800A811C C7AC0034 */  lwc1  $f12, 0x34($sp)
/* B1F2C0 800A8120 C7A20018 */  lwc1  $f2, 0x18($sp)
/* B1F2C4 800A8124 E480000C */  swc1  $f0, 0xc($a0)
/* B1F2C8 800A8128 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* B1F2CC 800A812C C7AA0024 */  lwc1  $f10, 0x24($sp)
/* B1F2D0 800A8130 46065201 */  sub.s $f8, $f10, $f6
/* B1F2D4 800A8134 E4880010 */  swc1  $f8, 0x10($a0)
/* B1F2D8 800A8138 C7A40014 */  lwc1  $f4, 0x14($sp)
/* B1F2DC 800A813C 460C1200 */  add.s $f8, $f2, $f12
/* B1F2E0 800A8140 E480001C */  swc1  $f0, 0x1c($a0)
/* B1F2E4 800A8144 46047280 */  add.s $f10, $f14, $f4
/* B1F2E8 800A8148 E4880018 */  swc1  $f8, 0x18($a0)
/* B1F2EC 800A814C 460A8181 */  sub.s $f6, $f16, $f10
/* B1F2F0 800A8150 E4860014 */  swc1  $f6, 0x14($a0)
/* B1F2F4 800A8154 C7A40030 */  lwc1  $f4, 0x30($sp)
/* B1F2F8 800A8158 460C1181 */  sub.s $f6, $f2, $f12
/* B1F2FC 800A815C 46041280 */  add.s $f10, $f2, $f4
/* B1F300 800A8160 E4860024 */  swc1  $f6, 0x24($a0)
/* B1F304 800A8164 E48A0020 */  swc1  $f10, 0x20($a0)
/* B1F308 800A8168 C7A8001C */  lwc1  $f8, 0x1c($sp)
/* B1F30C 800A816C E480002C */  swc1  $f0, 0x2c($a0)
/* B1F310 800A8170 E4800030 */  swc1  $f0, 0x30($a0)
/* B1F314 800A8174 46087100 */  add.s $f4, $f14, $f8
/* B1F318 800A8178 E4800034 */  swc1  $f0, 0x34($a0)
/* B1F31C 800A817C E4800038 */  swc1  $f0, 0x38($a0)
/* B1F320 800A8180 E490003C */  swc1  $f16, 0x3c($a0)
/* B1F324 800A8184 46048281 */  sub.s $f10, $f16, $f4
/* B1F328 800A8188 E48A0028 */  swc1  $f10, 0x28($a0)
/* B1F32C 800A818C D7B40008 */  ldc1  $f20, 8($sp)
/* B1F330 800A8190 03E00008 */  jr    $ra
/* B1F334 800A8194 27BD0048 */   addiu $sp, $sp, 0x48
