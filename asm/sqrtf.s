.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel sqrtf
/* B7A380 801031E0 03E00008 */  jr    $ra
/* B7A384 801031E4 46006004 */   sqrt.s $f0, $f12
