.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801430C0
    .asciz "\x1b[41;37m\xA3\xB0\xBD\xFC\xBB\xBB! ZCommonGet fade_speed \xA4\xCB\xA3\xB0\xA4\xAC\xA4\xCF\xA4\xA4\xA4\xC3\xA4\xC6\xA4\xEB\x1B[m"
    # EUC-JP: ０除算! ZCommonGet fade_speed に０がはいってる | Divide by zero! Zero is entered in ZCommonGetfade_speed
    .balign 4
