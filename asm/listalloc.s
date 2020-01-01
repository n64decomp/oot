.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800C6C70
/* B3DE10 800C6C70 AC800000 */  sw    $zero, ($a0)
/* B3DE14 800C6C74 AC800004 */  sw    $zero, 4($a0)
/* B3DE18 800C6C78 03E00008 */  jr    $ra
/* B3DE1C 800C6C7C 00801025 */   move  $v0, $a0

glabel func_800C6C80
/* B3DE20 800C6C80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3DE24 800C6C84 00803825 */  move  $a3, $a0
/* B3DE28 800C6C88 AFA5001C */  sw    $a1, 0x1c($sp)
/* B3DE2C 800C6C8C 24A40008 */  addiu $a0, $a1, 8
/* B3DE30 800C6C90 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3DE34 800C6C94 3C058014 */  lui   $a1, %hi(D_80145650) # $a1, 0x8014
/* B3DE38 800C6C98 24A55650 */  addiu $a1, %lo(D_80145650) # addiu $a1, $a1, 0x5650
/* B3DE3C 800C6C9C AFA70018 */  sw    $a3, 0x18($sp)
/* B3DE40 800C6CA0 0C03F570 */  jal   func_800FD5C0
/* B3DE44 800C6CA4 24060028 */   li    $a2, 40
/* B3DE48 800C6CA8 8FA70018 */  lw    $a3, 0x18($sp)
/* B3DE4C 800C6CAC 14400003 */  bnez  $v0, .L800C6CBC
/* B3DE50 800C6CB0 00402025 */   move  $a0, $v0
/* B3DE54 800C6CB4 1000000D */  b     .L800C6CEC
/* B3DE58 800C6CB8 00001025 */   move  $v0, $zero
.L800C6CBC:
/* B3DE5C 800C6CBC 8CE30004 */  lw    $v1, 4($a3)
/* B3DE60 800C6CC0 50600003 */  beql  $v1, $zero, .L800C6CD0
/* B3DE64 800C6CC4 AC430000 */   sw    $v1, ($v0)
/* B3DE68 800C6CC8 AC620004 */  sw    $v0, 4($v1)
/* B3DE6C 800C6CCC AC430000 */  sw    $v1, ($v0)
.L800C6CD0:
/* B3DE70 800C6CD0 AC400004 */  sw    $zero, 4($v0)
/* B3DE74 800C6CD4 8CEE0000 */  lw    $t6, ($a3)
/* B3DE78 800C6CD8 ACE20004 */  sw    $v0, 4($a3)
/* B3DE7C 800C6CDC 55C00003 */  bnezl $t6, .L800C6CEC
/* B3DE80 800C6CE0 24820008 */   addiu $v0, $a0, 8
/* B3DE84 800C6CE4 ACE20000 */  sw    $v0, ($a3)
/* B3DE88 800C6CE8 24820008 */  addiu $v0, $a0, 8
.L800C6CEC:
/* B3DE8C 800C6CEC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3DE90 800C6CF0 27BD0018 */  addiu $sp, $sp, 0x18
/* B3DE94 800C6CF4 03E00008 */  jr    $ra
/* B3DE98 800C6CF8 00000000 */   nop   

