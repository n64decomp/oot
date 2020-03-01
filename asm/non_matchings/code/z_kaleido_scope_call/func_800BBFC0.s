glabel func_800BBFC0
/* B33160 800BBFC0 3C028013 */  lui   $v0, %hi(D_8012D1DC) # $v0, 0x8013
/* B33164 800BBFC4 8C42D1DC */  lw    $v0, %lo(D_8012D1DC)($v0)
/* B33168 800BBFC8 3C0E8013 */  lui   $t6, %hi(D_8012D1BC) # $t6, 0x8013
/* B3316C 800BBFCC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B33170 800BBFD0 25CED1BC */  addiu $t6, %lo(D_8012D1BC) # addiu $t6, $t6, -0x2e44
/* B33174 800BBFD4 11C2001A */  beq   $t6, $v0, .L800BC040
/* B33178 800BBFD8 AFBF0014 */   sw    $ra, 0x14($sp)
/* B3317C 800BBFDC 1040000C */  beqz  $v0, .L800BC010
/* B33180 800BBFE0 3C048014 */   lui   $a0, %hi(D_80143F50) # $a0, 0x8014
/* B33184 800BBFE4 0C00084C */  jal   osSyncPrintf
/* B33188 800BBFE8 24843F50 */   addiu $a0, %lo(D_80143F50) # addiu $a0, $a0, 0x3f50
/* B3318C 800BBFEC 3C048014 */  lui   $a0, %hi(D_80143F58) # $a0, 0x8014
/* B33190 800BBFF0 0C00084C */  jal   osSyncPrintf
/* B33194 800BBFF4 24843F58 */   addiu $a0, %lo(D_80143F58) # addiu $a0, $a0, 0x3f58
/* B33198 800BBFF8 3C048014 */  lui   $a0, %hi(D_80143F70) # $a0, 0x8014
/* B3319C 800BBFFC 0C00084C */  jal   osSyncPrintf
/* B331A0 800BC000 24843F70 */   addiu $a0, %lo(D_80143F70) # addiu $a0, $a0, 0x3f70
/* B331A4 800BC004 3C048013 */  lui   $a0, %hi(D_8012D1DC) # $a0, 0x8013
/* B331A8 800BC008 0C02EF58 */  jal   func_800BBD60
/* B331AC 800BC00C 8C84D1DC */   lw    $a0, %lo(D_8012D1DC)($a0)
.L800BC010:
/* B331B0 800BC010 3C048014 */  lui   $a0, %hi(D_80143F74) # $a0, 0x8014
/* B331B4 800BC014 0C00084C */  jal   osSyncPrintf
/* B331B8 800BC018 24843F74 */   addiu $a0, %lo(D_80143F74) # addiu $a0, $a0, 0x3f74
/* B331BC 800BC01C 3C048014 */  lui   $a0, %hi(D_80143F7C) # $a0, 0x8014
/* B331C0 800BC020 0C00084C */  jal   osSyncPrintf
/* B331C4 800BC024 24843F7C */   addiu $a0, %lo(D_80143F7C) # addiu $a0, $a0, 0x3f7c
/* B331C8 800BC028 3C048014 */  lui   $a0, %hi(D_80143F94) # $a0, 0x8014
/* B331CC 800BC02C 0C00084C */  jal   osSyncPrintf
/* B331D0 800BC030 24843F94 */   addiu $a0, %lo(D_80143F94) # addiu $a0, $a0, 0x3f94
/* B331D4 800BC034 3C048013 */  lui   $a0, %hi(D_8012D1BC) # $a0, 0x8013
/* B331D8 800BC038 0C02EF24 */  jal   func_800BBC90
/* B331DC 800BC03C 2484D1BC */   addiu $a0, %lo(D_8012D1BC) # addiu $a0, $a0, -0x2e44
.L800BC040:
/* B331E0 800BC040 8FBF0014 */  lw    $ra, 0x14($sp)
/* B331E4 800BC044 27BD0018 */  addiu $sp, $sp, 0x18
/* B331E8 800BC048 03E00008 */  jr    $ra
/* B331EC 800BC04C 00000000 */   nop   

