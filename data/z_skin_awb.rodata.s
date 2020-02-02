.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801406F0
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_80140700
    .asciz "pskin_awb->avb_tbl != NULL"
    .balign 4

glabel D_8014071C
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_8014072C
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_8014073C
    .asciz "psavb->buf[0] != NULL"
    .balign 4

glabel D_80140754
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_80140764
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_80140774
    .asciz "psavb->buf[1] != NULL"
    .balign 4

glabel D_8014078C
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_8014079C
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_801407AC
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_801407BC
    .asciz "../z_skin_awb.c"
    .balign 4