glabel func_800C6CFC
/* B3DE9C 800C6CFC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3DEA0 800C6D00 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3DEA4 800C6D04 8CAEFFF8 */  lw    $t6, -8($a1)
/* B3DEA8 800C6D08 00803025 */  move  $a2, $a0
/* B3DEAC 800C6D0C 24A4FFF8 */  addiu $a0, $a1, -8
/* B3DEB0 800C6D10 51C00005 */  beql  $t6, $zero, .L800C6D28
/* B3DEB4 800C6D14 24A4FFF8 */   addiu $a0, $a1, -8
/* B3DEB8 800C6D18 8C8F0004 */  lw    $t7, 4($a0)
/* B3DEBC 800C6D1C 8C980000 */  lw    $t8, ($a0)
/* B3DEC0 800C6D20 AF0F0004 */  sw    $t7, 4($t8)
/* B3DEC4 800C6D24 24A4FFF8 */  addiu $a0, $a1, -8
.L800C6D28:
/* B3DEC8 800C6D28 8C820004 */  lw    $v0, 4($a0)
/* B3DECC 800C6D2C 3C058014 */  lui   $a1, %hi(D_80145660) # $a1, 0x8014
/* B3DED0 800C6D30 24A55660 */  addiu $a1, %lo(D_80145660) # addiu $a1, $a1, 0x5660
/* B3DED4 800C6D34 50400004 */  beql  $v0, $zero, .L800C6D48
/* B3DED8 800C6D38 8CC80000 */   lw    $t0, ($a2)
/* B3DEDC 800C6D3C 8C990000 */  lw    $t9, ($a0)
/* B3DEE0 800C6D40 AC590000 */  sw    $t9, ($v0)
/* B3DEE4 800C6D44 8CC80000 */  lw    $t0, ($a2)
.L800C6D48:
/* B3DEE8 800C6D48 54880004 */  bnel  $a0, $t0, .L800C6D5C
/* B3DEEC 800C6D4C 8CCA0004 */   lw    $t2, 4($a2)
/* B3DEF0 800C6D50 8C890004 */  lw    $t1, 4($a0)
/* B3DEF4 800C6D54 ACC90000 */  sw    $t1, ($a2)
/* B3DEF8 800C6D58 8CCA0004 */  lw    $t2, 4($a2)
.L800C6D5C:
/* B3DEFC 800C6D5C 148A0003 */  bne   $a0, $t2, .L800C6D6C
/* B3DF00 800C6D60 00000000 */   nop   
/* B3DF04 800C6D64 8C8B0000 */  lw    $t3, ($a0)
/* B3DF08 800C6D68 ACCB0004 */  sw    $t3, 4($a2)
.L800C6D6C:
/* B3DF0C 800C6D6C 0C03F5ED */  jal   func_800FD7B4
/* B3DF10 800C6D70 24060048 */   li    $a2, 72
/* B3DF14 800C6D74 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3DF18 800C6D78 27BD0018 */  addiu $sp, $sp, 0x18
/* B3DF1C 800C6D7C 03E00008 */  jr    $ra
/* B3DF20 800C6D80 00000000 */   nop   

glabel func_800C6D84
/* B3DF24 800C6D84 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B3DF28 800C6D88 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3DF2C 800C6D8C AFB10018 */  sw    $s1, 0x18($sp)
/* B3DF30 800C6D90 AFB00014 */  sw    $s0, 0x14($sp)
/* B3DF34 800C6D94 8C900000 */  lw    $s0, ($a0)
/* B3DF38 800C6D98 00808825 */  move  $s1, $a0
/* B3DF3C 800C6D9C 12000006 */  beqz  $s0, .L800C6DB8
/* B3DF40 800C6DA0 02202025 */   move  $a0, $s1
.L800C6DA4:
/* B3DF44 800C6DA4 0C031B3F */  jal   func_800C6CFC
/* B3DF48 800C6DA8 26050008 */   addiu $a1, $s0, 8
/* B3DF4C 800C6DAC 8E300000 */  lw    $s0, ($s1)
/* B3DF50 800C6DB0 5600FFFC */  bnezl $s0, .L800C6DA4
/* B3DF54 800C6DB4 02202025 */   move  $a0, $s1
.L800C6DB8:
/* B3DF58 800C6DB8 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3DF5C 800C6DBC 8FB00014 */  lw    $s0, 0x14($sp)
/* B3DF60 800C6DC0 8FB10018 */  lw    $s1, 0x18($sp)
/* B3DF64 800C6DC4 03E00008 */  jr    $ra
/* B3DF68 800C6DC8 27BD0020 */   addiu $sp, $sp, 0x20
