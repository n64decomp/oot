.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013BD40
    .asciz "MARKER_SOI\n"
    .balign 4

glabel D_8013BD4C
    .asciz "MARKER_APP0 %d\n"
    .balign 4

glabel D_8013BD5C
    .asciz "MARKER_APP1 %d\n"
    .balign 4

glabel D_8013BD6C
    .asciz "MARKER_APP2 %d\n"
    .balign 4

glabel D_8013BD7C
    .asciz "MARKER_DQT %d %d %02x\n"
    .balign 4

glabel D_8013BD94
    .asciz "MARKER_DHT %d %d %02x\n"
    .balign 4

glabel D_8013BDAC
    .asciz "MARKER_DRI %d\n"
    .balign 4

glabel D_8013BDBC
    .asciz "MARKER_SOF   %d \xC0\xBA\xC5\xD9\x25\x30\x32\x78\x20\xBF\xE2\xC4\xBE\x25\x64\x20\xBF\xE5\xCA\xBF\x25\x64\x20\x63\x6F\x6D\x70\x6F\x25\x30\x32\x78\x20\x28\x31\x3A\x59\x29\x25\x64\x20\x28\x48\x30\x3D\x32\x2C\x56\x30\x3D\x31\x28\x34\x32\x32\x29\x20\x6F\x72\x20\x32\x28\x34\x32\x30\x29\x29\x25\x30\x32\x78\x20\x28\xCE\xCC\xBB\xD2\xB2\xBD\xA5\xC6\xA1\xBC\xA5\xD6\xA5\xEB\x29\x25\x30\x32\x78\x20\x28\x32\x3A\x43\x62\x29\x25\x64\x20\x28\x48\x31\x3D\x31\x2C\x56\x31\x3D\x31\x29\x25\x30\x32\x78\x20\x28\xCE\xCC\xBB\xD2\xB2\xBD\xA5\xC6\xA1\xBC\xA5\xD6\xA5\xEB\x29\x25\x30\x32\x78\x20\x28\x33\x3A\x43\x72\x29\x25\x64\x20\x28\x48\x32\x3D\x31\x2C\x56\x32\x3D\x31\x29\x25\x30\x32\x78\x20\x28\xCE\xCC\xBB\xD2\xB2\xBD\xA5\xC6\xA1\xBC\xA5\xD6\xA5\xEB\x29\x25\x30\x32\x78\n"
    # EUC-JP: 精度%02x 垂直%d 水平%d compo%02x (1:Y)%d (H0=2,V0=1(422) or 2(420))%02x (量子化テーブル)%02x (2:Cb)%d (H1=1,V1=1)%02x (量子化テーブル)%02x (3:Cr)%d (H2=1,V2=1)%02x (量子化テーブル)%02x | Accuracy% 02x Vertical% d Horizontal% d compo% 02x (1: Y)% d (H0 = 2, V0 = 1 (422) or 2 (420))% 02x (quantization table)% 02x (2: Cb) % d (H1 = 1, V1 = 1)% 02x (quantization table)% 02x (3: Cr)% d (H2 = 1, V2 = 1)% 02x (quantization table)% 02x
    .balign 4

glabel D_8013BE88
    .asciz "MARKER_SOS %d\n"
    .balign 4

glabel D_8013BE98
     .asciz "MARKER_EOI\n"
    .balign 4

glabel D_8013BEA4
    .asciz "\xA5\xDE\xA1\xBC\xA5\xAB\xA1\xBC\xC9\xD4\xCC\xC0 %02x\n"
    # EUC-JP: マーカー不明 | Unknown marker
    .balign 4

glabel D_8013BEB8
    .asciz "worksize >= sizeof(JPEGWork) + MB_SIZE * (PROC_OF_MBS - 1)"
    .balign 4

glabel D_8013BEF4
    .asciz "../z_jpeg.c"
    .balign 4

glabel D_8013BF00
    .asciz "*** \x66\x69\x66\x6F\xA5\xD0\xA5\xC3\xA5\xD5\xA5\xA1\xA4\xCE\xC6\xB1\xB4\xFC\xC2\xD4\xA4\xC1 time = %6.3f ms ***\n"
    # EUC-JP: fifoバッファの同期待ち | Wait for synchronization of fifo buffer
    .balign 4

glabel D_8013BF30
    .asciz "*** \xB3\xC6\xA5\xBB\xA5\xB0\xA5\xE1\xA5\xF3\xA5\xC8\xA4\xCE\xA5\xDE\xA1\xBC\xA5\xAB\xA1\xBC\xA4\xCE\xA5\xC1\xA5\xA7\xA5\xC3\xA5\xAF time = %6.3f ms ***\n"
    # EUC-JP: 各セグメントのマーカーのチェック | Check markers for each segment
    .balign 4

glabel D_8013BF6C
    .asciz "*** \xCE\xCC\xBB\xD2\xB2\xBD\xA5\xC6\xA1\xBC\xA5\xD6\xA5\xEB\xBA\xEE\xC0\xAE time = %6.3f ms ***\n"
    # EUC-JP: 量子化テーブル作成 | Create quantization table
    .balign 4

glabel D_8013BF98
    .asciz "Error : Cant' make huffman table.\n"
    .balign 4

glabel D_8013BFBC
    .asciz "Error : Cant' make huffman table.\n"
    .balign 4

glabel D_8013BFE0
    .asciz "Error : Cant' make huffman table.\n"
    .balign 4

glabel D_8013C004
    .asciz "Error : Cant' make huffman table.\n"
    .balign 4

glabel D_8013C028
    .asciz "Error : Cant' make huffman table.\n"
    .balign 4

glabel D_8013C04C
    .asciz "*** \xA5\xCF\xA5\xD5\xA5\xDE\xA5\xF3\xA5\xC6\xA1\xBC\xA5\xD6\xA5\xEB\xBA\xEE\xC0\xAE time = %6.3f ms ***\n"
    # EUC-JP: ハフマンテーブル作成 | Huffman table creation
    .balign 4

glabel D_8013C07C
    .asciz "\x1b[31m"   
    .balign 4

glabel D_8013C084
    .asciz "Error : Can't decode jpeg\n"
    .balign 4

glabel D_8013C0A0
    .asciz "\x1b[m"   
    .balign 4

glabel D_8013C0A4
    .asciz "*** \xC5\xB8\xB3\xAB\x20\x26\x20\xC9\xC1\xB2\xE8 time = %6.3f ms ***\n"
    # EUC-JP: 展開 & 描画 | Unfold & draw
    .balign 4

glabel jtbl_8013C0CC
    .word L8006E2D0
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E258
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E17C
    .word L8006E3C0
    .word L8006E394
    .word L8006E208
    .word L8006E3D8
    .word L8006E2A8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E190
    .word L8006E1B8
    .word L8006E1E0
