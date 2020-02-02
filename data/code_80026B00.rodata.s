.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801356C0
    .asciz "EffectAdd():\xB3\xCE\xCA\xDD\xA4\xC7\xA4\xAD\xA4\xDE\xA4\xBB\xA4\xF3\xA1\xA3\xC3\xED\xB0\xD5\xA4\xB7\xA4\xC6\xA4\xAF\xA4\xC0\xA4\xB5\xA4\xA4\xA1\xA3Type%d\n"
    # EUC-JP: 確保できません。注意してください。 | I cannot secure it. be careful.
    .balign 4

glabel D_801356F8
    .asciz "\xA5\xA8\xA5\xD5\xA5\xA7\xA5\xAF\xA5\xC8\xC4\xC9\xB2\xC3\xA4\xBB\xA4\xBA\xA4\xCB\xBD\xAA\xCE\xBB\xA4\xB7\xA4\xDE\xA4\xB9\xA1\xA3\n"
    # EUC-JP: エフェクト追加せずに終了します。 | Exit without adding effects.
    .balign 4

glabel D_8013571C
    .asciz "\xA5\xA8\xA5\xD5\xA5\xA7\xA5\xAF\xA5\xC8\xC1\xED\xA4\xC6\xB2\xF2\xCA\xFC\n"
    # EUC-JP: エフェクト総て解 | Release all effects
    .balign 4

glabel D_80135730
    .asciz "\xA5\xA8\xA5\xD5\xA5\xA7\xA5\xAF\xA5\xC8\xC1\xED\xA4\xC6\xB2\xF2\xCA\xFC\x20\xBD\xAA\xCE\xBB\n"
    # EUC-JP: エフェクト総て解放 終了 | Release all effects?
    .balign 4
