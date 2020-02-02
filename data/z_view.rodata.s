.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80141070
    .asciz "../z_view.c"
    .balign 4

glabel D_8014107C
    .asciz "../z_view.c"
    .balign 4

glabel D_80141088
    .asciz "\nview: initialize ---\n"
    .balign 4

glabel D_801410A0
    .asciz "ulx >= 0"
    .balign 4

glabel D_801410AC
    .asciz "../z_view.c"
    .balign 4

glabel D_801410B8
    .asciz "uly >= 0"
    .balign 4

glabel D_801410C4
    .asciz "../z_view.c"
    .balign 4

glabel D_801410D0
    .asciz "lrx <= SCREEN_WD"
    .balign 4

glabel D_801410E4
    .asciz "../z_view.c"
    .balign 4

glabel D_801410F0
    .asciz "lry <= SCREEN_HT"
    .balign 4

glabel D_80141104
    .asciz "../z_view.c"
    .balign 4

glabel D_80141110
    .asciz "../z_view.c"
    .balign 4

glabel D_8014111C
    .asciz "../z_view.c"
    .balign 4

glabel D_80141128
    .asciz "../z_view.c"
    .balign 4

glabel D_80141134
    .asciz "../z_view.c"
    .balign 4

glabel D_80141140
    .asciz "vp"
    .balign 4

glabel D_80141144
    .asciz "../z_view.c"
    .balign 4

glabel D_80141150
    .asciz "projection"
    .balign 4

glabel D_8014115C
    .asciz "../z_view.c"
    .balign 4

glabel D_80141168
    .asciz "fovy %f near %f far %f scale %f aspect %f normal %08x\n"
    .balign 4

glabel D_801411A0
    .asciz "projection\n"
    .balign 4

glabel D_801411AC
    .asciz "	%f	%f	%f	%f\n"
    .balign 4

glabel D_801411BC
    .asciz "\n"
    .balign 4

glabel D_801411C0
    .asciz "viewing"
    .balign 4

glabel D_801411C8
    .asciz "../z_view.c"
    .balign 4

glabel D_801411D4
    .asciz "viewing\n"
    .balign 4

glabel D_801411E0
    .asciz "	%f	%f	%f	%f\n"
    .balign 4

glabel D_801411F0
    .asciz "\n"
    .balign 4

glabel D_801411F4
    .asciz "../z_view.c"
    .balign 4

glabel D_80141200
    .asciz "../z_view.c"
    .balign 4

glabel D_8014120C
    .asciz "vp"
    .balign 4

glabel D_80141210
    .asciz "../z_view.c"
    .balign 4

glabel D_8014121C
    .asciz "projection"
    .balign 4

glabel D_80141228
    .asciz "../z_view.c"
    .balign 4

glabel D_80141234
    .asciz "../z_view.c"
    .balign 4

glabel D_80141240
    .asciz "../z_view.c"
    .balign 4

glabel D_8014124C
    .asciz "vp"
    .balign 4

glabel D_80141250
    .asciz "../z_view.c"
    .balign 4

glabel D_8014125C
    .asciz "projection"
    .balign 4

glabel D_80141268
    .asciz "../z_view.c"
    .balign 4

glabel D_80141274
    .asciz "../z_view.c"
    .balign 4

glabel D_80141280
    .asciz "../z_view.c"
    .balign 4

glabel D_8014128C
    .asciz "vp"
    .balign 4

glabel D_80141290
    .asciz "../z_view.c"
    .balign 4

glabel D_8014129C
    .asciz "projection"
    .balign 4

glabel D_801412A8
    .asciz "../z_view.c"
    .balign 4

glabel D_801412B4
    .asciz "viewing"
    .balign 4

glabel D_801412BC
    .asciz "../z_view.c"
    .balign 4

glabel D_801412C8
    .asciz "../z_view.c"
    .balign 4

glabel D_801412D4
    .asciz "../z_view.c"
    .balign 4

glabel D_801412E0
    .asciz "../z_view.c"
    .balign 4

glabel D_801412EC
    .asciz "vp"
    .balign 4

glabel D_801412F0
    .asciz "../z_view.c"
    .balign 4

glabel D_801412FC
    .asciz "projection"
    .balign 4

glabel D_80141308
    .asciz "../z_view.c"
    .balign 4

glabel D_80141314
    .asciz "projection"
    .balign 4

glabel D_80141320
    .asciz "../z_view.c"
    .balign 4

glabel D_8014132C
    .asciz "viewing"
    .balign 4

glabel D_80141334
    .asciz "../z_view.c"
    .balign 4

glabel D_80141340
    .asciz "\x1b[31m"
    .balign 4

glabel D_80141348
    .asciz "eye \xA4\xAC\xC2\xE7\xA4\xAD\xA4\xB9\xA4\xAE\xA4\xDE\xA4\xB9 eye=[%8.3f %8.3f %8.3f] error=%d\n"
    # EUC-JP: が大きすぎます | Is too large
    .balign 4

glabel D_80141380
    .asciz "\x1b[m"
    .balign 4

glabel D_80141384
    .float 0.1

glabel D_80141388
    .float 10000

glabel D_8014138C
    .float 1073676288

glabel D_80141390
    .float 18900
