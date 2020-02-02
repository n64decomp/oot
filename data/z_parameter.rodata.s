.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013DCF0
    .asciz "\xA3\xC1\xA3\xCC\xA3\xD0\xA3\xC8\xA3\xC1\xA1\xBC\xA3\xD4\xA3\xD9\xA3\xD0\xA3\xC5\xA1\xE1%d  LAST_TIME_TYPE=%d\n"
    # EUC-JP: ＡＬＰＨＡーＴＹＰＥ＝
    .balign 4

glabel D_8013DD20
    .asciz "a_alpha=%d, c_alpha=%d   \xA2\xAA   "
    # EUC-JP: →
    .balign 4

glabel D_8013DD40
    .asciz "a_alpha=%d, c_alpha=%d\n"
    .balign 4

glabel D_8013DD58
    .asciz "***(i=%d)***  "
    .balign 4

glabel D_8013DD68
    .asciz "????????  alpha_change( 50 );  ?????\n"
    .balign 4

glabel D_8013DD90
    .asciz "game_play->fade_direction || game_play->fbdemo_wipe_modem"
    .balign 4

glabel D_8013DDCC
    .asciz "\xA5\xDC\xA5\xBF\xA5\xF3\xC9\xBD\xBC\xA8\xB4\xD8\xB7\xB8\xA5\xC7\xA1\xBC\xA5\xBF\xC0\xDF\xC4\xEA scene_data_ID=%d\n"
    # EUC-JP: ボタン表示関係データ設定 | Button display data setting
    .balign 4

glabel D_8013DDF8
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013DE00
    .asciz "parameter->button_status = %x,%x,%x\n"
    .balign 4

glabel D_8013DE28
    .asciz "h_gage=%d, b_button=%d, a_button=%d, c_bottle=%d\n"
    .balign 4

glabel D_8013DE5C
    .asciz "c_warasibe=%d, c_hook=%d, c_ocarina=%d, c_warp=%d\n"
    .balign 4

glabel D_8013DE90
    .asciz "c_sunmoon=%d, m_wind=%d, m_magic=%d, another=%d\n"
    .balign 4

glabel D_8013DEC4
    .asciz "\x1b[m"
    .balign 4

glabel D_8013DEC8
    .asciz "Register_Item_Pt(%d)=%d\n"
    .balign 4

glabel D_8013DEE4
    .asciz "Register_Item_Pt(%d)=%d\n"
    .balign 4

glabel D_8013DF00
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013DF14
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013DF28
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013DF30
    .asciz "item_get_setting=%d  pt=%d  z=%x\n"
    .balign 4

glabel D_8013DF54
    .asciz "\x1b[m"
    .balign 4

glabel D_8013DF58
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013DF60
    .asciz "\xC9\xF5\xB0\xF5 = %x\n"
    # EUC-JP: 封印 | Sealed?
    .balign 4

glabel D_8013DF6C
    .asciz "\x1b[m"
    .balign 4

glabel D_8013DF70
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013DF78
    .asciz "\xB3\xDA\xC9\xE8 = %x\n"
    # EUC-JP: 楽譜 | Musical score
    .balign 4

glabel D_8013DF84
    .asciz "\xB3\xDA\xC9\xE8 = %x (%x) (%x)\n"
    # EUC-JP: 楽譜 | Musical score
    .balign 4

glabel D_8013DF9C
    .asciz "\x1b[m"
    .balign 4

glabel D_8013DFA0
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013DFA8
    .asciz "\xC0\xBA\xCE\xEE\xC0\xD0 = %x\n"
    # EUC-JP: 精霊石 | Spiritual stone
    .balign 4

glabel D_8013DFB8
    .asciz "\x1b[m"
    .balign 4

glabel D_8013DFBC
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013DFC4
    .asciz "\xA5\xA2\xA5\xA4\xA5\xC6\xA5\xE0 = %x\n"
    # EUC-JP: アイテム | Item
    .balign 4

glabel D_8013DFD4
    .asciz "\x1b[m"
    .balign 4

glabel D_8013DFD8
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013DFE0
    .asciz "\xA3\xCE\xA5\xB3\xA5\xA4\xA5\xF3 = %x(%d)\n"
    # EUC-JP: アイテム | N coins?
    .balign 4    

glabel D_8013DFF4
    .asciz "\x1b[m"
    .balign 4

glabel D_8013DFF8
    .asciz "\xA5\xC7\xA5\xAF\xA4\xCE\xBC\xC2 %d(%d)=%d  BS_count=%d\n"
    # EUC-JP: デクの実 | Deku Seeds
    .balign 4

