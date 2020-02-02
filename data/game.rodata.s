.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80144D10
    .asciz "last_button=%04x\n"
    .balign 4

glabel D_80144D24
    .asciz "%08x"
    .balign 4

glabel D_80144D2C
    .asciz "%c"
    .balign 4

glabel D_80144D30
    .incbin "baserom.z64", 0xBBBED0, 0x20 

glabel D_80144D50
    .asciz "../game.c"
    .balign 4

glabel D_80144D5C
    .asciz "\xA5\xCF\xA5\xA4\xA5\xE9\xA5\xEB\xCC\xC7\xCB\xB4\xA4\xDE\xA4\xC7\xA4\xA2\xA4\xC8 %08x \xA5\xD0\xA5\xA4\xA5\xC8(game_alloc)\n"
    # EUC-JP: ハイラル滅亡まであと %08x バイト(game_alloc) | % 08x bytes (game_alloc) remaining until Hailal's demise
    .balign 4

glabel D_80144D8C
    .asciz "../game.c"
    .balign 4

glabel D_80144D98
    .asciz "../game.c"
    .balign 4

glabel D_80144DA4
    .asciz "../game.c"
    .balign 4

glabel D_80144DB0
    .asciz "../game.c"
    .balign 4

glabel D_80144DBC
    .asciz "../game.c"
    .balign 4

glabel D_80144DC8
    .asciz "\xA5\xCF\xA5\xA4\xA5\xE9\xA5\xEB\xB3\xCE\xCA\xDD\x20\xA5\xB5\xA5\xA4\xA5\xBA\xA1\xE1%u \xA5\xD0\xA5\xA4\xA5\xC8\n"
    # EUC-JP: ハイラル確保 サイズ＝%u バイト  | Hyal secured size =% u bytes
    .balign 4

glabel D_80144DE8
    .asciz "../game.c"
    .balign 4

glabel D_80144DF4
    .asciz "\xA5\xCF\xA5\xA4\xA5\xE9\xA5\xEB\xB3\xCE\xCA\xDD\xC0\xAE\xB8\xF9\n"
    # EUC-JP: ハイラル確保成功 | Success in securing hyal
    .balign 4

glabel D_80144E08
    .asciz "\xA5\xCF\xA5\xA4\xA5\xE9\xA5\xEB\xB3\xCE\xCA\xDD\xBC\xBA\xC7\xD4\n"
    # EUC-JP: ハイラル確保失敗 | Hyal securing failure
    .balign 4

glabel D_80144E1C
    .asciz "../game.c"
    .balign 4

glabel D_80144E28
    .asciz "\xA5\xCF\xA5\xA4\xA5\xE9\xA5\xEB\xB0\xEC\xBB\xFE\xB2\xF2\xCA\xFC\x21\x21\n"
    # EUC-JP: ハイラル一時解放!! | Hyal temporary release!
    .balign 4

glabel D_80144E3C
    .asciz "%c"
    .balign 4

glabel D_80144E40
    .asciz "\x1b[31m"
    .balign 4

glabel D_80144E48
    .asciz "\xA5\xE1\xA5\xE2\xA5\xEA\xA4\xAC\xC2\xAD\xA4\xEA\xA4\xDE\xA4\xBB\xA4\xF3\xA1\xA3\xA5\xCF\xA5\xA4\xA5\xE9\xA5\xEB\xA5\xB5\xA5\xA4\xA5\xBA\xA4\xF2\xB2\xC4\xC7\xBD\xA4\xCA\xBA\xC7\xC2\xE7\xC3\xCD\xA4\xCB\xCA\xD1\xB9\xB9\xA4\xB7\xA4\xDE\xA4\xB9\n"
    # EUC-JP: メモリが足りません。ハイラルサイズを可能な最大値に変更します | Not enough memory. Change Hyrule size to maximum possible
    .balign 4

glabel D_80144E88
    .asciz "(hyral=%08x max=%08x free=%08x alloc=%08x)\n"
    .balign 4

glabel D_80144EB4
    .asciz "\x1b[m"
    .balign 4

glabel D_80144EB8
    .asciz "\xA5\xCF\xA5\xA4\xA5\xE9\xA5\xEB\xBA\xC6\xB3\xCE\xCA\xDD \xA5\xB5\xA5\xA4\xA5\xBA\xA1\xE1%u \xA5\xD0\xA5\xA4\xA5\xC8\n"
    # EUC-JP: ハイラル再確保 サイズ＝%u バイト | Hyal re-allocation size =%u bytes
    .balign 4

glabel D_80144EDC
    .asciz "../game.c"
    .balign 4

glabel D_80144EE8
    .asciz "\xA5\xCF\xA5\xA4\xA5\xE9\xA5\xEB\xBA\xC6\xB3\xCE\xCA\xDD\xC0\xAE\xB8\xF9\n"
    # EUC-JP: ハイラル再確保成功 | Successful Hyal Reacquisition
    .balign 4

