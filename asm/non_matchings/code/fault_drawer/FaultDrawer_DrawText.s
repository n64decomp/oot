glabel FaultDrawer_DrawText
/* B4E238 800D7098 3C0EFFFA */  lui   $t6, (0xFFFA5A5A >> 16) # lui $t6, 0xfffa
/* B4E23C 800D709C 03A07825 */  move  $t7, $sp
/* B4E240 800D70A0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B4E244 800D70A4 35CE5A5A */  ori   $t6, (0xFFFA5A5A & 0xFFFF) # ori $t6, $t6, 0x5a5a
.L800D70A8:
/* B4E248 800D70A8 25EFFFF8 */  addiu $t7, $t7, -8
/* B4E24C 800D70AC ADEE0000 */  sw    $t6, ($t7)
/* B4E250 800D70B0 15FDFFFD */  bne   $t7, $sp, .L800D70A8
/* B4E254 800D70B4 ADEE0004 */   sw    $t6, 4($t7)
/* B4E258 800D70B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4E25C 800D70BC AFA60028 */  sw    $a2, 0x28($sp)
/* B4E260 800D70C0 AFA7002C */  sw    $a3, 0x2c($sp)
/* B4E264 800D70C4 0C035B19 */  jal   FaultDrawer_SetCursor
/* B4E268 800D70C8 00000000 */   nop   
/* B4E26C 800D70CC 8FA40028 */  lw    $a0, 0x28($sp)
/* B4E270 800D70D0 0C035BFE */  jal   FaultDrawer_VPrintf
/* B4E274 800D70D4 27A5002C */   addiu $a1, $sp, 0x2c
/* B4E278 800D70D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4E27C 800D70DC 27BD0020 */  addiu $sp, $sp, 0x20
/* B4E280 800D70E0 03E00008 */  jr    $ra
/* B4E284 800D70E4 00000000 */   nop   