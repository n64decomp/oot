.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801462D0
    .asciz "\xA3\xB8\xA3\xCD\xA5\xD0\xA5\xA4\xA5\xC8\xB0\xCA\xBE\xE5\xA4\xCE\xA5\xE1\xA5\xE2\xA5\xEA\xA4\xAC\xC5\xEB\xBA\xDC\xA4\xB5\xA4\xEC\xA4\xC6\xA4\xA4\xA4\xDE\xA4\xB9\n"
    # EUC-JP: ８Ｍバイト以上のメモリが搭載されています | 8MB or more memory is installed
    .balign 4

glabel D_801462FC
    .asciz "RAM 8M mode (N64DD\xC2\xD0\xB1\xFE)\n"
    # EUC-JP: 対応 | Correspondence
    .balign 4

glabel D_80146318
    .asciz "\xA4\xB3\xA4\xCE\xA5\xD0\xA1\xBC\xA5\xB8\xA5\xE7\xA5\xF3\xA4\xCE\xA5\xDE\xA1\xBC\xA5\xB8\xA5\xF3\xA4\xCF\x20\x25\x64\x4B\x20\xA5\xD0\xA5\xA4\xA5\xC8\xA4\xC7\xA4\xB9\n"
    # EUC-JP: このバージョンのマージンは %dK バイトです | The margin for this version is% dK bytes
    .balign 4

glabel D_80146344
    .asciz "RAM4M mode\n"
    .balign 4

glabel D_80146350
    .asciz "../sys_cfb.c"
    .balign 4

glabel D_80146360
    .asciz "\xA5\xB7\xA5\xB9\xA5\xC6\xA5\xE0\xA4\xAC\xBB\xC8\xCD\xD1\xA4\xB9\xA4\xEB\xBA\xC7\xBD\xAA\xA5\xA2\xA5\xC9\xA5\xEC\xA5\xB9\xA4\xCF %08x \xA4\xC7\xA4\xB9\n"
    # EUC-JP: システムが使用する最終アドレスは %08x です | The final address used by the system is% 08x
    .balign 4

glabel D_8014638C
    .asciz "\xA5\xD5\xA5\xEC\xA1\xBC\xA5\xE0\xA5\xD0\xA5\xC3\xA5\xD5\xA5\xA1\xA4\xCE\xA5\xA2\xA5\xC9\xA5\xEC\xA5\xB9\xA4\xCF %08x \xA4\xC8 %08x \xA4\xC7\xA4\xB9\n"
    # EUC-JP: フレームバッファのアドレスは %08x と %08x です | Frame buffer addresses are% 08x and% 08x
    .balign 4
