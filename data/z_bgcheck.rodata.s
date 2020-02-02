.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80138670
    .asciz "\x1b[31m"
    .balign 4

glabel D_80138678
    .asciz "T_BGCheck_PosErrorCheck():\xB0\xCC\xC3\xD6\xA4\xAC\xC2\xC5\xC5\xF6\xA4\xC7\xA4\xCF\xA4\xA2\xA4\xEA\xA4\xDE\xA4\xBB\xA4\xF3\xA1\xA3\x70\x6F\x73 (%f,%f,%f) file:%s line:%d\n"
    # EUC-JP: T_BGCheck_PosErrorCheck():位置が妥当ではありません。pos (%f,%f,%f) file:%s line:%d  | Position is not valid
    .balign 4

glabel D_801386CC
    .asciz "\x1b[m"
    .balign 4

glabel D_801386D0
    .asciz "new_node != SS_NULL"
    .balign 4

glabel D_801386E4
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_801386F4
    .asciz "psst->tbl != NULL"
    .balign 4

glabel D_80138708
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138718
    .asciz "\x1b[41;37m"
    .balign 4

glabel D_80138724
    .asciz "T_Polygon_GetVertex_bg_ai(): Error %d %d %d \xB0\xFA\xBF\xF4\xA4\xAC\xC5\xAC\xC0\xDA\xA4\xC7\xA4\xCF\xA4\xA2\xA4\xEA\xA4\xDE\xA4\xBB\xA4\xF3\xA1\xA3\xBD\xE8\xCD\xFD\xA4\xF2\xBD\xAA\xCE\xBB\xA4\xB7\xA4\xDE\xA4\xB9\xA1\xA3\n"
    # EUC-JP: 引数が適切ではありません。処理を終了します。 | Invalid argument. Process terminated
    .balign 4

glabel D_80138780
    .asciz "\x1b[m"
    .balign 4

glabel D_80138784
    .asciz "!IS_ZERO(ac_size)"
    .balign 4

glabel D_80138798
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_801387A8
    .asciz "!IS_ZERO(ac_size)"
    .balign 4

glabel D_801387BC
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_801387CC
    .asciz "/*---------------- BGCheck \xA5\xD0\xA5\xC3\xA5\xD5\xA5\xA1\xA1\xBC\xA5\xE1\xA5\xE2\xA5\xEA\xA5\xB5\xA5\xA4\xA5\xBA -------------*/\n"
    # EUC-JP: バッファーメモリサイズ | Buffer memory size
    .balign 4

glabel D_80138810
    .asciz "/* BGCheck LonLon\xA5\xB5\xA5\xA4\xA5\xBA %dbyte */\n"
    # EUC-JP: サイズ | Size
    .balign 4

glabel D_80138834
    .asciz "/* BGCheck \xA5\xDF\xA5\xCB\xA5\xB5\xA5\xA4\xA5\xBA %dbyte */\n"
    # EUC-JP: ミニサイズ | Mini size
    .balign 4

glabel D_80138858
    .asciz "/* BGCheck Spot\xCD\xD1\xA5\xB5\xA5\xA4\xA5\xBA %dbyte */\n"
    # EUC-JP: 用サイズ | For size?
    .balign 4

glabel D_8013887C
    .asciz "/* BGCheck \xA5\xCE\xA1\xBC\xA5\xDE\xA5\xEB\xA5\xB5\xA5\xA4\xA5\xBA %dbyte  */\n"
    # EUC-JP: ノーマルサイズ | Normal size
    .balign 4

glabel D_801388A4
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_801388B4
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_801388C4
    .asciz "\x1b[32m"
    .balign 4

glabel D_801388CC
    .asciz "/*---\xB7\xEB\xB6\xC9 BG\xBB\xC8\xCD\xD1\xA5\xB5\xA5\xA4\xA5\xBA %dbyte---*/\n"
    # EUC-JP: 結局 BG使用サイズ | After, use BG size
    .balign 4

glabel D_801388F0
    .asciz "\x1b[m"
    .balign 4

glabel D_801388F4
    .asciz "\x1b[43;30m"
    .balign 4

glabel D_80138900
    .incbin "baserom.z64", 0xBAFAA0, 0x4C
    # .asciz "T_BGCheck_getBGDataInfo():\xA4\xBD\xA4\xCEbg_actor_index\xA4\xCF\xBB\xC8\xA4\xEF\xA4\xEC\xA4\xC6\xA4\xAA\xA4\xEA\xA4\xDE\xA4\xBB\xA4\xF3\xA1\xA3index=%d\n"
    # EUC-JP: そのbg_actor_indexは使われておりません。| The bg_actor_index is not used.

glabel D_8013894C
    .asciz "\x1b[m"
    .balign 4

