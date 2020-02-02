.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013F310
    .asciz "\xC1\xF5\xC8\xF7\xA5\xA2\xA5\xA4\xA5\xC6\xA5\xE0\xCB\xF5\xBE\xC3 = %d  zzz=%d\n"
    # EUC-JP: 装備アイテム抹消 | Erasomg equipment items
    .balign 4
