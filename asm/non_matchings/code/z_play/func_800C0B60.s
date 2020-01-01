glabel func_800C0B60
/* B37D00 800C0B60 8C8E1D2C */  lw    $t6, 0x1d2c($a0)
/* B37D04 800C0B64 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B37D08 800C0B68 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* B37D0C 800C0B6C AC4E137C */  sw    $t6, 0x137c($v0)
/* B37D10 800C0B70 8C8F1D48 */  lw    $t7, 0x1d48($a0)
/* B37D14 800C0B74 24180001 */  li    $t8, 1
/* B37D18 800C0B78 3C010001 */  lui   $at, 1
/* B37D1C 800C0B7C AC581364 */  sw    $t8, 0x1364($v0)
/* B37D20 800C0B80 00240821 */  addu  $at, $at, $a0
/* B37D24 800C0B84 24190014 */  li    $t9, 20
/* B37D28 800C0B88 AC4F1380 */  sw    $t7, 0x1380($v0)
/* B37D2C 800C0B8C A0391E15 */  sb    $t9, 0x1e15($at)
/* B37D30 800C0B90 84481378 */  lh    $t0, 0x1378($v0)
/* B37D34 800C0B94 3C010001 */  lui   $at, 1
/* B37D38 800C0B98 00240821 */  addu  $at, $at, $a0
/* B37D3C 800C0B9C A4281E1A */  sh    $t0, 0x1e1a($at)
/* B37D40 800C0BA0 3C010001 */  lui   $at, 1
/* B37D44 800C0BA4 00240821 */  addu  $at, $at, $a0
/* B37D48 800C0BA8 24090002 */  li    $t1, 2
/* B37D4C 800C0BAC 03E00008 */  jr    $ra
/* B37D50 800C0BB0 A0291E5E */   sb    $t1, 0x1e5e($at)

