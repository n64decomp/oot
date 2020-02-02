.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013B9E0
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BA00
    .asciz "this->now_joint != NULL"
    .balign 4

glabel D_8013BA18
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BA38
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BA58
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BA78
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BA98
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BAB8
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BAD8
    .asciz "FcSkeletonInfo_draw_child():\xCC\xA4\xC2\xD0\xB1\xFE\n"
    # EUC-JP: 未対応 | Not compatible
    .balign 4

glabel D_8013BAFC
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BB1C
    .float 182.04445