glabel D_80138950
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138960
    .asciz "\xA4\xB3\xA4\xA4\xA4\xC4\x2Cpself_actor->name %d\n"
    # EUC-JP: こいつ | This?
    .balign 4

glabel D_80138980
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138990
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_801389A0
    .asciz "\xA4\xB3\xA4\xA4\xA4\xC4\x2Cpself_actor->name %d\n"
    # EUC-JP: こいつ | This?
    .balign 4

glabel D_801389C0
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_801389D0
    .asciz "\xA4\xB3\xA4\xA4\xA4\xC4\x2Cpself_actor->name %d\n"
    # EUC-JP: こいつ | This?
    .balign 4

glabel D_801389F0
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138A00
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138A10
    .asciz "\xA4\xB3\xA4\xA4\xA4\xC4\x2Cpself_actor->name %d\n"
    # EUC-JP: こいつ | This?
    .balign 4

glabel D_80138A30
    .asciz "pself_actor == NULL\xA4\xC7\xC8\xC8\xBF\xCD\xC9\xD4\xCC\xC0\n"
    # EUC-JP: で犯人不明 | Unknown
    .balign 4

glabel D_80138A50
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138A60
    .asciz "\xA4\xB3\xA4\xA4\xA4\xC4\x2Cpself_actor->name %d\n"
    # EUC-JP: こいつ | This?
    .balign 4

glabel D_80138A80
    .asciz "this->short_slist_node_tbl != NULL"
    .balign 4

glabel D_80138AA4
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138AB4
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138AC4
    .asciz "this->polygon_check != NULL"
    .balign 4

glabel D_80138AE0
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138AF0
    .asciz "this->short_slist_node_last_index < this->short_slist_node_size"
    .balign 4

glabel D_80138B30
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138B40
    .incbin "baserom.z64", 0xBAFCE0, 0x28

glabel D_80138B68
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138B78
    .incbin "baserom.z64", 0xBAFD18, 0x14

glabel D_80138B8C
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138B9C
    .incbin "baserom.z64", 0xBAFD3C, 0x14

glabel D_80138BB0
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138BC0
    .asciz "\x1b[31m"
    .balign 4

glabel D_80138BC8
    .asciz "DynaPolyInfo_setActor():\xA5\xC0\xA5\xA4\xA5\xCA\xA5\xDF\xA5\xC3\xA5\xAF\xA5\xDD\xA5\xEA\xA5\xB4\xA5\xF3\x20\xB6\xF5\xA4\xAD\xA5\xA4\xA5\xF3\xA5\xC7\xA5\xC3\xA5\xAF\xA5\xB9\xA4\xCF\xA4\xA2\xA4\xEA\xA4\xDE\xA4\xBB\xA4\xF3\n"
    # EUC-JP: Dynamic Polygon No Index Available
    .balign 4

glabel D_80138C14
    .asciz "\x1b[m"
    .balign 4

glabel D_80138C18
    .asciz "\x1b[32m"
    .balign 4

glabel D_80138C20
    .asciz "DynaPolyInfo_setActor():index %d\n"
    .balign 4

glabel D_80138C44
    .asciz "\x1b[m"
    .balign 4

glabel D_80138C48
    .asciz "\x1b[32m"
    .balign 4

glabel D_80138C50
    .asciz "DynaPolyInfo_delReserve():index %d\n"
    .balign 4

glabel D_80138C74
    .asciz "\x1b[m"
    .balign 4

glabel D_80138C78
    .asciz "\x1b[32m"
    .balign 4

glabel D_80138C80
    .asciz "DynaPolyInfo_delReserve():\xBA\xEF\xBD\xFC\xA4\xB5\xA4\xEC\xA4\xC6\xA4\xA4\xA4\xEB\xA4\xCF\xA4\xBA\xA4\xCE(?)\n\xA5\xA4\xA5\xF3\xA5\xC7\xA5\xC3\xA5\xAF\xA5\xB9(== -1)\xA4\xCE\xA4\xBF\xA4\xE1\x2C\xBD\xE8\xCD\xFD\xA4\xF2\xC3\xE6\xBB\xDF\xA4\xB7\xA4\xDE\xA4\xB9\xA1\xA3\n"
    # EUC-JP: 削除されているはずの(?) インデックス(== -1)のため,処理を中止します。 | Processing aborted because the index should be deleted.
    .balign 4

glabel D_80138CE0
    .asciz "\x1b[m"
    .balign 4

glabel D_80138CE4
    .asciz "\x1b[31m"
    .balign 4

