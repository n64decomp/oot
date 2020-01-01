.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800A57C0
/* B1C960 800A57C0 27BDFF70 */  addiu $sp, $sp, -0x90
/* B1C964 800A57C4 AFBF005C */  sw    $ra, 0x5c($sp)
/* B1C968 800A57C8 AFBE0058 */  sw    $fp, 0x58($sp)
/* B1C96C 800A57CC AFB70054 */  sw    $s7, 0x54($sp)
/* B1C970 800A57D0 AFB60050 */  sw    $s6, 0x50($sp)
/* B1C974 800A57D4 AFB5004C */  sw    $s5, 0x4c($sp)
/* B1C978 800A57D8 AFB40048 */  sw    $s4, 0x48($sp)
/* B1C97C 800A57DC AFB30044 */  sw    $s3, 0x44($sp)
/* B1C980 800A57E0 AFB20040 */  sw    $s2, 0x40($sp)
/* B1C984 800A57E4 AFB1003C */  sw    $s1, 0x3c($sp)
/* B1C988 800A57E8 AFB00038 */  sw    $s0, 0x38($sp)
/* B1C98C 800A57EC F7BA0030 */  sdc1  $f26, 0x30($sp)
/* B1C990 800A57F0 F7B80028 */  sdc1  $f24, 0x28($sp)
/* B1C994 800A57F4 F7B60020 */  sdc1  $f22, 0x20($sp)
/* B1C998 800A57F8 F7B40018 */  sdc1  $f20, 0x18($sp)
/* B1C99C 800A57FC 94CE0000 */  lhu   $t6, ($a2)
/* B1C9A0 800A5800 2417000A */  li    $s7, 10
/* B1C9A4 800A5804 00808025 */  move  $s0, $a0
/* B1C9A8 800A5808 01D70019 */  multu $t6, $s7
/* B1C9AC 800A580C 00A0A025 */  move  $s4, $a1
/* B1C9B0 800A5810 00C0A825 */  move  $s5, $a2
/* B1C9B4 800A5814 00E0B025 */  move  $s6, $a3
/* B1C9B8 800A5818 00A08825 */  move  $s1, $a1
/* B1C9BC 800A581C 27BE0064 */  addiu $fp, $sp, 0x64
/* B1C9C0 800A5820 00007812 */  mflo  $t7
/* B1C9C4 800A5824 01E5C021 */  addu  $t8, $t7, $a1
/* B1C9C8 800A5828 00B8082B */  sltu  $at, $a1, $t8
/* B1C9CC 800A582C 50200048 */  beql  $at, $zero, .L800A5950
/* B1C9D0 800A5830 8FBF005C */   lw    $ra, 0x5c($sp)
/* B1C9D4 800A5834 4480A000 */  mtc1  $zero, $f20
/* B1C9D8 800A5838 8FB300A0 */  lw    $s3, 0xa0($sp)
/* B1C9DC 800A583C C6640000 */  lwc1  $f4, ($s3)
.L800A5840:
/* B1C9E0 800A5840 96390000 */  lhu   $t9, ($s1)
/* B1C9E4 800A5844 02002025 */  move  $a0, $s0
/* B1C9E8 800A5848 4600218D */  trunc.w.s $f6, $f4
/* B1C9EC 800A584C 00194100 */  sll   $t0, $t9, 4
/* B1C9F0 800A5850 01169021 */  addu  $s2, $t0, $s6
/* B1C9F4 800A5854 03C02825 */  move  $a1, $fp
/* B1C9F8 800A5858 440A3000 */  mfc1  $t2, $f6
/* B1C9FC 800A585C 27A60070 */  addiu $a2, $sp, 0x70
/* B1CA00 800A5860 A64A0000 */  sh    $t2, ($s2)
/* B1CA04 800A5864 C6680004 */  lwc1  $f8, 4($s3)
/* B1CA08 800A5868 4600428D */  trunc.w.s $f10, $f8
/* B1CA0C 800A586C 440C5000 */  mfc1  $t4, $f10
/* B1CA10 800A5870 00000000 */  nop   
/* B1CA14 800A5874 A64C0002 */  sh    $t4, 2($s2)
/* B1CA18 800A5878 C6700008 */  lwc1  $f16, 8($s3)
/* B1CA1C 800A587C 4600848D */  trunc.w.s $f18, $f16
/* B1CA20 800A5880 440E9000 */  mfc1  $t6, $f18
/* B1CA24 800A5884 00000000 */  nop   
/* B1CA28 800A5888 A64E0004 */  sh    $t6, 4($s2)
/* B1CA2C 800A588C C6160030 */  lwc1  $f22, 0x30($s0)
/* B1CA30 800A5890 C6180034 */  lwc1  $f24, 0x34($s0)
/* B1CA34 800A5894 C61A0038 */  lwc1  $f26, 0x38($s0)
/* B1CA38 800A5898 E6140038 */  swc1  $f20, 0x38($s0)
/* B1CA3C 800A589C E6140034 */  swc1  $f20, 0x34($s0)
/* B1CA40 800A58A0 E6140030 */  swc1  $f20, 0x30($s0)
/* B1CA44 800A58A4 822F0006 */  lb    $t7, 6($s1)
/* B1CA48 800A58A8 448F2000 */  mtc1  $t7, $f4
/* B1CA4C 800A58AC 00000000 */  nop   
/* B1CA50 800A58B0 468021A0 */  cvt.s.w $f6, $f4
/* B1CA54 800A58B4 E7A60064 */  swc1  $f6, 0x64($sp)
/* B1CA58 800A58B8 82380007 */  lb    $t8, 7($s1)
/* B1CA5C 800A58BC 44984000 */  mtc1  $t8, $f8
/* B1CA60 800A58C0 00000000 */  nop   
/* B1CA64 800A58C4 468042A0 */  cvt.s.w $f10, $f8
/* B1CA68 800A58C8 E7AA0068 */  swc1  $f10, 0x68($sp)
/* B1CA6C 800A58CC 82390008 */  lb    $t9, 8($s1)
/* B1CA70 800A58D0 44998000 */  mtc1  $t9, $f16
/* B1CA74 800A58D4 00000000 */  nop   
/* B1CA78 800A58D8 468084A0 */  cvt.s.w $f18, $f16
/* B1CA7C 800A58DC 0C029BBD */  jal   func_800A6EF4
/* B1CA80 800A58E0 E7B2006C */   swc1  $f18, 0x6c($sp)
/* B1CA84 800A58E4 C7A40070 */  lwc1  $f4, 0x70($sp)
/* B1CA88 800A58E8 2631000A */  addiu $s1, $s1, 0xa
/* B1CA8C 800A58EC 4600218D */  trunc.w.s $f6, $f4
/* B1CA90 800A58F0 44093000 */  mfc1  $t1, $f6
/* B1CA94 800A58F4 00000000 */  nop   
/* B1CA98 800A58F8 A249000C */  sb    $t1, 0xc($s2)
/* B1CA9C 800A58FC C7A80074 */  lwc1  $f8, 0x74($sp)
/* B1CAA0 800A5900 4600428D */  trunc.w.s $f10, $f8
/* B1CAA4 800A5904 440B5000 */  mfc1  $t3, $f10
/* B1CAA8 800A5908 00000000 */  nop   
/* B1CAAC 800A590C A24B000D */  sb    $t3, 0xd($s2)
/* B1CAB0 800A5910 C7B00078 */  lwc1  $f16, 0x78($sp)
/* B1CAB4 800A5914 4600848D */  trunc.w.s $f18, $f16
/* B1CAB8 800A5918 440D9000 */  mfc1  $t5, $f18
/* B1CABC 800A591C 00000000 */  nop   
/* B1CAC0 800A5920 A24D000E */  sb    $t5, 0xe($s2)
/* B1CAC4 800A5924 E6160030 */  swc1  $f22, 0x30($s0)
/* B1CAC8 800A5928 E6180034 */  swc1  $f24, 0x34($s0)
/* B1CACC 800A592C E61A0038 */  swc1  $f26, 0x38($s0)
/* B1CAD0 800A5930 96AE0000 */  lhu   $t6, ($s5)
/* B1CAD4 800A5934 01D70019 */  multu $t6, $s7
/* B1CAD8 800A5938 00007812 */  mflo  $t7
/* B1CADC 800A593C 01F4C021 */  addu  $t8, $t7, $s4
/* B1CAE0 800A5940 0238082B */  sltu  $at, $s1, $t8
/* B1CAE4 800A5944 5420FFBE */  bnezl $at, .L800A5840
/* B1CAE8 800A5948 C6640000 */   lwc1  $f4, ($s3)
/* B1CAEC 800A594C 8FBF005C */  lw    $ra, 0x5c($sp)
.L800A5950:
/* B1CAF0 800A5950 D7B40018 */  ldc1  $f20, 0x18($sp)
/* B1CAF4 800A5954 D7B60020 */  ldc1  $f22, 0x20($sp)
/* B1CAF8 800A5958 D7B80028 */  ldc1  $f24, 0x28($sp)
/* B1CAFC 800A595C D7BA0030 */  ldc1  $f26, 0x30($sp)
/* B1CB00 800A5960 8FB00038 */  lw    $s0, 0x38($sp)
/* B1CB04 800A5964 8FB1003C */  lw    $s1, 0x3c($sp)
/* B1CB08 800A5968 8FB20040 */  lw    $s2, 0x40($sp)
/* B1CB0C 800A596C 8FB30044 */  lw    $s3, 0x44($sp)
/* B1CB10 800A5970 8FB40048 */  lw    $s4, 0x48($sp)
/* B1CB14 800A5974 8FB5004C */  lw    $s5, 0x4c($sp)
/* B1CB18 800A5978 8FB60050 */  lw    $s6, 0x50($sp)
/* B1CB1C 800A597C 8FB70054 */  lw    $s7, 0x54($sp)
/* B1CB20 800A5980 8FBE0058 */  lw    $fp, 0x58($sp)
/* B1CB24 800A5984 03E00008 */  jr    $ra
/* B1CB28 800A5988 27BD0090 */   addiu $sp, $sp, 0x90

