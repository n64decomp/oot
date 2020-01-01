.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800092E0
/* 009EE0 800092E0 000470C0 */  sll   $t6, $a0, 3
/* 009EE4 800092E4 3C0F8001 */  lui   $t7, %hi(D_8000AD10)
/* 009EE8 800092E8 01EE7821 */  addu  $t7, $t7, $t6
/* 009EEC 800092EC 8DEFAD10 */  lw    $t7, %lo(D_8000AD10)($t7)
/* 009EF0 800092F0 0004C0C0 */  sll   $t8, $a0, 3
/* 009EF4 800092F4 3C198001 */  lui   $t9, %hi(D_8000AD14)
/* 009EF8 800092F8 0338C821 */  addu  $t9, $t9, $t8
/* 009EFC 800092FC ACAF0000 */  sw    $t7, ($a1)
/* 009F00 80009300 8F39AD14 */  lw    $t9, %lo(D_8000AD14)($t9)
/* 009F04 80009304 03E00008 */  jr    $ra
/* 009F08 80009308 ACD90000 */   sw    $t9, ($a2)
