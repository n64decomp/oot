.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8014A710
    .incbin "baserom.z64", 0xBC18B0, 0x18

glabel D_8014A728
    .incbin "baserom.z64", 0xBC18C8, 0x8

glabel D_8014A730
    .incbin "baserom.z64", 0xBC18D0, 0x8

glabel D_8014A738
    .incbin "baserom.z64", 0xBC18D8, 0xC

glabel D_8014A744
    .incbin "baserom.z64", 0xBC18E4, 0xC

glabel D_8014A750
    .incbin "baserom.z64", 0xBC18F0, 0xC

glabel D_8014A75C
    .incbin "baserom.z64", 0xBC18FC, 0x8

glabel D_8014A764
    .incbin "baserom.z64", 0xBC1904, 0xC

glabel D_8014A770
    .incbin "baserom.z64", 0xBC1910, 0x8

glabel D_8014A778
    .incbin "baserom.z64", 0xBC1918, 0xC

glabel D_8014A784
    .incbin "baserom.z64", 0xBC1924, 0xC

glabel D_8014A790
    .incbin "baserom.z64", 0xBC1930, 0x8

glabel D_8014A798
    .incbin "baserom.z64", 0xBC1938, 0x8

glabel D_8014A7A0
    .incbin "baserom.z64", 0xBC1940, 0x8

glabel D_8014A7A8
    .incbin "baserom.z64", 0xBC1948, 0x8

glabel D_8014A7B0
    .incbin "baserom.z64", 0xBC1950, 0x8

glabel D_8014A7B8
    .incbin "baserom.z64", 0xBC1958, 0x4

glabel D_8014A7BC
    .incbin "baserom.z64", 0xBC195C, 0x14

glabel D_8014A7D0
    .incbin "baserom.z64", 0xBC1970, 0x10

glabel D_8014A7E0
    .incbin "baserom.z64", 0xBC1980, 0x8

glabel D_8014A7E8
    .incbin "baserom.z64", 0xBC1988, 0x8

glabel D_8014A7F0
    .incbin "baserom.z64", 0xBC1990, 0xC

glabel D_8014A7FC
    .incbin "baserom.z64", 0xBC199C, 0xC

glabel D_8014A808
    .incbin "baserom.z64", 0xBC19A8, 0xC

glabel D_8014A814
    .incbin "baserom.z64", 0xBC19B4, 0xC

glabel D_8014A820
    .incbin "baserom.z64", 0xBC19C0, 0xC

glabel D_8014A82C
    .incbin "baserom.z64", 0xBC19CC, 0xC

glabel D_8014A838
    .incbin "baserom.z64", 0xBC19D8, 0xC

glabel D_8014A844
    .incbin "baserom.z64", 0xBC19E4, 0x10

glabel D_8014A854
    .incbin "baserom.z64", 0xBC19F4, 0xC