glabel func_800A598C
/* B1CB2C 800A598C 27BDFEE8 */  addiu $sp, $sp, -0x118
/* B1CB30 800A5990 AFB10054 */  sw    $s1, 0x54($sp)
/* B1CB34 800A5994 00C08825 */  move  $s1, $a2
/* B1CB38 800A5998 AFB00050 */  sw    $s0, 0x50($sp)
/* B1CB3C 800A599C 00A08025 */  move  $s0, $a1
/* B1CB40 800A59A0 AFBF0074 */  sw    $ra, 0x74($sp)
/* B1CB44 800A59A4 AFA40118 */  sw    $a0, 0x118($sp)
/* B1CB48 800A59A8 AFA70124 */  sw    $a3, 0x124($sp)
/* B1CB4C 800A59AC 3C068014 */  lui   $a2, %hi(D_80140680) # $a2, 0x8014
/* B1CB50 800A59B0 AFBE0070 */  sw    $fp, 0x70($sp)
/* B1CB54 800A59B4 AFB7006C */  sw    $s7, 0x6c($sp)
/* B1CB58 800A59B8 AFB60068 */  sw    $s6, 0x68($sp)
/* B1CB5C 800A59BC AFB50064 */  sw    $s5, 0x64($sp)
/* B1CB60 800A59C0 AFB40060 */  sw    $s4, 0x60($sp)
/* B1CB64 800A59C4 AFB3005C */  sw    $s3, 0x5c($sp)
/* B1CB68 800A59C8 AFB20058 */  sw    $s2, 0x58($sp)
/* B1CB6C 800A59CC F7BE0048 */  sdc1  $f30, 0x48($sp)
/* B1CB70 800A59D0 F7BC0040 */  sdc1  $f28, 0x40($sp)
/* B1CB74 800A59D4 F7BA0038 */  sdc1  $f26, 0x38($sp)
/* B1CB78 800A59D8 F7B80030 */  sdc1  $f24, 0x30($sp)
/* B1CB7C 800A59DC F7B60028 */  sdc1  $f22, 0x28($sp)
/* B1CB80 800A59E0 F7B40020 */  sdc1  $f20, 0x20($sp)
/* B1CB84 800A59E4 24C60680 */  addiu $a2, %lo(D_80140680) # addiu $a2, $a2, 0x680
/* B1CB88 800A59E8 240700FE */  li    $a3, 254
/* B1CB8C 800A59EC 8FA50118 */  lw    $a1, 0x118($sp)
/* B1CB90 800A59F0 0C031AB1 */  jal   func_800C6AC4
/* B1CB94 800A59F4 27A400B8 */   addiu $a0, $sp, 0xb8
/* B1CB98 800A59F8 8E0E0000 */  lw    $t6, ($s0)
/* B1CB9C 800A59FC 3C0A8016 */  lui   $t2, %hi(D_80166FA8) # $t2, 0x8016
/* B1CBA0 800A5A00 254A6FA8 */  addiu $t2, %lo(D_80166FA8) # addiu $t2, $t2, 0x6fa8
/* B1CBA4 800A5A04 8DC30000 */  lw    $v1, ($t6)
/* B1CBA8 800A5A08 3C0B00FF */  lui   $t3, (0x00FFFFFF >> 16) # lui $t3, 0xff
/* B1CBAC 800A5A0C 356BFFFF */  ori   $t3, (0x00FFFFFF & 0xFFFF) # ori $t3, $t3, 0xffff
/* B1CBB0 800A5A10 00037900 */  sll   $t7, $v1, 4
/* B1CBB4 800A5A14 000FC702 */  srl   $t8, $t7, 0x1c
/* B1CBB8 800A5A18 0018C880 */  sll   $t9, $t8, 2
/* B1CBBC 800A5A1C 01597021 */  addu  $t6, $t2, $t9
/* B1CBC0 800A5A20 8DCF0000 */  lw    $t7, ($t6)
/* B1CBC4 800A5A24 006BC024 */  and   $t8, $v1, $t3
/* B1CBC8 800A5A28 3C0C8000 */  lui   $t4, 0x8000
/* B1CBCC 800A5A2C 01F8C821 */  addu  $t9, $t7, $t8
/* B1CBD0 800A5A30 032C4021 */  addu  $t0, $t9, $t4
/* B1CBD4 800A5A34 00117080 */  sll   $t6, $s1, 2
/* B1CBD8 800A5A38 010E7821 */  addu  $t7, $t0, $t6
/* B1CBDC 800A5A3C 8DE50000 */  lw    $a1, ($t7)
/* B1CBE0 800A5A40 3C128016 */  lui   $s2, %hi(D_801600C0) # $s2, 0x8016
/* B1CBE4 800A5A44 265200C0 */  addiu $s2, %lo(D_801600C0) # addiu $s2, $s2, 0xc0
/* B1CBE8 800A5A48 0005C900 */  sll   $t9, $a1, 4
/* B1CBEC 800A5A4C 00197702 */  srl   $t6, $t9, 0x1c
/* B1CBF0 800A5A50 000E7880 */  sll   $t7, $t6, 2
/* B1CBF4 800A5A54 014FC821 */  addu  $t9, $t2, $t7
/* B1CBF8 800A5A58 8F2E0000 */  lw    $t6, ($t9)
/* B1CBFC 800A5A5C 00ABC024 */  and   $t8, $a1, $t3
/* B1CC00 800A5A60 27B700DC */  addiu $s7, $sp, 0xdc
/* B1CC04 800A5A64 030E7821 */  addu  $t7, $t8, $t6
/* B1CC08 800A5A68 01ECC821 */  addu  $t9, $t7, $t4
/* B1CC0C 800A5A6C 8F26000C */  lw    $a2, 0xc($t9)
/* B1CC10 800A5A70 27B500D0 */  addiu $s5, $sp, 0xd0
/* B1CC14 800A5A74 27B40088 */  addiu $s4, $sp, 0x88
/* B1CC18 800A5A78 00067100 */  sll   $t6, $a2, 4
/* B1CC1C 800A5A7C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1CC20 800A5A80 000FC880 */  sll   $t9, $t7, 2
/* B1CC24 800A5A84 01597021 */  addu  $t6, $t2, $t9
/* B1CC28 800A5A88 8DCF0000 */  lw    $t7, ($t6)
/* B1CC2C 800A5A8C 00CBC024 */  and   $t8, $a2, $t3
/* B1CC30 800A5A90 030FC821 */  addu  $t9, $t8, $t7
/* B1CC34 800A5A94 032C2021 */  addu  $a0, $t9, $t4
/* B1CC38 800A5A98 8C870004 */  lw    $a3, 4($a0)
/* B1CC3C 800A5A9C 00077100 */  sll   $t6, $a3, 4
/* B1CC40 800A5AA0 000EC702 */  srl   $t8, $t6, 0x1c
/* B1CC44 800A5AA4 00187880 */  sll   $t7, $t8, 2
/* B1CC48 800A5AA8 014FC821 */  addu  $t9, $t2, $t7
/* B1CC4C 800A5AAC 8F2E0000 */  lw    $t6, ($t9)
/* B1CC50 800A5AB0 00EBC024 */  and   $t8, $a3, $t3
/* B1CC54 800A5AB4 8E190048 */  lw    $t9, 0x48($s0)
/* B1CC58 800A5AB8 01D87821 */  addu  $t7, $t6, $t8
/* B1CC5C 800A5ABC 00117080 */  sll   $t6, $s1, 2
/* B1CC60 800A5AC0 01D17023 */  subu  $t6, $t6, $s1
/* B1CC64 800A5AC4 000E7080 */  sll   $t6, $t6, 2
/* B1CC68 800A5AC8 032E6821 */  addu  $t5, $t9, $t6
/* B1CC6C 800A5ACC 91B80000 */  lbu   $t8, ($t5)
/* B1CC70 800A5AD0 01ECB021 */  addu  $s6, $t7, $t4
/* B1CC74 800A5AD4 00187880 */  sll   $t7, $t8, 2
/* B1CC78 800A5AD8 01AFC821 */  addu  $t9, $t5, $t7
/* B1CC7C 800A5ADC 8F2E0004 */  lw    $t6, 4($t9)
/* B1CC80 800A5AE0 AFAE00EC */  sw    $t6, 0xec($sp)
/* B1CC84 800A5AE4 94890002 */  lhu   $t1, 2($a0)
/* B1CC88 800A5AE8 0009C100 */  sll   $t8, $t1, 4
/* B1CC8C 800A5AEC 0316F821 */  addu  $ra, $t8, $s6
/* B1CC90 800A5AF0 02DF082B */  sltu  $at, $s6, $ra
/* B1CC94 800A5AF4 102000A2 */  beqz  $at, .L800A5D80
/* B1CC98 800A5AF8 3C018014 */   lui   $at, %hi(D_801406E0)
/* B1CC9C 800A5AFC 4480F000 */  mtc1  $zero, $f30
/* B1CCA0 800A5B00 C43C06E0 */  lwc1  $f28, %lo(D_801406E0)($at)
/* B1CCA4 800A5B04 AFAD0100 */  sw    $t5, 0x100($sp)
/* B1CCA8 800A5B08 AFBF0080 */  sw    $ra, 0x80($sp)
/* B1CCAC 800A5B0C 8EC20008 */  lw    $v0, 8($s6)
.L800A5B10:
/* B1CCB0 800A5B10 3C068016 */  lui   $a2, %hi(D_80166FA8) # $a2, 0x8016
/* B1CCB4 800A5B14 24C66FA8 */  addiu $a2, %lo(D_80166FA8) # addiu $a2, $a2, 0x6fa8
/* B1CCB8 800A5B18 00027900 */  sll   $t7, $v0, 4
/* B1CCBC 800A5B1C 000FCF02 */  srl   $t9, $t7, 0x1c
/* B1CCC0 800A5B20 00197080 */  sll   $t6, $t9, 2
/* B1CCC4 800A5B24 00CEC021 */  addu  $t8, $a2, $t6
/* B1CCC8 800A5B28 8F0F0000 */  lw    $t7, ($t8)
/* B1CCCC 800A5B2C 3C0700FF */  lui   $a3, (0x00FFFFFF >> 16) # lui $a3, 0xff
/* B1CCD0 800A5B30 8EC3000C */  lw    $v1, 0xc($s6)
/* B1CCD4 800A5B34 34E7FFFF */  ori   $a3, (0x00FFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* B1CCD8 800A5B38 0047C824 */  and   $t9, $v0, $a3
/* B1CCDC 800A5B3C 01F97021 */  addu  $t6, $t7, $t9
/* B1CCE0 800A5B40 0003C100 */  sll   $t8, $v1, 4
/* B1CCE4 800A5B44 3C088000 */  li    $t0, 0x80000000 # 0.000000
/* B1CCE8 800A5B48 00187F02 */  srl   $t7, $t8, 0x1c
/* B1CCEC 800A5B4C 01C8F021 */  addu  $fp, $t6, $t0
/* B1CCF0 800A5B50 000FC880 */  sll   $t9, $t7, 2
/* B1CCF4 800A5B54 00D97021 */  addu  $t6, $a2, $t9
/* B1CCF8 800A5B58 8DD80000 */  lw    $t8, ($t6)
/* B1CCFC 800A5B5C 96C40002 */  lhu   $a0, 2($s6)
/* B1CD00 800A5B60 00677824 */  and   $t7, $v1, $a3
/* B1CD04 800A5B64 24050001 */  li    $a1, 1
/* B1CD08 800A5B68 030FC821 */  addu  $t9, $t8, $t7
/* B1CD0C 800A5B6C 14850018 */  bne   $a0, $a1, .L800A5BD0
/* B1CD10 800A5B70 03289821 */   addu  $s3, $t9, $t0
/* B1CD14 800A5B74 866E0002 */  lh    $t6, 2($s3)
/* B1CD18 800A5B78 27A500AC */  addiu $a1, $sp, 0xac
/* B1CD1C 800A5B7C 02E03025 */  move  $a2, $s7
/* B1CD20 800A5B80 448E2000 */  mtc1  $t6, $f4
/* B1CD24 800A5B84 00000000 */  nop   
/* B1CD28 800A5B88 468021A0 */  cvt.s.w $f6, $f4
/* B1CD2C 800A5B8C E7A600AC */  swc1  $f6, 0xac($sp)
/* B1CD30 800A5B90 86780004 */  lh    $t8, 4($s3)
/* B1CD34 800A5B94 44984000 */  mtc1  $t8, $f8
/* B1CD38 800A5B98 00000000 */  nop   
/* B1CD3C 800A5B9C 468042A0 */  cvt.s.w $f10, $f8
/* B1CD40 800A5BA0 E7AA00B0 */  swc1  $f10, 0xb0($sp)
/* B1CD44 800A5BA4 866F0006 */  lh    $t7, 6($s3)
/* B1CD48 800A5BA8 448F8000 */  mtc1  $t7, $f16
/* B1CD4C 800A5BAC 00000000 */  nop   
/* B1CD50 800A5BB0 468084A0 */  cvt.s.w $f18, $f16
/* B1CD54 800A5BB4 E7B200B4 */  swc1  $f18, 0xb4($sp)
/* B1CD58 800A5BB8 92790000 */  lbu   $t9, ($s3)
/* B1CD5C 800A5BBC 00197180 */  sll   $t6, $t9, 6
/* B1CD60 800A5BC0 0C029BBD */  jal   func_800A6EF4
/* B1CD64 800A5BC4 024E2021 */   addu  $a0, $s2, $t6
/* B1CD68 800A5BC8 1000005B */  b     .L800A5D38
/* B1CD6C 800A5BCC 96CE0004 */   lhu   $t6, 4($s6)
.L800A5BD0:
/* B1CD70 800A5BD0 8FB80124 */  lw    $t8, 0x124($sp)
/* B1CD74 800A5BD4 02608025 */  move  $s0, $s3
/* B1CD78 800A5BD8 5705001E */  bnel  $t8, $a1, .L800A5C54
/* B1CD7C 800A5BDC 0004C080 */   sll   $t8, $a0, 2
/* B1CD80 800A5BE0 96CF0004 */  lhu   $t7, 4($s6)
/* B1CD84 800A5BE4 27A500A0 */  addiu $a1, $sp, 0xa0
/* B1CD88 800A5BE8 02E03025 */  move  $a2, $s7
/* B1CD8C 800A5BEC 000FC880 */  sll   $t9, $t7, 2
/* B1CD90 800A5BF0 032FC821 */  addu  $t9, $t9, $t7
/* B1CD94 800A5BF4 0019C840 */  sll   $t9, $t9, 1
/* B1CD98 800A5BF8 03338021 */  addu  $s0, $t9, $s3
/* B1CD9C 800A5BFC 860E0002 */  lh    $t6, 2($s0)
/* B1CDA0 800A5C00 448E2000 */  mtc1  $t6, $f4
/* B1CDA4 800A5C04 00000000 */  nop   
/* B1CDA8 800A5C08 468021A0 */  cvt.s.w $f6, $f4
/* B1CDAC 800A5C0C E7A600A0 */  swc1  $f6, 0xa0($sp)
/* B1CDB0 800A5C10 86180004 */  lh    $t8, 4($s0)
/* B1CDB4 800A5C14 44984000 */  mtc1  $t8, $f8
/* B1CDB8 800A5C18 00000000 */  nop   
/* B1CDBC 800A5C1C 468042A0 */  cvt.s.w $f10, $f8
/* B1CDC0 800A5C20 E7AA00A4 */  swc1  $f10, 0xa4($sp)
/* B1CDC4 800A5C24 860F0006 */  lh    $t7, 6($s0)
/* B1CDC8 800A5C28 448F8000 */  mtc1  $t7, $f16
/* B1CDCC 800A5C2C 00000000 */  nop   
/* B1CDD0 800A5C30 468084A0 */  cvt.s.w $f18, $f16
/* B1CDD4 800A5C34 E7B200A8 */  swc1  $f18, 0xa8($sp)
/* B1CDD8 800A5C38 92190000 */  lbu   $t9, ($s0)
/* B1CDDC 800A5C3C 00197180 */  sll   $t6, $t9, 6
/* B1CDE0 800A5C40 0C029BBD */  jal   func_800A6EF4
/* B1CDE4 800A5C44 024E2021 */   addu  $a0, $s2, $t6
/* B1CDE8 800A5C48 1000003B */  b     .L800A5D38
/* B1CDEC 800A5C4C 96CE0004 */   lhu   $t6, 4($s6)
/* B1CDF0 800A5C50 0004C080 */  sll   $t8, $a0, 2
.L800A5C54:
/* B1CDF4 800A5C54 0304C021 */  addu  $t8, $t8, $a0
/* B1CDF8 800A5C58 0018C040 */  sll   $t8, $t8, 1
/* B1CDFC 800A5C5C 03138821 */  addu  $s1, $t8, $s3
/* B1CE00 800A5C60 0271082B */  sltu  $at, $s3, $s1
/* B1CE04 800A5C64 4600F586 */  mov.s $f22, $f30
/* B1CE08 800A5C68 4600F606 */  mov.s $f24, $f30
/* B1CE0C 800A5C6C 1020002E */  beqz  $at, .L800A5D28
/* B1CE10 800A5C70 4600F686 */   mov.s $f26, $f30
.L800A5C74:
/* B1CE14 800A5C74 920F0008 */  lbu   $t7, 8($s0)
/* B1CE18 800A5C78 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B1CE1C 800A5C7C 448F2000 */  mtc1  $t7, $f4
/* B1CE20 800A5C80 05E10004 */  bgez  $t7, .L800A5C94
/* B1CE24 800A5C84 468021A0 */   cvt.s.w $f6, $f4
/* B1CE28 800A5C88 44814000 */  mtc1  $at, $f8
/* B1CE2C 800A5C8C 00000000 */  nop   
/* B1CE30 800A5C90 46083180 */  add.s $f6, $f6, $f8
.L800A5C94:
/* B1CE34 800A5C94 86190002 */  lh    $t9, 2($s0)
/* B1CE38 800A5C98 461C3502 */  mul.s $f20, $f6, $f28
/* B1CE3C 800A5C9C 02802825 */  move  $a1, $s4
/* B1CE40 800A5CA0 44995000 */  mtc1  $t9, $f10
/* B1CE44 800A5CA4 02A03025 */  move  $a2, $s5
/* B1CE48 800A5CA8 46805420 */  cvt.s.w $f16, $f10
/* B1CE4C 800A5CAC E7B00088 */  swc1  $f16, 0x88($sp)
/* B1CE50 800A5CB0 860E0004 */  lh    $t6, 4($s0)
/* B1CE54 800A5CB4 448E9000 */  mtc1  $t6, $f18
/* B1CE58 800A5CB8 00000000 */  nop   
/* B1CE5C 800A5CBC 46809120 */  cvt.s.w $f4, $f18
/* B1CE60 800A5CC0 E7A4008C */  swc1  $f4, 0x8c($sp)
/* B1CE64 800A5CC4 86180006 */  lh    $t8, 6($s0)
/* B1CE68 800A5CC8 44984000 */  mtc1  $t8, $f8
/* B1CE6C 800A5CCC 00000000 */  nop   
/* B1CE70 800A5CD0 468041A0 */  cvt.s.w $f6, $f8
/* B1CE74 800A5CD4 E7A60090 */  swc1  $f6, 0x90($sp)
/* B1CE78 800A5CD8 920F0000 */  lbu   $t7, ($s0)
/* B1CE7C 800A5CDC 000FC980 */  sll   $t9, $t7, 6
/* B1CE80 800A5CE0 0C029BBD */  jal   func_800A6EF4
/* B1CE84 800A5CE4 02592021 */   addu  $a0, $s2, $t9
/* B1CE88 800A5CE8 C7A000D0 */  lwc1  $f0, 0xd0($sp)
/* B1CE8C 800A5CEC C7A200D4 */  lwc1  $f2, 0xd4($sp)
/* B1CE90 800A5CF0 C7AC00D8 */  lwc1  $f12, 0xd8($sp)
/* B1CE94 800A5CF4 46140002 */  mul.s $f0, $f0, $f20
/* B1CE98 800A5CF8 2610000A */  addiu $s0, $s0, 0xa
/* B1CE9C 800A5CFC 0211082B */  sltu  $at, $s0, $s1
/* B1CEA0 800A5D00 46141082 */  mul.s $f2, $f2, $f20
/* B1CEA4 800A5D04 00000000 */  nop   
/* B1CEA8 800A5D08 46146302 */  mul.s $f12, $f12, $f20
/* B1CEAC 800A5D0C E7A000D0 */  swc1  $f0, 0xd0($sp)
/* B1CEB0 800A5D10 4600D680 */  add.s $f26, $f26, $f0
/* B1CEB4 800A5D14 E7A200D4 */  swc1  $f2, 0xd4($sp)
/* B1CEB8 800A5D18 4602C600 */  add.s $f24, $f24, $f2
/* B1CEBC 800A5D1C E7AC00D8 */  swc1  $f12, 0xd8($sp)
/* B1CEC0 800A5D20 1420FFD4 */  bnez  $at, .L800A5C74
/* B1CEC4 800A5D24 460CB580 */   add.s $f22, $f22, $f12
.L800A5D28:
/* B1CEC8 800A5D28 E7BA00DC */  swc1  $f26, 0xdc($sp)
/* B1CECC 800A5D2C E7B800E0 */  swc1  $f24, 0xe0($sp)
/* B1CED0 800A5D30 E7B600E4 */  swc1  $f22, 0xe4($sp)
/* B1CED4 800A5D34 96CE0004 */  lhu   $t6, 4($s6)
.L800A5D38:
/* B1CED8 800A5D38 03C02825 */  move  $a1, $fp
/* B1CEDC 800A5D3C 02C03025 */  move  $a2, $s6
/* B1CEE0 800A5D40 000EC080 */  sll   $t8, $t6, 2
/* B1CEE4 800A5D44 030EC021 */  addu  $t8, $t8, $t6
/* B1CEE8 800A5D48 0018C040 */  sll   $t8, $t8, 1
/* B1CEEC 800A5D4C 02787821 */  addu  $t7, $s3, $t8
/* B1CEF0 800A5D50 91F90000 */  lbu   $t9, ($t7)
/* B1CEF4 800A5D54 AFB70010 */  sw    $s7, 0x10($sp)
/* B1CEF8 800A5D58 8FA700EC */  lw    $a3, 0xec($sp)
/* B1CEFC 800A5D5C 00197180 */  sll   $t6, $t9, 6
/* B1CF00 800A5D60 0C0295F0 */  jal   func_800A57C0
/* B1CF04 800A5D64 024E2021 */   addu  $a0, $s2, $t6
/* B1CF08 800A5D68 8FB80080 */  lw    $t8, 0x80($sp)
/* B1CF0C 800A5D6C 26D60010 */  addiu $s6, $s6, 0x10
/* B1CF10 800A5D70 02D8082B */  sltu  $at, $s6, $t8
/* B1CF14 800A5D74 5420FF66 */  bnezl $at, .L800A5B10
/* B1CF18 800A5D78 8EC20008 */   lw    $v0, 8($s6)
/* B1CF1C 800A5D7C 8FAD0100 */  lw    $t5, 0x100($sp)
.L800A5D80:
/* B1CF20 800A5D80 8FA50118 */  lw    $a1, 0x118($sp)
/* B1CF24 800A5D84 3C19DB06 */  lui   $t9, (0xDB060020 >> 16) # lui $t9, 0xdb06
/* B1CF28 800A5D88 37390020 */  ori   $t9, (0xDB060020 & 0xFFFF) # ori $t9, $t9, 0x20
/* B1CF2C 800A5D8C 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B1CF30 800A5D90 3C068014 */  lui   $a2, %hi(D_8014068C) # $a2, 0x8014
/* B1CF34 800A5D94 24C6068C */  addiu $a2, %lo(D_8014068C) # addiu $a2, $a2, 0x68c
/* B1CF38 800A5D98 246F0008 */  addiu $t7, $v1, 8
/* B1CF3C 800A5D9C ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B1CF40 800A5DA0 AC790000 */  sw    $t9, ($v1)
/* B1CF44 800A5DA4 91AE0000 */  lbu   $t6, ($t5)
/* B1CF48 800A5DA8 27A400B8 */  addiu $a0, $sp, 0xb8
/* B1CF4C 800A5DAC 000EC080 */  sll   $t8, $t6, 2
/* B1CF50 800A5DB0 01B87821 */  addu  $t7, $t5, $t8
/* B1CF54 800A5DB4 8DF90004 */  lw    $t9, 4($t7)
/* B1CF58 800A5DB8 24180001 */  li    $t8, 1
/* B1CF5C 800A5DBC AC790004 */  sw    $t9, 4($v1)
/* B1CF60 800A5DC0 91AE0000 */  lbu   $t6, ($t5)
/* B1CF64 800A5DC4 55C00004 */  bnezl $t6, .L800A5DD8
/* B1CF68 800A5DC8 A1A00000 */   sb    $zero, ($t5)
/* B1CF6C 800A5DCC 10000002 */  b     .L800A5DD8
/* B1CF70 800A5DD0 A1B80000 */   sb    $t8, ($t5)
/* B1CF74 800A5DD4 A1A00000 */  sb    $zero, ($t5)
.L800A5DD8:
/* B1CF78 800A5DD8 0C031AD5 */  jal   func_800C6B54
/* B1CF7C 800A5DDC 24070158 */   li    $a3, 344
/* B1CF80 800A5DE0 8FBF0074 */  lw    $ra, 0x74($sp)
/* B1CF84 800A5DE4 D7B40020 */  ldc1  $f20, 0x20($sp)
/* B1CF88 800A5DE8 D7B60028 */  ldc1  $f22, 0x28($sp)
/* B1CF8C 800A5DEC D7B80030 */  ldc1  $f24, 0x30($sp)
/* B1CF90 800A5DF0 D7BA0038 */  ldc1  $f26, 0x38($sp)
/* B1CF94 800A5DF4 D7BC0040 */  ldc1  $f28, 0x40($sp)
/* B1CF98 800A5DF8 D7BE0048 */  ldc1  $f30, 0x48($sp)
/* B1CF9C 800A5DFC 8FB00050 */  lw    $s0, 0x50($sp)
/* B1CFA0 800A5E00 8FB10054 */  lw    $s1, 0x54($sp)
/* B1CFA4 800A5E04 8FB20058 */  lw    $s2, 0x58($sp)
/* B1CFA8 800A5E08 8FB3005C */  lw    $s3, 0x5c($sp)
/* B1CFAC 800A5E0C 8FB40060 */  lw    $s4, 0x60($sp)
/* B1CFB0 800A5E10 8FB50064 */  lw    $s5, 0x64($sp)
/* B1CFB4 800A5E14 8FB60068 */  lw    $s6, 0x68($sp)
/* B1CFB8 800A5E18 8FB7006C */  lw    $s7, 0x6c($sp)
/* B1CFBC 800A5E1C 8FBE0070 */  lw    $fp, 0x70($sp)
/* B1CFC0 800A5E20 03E00008 */  jr    $ra
/* B1CFC4 800A5E24 27BD0118 */   addiu $sp, $sp, 0x118

glabel func_800A5E28
/* B1CFC8 800A5E28 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B1CFCC 800A5E2C AFB00018 */  sw    $s0, 0x18($sp)
/* B1CFD0 800A5E30 AFA60050 */  sw    $a2, 0x50($sp)
/* B1CFD4 800A5E34 00808025 */  move  $s0, $a0
/* B1CFD8 800A5E38 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1CFDC 800A5E3C AFA5004C */  sw    $a1, 0x4c($sp)
/* B1CFE0 800A5E40 AFA70054 */  sw    $a3, 0x54($sp)
/* B1CFE4 800A5E44 3C068014 */  lui   $a2, %hi(D_80140698) # $a2, 0x8014
/* B1CFE8 800A5E48 24C60698 */  addiu $a2, %lo(D_80140698) # addiu $a2, $a2, 0x698
/* B1CFEC 800A5E4C 2407016C */  li    $a3, 364
/* B1CFF0 800A5E50 02002825 */  move  $a1, $s0
/* B1CFF4 800A5E54 0C031AB1 */  jal   func_800C6AC4
/* B1CFF8 800A5E58 27A4002C */   addiu $a0, $sp, 0x2c
/* B1CFFC 800A5E5C 8FAE004C */  lw    $t6, 0x4c($sp)
/* B1D000 800A5E60 3C068016 */  lui   $a2, %hi(D_80166FA8) # $a2, 0x8016
/* B1D004 800A5E64 24C66FA8 */  addiu $a2, %lo(D_80166FA8) # addiu $a2, $a2, 0x6fa8
/* B1D008 800A5E68 8DCF0000 */  lw    $t7, ($t6)
/* B1D00C 800A5E6C 3C0700FF */  lui   $a3, (0x00FFFFFF >> 16) # lui $a3, 0xff
/* B1D010 800A5E70 34E7FFFF */  ori   $a3, (0x00FFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* B1D014 800A5E74 8DE20000 */  lw    $v0, ($t7)
/* B1D018 800A5E78 3C088000 */  lui   $t0, 0x8000
/* B1D01C 800A5E7C 0002C100 */  sll   $t8, $v0, 4
/* B1D020 800A5E80 0018CF02 */  srl   $t9, $t8, 0x1c
/* B1D024 800A5E84 00195080 */  sll   $t2, $t9, 2
/* B1D028 800A5E88 00CA5821 */  addu  $t3, $a2, $t2
/* B1D02C 800A5E8C 8D6C0000 */  lw    $t4, ($t3)
/* B1D030 800A5E90 8FB80050 */  lw    $t8, 0x50($sp)
/* B1D034 800A5E94 00476824 */  and   $t5, $v0, $a3
/* B1D038 800A5E98 018D7821 */  addu  $t7, $t4, $t5
/* B1D03C 800A5E9C 01E82821 */  addu  $a1, $t7, $t0
/* B1D040 800A5EA0 0018C880 */  sll   $t9, $t8, 2
/* B1D044 800A5EA4 00B95021 */  addu  $t2, $a1, $t9
/* B1D048 800A5EA8 8D430000 */  lw    $v1, ($t2)
/* B1D04C 800A5EAC 01C02825 */  move  $a1, $t6
/* B1D050 800A5EB0 00036100 */  sll   $t4, $v1, 4
/* B1D054 800A5EB4 000C6F02 */  srl   $t5, $t4, 0x1c
/* B1D058 800A5EB8 000D7880 */  sll   $t7, $t5, 2
/* B1D05C 800A5EBC 00CFC821 */  addu  $t9, $a2, $t7
/* B1D060 800A5EC0 8F2A0000 */  lw    $t2, ($t9)
/* B1D064 800A5EC4 00675824 */  and   $t3, $v1, $a3
/* B1D068 800A5EC8 016A6021 */  addu  $t4, $t3, $t2
/* B1D06C 800A5ECC 01886821 */  addu  $t5, $t4, $t0
/* B1D070 800A5ED0 8DA4000C */  lw    $a0, 0xc($t5)
/* B1D074 800A5ED4 0004C900 */  sll   $t9, $a0, 4
/* B1D078 800A5ED8 00195F02 */  srl   $t3, $t9, 0x1c
/* B1D07C 800A5EDC 000B5080 */  sll   $t2, $t3, 2
/* B1D080 800A5EE0 00CA6021 */  addu  $t4, $a2, $t2
/* B1D084 800A5EE4 8D8D0000 */  lw    $t5, ($t4)
/* B1D088 800A5EE8 8FAB0058 */  lw    $t3, 0x58($sp)
/* B1D08C 800A5EEC 00877824 */  and   $t7, $a0, $a3
/* B1D090 800A5EF0 01EDC821 */  addu  $t9, $t7, $t5
/* B1D094 800A5EF4 316A0001 */  andi  $t2, $t3, 1
/* B1D098 800A5EF8 15400007 */  bnez  $t2, .L800A5F18
/* B1D09C 800A5EFC 03284821 */   addu  $t1, $t9, $t0
/* B1D0A0 800A5F00 02002025 */  move  $a0, $s0
/* B1D0A4 800A5F04 03003025 */  move  $a2, $t8
/* B1D0A8 800A5F08 8FA70054 */  lw    $a3, 0x54($sp)
/* B1D0AC 800A5F0C 0C029663 */  jal   func_800A598C
/* B1D0B0 800A5F10 AFA90040 */   sw    $t1, 0x40($sp)
/* B1D0B4 800A5F14 8FA90040 */  lw    $t1, 0x40($sp)
.L800A5F18:
/* B1D0B8 800A5F18 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D0BC 800A5F1C 3C0FDE00 */  lui   $t7, 0xde00
/* B1D0C0 800A5F20 3C068014 */  lui   $a2, %hi(D_801406A4) # $a2, 0x8014
/* B1D0C4 800A5F24 246C0008 */  addiu $t4, $v1, 8
/* B1D0C8 800A5F28 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B1D0CC 800A5F2C AC6F0000 */  sw    $t7, ($v1)
/* B1D0D0 800A5F30 8D2D0008 */  lw    $t5, 8($t1)
/* B1D0D4 800A5F34 24C606A4 */  addiu $a2, %lo(D_801406A4) # addiu $a2, $a2, 0x6a4
/* B1D0D8 800A5F38 27A4002C */  addiu $a0, $sp, 0x2c
/* B1D0DC 800A5F3C 02002825 */  move  $a1, $s0
/* B1D0E0 800A5F40 24070179 */  li    $a3, 377
/* B1D0E4 800A5F44 0C031AD5 */  jal   func_800C6B54
/* B1D0E8 800A5F48 AC6D0004 */   sw    $t5, 4($v1)
/* B1D0EC 800A5F4C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1D0F0 800A5F50 8FB00018 */  lw    $s0, 0x18($sp)
/* B1D0F4 800A5F54 27BD0048 */  addiu $sp, $sp, 0x48
/* B1D0F8 800A5F58 03E00008 */  jr    $ra
/* B1D0FC 800A5F5C 00000000 */   nop   

glabel func_800A5F60
/* B1D100 800A5F60 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B1D104 800A5F64 AFB00018 */  sw    $s0, 0x18($sp)
/* B1D108 800A5F68 AFA60060 */  sw    $a2, 0x60($sp)
/* B1D10C 800A5F6C 00808025 */  move  $s0, $a0
/* B1D110 800A5F70 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1D114 800A5F74 AFA5005C */  sw    $a1, 0x5c($sp)
/* B1D118 800A5F78 AFA70064 */  sw    $a3, 0x64($sp)
/* B1D11C 800A5F7C 00E04025 */  move  $t0, $a3
/* B1D120 800A5F80 3C068014 */  lui   $a2, %hi(D_801406B0) # $a2, 0x8014
/* B1D124 800A5F84 24C606B0 */  addiu $a2, %lo(D_801406B0) # addiu $a2, $a2, 0x6b0
/* B1D128 800A5F88 AFA80054 */  sw    $t0, 0x54($sp)
/* B1D12C 800A5F8C 2407018B */  li    $a3, 395
/* B1D130 800A5F90 02002825 */  move  $a1, $s0
/* B1D134 800A5F94 0C031AB1 */  jal   func_800C6AC4
/* B1D138 800A5F98 27A40038 */   addiu $a0, $sp, 0x38
/* B1D13C 800A5F9C 8FAE005C */  lw    $t6, 0x5c($sp)
/* B1D140 800A5FA0 3C048016 */  lui   $a0, %hi(D_80166FA8) # $a0, 0x8016
/* B1D144 800A5FA4 24846FA8 */  addiu $a0, %lo(D_80166FA8) # addiu $a0, $a0, 0x6fa8
/* B1D148 800A5FA8 8DCF0000 */  lw    $t7, ($t6)
/* B1D14C 800A5FAC 3C0500FF */  lui   $a1, (0x00FFFFFF >> 16) # lui $a1, 0xff
/* B1D150 800A5FB0 8FAE0064 */  lw    $t6, 0x64($sp)
/* B1D154 800A5FB4 8DE20000 */  lw    $v0, ($t7)
/* B1D158 800A5FB8 34A5FFFF */  ori   $a1, (0x00FFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* B1D15C 800A5FBC 3C068000 */  lui   $a2, 0x8000
/* B1D160 800A5FC0 0002C100 */  sll   $t8, $v0, 4
/* B1D164 800A5FC4 0018CF02 */  srl   $t9, $t8, 0x1c
/* B1D168 800A5FC8 00194880 */  sll   $t1, $t9, 2
/* B1D16C 800A5FCC 00895021 */  addu  $t2, $a0, $t1
/* B1D170 800A5FD0 8D4B0000 */  lw    $t3, ($t2)
/* B1D174 800A5FD4 00456024 */  and   $t4, $v0, $a1
/* B1D178 800A5FD8 8FA70060 */  lw    $a3, 0x60($sp)
/* B1D17C 800A5FDC 016C6821 */  addu  $t5, $t3, $t4
/* B1D180 800A5FE0 8FA80054 */  lw    $t0, 0x54($sp)
/* B1D184 800A5FE4 15C0000D */  bnez  $t6, .L800A601C
/* B1D188 800A5FE8 01A61821 */   addu  $v1, $t5, $a2
/* B1D18C 800A5FEC 00077880 */  sll   $t7, $a3, 2
/* B1D190 800A5FF0 006FC021 */  addu  $t8, $v1, $t7
/* B1D194 800A5FF4 8F020000 */  lw    $v0, ($t8)
/* B1D198 800A5FF8 00024900 */  sll   $t1, $v0, 4
/* B1D19C 800A5FFC 00095702 */  srl   $t2, $t1, 0x1c
/* B1D1A0 800A6000 000A5880 */  sll   $t3, $t2, 2
/* B1D1A4 800A6004 008B6021 */  addu  $t4, $a0, $t3
/* B1D1A8 800A6008 8D8D0000 */  lw    $t5, ($t4)
/* B1D1AC 800A600C 0045C824 */  and   $t9, $v0, $a1
/* B1D1B0 800A6010 032D7021 */  addu  $t6, $t9, $t5
/* B1D1B4 800A6014 01C67821 */  addu  $t7, $t6, $a2
/* B1D1B8 800A6018 8DE8000C */  lw    $t0, 0xc($t7)
.L800A601C:
/* B1D1BC 800A601C 11000023 */  beqz  $t0, .L800A60AC
/* B1D1C0 800A6020 02002025 */   move  $a0, $s0
/* B1D1C4 800A6024 3C098016 */  lui   $t1, %hi(D_801600C0) # $t1, 0x8016
/* B1D1C8 800A6028 252900C0 */  addiu $t1, %lo(D_801600C0) # addiu $t1, $t1, 0xc0
/* B1D1CC 800A602C 0007C180 */  sll   $t8, $a3, 6
/* B1D1D0 800A6030 03092821 */  addu  $a1, $t8, $t1
/* B1D1D4 800A6034 0C029F9C */  jal   func_800A7E70
/* B1D1D8 800A6038 AFA80054 */   sw    $t0, 0x54($sp)
/* B1D1DC 800A603C 1040001B */  beqz  $v0, .L800A60AC
/* B1D1E0 800A6040 8FA80054 */   lw    $t0, 0x54($sp)
/* B1D1E4 800A6044 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D1E8 800A6048 3C0BDA38 */  lui   $t3, 0xda38
/* B1D1EC 800A604C 3C19DE00 */  lui   $t9, 0xde00
/* B1D1F0 800A6050 246A0008 */  addiu $t2, $v1, 8
/* B1D1F4 800A6054 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B1D1F8 800A6058 AC620004 */  sw    $v0, 4($v1)
/* B1D1FC 800A605C AC6B0000 */  sw    $t3, ($v1)
/* B1D200 800A6060 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D204 800A6064 3C0ED838 */  lui   $t6, (0xD8380002 >> 16) # lui $t6, 0xd838
/* B1D208 800A6068 35CE0002 */  ori   $t6, (0xD8380002 & 0xFFFF) # ori $t6, $t6, 2
/* B1D20C 800A606C 246C0008 */  addiu $t4, $v1, 8
/* B1D210 800A6070 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B1D214 800A6074 AC680004 */  sw    $t0, 4($v1)
/* B1D218 800A6078 AC790000 */  sw    $t9, ($v1)
/* B1D21C 800A607C 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D220 800A6080 240F0040 */  li    $t7, 64
/* B1D224 800A6084 3C09E700 */  lui   $t1, 0xe700
/* B1D228 800A6088 246D0008 */  addiu $t5, $v1, 8
/* B1D22C 800A608C AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B1D230 800A6090 AC6F0004 */  sw    $t7, 4($v1)
/* B1D234 800A6094 AC6E0000 */  sw    $t6, ($v1)
/* B1D238 800A6098 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D23C 800A609C 24780008 */  addiu $t8, $v1, 8
/* B1D240 800A60A0 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B1D244 800A60A4 AC600004 */  sw    $zero, 4($v1)
/* B1D248 800A60A8 AC690000 */  sw    $t1, ($v1)
.L800A60AC:
/* B1D24C 800A60AC 3C068014 */  lui   $a2, %hi(D_801406BC) # $a2, 0x8014
/* B1D250 800A60B0 24C606BC */  addiu $a2, %lo(D_801406BC) # addiu $a2, $a2, 0x6bc
/* B1D254 800A60B4 27A40038 */  addiu $a0, $sp, 0x38
/* B1D258 800A60B8 02002825 */  move  $a1, $s0
/* B1D25C 800A60BC 0C031AD5 */  jal   func_800C6B54
/* B1D260 800A60C0 240701B1 */   li    $a3, 433
/* B1D264 800A60C4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1D268 800A60C8 8FB00018 */  lw    $s0, 0x18($sp)
/* B1D26C 800A60CC 27BD0058 */  addiu $sp, $sp, 0x58
/* B1D270 800A60D0 03E00008 */  jr    $ra
/* B1D274 800A60D4 00000000 */   nop   

glabel func_800A60D8
/* B1D278 800A60D8 27BDFF78 */  addiu $sp, $sp, -0x88
/* B1D27C 800A60DC AFB20028 */  sw    $s2, 0x28($sp)
/* B1D280 800A60E0 AFBF0044 */  sw    $ra, 0x44($sp)
/* B1D284 800A60E4 AFBE0040 */  sw    $fp, 0x40($sp)
/* B1D288 800A60E8 AFB7003C */  sw    $s7, 0x3c($sp)
/* B1D28C 800A60EC AFB60038 */  sw    $s6, 0x38($sp)
/* B1D290 800A60F0 AFB50034 */  sw    $s5, 0x34($sp)
/* B1D294 800A60F4 AFB40030 */  sw    $s4, 0x30($sp)
/* B1D298 800A60F8 AFB3002C */  sw    $s3, 0x2c($sp)
/* B1D29C 800A60FC AFB10024 */  sw    $s1, 0x24($sp)
/* B1D2A0 800A6100 AFB00020 */  sw    $s0, 0x20($sp)
/* B1D2A4 800A6104 AFA40088 */  sw    $a0, 0x88($sp)
/* B1D2A8 800A6108 AFA5008C */  sw    $a1, 0x8c($sp)
/* B1D2AC 800A610C AFA70094 */  sw    $a3, 0x94($sp)
/* B1D2B0 800A6110 8CB50000 */  lw    $s5, ($a1)
/* B1D2B4 800A6114 00C09025 */  move  $s2, $a2
/* B1D2B8 800A6118 3C068014 */  lui   $a2, %hi(D_801406C8) # $a2, 0x8014
/* B1D2BC 800A611C 24C606C8 */  addiu $a2, %lo(D_801406C8) # addiu $a2, $a2, 0x6c8
/* B1D2C0 800A6120 240701D7 */  li    $a3, 471
/* B1D2C4 800A6124 27A40060 */  addiu $a0, $sp, 0x60
/* B1D2C8 800A6128 0C031AB1 */  jal   func_800C6AC4
/* B1D2CC 800A612C 02A02825 */   move  $a1, $s5
/* B1D2D0 800A6130 8FB600A4 */  lw    $s6, 0xa4($sp)
/* B1D2D4 800A6134 3C058016 */  lui   $a1, %hi(D_801600C0) # $a1, 0x8016
/* B1D2D8 800A6138 24A500C0 */  addiu $a1, %lo(D_801600C0) # addiu $a1, $a1, 0xc0
/* B1D2DC 800A613C 32CF0001 */  andi  $t7, $s6, 1
/* B1D2E0 800A6140 15E00004 */  bnez  $t7, .L800A6154
/* B1D2E4 800A6144 02402025 */   move  $a0, $s2
/* B1D2E8 800A6148 8FA60088 */  lw    $a2, 0x88($sp)
/* B1D2EC 800A614C 0C029AB1 */  jal   func_800A6AC4
/* B1D2F0 800A6150 8FA7009C */   lw    $a3, 0x9c($sp)
.L800A6154:
/* B1D2F4 800A6154 8E450000 */  lw    $a1, ($s2)
/* B1D2F8 800A6158 3C098016 */  lui   $t1, %hi(D_80166FA8)
/* B1D2FC 800A615C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1D300 800A6160 8CA20000 */  lw    $v0, ($a1)
/* B1D304 800A6164 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1D308 800A6168 32CB0002 */  andi  $t3, $s6, 2
/* B1D30C 800A616C 0002C100 */  sll   $t8, $v0, 4
/* B1D310 800A6170 0018CF02 */  srl   $t9, $t8, 0x1c
/* B1D314 800A6174 00194080 */  sll   $t0, $t9, 2
/* B1D318 800A6178 01284821 */  addu  $t1, $t1, $t0
/* B1D31C 800A617C 8D296FA8 */  lw    $t1, %lo(D_80166FA8)($t1)
/* B1D320 800A6180 00415024 */  and   $t2, $v0, $at
/* B1D324 800A6184 3C018000 */  lui   $at, 0x8000
/* B1D328 800A6188 012A9821 */  addu  $s3, $t1, $t2
/* B1D32C 800A618C 15600015 */  bnez  $t3, .L800A61E4
/* B1D330 800A6190 02619821 */   addu  $s3, $s3, $at
/* B1D334 800A6194 8EA402C0 */  lw    $a0, 0x2c0($s5)
/* B1D338 800A6198 3C10DA38 */  lui   $s0, 0xda38
/* B1D33C 800A619C 3C0D8013 */  lui   $t5, %hi(D_8012DB20) # $t5, 0x8013
/* B1D340 800A61A0 248C0008 */  addiu $t4, $a0, 8
/* B1D344 800A61A4 AEAC02C0 */  sw    $t4, 0x2c0($s5)
/* B1D348 800A61A8 25ADDB20 */  addiu $t5, %lo(D_8012DB20) # addiu $t5, $t5, -0x24e0
/* B1D34C 800A61AC 36100003 */  ori   $s0, (0xDA380003 & 0xFFFF) # ori $s0, $s0, 3
/* B1D350 800A61B0 AC900000 */  sw    $s0, ($a0)
/* B1D354 800A61B4 AC8D0004 */  sw    $t5, 4($a0)
/* B1D358 800A61B8 02A02025 */  move  $a0, $s5
/* B1D35C 800A61BC 0C029F9C */  jal   func_800A7E70
/* B1D360 800A61C0 26450004 */   addiu $a1, $s2, 4
/* B1D364 800A61C4 10400048 */  beqz  $v0, .L800A62E8
/* B1D368 800A61C8 00000000 */   nop   
/* B1D36C 800A61CC 8EA402C0 */  lw    $a0, 0x2c0($s5)
/* B1D370 800A61D0 248E0008 */  addiu $t6, $a0, 8
/* B1D374 800A61D4 AEAE02C0 */  sw    $t6, 0x2c0($s5)
/* B1D378 800A61D8 AC820004 */  sw    $v0, 4($a0)
/* B1D37C 800A61DC AC900000 */  sw    $s0, ($a0)
/* B1D380 800A61E0 8E450000 */  lw    $a1, ($s2)
.L800A61E4:
/* B1D384 800A61E4 90AF0004 */  lbu   $t7, 4($a1)
/* B1D388 800A61E8 00008025 */  move  $s0, $zero
/* B1D38C 800A61EC 02608825 */  move  $s1, $s3
/* B1D390 800A61F0 19E00036 */  blez  $t7, .L800A62CC
/* B1D394 800A61F4 8FB700A0 */   lw    $s7, 0xa0($sp)
/* B1D398 800A61F8 241E0004 */  li    $fp, 4
/* B1D39C 800A61FC 24140001 */  li    $s4, 1
/* B1D3A0 800A6200 8FB30098 */  lw    $s3, 0x98($sp)
.L800A6204:
/* B1D3A4 800A6204 12600007 */  beqz  $s3, .L800A6224
/* B1D3A8 800A6208 02802025 */   move  $a0, $s4
/* B1D3AC 800A620C 8FA40088 */  lw    $a0, 0x88($sp)
/* B1D3B0 800A6210 8FA5008C */  lw    $a1, 0x8c($sp)
/* B1D3B4 800A6214 02003025 */  move  $a2, $s0
/* B1D3B8 800A6218 0260F809 */  jalr  $s3
/* B1D3BC 800A621C 02403825 */  move  $a3, $s2
/* B1D3C0 800A6220 00402025 */  move  $a0, $v0
.L800A6224:
/* B1D3C4 800A6224 8E220000 */  lw    $v0, ($s1)
/* B1D3C8 800A6228 3C0A8016 */  lui   $t2, %hi(D_80166FA8)
/* B1D3CC 800A622C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1D3D0 800A6230 0002C900 */  sll   $t9, $v0, 4
/* B1D3D4 800A6234 00194702 */  srl   $t0, $t9, 0x1c
/* B1D3D8 800A6238 00084880 */  sll   $t1, $t0, 2
/* B1D3DC 800A623C 01495021 */  addu  $t2, $t2, $t1
/* B1D3E0 800A6240 8D4A6FA8 */  lw    $t2, %lo(D_80166FA8)($t2)
/* B1D3E4 800A6244 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1D3E8 800A6248 0041C024 */  and   $t8, $v0, $at
/* B1D3EC 800A624C 3C038000 */  lui   $v1, 0x8000
/* B1D3F0 800A6250 030A5821 */  addu  $t3, $t8, $t2
/* B1D3F4 800A6254 006B1821 */  addu  $v1, $v1, $t3
/* B1D3F8 800A6258 8C630008 */  lw    $v1, 8($v1)
/* B1D3FC 800A625C 2401000B */  li    $at, 11
/* B1D400 800A6260 147E000A */  bne   $v1, $fp, .L800A628C
/* B1D404 800A6264 00000000 */   nop   
/* B1D408 800A6268 14940008 */  bne   $a0, $s4, .L800A628C
/* B1D40C 800A626C 02402825 */   move  $a1, $s2
/* B1D410 800A6270 02A02025 */  move  $a0, $s5
/* B1D414 800A6274 02003025 */  move  $a2, $s0
/* B1D418 800A6278 02E03825 */  move  $a3, $s7
/* B1D41C 800A627C 0C02978A */  jal   func_800A5E28
/* B1D420 800A6280 AFB60010 */   sw    $s6, 0x10($sp)
/* B1D424 800A6284 1000000B */  b     .L800A62B4
/* B1D428 800A6288 8E4C0000 */   lw    $t4, ($s2)
.L800A628C:
/* B1D42C 800A628C 54610009 */  bnel  $v1, $at, .L800A62B4
/* B1D430 800A6290 8E4C0000 */   lw    $t4, ($s2)
/* B1D434 800A6294 14940006 */  bne   $a0, $s4, .L800A62B0
/* B1D438 800A6298 02402825 */   move  $a1, $s2
/* B1D43C 800A629C 02A02025 */  move  $a0, $s5
/* B1D440 800A62A0 02003025 */  move  $a2, $s0
/* B1D444 800A62A4 00003825 */  move  $a3, $zero
/* B1D448 800A62A8 0C0297D8 */  jal   func_800A5F60
/* B1D44C 800A62AC AFB60010 */   sw    $s6, 0x10($sp)
.L800A62B0:
/* B1D450 800A62B0 8E4C0000 */  lw    $t4, ($s2)
.L800A62B4:
/* B1D454 800A62B4 26100001 */  addiu $s0, $s0, 1
/* B1D458 800A62B8 26310004 */  addiu $s1, $s1, 4
/* B1D45C 800A62BC 918D0004 */  lbu   $t5, 4($t4)
/* B1D460 800A62C0 020D082A */  slt   $at, $s0, $t5
/* B1D464 800A62C4 1420FFCF */  bnez  $at, .L800A6204
/* B1D468 800A62C8 00000000 */   nop   
.L800A62CC:
/* B1D46C 800A62CC 8FA20094 */  lw    $v0, 0x94($sp)
/* B1D470 800A62D0 8FA40088 */  lw    $a0, 0x88($sp)
/* B1D474 800A62D4 8FA5008C */  lw    $a1, 0x8c($sp)
/* B1D478 800A62D8 10400003 */  beqz  $v0, .L800A62E8
/* B1D47C 800A62DC 00000000 */   nop   
/* B1D480 800A62E0 0040F809 */  jalr  $v0
/* B1D484 800A62E4 02403025 */  move  $a2, $s2
.L800A62E8:
/* B1D488 800A62E8 3C068014 */  lui   $a2, %hi(D_801406D4) # $a2, 0x8014
/* B1D48C 800A62EC 24C606D4 */  addiu $a2, %lo(D_801406D4) # addiu $a2, $a2, 0x6d4
/* B1D490 800A62F0 27A40060 */  addiu $a0, $sp, 0x60
/* B1D494 800A62F4 02A02825 */  move  $a1, $s5
/* B1D498 800A62F8 0C031AD5 */  jal   func_800C6B54
/* B1D49C 800A62FC 24070216 */   li    $a3, 534
/* B1D4A0 800A6300 8FBF0044 */  lw    $ra, 0x44($sp)
/* B1D4A4 800A6304 8FB00020 */  lw    $s0, 0x20($sp)
/* B1D4A8 800A6308 8FB10024 */  lw    $s1, 0x24($sp)
/* B1D4AC 800A630C 8FB20028 */  lw    $s2, 0x28($sp)
/* B1D4B0 800A6310 8FB3002C */  lw    $s3, 0x2c($sp)
/* B1D4B4 800A6314 8FB40030 */  lw    $s4, 0x30($sp)
/* B1D4B8 800A6318 8FB50034 */  lw    $s5, 0x34($sp)
/* B1D4BC 800A631C 8FB60038 */  lw    $s6, 0x38($sp)
/* B1D4C0 800A6320 8FB7003C */  lw    $s7, 0x3c($sp)
/* B1D4C4 800A6324 8FBE0040 */  lw    $fp, 0x40($sp)
/* B1D4C8 800A6328 03E00008 */  jr    $ra
/* B1D4CC 800A632C 27BD0088 */   addiu $sp, $sp, 0x88

glabel func_800A6330
/* B1D4D0 800A6330 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1D4D4 800A6334 8FAE0038 */  lw    $t6, 0x38($sp)
/* B1D4D8 800A6338 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1D4DC 800A633C AFA00010 */  sw    $zero, 0x10($sp)
/* B1D4E0 800A6340 AFA00018 */  sw    $zero, 0x18($sp)
/* B1D4E4 800A6344 AFA0001C */  sw    $zero, 0x1c($sp)
/* B1D4E8 800A6348 0C029836 */  jal   func_800A60D8
/* B1D4EC 800A634C AFAE0014 */   sw    $t6, 0x14($sp)
/* B1D4F0 800A6350 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1D4F4 800A6354 27BD0028 */  addiu $sp, $sp, 0x28
/* B1D4F8 800A6358 03E00008 */  jr    $ra
/* B1D4FC 800A635C 00000000 */   nop   

glabel func_800A6360
/* B1D500 800A6360 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1D504 800A6364 8FAE0038 */  lw    $t6, 0x38($sp)
/* B1D508 800A6368 8FAF003C */  lw    $t7, 0x3c($sp)
/* B1D50C 800A636C AFBF0024 */  sw    $ra, 0x24($sp)
/* B1D510 800A6370 AFA00018 */  sw    $zero, 0x18($sp)
/* B1D514 800A6374 AFA0001C */  sw    $zero, 0x1c($sp)
/* B1D518 800A6378 AFAE0010 */  sw    $t6, 0x10($sp)
/* B1D51C 800A637C 0C029836 */  jal   func_800A60D8
/* B1D520 800A6380 AFAF0014 */   sw    $t7, 0x14($sp)
/* B1D524 800A6384 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1D528 800A6388 27BD0028 */  addiu $sp, $sp, 0x28
/* B1D52C 800A638C 03E00008 */  jr    $ra
/* B1D530 800A6390 00000000 */   nop   

glabel func_800A6394
/* B1D534 800A6394 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1D538 800A6398 8FAE0038 */  lw    $t6, 0x38($sp)
/* B1D53C 800A639C 8FAF003C */  lw    $t7, 0x3c($sp)
/* B1D540 800A63A0 8FB80040 */  lw    $t8, 0x40($sp)
/* B1D544 800A63A4 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1D548 800A63A8 AFA0001C */  sw    $zero, 0x1c($sp)
/* B1D54C 800A63AC AFAE0010 */  sw    $t6, 0x10($sp)
/* B1D550 800A63B0 AFAF0014 */  sw    $t7, 0x14($sp)
/* B1D554 800A63B4 0C029836 */  jal   func_800A60D8
/* B1D558 800A63B8 AFB80018 */   sw    $t8, 0x18($sp)
/* B1D55C 800A63BC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1D560 800A63C0 27BD0028 */  addiu $sp, $sp, 0x28
/* B1D564 800A63C4 03E00008 */  jr    $ra
/* B1D568 800A63C8 00000000 */   nop   

glabel func_800A63CC
/* B1D56C 800A63CC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1D570 800A63D0 8FAE0038 */  lw    $t6, 0x38($sp)
/* B1D574 800A63D4 8FAF003C */  lw    $t7, 0x3c($sp)
/* B1D578 800A63D8 8FB80040 */  lw    $t8, 0x40($sp)
/* B1D57C 800A63DC 8FB90044 */  lw    $t9, 0x44($sp)
/* B1D580 800A63E0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1D584 800A63E4 AFAE0010 */  sw    $t6, 0x10($sp)
/* B1D588 800A63E8 AFAF0014 */  sw    $t7, 0x14($sp)
/* B1D58C 800A63EC AFB80018 */  sw    $t8, 0x18($sp)
/* B1D590 800A63F0 0C029836 */  jal   func_800A60D8
/* B1D594 800A63F4 AFB9001C */   sw    $t9, 0x1c($sp)
/* B1D598 800A63F8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1D59C 800A63FC 27BD0028 */  addiu $sp, $sp, 0x28
/* B1D5A0 800A6400 03E00008 */  jr    $ra
/* B1D5A4 800A6404 00000000 */   nop   

glabel func_800A6408
/* B1D5A8 800A6408 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B1D5AC 800A640C 3C188016 */  lui   $t8, %hi(D_801600C0) # $t8, 0x8016
/* B1D5B0 800A6410 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1D5B4 800A6414 AFA40058 */  sw    $a0, 0x58($sp)
/* B1D5B8 800A6418 AFA5005C */  sw    $a1, 0x5c($sp)
/* B1D5BC 800A641C AFA60060 */  sw    $a2, 0x60($sp)
/* B1D5C0 800A6420 271800C0 */  addiu $t8, %lo(D_801600C0) # addiu $t8, $t8, 0xc0
/* B1D5C4 800A6424 00057980 */  sll   $t7, $a1, 6
/* B1D5C8 800A6428 AFA70064 */  sw    $a3, 0x64($sp)
/* B1D5CC 800A642C 01F82821 */  addu  $a1, $t7, $t8
/* B1D5D0 800A6430 27A60018 */  addiu $a2, $sp, 0x18
/* B1D5D4 800A6434 0C029BE8 */  jal   func_800A6FA0
/* B1D5D8 800A6438 24840004 */   addiu $a0, $a0, 4
/* B1D5DC 800A643C 27A40018 */  addiu $a0, $sp, 0x18
/* B1D5E0 800A6440 8FA50060 */  lw    $a1, 0x60($sp)
/* B1D5E4 800A6444 0C029BBD */  jal   func_800A6EF4
/* B1D5E8 800A6448 8FA60064 */   lw    $a2, 0x64($sp)
/* B1D5EC 800A644C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1D5F0 800A6450 27BD0058 */  addiu $sp, $sp, 0x58
/* B1D5F4 800A6454 03E00008 */  jr    $ra
/* B1D5F8 800A6458 00000000 */   nop   
