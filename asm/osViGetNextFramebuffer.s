.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osViGetNextFramebuffer
/* 005340 80004740 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 005344 80004744 AFBF0014 */  sw    $ra, 0x14($sp)
/* 005348 80004748 0C001CA0 */  jal   __osDisableInt
/* 00534C 8000474C 00000000 */   nop   
/* 005350 80004750 3C0E8001 */  lui   $t6, %hi(D_8000AF04) # $t6, 0x8001
/* 005354 80004754 8DCEAF04 */  lw    $t6, %lo(D_8000AF04)($t6)
/* 005358 80004758 00402025 */  move  $a0, $v0
/* 00535C 8000475C 8DCF0004 */  lw    $t7, 4($t6)
/* 005360 80004760 0C001CBC */  jal   func_800072F0
/* 005364 80004764 AFAF0018 */   sw    $t7, 0x18($sp)
/* 005368 80004768 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00536C 8000476C 8FA20018 */  lw    $v0, 0x18($sp)
/* 005370 80004770 27BD0020 */  addiu $sp, $sp, 0x20
/* 005374 80004774 03E00008 */  jr    $ra
/* 005378 80004778 00000000 */   nop   
