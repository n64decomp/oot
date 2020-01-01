.rdata

glabel D_801472A4
    .asciz    "%s %08x";
    .balign 4
glabel D_801472AC
    .asciz    "PrintDump";
    .balign 4
glabel D_801472B8
    .asciz    "%06x";
    .balign 4
glabel D_801472C0
    .asciz    "%08x";
    .balign 4

.text
glabel Fault_DrawMemDumpPage
/* B4C828 800D5688 3C0EFFFA */  lui   $t6, (0xFFFA5A5A >> 16) # lui $t6, 0xfffa
/* B4C82C 800D568C 03A07825 */  move  $t7, $sp
/* B4C830 800D5690 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B4C834 800D5694 35CE5A5A */  ori   $t6, (0xFFFA5A5A & 0xFFFF) # ori $t6, $t6, 0x5a5a
.L800D5698:
/* B4C838 800D5698 25EFFFF8 */  addiu $t7, $t7, -8
/* B4C83C 800D569C ADEE0000 */  sw    $t6, ($t7)
/* B4C840 800D56A0 15FDFFFD */  bne   $t7, $sp, .L800D5698
/* B4C844 800D56A4 ADEE0004 */   sw    $t6, 4($t7)
/* B4C848 800D56A8 AFB3002C */  sw    $s3, 0x2c($sp)
/* B4C84C 800D56AC AFB20028 */  sw    $s2, 0x28($sp)
/* B4C850 800D56B0 00809025 */  move  $s2, $a0
/* B4C854 800D56B4 3C138000 */  lui   $s3, 0x8000
/* B4C858 800D56B8 AFBF003C */  sw    $ra, 0x3c($sp)
/* B4C85C 800D56BC AFB60038 */  sw    $s6, 0x38($sp)
/* B4C860 800D56C0 AFB50034 */  sw    $s5, 0x34($sp)
/* B4C864 800D56C4 AFB40030 */  sw    $s4, 0x30($sp)
/* B4C868 800D56C8 AFB10024 */  sw    $s1, 0x24($sp)
/* B4C86C 800D56CC AFB00020 */  sw    $s0, 0x20($sp)
/* B4C870 800D56D0 AFA60048 */  sw    $a2, 0x48($sp)
/* B4C874 800D56D4 00B3082B */  sltu  $at, $a1, $s3
/* B4C878 800D56D8 10200002 */  beqz  $at, .L800D56E4
/* B4C87C 800D56DC 00A08025 */   move  $s0, $a1
/* B4C880 800D56E0 02608025 */  move  $s0, $s3
.L800D56E4:
/* B4C884 800D56E4 3C01807F */  lui   $at, (0x807FFF01 >> 16) # lui $at, 0x807f
/* B4C888 800D56E8 3421FF01 */  ori   $at, (0x807FFF01 & 0xFFFF) # ori $at, $at, 0xff01
/* B4C88C 800D56EC 0201082B */  sltu  $at, $s0, $at
/* B4C890 800D56F0 54200004 */  bnezl $at, .L800D5704
/* B4C894 800D56F4 2401FFFC */   li    $at, -4
/* B4C898 800D56F8 3C10807F */  lui   $s0, (0x807FFF00 >> 16) # $s0, 0x807f
/* B4C89C 800D56FC 3610FF00 */  ori   $s0, (0x807FFF00 & 0xFFFF) # ori $s0, $s0, 0xff00
/* B4C8A0 800D5700 2401FFFC */  li    $at, -4
.L800D5704:
/* B4C8A4 800D5704 02018024 */  and   $s0, $s0, $at
/* B4C8A8 800D5708 0C03523E */  jal   Fault_FillScreenBlack
/* B4C8AC 800D570C 02008825 */   move  $s1, $s0
/* B4C8B0 800D5710 2404FFFE */  li    $a0, -2
/* B4C8B4 800D5714 0C035B0D */  jal   FaultDrawer_SetCharPad
/* B4C8B8 800D5718 00002825 */   move  $a1, $zero
/* B4C8BC 800D571C 12400003 */  beqz  $s2, .L800D572C
/* B4C8C0 800D5720 24040024 */   li    $a0, 36
/* B4C8C4 800D5724 10000003 */  b     .L800D5734
/* B4C8C8 800D5728 02403825 */   move  $a3, $s2
.L800D572C:
/* B4C8CC 800D572C 3C078014 */  lui   $a3, %hi(D_801472AC) # $a3, 0x8014
/* B4C8D0 800D5730 24E772AC */  addiu $a3, %lo(D_801472AC) # addiu $a3, $a3, 0x72ac
.L800D5734:
/* B4C8D4 800D5734 3C068014 */  lui   $a2, %hi(D_801472A4) # $a2, 0x8014
/* B4C8D8 800D5738 24C672A4 */  addiu $a2, %lo(D_801472A4) # addiu $a2, $a2, 0x72a4
/* B4C8DC 800D573C 24050012 */  li    $a1, 18
/* B4C8E0 800D5740 0C035C26 */  jal   FaultDrawer_DrawText
/* B4C8E4 800D5744 AFB00010 */   sw    $s0, 0x10($sp)
/* B4C8E8 800D5748 0213082B */  sltu  $at, $s0, $s3
/* B4C8EC 800D574C 1420001C */  bnez  $at, .L800D57C0
/* B4C8F0 800D5750 3C01C000 */   lui   $at, 0xc000
/* B4C8F4 800D5754 0201082B */  sltu  $at, $s0, $at
/* B4C8F8 800D5758 10200019 */  beqz  $at, .L800D57C0
/* B4C8FC 800D575C 2412001C */   li    $s2, 28
/* B4C900 800D5760 3C158014 */  lui   $s5, %hi(D_801472B8) # $s5, 0x8014
/* B4C904 800D5764 3C138014 */  lui   $s3, %hi(D_801472C0) # $s3, 0x8014
/* B4C908 800D5768 267372C0 */  addiu $s3, %lo(D_801472C0) # addiu $s3, $s3, 0x72c0
/* B4C90C 800D576C 26B572B8 */  addiu $s5, %lo(D_801472B8) # addiu $s5, $s5, 0x72b8
/* B4C910 800D5770 241600E2 */  li    $s6, 226
/* B4C914 800D5774 24140122 */  li    $s4, 290
/* B4C918 800D5778 24040018 */  li    $a0, 24
.L800D577C:
/* B4C91C 800D577C 02402825 */  move  $a1, $s2
/* B4C920 800D5780 02A03025 */  move  $a2, $s5
/* B4C924 800D5784 0C035C26 */  jal   FaultDrawer_DrawText
/* B4C928 800D5788 02203825 */   move  $a3, $s1
/* B4C92C 800D578C 24100052 */  li    $s0, 82
/* B4C930 800D5790 02002025 */  move  $a0, $s0
.L800D5794:
/* B4C934 800D5794 02402825 */  move  $a1, $s2
/* B4C938 800D5798 02603025 */  move  $a2, $s3
/* B4C93C 800D579C 8E270000 */  lw    $a3, ($s1)
/* B4C940 800D57A0 0C035C26 */  jal   FaultDrawer_DrawText
/* B4C944 800D57A4 26310004 */   addiu $s1, $s1, 4
/* B4C948 800D57A8 26100034 */  addiu $s0, %lo(D_807F0034) # addiu $s0, $s0, 0x34
/* B4C94C 800D57AC 5614FFF9 */  bnel  $s0, $s4, .L800D5794
/* B4C950 800D57B0 02002025 */   move  $a0, $s0
/* B4C954 800D57B4 26520009 */  addiu $s2, $s2, 9
/* B4C958 800D57B8 5656FFF0 */  bnel  $s2, $s6, .L800D577C
/* B4C95C 800D57BC 24040018 */   li    $a0, 24
.L800D57C0:
/* B4C960 800D57C0 00002025 */  move  $a0, $zero
/* B4C964 800D57C4 0C035B0D */  jal   FaultDrawer_SetCharPad
/* B4C968 800D57C8 00002825 */   move  $a1, $zero
/* B4C96C 800D57CC 8FBF003C */  lw    $ra, 0x3c($sp)
/* B4C970 800D57D0 8FB00020 */  lw    $s0, 0x20($sp)
/* B4C974 800D57D4 8FB10024 */  lw    $s1, 0x24($sp)
/* B4C978 800D57D8 8FB20028 */  lw    $s2, 0x28($sp)
/* B4C97C 800D57DC 8FB3002C */  lw    $s3, 0x2c($sp)
/* B4C980 800D57E0 8FB40030 */  lw    $s4, 0x30($sp)
/* B4C984 800D57E4 8FB50034 */  lw    $s5, 0x34($sp)
/* B4C988 800D57E8 8FB60038 */  lw    $s6, 0x38($sp)
/* B4C98C 800D57EC 03E00008 */  jr    $ra
/* B4C990 800D57F0 27BD0040 */   addiu $sp, $sp, 0x40

