.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801457B0
    .asciz "%2d %d serialMsgQ\xA5\xED\xA5\xC3\xA5\xAF\xC2\xD4\xA4\xC1         %08x %08x          %08x\n"
    # EUC-JP: ロック待ち | Waiting for lock
    .balign 4

glabel D_801457F0
    .asciz "%2d %d serialMsgQ\xA4\xF2\xA5\xED\xA5\xC3\xA5\xAF\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF                     %08x\n"
    # EUC-JP: をロックしました | Locked
    .balign 4

glabel D_8014582C
    .asciz "%2d %d serialMsgQ\xA5\xED\xA5\xC3\xA5\xAF\xB2\xF2\xBD\xFC\xA4\xB7\xA4\xDE\xA4\xB9   %08x %08x %08x\n"
    # EUC-JP: ロック解除します | Unlock
    .balign 4

glabel D_80145860
    .asciz "%2d %d serialMsgQ\xA5\xED\xA5\xC3\xA5\xAF\xB2\xF2\xBD\xFC\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF %08x %08x %08x\n"
    # EUC-JP: ロック解除しました | Unlocked
    .balign 4

glabel D_80145894
    .asciz "\x1b[33m"
    .balign 4

glabel D_8014589C
    .asciz "padmgr: %d\xA5\xB3\xA5\xF3: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_801458B0
    .asciz "\xBF\xB6\xC6\xB0\xA5\xD1\xA5\xC3\xA5\xAF \xA4\xD6\xA4\xEB\xA4\xD6\xA4\xEB\xA4\xD6\xA4\xEB\xA4\xD6\xA4\xEB"
    # EUC-JP: 振動パック ぶるぶるぶるぶる | Vibration pack jumble jumble?
    .balign 4

glabel D_801458CC
    .asciz "\x1b[m"
    .balign 4

glabel D_801458D0
    .asciz "\x1b[33m"
    .balign 4

glabel D_801458D8
    .asciz "padmgr: %d\xA5\xB3\xA5\xF3: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_801458EC
    .asciz "\xBF\xB6\xC6\xB0\xA5\xD1\xA5\xC3\xA5\xAF\xA4\xC7\xC4\xCC\xBF\xAE\xA5\xA8\xA5\xE9\xA1\xBC\xA4\xAC\xC8\xAF\xC0\xB8\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF"
    # EUC-JP: 振動パックで通信エラーが発生しました | A communication error has occurred with the vibraton pack
    .balign 4

glabel D_80145914
    .asciz "\x1b[m"
    .balign 4

glabel D_80145918
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145920
    .asciz "padmgr: %d\xA5\xB3\xA5\xF3: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145934
    .asciz "\xBF\xB6\xC6\xB0\xA5\xD1\xA5\xC3\xA5\xAF\x20\xC4\xE4\xBB\xDF"
    # EUC-JP: 振動パック 停止 | Stop vibration pack
    .balign 4

glabel D_80145944
    .asciz "\x1b[m"
    .balign 4

glabel D_80145948
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145950
    .asciz "padmgr: %d\xA5\xB3\xA5\xF3: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145964
    .asciz "\xBF\xB6\xC6\xB0\xA5\xD1\xA5\xC3\xA5\xAF\xA4\xC7\xC4\xCC\xBF\xAE\xA5\xA8\xA5\xE9\xA1\xBC\xA4\xAC\xC8\xAF\xC0\xB8\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF"
    # EUC-JP: 振動パックで通信エラーが発生しました | A communication error has occurred with the vibration pack
    .balign 4    

glabel D_8014598C
    .asciz "\x1b[m"
    .balign 4

glabel D_80145990
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145998
    .asciz "padmgr: %d\xA5\xB3\xA5\xF3: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_801459AC
    .asciz "\xBF\xB6\xC6\xB0\xA5\xD1\xA5\xC3\xA5\xAF\xA4\xAC\xC8\xB4\xA4\xAB\xA4\xEC\xA4\xBF\xA4\xE8\xA4\xA6\xA4\xC7\xA4\xB9"
    # EUC-JP: 振動パックが抜かれたようです | Vibration pack seems to be pulled out
    .balign 4

