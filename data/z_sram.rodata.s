.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80140850
    .asciz "\xB8\xC4\xBF\xCD\xA3\xC6\xA3\xE9\xA3\xEC\xA3\xE5\xBA\xEE\xC0\xAE\n"
    # EUC-JP: 個人Ｆｉｌｅ作成 | Create personal file
    .balign 4

glabel D_80140864
    .asciz "\xA4\xDD\xA4\xA4\xA4\xF3\xA4\xC8\xA1\xE1%x(%d)\n"
    # EUC-JP: ぽいんと＝ | Point=
    .balign 4

glabel D_80140878
    .asciz "\x1b[33m"
    .balign 4

glabel D_80140880
    .asciz "SCENE_DATA_ID = %d   SceneNo = %d\n"
    .balign 4

glabel D_801408A4
    .asciz "scene_no = %d\n"
    .balign 4

glabel D_801408B4
    .asciz "\x1b[m"
    .balign 4

glabel D_801408B8
    .asciz "\x1b[34m"
    .balign 4

glabel D_801408C0
    .asciz "\n====================================================================\n"
    .balign 4

glabel D_80140908
    .asciz "%d, "
    .balign 4

glabel D_80140910
    .asciz "\n====================================================================\n"
    .balign 4

glabel D_80140958
    .asciz "\x1b[m"
    .balign 4

glabel D_8014095C
    .asciz "\x1b[32m"
    .balign 4

glabel D_80140964
    .asciz "\n====================================================================\n"
    .balign 4

glabel D_801409AC
    .asciz "%d, "
    .balign 4

glabel D_801409B4
    .asciz "\n====================================================================\n"
    .balign 4

glabel D_801409FC
    .asciz "\x1b[m"
    .balign 4

glabel D_80140A00
    .asciz "\xA3\xD3\xA3\xD2\xA3\xC1\xA3\xCD \xA3\xD3\xA3\xD4\xA3\xC1\xA3\xD2\xA3\xD4\xA8\xA1\xA3\xCC\xA3\xCF\xA3\xC1\xA3\xC4\n"
    # EUC-JP: ＳＲＡＭ ＳＴＡＲＴ─ＬＯＡＤ
    .balign 4

glabel D_80140A20
    .asciz "\xA4\xDD\xA4\xA4\xA4\xF3\xA4\xC8\xA1\xE1%x(%d)    SAVE_MAX=%d\n"
    # EUC-JP: ぽいんと＝ | Point=
    .balign 4

glabel D_80140A44
    .asciz "\n\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1  \xA3\xD3\xA1\xCA\x25\x64\xA1\xCB \xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\xA1\xE1\n"
    # EUC-JP: ＝＝＝＝＝＝＝＝＝＝＝＝＝ Ｓ（%d） ＝＝＝＝＝＝＝＝＝＝＝＝＝ 
    .balign 4

glabel D_80140A88
    .asciz "\n\xA3\xD3\xA3\xC1\xA3\xD6\xA3\xC5\xA5\xC1\xA5\xA7\xA5\xC3\xA5\xAF\xA5\xB5\xA5\xE0\xB7\xD7\xBB\xBB  j=%x  mmm=%x  "
    # EUC-JP: ＳＡＶＥチェックサム計算 | SAVE checksum calculation
    .balign 4

glabel D_80140AB4
    .asciz "\xA3\xC5\xA3\xD2\xA3\xD2\xA3\xCF\xA3\xD2\xA1\xAA\xA1\xAA\xA1\xAA \xA1\xE1 %x(%d)\n"
    # EUC-JP: ＥＲＲＯＲ！！！ ＝ 
    .balign 4

glabel D_80140AD0
    .asciz "================= \xA3\xC2\xA3\xC1\xA3\xC3\xA3\xCB\xA8\xA1\xA3\xD5\xA3\xD0 ========================\n"
    # EUC-JP: ＢＡＣＫ─ＵＰ
    .balign 4

