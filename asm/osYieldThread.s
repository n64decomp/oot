.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
 
glabel osYieldThread
/* 008740 80007B40 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 008744 80007B44 AFBF001C */  sw    $ra, 0x1c($sp)
/* 008748 80007B48 0C001CA0 */  jal   __osDisableInt
/* 00874C 80007B4C AFB00018 */   sw    $s0, 0x18($sp)
/* 008750 80007B50 3C0F8001 */  lui   $t7, %hi(D_8000AD50) # $t7, 0x8001
/* 008754 80007B54 8DEFAD50 */  lw    $t7, %lo(D_8000AD50)($t7)
/* 008758 80007B58 240E0002 */  li    $t6, 2
/* 00875C 80007B5C 3C048001 */  lui   $a0, %hi(D_8000AD48) # $a0, 0x8001
/* 008760 80007B60 00408025 */  move  $s0, $v0
/* 008764 80007B64 2484AD48 */  addiu $a0, %lo(D_8000AD48) # addiu $a0, $a0, -0x52b8
/* 008768 80007B68 0C001005 */  jal   func_80004014
/* 00876C 80007B6C A5EE0010 */   sh    $t6, 0x10($t7)
/* 008770 80007B70 0C001CBC */  jal   func_800072F0
/* 008774 80007B74 02002025 */   move  $a0, $s0
/* 008778 80007B78 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00877C 80007B7C 8FB00018 */  lw    $s0, 0x18($sp)
/* 008780 80007B80 27BD0028 */  addiu $sp, $sp, 0x28
/* 008784 80007B84 03E00008 */  jr    $ra
/* 008788 80007B88 00000000 */   nop   
