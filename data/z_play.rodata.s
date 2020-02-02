.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80144190
    .asciz "point == 1 || point == 2"
    .balign 4

glabel D_801441AC
    .asciz "../z_play.c"
    .balign 4

glabel D_801441B8
    .asciz "Game_play_shop_pr_vr_switch_set()\n"
    .balign 4

glabel D_801441DC
    .asciz "../z_play.c"
    .balign 4

glabel D_801441E8
    .asciz "\nSCENE_NO=%d COUNTER=%d\n"
    .balign 4

glabel D_80144204
    .asciz "\xA5\xA8\xA5\xF3\xA5\xC7\xA5\xA3\xA5\xF3\xA5\xB0\xA4\xCF\xA4\xB8\xA4\xDE\xA4\xEB\xA4\xE8\xA1\xBC\n"
    # EUC-JP: エンディングはじまるよー | The ending starts?
    .balign 4

glabel D_80144220
    .asciz "\xBD\xD0\xCC\xE1\xA4\xEA\xA1\xA9\n"
    # EUC-JP: 出戻り | Return
    .balign 4

glabel D_8014422C
    .asciz "ZELDA ALLOC SIZE=%x\n"
    .balign 4

glabel D_80144244
    .asciz "../z_play.c"
    .balign 4

glabel D_80144250
    .asciz "\xA5\xBC\xA5\xEB\xA5\xC0\xA5\xD2\xA1\xBC\xA5\xD7 %08x-%08x\n"
    # EUC-JP: ゼルダヒープ | Zelda heap
    .balign 4

glabel D_80144268
    .asciz "player has start camera ID (\x1b[34m%d\x1b[m)\n"
    .balign 4

glabel D_80144294
    .asciz "\nkawauso_data=[%x]"
    .balign 4

glabel D_801442A8
    .asciz "object_exchange_rom_address %u\n"
    .balign 4

glabel D_801442C8
    .asciz "RomStart RomEnd   Size\n"
    .balign 4

glabel D_801442E0
    .asciz "%08x-%08x %08x(%8.3fKB)\n"
    .balign 4

glabel D_801442FC
    .asciz "\n"
    .balign 4

glabel D_80144300
    .asciz "fbdemo_init\xB8\xC6\xBD\xD0\xA4\xB7\xBC\xBA\xC7\xD4\xA1\xAA\n"
    # EUC-JP: 呼出し失敗！| Call failed!
    .balign 4

glabel D_8014431C
    .incbin "baserom.z64", 0xBBB4BC, 0x24
    # .asciz "\n\n\n\xA5\xB5\xA5\xA6\xA5\xF3\xA5\xC9\xA5\xA4\xA5\xCB\xA5\xB7\xA5\xE3\xA5\xEB\xCD\xE8\xA4\xDE\xA4\xB7\xA4\xBF\xA1\xA3111"
    # EUC-JP: サウンドイニシャル来ました。| Sound initalized?

glabel D_80144340
    .incbin "baserom.z64", 0xBBB4E0, 0x24
    # .asciz "\n\n\n\xA5\xB5\xA5\xA6\xA5\xF3\xA5\xC9\xA5\xA4\xA5\xCB\xA5\xB7\xA5\xE3\xA5\xEB\xCD\xE8\xA4\xDE\xA4\xB7\xA4\xBF\xA1\xA3222"
    # EUC-JP: サウンドイニシャル来ました。| Sound initalized?

glabel D_80144364    
    .asciz "../z_play.c"
    .balign 4

glabel D_80144370
    .asciz "\"\xCD\xE8\xA4\xBF!!!!!!!!!!!!!!!!!!!!!\" = %s\n"
    # EUC-JP: 来た | Was coming?
    .balign 4

glabel D_80144394
    .asciz "\xCD\xE8\xA4\xBF!!!!!!!!!!!!!!!!!!!!!"
    .balign 4

glabel D_801443B0
    .asciz "../z_play.c"
    .balign 4

glabel D_801443BC
    .asciz "1 = %d\n"
    .balign 4

glabel D_801443C4
    .asciz "../z_play.c"
    .balign 4

glabel D_801443D0
    .asciz "1 = %d\n"
    .balign 4

glabel D_801443D8
    .asciz "../z_play.c"
    .balign 4

glabel D_801443E4
    .asciz "1 = %d\n"
    .balign 4

glabel D_801443EC
    .asciz "../z_play.c"
    .balign 4