glabel D_80140B0C
    .asciz "\n\xA1\xCA\xA3\xC2\xA1\xCB\xA3\xD3\xA3\xC1\xA3\xD6\xA3\xC5\xA5\xC1\xA5\xA7\xA5\xC3\xA5\xAF\xA5\xB5\xA5\xE0\xB7\xD7\xBB\xBB  j=%x  mmm=%x  "
    # EUC-JP: （Ｂ）ＳＡＶＥチェックサム計算 | (B) SAVE checksum calculation
    .balign 4

glabel D_80140B3C
    .asciz "\xA3\xC5\xA3\xD2\xA3\xD2\xA3\xCF\xA3\xD2\xA1\xAA\xA1\xAA\xA1\xAA \xA1\xE1 %x(%d+3)\n"
    #EUR-JP: ＥＲＲＯＲ！！！ ＝ 
    .balign 4

glabel D_80140B5C
    .asciz "newf=%x,%x,%x,%x,%x,%x\n"
    .balign 4

glabel D_80140B74
    .asciz "\n--------------------------------------------------------------\n"
    .balign 4

glabel D_80140BB8
    .asciz "%x "
    .balign 4

glabel D_80140BBC
    .asciz "\n"
    .balign 4

glabel D_80140BC0
    .asciz "\nCheck_Sum=%x(%x)\n"
    .balign 4

glabel D_80140BD4
    .asciz "????#%x,%x,%x,%x,%x,%x\n"
    .balign 4

glabel D_80140BEC
    .asciz "\n\xA4\xDD\xA4\xA4\xA4\xF3\xA4\xC8\xA1\xE1%x(%d+3)  check_sum=%x(%x)\n"
    # EUC-JP: ぽいんと＝ | Point = 
    .balign 4

glabel D_80140C14
    .asciz "\xA4\xDD\xA4\xA4\xA4\xF3\xA4\xC8\xA1\xE1%x(%d)  check_sum=%x(%x)\n"
    .balign 4

glabel D_80140C38
    .asciz "\n\xA3\xD3\xA3\xC1\xA3\xD6\xA3\xC5\xA5\xC7\xA1\xBC\xA5\xBF\x20\xA3\xCF\xA3\xCB\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\n"
    # EUC-JP: ＳＡＶＥデータ ＯＫ！！！！ | SAVE data OK! ! ! !
    .balign 4

glabel D_80140C58
    .asciz "SAVECT=%x, NAME=%x, LIFE=%x, ITEM=%x,  64DD=%x,  HEART=%x\n"
    .balign 4

glabel D_80140C94
    .asciz "f_64dd=%d, %d, %d\n"
    .balign 4

glabel D_80140CA8
    .asciz "heart_status=%d, %d, %d\n"
    .balign 4

glabel D_80140CC4
    .asciz "now_life=%d, %d, %d\n"
    .balign 4

glabel D_80140CDC
    .asciz "\xA3\xB6\xA3\xB4\xA3\xC4\xA3\xC4\xA5\xD5\xA5\xE9\xA5\xB0=%d\n"
    # EUC-JP: ６４ＤＤフラグ | 64DD flag
    .balign 4

glabel D_80140CF0
    .asciz "newf=%x,%x,%x,%x,%x,%x\n"
    .balign 4

glabel D_80140D08
    .asciz "\n$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
    .balign 4

glabel D_80140D58
    .asciz "%x "
    .balign 4

glabel D_80140D5C
    .asciz "\n"
    .balign 4

glabel D_80140D60
    .asciz "\n\xA5\xC1\xA5\xA7\xA5\xC3\xA5\xAF\xA5\xB5\xA5\xE0\xA1\xE1%x\n"
    # EUC-JP: チェックサム＝%x | Checksum
    .balign 4

glabel D_80140D74
    .asciz "I=%x no=%d\n"
    .balign 4

glabel D_80140D80
    .asciz "I=%x no=%d\n"
    .balign 4

glabel D_80140D8C
    .asciz "\xA3\xD3\xA3\xC1\xA3\xD6\xA3\xC5\xBD\xAA\xCE\xBB\n"
    # EUC-JP: ＳＡＶＥ終了 | SAVE end
    .balign 4

