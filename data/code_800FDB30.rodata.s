.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8014AC00
    .asciz "\x1b[41;37m\xB6\xDB\xB5\xDE\xBB\xF6\xC2\xD6\xA1\xAA\xA5\xE1\xA5\xE2\xA5\xEA\xA5\xEA\xA1\xBC\xA5\xAF\xC8\xAF\xB8\xAB\xA1\xAA (block=%08x)\n\x1b[m"
    # EUC-JP: 緊急事態！メモリリーク発見！ | Emergency! Memory leak found!
    .balign 4

glabel D_8014AC38
    .asciz "\x1b[41;37m\xB6\xDB\xB5\xDE\xBB\xF6\xC2\xD6\xA1\xAA\xA5\xE1\xA5\xE2\xA5\xEA\xA5\xEA\xA1\xBC\xA5\xAF\xC8\xAF\xB8\xAB\xA1\xAA (block=%08x)\n\x1b[m"
    # EUC-JP: 緊急事態！メモリリーク発見！ | Emergency! Memory leak found!
    .balign 4

glabel D_8014AC70
    .asciz "\x1b[41;37m\xB6\xDB\xB5\xDE\xBB\xF6\xC2\xD6\xA1\xAA\xA5\xE1\xA5\xE2\xA5\xEA\xA5\xEA\xA1\xBC\xA5\xAF\xB8\xA1\xBD\xD0\xA1\xAA (block=%08x s=%08x e=%08x p=%08x)\n\x1b[m"
    # EUC-JP: 緊急事態！メモリリーク発見！ | Emergency! Memory leak found!
    .balign 4

glabel D_8014ACBC
    .asciz "\x1b[41;37m__osFree:\xC9\xD4\xC0\xB5\xB2\xF2\xCA\xFC(%08x)\n\x1b[m"
    # EUC-JP: 不正解放 | Unauthorized release
    .balign 4

glabel D_8014ACE0
    .asciz "\x1b[41;37m__osFree:\xC6\xF3\xBD\xC5\xB2\xF2\xCA\xFC(%08x)\n\x1b[m"
    # EUC-JP: 二重解放 | Double release
    .balign 4

glabel D_8014AD04
    .asciz "\x1b[41;37m__osFree:\xB3\xCE\xCA\xDD\xBB\xFE\xA4\xC8\xB0\xE3\xA4\xA6\xCA\xFD\xCB\xA1\xA4\xC7\xB2\xF2\xCA\xFC\xA4\xB7\xA4\xE8\xA4\xA6\xA4\xC8\xA4\xB7\xA4\xBF (%08x:%08x)\n\x1b[m"
    # EUC-JP: 確保時と違う方法で解放しようとした | Tried to release in a different way than when it was secured
    .balign 4

glabel D_8014AD48
    .asciz "\x1b[41;37m__osFree:\xC9\xD4\xC0\xB5\xB2\xF2\xCA\xFC(%08x) [%s:%d ]\n\x1b[m"
    # EUC-JP: 不正解放 | Unauthorized release
    .balign 4

glabel D_8014AD78
    .asciz "\x1b[41;37m__osFree:\xC6\xF3\xBD\xC5\xB2\xF2\xCA\xFC(%08x) [%s:%d ]\n\x1b[m"
    # EUC-JP: 二重解放 | Double release
    .balign 4

glabel D_8014ADA8
    .asciz "\x1b[41;37m__osFree:\xB3\xCE\xCA\xDD\xBB\xFE\xA4\xC8\xB0\xE3\xA4\xA6\xCA\xFD\xCB\xA1\xA4\xC7\xB2\xF2\xCA\xFC\xA4\xB7\xA4\xE8\xA4\xA6\xA4\xC8\xA4\xB7\xA4\xBF (%08x:%08x)\n\x1b[m"
    # EUC-JP: 確保時と違う方法で解放しようとした | Tried to release in a different way than when it was secured
    .balign 4

glabel D_8014ADEC
    .asciz "__osRealloc(%08x, %d)\n"
    .balign 4

glabel D_8014AE04
    .asciz "\xA5\xE1\xA5\xE2\xA5\xEA\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xA5\xB5\xA5\xA4\xA5\xBA\xA4\xAC\xCA\xD1\xA4\xEF\xA4\xE9\xA4\xCA\xA4\xA4\xA4\xBF\xA4\xE1\xA4\xCA\xA4\xCB\xA4\xE2\xA4\xB7\xA4\xDE\xA4\xBB\xA4\xF3\n"
    # EUC-JP: メモリブロックサイズが変わらないためなにもしません | Does nothing because the memory block size does not change
    .balign 4