glabel D_801443F8
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144400
    .asciz "../z_play.c"
    .balign 4

glabel D_8014440C
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144414
     .asciz "../z_play.c"
    .balign 4

glabel D_80144420
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144428
    .asciz "../z_play.c"
    .balign 4

glabel D_80144434
    .asciz "1 = %d\n"
    .balign 4

glabel D_8014443C
    .asciz "FINISH=%d\n"
    .balign 4
glabel D_80144448
    .asciz "../z_play.c"
    .balign 4

glabel D_80144454
    .asciz "1 = %d\n"
    .balign 4

glabel D_8014445C
    .asciz "../z_play.c"
    .balign 4

glabel D_80144468
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144470
    .asciz "../z_play.c"
    .balign 4

glabel D_8014447C
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144484
    .asciz "../z_play.c"
    .balign 4

glabel D_80144490
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144498
    .asciz "../z_play.c"
    .balign 4

glabel D_801444A4
    .asciz "1 = %d\n"
    .balign 4

glabel D_801444AC
    .asciz "../z_play.c"
    .balign 4

glabel D_801444B8
    .asciz "1 = %d\n"
    .balign 4

glabel D_801444C0
    .asciz "../z_play.c"
    .balign 4

glabel D_801444CC
    .asciz "1 = %d\n"
    .balign 4

glabel D_801444D4
    .asciz "../z_play.c"
    .balign 4

glabel D_801444E0
    .asciz "1 = %d\n"
    .balign 4

glabel D_801444E8
    .asciz "../z_play.c"
    .balign 4

glabel D_801444F4
    .asciz "1 = %d\n"
    .balign 4

glabel D_801444FC
    .asciz "../z_play.c"
    .balign 4

glabel D_80144508
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144510
    .asciz "../z_play.c"
    .balign 4

glabel D_8014451C
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144524
    .asciz "../z_play.c"
    .balign 4

glabel D_80144530
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144538
    .asciz "../z_play.c"
    .balign 4

glabel D_80144544
    .asciz "1 = %d\n"
    .balign 4

glabel D_8014454C
    .asciz "../z_play.c"
    .balign 4

glabel D_80144558
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144560
    .asciz "\x1b[36m\xA5\xAB\xA5\xEC\xA5\xA4\xA5\xC9\xA5\xB9\xA5\xB3\xA1\xBC\xA5\xD7\xC3\xE6\xA4\xCB\xA4\xC4\xA4\xAD\xBB\xEB\xC5\xC0\xCA\xD1\xB9\xB9\xA4\xF2\xB6\xD8\xBB\xDF\xA4\xB7\xA4\xC6\xA4\xAA\xA4\xEA\xA4\xDE\xA4\xB9\n\x1b[m"
    # EUC-JP: カレイドスコープ中につき視点変更を禁止しております | Changing viewpoint is prohibited during kaleidoscope
    .balign 4
glabel D_8014459C
    .asciz "\x1b[36m\xA5\xC7\xA5\xE2\xC3\xE6\xA4\xCB\xA4\xC4\xA4\xAD\xBB\xEB\xC5\xC0\xCA\xD1\xB9\xB9\xA4\xF2\xB6\xD8\xBB\xDF\xA4\xB7\xA4\xC6\xA4\xAA\xA4\xEA\xA4\xDE\xA4\xB9\n\x1b[m"
    # EUC-JP: デモ中につき視点変更を禁止しております | Changing viewpoint is prohibited during the demo
    .balign 4

glabel D_801445CC
    .asciz "../z_play.c"
    .balign 4

glabel D_801445D8
    .asciz "1 = %d\n"
    .balign 4

glabel D_801445E0
    .asciz "../z_play.c"
    .balign 4

glabel D_801445EC
    .asciz "1 = %d\n"
    .balign 4

glabel D_801445F4
    .asciz "../z_play.c"
    .balign 4

glabel D_80144600
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144608
    .asciz "../z_play.c"
    .balign 4

glabel D_80144614
    .asciz "1 = %d\n"
    .balign 4

glabel D_8014461C
    .asciz "../z_play.c"
    .balign 4

glabel D_80144628
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144630
    .asciz "../z_play.c"
    .balign 4

glabel D_8014463C
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144644
    .asciz "../z_play.c"
    .balign 4

glabel D_80144650
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144658
    .asciz "../z_play.c"
    .balign 4

