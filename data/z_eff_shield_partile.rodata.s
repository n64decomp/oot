.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80135450
    .asciz "\x1b[31m"
    .balign 4

glabel D_80135458
    .asciz "EffectShieldParticle_ct():\xA5\xD1\xA1\xBC\xA5\xC6\xA5\xA3\xA5\xAF\xA5\xEB\xBF\xF4\xA4\xAC\xA5\xAA\xA1\xBC\xA5\xD0\xA4\xB7\xA4\xC6\xA4\xDE\xA4\xB9\xA1\xA3\n"
    # EUC-JP: パーティクル数がオーバしてます。 | The number of particles is over
    .balign 4

glabel D_80135494
    .asciz "\x1b[m"
    .balign 4

glabel D_80135498
    .asciz "../z_eff_shield_particle.c"
    .balign 4   

glabel D_801354B4
    .asciz "../z_eff_shield_particle.c"
    .balign 4

glabel D_801354D0
    .float 65534

glabel D_801354D4
    .float 0.02
