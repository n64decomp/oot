.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80143E10
    .asciz "kaleido_scope"
    .balign 4
    .asciz "player_actor"
    .balign 4

glabel D_80143E30
    .asciz "KaleidoArea_allocp"
    .balign 4

glabel D_80143E44
    .asciz "../z_kaleido_manager.c"
    .balign 4

glabel D_80143E5C
    .asciz "\x1b[32m"
    .balign 4

glabel D_80143E64
    .asciz "OVL(k):Seg:%08x-%08x Ram:%08x-%08x Off:%08x %s\n"
    .balign 4

glabel D_80143E94
    .asciz "\x1b[m"
    .balign 4

glabel D_80143E98
    .asciz "\x1b[32m"
    .balign 4

glabel D_80143EA0
    .asciz "KaleidoArea \xA4\xCE\xBA\xC7\xC2\xE7\xA5\xB5\xA5\xA4\xA5\xBA\xA4\xCF %d \xA5\xD0\xA5\xA4\xA5\xC8\xA4\xF2\xB3\xCE\xCA\xDD\xA4\xB7\xA4\xDE\xA4\xB9\n"
    .balign 4

glabel D_80143ED4
    .asciz "\x1b[m"
    .balign 4

glabel D_80143ED8
    .asciz "../z_kaleido_manager.c"
    .balign 4

glabel D_80143EF0
    .asciz "KaleidoArea_allocp"
    .balign 4

glabel D_80143F04
    .asciz "../z_kaleido_manager.c"
    .balign 4

glabel D_80143F1C
    .asciz "\x1b[32m"
    .balign 4

glabel D_80143F24
    .asciz "KaleidoArea %08x - %08x\n"
    .balign 4

glabel D_80143F40
    .asciz "\x1b[m"
    .balign 4

glabel D_80143F44
    .asciz "\xB0\xDB\xBE\xEF\n"
    # EUC-JP: 異常 | Abnormal
    .balign 4
