.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013C900
    .asciz "%s: %u \xA5\xD0\xA5\xA4\xA5\xC8\xA4\xCE\x25\x73\xA4\xCB\xBC\xBA\xC7\xD4\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF\n"
    # EUC-JP: バイトの%sに失敗しました | % S of bytes failed
    .balign 4

glabel D_8013C924
    .asciz "%s: %u \xA5\xD0\xA5\xA4\xA5\xC8\xA4\xCE\x25\x73\xA4\xCB\xC0\xAE\xB8\xF9\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF\n"
    # EUC-JP: バイトの%sに成功しました | % S of bytes succeeded
    .balign 4

glabel D_8013C948
    .asciz "zelda_malloc"
    .balign 4

glabel D_8013C958
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Secure
    .balign 4

glabel D_8013C960
    .asciz "zelda_malloc_DEBUG"
    # EUC-JP: 
    .balign 4

glabel D_8013C974
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Secure
    .balign 4

glabel D_8013C97C
    .asciz "zelda_malloc_r"
    .balign 4

glabel D_8013C98C
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Secure
    .balign 4

glabel D_8013C994
    .asciz "zelda_malloc_r_DEBUG"
    .balign 4

glabel D_8013C9AC
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Secure
    .balign 4

glabel D_8013C9B4
    .asciz "zelda_realloc"
    .balign 4

glabel D_8013C9C4
    .asciz "\xBA\xC6\xB3\xCE\xCA\xDD"
    # EUC-JP: 再確保 | Re-securing
    .balign 4

glabel D_8013C9CC
    .asciz "zelda_realloc_DEBUG"
    .balign 4

glabel D_8013C9E0
    .asciz "\xBA\xC6\xB3\xCE\xCA\xDD"
    # EUC-JP: 再確保 | Re-securing
    .balign 4

glabel D_8013C9E8
    .asciz "zelda_calloc"
    .balign 4

glabel D_8013C9F8
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Secure
    .balign 4

glabel D_8013CA00
    .asciz "\xA5\xBC\xA5\xEB\xA5\xC0\xA5\xD2\xA1\xBC\xA5\xD7\xC9\xBD\xBC\xA8\n"
    # EUC-JP: ゼルダヒープ表示 | Zelda heap display
    .balign 4
