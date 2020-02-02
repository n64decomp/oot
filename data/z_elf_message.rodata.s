.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013B830
    .asciz "../z_elf_message.c"
    .balign 4

glabel D_8013B844
    .asciz "\x22\xB4\xEB\xB2\xE8\xB3\xB0\x20\xBE\xF2\xB7\xEF\x22 = %s\n"
    # EUC-JP: 企画外 条件 | Unplanned conditions
    .balign 4

glabel D_8013B858
    .asciz "\xB4\xEB\xB2\xE8\xB3\xB0\x20\xBE\xF2\xB7\xEF"
    # EUC-JP: 企画外 条件 | Unplanned conditions
    .balign 4

glabel D_8013B864
    .asciz "0"
    .balign 4

glabel D_8013B868
    .asciz "../z_elf_message.c"
    .balign 4

glabel D_8013B87C
    .asciz "../z_elf_message.c"
    .balign 4

glabel D_8013B890
    .asciz "\x22\xB4\xEB\xB2\xE8\xB3\xB0\x20\xBE\xF2\xB7\xEF\x22 = %s\n"
    # EUC-JP: 企画外 条件 | Unplanned conditions
    .balign 4

glabel D_8013B8A4
    .asciz "\xB4\xEB\xB2\xE8\xB3\xB0\x20\xBE\xF2\xB7\xEF"
    # EUC-JP: 企画外 条件 | Unplanned conditions
    .balign 4

glabel D_8013B8B0
    .asciz "0"
    .balign 4

glabel D_8013B8B4
    .asciz "../z_elf_message.c"
    .balign 4

glabel jtbl_8013B8C8
    .word L8006BCFC
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BD44
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BD90
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BDD0
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE38
    .word L8006BE10
