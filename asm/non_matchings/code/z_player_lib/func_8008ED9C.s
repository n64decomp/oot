glabel func_8008ED9C
/* B05F3C 8008ED9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B05F40 8008EDA0 AFA5001C */  sw    $a1, 0x1c($sp)
/* B05F44 8008EDA4 8FAE001C */  lw    $t6, 0x1c($sp)
/* B05F48 8008EDA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B05F4C 8008EDAC AFA60020 */  sw    $a2, 0x20($sp)
/* B05F50 8008EDB0 AFA70024 */  sw    $a3, 0x24($sp)
/* B05F54 8008EDB4 93A50023 */  lbu   $a1, 0x23($sp)
/* B05F58 8008EDB8 0C021AE7 */  jal   func_80086B9C
/* B05F5C 8008EDBC 91C60150 */   lbu   $a2, 0x150($t6)
/* B05F60 8008EDC0 8FA30020 */  lw    $v1, 0x20($sp)
/* B05F64 8008EDC4 24010014 */  li    $at, 20
/* B05F68 8008EDC8 8FA2001C */  lw    $v0, 0x1c($sp)
/* B05F6C 8008EDCC 10610003 */  beq   $v1, $at, .L8008EDDC
/* B05F70 8008EDD0 8FA40024 */   lw    $a0, 0x24($sp)
/* B05F74 8008EDD4 A0430152 */  sb    $v1, 0x152($v0)
/* B05F78 8008EDD8 A0440151 */  sb    $a0, 0x151($v0)
.L8008EDDC:
/* B05F7C 8008EDDC A0440154 */  sb    $a0, 0x154($v0)
/* B05F80 8008EDE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B05F84 8008EDE4 27BD0018 */  addiu $sp, $sp, 0x18
/* B05F88 8008EDE8 03E00008 */  jr    $ra
/* B05F8C 8008EDEC 00000000 */   nop   