glabel D_80138CEC
    .asciz "DynaPolyInfo_delReserve():\xB3\xCE\xCA\xDD\xA4\xB7\xA4\xC6\xA4\xA4\xA4\xCA\xA4\xA4\xA1\xBF\xBD\xD0\xCD\xE8\xA4\xCA\xA4\xAB\xA4\xC3\xA4\xBF\xA5\xA4\xA5\xF3\xA5\xC7\xA5\xC3\xA5\xAF\xA5\xB9\xA4\xCE\xB2\xF2\xCA\xFC\xA4\xCE\xA4\xBF\xA4\xE1\xA1\xA2\xBD\xE8\xCD\xFD\xA4\xF2\xC3\xE6\xBB\xDF\xA4\xB7\xA4\xDE\xA4\xB9\xA1\xA3index == %d\n"
    # EUC-JP: 確保していない／出来なかったインデックスの解放のため、処理を中止します | Cancel process to release unallocated indexes.
    .balign 4

glabel D_80138D5C
    .asciz "\x1b[m"
    .balign 4

glabel D_80138D60
    .asciz "\x1b[31m"
    .balign 4

glabel D_80138D68
    .asciz "DynaPolyInfo_expandSRT():polygon over %d\xA4\xAC%d\xA4\xF2\xB1\xDB\xA4\xA8\xA4\xEB\xA4\xC8\xA5\xC0\xA5\xE1\n"
    # EUC-JP: が%dを越えるとダメ | Exceeds?
    .balign 4

glabel D_80138DA4
    .asciz "\x1b[31m"
    .balign 4

glabel D_80138DAC
    .asciz "DynaPolyInfo_expandSRT():vertex over %d\xA4\xAC%d\xA4\xF2\xB1\xDB\xA4\xA8\xA4\xEB\xA4\xC8\xA5\xC0\xA5\xE1\n"
    # EUC-JP: を越えるとダメ | No more than?
    .balign 4

glabel D_80138DE8
    .asciz "pdyna_poly_info->poly_num >= *pstart_poly_index + pbgdata->poly_num"
    .balign 4

glabel D_80138E2C
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138E3C
    .asciz "pdyna_poly_info->vert_num >= *pstart_vert_index + pbgdata->vtx_num"
    .balign 4

glabel D_80138E80
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138E90
    .asciz "\x1b[32m"
    .balign 4

glabel D_80138E98
    .asciz "DynaPolyInfo_setup():\xBA\xEF\xBD\xFC index=%d\n"
    # EUC-JP: 削除 | Delete
    .balign 4

glabel D_80138EBC
    .asciz "\x1b[m"
    .balign 4

glabel D_80138EC0
    .asciz "\x1b[32m"
    .balign 4

glabel D_80138EC8
    .asciz "DynaPolyInfo_setup():\xBA\xEF\xBD\xFC index=%d\n"
    # EUC-JP: 削除 | Delete
    .balign 4

glabel D_80138EEC
    .asciz "\x1b[m"
    .balign 4

glabel D_80138EF0
    .asciz "!IS_ZERO(ac_size)"
    .balign 4

glabel D_80138F04
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138F14
    .asciz "!IS_ZERO(ac_size)"
    .balign 4

glabel D_80138F28
    .asciz "../z_bgcheck.c"
    .balign 4

glabel D_80138F38
    .float 32760

glabel D_80138F3C
    .float -32760

glabel D_80138F40
    .float 3.051851E-05

glabel D_80138F44
    .float 0.008

glabel D_80138F48
    .float 3.051851E-05

glabel D_80138F4C
    .float 3.051851E-05

glabel D_80138F50
    .float 3.051851E-05

glabel D_80138F54
    .float 3.051851E-05

glabel D_80138F58
    .float 0.008

glabel D_80138F5C
    .float 3.051851E-05

glabel D_80138F60
    .float 0.008

glabel D_80138F64
    .float 0.4

glabel D_80138F68
    .float 3.051851E-05

glabel D_80138F6C
    .float 0.008

glabel D_80138F70
    .float 0.4

glabel D_80138F74
    .float 3.051851E-05

glabel D_80138F78
    .float 3.051851E-05

glabel D_80138F7C
    .float 3.051851E-05

glabel D_80138F80
    .float 3.051851E-05

glabel D_80138F84
    .float 3.051851E-05

glabel D_80138F88
    .float 3.051851E-05

glabel D_80138F8C
    .float 0.008

glabel D_80138F90
    .float 3.051851E-05
    
glabel D_80138F94
    .float 0.008

glabel D_80138F98
    .float 1E+38

glabel D_80138F9C
    .float 1.1

glabel D_80138FA0
    .float 32767

glabel D_80138FA4
    .float 0.008

glabel D_80138FA8
    .float -0.8

glabel D_80138FAC
    .float 3.051851E-05

glabel D_80138FB0
    .float 0.008

glabel D_80138FB4
    .float 0.008

glabel D_80138FB8
    .float 0.4

glabel D_80138FBC
    .float 0.008

glabel D_80138FC0
    .float 0.4

glabel D_80138FC4
    .float 3.051851E-05

glabel D_80138FC8
    .float 3.051851E-05
