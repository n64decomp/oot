.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013C160
    .asciz "\xA3\xCD\xA3\xEF\xA3\xE4\xA3\xE5=%d  eye.x=%f,  eye.z=%f  kscp_pos=%d\n"
    # EUC-JP: Ｍｏｄｅ
    .balign 4
