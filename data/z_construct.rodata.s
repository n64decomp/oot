.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80154D50
    .asciz "\xBE\xEF\xC3\xF3\xA3\xD0\xA3\xC1\xA3\xD2\xA3\xC1\xA3\xCD\xA3\xC5\xA3\xD4\xA3\xC5\xA3\xD2\xA5\xBB\xA5\xB0\xA5\xE1\xA5\xF3\xA5\xC8=%x\n"
    # EUC-JP: 常駐ＰＡＲＡＭＥＴＥＲセグメント | Resident PARAMETER segment
    .balign 4

glabel D_80154D78
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154D8C
    .asciz "parameter->parameterSegment=%x\n"
    .balign 4

glabel D_80154DAC
    .asciz "parameter->parameterSegment != NULL"
    .balign 4

glabel D_80154DD0
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154DE4
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154DF8
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154E0C
    .asciz "\xA3\xC4\xA3\xCF\xA5\xA2\xA5\xAF\xA5\xB7\xA5\xE7\xA5\xF3\x20\xA5\xC6\xA5\xAF\xA5\xB9\xA5\xC1\xA5\xE3\xBD\xE9\xB4\xFC=%x\n"
    # EUC-JP: ＤＯアクション テクスチャ初期 | DO Action Texture Inital
    .balign 4

glabel D_80154E30
    .asciz "parameter->do_actionSegment=%x\n"
    .balign 4

glabel D_80154E50
    .asciz "parameter->do_actionSegment != NULL"
    .balign 4

glabel D_80154E74
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154E88
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154E9C
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154EB0
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154EC4
    .asciz "\xA5\xA2\xA5\xA4\xA5\xB3\xA5\xF3\xA5\xA2\xA5\xA4\xA5\xC6\xA5\xE0\x20\xA5\xC6\xA5\xAF\xA5\xB9\xA5\xC1\xA5\xE3\xBD\xE9\xB4\xFC=%x\n"
    # EUC-JP: アイコンアイテム テクスチャ初期 | Icon Item Texture Inital
    .balign 4

glabel D_80154EE8
    .asciz "parameter->icon_itemSegment=%x\n"
    .balign 4

glabel D_80154F08
    .asciz "parameter->icon_itemSegment != NULL"
    .balign 4

glabel D_80154F2C
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154F40
    .asciz "Register_Item[%x, %x, %x, %x]\n"
    .balign 4

glabel D_80154F60
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154F74
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154F88
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154F9C
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154FB0
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154FC4
    .asciz "\xA3\xC5\xA3\xD6\xA3\xC5\xA3\xCE\xA3\xD4\xA1\xE1%d\n"
    # EUC-JP: ＥＶＥＮＴ＝
    .balign 4

glabel D_80154FD4
    .asciz "restart_flag=%d\n"
    .balign 4

glabel D_80154FE8
    .asciz "\xA5\xBF\xA5\xA4\xA5\xDE\xA1\xBC\xC4\xE4\xBB\xDF\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA  = %d\n"
    # EUC-JP: タイマー停止！！！！！！！！！！！！！！！ | Stop timer! ! ! ! ! ! ! ! ! ! ! ! ! ! !
    .balign 4

glabel D_80155028
    .asciz "\xA3\xD0\xA3\xC1\xA3\xD2\xA3\xC1\xA3\xCD\xA3\xC5\xA3\xD4\xA3\xC5\xA3\xD2\xCE\xCE\xB0\xE8\xA1\xE1%x\n"
    # EUC-JP: ＰＡＲＡＭＥＴＥＲ領域＝ | Parameter area = 
    .balign 4

glabel D_80155044
    .asciz "../z_construct.c"
    .balign 4

glabel D_80155058
    .asciz "message->fukidashiSegment=%x\n"
    .balign 4

glabel D_80155078
    .asciz "\xBF\xE1\xA4\xAD\xBD\xD0\xA4\xB7game_alloc=%x\n"
    # EUC-JP: 吹き出し | Speech bubble
    .balign 4

glabel D_80155090
    .asciz "message->fukidashiSegment != NULL"
    .balign 4

glabel D_801550B4
    .asciz "../z_construct.c"
    .balign 4
