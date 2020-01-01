glabel FaultDrawer_Printf
/* B4E1E8 800D7048 3C0EFFFA */  lui   $t6, (0xFFFA5A5A >> 16) # lui $t6, 0xfffa
/* B4E1EC 800D704C 03A07825 */  move  $t7, $sp
/* B4E1F0 800D7050 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B4E1F4 800D7054 35CE5A5A */  ori   $t6, (0xFFFA5A5A & 0xFFFF) # ori $t6, $t6, 0x5a5a
.L800D7058:
/* B4E1F8 800D7058 25EFFFF8 */  addiu $t7, $t7, -8
/* B4E1FC 800D705C ADEE0000 */  sw    $t6, ($t7)
/* B4E200 800D7060 15FDFFFD */  bne   $t7, $sp, .L800D7058
/* B4E204 800D7064 ADEE0004 */   sw    $t6, 4($t7)
/* B4E208 800D7068 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4E20C 800D706C AFA40020 */  sw    $a0, 0x20($sp)
/* B4E210 800D7070 AFA50024 */  sw    $a1, 0x24($sp)
/* B4E214 800D7074 AFA60028 */  sw    $a2, 0x28($sp)
/* B4E218 800D7078 AFA7002C */  sw    $a3, 0x2c($sp)
/* B4E21C 800D707C 8FA40020 */  lw    $a0, 0x20($sp)
/* B4E220 800D7080 0C035BFE */  jal   FaultDrawer_VPrintf
/* B4E224 800D7084 27A50024 */   addiu $a1, $sp, 0x24
/* B4E228 800D7088 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4E22C 800D708C 27BD0020 */  addiu $sp, $sp, 0x20
/* B4E230 800D7090 03E00008 */  jr    $ra
/* B4E234 800D7094 00000000 */   nop   