glabel D_801459CC
    .asciz "\x1b[m"
    .balign 4

glabel D_801459D0
    .asciz "\x1b[33m"
    .balign 4

glabel D_801459D8
    .asciz "padmgr: %d\xA5\xB3\xA5\xF3: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_801459EC
    .asciz "\xBF\xB6\xC6\xB0\xA5\xD1\xA5\xC3\xA5\xAF\xA4\xC7\xA4\xCF\xA4\xCA\xA4\xA4\xA5\xB3\xA5\xF3\xA5\xC8\xA5\xED\xA1\xBC\xA5\xE9\xA5\xD1\xA5\xC3\xA5\xAF\xA4\xAC\xC8\xB4\xA4\xAB\xA4\xEC\xA4\xBF\xA4\xE8\xA4\xA6\xA4\xC7\xA4\xB9"
    # EUC-JP: 振動パックではないコントローラパックが抜かれたようです | It seems that a controller pack that is not a vibration pack was pulled out
    .balign 4

glabel D_80145A24
    .asciz "\x1b[m"
    .balign 4

glabel D_80145A28
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145A30
    .asciz "padmgr: %d\xA5\xB3\xA5\xF3: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145A44
    .asciz "\xBF\xB6\xC6\xB0\xA5\xD1\xA5\xC3\xA5\xAF\xA4\xF2\xC7\xA7\xBC\xB1\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF"
    # EUC-JP: 振動パックを認識しました | Recognized vibration pack
    .balign 4

glabel D_80145A60
    .asciz "\x1b[m"
    .balign 4

glabel D_80145A64
    .asciz "../padmgr.c"
    .balign 4

glabel D_80145A70
    .asciz "++errcnt = %d\n"
    .balign 4

glabel D_80145A80
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145A88
    .asciz "padmgr: %d\xA5\xB3\xA5\xF3: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145A9C
    .asciz "\xA5\xB3\xA5\xF3\xA5\xC8\xA5\xED\xA1\xBC\xA5\xE9\xA5\xD1\xA5\xC3\xA5\xAF\xA4\xCE\xC4\xCC\xBF\xAE\xA5\xA8\xA5\xE9\xA1\xBC"
    # EUC-JP: コントローラパックの通信エラー | Controller pack communication error
    .balign 4

glabel D_80145ABC
    .asciz "\x1b[m"
    .balign 4

glabel D_80145AC0
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145AC8
    .asciz "padmgr: %d\xA5\xB3\xA5\xF3: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145ADC
    .asciz "\xBF\xB6\xC6\xB0\xA5\xD1\xA5\xC3\xA5\xAF \xC4\xE4\xBB\xDF"
    # EUC-JP:  振動パック 停止 | Stop vibration pack
    .balign 4

glabel D_80145AEC
    .asciz "\x1b[m"
    .balign 4

glabel D_80145AF0
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145AF8
    .asciz "padmgr: %d\xA5\xB3\xA5\xF3: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145B0C
    .asciz "\xC7\xA7\xBC\xB1\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF"
    # EUC-JP: 認識しました | Recognized
    .balign 4

glabel D_80145B1C
    .asciz "\x1b[m"
    .balign 4

glabel D_80145B20
    .asciz "../padmgr.c"
    .balign 4

glabel D_80145B2C
    .asciz "this->Key_switch[i] = %d\n"
    .balign 4

glabel D_80145B48
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145B50
    .asciz "padmgr: %d\xA5\xB3\xA5\xF3: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145B64
    .asciz "\xA5\xAA\xA1\xBC\xA5\xD0\xA1\xBC\xA5\xE9\xA5\xF3\xA5\xA8\xA5\xE9\xA1\xBC\xA4\xAC\xC8\xAF\xC0\xB8"
    # EUC-JP: オーバーランエラーが発生 | Overrun error occurred
    .balign 4

