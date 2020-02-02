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
