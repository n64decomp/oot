.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

func_80AF8C70:
/* 000000 80AF8C70 03E00008 */  jr    $ra
/* 000004 80AF8C74 AC85014C */   sw    $a1, 0x14c($a0)

/* 000008 80AF8C78 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00000C 80AF8C7C AFA5001C */  sw    $a1, 0x1c($sp)
/* 000010 80AF8C80 AFBF0014 */  sw    $ra, 0x14($sp)
/* 000014 80AF8C84 3C0580B0 */  lui   $a1, %hi(func_80AF8CAC) # $a1, 0x80b0
/* 000018 80AF8C88 0C2BE31C */  jal   func_80AF8C70
/* 00001C 80AF8C8C 24A58CAC */   addiu $a1, %lo(func_80AF8CAC) # addiu $a1, $a1, -0x7354
/* 000020 80AF8C90 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000024 80AF8C94 27BD0018 */  addiu $sp, $sp, 0x18
/* 000028 80AF8C98 03E00008 */  jr    $ra
/* 00002C 80AF8C9C 00000000 */   nop   

/* 000030 80AF8CA0 AFA40000 */  sw    $a0, ($sp)
/* 000034 80AF8CA4 03E00008 */  jr    $ra
/* 000038 80AF8CA8 AFA50004 */   sw    $a1, 4($sp)

func_80AF8CAC:
.incbin "baserom/ovl_En_Scene_Change", 0x3C, 0xC

func_80AF8CB8:
.incbin "baserom/ovl_En_Scene_Change", 0x48, 0x24

func_80AF8CDC:
.incbin "baserom/ovl_En_Scene_Change", 0x6C, 0xA4

.section .data

D_80AF8D80:
.incbin "baserom/ovl_En_Scene_Change", 0x110, 0x20
D_80AF8DA0:
.incbin "baserom/ovl_En_Scene_Change", 0x130, 0x18
D_80AF8DB8:
.incbin "baserom/ovl_En_Scene_Change", 0x148, 0x68
