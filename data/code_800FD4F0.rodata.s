.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8014AB10
    .asciz "%s: %u \xA5\xD0\xA5\xA4\xA5\xC8\xA4\xCE\x25\x73\xA4\xCB\xBC\xBA\xC7\xD4\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF\n"
    # EUC-JP: バイトの%sに失敗しました | % S of bytes failed
    .balign 4

glabel D_8014AB34
    .asciz "%s: %u \xA5\xD0\xA5\xA4\xA5\xC8\xA4\xCE\x25\x73\xA4\xCB\xC0\xAE\xB8\xF9\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF\n"
    # EUC-JP: バイトの%sに成功しました | % S of bytes succeeded
    .balign 4

glabel D_8014AB58
    .asciz "malloc"
    .balign 4

glabel D_8014AB60
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Secure
    .balign 4

glabel D_8014AB68
    .asciz "malloc_DEBUG"
    .balign 4

glabel D_8014AB78
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Secure
    .balign 4

glabel D_8014AB80
    .asciz "malloc_r"
    .balign 4

glabel D_8014AB8C
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Secure
    .balign 4

glabel D_8014AB94
    .asciz "malloc_r_DEBUG"
    .balign 4

glabel D_8014ABA4
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Secure
    .balign 4

glabel D_8014ABAC
    .asciz "realloc"
    .balign 4

glabel D_8014ABB4
    .asciz "\xBA\xC6\xB3\xCE\xCA\xDD"
    # EUC-JP: 再確保 | Re-securing
    .balign 4

glabel D_8014ABBC
    .asciz "realloc_DEBUG"
    .balign 4

glabel D_8014ABCC
    .asciz "\xBA\xC6\xB3\xCE\xCA\xDD"
    # EUC-JP: 再確保 | Re-securing
    .balign 4

glabel D_8014ABD4
    .asciz "calloc"
    .balign 4

glabel D_8014ABDC
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Secure
    .balign 4

glabel D_8014ABE4
    .asciz "\xA5\xB7\xA5\xB9\xA5\xC6\xA5\xE0\xA5\xD2\xA1\xBC\xA5\xD7\xC9\xBD\xBC\xA8\n"
    # EUC-JP: システムヒープ表示 | System heap display
    .balign 4
