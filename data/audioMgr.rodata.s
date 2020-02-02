.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80144C80
    .asciz "\xA5\xAA\xA1\xBC\xA5\xC7\xA5\xA3\xA5\xAA\xA5\xDE\xA5\xCD\xA1\xBC\xA5\xB8\xA5\xE3\xA4\xAC OS_SC_PRE_NMI_MSG \xA4\xF2\xBC\xF5\xA4\xB1\xBC\xE8\xA4\xEA\xA4\xDE\xA4\xB7\xA4\xBF\n"
    # EUC-JP: オーディオマネージャが OS_SC_PRE_NMI_MSG を受け取りました | Audio manager received OS_SC_PRE_NMI_MSG
    .balign 4

glabel D_80144CBC
    .asciz "\xA5\xAA\xA1\xBC\xA5\xC7\xA5\xA3\xA5\xAA\xA5\xDE\xA5\xCD\xA1\xBC\xA5\xB8\xA5\xE3\xA5\xB9\xA5\xEC\xA5\xC3\xA5\xC9\xBC\xC2\xB9\xD4\xB3\xAB\xBB\xCF\n"
    # EUC-JP: オーディオマネージャスレッド実行開始 | Start running audio manager thread
    .balign 4
