.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013A5B0
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A5C8
    .asciz "vtx_tbl != NULL"
    .balign 4

glabel D_8013A5D8
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A5F0
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A608
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A620
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A638
    .asciz "\x1b[31m"
    .balign 4

glabel D_8013A640
    .asciz "ClObjJntSph_set():zelda_malloc()\xBD\xD0\xCD\xE8\xA4\xDE\xA4\xBB\xA4\xF3\xA1\xA3\n"
    # EUC-JP: 出来ません。 | Can not.
    .balign 4

glabel D_8013A670
    .asciz "\x1b[m"
    .balign 4

glabel D_8013A674
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A68C
    .asciz "\x1b[31m"
    .balign 4

glabel D_8013A694
    .asciz "ClObjJntSph_set3():zelda_malloc_\xBD\xD0\xCD\xE8\xA4\xDE\xA4\xBB\xA4\xF3\xA1\xA3\n"
    # EUC-JP: 出来ません。 | Can not.
    .balign 4

glabel D_8013A6C4
    .asciz "\x1b[m"
    .balign 4

glabel D_8013A6C8
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A6E0
    .asciz "\x1b[31m"
    .balign 4

glabel D_8013A6E8
    .asciz "ClObjJntSph_set5():zelda_malloc\xBD\xD0\xCD\xE8\xA4\xDE\xA4\xBB\xA4\xF3\n"
    # EUC-JP: 出来ません。 | Can not.
    .balign 4

glabel D_8013A714
    .asciz "\x1b[m"
    .balign 4

glabel D_8013A718
    .asciz "pclobj_jntsph->elem_tbl != NULL"
    .balign 4

glabel D_8013A738
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A750
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A768
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A780
    .asciz "\x1b[31m"
    .balign 4

glabel D_8013A788
    .asciz "ClObjTris_set3():zelda_malloc()\xBD\xD0\xCD\xE8\xA4\xDE\xA4\xBB\xA4\xF3\n"
    # EUC-JP: 出来ません。 | Can not.
    .balign 4

glabel D_8013A7B4
    .asciz "\x1b[m"
    .balign 4

glabel D_8013A7B8
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A7D0
    .asciz "\x1b[31m"
    .balign 4

glabel D_8013A7D8
    .asciz "ClObjTris_set5():zelda_malloc\xBD\xD0\xCD\xE8\xA4\xDE\xA4\xBB\xA4\xF3\n"
    # EUC-JP: 出来ません。 | Can not.
    .balign 4

glabel D_8013A804
    .asciz "\x1b[m"
    .balign 4

glabel D_8013A808
    .asciz "pclobj_tris->elem_tbl != NULL"
    .balign 4

glabel D_8013A828
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A840
    .asciz "pcl_obj->data_type <= CL_DATA_LBL_SWRD"
    .balign 4

glabel D_8013A868
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A880
    .asciz "CollisionCheck_setAT():\xA5\xA4\xA5\xF3\xA5\xC7\xA5\xC3\xA5\xAF\xA5\xB9\xA4\xAC\xA5\xAA\xA1\xBC\xA5\xD0\xA1\xBC\xA4\xB7\xA4\xC6\xC4\xC9\xB2\xC3\xC9\xD4\xC7\xBD\n"
    # EUC-JP: インデックスがオーバーして追加不能 | Index cannot be added due to over index
    .balign 4

glabel D_8013A8BC
    .asciz "pcl_obj->data_type <= CL_DATA_LBL_SWRD"
    .balign 4

glabel D_8013A8E4
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A8FC
    .asciz "CollisionCheck_setAT_SAC():\xC1\xB4\xA5\xC7\xA1\xBC\xA5\xBF\xBF\xF4\xA4\xE8\xA4\xEA\xC2\xE7\xA4\xAD\xA4\xA4\xA4\xC8\xA4\xB3\xA4\xED\xA4\xCB\xC5\xD0\xCF\xBF\xA4\xB7\xA4\xE8\xA4\xA6\xA4\xC8\xA4\xB7\xA4\xC6\xA4\xA4\xA4\xEB\xA1\xA3\n"
    # EUC-JP: 全データ数より大きいところに登録しようとしている。 | You are trying to register a location that is larger than the total number of data.
    .balign 4

glabel D_8013A94C
    .asciz "CollisionCheck_setAT():\xA5\xA4\xA5\xF3\xA5\xC7\xA5\xC3\xA5\xAF\xA5\xB9\xA4\xAC\xA5\xAA\xA1\xBC\xA5\xD0\xA1\xBC\xA4\xB7\xA4\xC6\xC4\xC9\xB2\xC3\xC9\xD4\xC7\xBD\n"
    # EUC-JP: インデックスがオーバーして追加不能 | Index cannot be added due to over index
    .balign 4

glabel D_8013A988
    .asciz "pcl_obj->data_type <= CL_DATA_LBL_SWRD"
    .balign 4

glabel D_8013A9B0
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A9C8
    .asciz "CollisionCheck_setAC():\xA5\xA4\xA5\xF3\xA5\xC7\xA5\xC3\xA5\xAF\xA5\xB9\xA4\xAC\xA5\xAA\xA1\xBC\xA5\xD0\xA4\xB7\xA4\xC6\xC4\xC9\xB2\xC3\xC9\xD4\xC7\xBD\n"
    # EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
    .balign 4