glabel D_80144664
    .asciz "1 = %d\n"
    .balign 4

glabel D_8014466C
    .asciz "../z_play.c"
    .balign 4

glabel D_80144678
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144680
    .asciz "../z_play.c"
    .balign 4

glabel D_8014468C
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144694
    .asciz "../z_play.c"
    .balign 4

glabel D_801446A0
    .asciz "1 = %d\n"
    .balign 4

glabel D_801446A8
    .asciz "../z_play.c"
    .balign 4

glabel D_801446B4
    .asciz "1 = %d\n"
    .balign 4

glabel D_801446BC
    .asciz "../z_play.c"
    .balign 4

glabel D_801446C8
    .asciz "1 = %d\n"
    .balign 4

glabel D_801446D0
    .asciz "../z_play.c"
    .balign 4

glabel D_801446DC
    .asciz "1 = %d\n"
    .balign 4

glabel D_801446E4
    .asciz "../z_play.c"
    .balign 4

glabel D_801446F0
    .asciz "1 = %d\n"
    .balign 4

glabel D_801446F8
    .asciz "../z_play.c"
    .balign 4

glabel D_80144704
    .asciz "1 = %d\n"
    .balign 4

glabel D_8014470C
    .asciz "../z_play.c"
    .balign 4

glabel D_80144718
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144720
    .asciz "../z_play.c"
    .balign 4

glabel D_8014472C
    .asciz "../z_play.c"
    .balign 4

glabel D_80144738
    .asciz "../z_play.c"
    .balign 4

glabel D_80144744
    .asciz "../z_play.c"
    .balign 4

glabel D_80144750
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144758
    .asciz "../z_play.c"
    .balign 4

glabel D_80144764
    .asciz "1 = %d\n"
    .balign 4

glabel D_8014476C
    .asciz "../z_play.c"
    .balign 4

glabel D_80144778
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144780
    .asciz "../z_play.c"
    .balign 4

glabel D_8014478C
    .asciz "../z_play.c"
    .balign 4

glabel D_80144798
    .asciz "\nSCENE SIZE %fK\n"
    .balign 4

glabel D_801447AC
    .incbin "baserom.z64", 0xBBB94C, 0x1C

glabel D_801447C8
    .asciz "../z_play.c"
    .balign 4

glabel D_801447D4
    .asciz "ROOM SIZE=%fK\n"
    .balign 4

glabel D_801447E4
    .asciz "\x1b[41;37mcamera control: error: fulled sub camera system area\n\x1b[m"
    .balign 4

glabel D_80144828
    .asciz "camera control: \x1b[46m \x1b[47;34m create new sub camera [%d] \x1b[46m \x1b[m\n"
    .balign 4

glabel D_80144870
    .asciz "\x1b[41;37mcamera control: error: never clear camera !!\n\x1b[m"
    .balign 4

glabel D_801448AC
    .asciz "camera control: \x1b[46m \x1b[47;34m clear sub camera [%d] \x1b[46m \x1b[m\n"
    .balign 4

glabel D_801448EC
    .asciz "\x1b[41;37mcamera control: error: camera No.%d already cleared\n\x1b[m"
    .balign 4

glabel D_8014492C
    .asciz "\x1b[41;37mcamera control: error: return to main, other camera left. %d cleared!!\n\x1b[m"
    .balign 4

glabel jtbl_80144980
   .word L800BC728
   .word L800BC6C0
   .word L800BC790
   .word L800BC790
   .word L800BC790
   .word L800BC790
   .word L800BC790
   .word L800BC790
   .word L800BC728
   .word L800BC7F8
   .word L800BC7F8
   .word L800BC80C
   .word L800BC820
   .word L800BC790
   .word L800BC834
   .word L800BC848
   .word L800BC85C
   .word L800BC790
   .word L800BC790
   .word L800BC790

glabel jtbl_801449D0
   .word L800BDAC4
   .word L800BDB30
   .word L800BDC40
   .word L800BDD58
   .word L800BE148
   .word L800BE148
   .word L800BDDCC
   .word L800BDE50
   .word L800BDE70
   .word L800BDEE0
   .word L800BDFB0
   .word L800BE034
   .word L800BE0AC
   .word L800BE0F0

glabel D_80144A08
    .float 3.051851E-5

glabel D_80144A0C
    .float 0.01

glabel D_80144A10
    .float 0.01