glabel D_80144EFC
    .asciz "\xA5\xCF\xA5\xA4\xA5\xE9\xA5\xEB\xBA\xC6\xB3\xCE\xCA\xDD\xBC\xBA\xC7\xD4\n"
    # EUC-JP: ハイラル再確保失敗 | Hyal reacquisition failure
    .balign 4

glabel D_80144F10
    .asciz "../game.c"
    .balign 4

glabel D_80144F1C
    .asciz "game \xA5\xB3\xA5\xF3\xA5\xB9\xA5\xC8\xA5\xE9\xA5\xAF\xA5\xBF\xB3\xAB\xBB\xCF\n"
    # EUC-JP: コンストラクタ開始 | Constructor start
    .balign 4

glabel D_80144F38
    .asciz "game_set_next_game_null \xBD\xE8\xCD\xFD\xBB\xFE\xB4\xD6 %d us\n"
    # EUC-JP: 処理時間 | Processing time
    .balign 4

glabel D_80144F60
    .asciz "gamealloc_init \xBD\xE8\xCD\xFD\xBB\xFE\xB4\xD6 %d us\n"
    # EUC-JP: 処理時間 | Processing time
    .balign 4

glabel D_80144F80
    .asciz "init \xBD\xE8\xCD\xFD\xBB\xFE\xB4\xD6 %d us\n"
    # EUC-JP: 処理時間 | Processing time
    .balign 4

glabel D_80144F98
    .asciz "this->cleanup"
    .balign 4

glabel D_80144FA8
    .asciz "../game.c"
    .balign 4

glabel D_80144FB4
    .asciz "\xA4\xBD\xA4\xCE\xC2\xBE\xBD\xE9\xB4\xFC\xB2\xBD \xBD\xE8\xCD\xFD\xBB\xFE\xB4\xD6 %d us\n"
    # EUC-JP: その他初期化 処理時間 | processing time
    .balign 4

glabel D_80144FD4
    .asciz "game \xA5\xB3\xA5\xF3\xA5\xB9\xA5\xC8\xA5\xE9\xA5\xAF\xA5\xBF\xBD\xAA\xCE\xBB\n"
    # EUC-JP: コンストラクタ終了 | Constructor end
    .balign 4

glabel D_80144FF0
    .asciz "game \xA5\xC7\xA5\xB9\xA5\xC8\xA5\xE9\xA5\xAF\xA5\xBF\xB3\xAB\xBB\xCF\n"
    # EUC-JP: デストラクタ開始 | Destructor start
    .balign 4

glabel D_80145008
    .asciz "this->cleanup"
    .balign 4

glabel D_80145018
    .asciz "../game.c"
    .balign 4

glabel D_80145024
    .asciz "game \xA5\xC7\xA5\xB9\xA5\xC8\xA5\xE9\xA5\xAF\xA5\xBF\xBD\xAA\xCE\xBB\n"
    # EUC-JP: デストラクタ終了 | Destructor end
    .balign 4

glabel D_8014503C
    .asciz "\xA5\xCF\xA5\xA4\xA5\xE9\xA5\xEB\xA4\xCF\xCC\xC7\xCB\xB4\xA4\xB7\xA4\xC6\xA4\xA4\xA4\xEB\n"
    # EUC-JP: ハイラルは滅亡している | Hyrule is gone
    .balign 4

glabel D_80145054
    .asciz "\xCC\xC7\xCB\xB4\xC0\xA3\xC1\xB0\xA4\xCE\xA5\xCF\xA5\xA4\xA5\xE9\xA5\xEB\xA4\xCB\xA4\xCF %d \xA5\xD0\xA5\xA4\xA5\xC8\xA4\xCE\xCD\xBE\xCE\xCF\xA4\xE2\xA4\xCA\xA4\xA4\xA1\xCA\xCC\xC7\xCB\xB4\xA4\xDE\xA4\xC7\xA4\xA2\xA4\xC8 %d \xA5\xD0\xA5\xA4\xA5\xC8\xA1\xCB\n"
    # EUC-JP: 滅亡寸前のハイラルには %d バイトの余力もない（滅亡まであと %d バイト）| Hailal on the verge of destruction has% d bytes of reserve (% d bytes left before destruction)
    .balign 4

glabel D_8014509C
    .asciz "\xA5\xCF\xA5\xA4\xA5\xE9\xA5\xEB\xA4\xCF\xCC\xC7\xCB\xB4\xA4\xB7\xA4\xC6\xA4\xB7\xA4\xDE\xA4\xC3\xA4\xBF\n"
    # EUC-JP: ハイラルは滅亡してしまった | Hyrule has perished
    .balign 4

glabel D_801450B8
    .asciz "\x1b[32m"
    .balign 4

glabel D_801450C0
    .asciz "game_alloc(%08x) %08x-%08x [%s:%d]\n"
    .balign 4

glabel D_801450E4
    .asciz "\x1b[m"
    .balign 4

glabel D_801450E8
    .float 0.833