glabel D_8014AE38
    .asciz "\xB8\xBD\xA5\xE1\xA5\xE2\xA5\xEA\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xA4\xCE\xB8\xE5\xA4\xED\xA4\xCB\xA5\xD5\xA5\xEA\xA1\xBC\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xA4\xAC\xA4\xA2\xA4\xEB\xA4\xCE\xA4\xC7\xB7\xEB\xB9\xE7\xA4\xB7\xA4\xDE\xA4\xB9\n"
    # EUC-JP: 現メモリブロックの後ろにフリーブロックがあるので結合します | Merge because there is a free block after the current memory block
    .balign 4

glabel D_8014AE74
    .asciz "\xBF\xB7\xA4\xBF\xA4\xCB\xA5\xE1\xA5\xE2\xA5\xEA\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xA4\xF2\xB3\xCE\xCA\xDD\xA4\xB7\xA4\xC6\xC6\xE2\xCD\xC6\xA4\xF2\xB0\xDC\xC6\xB0\xA4\xB7\xA4\xDE\xA4\xB9\n"
    # EUC-JP: 新たにメモリブロックを確保して内容を移動します | Allocate a new memory block and move the contents
    .balign 4

glabel D_8014AEA4
    .asciz "\xB8\xBD\xA5\xE1\xA5\xE2\xA5\xEA\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xA4\xCE\xB8\xE5\xA4\xED\xA4\xCE\xA5\xD5\xA5\xEA\xA1\xBC\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xA4\xF2\xC2\xE7\xA4\xAD\xA4\xAF\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF\n"
    # EUC-JP: 現メモリブロックの後ろのフリーブロックを大きくしました | Increased free block behind current memory block
    .balign 4

glabel D_8014AEDC
    .asciz "\xB8\xBD\xA5\xE1\xA5\xE2\xA5\xEA\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xA4\xCE\xB8\xE5\xA4\xED\xA4\xCB\xA5\xD5\xA5\xEA\xA1\xBC\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xA4\xAC\xA4\xCA\xA4\xA4\xA4\xCE\xA4\xC7\xC0\xB8\xC0\xAE\xA4\xB7\xA4\xDE\xA4\xB9\n"
    # EUC-JP: 現メモリブロックの後ろにフリーブロックがないので生成します | Generated because there is no free block after the current memory block
    .balign 4

glabel D_8014AF18
    .asciz "\xA5\xD5\xA5\xEA\xA1\xBC\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xC0\xB8\xC0\xAE\xA4\xB9\xA4\xEB\xA4\xC0\xA4\xB1\xA4\xCE\xB6\xF5\xA4\xAD\xA4\xAC\xA4\xA2\xA4\xEA\xA4\xDE\xA4\xBB\xA4\xF3\n"
    # EUC-JP: フリーブロック生成するだけの空きがありません | There is no room to generate free blocks
    .balign 4

glabel D_8014AF48
    .asciz "\xA5\xA2\xA5\xEA\xA1\xBC\xA5\xCA\xA4\xCF\xBD\xE9\xB4\xFC\xB2\xBD\xA4\xB5\xA4\xEC\xA4\xC6\xA4\xA4\xA4\xDE\xA4\xBB\xA4\xF3\n"
    # EUC-JP: アリーナは初期化されていません | Arena is not initalized
    .balign 4

glabel D_8014AF68
    .asciz "\xA5\xA2\xA5\xEA\xA1\xBC\xA5\xCA\xA4\xCE\xC6\xE2\xCD\xC6 (0x%08x)\n"
    # EUC-JP: アリーナの内容 | Arena contents
    .balign 4

glabel D_8014AF84
    .asciz "\xA5\xE1\xA5\xE2\xA5\xEA\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xC8\xCF\xB0\xCF status \xA5\xB5\xA5\xA4\xA5\xBA  \x5B\xBB\xFE\xB9\xEF  s ms us ns: TID:src:\xB9\xD4]\n"
    # EUC-JP: メモリブロック範囲 status サイズ [時刻 s ms us ns: TID:src:行] | Memory block range status size [time s ms us ns: TID: src: line]
    .balign 4

