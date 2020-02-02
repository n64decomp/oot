.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013D700
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013D708
    .asciz "\xA3\xD0\xA3\xC1\xA3\xCC\xA3\xC5\xA3\xD4\xA3\xC5\xA5\xBB\xA5\xC3\xA5\xC8 \xA1\xDA i=%x : room=%x \xA1\xDBRoom_Inf[%d][4]=%x  ( map_palete_no = %d )\n"
    # EUC-JP: ＰＡＬＥＴＥセット 【 i=%x : room=%x 】 | Palette set
    .balign 4

glabel D_8013D75C
    .asciz "\x1b[m"
    .balign 4

glabel D_8013D760
    .asciz "\x1b[34m"
    .balign 4

glabel D_8013D768
    .asciz "\xA3\xCB\xA3\xCB\xA3\xCB\xA1\xE1%d\n"
    # EUC-JP: ＫＫＫ＝
    .balign 4

glabel D_8013D774
    .asciz "\x1b[m"
    .balign 4

glabel D_8013D778
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D788
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013D790
    .asciz "\xA5\xC7\xA5\xAF\xA4\xCE\xBC\xF9\xA5\xC0\xA5\xF3\xA5\xB8\xA5\xE7\xA5\xF3\xA3\xCD\xA3\xC1\xA3\xD0\x20\xA5\xC6\xA5\xAF\xA5\xB9\xA5\xC1\xA5\xE3\xA3\xC4\xA3\xCD\xA3\xC1(%x) scene_id_offset=%d  VREG(30)=%d\n"
    # EUC-JP: デクの樹ダンジョンＭＡＰ テクスチャＤＭＡ | Deck Tree Dungeon MAP Texture DMA
    .balign 4

glabel D_8013D7E0
    .asciz "\x1b[m"
    .balign 4

glabel D_8013D7E4
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D7F4
    .asciz "\xA3\xCD\xA3\xC1\xA3\xD0\x20\xB3\xC6\xB3\xAC\xA3\xCF\xA3\xCE\xA5\xC1\xA5\xA7\xA5\xC3\xA5\xAF\n"
    # EUC-JP: ＭＡＰ 各階ＯＮチェック | MAP ON check on each floor
    .balign 4

glabel D_8013D810
    .asciz "\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\n\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\nroom_no=%d (%d)(%d)\n\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\n\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\n"
    # EUC-JP: ＊＊＊＊＊＊＊ ＊＊＊＊＊＊＊ room_no=%d (%d)(%d) ＊＊＊＊＊＊＊ ＊＊＊＊＊＊＊
    .balign 4

glabel D_8013D864
    .asciz "\xA3\xD2\xA3\xCF\xA3\xCF\xA3\xCD\xA1\xB2\xA3\xC9\xA3\xCE\xA3\xC6\xA1\xE1%d\n"
    # EUC-JP: ＲＯＯＭ＿ＩＮＦ＝
    .balign 4

glabel D_8013D87C
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013D884
    .asciz "\xC9\xF4\xB2\xB0\xC9\xF4\xB2\xB0\xA1\xE1%d\n"
    # EUC-JP: 部屋部屋＝ | Room Room = 
    .balign 4

glabel D_8013D894
    .asciz "\x1b[m"
    .balign 4

glabel D_8013D898
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D8A8
    .asciz "\n\n\n\xA3\xCD\xA3\xC1\xA3\xD0\x20\xA5\xC6\xA5\xAF\xA5\xB9\xA5\xC1\xA5\xE3\xBD\xE9\xB4\xFC\xB2\xBD   scene_data_ID=%d\nmapSegment=%x\n\n"
    # EUC-JP: ＭＡＰ テクスチャ初期化 | MAP texture initalization
    .balign 4

glabel D_8013D8E8
    .asciz "parameter->mapSegment != NULL"
    .balign 4

glabel D_8013D908
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D918
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D928
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D938
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D948
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D958
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D968
    .asciz "Game_play_demo_mode_check=%d\n"
    .balign 4

glabel D_8013D988
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D998
    .asciz "\xB8\xBD\xBA\xDF\xB3\xAC\xA1\xE1\x25\x64\x20\x20\xB8\xBD\xBA\xDF\xC9\xF4\xB2\xB0\xA1\xE1\x25\x78\x20\x20\xC9\xF4\xB2\xB0\xBF\xF4\xA1\xE1\x25\x64\n"
    # EUC-JP: 現在階＝%d 現在部屋＝%x 部屋数＝%d | Current floor =% d Current room =% x Number of rooms =% d
    .balign 4

glabel D_8013D9C0
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013D9C8
    .asciz "\xB3\xAC\xC1\xD8\xC0\xDA\xC2\xD8\xA1\xE1%x\n"
    # EUC-JP: 階層切替＝ | Tier switching = 
    .balign 4

glabel D_8013D9D8
    .asciz "\x1b[m"
    .balign 4

glabel jtbl_8013D9DC
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L80080A84
    .word L80080A84
    .word L80080A84
    .word L80080A84
    .word L80080A84
    .word L80080A84
    .word L80080A84
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4
    .word L800809C4

glabel jtbl_8013DA40
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28

glabel jtbl_8013DA90
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080DF4
    .word L80080DF4
    .word L80080DF4
    .word L80080DF4
    .word L80080DF4
    .word L80080DF4
    .word L80080DF4
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC

glabel jtbl_8013DAF4
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080F1C
    .word L80080F1C
    .word L80080F1C
    .word L80080F1C
    .word L80080F1C
    .word L80080F1C
    .word L80080F1C
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74
    .word L80080E74

glabel jtbl_8013DB58
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C

glabel jtbl_8013DBA8
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C

glabel D_8013DC0C
    .float 0.4

glabel D_8013DC10
    .float -1.6

glabel jtbl_8013DC14
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0

glabel jtbl_8013DC64
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784

glabel jtbl_8013DC8C
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800825BC
    .word L800825BC
    .word L800825BC
    .word L800825BC
    .word L800825BC
    .word L800825BC
    .word L800825BC
    .word L8008255C
    .word L8008255C
    .word L8008255C
    .word L8008255C
    .word L8008255C
    .word L8008255C
    .word L8008255C
    .word L8008255C