glabel D_80140D9C
    .asciz "z_common_data.file_no = %d\n"
    .balign 

glabel D_80140DB8
    .asciz "SAVECT=%x, NAME=%x, LIFE=%x, ITEM=%x,  SAVE_64DD=%x\n"
    .balign 4

glabel D_80140DF0
    .asciz "f_64dd[%d]=%d\n"
    .balign 4

glabel D_80140E00
    .asciz "heart_status[%d]=%d\n"
    .balign 4

glabel D_80140E18
    .asciz "now_life[%d]=%d\n"
    .balign 4

glabel D_80140E2C
    .asciz "\xA3\xC3\xA3\xCC\xA3\xC5\xA3\xC1\xA3\xD2\xBD\xAA\xCE\xBB\n"
    # EUC-JP: ＣＬＥＡＲ終了 | Clear End
    .balign 4

glabel D_80140E3C
    .asciz "\xA3\xD2\xA3\xC5\xA3\xC1\xA3\xC4=%d(%x)  \xA3\xC3\xA3\xCF\xA3\xD0\xA3\xD9=%d(%x)\n"
    # EUC-JP: ＲＥＡＤ=%d(%x) ＣＯＰＹ=%d
    .balign 4

glabel D_80140E60
    .asciz "f_64dd[%d]=%d\n"
    .balign 4

glabel D_80140E70
    .asciz "heart_status[%d]=%d\n"
    .balign 4

glabel D_80140E88
    .asciz "\xA3\xC3\xA3\xCF\xA3\xD0\xA3\xD9\xBD\xAA\xCE\xBB\n"
    # EUC-JP: ＣＯＰＹ終了 | Copy end
    .balign 4

glabel D_80140E98
    .asciz "sram_initialize( Game *game, Sram *sram )\n"
    .balign 4

glabel D_80140EC4
    .asciz "\xA3\xD3\xA3\xD2\xA3\xC1\xA3\xCD\xC7\xCB\xB2\xF5\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\n"
    # EUC-JP: ＳＲＡＭ破壊！！！！！！ | SRAM destruction! ! ! ! ! !
    .balign 4

glabel D_80140EE0
    .asciz "\xA3\xD3\xA3\xD2\xA3\xC1\xA3\xCD\xC7\xCB\xB2\xF5\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\n"
    # EUC-JP: ＳＲＡＭ破壊！！！！！！ | SRAM destruction! ! ! ! ! !
    .balign 4

glabel D_80140EFC
    .asciz "\xA3\xC7\xA3\xCF\xA3\xCF\xA3\xC4\xA1\xAA\xA3\xC7\xA3\xCF\xA3\xCF\xA3\xC4\xA1\xAA \xA5\xB5\xA5\xA4\xA5\xBA\xA1\xE1%d + %d \xA1\xE1 %d\n"
    # EUC-JP: ＧＯＯＤ！ＧＯＯＤ！ サイズ＝%d + %d ＝ %d | GOOD! GOOD! Size =% d +% d =% d
    .balign 4

glabel D_80140F28
    .asciz "\x1b[34m"
    .balign 4

glabel D_80140F30
    .asciz "Na_SetSoundOutputMode = %d\n"
    .balign 4

glabel D_80140F4C
    .asciz "Na_SetSoundOutputMode = %d\n"
    .balign 4

glabel D_80140F68
    .asciz "Na_SetSoundOutputMode = %d\n"
    .balign 4

glabel D_80140F84
    .asciz "\x1b[m"
    .balign 4

glabel D_80140F88
    .asciz "../z_sram.c"
    .balign 4

glabel D_80140F94
    .asciz "sram->read_buff != NULL"
    .balign 4

glabel D_80140FAC
    .asciz "../z_sram.c"
    .balign 4

glabel jtbl_80140FB8
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A854C
    .word L800A85C0
    .word L800A85C0
    .word L800A85CC
    .word L800A8564
    .word L800A856C
    .word L800A8578
    .word L800A8584
    .word L800A8590
    .word L800A859C
    .word L800A85A8
    .word L800A85B4
    .word L800A85C0
    .word L800A85C0
