.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80144CF0 
    .asciz "\xA5\xBC\xA5\xEB\xA5\xC0\xB6\xA6\xC4\xCC\xA5\xC7\xA1\xBC\xA5\xBF\xBD\xE9\xB4\xFC\xB2\xBD\n"
    # EUC-JP: # EUC-JP:ゼルダ共通データ初期化  |  'Zelda common data initalization'
    .balign 4
