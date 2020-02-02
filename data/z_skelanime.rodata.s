.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013FF50
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8013FF64
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8013FF78
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8013FF8C
    .asciz "\x1b[31m"
    .balign 4

glabel D_8013FF94
    .asciz "Si2_Lod_draw():skel\xA4\xACNULL\xA4\xC7\xA4\xB9\xA1\xA3\n"
    # EUC-JP: がNULLです。| Is null
    .balign 4

glabel D_8013FFB8
    .asciz "\x1b[m"
    .balign 4

glabel D_8013FFBC
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8013FFD0
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8013FFE4
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8013FFF8
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014000C
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140020
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140034
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140048
    .asciz "\x1b[31m"
    .balign 4

glabel D_80140050
    .asciz "Si2_Lod_draw_SV():skel\xA4\xACNULL\xA4\xC7\xA4\xB9\xA1\xA3\n"
    # EUC-JP: がNULLです。| Is null
    .balign 4

glabel D_80140074
    .asciz "\x1b[m"
    .balign 4

glabel D_80140078
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014008C
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801400A0
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801400B4
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801400C8
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801400DC
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801400F0
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140104
    .asciz "\x1b[31m"
    .balign 4

glabel D_8014010C
    .asciz "Si2_draw():skel\xA4\xACNULL\xA4\xC7\xA4\xB9\xA1\xA3\n"
    # EUC-JP: がNULLです。| Is null
    .balign 4

glabel D_8014012C
    .asciz "\x1b[m"
    .balign 4

glabel D_80140130
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140144
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140158
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014016C
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140180
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140194
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801401A8
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801401BC
    .asciz "\x1b[31m"
    .balign 4

glabel D_801401C4
    .asciz "Si2_draw_SV():skel\xA4\xACNULL\xA4\xC7\xA4\xB9\xA1\xA3\n"
    # EUC-JP: がNULLです。| Is null
    .balign 4

glabel D_801401E4
    .asciz "\x1b[m"
    .balign 4

glabel D_801401E8
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801401FC
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140210
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140224
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140238
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014024C
    .asciz "out = %08x\n"
    .balign 4

glabel D_80140258
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014026C
    .asciz "ref_tbl = %08x\n"
    .balign 4

glabel D_8014027C
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140290
    .asciz "frame_tbl = %08x\n"
    .balign 4

glabel D_801402A4
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801402B8
    .asciz "tbl = %08x\n"
    .balign 4

glabel D_801402C4
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801402D8
    .asciz "\x1b[31m"
    .balign 4

glabel D_801402E0
    .asciz "Si2_draw2():skel\xA4\xACNULL\xA4\xC7\xA4\xB9\xA1\xA3NULL\xA4\xF2\xCA\xD6\xA4\xB7\xA4\xDE\xA4\xB9\xA1\xA3\n"
    # EUC-JP: がNULLです。| Is null. Returns null.
    .balign 4

glabel D_80140310
    .asciz "\x1b[m"
    .balign 4

glabel D_80140314
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140328
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014033C
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140350
    .asciz "\x1b[31m"
    .balign 4

glabel D_80140358
    .asciz "Si2_draw2_SV():skel\xA4\xACNULL\xA4\xC7\xA4\xB9\xA1\xA3NULL\xA4\xF2\xCA\xD6\xA4\xB7\xA4\xDE\xA4\xB9\xA1\xA3\n"
    # EUC-JP: がNULLです。| Is null. Returns null.
    .balign 4

glabel D_8014038C
    .asciz "\x1b[m"
    .balign 4

glabel D_80140390
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801403A4
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801403B8
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801403CC
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801403E0
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801403F4
    .asciz "joint_buff_num == joint_num"
    .balign 4

glabel D_80140410
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140424
    .asciz "\x1b[31m"
    .balign 4

glabel D_8014042C
    .asciz "Skeleton_Info_Rom_SV_ct \xA5\xE1\xA5\xE2\xA5\xEA\xA5\xA2\xA5\xED\xA5\xB1\xA1\xBC\xA5\xB7\xA5\xE7\xA5\xF3\xA5\xA8\xA5\xE9\xA1\xBC\n"
    # EUC-JP: メモリアロケーションエラー | Memory allocation error
    .balign 4

glabel D_80140460
    .asciz "\x1b[m"
    .balign 4

glabel D_80140464
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140478
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014048C
    .asciz "joint_buff_num == this->joint_num"
    .balign 4

glabel D_801404B0
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801404C4
    .asciz "\x1b[31m"
    .balign 4

glabel D_801404CC
    .asciz "Skeleton_Info2_ct \xA5\xE1\xA5\xE2\xA5\xEA\xA5\xA2\xA5\xED\xA5\xB1\xA1\xBC\xA5\xB7\xA5\xE7\xA5\xF3\xA5\xA8\xA5\xE9\xA1\xBC\n"
    # EUC-JP: メモリアロケーションエラー | Memory allocation error
    .balign 4

glabel D_801404FC
    .asciz "\x1b[m"
    .balign 4

glabel D_80140500
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140514
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140528
    .asciz "joint_buff_num == this->joint_num"
    .balign 4

glabel D_8014054C
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140560
    .asciz "\x1b[31m"
    .balign 4

glabel D_80140568
    .asciz "Skeleton_Info_Rom_SV_ct \xA5\xE1\xA5\xE2\xA5\xEA\xA5\xA2\xA5\xED\xA5\xB1\xA1\xBC\xA5\xB7\xA5\xE7\xA5\xF3\xA5\xA8\xA5\xE9\xA1\xBC\n"
    # EUC-JP: メモリアロケーションエラー | Memory allocation error
    .balign 4

glabel D_8014059C
    .asciz "\x1b[m"
    .balign 4

glabel D_801405A0
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801405B4
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801405C8
    .asciz "\x1b[31m"
    .balign 4

glabel D_801405D0
    .asciz "Skeleton_Info2_skin2_ct \xA5\xE1\xA5\xE2\xA5\xEA\xA5\xA2\xA5\xED\xA5\xB1\xA1\xBC\xA5\xB7\xA5\xE7\xA5\xF3\xA5\xA8\xA5\xE9\xA1\xBC\n"
    # EUC-JP: メモリアロケーションエラー | Memory allocation error
    .balign 4

glabel D_80140604
    .asciz "\x1b[m"
    .balign 4

glabel D_80140608
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014061C
    .asciz "now_joint \xA4\xA2\xA4\xAD\xA4\xDE\xA4\xD8\xA4\xF3\xA1\xAA\xA1\xAA\n"
    # EUC-JP: あきまへん！！ | 'Akimane!!'?
    .balign 4

glabel D_80140638
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014064C
    .asciz "morf_joint \xA4\xA2\xA4\xAD\xA4\xDE\xA4\xD8\xA4\xF3\xA1\xAA\xA1\xAA\n"
    # EUC-JP: あきまへん！！ | 'Akimane!!'?
    .balign 4

glabel D_80140668
    .float 0.33333334

glabel D_8014066C
    .float 0.33333334

glabel D_80140670
    .float 0.33333334

glabel D_80140674
    .float 0.33333334

glabel D_80140678
    .float 0.33333334

glabel D_8014067C
    .float 0.33333334