glabel D_8013E01C
    .asciz " \xC7\xFA\xC3\xC6  \xC7\xFA\xC3\xC6  \xC7\xFA\xC3\xC6  \xC7\xFA\xC3\xC6 \xC7\xFA\xC3\xC6   \xC7\xFA\xC3\xC6 \xC7\xFA\xC3\xC6 \n"
    # EUC-JP: 爆弾 爆弾 爆弾 爆弾 爆弾 爆弾 爆弾 | Bomb x 7
    .balign 4

glabel D_8013E048
    .asciz "%d\xCB\xDC  Item_MaxGet=%d\n"
    # EUC-JP: 本 | Book?
    .balign 4

glabel D_8013E060
    .asciz "\xB2\xF3\xC9\xFC\xA5\xCF\xA1\xBC\xA5\xC8\xB2\xF3\xC9\xFC\xA5\xCF\xA1\xBC\xA5\xC8\xB2\xF3\xC9\xFC\xA5\xCF\xA1\xBC\xA5\xC8\n"
    # EUC-JP: 回復ハート回復ハート回復ハート | Recovery Heart x 3
    .balign 4

glabel D_8013E080
    .asciz "Item_Pt(1)=%d Item_Pt(2)=%d Item_Pt(3)=%d   \xB6\xF5\xC9\xD3=%d   \xC3\xE6\xCC\xA3=%d\n"
    # EUC-JP: 空瓶    中味 | Empty bottle      Content
    .balign 4

glabel D_8013E0C0
    .asciz "Item_Register(%d)=%d  %d\n"    
    .balign 4

glabel D_8013E0DC
    .asciz "\x1b[32m"
    .balign 4

glabel D_8013E0E4
    .asciz "item_get_non_setting=%d  pt=%d  z=%x\n"
    .balign 4

glabel D_8013E10C
    .asciz "\x1b[m"
    .balign 4

glabel D_8013E110
    .asciz "\xCB\xE2\xCB\xA1\xA4\xCE\xC4\xDB Get_Inf_Table( 25, 0x0100)=%d\n"
    # EUC-JP: 魔法の壷 | Magic potion
    .balign 4

glabel D_8013E138
    .asciz "\nItem_Register(%d)\n"
    .balign 4

glabel D_8013E14C
    .asciz "\xA5\xA2\xA5\xA4\xA5\xC6\xA5\xE0\xBE\xC3\xB5\xEE(%d)\n"
    # EUC-JP: アイテム消去 | Delete item
    .balign 4

glabel D_8013E160
    .asciz "item_no=%x,  c_no=%x,  Pt=%x  Item_Register=%x\n"
    .balign 4

glabel D_8013E190
    .asciz "\xCD\xC5\xC0\xBA\xBB\xC8\xCD\xD1\xA1\xE1%d\n"
    # EUC-JP: 妖精使用＝ | Fairy use = 
    .balign 4

glabel D_8013E1A0
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E1B4
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E1C8
    .asciz "\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6  \xC1\xFD\xB8\xBA=%d (now=%d, max=%d)  \xA1\xF6\xA1\xF6\xA1\xF6"
    # EUC-JP: ***** ***
    .balign 4  

glabel D_8013E1F8
    .asciz "\xA5\xCF\xA1\xBC\xA5\xC8\xB8\xBA\xBE\xAF\xC8\xBE\xCA\xAC\xA1\xAA\xA1\xAA\xA1\xE1\x25\x64\n"
    # EUC-JP: ハート減少半分！！＝%d | Hearts reduced by half =%d
    .balign 4

glabel D_8013E210
    .asciz "  \xA5\xE9\xA5\xA4\xA5\xD5=%d  \xA1\xF6\xA1\xF6\xA1\xF6  %d  \xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\xA1\xF6\n"
    # EUC-JP: ライフ=%d ＊＊＊ %d ＊＊＊＊＊＊ | Life =% d ***% d *****
    .balign 4

glabel D_8013E238
    .asciz "\xA5\xA2\xA5\xA4\xA5\xC6\xA5\xE0 = (%d)    \xBF\xF4 = (%d + %d)  "
    # EUC-JP: アイテム | Item
    .balign 4

glabel D_8013E25C
    .asciz "\xB9\xE7\xB7\xD7 = (%d)\n"
    # EUC-JP: 合計 | Total
    .balign 4

glabel D_8013E26C
    .asciz "\xC3\xDF\xC5\xC5  MAGIC_NOW=%d (%d)\n"
    # EUC-JP: 蓄電 | Storage
    .balign 4