glabel D_80145B80
    .asciz "\x1b[m"
    .balign 4

glabel D_80145B84
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145B8C
    .asciz "padmgr: %d\xA5\xB3\xA5\xF3: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145BA0
    .asciz "\xB1\xFE\xC5\xFA\xA4\xB7\xA4\xDE\xA4\xBB\xA4\xF3"
    # EUC-JP: 応答しません | Do not respond?
    .balign 4

glabel D_80145BB0
    .asciz "\x1b[m"
    .balign 4

glabel D_80145BB4
    .asciz "../padmgr.c"
    .balign 4

glabel D_80145BC0
    .asciz "padnow1->errno = %x\n"
    .balign 4

glabel D_80145BD8
    .asciz "../padmgr.c"
    .balign 4

glabel D_80145BE4
    .asciz "../padmgr.c"
    .balign 4

glabel D_80145BF0
    .asciz "this->pad_status[i].type = %x\n"
    .balign 4

glabel D_80145C10
    .asciz "\xC3\xCE\xA4\xE9\xA4\xCA\xA4\xA4\xBC\xEF\xCE\xE0\xA4\xCE\xA5\xB3\xA5\xF3\xA5\xC8\xA5\xED\xA1\xBC\xA5\xE9\xA4\xAC\xC0\xDC\xC2\xB3\xA4\xB5\xA4\xEC\xA4\xC6\xA4\xA4\xA4\xDE\xA4\xB9\n"
    # EUC-JP: 知らない種類のコントローラが接続されています | An unknown type of controller is connected
    .balign 4

glabel D_80145C40
    .asciz "padmgr_HandlePreNMI()\n"
    .balign 4

glabel D_80145C58
    .asciz "\xA5\xB3\xA5\xF3\xA5\xC8\xA5\xED\xA1\xBC\xA5\xE9\xA5\xB9\xA5\xEC\xA5\xC3\xA5\xC9\xBC\xC2\xB9\xD4\xB3\xAB\xBB\xCF\n"
    # EUC-JP: コントローラスレッド実行開始 | Start of controller thread execution
    .balign 4

glabel D_80145C78
    .asciz "\xA5\xB3\xA5\xF3\xA5\xC8\xA5\xED\xA1\xBC\xA5\xE9\xA5\xB9\xA5\xEC\xA5\xC3\xA5\xC9\xA5\xA4\xA5\xD9\xA5\xF3\xA5\xC8\xC2\xD4\xA4\xC1 %lld\n"    
    # EUC-JP: コントローラスレッドイベント待ち | Waiting for controller thread event
    .balign 4

glabel D_80145CA0
    .asciz "msg"
    .balign 4

glabel D_80145CA4
    .asciz "../padmgr.c"
    .balign 4

glabel D_80145CB0
    .asciz "padmgr_HandleRetraceMsg START %lld\n"
    .balign 4

glabel D_80145CD4
    .asciz "padmgr_HandleRetraceMsg END   %lld\n"
    .balign 4

glabel D_80145CF8
    .asciz "\xA5\xB3\xA5\xF3\xA5\xC8\xA5\xED\xA1\xBC\xA5\xE9\xA5\xB9\xA5\xEC\xA5\xC3\xA5\xC9\xBC\xC2\xB9\xD4\xBD\xAA\xCE\xBB\n"
    .balign 4

glabel D_80145D18
    .asciz "\xA5\xD1\xA5\xC3\xA5\xC9\xA5\xDE\xA5\xCD\xA1\xBC\xA5\xB8\xA5\xE3\xBA\xEE\xC0\xAE padmgr_Create()\n"
    # EUC-JP: パッドマネージャ作成 | Create pad manager
    .balign 4
