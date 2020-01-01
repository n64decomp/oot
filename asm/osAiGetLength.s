.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osAiGetLength
/* B7CDA0 80105C00 3C0EA450 */  lui   $t6, 0xa450
/* B7CDA4 80105C04 03E00008 */  jr    $ra
/* B7CDA8 80105C08 8DC20004 */   lw    $v0, 4($t6)