glabel D_8013AA04
    .asciz "pcl_obj->data_type <= CL_DATA_LBL_SWRD"
    .balign 4

glabel D_8013AA2C
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013AA44
    .asciz "CollisionCheck_setAC_SAC():\xC1\xB4\xA5\xC7\xA1\xBC\xA5\xBF\xBF\xF4\xA4\xE8\xA4\xEA\xC2\xE7\xA4\xAD\xA4\xA4\xA4\xC8\xA4\xB3\xA4\xED\xA4\xCB\xC5\xD0\xCF\xBF\xA4\xB7\xA4\xE8\xA4\xA6\xA4\xC8\xA4\xB7\xA4\xC6\xA4\xA4\xA4\xEB\xA1\xA3\n"
    # EUC-JP: 全データ数より大きいところに登録しようとしている。| You are trying to register a location that is larger than the total number of data.
    .balign 4

glabel D_8013AA94
    .asciz "CollisionCheck_setAC():\xA5\xA4\xA5\xF3\xA5\xC7\xA5\xC3\xA5\xAF\xA5\xB9\xA4\xAC\xA5\xAA\xA1\xBC\xA5\xD0\xA4\xB7\xA4\xC6\xC4\xC9\xB2\xC3\xC9\xD4\xC7\xBD\n"
    # EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
    .balign 4

glabel D_8013AAD0
    .asciz "pcl_obj->data_type <= CL_DATA_LBL_SWRD"
    .balign 4

glabel D_8013AAF8
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013AB10
    .asciz "CollisionCheck_setOC():\xA5\xA4\xA5\xF3\xA5\xC7\xA5\xC3\xA5\xAF\xA5\xB9\xA4\xAC\xA5\xAA\xA1\xBC\xA5\xD0\xA4\xB7\xA4\xC6\xC4\xC9\xB2\xC3\xC9\xD4\xC7\xBD\n"
    # EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
    .balign 4

glabel D_8013AB4C
    .asciz "pcl_obj->data_type <= CL_DATA_LBL_SWRD"
    .balign 4

glabel D_8013AB74
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013AB8C
    .asciz "CollisionCheck_setOC_SAC():\xC1\xB4\xA5\xC7\xA1\xBC\xA5\xBF\xBF\xF4\xA4\xE8\xA4\xEA\xC2\xE7\xA4\xAD\xA4\xA4\xA4\xC8\xA4\xB3\xA4\xED\xA4\xCB\xC5\xD0\xCF\xBF\xA4\xB7\xA4\xE8\xA4\xA6\xA4\xC8\xA4\xB7\xA4\xC6\xA4\xA4\xA4\xEB\xA1\xA3\n"
    # EUC-JP: 全データ数より大きいところに登録しようとしている。| You are trying to register a location that is larger than the total number of data.
    .balign 4

glabel D_8013ABDC
    .asciz "CollisionCheck_setOC():\xA5\xA4\xA5\xF3\xA5\xC7\xA5\xC3\xA5\xAF\xA5\xB9\xA4\xAC\xA5\xAA\xA1\xBC\xA5\xD0\xA4\xB7\xA4\xC6\xC4\xC9\xB2\xC3\xC9\xD4\xC7\xBD\n"
    # EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
    .balign 4

glabel D_8013AC18
    .asciz "CollisionCheck_setOCLine():\xA5\xA4\xA5\xF3\xA5\xC7\xA5\xC3\xA5\xAF\xA5\xB9\xA4\xAC\xA5\xAA\xA1\xBC\xA5\xD0\xA4\xB7\xA4\xC6\xC4\xC9\xB2\xC3\xC9\xD4\xC7\xBD\n"
    # EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
    .balign 4

glabel D_8013AC58
    .asciz "CollisionCheck_OC():\xCC\xA4\xC2\xD0\xB1\xFE %d, %d\n"
    # EUC-JP: 未対応 | Not compatible
    .balign 4

glabel D_8013AC7C
    .asciz "pclobj_elem->ac_hit_elem != NULL"
    .balign 4

glabel D_8013ACA0
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013ACB8
    .asciz "CollisionCheck_generalLineOcCheck():\xCC\xA4\xC2\xD0\xB1\xFE %d\xA5\xBF\xA5\xA4\xA5\xD7\n"
    # EUC-JP: 未対応 %dタイプ | %d's type is not supported
    .balign 4

glabel D_8013ACF0
    .float 0.01

glabel D_8013ACF4
    .float 1.0E38

glabel D_8013ACF8
    .float 0.008

glabel D_8013ACFC
    .float 0.008

glabel D_8013AD00
    .float 0.008

glabel D_8013AD04
    .float 0.33333334

glabel D_8013AD08
    .float 0.33333334

glabel D_8013AD0C
    .float 0.008

glabel D_8013AD10
    .float 0.33333334

glabel D_8013AD14
    .float 0.33333334

glabel D_8013AD18
    .float 0.33333334

glabel D_8013AD1C
    .float 0.33333334

glabel D_8013AD20
    .float 0.33333334

glabel D_8013AD24
    .float 0.008

glabel D_8013AD28
    .float 0.008

glabel D_8013AD2C
    .float 0.008

glabel D_8013AD30
    .float 0.008