glabel D_8014AFC8
    .asciz "%08x-%08x%c %s %08x"
    .balign 4

glabel D_8014AFDC
    .asciz "\xB6\xF5\xA4\xAD"
    # EUC-JP: 空き | Free
    .balign 4

glabel D_8014AFE4
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Secure
    .balign 4
   
glabel D_8014AFEC
    .asciz " [%016llu:%2d:%s:%d]"
    .balign 4

glabel D_8014B004
    .asciz "**NULL**"
    .balign 4

glabel D_8014B010
    .asciz "\n"
    .balign 4

glabel D_8014B014
    .asciz "%08x Block Invalid\n"
    .balign 4

glabel D_8014B028
    .asciz "\xB3\xCE\xCA\xDD\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xA5\xB5\xA5\xA4\xA5\xBA\xA4\xCE\xB9\xE7\xB7\xD7 0x%08x \xA5\xD0\xA5\xA4\xA5\xC8\n"
    # EUC-JP: 確保ブロックサイズの合計 0x%08x バイト | Total reserved block size 0x% 08x bytes
    .balign 4

glabel D_8014B050
    .asciz "\xB6\xF5\xA4\xAD\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xA5\xB5\xA5\xA4\xA5\xBA\xA4\xCE\xB9\xE7\xB7\xD7 0x%08x \xA5\xD0\xA5\xA4\xA5\xC8\n"
    # EUC-JP: 空きブロックサイズの合計 0x%08x バイト | Total free block size 0x% 08x bytes
    .balign 4

glabel D_8014B078
    .asciz "\xBA\xC7\xC2\xE7\xB6\xF5\xA4\xAD\xA5\xD6\xA5\xED\xA5\xC3\xA5\xAF\xA5\xB5\xA5\xA4\xA5\xBA   0x%08x \xA5\xD0\xA5\xA4\xA5\xC8\n"
    # EUC-JP: 最大空きブロックサイズ 0x%08x バイト | Maximum free block size 0x% 08x bytes
    .balign 4

glabel D_8014B0A0
    .asciz "ARENA INFO (0x%08x)\n"
    .balign 4

glabel D_8014B0B8
    .asciz "Arena is uninitalized\n"
    .balign 4

glabel D_8014B0D0
    .asciz "Memory Block Region status size\n"
    .balign 4

glabel D_8014B0F4
    .asciz "%08x-%08x%c %s %08x"
    .balign 4

glabel D_8014B108
    .asciz "F"
    .balign 4

glabel D_8014B10C
    .asciz "A"
    .balign 4

glabel D_8014B110
    .asciz "\n"
    .balign 4

glabel D_8014B114
    .asciz "%08x Block Invalid\n"
    .balign 4

glabel D_8014B128
    .asciz "Total Alloc Block Size  %08x\n"
    .balign 4

glabel D_8014B148
    .asciz "Total Free Block Size   %08x\n"
    .balign 4

glabel D_8014B168
    .asciz "Largest Free Block Size %08x\n"
    .balign 4

glabel D_8014B188
    .asciz "\xA5\xA2\xA5\xEA\xA1\xBC\xA5\xCA\xA4\xCE\xC6\xE2\xCD\xC6\xA4\xF2\xA5\xC1\xA5\xA7\xA5\xC3\xA5\xAF\xA4\xB7\xA4\xC6\xA4\xA4\xA4\xDE\xA4\xB9\xA1\xA5\xA1\xA5\xA1\xA5 (%08x)\n"
    # EUC-JP: アリーナの内容をチェックしています．．． | Checking the contents of the arena. . .
    .balign 4

glabel D_8014B1BC
    .asciz "\x1b[41;37m\xA4\xAA\xA4\xAA\xA4\xC3\xA4\xC8\xA1\xAA\xA1\xAA (%08x %08x)\n\x1b[m"
    # EUC-JP: おおっと！！ | Oops!!
    .balign 4

glabel D_8014B1E4
    .asciz "\xA5\xA2\xA5\xEA\xA1\xBC\xA5\xCA\xA4\xCF\xA4\xDE\xA4\xC0\xA1\xA2\xA4\xA4\xA4\xB1\xA4\xBD\xA4\xA6\xA4\xC7\xA4\xB9\n"
    # EUC-JP: アリーナはまだ、いけそうです | The arena is still going well
    .balign 4