glabel D_8013E288
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E29C
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E2B0
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E2C4
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E2D8
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E2EC
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E300
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E314
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E328
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E33C
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E350
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E364
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E378
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E38C
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E3A0
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E3B4
    .asciz "EVENT_INF=%x\n"
    .balign 4

glabel D_8013E3C4
    .asciz "event_xp[1]=%d,  event_yp[1]=%d  TOTAL_EVENT_TM=%d\n"
    .balign 4

glabel D_8013E3F8
    .asciz "TOTAL_EVENT_TM=%d\n"
    .balign 4

glabel D_8013E40C
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E420
    .asciz "J_N=%x J_N=%x\n"
    .balign 4

glabel D_8013E430
    .asciz "J_N=%x J_N=%x\n"
    .balign 4

glabel D_8013E440
    .asciz "J_N=%x J_N=%x\n"
    .balign 4

glabel D_8013E450
    .asciz "case 50 : alpha=%d  alpha1=%d\n"
    .balign 4

glabel D_8013E470
    .asciz "now_life=%d  max_life=%d\n"
    .balign 4

glabel D_8013E48C
    .asciz "S_Private.now_life=%d  S_Private.max_life=%d\n"
    .balign 4

glabel D_8013E4BC
    .asciz "\xA5\xEB\xA5\xD4\xA1\xBC\xBF\xF4\xA3\xCD\xA3\xC1\xA3\xD8 = %d\n"
    # EUC-JP: ルピー数ＭＡＸ | Max rupee number
    .balign 4

glabel D_8013E4D4
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013E4DC
    .asciz "\xCB\xE2\xCB\xA1\xA5\xB9\xA5\xBF\xA1\xBC\xA8\xA1\xA8\xA1\xA8\xA1\xA8\xA1\xA8\xA1\xA5\xC8\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\xA1\xAA\n"
    # EUC-JP: 魔法スター─────ト！！！！！！！！！ | Magical start?
    .balign 4

glabel D_8013E508
    .asciz "MAGIC_MAX=%d\n"
    .balign 4

glabel D_8013E518
    .asciz "MAGIC_NOW=%d\n"
    .balign 4

glabel D_8013E528
    .asciz "Z_MAGIC_NOW_NOW=%d\n"
    .balign 4

glabel D_8013E53C
    .asciz "Z_MAGIC_NOW_MAX=%d\n"
    .balign 4

glabel D_8013E550
    .asciz "\x1b[m"
    .balign 4

glabel jtbl_8013E554
    .word L800828A0
    .word L800828A0
    .word L800829DC
    .word L80082A74
    .word L80082B5C
    .word L80082BDC
    .word L80082C9C
    .word L800828A0
    .word L80082D04
    .word L80082DD0
    .word L80082EA0
    .word L80082F70
    .word L80083038

glabel jtbl_8013E588
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64
    .word L80082C64

glabel jtbl_8013E5D8
    .word L800877B8
    .word L8008782C
    .word L800877B8
    .word L800878A0
    .word L800878F8
    .word L8008796C

glabel jtbl_8013E5F0
    .word L80087B04
    .word L80087B1C
    .word L80087BA0
    .word L80087BA0
    .word L80087DF8
    .word L80087BA0
    .word L80087E24
    .word L800879F4
    .word L80087A6C
    .word L80088208

glabel D_8013E618
    .float 10000

glabel jtbl_8013E61C
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0

glabel D_8013E654
    .float 10000

glabel jtbl_8013E658
    .word L8008C608
    .word L8008C644
    .word L8008C730
    .word L8008C884
    .word L8008C688
    .word L8008C6CC
    .word L8008C730
    .word L8008C884
    .word L8008CCEC
    .word L8008CC7C
    .word L8008C688
    .word L8008C6CC
    .word L8008CA60
    .word L8008CB98
    .word L8008CCE0

glabel jtbl_8013E694
    .word L8008CD1C
    .word L8008CD6C
    .word L8008CDB8
    .word L8008CF2C
    .word L8008D1EC
    .word L8008D1C8
    .word L8008CD1C
    .word L8008CD6C
    .word L8008CDB8
    .word L8008CF2C

glabel jtbl_8013E6BC
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804

glabel jtbl_8013E6F0
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C

glabel D_8013E740
    .float 31400

glabel D_8013E744
    .float 15700

glabel D_8013E748
    .float -15700

glabel D_8013E74C
    .float 31400

glabel D_8013E750
    .float 31400

glabel D_8013E754
    .float 15700

glabel D_8013E758
    .float -15700

glabel D_8013E75C
    .float 31400

glabel D_8013E760
    .float 10430.378
