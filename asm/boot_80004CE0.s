.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80004CE0
/* 0058E0 80004CE0 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0058E4 80004CE4 8FB00020 */  lw    $s0, 0x20($sp)
/* 0058E8 80004CE8 8FB10024 */  lw    $s1, 0x24($sp)
/* 0058EC 80004CEC 8FB20028 */  lw    $s2, 0x28($sp)
/* 0058F0 80004CF0 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0058F4 80004CF4 8FB40030 */  lw    $s4, 0x30($sp)
/* 0058F8 80004CF8 8FB50034 */  lw    $s5, 0x34($sp)
/* 0058FC 80004CFC 8FB60038 */  lw    $s6, 0x38($sp)
/* 005900 80004D00 8FB7003C */  lw    $s7, 0x3c($sp)
/* 005904 80004D04 8FBE0040 */  lw    $fp, 0x40($sp)
/* 005908 80004D08 03E00008 */  jr    $ra
/* 00590C 80004D0C 27BD0078 */   addiu $sp, $sp, 0x78
