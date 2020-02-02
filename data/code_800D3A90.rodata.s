.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80146A40
    .asciz "%s: %u \xA5\xD0\xA5\xA4\xA5\xC8\xA4\xCE%s\xA4\xCB\xBC\xBA\xC7\xD4\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF\n"
    # EUC-JP: %s: %u バイトの%sに失敗しました | bytes failed?
    .balign 4

glabel D_80146A64
    .asciz "%s: %u \xA5\xD0\xA5\xA4\xA5\xC8\xA4\xCE%s\xA4\xCB\xC0\xAE\xB8\xF9\xA4\xB7\xA4\xDE\xA4\xB7\xA4\xBF\n"
    # EUC-JP: %s: %u バイトの%sに成功しました | bytes succeeded?
    .balign 4

glabel D_80146A88
    .asciz "debug_malloc"
    .balign 4

glabel D_80146A98
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Securing
    .balign 4

glabel D_80146AA0
    .asciz "debug_malloc_DEBUG"
    .balign 4

glabel D_80146AB4
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Securing
    .balign 4

glabel D_80146ABC
    .asciz "debug_malloc_r"
    .balign 4

glabel D_80146ACC
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Securing
    .balign 4

glabel D_80146AD4
    .asciz "debug_malloc_r_DEBUG"
    .balign 4

glabel D_80146AEC
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Securing
    .balign 4

glabel D_80146AF4
    .asciz "debug_realloc"
    .balign 4

glabel D_80146B04
    .asciz "\xBA\xC6\xB3\xCE\xCA\xDD"
    # EUC-JP: 再確保 | Re-securing
    .balign 4

glabel D_80146B0C
    .asciz "debug_realloc_DEBUG"
    .balign 4

glabel D_80146B20
    .asciz "\xBA\xC6\xB3\xCE\xCA\xDD"
    # EUC-JP: 再確保 | Re-securing
    .balign 4

glabel D_80146B28
    .asciz "debug_calloc"
    .balign 4

glabel D_80146B38
    .asciz "\xB3\xCE\xCA\xDD"
    # EUC-JP: 確保 | Securing
    .balign 4

glabel D_80146B40
    .asciz "\xA5\xBC\xA5\xEB\xA5\xC0\xA5\xD2\xA1\xBC\xA5\xD7\xC9\xBD\xBC\xA8\n"
    # EUC-JP: ゼルダヒープ表示 | Zelda heap display
    .balign 4
