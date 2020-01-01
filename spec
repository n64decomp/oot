/*
 * ROM spec file
 */

beginseg
    name "makerom"
    include "build/baserom/makerom.o"
    address 0x80000000
endseg

beginseg
    name "boot"
    include "build/src/boot/boot_main.o"
    include "build/data/boot_main.data.o"
    include "build/data/boot_main.bss.o"
    include "build/src/boot/idle.o"
    include "build/data/idle.data.o"
    include "build/data/idle.rodata.o"
    include "build/data/idle.bss.o"
    include "build/src/boot/boot_80000A10.o"
    include "build/data/boot_80000A10.rodata.o"
    include "build/src/boot/z_std_dma.o"
    include "build/data/z_std_dma.data.o"
    include "build/data/z_std_dma.rodata.o"
    include "build/data/z_std_dma.bss.o"
    include "build/asm/boot_80001B30.o"
    include "build/data/boot_80001B30.bss.o"
    include "build/src/boot/z_locale.o"
    include "build/data/z_locale.data.o"
    include "build/data/z_locale.rodata.o"
    include "build/asm/libultra_assert.o"
    include "build/data/libultra_assert.rodata.o"
    include "build/asm/boot_80002080.o"
    include "build/data/boot_80002080.data.o"
    include "build/data/boot_80002080.rodata.o"
    include "build/data/boot_80002080.bss.o"
    include "build/asm/boot_800025B0.o"
    include "build/data/boot_800025B0.rodata.o"
    include "build/asm/boot_800029F0.o"
    include "build/data/boot_800029F0.rodata.o"
    include "build/src/libultra_boot/libultra_os.o"
    include "build/src/libultra_boot/osStopThread.o"
    include "build/src/libultra_boot/os80003270.o"
    include "build/src/libultra_boot/osRecvMesg.o"
    include "build/asm/boot_800033C0.o"
    include "build/asm/libm.o"
    include "build/asm/boot_800039D0.o"
    include "build/data/boot_800039D0.rodata.o"
    include "build/asm/boot_80004300.o"
    include "build/asm/bzero.o"
    include "build/src/libultra_boot/osCreateThread.o"
    include "build/asm/__osSetSR.o"
    include "build/asm/__osGetSR.o"
    include "build/asm/osWritebackDCache.o"
    include "build/asm/osViGetNextFramebuffer.o"
    include "build/asm/boot_80004780.o"
    include "build/asm/boot_80004900.o"
    include "build/data/boot_80004900.rodata.o"
    include "build/asm/boot_80004CE0.o"
    include "build/asm/boot_80004D10.o"
    include "build/src/libultra_boot/osVirtualToPhysical.o"
    include "build/asm/osViBlack.o"
    include "build/asm/boot_80004ED0.o"
    include "build/src/libultra_boot/osGetThreadId.o"
    include "build/asm/osSetIntMask.o"
    include "build/data/osSetIntMask.rodata.o"
    include "build/asm/osViSetMode.o"
    include "build/asm/__osProbeTLB.o"
    include "build/asm/boot_80005100.o"
    include "build/asm/boot_80005220.o"
    include "build/data/boot_80005220.data.o"
    include "build/asm/boot_800052E0.o"
    include "build/data/boot_800052E0.data.o"
    include "build/data/boot_800052E0.rodata.o"
    include "build/asm/boot_80005FC0.o"
    include "build/asm/boot_80006010.o"
    include "build/asm/boot_800060B0.o"
    include "build/asm/boot_800060F0.o"
    include "build/asm/osInvalICache.o"
    include "build/src/libultra_boot/osCreateMesgQueue.o"
    include "build/asm/osInvalDCache.o"
    include "build/asm/boot_800062B0.o"
    include "build/asm/osJamMesg.o"
    include "build/src/libultra_boot/osSetThreadPri.o"
    include "build/src/libultra_boot/osGetThreadPri.o"
    include "build/asm/boot_80006530.o"
    include "build/asm/osViSwapBuffer.o"
    include "build/asm/boot_800066E0.o"
    include "build/asm/bcmp.o"
    include "build/src/libultra_boot/osGetTime.o"
    include "build/asm/boot_80006A70.o"
    include "build/data/boot_80006A70.data.o"
    include "build/data/boot_80006A70.bss.o"
    include "build/asm/osGetCount.o"
    include "build/asm/__osSetGlobalIntMask.o"
    include "build/asm/__osSetCompare.o"
    include "build/asm/bcopy.o"
    include "build/asm/__osResetGlobalIntMask.o"
    include "build/asm/boot_80007280.o"
    include "build/asm/boot_800072F0.o"
    include "build/asm/boot_80007310.o"
    include "build/data/boot_80007310.data.o"
    include "build/asm/boot_80007430.o"
    include "build/asm/boot_80007730.o"
    include "build/asm/boot_80007760.o"
    include "build/asm/osViSetSpecialFeatures.o"
    include "build/asm/boot_80007910.o"
    include "build/data/boot_80007910.bss.o"
    include "build/asm/__osSetFpcCsr.o"
    include "build/asm/__osGetFpcCsr.o"
    include "build/asm/boot_80007A90.o"
    include "build/asm/osMapTLBRdb.o"
    include "build/asm/osYieldThread.o"
    include "build/asm/__osGetCause.o"
    include "build/asm/boot_80007BA0.o"
    include "build/asm/_Litob.o"
    include "build/data/_Litob.data.o"
    include "build/asm/boot_80007FA0.o"
    include "build/asm/boot_80008130.o"
    include "build/data/boot_80008130.rodata.o"
    include "build/asm/boot_80008CA0.o"
    include "build/data/boot_80008CA0.data.o"
    include "build/data/boot_80008CA0.bss.o"
    include "build/asm/boot_80008FB0.o"
    include "build/src/libultra_boot/osStartThread.o"
    include "build/asm/osViSetYScale.o"
    include "build/asm/boot_80009160.o"
    include "build/asm/boot_80009270.o"
    include "build/asm/boot_800092E0.o"
    include "build/asm/boot_80009310.o"
    include "build/data/boot_80009320.text.o"
    address 0x80000460
endseg

beginseg
    name "dmadata"
    include "build/asm/dmadata.o"
    address 0x80016DA0
endseg

beginseg
    name "Audiobank"
    include "build/baserom/Audiobank.o"
endseg

beginseg
    name "Audioseq"
    include "build/baserom/Audioseq.o"
endseg

beginseg
    name "Audiotable"
    include "build/baserom/Audiotable.o"
endseg

beginseg
    name "link_animetion"
    include "build/baserom/link_animetion.o"
endseg

beginseg
    name "icon_item_static"
    romalign 0x1000
    //include "build/baserom/icon_item_static.o"
    include "build/assets/textures/icon_item_static.o"
endseg

beginseg
    name "icon_item_24_static"
    romalign 0x1000
    //include "build/baserom/icon_item_24_static.o"
    include "build/assets/textures/icon_item_24_static.o"
endseg

beginseg
    name "icon_item_field_static"
    romalign 0x1000
    //include "build/baserom/icon_item_field_static.o"
    include "build/assets/textures/icon_item_field_static.o"
endseg

beginseg
    name "icon_item_dungeon_static"
    romalign 0x1000
    //include "build/baserom/icon_item_dungeon_static.o"
    include "build/assets/textures/icon_item_dungeon_static.o"
endseg

beginseg
    name "icon_item_gameover_static"
    romalign 0x1000
    include "build/baserom/icon_item_gameover_static.o"
endseg

beginseg
    name "icon_item_nes_static"
    romalign 0x1000
    include "build/baserom/icon_item_nes_static.o"
    //include "build/assets/textures/icon_item_nes_static.o"
endseg

beginseg
    name "icon_item_ger_static"
    romalign 0x1000
    include "build/baserom/icon_item_ger_static.o"
endseg

beginseg
    name "icon_item_fra_static"
    romalign 0x1000
    include "build/baserom/icon_item_fra_static.o"
endseg

beginseg
    name "item_name_static"
    romalign 0x1000
    include "build/baserom/item_name_static.o"
endseg

beginseg
    name "map_name_static"
    romalign 0x1000
    include "build/baserom/map_name_static.o"
endseg

beginseg
    name "do_action_static"
    romalign 0x1000
    include "build/baserom/do_action_static.o"
endseg

beginseg
    name "message_static"
    romalign 0x1000
    include "build/baserom/message_static.o"
endseg

beginseg
    name "message_texture_static"
    romalign 0x1000
    include "build/baserom/message_texture_static.o"
endseg

beginseg
    name "nes_font_static"
    romalign 0x1000
    include "build/baserom/nes_font_static.o"
endseg

beginseg
    name "nes_message_data_static"
    romalign 0x1000
    include "build/baserom/nes_message_data_static.o"
endseg

beginseg
    name "ger_message_data_static"
    romalign 0x1000
    include "build/baserom/ger_message_data_static.o"
endseg

beginseg
    name "fra_message_data_static"
    romalign 0x1000
    include "build/baserom/fra_message_data_static.o"
endseg

beginseg
    name "staff_message_data_static"
    romalign 0x1000
    include "build/baserom/staff_message_data_static.o"
endseg

beginseg
    name "map_grand_static"
    romalign 0x1000
    include "build/baserom/map_grand_static.o"
endseg

beginseg
    name "map_48x85_static"
    romalign 0x1000
    include "build/baserom/map_48x85_static.o"
endseg

beginseg
    name "map_i_static"
    romalign 0x1000
    include "build/baserom/map_i_static.o"
endseg

beginseg
    name "code"
    include "build/src/code/z_en_a_keep.o"
    include "build/data/z_en_a_keep.data.o"
    include "build/src/code/z_en_item00.o"
    include "build/data/z_en_item00.data.o"
    include "build/data/z_en_item00.bss.o"
    include "build/src/code/z_eff_blure.o"
    include "build/data/z_eff_blure.data.o"
    include "build/data/z_eff_blure.rodata.o"
    include "build/src/code/z_eff_shield_particle.o"
    include "build/data/z_eff_shield_particle.data.o"
    include "build/data/z_eff_shield_partile.rodata.o"
    include "build/asm/z_eff_spark.o"
    include "build/data/z_eff_spark.rodata.o"
    include "build/src/code/z_eff_ss_dead.o"
    include "build/data/z_eff_ss_dead.rodata.o"
    include "build/src/code/code_80026B00.o"
    include "build/data/code_80026B00.data.o"
    include "build/data/code_80026B00.rodata.o"
    include "build/data/code_80026B00.bss.o"
    include "build/src/code/z_effect_soft_sprite.o"
    include "build/data/z_effect_soft_sprite.data.o"
    include "build/data/z_effect_soft_sprite.rodata.o"
    include "build/asm/z_effect_soft_sprite_old_init.o"
    include "build/data/z_effect_soft_sprite_old_init.rodata.o"
    include "build/src/code/flg_set.o"
    include "build/data/flg_set.data.o"
    include "build/data/flg_set.rodata.o"
    include "build/src/code/z_DLF.o"
    include "build/src/code/z_actor.o"
    include "build/src/code/z_actor_dlftbls.o"
    include "build/src/code/z_bgcheck.o"
    include "build/data/z_bgcheck.data.o"
    include "build/data/z_bgcheck.rodata.o"
    include "build/data/z_bgcheck.bss.o"
    include "build/src/code/code_800430A0.o"
    include "build/data/code_800430A0.rodata.o"
    include "build/src/code/z_camera.o"
    include "build/data/z_camera.data.o"
    include "build/data/z_camera.bss.o"
    include "build/src/code/z_collision_btltbls.o"
    include "build/data/z_collision_btltbls.data.o"
    include "build/data/z_collision_btltbls.rodata.o"
    include "build/src/code/z_collision_check.o"
    include "build/data/z_collision_check.data.o"
    include "build/data/z_collision_check.rodata.o"
    include "build/data/z_collision_check.bss.o"
    include "build/src/code/z_common_data.o"
    include "build/data/z_common_data.bss.o"
    include "build/src/code/z_debug.o"
    include "build/data/z_debug.data.o"
    include "build/data/z_debug.rodata.o"
    include "build/data/z_debug.bss.o"
    include "build/src/code/z_debug_display.o"
    include "build/src/code/z_demo.o"
    include "build/src/code/code_80069420.o"
    include "build/src/code/z_draw.o"
    include "build/asm/code_8006BA00.o"
    include "build/src/code/z_elf_message.o"
    include "build/data/z_elf_message.data.o"
    include "build/data/z_elf_message.rodata.o"
    include "build/src/code/code_8006C360.o"
    include "build/data/code_8006C360.data.o"
    include "build/src/code/code_8006C3A0.o"
    include "build/src/code/code_8006C510.o"
    include "build/data/code_8006C510.rodata.o"
    include "build/src/code/z_fcurve_data_skelanime.o"
    include "build/data/z_fcurve_data_skelanime.rodata.o"
    include "build/data/code_data_8011F830.o"
    include "build/src/code/z_horse.o"
    include "build/src/code/z_jpeg.o"
    include "build/data/z_jpeg.data.o"
    include "build/data/z_jpeg.rodata.o"
    include "build/src/code/code_8006EA30.o"
    include "build/data/code_8006EA30.data.o"
    include "build/data/code_8006EA30.rodata.o"
    include "build/src/code/z_kanfont.o"
    include "build/data/z_kanfont.rodata.o"
    include "build/src/code/z_kankyo.o"
    include "build/data/z_kankyo.data.o"
    include "build/data/z_kankyo.rodata.o"
    include "build/data/z_kankyo.bss.o"
    include "build/src/code/z_lib.o"
    include "build/src/code/z_lifemeter.o"
    include "build/data/z_lifemeter.data.o"
    include "build/src/code/z_lights.o"
    include "build/data/z_lights.data.o"
    include "build/data/z_lights.rodata.o"
    include "build/data/z_lights.bss.o"
    include "build/asm/code_8007AE10.o"
    include "build/data/code_8007AE10.data.o"
    include "build/data/code_8007AE10.rodata.o"
    include "build/data/code_8007AE10.bss.o"
    include "build/src/code/z_map_mark.o"
    include "build/src/code/z_moji.o"
    include "build/src/code/code_8007BE60.o"
    include "build/src/code/code_8007BF10.o"
    include "build/src/code/code_8007BF90.o"
    include "build/data/code_8007BF90.rodata.o"
    include "build/asm/z_onepointdemo.o"
    include "build/data/z_onepointdemo.data.o"
    include "build/data/z_onepointdemo.rodata.o"
    include "build/asm/z_map_exp.o"
    include "build/data/z_map_exp.data.o"
    include "build/data/z_map_exp.rodata.o"
    include "build/data/z_map_exp.bss.o"
    include "build/asm/z_parameter.o"
    include "build/data/z_parameter.data.o"
    include "build/data/z_parameter.rodata.o"
    include "build/data/z_parameter.bss.o"
    include "build/asm/code_8008E4E0.o"
    include "build/asm/code_8008E6A0.o"
    include "build/src/code/z_player_lib.o"
    include "build/data/z_player_lib.data.o"
    include "build/data/z_player_lib.rodata.o"
    include "build/data/z_player_lib.bss.o"
    include "build/src/code/z_prenmi.o"
    include "build/asm/code_80092500.o"
    include "build/data/code_80092500.data.o"
    include "build/data/code_80092500.rodata.o"
    include "build/data/code_80092500.bss.o"
    include "build/asm/z_rcp.o"
    include "build/data/z_rcp.data.o"
    include "build/data/z_rcp.rodata.o"
    include "build/src/code/z_room.o"
    include "build/asm/z_sample.o"
    include "build/data/z_sample.rodata.o"
    include "build/asm/code_80097A00.o"
    include "build/data/code_80097A00.data.o"
    include "build/data/code_80097A00.rodata.o"
    include "build/src/code/z_scene.o"
    include "build/src/code/z_scene_table.o"
    include "build/asm/z_skelanime.o"
    include "build/data/z_skelanime.data.o"
    include "build/data/z_skelanime.rodata.o"
    include "build/data/z_skelanime.bss.o"
    include "build/asm/z_skin.o"
    include "build/data/z_skin.rodata.o"
    include "build/asm/z_skin_awb.o"
    include "build/data/z_skin_awb.data.o"
    include "build/data/z_skin_awb.rodata.o"
    include "build/asm/z_sram.o"
    include "build/data/z_sram.data.o"
    include "build/data/z_sram.rodata.o"
    include "build/src/code/code_800A9D40.o"
    include "build/data/code_800A9D40.data.o"
    include "build/data/code_800A9D40.rodata.o"
    include "build/src/code/code_800A9F30.o"
    include "build/data/code_800A9F30.rodata.o"
    include "build/data/code_800A9F30.bss.o"
    include "build/asm/z_view.o"
    include "build/data/z_view.data.o"
    include "build/data/z_view.rodata.o"
    include "build/src/code/z_vimode.o"
    include "build/data/z_vimode.rodata.o"
    include "build/asm/code_800ACE70.o"
    include "build/data/code_800ACE70.data.o"
    include "build/asm/z_vismono.o"
    include "build/data/z_vismono.rodata.o"
    include "build/asm/code_800AD920.o"
    include "build/asm/z_vr_box.o"
    include "build/data/z_vr_box.data.o"
    include "build/data/z_vr_box.rodata.o"
    include "build/asm/z_vr_box_draw.o"
    include "build/data/z_vr_box_draw.rodata.o"
    include "build/data/z_vr_box_draw.bss.o"
    include "build/asm/code_800B1750.o"
    include "build/data/code_800B1750.bss.o"
    include "build/asm/z_fbdemo.o"
    include "build/data/z_fbdemo.data.o"
    include "build/data/z_fbdemo.rodata.o"
    include "build/asm/code_800B2400.o"
    include "build/data/code_800B2400.data.o"
    include "build/data/code_800B2400.rodata.o"
    include "build/asm/code_800B29D0.o"
    include "build/data/code_800B29D0.data.o"
    include "build/data/code_800B29D0.rodata.o"
    include "build/asm/code_800B2E30.o"
    include "build/data/code_800B2E30.data.o"
    include "build/data/code_800B2E30.rodata.o"
    include "build/asm/code_800B34E0.o"
    include "build/data/code_800B34E0.data.o"
    include "build/data/code_800B34E0.rodata.o"
    include "build/src/code/db_camera.o"
    include "build/data/db_camera.data.o"
    include "build/data/db_camera.rodata.o"
    include "build/data/db_camera.bss.o"
    include "build/asm/code_800BB0A0.o"
    include "build/data/code_800BB0A0.rodata.o"
    include "build/asm/code_800BB570.o"
    include "build/data/code_800BB570.data.o"
    include "build/data/code_800BB570.rodata.o"
    include "build/data/code_800BB570.bss.o"
    include "build/asm/z_kaleido_manager.o"
    include "build/data/z_kaleido_manager.data.o"
    include "build/data/z_kaleido_manager.rodata.o"
    include "build/asm/z_kaleido_scope_call.o"
    include "build/data/z_kaleido_scope_call.rodata.o"
    include "build/data/z_kaleido_scope_call.bss.o"
    include "build/src/code/z_play.o"
    include "build/data/z_play.data.o"
    include "build/data/z_play.rodata.o"
    include "build/data/z_play.bss.o"
    include "build/asm/PreRender.o"
    include "build/data/PreRender.rodata.o"
    include "build/asm/code_800C3880.o"
    include "build/asm/code_800C3C20.o"
    include "build/data/code_800C3C20.data.o"
    include "build/src/code/audioMgr.o"
    include "build/data/audioMgr.rodata.o"
    include "build/asm/code_800C40B0.o"
    include "build/data/code_800C40B0.rodata.o"
    include "build/asm/game.o"
    include "build/data/game.data.o"
    include "build/data/game.rodata.o"
    include "build/data/game.bss.o"
    include "build/asm/gamealloc.o"
    include "build/data/gamealloc.rodata.o"
    include "build/asm/graph.o"
    include "build/data/graph.data.o"
    include "build/data/graph.rodata.o"
    include "build/data/graph.bss.o"
    include "build/asm/listalloc.o"
    include "build/data/listalloc.rodata.o"
    include "build/asm/main.o"
    include "build/data/main.data.o"
    include "build/data/main.rodata.o"
    include "build/data/main.bss.o"
    include "build/src/code/padmgr.o"
    include "build/data/padmgr.data.o"
    include "build/data/padmgr.rodata.o"
    include "build/data/padmgr.bss.o"
    include "build/src/code/sched.o"
    include "build/data/sched.data.o"
    include "build/data/sched.rodata.o"
    include "build/data/sched.bss.o"
    include "build/src/code/speed_meter.o"
    include "build/data/speed_meter.data.o"
    include "build/data/speed_meter.rodata.o"
    include "build/asm/sys_cfb.o"
    include "build/data/sys_cfb.rodata.o"
    include "build/data/sys_cfb.bss.o"
    include "build/asm/code_800CA540.o"
    include "build/data/code_800CA540.data.o"
    include "build/data/code_800CA540.rodata.o"
    include "build/asm/code_800CA7D0.o"
    include "build/data/code_800CA7D0.data.o"
    include "build/data/code_800CA7D0.rodata.o"
    include "build/data/code_800CA7D0.bss.o"
    include "build/asm/code_800D05F0.o"
    include "build/data/code_800D05F0.rodata.o"
    include "build/asm/sys_matrix.o"
    include "build/data/sys_matrix.data.o"
    include "build/data/sys_matrix.rodata.o"
    include "build/data/sys_matrix.bss.o"
    include "build/src/code/code_800D2DF0.o"
    include "build/data/code_800D2DF0.data.o"
    include "build/asm/code_800D2E30.o"
    include "build/data/code_800D2E30.data.o"
    include "build/asm/code_800D31A0.o"
    include "build/data/code_800D31A0.data.o"
    include "build/data/code_800D31A0.rodata.o"
    include "build/asm/irqmgr.o"
    include "build/data/irqmgr.data.o"
    include "build/data/irqmgr.rodata.o"
    include "build/asm/code_800D3A90.o"
    include "build/data/code_800D3A90.data.o"
    include "build/data/code_800D3A90.rodata.o"
    include "build/data/code_800D3A90.bss.o"
    include "build/src/code/fault.o"
    include "build/src/code/fault_drawer.o"
    include "build/asm/code_800D71F0.o"
    include "build/asm/code_800D7CD0.o"
    include "build/data/code_800D7CD0.data.o"
    include "build/data/code_800D7CD0.rodata.o"
    include "build/asm/code_800DACC0.o"
    include "build/data/code_800DACC0.data.o"
    include "build/data/code_800DACC0.rodata.o"
    include "build/data/code_800DACC0.bss.o"
    include "build/asm/code_800DDE20.o"
    include "build/data/code_800DDE20.rodata.o"
    include "build/asm/code_800E11F0.o"
    include "build/data/code_800E11F0.data.o"
    include "build/data/code_800E11F0.rodata.o"
    include "build/asm/code_800E6840.o"
    include "build/data/code_800E6840.data.o"
    include "build/asm/code_800E6940.o"
    include "build/data/code_800E6940.rodata.o"
    include "build/asm/code_800E88C0.o"
    include "build/data/code_800E88C0.data.o"
    include "build/data/code_800E88C0.rodata.o"
    include "build/asm/code_800E9340.o"
    include "build/data/code_800E9340.rodata.o"
    include "build/asm/code_800EC960.o"
    include "build/data/code_800EC960.data.o"
    include "build/data/code_800EC960.rodata.o"
    include "build/asm/code_800F7260.o"
    include "build/data/code_800F7260.data.o"
    include "build/data/code_800F7260.rodata.o"
    include "build/asm/code_800F9280.o"
    include "build/data/code_800F9280.data.o"
    include "build/data/code_800F9280.rodata.o"
    include "build/asm/code_800FAF60.o"
    include "build/data/code_800FAF60.data.o"
    include "build/data/code_800FAF60.rodata.o"
    include "build/data/code_800FAF60.bss.o"
    include "build/asm/code_800FBCE0.o"
    include "build/data/code_800FBCE0.rodata.o"
    include "build/asm/loadfragment2.o"
    include "build/data/loadfragment2.rodata.o"
    include "build/asm/mtxuty-cvt.o"
    include "build/data/mtxuty-cvt.rodata.o"
    include "build/asm/code_800FC2C0.o"
    include "build/data/code_800FC2C0.rodata.o"
    include "build/asm/code_800FC620.o"
    include "build/data/code_800FC620.data.o"
    include "build/data/code_800FC620.rodata.o"
    include "build/asm/code_800FCB50.o"
    include "build/asm/code_800FCD40.o"
    include "build/asm/code_800FCE80.o"
    include "build/data/code_800FCE80.data.o"
    include "build/data/code_800FCE80.rodata.o"
    include "build/data/code_800FCE80.bss.o"
    include "build/asm/code_800FD970.o"
    include "build/data/code_800FD970.data.o"
    include "build/data/code_800FD970.bss.o"
    include "build/asm/code_800FDB30.o"
    include "build/data/code_800FDB30.rodata.o"
    include "build/data/code_800FDB30.bss.o"
    include "build/asm/code_800FF340.o"
    include "build/asm/code_800FFA50.o"
    include "build/data/code_800FFA50.bss.o"
    include "build/asm/code_80100040.o"
    include "build/asm/code_801001E0.o"
    include "build/asm/code_80100290.o"
    include "build/data/code_80100290.data.o"
    include "build/data/code_80100290.rodata.o"
    include "build/data/code_80100290.bss.o"
    include "build/asm/code_80100780.o"
    include "build/data/code_80100780.data.o"
    include "build/data/code_80100780.bss.o"
    include "build/asm/code_80100EF0.o"
    include "build/asm/guPerspective.o"
    include "build/data/guPerspective.rodata.o"
    include "build/asm/code_80101360.o"
    include "build/data/code_80101360.rodata.o"
    include "build/asm/code_801013F0.o"
    include "build/asm/code_801014A0.o"
    include "build/data/code_801014A0.bss.o"
    include "build/asm/code_80101910.o"
    include "build/data/code_80101910.bss.o"
    include "build/asm/code_80101B40.o"
    include "build/asm/code_80101B90.o"
    include "build/asm/code_80101EB0.o"
    include "build/asm/code_80102330.o"
    include "build/asm/code_80102420.o"
    include "build/data/code_80102420.data.o"
    include "build/asm/code_80102FA0.o"
    include "build/asm/code_80103010.o"
    include "build/asm/sqrtf.o"
    include "build/asm/code_801031F0.o"
    include "build/src/libultra_code/code_80103B30.o"
    include "build/asm/code_80103B60.o"
    include "build/asm/code_80103BB0.o"
    include "build/data/code_80103BB0.data.o"
    include "build/asm/code_80103DC0.o"
    include "build/data/code_80103DC0.data.o"
    include "build/src/libultra_code/code_80104140.o"
    include "build/asm/code_80104160.o"
    include "build/data/code_80104610.rodata.o"
    include "build/src/libultra_boot/osDpGetStatus.o"
    include "build/src/libultra_boot/osDpSetStatus.o"
    include "build/asm/code_801041E0.o"
    include "build/asm/code_80104450.o"
    include "build/asm/cosf.o"
    include "build/asm/coss.o"
    include "build/asm/code_801047B0.o"
    include "build/asm/code_80104810.o"
    include "build/asm/code_80104B00.o"
    include "build/asm/code_80104C80.o"
    include "build/asm/code_80104D00.o"
    include "build/asm/code_80104D60.o"
    include "build/asm/code_80104F40.o"
    include "build/asm/code_80105250.o"
    include "build/asm/osAiGetLength.o"
    include "build/asm/code_80105C20.o"
    include "build/asm/code_80105CF0.o"
    include "build/data/code_80105CF0.data.o"
    include "build/asm/code_80105F40.o"
    include "build/asm/code_80106170.o"
    include "build/asm/code_801062E0.o"
    include "build/src/libultra_code/__osSpGetStatus.o"
    include "build/src/libultra_code/__osSpSetStatus.o"
    include "build/asm/osWritebackDCacheAll.o"
    include "build/src/libultra_code/code_801064C0.o"
    include "build/asm/code_801064E0.o"
    include "build/asm/code_80106550.o"
    include "build/data/code_80106550.rodata.o"
    include "build/src/libultra_code/code_80106760.o"
    include "build/src/libultra_code/code_801067A0.o"
    include "build/asm/code_801067D0.o"
    include "build/asm/code_801067E0.o"
    include "build/asm/code_801067F0.o"
    include "build/asm/code_80106860.o"
    include "build/asm/code_801068B0.o"
    include "build/asm/z_message_PAL.o"
    include "build/data/z_message_PAL.rodata.o"
    include "build/data/z_message_PAL.bss.o"
    include "build/src/code/z_construct.o"
    include "build/data/z_construct.rodata.o"
    include "build/data/rsp.text.o"
    include "build/data/rsp.rodata.o"
    address 0x8001CE60
endseg

beginseg
    name "ovl_title"
    //include "build/baserom/ovl_title.o"
    include "build/asm/overlays/gamestates/ovl_title/z_title.o"
    address 0x80800000
endseg

beginseg
    name "ovl_select"
    include "build/asm/overlays/gamestates/ovl_select/z_select.o"
endseg

beginseg
    name "ovl_opening"
    include "build/asm/overlays/gamestates/ovl_opening/z_opening.o"
endseg

// note: increment commands account for segments who have BSS data but reflect a Virt addr range difference.

beginseg
    name "ovl_file_choose"
    increment 0x20
    include "build/baserom/ovl_file_choose.o"
endseg

beginseg
    name "ovl_kaleido_scope"
    increment 0x70
    include "build/baserom/ovl_kaleido_scope.o"
endseg

beginseg
    name "ovl_player_actor"
    increment 0xD0
    include "build/baserom/ovl_player_actor.o"
endseg

beginseg
    name "ovl_map_mark_data"
    include "build/baserom/ovl_map_mark_data.o"
endseg

beginseg
    name "ovl_En_Test"
    include "build/baserom/ovl_En_Test.o"
endseg

beginseg
    name "ovl_Arms_Hook"
    include "build/baserom/ovl_Arms_Hook.o"
endseg

beginseg
    name "ovl_Arrow_Fire"
    include "build/baserom/ovl_Arrow_Fire.o"
endseg

beginseg
    name "ovl_Arrow_Ice"
    include "build/baserom/ovl_Arrow_Ice.o"
endseg

beginseg
    name "ovl_Arrow_Light"
    include "build/baserom/ovl_Arrow_Light.o"
endseg

beginseg
    name "ovl_Bg_Bdan_Objects"
    include "build/baserom/ovl_Bg_Bdan_Objects.o"
endseg

beginseg
    name "ovl_Bg_Bdan_Switch"
    include "build/baserom/ovl_Bg_Bdan_Switch.o"
endseg

beginseg
    name "ovl_Bg_Bom_Guard"
    include "build/asm/overlays/actors/ovl_Bg_Bom_Guard/z_bg_bom_guard.o"
endseg

beginseg
    name "ovl_Bg_Bombwall"
    include "build/baserom/ovl_Bg_Bombwall.o"
endseg

beginseg
    name "ovl_Bg_Bowl_Wall"
    include "build/baserom/ovl_Bg_Bowl_Wall.o"
endseg

beginseg
    name "ovl_Bg_Breakwall"
    include "build/baserom/ovl_Bg_Breakwall.o"
endseg

beginseg
    name "ovl_Bg_Ddan_Jd"
    include "build/baserom/ovl_Bg_Ddan_Jd.o"
endseg

beginseg
    name "ovl_Bg_Ddan_Kd"
    include "build/baserom/ovl_Bg_Ddan_Kd.o"
endseg

beginseg
    name "ovl_Bg_Dodoago"
    increment 0x70
    include "build/baserom/ovl_Bg_Dodoago.o"
endseg

beginseg
    name "ovl_Bg_Dy_Yoseizo"
    include "build/baserom/ovl_Bg_Dy_Yoseizo.o"
endseg

beginseg
    name "ovl_Bg_Ganon_Otyuka"
    include "build/baserom/ovl_Bg_Ganon_Otyuka.o"
endseg

beginseg
    name "ovl_Bg_Gate_Shutter"
    include "build/baserom/ovl_Bg_Gate_Shutter.o"
endseg

beginseg
    name "ovl_Bg_Gjyo_Bridge"
    //include "build/baserom/ovl_Bg_Gjyo_Bridge.o"
    include "build/asm/overlays/actors/ovl_Bg_Gjyo_Bridge/z_bg_gjyo_bridge.o"
endseg

beginseg
    name "ovl_Bg_Gnd_Darkmeiro"
    include "build/baserom/ovl_Bg_Gnd_Darkmeiro.o"
endseg

beginseg
    name "ovl_Bg_Gnd_Firemeiro"
    include "build/baserom/ovl_Bg_Gnd_Firemeiro.o"
endseg

beginseg
    name "ovl_Bg_Gnd_Iceblock"
    include "build/baserom/ovl_Bg_Gnd_Iceblock.o"
    increment 0x10
endseg

beginseg
    name "ovl_Bg_Gnd_Nisekabe"
    //increment 0x10 // rodata???
    include "build/src/overlays/actors/ovl_Bg_Gnd_Nisekabe/z_bg_gnd_nisekabe.o"
    include "build/src/overlays/actors/ovl_Bg_Gnd_Nisekabe/z_bg_gnd_nisekabe_reloc.o"
endseg

beginseg
    name "ovl_Bg_Gnd_Soulmeiro"
    include "build/baserom/ovl_Bg_Gnd_Soulmeiro.o"
endseg

beginseg
    name "ovl_Bg_Haka"
    include "build/baserom/ovl_Bg_Haka.o"
endseg

beginseg
    name "ovl_Bg_Haka_Gate"
    increment 0x10
    include "build/baserom/ovl_Bg_Haka_Gate.o"
endseg

beginseg
    name "ovl_Bg_Haka_Huta"
    include "build/baserom/ovl_Bg_Haka_Huta.o"
endseg

beginseg
    name "ovl_Bg_Haka_Megane"
    include "build/baserom/ovl_Bg_Haka_Megane.o"
endseg

beginseg
    name "ovl_Bg_Haka_MeganeBG"
    //include "build/baserom/ovl_Bg_Haka_MeganeBG.o"
    include "build/asm/overlays/actors/ovl_Bg_Haka_MeganeBG/z_bg_haka_meganebg.o"
endseg

beginseg
    name "ovl_Bg_Haka_Sgami"
    include "build/baserom/ovl_Bg_Haka_Sgami.o"
endseg

beginseg
    name "ovl_Bg_Haka_Ship"
    include "build/baserom/ovl_Bg_Haka_Ship.o"
endseg

beginseg
    name "ovl_Bg_Haka_Trap"
    include "build/baserom/ovl_Bg_Haka_Trap.o"
endseg

beginseg
    name "ovl_Bg_Haka_Tubo"
    include "build/baserom/ovl_Bg_Haka_Tubo.o"
endseg

beginseg
    name "ovl_Bg_Haka_Water"
    include "build/baserom/ovl_Bg_Haka_Water.o"
endseg

beginseg
    name "ovl_Bg_Haka_Zou"
    include "build/baserom/ovl_Bg_Haka_Zou.o"
endseg

beginseg
    name "ovl_Bg_Heavy_Block"
    include "build/baserom/ovl_Bg_Heavy_Block.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Curtain"
    include "build/baserom/ovl_Bg_Hidan_Curtain.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Dalm"
    include "build/baserom/ovl_Bg_Hidan_Dalm.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Firewall"
    include "build/baserom/ovl_Bg_Hidan_Firewall.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Fslift"
    include "build/baserom/ovl_Bg_Hidan_Fslift.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Fwbig"
    include "build/baserom/ovl_Bg_Hidan_Fwbig.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Hamstep"
    include "build/baserom/ovl_Bg_Hidan_Hamstep.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Hrock"
    include "build/baserom/ovl_Bg_Hidan_Hrock.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Kousi"
    include "build/baserom/ovl_Bg_Hidan_Kousi.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Kowarerukabe"
    include "build/baserom/ovl_Bg_Hidan_Kowarerukabe.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Rock"
    include "build/baserom/ovl_Bg_Hidan_Rock.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Rsekizou"
    include "build/baserom/ovl_Bg_Hidan_Rsekizou.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Sekizou"
    include "build/baserom/ovl_Bg_Hidan_Sekizou.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Sima"
    include "build/baserom/ovl_Bg_Hidan_Sima.o"
endseg

beginseg
    name "ovl_Bg_Hidan_Syoku"
    include "build/baserom/ovl_Bg_Hidan_Syoku.o"
endseg

beginseg
    name "ovl_Bg_Ice_Objects"
    include "build/baserom/ovl_Bg_Ice_Objects.o"
endseg

beginseg
    name "ovl_Bg_Ice_Shelter"
    include "build/baserom/ovl_Bg_Ice_Shelter.o"
endseg

beginseg
    name "ovl_Bg_Ice_Shutter"
    include "build/baserom/ovl_Bg_Ice_Shutter.o"
endseg

beginseg
    name "ovl_Bg_Ice_Turara"
    include "build/baserom/ovl_Bg_Ice_Turara.o"
endseg

beginseg
    name "ovl_Bg_Ingate"
    // include "build/baserom/ovl_Bg_Ingate.o"
    include "build/asm/overlays/actors/ovl_Bg_Ingate/z_bg_ingate.o"
endseg

beginseg
    name "ovl_Bg_Jya_1flift"
    include "build/baserom/ovl_Bg_Jya_1flift.o"
endseg

beginseg
    name "ovl_Bg_Jya_Amishutter"
    include "build/baserom/ovl_Bg_Jya_Amishutter.o"
endseg

beginseg
    name "ovl_Bg_Jya_Bigmirror"
    include "build/baserom/ovl_Bg_Jya_Bigmirror.o"
endseg

beginseg
    name "ovl_Bg_Jya_Block"
    include "build/baserom/ovl_Bg_Jya_Block.o"
endseg

beginseg
    name "ovl_Bg_Jya_Bombchuiwa"
    include "build/baserom/ovl_Bg_Jya_Bombchuiwa.o"
endseg

beginseg
    name "ovl_Bg_Jya_Bombiwa"
    include "build/baserom/ovl_Bg_Jya_Bombiwa.o"
endseg

beginseg
    name "ovl_Bg_Jya_Cobra"
    include "build/baserom/ovl_Bg_Jya_Cobra.o"
endseg

beginseg
    name "ovl_Bg_Jya_Goroiwa"
    include "build/baserom/ovl_Bg_Jya_Goroiwa.o"
endseg

beginseg
    name "ovl_Bg_Jya_Haheniron"
    include "build/baserom/ovl_Bg_Jya_Haheniron.o"
endseg

beginseg
    name "ovl_Bg_Jya_Ironobj"
    include "build/baserom/ovl_Bg_Jya_Ironobj.o"
endseg

beginseg
    name "ovl_Bg_Jya_Kanaami"
    include "build/baserom/ovl_Bg_Jya_Kanaami.o"
endseg

beginseg
    name "ovl_Bg_Jya_Lift"
    include "build/baserom/ovl_Bg_Jya_Lift.o"
endseg

beginseg
    name "ovl_Bg_Jya_Megami"
    include "build/baserom/ovl_Bg_Jya_Megami.o"
endseg

beginseg
    name "ovl_Bg_Jya_Zurerukabe"
    include "build/baserom/ovl_Bg_Jya_Zurerukabe.o"
endseg

beginseg
    name "ovl_Bg_Menkuri_Eye"
    increment 0x10
    include "build/baserom/ovl_Bg_Menkuri_Eye.o"
endseg

beginseg
    name "ovl_Bg_Menkuri_Kaiten"
    include "build/baserom/ovl_Bg_Menkuri_Kaiten.o"
endseg

beginseg
    name "ovl_Bg_Menkuri_Nisekabe"
    include "build/baserom/ovl_Bg_Menkuri_Nisekabe.o"
endseg

beginseg
    name "ovl_Bg_Mizu_Bwall"
    include "build/baserom/ovl_Bg_Mizu_Bwall.o"
endseg

beginseg
    name "ovl_Bg_Mizu_Movebg"
    increment 0x10
    include "build/baserom/ovl_Bg_Mizu_Movebg.o"
endseg

beginseg
    name "ovl_Bg_Mizu_Shutter"
    include "build/baserom/ovl_Bg_Mizu_Shutter.o"
endseg

beginseg
    name "ovl_Bg_Mizu_Uzu"
    include "build/baserom/ovl_Bg_Mizu_Uzu.o"
endseg

beginseg
    name "ovl_Bg_Mizu_Water"
    include "build/baserom/ovl_Bg_Mizu_Water.o"
endseg

beginseg
    name "ovl_Bg_Mjin"
    include "build/baserom/ovl_Bg_Mjin.o"
endseg

beginseg
    name "ovl_Bg_Mori_Bigst"
    include "build/baserom/ovl_Bg_Mori_Bigst.o"
endseg

beginseg
    name "ovl_Bg_Mori_Elevator"
    include "build/baserom/ovl_Bg_Mori_Elevator.o"
endseg

beginseg
    name "ovl_Bg_Mori_Hashigo"
    include "build/baserom/ovl_Bg_Mori_Hashigo.o"
endseg

beginseg
    name "ovl_Bg_Mori_Hashira4"
    increment 0x10
    include "build/baserom/ovl_Bg_Mori_Hashira4.o"
endseg

beginseg
    name "ovl_Bg_Mori_Hineri"
    include "build/baserom/ovl_Bg_Mori_Hineri.o"
endseg

beginseg
    name "ovl_Bg_Mori_Idomizu"
    include "build/baserom/ovl_Bg_Mori_Idomizu.o"
endseg

beginseg
    name "ovl_Bg_Mori_Kaitenkabe"
    include "build/baserom/ovl_Bg_Mori_Kaitenkabe.o"
endseg

beginseg
    name "ovl_Bg_Mori_Rakkatenjo"
    include "build/baserom/ovl_Bg_Mori_Rakkatenjo.o"
endseg

beginseg
    name "ovl_Bg_Po_Event"
    increment 0x10
    include "build/baserom/ovl_Bg_Po_Event.o"
endseg

beginseg
    name "ovl_Bg_Po_Syokudai"
    include "build/baserom/ovl_Bg_Po_Syokudai.o"
endseg

beginseg
    name "ovl_Bg_Pushbox"
    include "build/baserom/ovl_Bg_Pushbox.o"
endseg

beginseg
    name "ovl_Bg_Relay_Objects"
    include "build/baserom/ovl_Bg_Relay_Objects.o"
endseg

beginseg
    name "ovl_Bg_Spot00_Break"
    //include "build/baserom/ovl_Bg_Spot00_Break.o"
    //include "build/asm/overlays/actors/ovl_Bg_Spot00_Break/z_bg_spot00_break.o"
    include "build/src/overlays/actors/ovl_Bg_Spot00_Break/z_bg_spot00_break.o"
    include "build/src/overlays/actors/ovl_Bg_Spot00_Break/z_bg_spot00_break_reloc.o"
endseg

beginseg
    name "ovl_Bg_Spot00_Hanebasi"
    include "build/baserom/ovl_Bg_Spot00_Hanebasi.o"
endseg

beginseg
    name "ovl_Bg_Spot01_Fusya"
    //include "build/baserom/ovl_Bg_Spot01_Fusya.o"
    include "build/asm/overlays/actors/ovl_Bg_Spot01_Fusya/z_bg_spot01_fusya.o"
endseg

beginseg
    name "ovl_Bg_Spot01_Idohashira"
    include "build/baserom/ovl_Bg_Spot01_Idohashira.o"
endseg

beginseg
    name "ovl_Bg_Spot01_Idomizu"
    //include "build/baserom/ovl_Bg_Spot01_Idomizu.o"
    include "build/asm/overlays/actors/ovl_Bg_Spot01_Idomizu/z_bg_spot01_idomizu.o"
endseg

beginseg
    name "ovl_Bg_Spot01_Idosoko"
    include "build/baserom/ovl_Bg_Spot01_Idosoko.o"
endseg

beginseg
    name "ovl_Bg_Spot01_Objects2"
    include "build/baserom/ovl_Bg_Spot01_Objects2.o"
endseg

beginseg
    name "ovl_Bg_Spot02_Objects"
    include "build/baserom/ovl_Bg_Spot02_Objects.o"
endseg

beginseg
    name "ovl_Bg_Spot03_Taki"
    include "build/baserom/ovl_Bg_Spot03_Taki.o"
endseg

beginseg
    name "ovl_Bg_Spot05_Soko"
    include "build/baserom/ovl_Bg_Spot05_Soko.o"
endseg

beginseg
    name "ovl_Bg_Spot06_Objects"
    include "build/baserom/ovl_Bg_Spot06_Objects.o"
endseg

beginseg
    name "ovl_Bg_Spot07_Taki"
    //include "build/baserom/ovl_Bg_Spot07_Taki.o"
    include "build/asm/overlays/actors/ovl_Bg_Spot07_Taki/z_bg_spot07_taki.o"
endseg

beginseg
    name "ovl_Bg_Spot08_Bakudankabe"
    include "build/baserom/ovl_Bg_Spot08_Bakudankabe.o"
endseg

beginseg
    name "ovl_Bg_Spot08_Iceblock"
    include "build/baserom/ovl_Bg_Spot08_Iceblock.o"
endseg

beginseg
    name "ovl_Bg_Spot09_Obj"
    //include "build/baserom/ovl_Bg_Spot09_Obj.o"
    include "build/asm/overlays/actors/ovl_Bg_Spot09_Obj/z_bg_spot09_obj.o"
endseg

beginseg
    name "ovl_Bg_Spot11_Bakudankabe"
    include "build/baserom/ovl_Bg_Spot11_Bakudankabe.o"
endseg

beginseg
    name "ovl_Bg_Spot11_Oasis"
    include "build/baserom/ovl_Bg_Spot11_Oasis.o"
endseg

beginseg
    name "ovl_Bg_Spot12_Gate"
    include "build/baserom/ovl_Bg_Spot12_Gate.o"
endseg

beginseg
    name "ovl_Bg_Spot12_Saku"
    include "build/baserom/ovl_Bg_Spot12_Saku.o"
endseg

beginseg
    name "ovl_Bg_Spot15_Rrbox"
    include "build/baserom/ovl_Bg_Spot15_Rrbox.o"
endseg

beginseg
    name "ovl_Bg_Spot15_Saku"
    //include "build/baserom/ovl_Bg_Spot15_Saku.o"
    include "build/asm/overlays/actors/ovl_Bg_Spot15_Saku/z_bg_spot15_saku.o"
endseg

beginseg
    name "ovl_Bg_Spot16_Bombstone"
    include "build/baserom/ovl_Bg_Spot16_Bombstone.o"
endseg

beginseg
    name "ovl_Bg_Spot16_Doughnut"
    include "build/baserom/ovl_Bg_Spot16_Doughnut.o"
endseg

beginseg
    name "ovl_Bg_Spot17_Bakudankabe"
    include "build/baserom/ovl_Bg_Spot17_Bakudankabe.o"
endseg

beginseg
    name "ovl_Bg_Spot17_Funen"
    //include "build/baserom/ovl_Bg_Spot17_Funen.o"
    include "build/asm/overlays/actors/ovl_Bg_Spot17_Funen/z_bg_spot17_funen.o"
endseg

beginseg
    name "ovl_Bg_Spot18_Basket"
    include "build/baserom/ovl_Bg_Spot18_Basket.o"
endseg

beginseg
    name "ovl_Bg_Spot18_Futa"
    //include "build/baserom/ovl_Bg_Spot18_Futa.o"
    include "build/src/overlays/actors/ovl_Bg_Spot18_Futa/z_bg_spot18_futa.o"
    include "build/src/overlays/actors/ovl_Bg_Spot18_Futa/z_bg_spot18_futa_reloc.o"
endseg

beginseg
    name "ovl_Bg_Spot18_Obj"
    include "build/baserom/ovl_Bg_Spot18_Obj.o"
endseg

beginseg
    name "ovl_Bg_Spot18_Shutter"
    include "build/baserom/ovl_Bg_Spot18_Shutter.o"
endseg

beginseg
    name "ovl_Bg_Sst_Floor"
    include "build/baserom/ovl_Bg_Sst_Floor.o"
endseg

beginseg
    name "ovl_Bg_Toki_Hikari"
    include "build/baserom/ovl_Bg_Toki_Hikari.o"
endseg

beginseg
    name "ovl_Bg_Toki_Swd"
    include "build/baserom/ovl_Bg_Toki_Swd.o"
endseg

beginseg
    name "ovl_Bg_Treemouth"
    include "build/baserom/ovl_Bg_Treemouth.o"
endseg

beginseg
    name "ovl_Bg_Umajump"
    //include "build/baserom/ovl_Bg_Umajump.o"
    include "build/src/overlays/actors/ovl_Bg_Umajump/z_bg_umajump.o"
    include "build/src/overlays/actors/ovl_Bg_Umajump/z_bg_umajump_reloc.o"
endseg

beginseg
    name "ovl_Bg_Vb_Sima"
    include "build/baserom/ovl_Bg_Vb_Sima.o"
endseg

beginseg
    name "ovl_Bg_Ydan_Hasi"
    include "build/baserom/ovl_Bg_Ydan_Hasi.o"
endseg

beginseg
    name "ovl_Bg_Ydan_Maruta"
    include "build/baserom/ovl_Bg_Ydan_Maruta.o"
endseg

beginseg
    name "ovl_Bg_Ydan_Sp"
    include "build/baserom/ovl_Bg_Ydan_Sp.o"
endseg

beginseg
    name "ovl_Bg_Zg"
    include "build/baserom/ovl_Bg_Zg.o"
endseg

beginseg
    name "ovl_Boss_Dodongo"
    include "build/baserom/ovl_Boss_Dodongo.o"
endseg

beginseg
    name "ovl_Boss_Fd"
    include "build/baserom/ovl_Boss_Fd.o"
endseg

beginseg
    name "ovl_Boss_Fd2"
    include "build/baserom/ovl_Boss_Fd2.o"
endseg

beginseg
    name "ovl_Boss_Ganon"
    increment 0x3B80
    include "build/baserom/ovl_Boss_Ganon.o"
endseg

beginseg
    name "ovl_Boss_Ganon2"
    increment 0x1B20
    include "build/baserom/ovl_Boss_Ganon2.o"
endseg

beginseg
    name "ovl_Boss_Ganondrof"
    include "build/baserom/ovl_Boss_Ganondrof.o"
endseg

beginseg
    name "ovl_Boss_Goma"
    include "build/baserom/ovl_Boss_Goma.o"
endseg

beginseg
    name "ovl_Boss_Mo"
    increment 0x4B10
    include "build/baserom/ovl_Boss_Mo.o"
endseg

beginseg
    name "ovl_Boss_Sst"
    increment 0x40
    include "build/baserom/ovl_Boss_Sst.o"
endseg

beginseg
    name "ovl_Boss_Tw"
    increment 0x2A80
    include "build/baserom/ovl_Boss_Tw.o"
endseg

beginseg
    name "ovl_Boss_Va"
    increment 0x8A00
    include "build/baserom/ovl_Boss_Va.o"
endseg

beginseg
    name "ovl_Demo_6K"
    include "build/baserom/ovl_Demo_6K.o"
endseg

beginseg
    name "ovl_Demo_Du"
    include "build/baserom/ovl_Demo_Du.o"
endseg

beginseg
    name "ovl_Demo_Ec"
    include "build/baserom/ovl_Demo_Ec.o"
endseg

beginseg
    name "ovl_Demo_Effect"
    include "build/baserom/ovl_Demo_Effect.o"
endseg

beginseg
    name "ovl_Demo_Ext"
    include "build/baserom/ovl_Demo_Ext.o"
endseg

beginseg
    name "ovl_Demo_Geff"
    include "build/baserom/ovl_Demo_Geff.o"
endseg

beginseg
    name "ovl_Demo_Gj"
    include "build/baserom/ovl_Demo_Gj.o"
endseg

beginseg
    name "ovl_Demo_Go"
    include "build/baserom/ovl_Demo_Go.o"
endseg

beginseg
    name "ovl_Demo_Gt"
    include "build/baserom/ovl_Demo_Gt.o"
endseg

beginseg
    name "ovl_Demo_Ik"
    include "build/baserom/ovl_Demo_Ik.o"
endseg

beginseg
    name "ovl_Demo_Im"
    include "build/baserom/ovl_Demo_Im.o"
endseg

beginseg
    name "ovl_Demo_Kankyo"
    increment 0x50
    include "build/baserom/ovl_Demo_Kankyo.o"
endseg

beginseg
    name "ovl_Demo_Kekkai"
    include "build/baserom/ovl_Demo_Kekkai.o"
endseg

beginseg
    name "ovl_Demo_Sa"
    include "build/baserom/ovl_Demo_Sa.o"
endseg

beginseg
    name "ovl_Demo_Shd"
    include "build/baserom/ovl_Demo_Shd.o"
endseg

beginseg
    name "ovl_Demo_Tre_Lgt"
    include "build/baserom/ovl_Demo_Tre_Lgt.o"
endseg

beginseg
    name "ovl_Door_Ana"
    //include "build/baserom/ovl_Door_Ana.o"
    include "build/asm/overlays/actors/ovl_Door_Ana/z_door_ana.o"
endseg

beginseg
    name "ovl_Door_Gerudo"
    //include "build/baserom/ovl_Door_Gerudo.o"
    include "build/asm/overlays/actors/ovl_Door_Gerudo/z_door_gerudo.o"
endseg

beginseg
    name "ovl_Door_Killer"
    include "build/baserom/ovl_Door_Killer.o"
endseg

beginseg
    name "ovl_Door_Shutter"
    include "build/baserom/ovl_Door_Shutter.o"
endseg

beginseg
    name "ovl_Door_Toki"
    //include "build/baserom/ovl_Door_Toki.o"
    include "build/src/overlays/actors/ovl_Door_Toki/z_door_toki.o"
    include "build/src/overlays/actors/ovl_Door_Toki/z_door_toki_reloc.o"
endseg

beginseg
    name "ovl_Door_Warp1"
    increment 0x10
    include "build/baserom/ovl_Door_Warp1.o"
endseg

beginseg
    name "ovl_Efc_Erupc"
    include "build/baserom/ovl_Efc_Erupc.o"
endseg

beginseg
    name "ovl_Eff_Dust"
    include "build/baserom/ovl_Eff_Dust.o"
endseg

beginseg
    name "ovl_Effect_Ss_Blast"
    include "build/baserom/ovl_Effect_Ss_Blast.o"
endseg

beginseg
    name "ovl_Effect_Ss_Bomb"
    include "build/baserom/ovl_Effect_Ss_Bomb.o"
endseg

beginseg
    name "ovl_Effect_Ss_Bomb2"
    include "build/baserom/ovl_Effect_Ss_Bomb2.o"
endseg

beginseg
    name "ovl_Effect_Ss_Bubble"
    include "build/baserom/ovl_Effect_Ss_Bubble.o"
endseg

beginseg
    name "ovl_Effect_Ss_D_Fire"
    include "build/baserom/ovl_Effect_Ss_D_Fire.o"
endseg

beginseg
    name "ovl_Effect_Ss_Dead_Db"
    include "build/baserom/ovl_Effect_Ss_Dead_Db.o"
endseg

beginseg
    name "ovl_Effect_Ss_Dead_Dd"
    //include "build/baserom/ovl_Effect_Ss_Dead_Dd.o"
    include "build/asm/overlays/effects/ovl_Effect_Ss_Dead_Dd/z_effect_ss_dead_dd.o"
endseg

beginseg
    name "ovl_Effect_Ss_Dead_Ds"
    include "build/baserom/ovl_Effect_Ss_Dead_Ds.o"
endseg

beginseg
    name "ovl_Effect_Ss_Dead_Sound"
    //include "build/baserom/ovl_Effect_Ss_Dead_Sound.o"
    include "build/asm/overlays/effects/ovl_Effect_Ss_Dead_Sound/z_effect_ss_dead_sound.o"
endseg

beginseg
    name "ovl_Effect_Ss_Dt_Bubble"
    include "build/baserom/ovl_Effect_Ss_Dt_Bubble.o"
endseg

beginseg
    name "ovl_Effect_Ss_Dust"
    include "build/baserom/ovl_Effect_Ss_Dust.o"
endseg

beginseg
    name "ovl_Effect_Ss_En_Fire"
    include "build/baserom/ovl_Effect_Ss_En_Fire.o"
endseg

beginseg
    name "ovl_Effect_Ss_En_Ice"
    include "build/baserom/ovl_Effect_Ss_En_Ice.o"
endseg

beginseg
    name "ovl_Effect_Ss_Extra"
    //include "build/baserom/ovl_Effect_Ss_Extra.o"
    include "build/asm/overlays/effects/ovl_Effect_Ss_Extra/z_effect_ss_extra.o"
endseg

beginseg
    name "ovl_Effect_Ss_Fcircle"
    include "build/baserom/ovl_Effect_Ss_Fcircle.o"
endseg

beginseg
    name "ovl_Effect_Ss_Fhg_Flash"
    include "build/baserom/ovl_Effect_Ss_Fhg_Flash.o"
endseg

beginseg
    name "ovl_Effect_Ss_Fire_Tail"
    include "build/baserom/ovl_Effect_Ss_Fire_Tail.o"
endseg

beginseg
    name "ovl_Effect_Ss_G_Fire"
    include "build/baserom/ovl_Effect_Ss_G_Fire.o"
endseg

beginseg
    name "ovl_Effect_Ss_G_Magma"
    include "build/baserom/ovl_Effect_Ss_G_Magma.o"
endseg

beginseg
    name "ovl_Effect_Ss_G_Magma2"
    include "build/baserom/ovl_Effect_Ss_G_Magma2.o"
endseg

beginseg
    name "ovl_Effect_Ss_G_Ripple"
    //include "build/baserom/ovl_Effect_Ss_G_Ripple.o"
    include "build/asm/overlays/effects/ovl_Effect_Ss_G_Ripple/z_effect_ss_g_ripple.o"
endseg

beginseg
    name "ovl_Effect_Ss_G_Spk"
    include "build/baserom/ovl_Effect_Ss_G_Spk.o"
endseg

beginseg
    name "ovl_Effect_Ss_G_Splash"
    //include "build/baserom/ovl_Effect_Ss_G_Splash.o"
    include "build/asm/overlays/effects/ovl_Effect_Ss_G_Splash/z_effect_ss_g_splash.o"
endseg

beginseg
    name "ovl_Effect_Ss_Hahen"
    include "build/baserom/ovl_Effect_Ss_Hahen.o"
endseg

beginseg
    name "ovl_Effect_Ss_HitMark"
    include "build/baserom/ovl_Effect_Ss_HitMark.o"
endseg

beginseg
    name "ovl_Effect_Ss_Ice_Piece"
    include "build/baserom/ovl_Effect_Ss_Ice_Piece.o"
endseg

beginseg
    name "ovl_Effect_Ss_Ice_Smoke"
    //include "build/baserom/ovl_Effect_Ss_Ice_Smoke.o"
    include "build/asm/overlays/effects/ovl_Effect_Ss_Ice_Smoke/z_effect_ss_ice_smoke.o"
endseg

beginseg
    name "ovl_Effect_Ss_K_Fire"
    include "build/baserom/ovl_Effect_Ss_K_Fire.o"
endseg

beginseg
    name "ovl_Effect_Ss_Kakera"
    include "build/baserom/ovl_Effect_Ss_Kakera.o"
endseg

beginseg
    name "ovl_Effect_Ss_KiraKira"
    //include "build/baserom/ovl_Effect_Ss_KiraKira.o"
    include "build/asm/overlays/effects/ovl_Effect_Ss_KiraKira/z_effect_ss_kirakira.o"
endseg

beginseg
    name "ovl_Effect_Ss_Lightning"
    include "build/baserom/ovl_Effect_Ss_Lightning.o"
endseg

beginseg
    name "ovl_Effect_Ss_Sibuki"
    include "build/baserom/ovl_Effect_Ss_Sibuki.o"
endseg

beginseg
    name "ovl_Effect_Ss_Sibuki2"
    include "build/baserom/ovl_Effect_Ss_Sibuki2.o"
endseg

beginseg
    name "ovl_Effect_Ss_Solder_Srch_Ball"
    include "build/baserom/ovl_Effect_Ss_Solder_Srch_Ball.o"
endseg

beginseg
    name "ovl_Effect_Ss_Stick"
    //include "build/baserom/ovl_Effect_Ss_Stick.o"
    include "build/asm/overlays/effects/ovl_Effect_Ss_Stick/z_effect_ss_stick.o"
endseg

beginseg
    name "ovl_Effect_Ss_Stone1"
    include "build/baserom/ovl_Effect_Ss_Stone1.o"
endseg

beginseg
    name "ovl_Elf_Msg"
    include "build/baserom/ovl_Elf_Msg.o"
endseg

beginseg
    name "ovl_Elf_Msg2"
    include "build/baserom/ovl_Elf_Msg2.o"
endseg

beginseg
    name "ovl_En_Am"
    include "build/baserom/ovl_En_Am.o"
endseg

beginseg
    name "ovl_En_Ani"
    include "build/baserom/ovl_En_Ani.o"
endseg

beginseg
    name "ovl_En_Anubice"
    include "build/baserom/ovl_En_Anubice.o"
endseg

beginseg
    name "ovl_En_Anubice_Fire"
    include "build/baserom/ovl_En_Anubice_Fire.o"
endseg

beginseg
    name "ovl_En_Anubice_Tag"
    include "build/baserom/ovl_En_Anubice_Tag.o"
endseg

beginseg
    name "ovl_En_Arow_Trap"
    //include "build/baserom/ovl_En_Arow_Trap.o"
    include "build/src/overlays/actors/ovl_En_Arow_Trap/z_en_arow_trap.o"
    include "build/src/overlays/actors/ovl_En_Arow_Trap/z_en_arow_trap_reloc.o"
endseg

beginseg
    name "ovl_En_Arrow"
    include "build/baserom/ovl_En_Arrow.o"
endseg

beginseg
    name "ovl_En_Attack_Niw"
    include "build/baserom/ovl_En_Attack_Niw.o"
endseg

beginseg
    name "ovl_En_Ba"
    include "build/baserom/ovl_En_Ba.o"
endseg

beginseg
    name "ovl_En_Bb"
    include "build/baserom/ovl_En_Bb.o"
endseg

beginseg
    name "ovl_En_Bdfire"
    include "build/baserom/ovl_En_Bdfire.o"
endseg

beginseg
    name "ovl_En_Bigokuta"
    include "build/baserom/ovl_En_Bigokuta.o"
endseg

beginseg
    name "ovl_En_Bili"
    include "build/baserom/ovl_En_Bili.o"
endseg

beginseg
    name "ovl_En_Bird"
    include "build/baserom/ovl_En_Bird.o"
endseg

beginseg
    name "ovl_En_Blkobj"
    include "build/baserom/ovl_En_Blkobj.o"
endseg

beginseg
    name "ovl_En_Bom"
    include "build/baserom/ovl_En_Bom.o"
endseg

beginseg
    name "ovl_En_Bom_Bowl_Man"
    include "build/baserom/ovl_En_Bom_Bowl_Man.o"
endseg

beginseg
    name "ovl_En_Bom_Bowl_Pit"
    include "build/baserom/ovl_En_Bom_Bowl_Pit.o"
endseg

beginseg
    name "ovl_En_Bom_Chu"
    include "build/baserom/ovl_En_Bom_Chu.o"
endseg

beginseg
    name "ovl_En_Bombf"
    include "build/baserom/ovl_En_Bombf.o"
endseg

beginseg
    name "ovl_En_Boom"
    include "build/baserom/ovl_En_Boom.o"
    //include "build/src/overlays/actors/ovl_En_Boom/z_en_boom.o"
    //include "build/src/overlays/actors/ovl_En_Boom/z_en_boom_reloc.o"
endseg

beginseg
    name "ovl_En_Box"
    increment 0x10
    include "build/baserom/ovl_En_Box.o"
endseg

beginseg
    name "ovl_En_Brob"
    include "build/baserom/ovl_En_Brob.o"
endseg

beginseg
    name "ovl_En_Bubble"
    include "build/baserom/ovl_En_Bubble.o"
endseg

beginseg
    name "ovl_En_Butte"
    include "build/baserom/ovl_En_Butte.o"
endseg

beginseg
    name "ovl_En_Bw"
    include "build/baserom/ovl_En_Bw.o"
endseg

beginseg
    name "ovl_En_Bx"
    include "build/baserom/ovl_En_Bx.o"
endseg

beginseg
    name "ovl_En_Changer"
    include "build/baserom/ovl_En_Changer.o"
endseg

beginseg
    name "ovl_En_Clear_Tag"
    increment 0x2A30
    include "build/baserom/ovl_En_Clear_Tag.o"
endseg

beginseg
    name "ovl_En_Cow"
    include "build/baserom/ovl_En_Cow.o"
endseg

beginseg
    name "ovl_En_Crow"
    include "build/baserom/ovl_En_Crow.o"
endseg

beginseg
    name "ovl_En_Cs"
    include "build/baserom/ovl_En_Cs.o"
endseg

beginseg
    name "ovl_En_Daiku"
    include "build/baserom/ovl_En_Daiku.o"
endseg

beginseg
    name "ovl_En_Daiku_Kakariko"
    include "build/baserom/ovl_En_Daiku_Kakariko.o"
endseg

beginseg
    name "ovl_En_Dekubaba"
    include "build/baserom/ovl_En_Dekubaba.o"
endseg

beginseg
    name "ovl_En_Dekunuts"
    include "build/baserom/ovl_En_Dekunuts.o"
endseg

beginseg
    name "ovl_En_Dh"
    include "build/baserom/ovl_En_Dh.o"
endseg

beginseg
    name "ovl_En_Dha"
    include "build/baserom/ovl_En_Dha.o"
endseg

beginseg
    name "ovl_En_Diving_Game"
    include "build/baserom/ovl_En_Diving_Game.o"
endseg

beginseg
    name "ovl_En_Dns"
    include "build/baserom/ovl_En_Dns.o"
endseg

beginseg
    name "ovl_En_Dnt_Demo"
    include "build/baserom/ovl_En_Dnt_Demo.o"
endseg

beginseg
    name "ovl_En_Dnt_Jiji"
    include "build/baserom/ovl_En_Dnt_Jiji.o"
endseg

beginseg
    name "ovl_En_Dnt_Nomal"
    include "build/baserom/ovl_En_Dnt_Nomal.o"
endseg

beginseg
    name "ovl_En_Dodojr"
    include "build/baserom/ovl_En_Dodojr.o"
endseg

beginseg
    name "ovl_En_Dodongo"
    include "build/baserom/ovl_En_Dodongo.o"
endseg

beginseg
    name "ovl_En_Dog"
    include "build/baserom/ovl_En_Dog.o"
endseg

beginseg
    name "ovl_En_Door"
    include "build/baserom/ovl_En_Door.o"
endseg

beginseg
    name "ovl_En_Ds"
    include "build/baserom/ovl_En_Ds.o"
endseg

beginseg
    name "ovl_En_Du"
    include "build/baserom/ovl_En_Du.o"
endseg

beginseg
    name "ovl_En_Dy_Extra"
    include "build/baserom/ovl_En_Dy_Extra.o"
endseg

beginseg
    name "ovl_En_Eg"
    //include "build/baserom/ovl_En_Eg.o"
    include "build/src/overlays/actors/ovl_En_Eg/z_en_eg.o"
    include "build/src/overlays/actors/ovl_En_Eg/z_en_eg_reloc.o"
endseg

beginseg
    name "ovl_En_Eiyer"
    include "build/baserom/ovl_En_Eiyer.o"
endseg

beginseg
    name "ovl_En_Elf"
    include "build/baserom/ovl_En_Elf.o"
endseg

beginseg
    name "ovl_En_Encount1"
    include "build/baserom/ovl_En_Encount1.o"
endseg

beginseg
    name "ovl_En_Encount2"
    include "build/baserom/ovl_En_Encount2.o"
endseg

beginseg
    name "ovl_En_Ex_Item"
    include "build/baserom/ovl_En_Ex_Item.o"
endseg

beginseg
    name "ovl_En_Ex_Ruppy"
    include "build/baserom/ovl_En_Ex_Ruppy.o"
endseg

beginseg
    name "ovl_En_Fd"
    include "build/baserom/ovl_En_Fd.o"
endseg

beginseg
    name "ovl_En_Fd_Fire"
    include "build/baserom/ovl_En_Fd_Fire.o"
endseg

beginseg
    name "ovl_En_Fhg_Fire"
    include "build/baserom/ovl_En_Fhg_Fire.o"
endseg

beginseg
    name "ovl_En_Fire_Rock"
    include "build/baserom/ovl_En_Fire_Rock.o"
endseg

beginseg
    name "ovl_En_Firefly"
    include "build/baserom/ovl_En_Firefly.o"
endseg

beginseg
    name "ovl_En_Fish"
    include "build/baserom/ovl_En_Fish.o"
endseg

beginseg
    name "ovl_En_Floormas"
    include "build/baserom/ovl_En_Floormas.o"
endseg

beginseg
    name "ovl_En_Fr"
    include "build/baserom/ovl_En_Fr.o"
endseg

beginseg
    name "ovl_En_Fu"
    increment 0x10
    include "build/baserom/ovl_En_Fu.o"
endseg

beginseg
    name "ovl_En_Fw"
    include "build/baserom/ovl_En_Fw.o"
endseg

beginseg
    name "ovl_En_Fz"
    include "build/baserom/ovl_En_Fz.o"
endseg

beginseg
    name "ovl_En_G_Switch"
    include "build/baserom/ovl_En_G_Switch.o"
endseg

beginseg
    name "ovl_En_Ganon_Mant"
    include "build/baserom/ovl_En_Ganon_Mant.o"
endseg

beginseg
    name "ovl_En_Ganon_Organ"
    include "build/baserom/ovl_En_Ganon_Organ.o"
endseg

beginseg
    name "ovl_En_Gb"
    include "build/baserom/ovl_En_Gb.o"
endseg

beginseg
    name "ovl_En_Ge1"
    include "build/baserom/ovl_En_Ge1.o"
endseg

beginseg
    name "ovl_En_Ge2"
    include "build/baserom/ovl_En_Ge2.o"
endseg

beginseg
    name "ovl_En_Ge3"
    include "build/baserom/ovl_En_Ge3.o"
endseg

beginseg
    name "ovl_En_GeldB"
    include "build/baserom/ovl_En_GeldB.o"
endseg

beginseg
    name "ovl_En_GirlA"
    include "build/baserom/ovl_En_GirlA.o"
endseg

beginseg
    name "ovl_En_Gm"
    include "build/baserom/ovl_En_Gm.o"
endseg

beginseg
    name "ovl_En_Go"
    include "build/baserom/ovl_En_Go.o"
endseg

beginseg
    name "ovl_En_Go2"
    include "build/baserom/ovl_En_Go2.o"
endseg

beginseg
    name "ovl_En_Goma"
    include "build/baserom/ovl_En_Goma.o"
endseg

beginseg
    name "ovl_En_Goroiwa"
    include "build/baserom/ovl_En_Goroiwa.o"
endseg

beginseg
    name "ovl_En_Gs"
    include "build/baserom/ovl_En_Gs.o"
endseg

beginseg
    name "ovl_En_Guest"
    include "build/baserom/ovl_En_Guest.o"
endseg

beginseg
    name "ovl_En_Hata"
    include "build/baserom/ovl_En_Hata.o"
endseg

beginseg
    name "ovl_En_Heishi1"
    include "build/baserom/ovl_En_Heishi1.o"
endseg

beginseg
    name "ovl_En_Heishi2"
    include "build/baserom/ovl_En_Heishi2.o"
endseg

beginseg
    name "ovl_En_Heishi3"
    include "build/baserom/ovl_En_Heishi3.o"
endseg

beginseg
    name "ovl_En_Heishi4"
    include "build/baserom/ovl_En_Heishi4.o"
endseg

beginseg
    name "ovl_En_Hintnuts"
    include "build/baserom/ovl_En_Hintnuts.o"
endseg

beginseg
    name "ovl_En_Holl"
    include "build/baserom/ovl_En_Holl.o"
endseg

beginseg
    name "ovl_En_Honotrap"
    include "build/baserom/ovl_En_Honotrap.o"
endseg

beginseg
    name "ovl_En_Horse"
    include "build/baserom/ovl_En_Horse.o"
endseg

beginseg
    name "ovl_En_Horse_Game_Check"
    include "build/baserom/ovl_En_Horse_Game_Check.o"
endseg

beginseg
    name "ovl_En_Horse_Ganon"
    include "build/baserom/ovl_En_Horse_Ganon.o"
endseg

beginseg
    name "ovl_En_Horse_Link_Child"
    include "build/baserom/ovl_En_Horse_Link_Child.o"
endseg

beginseg
    name "ovl_En_Horse_Normal"
    include "build/baserom/ovl_En_Horse_Normal.o"
endseg

beginseg
    name "ovl_En_Horse_Zelda"
    include "build/baserom/ovl_En_Horse_Zelda.o"
endseg

beginseg
    name "ovl_En_Hs"
    include "build/baserom/ovl_En_Hs.o"
endseg

beginseg
    name "ovl_En_Hs2"
    include "build/baserom/ovl_En_Hs2.o"
endseg

beginseg
    name "ovl_En_Hy"
    include "build/baserom/ovl_En_Hy.o"
endseg

beginseg
    name "ovl_En_Ice_Hono"
    include "build/baserom/ovl_En_Ice_Hono.o"
endseg

beginseg
    name "ovl_En_Ik"
    increment 0x10
    include "build/baserom/ovl_En_Ik.o"
endseg

beginseg
    name "ovl_En_In"
    include "build/baserom/ovl_En_In.o"
endseg

beginseg
    name "ovl_En_Insect"
    include "build/baserom/ovl_En_Insect.o"
endseg

beginseg
    name "ovl_En_Ishi"
    include "build/baserom/ovl_En_Ishi.o"
endseg

beginseg
    name "ovl_En_It"
    //include "build/baserom/ovl_En_It.o"
    include "build/src/overlays/actors/ovl_En_It/z_en_it.o"
    include "build/src/overlays/actors/ovl_En_It/z_en_it_reloc.o"
endseg

beginseg
    name "ovl_En_Jj"
    include "build/baserom/ovl_En_Jj.o"
endseg

beginseg
    name "ovl_En_Js"
    include "build/baserom/ovl_En_Js.o"
endseg

beginseg
    name "ovl_En_Jsjutan"
    increment 0xB60
    include "build/baserom/ovl_En_Jsjutan.o"
endseg

beginseg
    name "ovl_En_Kakasi"
    include "build/baserom/ovl_En_Kakasi.o"
endseg

beginseg
    name "ovl_En_Kakasi2"
    include "build/baserom/ovl_En_Kakasi2.o"
endseg

beginseg
    name "ovl_En_Kakasi3"
    include "build/baserom/ovl_En_Kakasi3.o"
endseg

beginseg
    name "ovl_En_Kanban"
    include "build/baserom/ovl_En_Kanban.o"
endseg

beginseg
    name "ovl_En_Karebaba"
    include "build/baserom/ovl_En_Karebaba.o"
endseg

beginseg
    name "ovl_En_Ko"
    include "build/baserom/ovl_En_Ko.o"
endseg

beginseg
    name "ovl_En_Kusa"
    include "build/baserom/ovl_En_Kusa.o"
endseg

beginseg
    name "ovl_En_Kz"
    include "build/baserom/ovl_En_Kz.o"
endseg

beginseg
    name "ovl_En_Light"
    include "build/baserom/ovl_En_Light.o"
endseg

beginseg
    name "ovl_En_Lightbox"
    //include "build/baserom/ovl_En_Lightbox.o"
    include "build/asm/overlays/actors/ovl_En_Lightbox/z_en_lightbox.o"
endseg

beginseg
    name "ovl_En_M_Fire1"
    //include "build/baserom/ovl_En_M_Fire1.o"
    include "build/src/overlays/actors/ovl_En_M_Fire1/z_en_m_fire1.o"
    include "build/src/overlays/actors/ovl_En_M_Fire1/z_en_m_fire1_reloc.o"
endseg

beginseg
    name "ovl_En_M_Thunder"
    include "build/baserom/ovl_En_M_Thunder.o"
endseg

beginseg
    name "ovl_En_Ma1"
    include "build/baserom/ovl_En_Ma1.o"
endseg

beginseg
    name "ovl_En_Ma2"
    include "build/baserom/ovl_En_Ma2.o"
endseg

beginseg
    name "ovl_En_Ma3"
    include "build/baserom/ovl_En_Ma3.o"
endseg

beginseg
    name "ovl_En_Mag"
    include "build/baserom/ovl_En_Mag.o"
endseg

beginseg
    name "ovl_En_Mb"
    include "build/baserom/ovl_En_Mb.o"
endseg

beginseg
    name "ovl_En_Md"
    include "build/baserom/ovl_En_Md.o"
endseg

beginseg
    name "ovl_En_Mk"
    include "build/baserom/ovl_En_Mk.o"
endseg

beginseg
    name "ovl_En_Mm"
    include "build/baserom/ovl_En_Mm.o"
endseg

beginseg
    name "ovl_En_Mm2"
    include "build/baserom/ovl_En_Mm2.o"
endseg

beginseg
    name "ovl_En_Ms"
    include "build/baserom/ovl_En_Ms.o"
endseg

beginseg
    name "ovl_En_Mu"
    include "build/baserom/ovl_En_Mu.o"
endseg

beginseg
    name "ovl_En_Nb"
    include "build/baserom/ovl_En_Nb.o"
endseg

beginseg
    name "ovl_En_Niw"
    include "build/baserom/ovl_En_Niw.o"
endseg

beginseg
    name "ovl_En_Niw_Girl"
    include "build/baserom/ovl_En_Niw_Girl.o"
endseg

beginseg
    name "ovl_En_Niw_Lady"
    include "build/baserom/ovl_En_Niw_Lady.o"
endseg

beginseg
    name "ovl_En_Nutsball"
    include "build/baserom/ovl_En_Nutsball.o"
endseg

beginseg
    name "ovl_En_Nwc"
    include "build/baserom/ovl_En_Nwc.o"
endseg

beginseg
    name "ovl_En_Ny"
    include "build/baserom/ovl_En_Ny.o"
endseg

beginseg
    name "ovl_En_OE2"
    //include "build/baserom/ovl_En_OE2.o"
    include "build/src/overlays/actors/ovl_En_OE2/z_en_oe2.o"
    include "build/src/overlays/actors/ovl_En_OE2/z_en_oe2_reloc.o"
endseg

beginseg
    name "ovl_En_Okarina_Effect"
    include "build/baserom/ovl_En_Okarina_Effect.o"
endseg

beginseg
    name "ovl_En_Okarina_Tag"
    include "build/baserom/ovl_En_Okarina_Tag.o"
endseg

beginseg
    name "ovl_En_Okuta"
    include "build/baserom/ovl_En_Okuta.o"
endseg

beginseg
    name "ovl_En_Ossan"
    include "build/baserom/ovl_En_Ossan.o"
endseg

beginseg
    name "ovl_En_Owl"
    include "build/baserom/ovl_En_Owl.o"
endseg

beginseg
    name "ovl_En_Part"
    include "build/baserom/ovl_En_Part.o"
endseg

beginseg
    name "ovl_En_Peehat"
    include "build/baserom/ovl_En_Peehat.o"
endseg

beginseg
    name "ovl_En_Po_Desert"
    include "build/baserom/ovl_En_Po_Desert.o"
endseg

beginseg
    name "ovl_En_Po_Field"
    increment 0x90
    include "build/baserom/ovl_En_Po_Field.o"
endseg

beginseg
    name "ovl_En_Po_Relay"
    include "build/baserom/ovl_En_Po_Relay.o"
endseg

beginseg
    name "ovl_En_Po_Sisters"
    include "build/baserom/ovl_En_Po_Sisters.o"
endseg

beginseg
    name "ovl_En_Poh"
    include "build/baserom/ovl_En_Poh.o"
endseg

beginseg
    name "ovl_En_Pu_box"
    include "build/baserom/ovl_En_Pu_box.o"
endseg

beginseg
    name "ovl_En_Rd"
    include "build/baserom/ovl_En_Rd.o"
endseg

beginseg
    name "ovl_En_Reeba"
    include "build/baserom/ovl_En_Reeba.o"
endseg

beginseg
    name "ovl_En_River_Sound"
    //include "build/baserom/ovl_En_River_Sound.o"
    include "build/asm/overlays/actors/ovl_En_River_Sound/z_en_river_sound.o"
endseg

beginseg
    name "ovl_En_Rl"
    include "build/baserom/ovl_En_Rl.o"
endseg

beginseg
    name "ovl_En_Rr"
    include "build/baserom/ovl_En_Rr.o"
endseg

beginseg
    name "ovl_En_Ru1"
    include "build/baserom/ovl_En_Ru1.o"
endseg

beginseg
    name "ovl_En_Ru2"
    include "build/baserom/ovl_En_Ru2.o"
endseg

beginseg
    name "ovl_En_Sa"
    include "build/baserom/ovl_En_Sa.o"
endseg

beginseg
    name "ovl_En_Sb"
    include "build/baserom/ovl_En_Sb.o"
endseg

beginseg
    name "ovl_En_Scene_Change"
    //include "build/baserom/ovl_En_Scene_Change.o"
    include "build/asm/overlays/actors/ovl_En_Scene_Change/z_en_scene_change.o"
endseg

beginseg
    name "ovl_En_Sda"
    increment 0xC0
    include "build/baserom/ovl_En_Sda.o"
endseg

beginseg
    name "ovl_En_Shopnuts"
    include "build/baserom/ovl_En_Shopnuts.o"
endseg

beginseg
    name "ovl_En_Si"
    include "build/baserom/ovl_En_Si.o"
endseg

beginseg
    name "ovl_En_Siofuki"
    include "build/baserom/ovl_En_Siofuki.o"
endseg

beginseg
    name "ovl_En_Skb"
    include "build/baserom/ovl_En_Skb.o"
endseg

beginseg
    name "ovl_En_Skj"
    increment 0x10
    include "build/baserom/ovl_En_Skj.o"
endseg

beginseg
    name "ovl_En_Skjneedle"
    include "build/baserom/ovl_En_Skjneedle.o"
endseg

beginseg
    name "ovl_En_Ssh"
    include "build/baserom/ovl_En_Ssh.o"
endseg

beginseg
    name "ovl_En_St"
    include "build/baserom/ovl_En_St.o"
endseg

beginseg
    name "ovl_En_Sth"
    include "build/baserom/ovl_En_Sth.o"
endseg

beginseg
    name "ovl_En_Stream"
    include "build/baserom/ovl_En_Stream.o"
endseg

beginseg
    name "ovl_En_Sw"
    increment 0x80
    include "build/baserom/ovl_En_Sw.o"
endseg

beginseg
    name "ovl_En_Syateki_Itm"
    include "build/baserom/ovl_En_Syateki_Itm.o"
endseg

beginseg
    name "ovl_En_Syateki_Man"
    include "build/baserom/ovl_En_Syateki_Man.o"
endseg

beginseg
    name "ovl_En_Syateki_Niw"
    include "build/baserom/ovl_En_Syateki_Niw.o"
endseg

beginseg
    name "ovl_En_Ta"
    include "build/baserom/ovl_En_Ta.o"
endseg

beginseg
    name "ovl_En_Takara_Man"
    include "build/baserom/ovl_En_Takara_Man.o"
endseg

beginseg
    name "ovl_En_Tana"
    include "build/baserom/ovl_En_Tana.o"
endseg

beginseg
    name "ovl_En_Tg"
    include "build/baserom/ovl_En_Tg.o"
endseg

beginseg
    name "ovl_En_Tite"
    include "build/baserom/ovl_En_Tite.o"
endseg

beginseg
    name "ovl_En_Tk"
    include "build/baserom/ovl_En_Tk.o"
endseg

beginseg
    name "ovl_En_Torch"
    //include "build/baserom/ovl_En_Torch.o"
    include "build/src/overlays/actors/ovl_En_Torch/z_en_torch.o"
    include "build/src/overlays/actors/ovl_En_Torch/z_en_torch_reloc.o"
endseg

beginseg
    name "ovl_En_Torch2"
    increment 0x40
    include "build/baserom/ovl_En_Torch2.o"
endseg

beginseg
    name "ovl_En_Toryo"
    include "build/baserom/ovl_En_Toryo.o"
endseg

beginseg
    name "ovl_En_Tp"
    include "build/baserom/ovl_En_Tp.o"
endseg

beginseg
    name "ovl_En_Tr"
    include "build/baserom/ovl_En_Tr.o"
endseg

beginseg
    name "ovl_En_Trap"
    include "build/baserom/ovl_En_Trap.o"
endseg

beginseg
    name "ovl_En_Tubo_Trap"
    include "build/baserom/ovl_En_Tubo_Trap.o"
endseg

beginseg
    name "ovl_En_Vali"
    include "build/baserom/ovl_En_Vali.o"
endseg

beginseg
    name "ovl_En_Vase"
    //include "build/baserom/ovl_En_Vase.o"
    include "build/src/overlays/actors/ovl_En_Vase/z_en_vase.o"
    include "build/src/overlays/actors/ovl_En_Vase/z_en_vase_reloc.o"
endseg

beginseg
    name "ovl_En_Vb_Ball"
    include "build/baserom/ovl_En_Vb_Ball.o"
endseg

beginseg
    name "ovl_En_Viewer"
    increment 0x20
    include "build/baserom/ovl_En_Viewer.o"
endseg

beginseg
    name "ovl_En_Vm"
    include "build/baserom/ovl_En_Vm.o"
endseg

beginseg
    name "ovl_En_Wall_Tubo"
    include "build/baserom/ovl_En_Wall_Tubo.o"
endseg

beginseg
    name "ovl_En_Wallmas"
    include "build/baserom/ovl_En_Wallmas.o"
endseg

beginseg
    name "ovl_En_Weather_Tag"
    include "build/baserom/ovl_En_Weather_Tag.o"
endseg

beginseg
    name "ovl_En_Weiyer"
    include "build/baserom/ovl_En_Weiyer.o"
endseg

beginseg
    name "ovl_En_Wf"
    include "build/baserom/ovl_En_Wf.o"
endseg

beginseg
    name "ovl_En_Wonder_Item"
    increment 0xE0
    include "build/baserom/ovl_En_Wonder_Item.o"
endseg

beginseg
    name "ovl_En_Wonder_Talk"
    include "build/baserom/ovl_En_Wonder_Talk.o"
endseg

beginseg
    name "ovl_En_Wonder_Talk2"
    include "build/baserom/ovl_En_Wonder_Talk2.o"
endseg

beginseg
    name "ovl_En_Wood02"
    increment 0x10
    include "build/baserom/ovl_En_Wood02.o"
endseg

beginseg
    name "ovl_En_Xc"
    increment 0x30
    include "build/baserom/ovl_En_Xc.o"
endseg

beginseg
    name "ovl_En_Yabusame_Mark"
    include "build/baserom/ovl_En_Yabusame_Mark.o"
endseg

beginseg
    name "ovl_En_Yukabyun"
    include "build/baserom/ovl_En_Yukabyun.o"
endseg

beginseg
    name "ovl_En_Zf"
    increment 0x10
    include "build/baserom/ovl_En_Zf.o"
endseg

beginseg
    name "ovl_En_Zl1"
    include "build/baserom/ovl_En_Zl1.o"
endseg

beginseg
    name "ovl_En_Zl2"
    include "build/baserom/ovl_En_Zl2.o"
endseg

beginseg
    name "ovl_En_Zl3"
    include "build/baserom/ovl_En_Zl3.o"
endseg

beginseg
    name "ovl_En_Zl4"
    include "build/baserom/ovl_En_Zl4.o"
endseg

beginseg
    name "ovl_En_Zo"
    include "build/baserom/ovl_En_Zo.o"
endseg

beginseg
    name "ovl_En_fHG"
    include "build/baserom/ovl_En_fHG.o"
endseg

beginseg
    name "ovl_End_Title"
    include "build/baserom/ovl_End_Title.o"
endseg

beginseg
    name "ovl_Fishing"
    increment 0x70E0
    include "build/baserom/ovl_Fishing.o"
endseg

beginseg
    name "ovl_Item_B_Heart"
    //include "build/baserom/ovl_Item_B_Heart.o"
    include "build/asm/overlays/actors/ovl_Item_B_Heart/z_item_b_heart.o"
endseg

beginseg
    name "ovl_Item_Etcetera"
    include "build/baserom/ovl_Item_Etcetera.o"
endseg

beginseg
    name "ovl_Item_Inbox"
    //include "build/baserom/ovl_Item_Inbox.o"
    include "build/src/overlays/actors/ovl_Item_Inbox/z_item_inbox.o"
    include "build/src/overlays/actors/ovl_Item_Inbox/z_item_inbox_reloc.o"
endseg

beginseg
    name "ovl_Item_Ocarina"
    include "build/baserom/ovl_Item_Ocarina.o"
endseg

beginseg
    name "ovl_Item_Shield"
    include "build/baserom/ovl_Item_Shield.o"
endseg

beginseg
    name "ovl_Magic_Dark"
    include "build/baserom/ovl_Magic_Dark.o"
endseg

beginseg
    name "ovl_Magic_Fire"
    include "build/baserom/ovl_Magic_Fire.o"
endseg

beginseg
    name "ovl_Magic_Wind"
    include "build/baserom/ovl_Magic_Wind.o"
endseg

beginseg
    name "ovl_Mir_Ray"
    include "build/baserom/ovl_Mir_Ray.o"
endseg

beginseg
    name "ovl_Obj_Bean"
    include "build/baserom/ovl_Obj_Bean.o"
endseg

beginseg
    name "ovl_Obj_Blockstop"
    //include "build/baserom/ovl_Obj_Blockstop.o"
    include "build/src/overlays/actors/ovl_Obj_Blockstop/z_obj_blockstop.o"
    include "build/src/overlays/actors/ovl_Obj_Blockstop/z_obj_blockstop_reloc.o"
endseg

beginseg
    name "ovl_Obj_Bombiwa"
    include "build/baserom/ovl_Obj_Bombiwa.o"
endseg

beginseg
    name "ovl_Obj_Comb"
    include "build/baserom/ovl_Obj_Comb.o"
endseg

beginseg
    name "ovl_Obj_Dekujr"
    include "build/baserom/ovl_Obj_Dekujr.o"
endseg

beginseg
    name "ovl_Obj_Elevator"
    //include "build/baserom/ovl_Obj_Elevator.o"
    include "build/asm/overlays/actors/ovl_Obj_Elevator/z_obj_elevator.o"
endseg

beginseg
    name "ovl_Obj_Hamishi"
    include "build/baserom/ovl_Obj_Hamishi.o"
endseg

beginseg
    name "ovl_Obj_Hana"
    include "build/baserom/ovl_Obj_Hana.o"
endseg

beginseg
    name "ovl_Obj_Hsblock"
    include "build/baserom/ovl_Obj_Hsblock.o"
endseg

beginseg
    name "ovl_Obj_Ice_Poly"
    include "build/baserom/ovl_Obj_Ice_Poly.o"
endseg

beginseg
    name "ovl_Obj_Kibako"
    include "build/baserom/ovl_Obj_Kibako.o"
endseg

beginseg
    name "ovl_Obj_Kibako2"
    include "build/baserom/ovl_Obj_Kibako2.o"
endseg

beginseg
    name "ovl_Obj_Lift"
    include "build/baserom/ovl_Obj_Lift.o"
endseg

beginseg
    name "ovl_Obj_Lightswitch"
    include "build/baserom/ovl_Obj_Lightswitch.o"
endseg

beginseg
    name "ovl_Obj_Makekinsuta"
    include "build/baserom/ovl_Obj_Makekinsuta.o"
endseg

beginseg
    name "ovl_Obj_Makeoshihiki"
    include "build/baserom/ovl_Obj_Makeoshihiki.o"
endseg

beginseg
    name "ovl_Obj_Mure"
    include "build/baserom/ovl_Obj_Mure.o"
endseg

beginseg
    name "ovl_Obj_Mure2"
    include "build/baserom/ovl_Obj_Mure2.o"
endseg

beginseg
    name "ovl_Obj_Mure3"
    include "build/baserom/ovl_Obj_Mure3.o"
endseg

beginseg
    name "ovl_Obj_Oshihiki"
    include "build/baserom/ovl_Obj_Oshihiki.o"
endseg

beginseg
    name "ovl_Obj_Roomtimer"
    //include "build/baserom/ovl_Obj_Roomtimer.o"
    include "build/src/overlays/actors/ovl_Obj_Roomtimer/z_obj_roomtimer.o"
    include "build/src/overlays/actors/ovl_Obj_Roomtimer/z_obj_roomtimer_reloc.o"
endseg

beginseg
    name "ovl_Obj_Switch"
    include "build/baserom/ovl_Obj_Switch.o"
endseg

beginseg
    name "ovl_Obj_Syokudai"
    increment 0x10
    include "build/baserom/ovl_Obj_Syokudai.o"
endseg

beginseg
    name "ovl_Obj_Timeblock"
    include "build/baserom/ovl_Obj_Timeblock.o"
endseg

beginseg
    name "ovl_Obj_Tsubo"
    include "build/baserom/ovl_Obj_Tsubo.o"
endseg

beginseg
    name "ovl_Obj_Warp2block"
    include "build/baserom/ovl_Obj_Warp2block.o"
endseg

beginseg
    name "ovl_Object_Kankyo"
    include "build/baserom/ovl_Object_Kankyo.o"
endseg

beginseg
    name "ovl_Oceff_Spot"
    include "build/baserom/ovl_Oceff_Spot.o"
endseg

beginseg
    name "ovl_Oceff_Storm"
    include "build/baserom/ovl_Oceff_Storm.o"
endseg

beginseg
    name "ovl_Oceff_Wipe"
    include "build/baserom/ovl_Oceff_Wipe.o"
endseg

beginseg
    name "ovl_Oceff_Wipe2"
    include "build/baserom/ovl_Oceff_Wipe2.o"
endseg

beginseg
    name "ovl_Oceff_Wipe3"
    include "build/baserom/ovl_Oceff_Wipe3.o"
endseg

beginseg
    name "ovl_Oceff_Wipe4"
    include "build/baserom/ovl_Oceff_Wipe4.o"
endseg

beginseg
    name "ovl_Shot_Sun"
    //include "build/baserom/ovl_Shot_Sun.o"
    include "build/asm/overlays/actors/ovl_Shot_Sun/z_shot_sun.o"
endseg

beginseg
    name "gameplay_keep"
    romalign 0x1000
    include "build/baserom/gameplay_keep.o"
endseg

beginseg
    name "gameplay_field_keep"
    romalign 0x1000
    include "build/baserom/gameplay_field_keep.o"
endseg

beginseg
    name "gameplay_dangeon_keep"
    romalign 0x1000
    include "build/baserom/gameplay_dangeon_keep.o"
endseg

beginseg
    name "gameplay_object_exchange_static"
    romalign 0x1000
    include "build/baserom/gameplay_object_exchange_static.o"
endseg

beginseg
    name "object_link_boy"
    romalign 0x1000
    include "build/baserom/object_link_boy.o"
endseg

beginseg
    name "object_link_child"
    romalign 0x1000
    include "build/baserom/object_link_child.o"
endseg

beginseg
    name "object_box"
    romalign 0x1000
    include "build/baserom/object_box.o"
endseg

beginseg
    name "object_human"
    romalign 0x1000
    include "build/baserom/object_human.o"
endseg

beginseg
    name "object_okuta"
    romalign 0x1000
    include "build/baserom/object_okuta.o"
endseg

beginseg
    name "object_poh"
    romalign 0x1000
    include "build/baserom/object_poh.o"
endseg

beginseg
    name "object_wallmaster"
    romalign 0x1000
    include "build/baserom/object_wallmaster.o"
endseg

beginseg
    name "object_dy_obj"
    romalign 0x1000
    include "build/baserom/object_dy_obj.o"
endseg

beginseg
    name "object_firefly"
    romalign 0x1000
    include "build/baserom/object_firefly.o"
endseg

beginseg
    name "object_dodongo"
    romalign 0x1000
    include "build/baserom/object_dodongo.o"
endseg

beginseg
    name "object_fire"
    romalign 0x1000
    include "build/baserom/object_fire.o"
endseg

beginseg
    name "object_niw"
    romalign 0x1000
    include "build/baserom/object_niw.o"
endseg

beginseg
    name "object_tite"
    romalign 0x1000
    include "build/baserom/object_tite.o"
endseg

beginseg
    name "object_reeba"
    romalign 0x1000
    include "build/baserom/object_reeba.o"
endseg

beginseg
    name "object_peehat"
    romalign 0x1000
    include "build/baserom/object_peehat.o"
endseg

beginseg
    name "object_kingdodongo"
    romalign 0x1000
    include "build/baserom/object_kingdodongo.o"
endseg

beginseg
    name "object_horse"
    romalign 0x1000
    include "build/baserom/object_horse.o"
endseg

beginseg
    name "object_zf"
    romalign 0x1000
    include "build/baserom/object_zf.o"
endseg

beginseg
    name "object_goma"
    romalign 0x1000
    include "build/baserom/object_goma.o"
endseg

beginseg
    name "object_zl1"
    romalign 0x1000
    include "build/baserom/object_zl1.o"
endseg

beginseg
    name "object_gol"
    romalign 0x1000
    include "build/baserom/object_gol.o"
endseg

beginseg
    name "object_bubble"
    romalign 0x1000
    include "build/baserom/object_bubble.o"
endseg

beginseg
    name "object_dodojr"
    romalign 0x1000
    include "build/baserom/object_dodojr.o"
endseg

beginseg
    name "object_torch2"
    romalign 0x1000
    include "build/baserom/object_torch2.o"
endseg

beginseg
    name "object_bl"
    romalign 0x1000
    include "build/baserom/object_bl.o"
endseg

beginseg
    name "object_tp"
    romalign 0x1000
    include "build/baserom/object_tp.o"
endseg

beginseg
    name "object_oA1"
    romalign 0x1000
    include "build/baserom/object_oA1.o"
endseg

beginseg
    name "object_st"
    romalign 0x1000
    include "build/baserom/object_st.o"
endseg

beginseg
    name "object_bw"
    romalign 0x1000
    include "build/baserom/object_bw.o"
endseg

beginseg
    name "object_ei"
    romalign 0x1000
    include "build/baserom/object_ei.o"
endseg

beginseg
    name "object_horse_normal"
    romalign 0x1000
    include "build/baserom/object_horse_normal.o"
endseg

beginseg
    name "object_oB1"
    romalign 0x1000
    include "build/baserom/object_oB1.o"
endseg

beginseg
    name "object_o_anime"
    romalign 0x1000
    include "build/baserom/object_o_anime.o"
endseg

beginseg
    name "object_spot04_objects"
    romalign 0x1000
    include "build/baserom/object_spot04_objects.o"
endseg

beginseg
    name "object_ddan_objects"
    romalign 0x1000
    include "build/baserom/object_ddan_objects.o"
endseg

beginseg
    name "object_hidan_objects"
    romalign 0x1000
    include "build/baserom/object_hidan_objects.o"
endseg

beginseg
    name "object_horse_ganon"
    romalign 0x1000
    include "build/baserom/object_horse_ganon.o"
endseg

beginseg
    name "object_oA2"
    romalign 0x1000
    include "build/baserom/object_oA2.o"
endseg

beginseg
    name "object_spot00_objects"
    romalign 0x1000
    include "build/baserom/object_spot00_objects.o"
endseg

beginseg
    name "object_mb"
    romalign 0x1000
    include "build/baserom/object_mb.o"
endseg

beginseg
    name "object_bombf"
    romalign 0x1000
    include "build/baserom/object_bombf.o"
endseg

beginseg
    name "object_sk2"
    romalign 0x1000
    include "build/baserom/object_sk2.o"
endseg

beginseg
    name "object_oE1"
    romalign 0x1000
    include "build/baserom/object_oE1.o"
endseg

beginseg
    name "object_oE_anime"
    romalign 0x1000
    include "build/baserom/object_oE_anime.o"
endseg

beginseg
    name "object_oE2"
    romalign 0x1000
    include "build/baserom/object_oE2.o"
endseg

beginseg
    name "object_ydan_objects"
    romalign 0x1000
    include "build/baserom/object_ydan_objects.o"
endseg

beginseg
    name "object_gnd"
    romalign 0x1000
    include "build/baserom/object_gnd.o"
endseg

beginseg
    name "object_am"
    romalign 0x1000
    include "build/baserom/object_am.o"
endseg

beginseg
    name "object_dekubaba"
    romalign 0x1000
    include "build/baserom/object_dekubaba.o"
endseg

beginseg
    name "object_oA3"
    romalign 0x1000
    include "build/baserom/object_oA3.o"
endseg

beginseg
    name "object_oA4"
    romalign 0x1000
    include "build/baserom/object_oA4.o"
endseg

beginseg
    name "object_oA5"
    romalign 0x1000
    include "build/baserom/object_oA5.o"
endseg

beginseg
    name "object_oA6"
    romalign 0x1000
    include "build/baserom/object_oA6.o"
endseg

beginseg
    name "object_oA7"
    romalign 0x1000
    include "build/baserom/object_oA7.o"
endseg

beginseg
    name "object_jj"
    romalign 0x1000
    include "build/baserom/object_jj.o"
endseg

beginseg
    name "object_oA8"
    romalign 0x1000
    include "build/baserom/object_oA8.o"
endseg

beginseg
    name "object_oA9"
    romalign 0x1000
    include "build/baserom/object_oA9.o"
endseg

beginseg
    name "object_oB2"
    romalign 0x1000
    include "build/baserom/object_oB2.o"
endseg

beginseg
    name "object_oB3"
    romalign 0x1000
    include "build/baserom/object_oB3.o"
endseg

beginseg
    name "object_oB4"
    romalign 0x1000
    include "build/baserom/object_oB4.o"
endseg

beginseg
    name "object_horse_zelda"
    romalign 0x1000
    include "build/baserom/object_horse_zelda.o"
endseg

beginseg
    name "object_opening_demo1"
    romalign 0x1000
    include "build/baserom/object_opening_demo1.o"
endseg

beginseg
    name "object_warp1"
    romalign 0x1000
    include "build/baserom/object_warp1.o"
endseg

beginseg
    name "object_b_heart"
    romalign 0x1000
    include "build/baserom/object_b_heart.o"
endseg

beginseg
    name "object_dekunuts"
    romalign 0x1000
    include "build/baserom/object_dekunuts.o"
endseg

beginseg
    name "object_oE3"
    romalign 0x1000
    include "build/baserom/object_oE3.o"
endseg

beginseg
    name "object_oE4"
    romalign 0x1000
    include "build/baserom/object_oE4.o"
endseg

beginseg
    name "object_menkuri_objects"
    romalign 0x1000
    include "build/baserom/object_menkuri_objects.o"
endseg

beginseg
    name "object_oE5"
    romalign 0x1000
    include "build/baserom/object_oE5.o"
endseg

beginseg
    name "object_oE6"
    romalign 0x1000
    include "build/baserom/object_oE6.o"
endseg

beginseg
    name "object_oE7"
    romalign 0x1000
    include "build/baserom/object_oE7.o"
endseg

beginseg
    name "object_oE8"
    romalign 0x1000
    include "build/baserom/object_oE8.o"
endseg

beginseg
    name "object_oE9"
    romalign 0x1000
    include "build/baserom/object_oE9.o"
endseg

beginseg
    name "object_oE10"
    romalign 0x1000
    include "build/baserom/object_oE10.o"
endseg

beginseg
    name "object_oE11"
    romalign 0x1000
    include "build/baserom/object_oE11.o"
endseg

beginseg
    name "object_oE12"
    romalign 0x1000
    include "build/baserom/object_oE12.o"
endseg

beginseg
    name "object_vali"
    romalign 0x1000
    include "build/baserom/object_vali.o"
endseg

beginseg
    name "object_oA10"
    romalign 0x1000
    include "build/baserom/object_oA10.o"
endseg

beginseg
    name "object_oA11"
    romalign 0x1000
    include "build/baserom/object_oA11.o"
endseg

beginseg
    name "object_mizu_objects"
    romalign 0x1000
    include "build/baserom/object_mizu_objects.o"
endseg

beginseg
    name "object_fhg"
    romalign 0x1000
    include "build/baserom/object_fhg.o"
endseg

beginseg
    name "object_ossan"
    romalign 0x1000
    include "build/baserom/object_ossan.o"
endseg

beginseg
    name "object_mori_hineri1"
    romalign 0x1000
    include "build/baserom/object_mori_hineri1.o"
endseg

beginseg
    name "object_Bb"
    romalign 0x1000
    include "build/baserom/object_Bb.o"
endseg

beginseg
    name "object_toki_objects"
    romalign 0x1000
    include "build/baserom/object_toki_objects.o"
endseg

beginseg
    name "object_yukabyun"
    romalign 0x1000
    include "build/baserom/object_yukabyun.o"
endseg

beginseg
    name "object_zl2"
    romalign 0x1000
    include "build/baserom/object_zl2.o"
endseg

beginseg
    name "object_mjin"
    romalign 0x1000
    include "build/baserom/object_mjin.o"
endseg

beginseg
    name "object_mjin_flash"
    romalign 0x1000
    include "build/baserom/object_mjin_flash.o"
endseg

beginseg
    name "object_mjin_dark"
    romalign 0x1000
    include "build/baserom/object_mjin_dark.o"
endseg

beginseg
    name "object_mjin_flame"
    romalign 0x1000
    include "build/baserom/object_mjin_flame.o"
endseg

beginseg
    name "object_mjin_ice"
    romalign 0x1000
    include "build/baserom/object_mjin_ice.o"
endseg

beginseg
    name "object_mjin_soul"
    romalign 0x1000
    include "build/baserom/object_mjin_soul.o"
endseg

beginseg
    name "object_mjin_wind"
    romalign 0x1000
    include "build/baserom/object_mjin_wind.o"
endseg

beginseg
    name "object_mjin_oka"
    romalign 0x1000
    include "build/baserom/object_mjin_oka.o"
endseg

beginseg
    name "object_haka_objects"
    romalign 0x1000
    include "build/baserom/object_haka_objects.o"
endseg

beginseg
    name "object_spot06_objects"
    romalign 0x1000
    include "build/baserom/object_spot06_objects.o"
endseg

beginseg
    name "object_ice_objects"
    romalign 0x1000
    include "build/baserom/object_ice_objects.o"
endseg

beginseg
    name "object_relay_objects"
    romalign 0x1000
    include "build/baserom/object_relay_objects.o"
endseg

beginseg
    name "object_mori_hineri1a"
    romalign 0x1000
    include "build/baserom/object_mori_hineri1a.o"
endseg

beginseg
    name "object_mori_hineri2"
    romalign 0x1000
    include "build/baserom/object_mori_hineri2.o"
endseg

beginseg
    name "object_mori_hineri2a"
    romalign 0x1000
    include "build/baserom/object_mori_hineri2a.o"
endseg

beginseg
    name "object_mori_objects"
    romalign 0x1000
    include "build/baserom/object_mori_objects.o"
endseg

beginseg
    name "object_mori_tex"
    romalign 0x1000
    include "build/baserom/object_mori_tex.o"
endseg

beginseg
    name "object_spot08_obj"
    romalign 0x1000
    include "build/baserom/object_spot08_obj.o"
endseg

beginseg
    name "object_warp2"
    romalign 0x1000
    include "build/baserom/object_warp2.o"
endseg

beginseg
    name "object_hata"
    romalign 0x1000
    include "build/baserom/object_hata.o"
endseg

beginseg
    name "object_bird"
    romalign 0x1000
    include "build/baserom/object_bird.o"
endseg

beginseg
    name "object_wood02"
    romalign 0x1000
    include "build/baserom/object_wood02.o"
endseg

beginseg
    name "object_lightbox"
    romalign 0x1000
    include "build/baserom/object_lightbox.o"
endseg

beginseg
    name "object_pu_box"
    romalign 0x1000
    include "build/baserom/object_pu_box.o"
endseg

beginseg
    name "object_trap"
    romalign 0x1000
    include "build/baserom/object_trap.o"
endseg

beginseg
    name "object_vase"
    romalign 0x1000
    include "build/baserom/object_vase.o"
endseg

beginseg
    name "object_im"
    romalign 0x1000
    include "build/baserom/object_im.o"
endseg

beginseg
    name "object_ta"
    romalign 0x1000
    include "build/baserom/object_ta.o"
endseg

beginseg
    name "object_tk"
    romalign 0x1000
    include "build/baserom/object_tk.o"
endseg

beginseg
    name "object_xc"
    romalign 0x1000
    include "build/baserom/object_xc.o"
endseg

beginseg
    name "object_vm"
    romalign 0x1000
    include "build/baserom/object_vm.o"
endseg

beginseg
    name "object_bv"
    romalign 0x1000
    include "build/baserom/object_bv.o"
endseg

beginseg
    name "object_hakach_objects"
    romalign 0x1000
    include "build/baserom/object_hakach_objects.o"
endseg

beginseg
    name "object_efc_crystal_light"
    romalign 0x1000
    include "build/baserom/object_efc_crystal_light.o"
endseg

beginseg
    name "object_efc_fire_ball"
    romalign 0x1000
    include "build/baserom/object_efc_fire_ball.o"
endseg

beginseg
    name "object_efc_flash"
    romalign 0x1000
    include "build/baserom/object_efc_flash.o"
endseg

beginseg
    name "object_efc_lgt_shower"
    romalign 0x1000
    include "build/baserom/object_efc_lgt_shower.o"
endseg

beginseg
    name "object_efc_star_field"
    romalign 0x1000
    include "build/baserom/object_efc_star_field.o"
endseg

beginseg
    name "object_god_lgt"
    romalign 0x1000
    include "build/baserom/object_god_lgt.o"
endseg

beginseg
    name "object_light_ring"
    romalign 0x1000
    include "build/baserom/object_light_ring.o"
endseg

beginseg
    name "object_triforce_spot"
    romalign 0x1000
    include "build/baserom/object_triforce_spot.o"
endseg

beginseg
    name "object_medal"
    romalign 0x1000
    include "build/baserom/object_medal.o"
endseg

beginseg
    name "object_bdan_objects"
    romalign 0x1000
    include "build/baserom/object_bdan_objects.o"
endseg

beginseg
    name "object_sd"
    romalign 0x1000
    include "build/baserom/object_sd.o"
endseg

beginseg
    name "object_rd"
    romalign 0x1000
    include "build/baserom/object_rd.o"
endseg

beginseg
    name "object_po_sisters"
    romalign 0x1000
    include "build/baserom/object_po_sisters.o"
endseg

beginseg
    name "object_heavy_object"
    romalign 0x1000
    include "build/baserom/object_heavy_object.o"
endseg

beginseg
    name "object_gndd"
    romalign 0x1000
    include "build/baserom/object_gndd.o"
endseg

beginseg
    name "object_fd"
    romalign 0x1000
    include "build/baserom/object_fd.o"
endseg

beginseg
    name "object_du"
    romalign 0x1000
    include "build/baserom/object_du.o"
endseg

beginseg
    name "object_fw"
    romalign 0x1000
    include "build/baserom/object_fw.o"
endseg

beginseg
    name "object_horse_link_child"
    romalign 0x1000
    include "build/baserom/object_horse_link_child.o"
endseg

beginseg
    name "object_spot02_objects"
    romalign 0x1000
    include "build/baserom/object_spot02_objects.o"
endseg

beginseg
    name "object_haka"
    romalign 0x1000
    include "build/baserom/object_haka.o"
endseg

beginseg
    name "object_ru1"
    romalign 0x1000
    include "build/baserom/object_ru1.o"
endseg

beginseg
    name "object_syokudai"
    romalign 0x1000
    include "build/baserom/object_syokudai.o"
endseg

beginseg
    name "object_fd2"
    romalign 0x1000
    include "build/baserom/object_fd2.o"
endseg

beginseg
    name "object_dh"
    romalign 0x1000
    include "build/baserom/object_dh.o"
endseg

beginseg
    name "object_rl"
    romalign 0x1000
    include "build/baserom/object_rl.o"
endseg

beginseg
    name "object_efc_tw"
    romalign 0x1000
    include "build/baserom/object_efc_tw.o"
endseg

beginseg
    name "object_demo_tre_lgt"
    romalign 0x1000
    include "build/baserom/object_demo_tre_lgt.o"
endseg

beginseg
    name "object_gi_key"
    romalign 0x1000
    include "build/baserom/object_gi_key.o"
endseg

beginseg
    name "object_mir_ray"
    romalign 0x1000
    include "build/baserom/object_mir_ray.o"
endseg

beginseg
    name "object_brob"
    romalign 0x1000
    include "build/baserom/object_brob.o"
endseg

beginseg
    name "object_gi_jewel"
    romalign 0x1000
    include "build/baserom/object_gi_jewel.o"
endseg

beginseg
    name "object_spot09_obj"
    romalign 0x1000
    include "build/baserom/object_spot09_obj.o"
endseg

beginseg
    name "object_spot18_obj"
    romalign 0x1000
    include "build/baserom/object_spot18_obj.o"
endseg

beginseg
    name "object_bdoor"
    romalign 0x1000
    include "build/baserom/object_bdoor.o"
endseg

beginseg
    name "object_spot17_obj"
    romalign 0x1000
    include "build/baserom/object_spot17_obj.o"
endseg

beginseg
    name "object_shop_dungen"
    romalign 0x1000
    include "build/baserom/object_shop_dungen.o"
endseg

beginseg
    name "object_nb"
    romalign 0x1000
    include "build/baserom/object_nb.o"
endseg

beginseg
    name "object_mo"
    romalign 0x1000
    include "build/baserom/object_mo.o"
endseg

beginseg
    name "object_sb"
    romalign 0x1000
    include "build/baserom/object_sb.o"
endseg

beginseg
    name "object_gi_melody"
    romalign 0x1000
    include "build/baserom/object_gi_melody.o"
endseg

beginseg
    name "object_gi_heart"
    romalign 0x1000
    include "build/baserom/object_gi_heart.o"
endseg

beginseg
    name "object_gi_compass"
    romalign 0x1000
    include "build/baserom/object_gi_compass.o"
endseg

beginseg
    name "object_gi_bosskey"
    romalign 0x1000
    include "build/baserom/object_gi_bosskey.o"
endseg

beginseg
    name "object_gi_medal"
    romalign 0x1000
    include "build/baserom/object_gi_medal.o"
endseg

beginseg
    name "object_gi_nuts"
    romalign 0x1000
    include "build/baserom/object_gi_nuts.o"
endseg

beginseg
    name "object_sa"
    romalign 0x1000
    include "build/baserom/object_sa.o"
endseg

beginseg
    name "object_gi_hearts"
    romalign 0x1000
    include "build/baserom/object_gi_hearts.o"
endseg

beginseg
    name "object_gi_arrowcase"
    romalign 0x1000
    include "build/baserom/object_gi_arrowcase.o"
endseg

beginseg
    name "object_gi_bombpouch"
    romalign 0x1000
    include "build/baserom/object_gi_bombpouch.o"
endseg

beginseg
    name "object_in"
    romalign 0x1000
    include "build/baserom/object_in.o"
endseg

beginseg
    name "object_tr"
    romalign 0x1000
    include "build/baserom/object_tr.o"
endseg

beginseg
    name "object_spot16_obj"
    romalign 0x1000
    include "build/baserom/object_spot16_obj.o"
endseg

beginseg
    name "object_oE1s"
    romalign 0x1000
    include "build/baserom/object_oE1s.o"
endseg

beginseg
    name "object_oE4s"
    romalign 0x1000
    include "build/baserom/object_oE4s.o"
endseg

beginseg
    name "object_os_anime"
    romalign 0x1000
    include "build/baserom/object_os_anime.o"
endseg

beginseg
    name "object_gi_bottle"
    romalign 0x1000
    include "build/baserom/object_gi_bottle.o"
endseg

beginseg
    name "object_gi_stick"
    romalign 0x1000
    include "build/baserom/object_gi_stick.o"
endseg

beginseg
    name "object_gi_map"
    romalign 0x1000
    include "build/baserom/object_gi_map.o"
endseg

beginseg
    name "object_oF1d_map"
    romalign 0x1000
    include "build/baserom/object_oF1d_map.o"
endseg

beginseg
    name "object_ru2"
    romalign 0x1000
    include "build/baserom/object_ru2.o"
endseg

beginseg
    name "object_gi_shield_1"
    romalign 0x1000
    include "build/baserom/object_gi_shield_1.o"
endseg

beginseg
    name "object_dekujr"
    romalign 0x1000
    include "build/baserom/object_dekujr.o"
endseg

beginseg
    name "object_gi_magicpot"
    romalign 0x1000
    include "build/baserom/object_gi_magicpot.o"
endseg

beginseg
    name "object_gi_bomb_1"
    romalign 0x1000
    include "build/baserom/object_gi_bomb_1.o"
endseg

beginseg
    name "object_oF1s"
    romalign 0x1000
    include "build/baserom/object_oF1s.o"
endseg

beginseg
    name "object_ma2"
    romalign 0x1000
    include "build/baserom/object_ma2.o"
endseg

beginseg
    name "object_gi_purse"
    romalign 0x1000
    include "build/baserom/object_gi_purse.o"
endseg

beginseg
    name "object_hni"
    romalign 0x1000
    include "build/baserom/object_hni.o"
endseg

beginseg
    name "object_tw"
    romalign 0x1000
    include "build/baserom/object_tw.o"
endseg

beginseg
    name "object_rr"
    romalign 0x1000
    include "build/baserom/object_rr.o"
endseg

beginseg
    name "object_bxa"
    romalign 0x1000
    include "build/baserom/object_bxa.o"
endseg

beginseg
    name "object_anubice"
    romalign 0x1000
    include "build/baserom/object_anubice.o"
endseg

beginseg
    name "object_gi_gerudo"
    romalign 0x1000
    include "build/baserom/object_gi_gerudo.o"
endseg

beginseg
    name "object_gi_arrow"
    romalign 0x1000
    include "build/baserom/object_gi_arrow.o"
endseg

beginseg
    name "object_gi_bomb_2"
    romalign 0x1000
    include "build/baserom/object_gi_bomb_2.o"
endseg

beginseg
    name "object_gi_egg"
    romalign 0x1000
    include "build/baserom/object_gi_egg.o"
endseg

beginseg
    name "object_gi_scale"
    romalign 0x1000
    include "build/baserom/object_gi_scale.o"
endseg

beginseg
    name "object_gi_shield_2"
    romalign 0x1000
    include "build/baserom/object_gi_shield_2.o"
endseg

beginseg
    name "object_gi_hookshot"
    romalign 0x1000
    include "build/baserom/object_gi_hookshot.o"
endseg

beginseg
    name "object_gi_ocarina"
    romalign 0x1000
    include "build/baserom/object_gi_ocarina.o"
endseg

beginseg
    name "object_gi_milk"
    romalign 0x1000
    include "build/baserom/object_gi_milk.o"
endseg

beginseg
    name "object_ma1"
    romalign 0x1000
    include "build/baserom/object_ma1.o"
endseg

beginseg
    name "object_ganon"
    romalign 0x1000
    include "build/baserom/object_ganon.o"
endseg

beginseg
    name "object_sst"
    romalign 0x1000
    include "build/baserom/object_sst.o"
endseg

beginseg
    name "object_ny"
    romalign 0x1000
    include "build/baserom/object_ny.o"
endseg

beginseg
    name "object_fr"
    romalign 0x1000
    include "build/baserom/object_fr.o"
endseg

beginseg
    name "object_gi_pachinko"
    romalign 0x1000
    include "build/baserom/object_gi_pachinko.o"
endseg

beginseg
    name "object_gi_boomerang"
    romalign 0x1000
    include "build/baserom/object_gi_boomerang.o"
endseg

beginseg
    name "object_gi_bow"
    romalign 0x1000
    include "build/baserom/object_gi_bow.o"
endseg

beginseg
    name "object_gi_glasses"
    romalign 0x1000
    include "build/baserom/object_gi_glasses.o"
endseg

beginseg
    name "object_gi_liquid"
    romalign 0x1000
    include "build/baserom/object_gi_liquid.o"
endseg

beginseg
    name "object_ani"
    romalign 0x1000
    include "build/baserom/object_ani.o"
endseg

beginseg
    name "object_demo_6k"
    romalign 0x1000
    include "build/baserom/object_demo_6k.o"
endseg

beginseg
    name "object_gi_shield_3"
    romalign 0x1000
    include "build/baserom/object_gi_shield_3.o"
endseg

beginseg
    name "object_gi_letter"
    romalign 0x1000
    include "build/baserom/object_gi_letter.o"
endseg

beginseg
    name "object_spot15_obj"
    romalign 0x1000
    include "build/baserom/object_spot15_obj.o"
endseg

beginseg
    name "object_jya_obj"
    romalign 0x1000
    include "build/baserom/object_jya_obj.o"
endseg

beginseg
    name "object_gi_clothes"
    romalign 0x1000
    include "build/baserom/object_gi_clothes.o"
endseg

beginseg
    name "object_gi_bean"
    romalign 0x1000
    include "build/baserom/object_gi_bean.o"
endseg

beginseg
    name "object_gi_fish"
    romalign 0x1000
    include "build/baserom/object_gi_fish.o"
endseg

beginseg
    name "object_gi_saw"
    romalign 0x1000
    include "build/baserom/object_gi_saw.o"
endseg

beginseg
    name "object_gi_hammer"
    romalign 0x1000
    include "build/baserom/object_gi_hammer.o"
endseg

beginseg
    name "object_gi_grass"
    romalign 0x1000
    include "build/baserom/object_gi_grass.o"
endseg

beginseg
    name "object_gi_longsword"
    romalign 0x1000
    include "build/baserom/object_gi_longsword.o"
endseg

beginseg
    name "object_spot01_objects"
    romalign 0x1000
    include "build/baserom/object_spot01_objects.o"
endseg

beginseg
    name "object_md"
    romalign 0x1000
    include "build/baserom/object_md.o"
endseg

beginseg
    name "object_km1"
    romalign 0x1000
    include "build/baserom/object_km1.o"
endseg

beginseg
    name "object_kw1"
    romalign 0x1000
    include "build/baserom/object_kw1.o"
endseg

beginseg
    name "object_zo"
    romalign 0x1000
    include "build/baserom/object_zo.o"
endseg

beginseg
    name "object_kz"
    romalign 0x1000
    include "build/baserom/object_kz.o"
endseg

beginseg
    name "object_umajump"
    romalign 0x1000
    include "build/baserom/object_umajump.o"
endseg

beginseg
    name "object_masterkokiri"
    romalign 0x1000
    include "build/baserom/object_masterkokiri.o"
endseg

beginseg
    name "object_masterkokirihead"
    romalign 0x1000
    include "build/baserom/object_masterkokirihead.o"
endseg

beginseg
    name "object_mastergolon"
    romalign 0x1000
    include "build/baserom/object_mastergolon.o"
endseg

beginseg
    name "object_masterzoora"
    romalign 0x1000
    include "build/baserom/object_masterzoora.o"
endseg

beginseg
    name "object_aob"
    romalign 0x1000
    include "build/baserom/object_aob.o"
endseg

beginseg
    name "object_ik"
    romalign 0x1000
    include "build/baserom/object_ik.o"
endseg

beginseg
    name "object_ahg"
    romalign 0x1000
    include "build/baserom/object_ahg.o"
endseg

beginseg
    name "object_cne"
    romalign 0x1000
    include "build/baserom/object_cne.o"
endseg

beginseg
    name "object_gi_niwatori"
    romalign 0x1000
    include "build/baserom/object_gi_niwatori.o"
endseg

beginseg
    name "object_skj"
    romalign 0x1000
    include "build/baserom/object_skj.o"
endseg

beginseg
    name "object_gi_bottle_letter"
    romalign 0x1000
    include "build/baserom/object_gi_bottle_letter.o"
endseg

beginseg
    name "object_bji"
    romalign 0x1000
    include "build/baserom/object_bji.o"
endseg

beginseg
    name "object_bba"
    romalign 0x1000
    include "build/baserom/object_bba.o"
endseg

beginseg
    name "object_gi_ocarina_0"
    romalign 0x1000
    include "build/baserom/object_gi_ocarina_0.o"
endseg

beginseg
    name "object_ds"
    romalign 0x1000
    include "build/baserom/object_ds.o"
endseg

beginseg
    name "object_ane"
    romalign 0x1000
    include "build/baserom/object_ane.o"
endseg

beginseg
    name "object_boj"
    romalign 0x1000
    include "build/baserom/object_boj.o"
endseg

beginseg
    name "object_spot03_object"
    romalign 0x1000
    include "build/baserom/object_spot03_object.o"
endseg

beginseg
    name "object_spot07_object"
    romalign 0x1000
    include "build/baserom/object_spot07_object.o"
endseg

beginseg
    name "object_fz"
    romalign 0x1000
    include "build/baserom/object_fz.o"
endseg

beginseg
    name "object_bob"
    romalign 0x1000
    include "build/baserom/object_bob.o"
endseg

beginseg
    name "object_ge1"
    romalign 0x1000
    include "build/baserom/object_ge1.o"
endseg

beginseg
    name "object_yabusame_point"
    romalign 0x1000
    include "build/baserom/object_yabusame_point.o"
endseg

beginseg
    name "object_gi_boots_2"
    romalign 0x1000
    include "build/baserom/object_gi_boots_2.o"
endseg

beginseg
    name "object_gi_seed"
    romalign 0x1000
    include "build/baserom/object_gi_seed.o"
endseg

beginseg
    name "object_gnd_magic"
    romalign 0x1000
    include "build/baserom/object_gnd_magic.o"
endseg

beginseg
    name "object_d_elevator"
    romalign 0x1000
    include "build/baserom/object_d_elevator.o"
endseg

beginseg
    name "object_d_hsblock"
    romalign 0x1000
    include "build/baserom/object_d_hsblock.o"
endseg

beginseg
    name "object_d_lift"
    romalign 0x1000
    include "build/baserom/object_d_lift.o"
endseg

beginseg
    name "object_mamenoki"
    romalign 0x1000
    include "build/baserom/object_mamenoki.o"
endseg

beginseg
    name "object_goroiwa"
    romalign 0x1000
    include "build/baserom/object_goroiwa.o"
endseg

beginseg
    name "object_toryo"
    romalign 0x1000
    include "build/baserom/object_toryo.o"
endseg

beginseg
    name "object_daiku"
    romalign 0x1000
    include "build/baserom/object_daiku.o"
endseg

beginseg
    name "object_nwc"
    romalign 0x1000
    include "build/baserom/object_nwc.o"
endseg

beginseg
    name "object_blkobj"
    romalign 0x1000
    include "build/baserom/object_blkobj.o"
endseg

beginseg
    name "object_gm"
    romalign 0x1000
    include "build/baserom/object_gm.o"
endseg

beginseg
    name "object_ms"
    romalign 0x1000
    include "build/baserom/object_ms.o"
endseg

beginseg
    name "object_hs"
    romalign 0x1000
    include "build/baserom/object_hs.o"
endseg

beginseg
    name "object_ingate"
    romalign 0x1000
    include "build/baserom/object_ingate.o"
endseg

beginseg
    name "object_lightswitch"
    romalign 0x1000
    include "build/baserom/object_lightswitch.o"
endseg

beginseg
    name "object_kusa"
    romalign 0x1000
    include "build/baserom/object_kusa.o"
endseg

beginseg
    name "object_tsubo"
    romalign 0x1000
    include "build/baserom/object_tsubo.o"
endseg

beginseg
    name "object_gi_gloves"
    romalign 0x1000
    include "build/baserom/object_gi_gloves.o"
endseg

beginseg
    name "object_gi_coin"
    romalign 0x1000
    include "build/baserom/object_gi_coin.o"
endseg

beginseg
    name "object_kanban"
    romalign 0x1000
    include "build/baserom/object_kanban.o"
endseg

beginseg
    name "object_gjyo_objects"
    romalign 0x1000
    include "build/baserom/object_gjyo_objects.o"
endseg

beginseg
    name "object_owl"
    romalign 0x1000
    include "build/baserom/object_owl.o"
endseg

beginseg
    name "object_mk"
    romalign 0x1000
    include "build/baserom/object_mk.o"
endseg

beginseg
    name "object_fu"
    romalign 0x1000
    include "build/baserom/object_fu.o"
endseg

beginseg
    name "object_gi_ki_tan_mask"
    romalign 0x1000
    include "build/baserom/object_gi_ki_tan_mask.o"
endseg

beginseg
    name "object_gi_redead_mask"
    romalign 0x1000
    include "build/baserom/object_gi_redead_mask.o"
endseg

beginseg
    name "object_gi_skj_mask"
    romalign 0x1000
    include "build/baserom/object_gi_skj_mask.o"
endseg

beginseg
    name "object_gi_rabit_mask"
    romalign 0x1000
    include "build/baserom/object_gi_rabit_mask.o"
endseg

beginseg
    name "object_gi_truth_mask"
    romalign 0x1000
    include "build/baserom/object_gi_truth_mask.o"
endseg

beginseg
    name "object_ganon_objects"
    romalign 0x1000
    include "build/baserom/object_ganon_objects.o"
endseg

beginseg
    name "object_siofuki"
    romalign 0x1000
    include "build/baserom/object_siofuki.o"
endseg

beginseg
    name "object_stream"
    romalign 0x1000
    include "build/baserom/object_stream.o"
endseg

beginseg
    name "object_mm"
    romalign 0x1000
    include "build/baserom/object_mm.o"
endseg

beginseg
    name "object_fa"
    romalign 0x1000
    include "build/baserom/object_fa.o"
endseg

beginseg
    name "object_os"
    romalign 0x1000
    include "build/baserom/object_os.o"
endseg

beginseg
    name "object_gi_eye_lotion"
    romalign 0x1000
    include "build/baserom/object_gi_eye_lotion.o"
endseg

beginseg
    name "object_gi_powder"
    romalign 0x1000
    include "build/baserom/object_gi_powder.o"
endseg

beginseg
    name "object_gi_mushroom"
    romalign 0x1000
    include "build/baserom/object_gi_mushroom.o"
endseg

beginseg
    name "object_gi_ticketstone"
    romalign 0x1000
    include "build/baserom/object_gi_ticketstone.o"
endseg

beginseg
    name "object_gi_brokensword"
    romalign 0x1000
    include "build/baserom/object_gi_brokensword.o"
endseg

beginseg
    name "object_js"
    romalign 0x1000
    include "build/baserom/object_js.o"
endseg

beginseg
    name "object_cs"
    romalign 0x1000
    include "build/baserom/object_cs.o"
endseg

beginseg
    name "object_gi_prescription"
    romalign 0x1000
    include "build/baserom/object_gi_prescription.o"
endseg

beginseg
    name "object_gi_bracelet"
    romalign 0x1000
    include "build/baserom/object_gi_bracelet.o"
endseg

beginseg
    name "object_gi_soldout"
    romalign 0x1000
    include "build/baserom/object_gi_soldout.o"
endseg

beginseg
    name "object_gi_frog"
    romalign 0x1000
    include "build/baserom/object_gi_frog.o"
endseg

beginseg
    name "object_mag"
    romalign 0x1000
    include "build/baserom/object_mag.o"
endseg

beginseg
    name "object_door_gerudo"
    romalign 0x1000
    include "build/baserom/object_door_gerudo.o"
endseg

beginseg
    name "object_gt"
    romalign 0x1000
    include "build/baserom/object_gt.o"
endseg

beginseg
    name "object_efc_erupc"
    romalign 0x1000
    include "build/baserom/object_efc_erupc.o"
endseg

beginseg
    name "object_zl2_anime1"
    romalign 0x1000
    include "build/baserom/object_zl2_anime1.o"
endseg

beginseg
    name "object_zl2_anime2"
    romalign 0x1000
    include "build/baserom/object_zl2_anime2.o"
endseg

beginseg
    name "object_gi_golonmask"
    romalign 0x1000
    include "build/baserom/object_gi_golonmask.o"
endseg

beginseg
    name "object_gi_zoramask"
    romalign 0x1000
    include "build/baserom/object_gi_zoramask.o"
endseg

beginseg
    name "object_gi_gerudomask"
    romalign 0x1000
    include "build/baserom/object_gi_gerudomask.o"
endseg

beginseg
    name "object_ganon2"
    romalign 0x1000
    include "build/baserom/object_ganon2.o"
endseg

beginseg
    name "object_ka"
    romalign 0x1000
    include "build/baserom/object_ka.o"
endseg

beginseg
    name "object_ts"
    romalign 0x1000
    include "build/baserom/object_ts.o"
endseg

beginseg
    name "object_zg"
    romalign 0x1000
    include "build/baserom/object_zg.o"
endseg

beginseg
    name "object_gi_hoverboots"
    romalign 0x1000
    include "build/baserom/object_gi_hoverboots.o"
endseg

beginseg
    name "object_gi_m_arrow"
    romalign 0x1000
    include "build/baserom/object_gi_m_arrow.o"
endseg

beginseg
    name "object_ds2"
    romalign 0x1000
    include "build/baserom/object_ds2.o"
endseg

beginseg
    name "object_ec"
    romalign 0x1000
    include "build/baserom/object_ec.o"
endseg

beginseg
    name "object_fish"
    romalign 0x1000
    include "build/baserom/object_fish.o"
endseg

beginseg
    name "object_gi_sutaru"
    romalign 0x1000
    include "build/baserom/object_gi_sutaru.o"
endseg

beginseg
    name "object_gi_goddess"
    romalign 0x1000
    include "build/baserom/object_gi_goddess.o"
endseg

beginseg
    name "object_ssh"
    romalign 0x1000
    include "build/baserom/object_ssh.o"
endseg

beginseg
    name "object_bigokuta"
    romalign 0x1000
    include "build/baserom/object_bigokuta.o"
endseg

beginseg
    name "object_bg"
    romalign 0x1000
    include "build/baserom/object_bg.o"
endseg

beginseg
    name "object_spot05_objects"
    romalign 0x1000
    include "build/baserom/object_spot05_objects.o"
endseg

beginseg
    name "object_spot12_obj"
    romalign 0x1000
    include "build/baserom/object_spot12_obj.o"
endseg

beginseg
    name "object_bombiwa"
    romalign 0x1000
    include "build/baserom/object_bombiwa.o"
endseg

beginseg
    name "object_hintnuts"
    romalign 0x1000
    include "build/baserom/object_hintnuts.o"
endseg

beginseg
    name "object_rs"
    romalign 0x1000
    include "build/baserom/object_rs.o"
endseg

beginseg
    name "object_spot00_break"
    romalign 0x1000
    include "build/baserom/object_spot00_break.o"
endseg

beginseg
    name "object_gla"
    romalign 0x1000
    include "build/baserom/object_gla.o"
endseg

beginseg
    name "object_shopnuts"
    romalign 0x1000
    include "build/baserom/object_shopnuts.o"
endseg

beginseg
    name "object_geldb"
    romalign 0x1000
    include "build/baserom/object_geldb.o"
endseg

beginseg
    name "object_gr"
    romalign 0x1000
    include "build/baserom/object_gr.o"
endseg

beginseg
    name "object_dog"
    romalign 0x1000
    include "build/baserom/object_dog.o"
endseg

beginseg
    name "object_jya_iron"
    romalign 0x1000
    include "build/baserom/object_jya_iron.o"
endseg

beginseg
    name "object_jya_door"
    romalign 0x1000
    include "build/baserom/object_jya_door.o"
endseg

beginseg
    name "object_spot01_objects2"
    romalign 0x1000
    include "build/baserom/object_spot01_objects2.o"
endseg

beginseg
    name "object_spot11_obj"
    romalign 0x1000
    include "build/baserom/object_spot11_obj.o"
endseg

beginseg
    name "object_kibako2"
    romalign 0x1000
    include "build/baserom/object_kibako2.o"
endseg

beginseg
    name "object_dns"
    romalign 0x1000
    include "build/baserom/object_dns.o"
endseg

beginseg
    name "object_dnk"
    romalign 0x1000
    include "build/baserom/object_dnk.o"
endseg

beginseg
    name "object_gi_fire"
    romalign 0x1000
    include "build/baserom/object_gi_fire.o"
endseg

beginseg
    name "object_gi_insect"
    romalign 0x1000
    include "build/baserom/object_gi_insect.o"
endseg

beginseg
    name "object_gi_butterfly"
    romalign 0x1000
    include "build/baserom/object_gi_butterfly.o"
endseg

beginseg
    name "object_gi_ghost"
    romalign 0x1000
    include "build/baserom/object_gi_ghost.o"
endseg

beginseg
    name "object_gi_soul"
    romalign 0x1000
    include "build/baserom/object_gi_soul.o"
endseg

beginseg
    name "object_bowl"
    romalign 0x1000
    include "build/baserom/object_bowl.o"
endseg

beginseg
    name "object_po_field"
    romalign 0x1000
    include "build/baserom/object_po_field.o"
endseg

beginseg
    name "object_demo_kekkai"
    romalign 0x1000
    include "build/baserom/object_demo_kekkai.o"
endseg

beginseg
    name "object_efc_doughnut"
    romalign 0x1000
    include "build/baserom/object_efc_doughnut.o"
endseg

beginseg
    name "object_gi_dekupouch"
    romalign 0x1000
    include "build/baserom/object_gi_dekupouch.o"
endseg

beginseg
    name "object_ganon_anime1"
    romalign 0x1000
    include "build/baserom/object_ganon_anime1.o"
endseg

beginseg
    name "object_ganon_anime2"
    romalign 0x1000
    include "build/baserom/object_ganon_anime2.o"
endseg

beginseg
    name "object_ganon_anime3"
    romalign 0x1000
    include "build/baserom/object_ganon_anime3.o"
endseg

beginseg
    name "object_gi_rupy"
    romalign 0x1000
    include "build/baserom/object_gi_rupy.o"
endseg

beginseg
    name "object_spot01_matoya"
    romalign 0x1000
    include "build/baserom/object_spot01_matoya.o"
endseg

beginseg
    name "object_spot01_matoyab"
    romalign 0x1000
    include "build/baserom/object_spot01_matoyab.o"
endseg

beginseg
    name "object_po_composer"
    romalign 0x1000
    include "build/baserom/object_po_composer.o"
endseg

beginseg
    name "object_mu"
    romalign 0x1000
    include "build/baserom/object_mu.o"
endseg

beginseg
    name "object_wf"
    romalign 0x1000
    include "build/baserom/object_wf.o"
endseg

beginseg
    name "object_skb"
    romalign 0x1000
    include "build/baserom/object_skb.o"
endseg

beginseg
    name "object_gj"
    romalign 0x1000
    include "build/baserom/object_gj.o"
endseg

beginseg
    name "object_geff"
    romalign 0x1000
    include "build/baserom/object_geff.o"
endseg

beginseg
    name "object_haka_door"
    romalign 0x1000
    include "build/baserom/object_haka_door.o"
endseg

beginseg
    name "object_gs"
    romalign 0x1000
    include "build/baserom/object_gs.o"
endseg

beginseg
    name "object_ps"
    romalign 0x1000
    include "build/baserom/object_ps.o"
endseg

beginseg
    name "object_bwall"
    romalign 0x1000
    include "build/baserom/object_bwall.o"
endseg

beginseg
    name "object_crow"
    romalign 0x1000
    include "build/baserom/object_crow.o"
endseg

beginseg
    name "object_cow"
    romalign 0x1000
    include "build/baserom/object_cow.o"
endseg

beginseg
    name "object_cob"
    romalign 0x1000
    include "build/baserom/object_cob.o"
endseg

beginseg
    name "object_gi_sword_1"
    romalign 0x1000
    include "build/baserom/object_gi_sword_1.o"
endseg

beginseg
    name "object_door_killer"
    romalign 0x1000
    include "build/baserom/object_door_killer.o"
endseg

beginseg
    name "object_ouke_haka"
    romalign 0x1000
    include "build/baserom/object_ouke_haka.o"
endseg

beginseg
    name "object_timeblock"
    romalign 0x1000
    include "build/baserom/object_timeblock.o"
endseg

beginseg
    name "object_zl4"
    romalign 0x1000
    include "build/baserom/object_zl4.o"
endseg

beginseg
    name "g_pn_01"
    romalign 0x1000
    include "build/baserom/g_pn_01.o"
endseg

beginseg
    name "g_pn_02"
    romalign 0x1000
    include "build/baserom/g_pn_02.o"
endseg

beginseg
    name "g_pn_03"
    romalign 0x1000
    include "build/baserom/g_pn_03.o"
endseg

beginseg
    name "g_pn_04"
    romalign 0x1000
    include "build/baserom/g_pn_04.o"
endseg

beginseg
    name "g_pn_05"
    romalign 0x1000
    include "build/baserom/g_pn_05.o"
endseg

beginseg
    name "g_pn_06"
    romalign 0x1000
    include "build/baserom/g_pn_06.o"
endseg

beginseg
    name "g_pn_07"
    romalign 0x1000
    include "build/baserom/g_pn_07.o"
endseg

beginseg
    name "g_pn_08"
    romalign 0x1000
    include "build/baserom/g_pn_08.o"
endseg

beginseg
    name "g_pn_09"
    romalign 0x1000
    include "build/baserom/g_pn_09.o"
endseg

beginseg
    name "g_pn_10"
    romalign 0x1000
    include "build/baserom/g_pn_10.o"
endseg

beginseg
    name "g_pn_11"
    romalign 0x1000
    include "build/baserom/g_pn_11.o"
endseg

beginseg
    name "g_pn_12"
    romalign 0x1000
    include "build/baserom/g_pn_12.o"
endseg

beginseg
    name "g_pn_13"
    romalign 0x1000
    include "build/baserom/g_pn_13.o"
endseg

beginseg
    name "g_pn_14"
    romalign 0x1000
    include "build/baserom/g_pn_14.o"
endseg

beginseg
    name "g_pn_15"
    romalign 0x1000
    include "build/baserom/g_pn_15.o"
endseg

beginseg
    name "g_pn_16"
    romalign 0x1000
    include "build/baserom/g_pn_16.o"
endseg

beginseg
    name "g_pn_17"
    romalign 0x1000
    include "build/baserom/g_pn_17.o"
endseg

beginseg
    name "g_pn_18"
    romalign 0x1000
    include "build/baserom/g_pn_18.o"
endseg

beginseg
    name "g_pn_19"
    romalign 0x1000
    include "build/baserom/g_pn_19.o"
endseg

beginseg
    name "g_pn_20"
    romalign 0x1000
    include "build/baserom/g_pn_20.o"
endseg

beginseg
    name "g_pn_21"
    romalign 0x1000
    include "build/baserom/g_pn_21.o"
endseg

beginseg
    name "g_pn_22"
    romalign 0x1000
    include "build/baserom/g_pn_22.o"
endseg

beginseg
    name "g_pn_23"
    romalign 0x1000
    include "build/baserom/g_pn_23.o"
endseg

beginseg
    name "g_pn_24"
    romalign 0x1000
    include "build/baserom/g_pn_24.o"
endseg

beginseg
    name "g_pn_25"
    romalign 0x1000
    include "build/baserom/g_pn_25.o"
endseg

beginseg
    name "g_pn_26"
    romalign 0x1000
    include "build/baserom/g_pn_26.o"
endseg

beginseg
    name "g_pn_27"
    romalign 0x1000
    include "build/baserom/g_pn_27.o"
endseg

beginseg
    name "g_pn_28"
    romalign 0x1000
    include "build/baserom/g_pn_28.o"
endseg

beginseg
    name "g_pn_29"
    romalign 0x1000
    include "build/baserom/g_pn_29.o"
endseg

beginseg
    name "g_pn_30"
    romalign 0x1000
    include "build/baserom/g_pn_30.o"
endseg

beginseg
    name "g_pn_31"
    romalign 0x1000
    include "build/baserom/g_pn_31.o"
endseg

beginseg
    name "g_pn_32"
    romalign 0x1000
    include "build/baserom/g_pn_32.o"
endseg

beginseg
    name "g_pn_33"
    romalign 0x1000
    include "build/baserom/g_pn_33.o"
endseg

beginseg
    name "g_pn_34"
    romalign 0x1000
    include "build/baserom/g_pn_34.o"
endseg

beginseg
    name "g_pn_35"
    romalign 0x1000
    include "build/baserom/g_pn_35.o"
endseg

beginseg
    name "g_pn_36"
    romalign 0x1000
    include "build/baserom/g_pn_36.o"
endseg

beginseg
    name "g_pn_37"
    romalign 0x1000
    include "build/baserom/g_pn_37.o"
endseg

beginseg
    name "g_pn_38"
    romalign 0x1000
    include "build/baserom/g_pn_38.o"
endseg

beginseg
    name "g_pn_39"
    romalign 0x1000
    include "build/baserom/g_pn_39.o"
endseg

beginseg
    name "g_pn_40"
    romalign 0x1000
    include "build/baserom/g_pn_40.o"
endseg

beginseg
    name "g_pn_41"
    romalign 0x1000
    include "build/baserom/g_pn_41.o"
endseg

beginseg
    name "g_pn_42"
    romalign 0x1000
    include "build/baserom/g_pn_42.o"
endseg

beginseg
    name "g_pn_43"
    romalign 0x1000
    include "build/baserom/g_pn_43.o"
endseg

beginseg
    name "g_pn_44"
    romalign 0x1000
    include "build/baserom/g_pn_44.o"
endseg

beginseg
    name "g_pn_45"
    romalign 0x1000
    include "build/baserom/g_pn_45.o"
endseg

beginseg
    name "g_pn_46"
    romalign 0x1000
    include "build/baserom/g_pn_46.o"
endseg

beginseg
    name "g_pn_47"
    romalign 0x1000
    include "build/baserom/g_pn_47.o"
endseg

beginseg
    name "g_pn_48"
    romalign 0x1000
    include "build/baserom/g_pn_48.o"
endseg

beginseg
    name "g_pn_49"
    romalign 0x1000
    include "build/baserom/g_pn_49.o"
endseg

beginseg
    name "g_pn_50"
    romalign 0x1000
    include "build/baserom/g_pn_50.o"
endseg

beginseg
    name "g_pn_51"
    romalign 0x1000
    include "build/baserom/g_pn_51.o"
endseg

beginseg
    name "g_pn_52"
    romalign 0x1000
    include "build/baserom/g_pn_52.o"
endseg

beginseg
    name "g_pn_53"
    romalign 0x1000
    include "build/baserom/g_pn_53.o"
endseg

beginseg
    name "g_pn_54"
    romalign 0x1000
    include "build/baserom/g_pn_54.o"
endseg

beginseg
    name "g_pn_55"
    romalign 0x1000
    include "build/baserom/g_pn_55.o"
endseg

beginseg
    name "g_pn_56"
    romalign 0x1000
    include "build/baserom/g_pn_56.o"
endseg

beginseg
    name "g_pn_57"
    romalign 0x1000
    include "build/baserom/g_pn_57.o"
endseg

beginseg
    name "z_select_static"
    romalign 0x1000
    include "build/baserom/z_select_static.o"
endseg

beginseg
    name "nintendo_rogo_static"
    romalign 0x1000
    include "build/baserom/nintendo_rogo_static.o"
endseg

beginseg
    name "title_static"
    romalign 0x1000
    include "build/baserom/title_static.o"
endseg

beginseg
    name "parameter_static"
    romalign 0x1000
    include "build/baserom/parameter_static.o"
endseg

beginseg
    name "vr_fine0_static"
    romalign 0x1000
    include "build/baserom/vr_fine0_static.o"
endseg

beginseg
    name "vr_fine0_pal_static"
    romalign 0x1000
    include "build/baserom/vr_fine0_pal_static.o"
endseg

beginseg
    name "vr_fine1_static"
    romalign 0x1000
    include "build/baserom/vr_fine1_static.o"
endseg

beginseg
    name "vr_fine1_pal_static"
    romalign 0x1000
    include "build/baserom/vr_fine1_pal_static.o"
endseg

beginseg
    name "vr_fine2_static"
    romalign 0x1000
    include "build/baserom/vr_fine2_static.o"
endseg

beginseg
    name "vr_fine2_pal_static"
    romalign 0x1000
    include "build/baserom/vr_fine2_pal_static.o"
endseg

beginseg
    name "vr_fine3_static"
    romalign 0x1000
    include "build/baserom/vr_fine3_static.o"
endseg

beginseg
    name "vr_fine3_pal_static"
    romalign 0x1000
    include "build/baserom/vr_fine3_pal_static.o"
endseg

beginseg
    name "vr_cloud0_static"
    romalign 0x1000
    include "build/baserom/vr_cloud0_static.o"
endseg

beginseg
    name "vr_cloud0_pal_static"
    romalign 0x1000
    include "build/baserom/vr_cloud0_pal_static.o"
endseg

beginseg
    name "vr_cloud1_static"
    romalign 0x1000
    include "build/baserom/vr_cloud1_static.o"
endseg

beginseg
    name "vr_cloud1_pal_static"
    romalign 0x1000
    include "build/baserom/vr_cloud1_pal_static.o"
endseg

beginseg
    name "vr_cloud2_static"
    romalign 0x1000
    include "build/baserom/vr_cloud2_static.o"
endseg

beginseg
    name "vr_cloud2_pal_static"
    romalign 0x1000
    include "build/baserom/vr_cloud2_pal_static.o"
endseg

beginseg
    name "vr_cloud3_static"
    romalign 0x1000
    include "build/baserom/vr_cloud3_static.o"
endseg

beginseg
    name "vr_cloud3_pal_static"
    romalign 0x1000
    include "build/baserom/vr_cloud3_pal_static.o"
endseg

beginseg
    name "vr_holy0_static"
    romalign 0x1000
    include "build/baserom/vr_holy0_static.o"
endseg

beginseg
    name "vr_holy0_pal_static"
    romalign 0x1000
    include "build/baserom/vr_holy0_pal_static.o"
endseg

beginseg
    name "vr_holy1_static"
    romalign 0x1000
    include "build/baserom/vr_holy1_static.o"
endseg

beginseg
    name "vr_holy1_pal_static"
    romalign 0x1000
    include "build/baserom/vr_holy1_pal_static.o"
endseg

beginseg
    name "vr_MDVR_static"
    romalign 0x1000
    include "build/baserom/vr_MDVR_static.o"
endseg

beginseg
    name "vr_MDVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_MDVR_pal_static.o"
endseg

beginseg
    name "vr_MNVR_static"
    romalign 0x1000
    include "build/baserom/vr_MNVR_static.o"
endseg

beginseg
    name "vr_MNVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_MNVR_pal_static.o"
endseg

beginseg
    name "vr_RUVR_static"
    romalign 0x1000
    include "build/baserom/vr_RUVR_static.o"
endseg

beginseg
    name "vr_RUVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_RUVR_pal_static.o"
endseg

beginseg
    name "vr_LHVR_static"
    romalign 0x1000
    include "build/baserom/vr_LHVR_static.o"
endseg

beginseg
    name "vr_LHVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_LHVR_pal_static.o"
endseg

beginseg
    name "vr_KHVR_static"
    romalign 0x1000
    include "build/baserom/vr_KHVR_static.o"
endseg

beginseg
    name "vr_KHVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_KHVR_pal_static.o"
endseg

beginseg
    name "vr_K3VR_static"
    romalign 0x1000
    include "build/baserom/vr_K3VR_static.o"
endseg

beginseg
    name "vr_K3VR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_K3VR_pal_static.o"
endseg

beginseg
    name "vr_K4VR_static"
    romalign 0x1000
    include "build/baserom/vr_K4VR_static.o"
endseg

beginseg
    name "vr_K4VR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_K4VR_pal_static.o"
endseg

beginseg
    name "vr_K5VR_static"
    romalign 0x1000
    include "build/baserom/vr_K5VR_static.o"
endseg

beginseg
    name "vr_K5VR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_K5VR_pal_static.o"
endseg

beginseg
    name "vr_SP1a_static"
    romalign 0x1000
    include "build/baserom/vr_SP1a_static.o"
endseg

beginseg
    name "vr_SP1a_pal_static"
    romalign 0x1000
    include "build/baserom/vr_SP1a_pal_static.o"
endseg

beginseg
    name "vr_MLVR_static"
    romalign 0x1000
    include "build/baserom/vr_MLVR_static.o"
endseg

beginseg
    name "vr_MLVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_MLVR_pal_static.o"
endseg

beginseg
    name "vr_KKRVR_static"
    romalign 0x1000
    include "build/baserom/vr_KKRVR_static.o"
endseg

beginseg
    name "vr_KKRVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_KKRVR_pal_static.o"
endseg

beginseg
    name "vr_KR3VR_static"
    romalign 0x1000
    include "build/baserom/vr_KR3VR_static.o"
endseg

beginseg
    name "vr_KR3VR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_KR3VR_pal_static.o"
endseg

beginseg
    name "vr_IPVR_static"
    romalign 0x1000
    include "build/baserom/vr_IPVR_static.o"
endseg

beginseg
    name "vr_IPVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_IPVR_pal_static.o"
endseg

beginseg
    name "vr_KSVR_static"
    romalign 0x1000
    include "build/baserom/vr_KSVR_static.o"
endseg

beginseg
    name "vr_KSVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_KSVR_pal_static.o"
endseg

beginseg
    name "vr_GLVR_static"
    romalign 0x1000
    include "build/baserom/vr_GLVR_static.o"
endseg

beginseg
    name "vr_GLVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_GLVR_pal_static.o"
endseg

beginseg
    name "vr_ZRVR_static"
    romalign 0x1000
    include "build/baserom/vr_ZRVR_static.o"
endseg

beginseg
    name "vr_ZRVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_ZRVR_pal_static.o"
endseg

beginseg
    name "vr_DGVR_static"
    romalign 0x1000
    include "build/baserom/vr_DGVR_static.o"
endseg

beginseg
    name "vr_DGVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_DGVR_pal_static.o"
endseg

beginseg
    name "vr_ALVR_static"
    romalign 0x1000
    include "build/baserom/vr_ALVR_static.o"
endseg

beginseg
    name "vr_ALVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_ALVR_pal_static.o"
endseg

beginseg
    name "vr_NSVR_static"
    romalign 0x1000
    include "build/baserom/vr_NSVR_static.o"
endseg

beginseg
    name "vr_NSVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_NSVR_pal_static.o"
endseg

beginseg
    name "vr_LBVR_static"
    romalign 0x1000
    include "build/baserom/vr_LBVR_static.o"
endseg

beginseg
    name "vr_LBVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_LBVR_pal_static.o"
endseg

beginseg
    name "vr_TTVR_static"
    romalign 0x1000
    include "build/baserom/vr_TTVR_static.o"
endseg

beginseg
    name "vr_TTVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_TTVR_pal_static.o"
endseg

beginseg
    name "vr_FCVR_static"
    romalign 0x1000
    include "build/baserom/vr_FCVR_static.o"
endseg

beginseg
    name "vr_FCVR_pal_static"
    romalign 0x1000
    include "build/baserom/vr_FCVR_pal_static.o"
endseg

beginseg
    name "elf_message_field"
    romalign 0x1000
    include "build/baserom/elf_message_field.o"
endseg

beginseg
    name "elf_message_ydan"
    romalign 0x1000
    include "build/baserom/elf_message_ydan.o"
endseg

beginseg
    name "ydan_scene"
    romalign 0x1000
    include "build/baserom/ydan_scene.o"
endseg

beginseg
    name "ydan_room_0"
    romalign 0x1000
    include "build/baserom/ydan_room_0.o"
endseg

beginseg
    name "ydan_room_1"
    romalign 0x1000
    include "build/baserom/ydan_room_1.o"
endseg

beginseg
    name "ydan_room_2"
    romalign 0x1000
    include "build/baserom/ydan_room_2.o"
endseg

beginseg
    name "ydan_room_3"
    romalign 0x1000
    include "build/baserom/ydan_room_3.o"
endseg

beginseg
    name "ydan_room_4"
    romalign 0x1000
    include "build/baserom/ydan_room_4.o"
endseg

beginseg
    name "ydan_room_5"
    romalign 0x1000
    include "build/baserom/ydan_room_5.o"
endseg

beginseg
    name "ydan_room_6"
    romalign 0x1000
    include "build/baserom/ydan_room_6.o"
endseg

beginseg
    name "ydan_room_7"
    romalign 0x1000
    include "build/baserom/ydan_room_7.o"
endseg

beginseg
    name "ydan_room_8"
    romalign 0x1000
    include "build/baserom/ydan_room_8.o"
endseg

beginseg
    name "ydan_room_9"
    romalign 0x1000
    include "build/baserom/ydan_room_9.o"
endseg

beginseg
    name "ydan_room_10"
    romalign 0x1000
    include "build/baserom/ydan_room_10.o"
endseg

beginseg
    name "ydan_room_11"
    romalign 0x1000
    include "build/baserom/ydan_room_11.o"
endseg

beginseg
    name "ddan_scene"
    romalign 0x1000
    include "build/baserom/ddan_scene.o"
endseg

beginseg
    name "ddan_room_0"
    romalign 0x1000
    include "build/baserom/ddan_room_0.o"
endseg

beginseg
    name "ddan_room_1"
    romalign 0x1000
    include "build/baserom/ddan_room_1.o"
endseg

beginseg
    name "ddan_room_2"
    romalign 0x1000
    include "build/baserom/ddan_room_2.o"
endseg

beginseg
    name "ddan_room_3"
    romalign 0x1000
    include "build/baserom/ddan_room_3.o"
endseg

beginseg
    name "ddan_room_4"
    romalign 0x1000
    include "build/baserom/ddan_room_4.o"
endseg

beginseg
    name "ddan_room_5"
    romalign 0x1000
    include "build/baserom/ddan_room_5.o"
endseg

beginseg
    name "ddan_room_6"
    romalign 0x1000
    include "build/baserom/ddan_room_6.o"
endseg

beginseg
    name "ddan_room_7"
    romalign 0x1000
    include "build/baserom/ddan_room_7.o"
endseg

beginseg
    name "ddan_room_8"
    romalign 0x1000
    include "build/baserom/ddan_room_8.o"
endseg

beginseg
    name "ddan_room_9"
    romalign 0x1000
    include "build/baserom/ddan_room_9.o"
endseg

beginseg
    name "ddan_room_10"
    romalign 0x1000
    include "build/baserom/ddan_room_10.o"
endseg

beginseg
    name "ddan_room_11"
    romalign 0x1000
    include "build/baserom/ddan_room_11.o"
endseg

beginseg
    name "ddan_room_12"
    romalign 0x1000
    include "build/baserom/ddan_room_12.o"
endseg

beginseg
    name "ddan_room_13"
    romalign 0x1000
    include "build/baserom/ddan_room_13.o"
endseg

beginseg
    name "ddan_room_14"
    romalign 0x1000
    include "build/baserom/ddan_room_14.o"
endseg

beginseg
    name "ddan_room_15"
    romalign 0x1000
    include "build/baserom/ddan_room_15.o"
endseg

beginseg
    name "ddan_room_16"
    romalign 0x1000
    include "build/baserom/ddan_room_16.o"
endseg

beginseg
    name "bdan_scene"
    romalign 0x1000
    include "build/baserom/bdan_scene.o"
endseg

beginseg
    name "bdan_room_0"
    romalign 0x1000
    include "build/baserom/bdan_room_0.o"
endseg

beginseg
    name "bdan_room_1"
    romalign 0x1000
    include "build/baserom/bdan_room_1.o"
endseg

beginseg
    name "bdan_room_2"
    romalign 0x1000
    include "build/baserom/bdan_room_2.o"
endseg

beginseg
    name "bdan_room_3"
    romalign 0x1000
    include "build/baserom/bdan_room_3.o"
endseg

beginseg
    name "bdan_room_4"
    romalign 0x1000
    include "build/baserom/bdan_room_4.o"
endseg

beginseg
    name "bdan_room_5"
    romalign 0x1000
    include "build/baserom/bdan_room_5.o"
endseg

beginseg
    name "bdan_room_6"
    romalign 0x1000
    include "build/baserom/bdan_room_6.o"
endseg

beginseg
    name "bdan_room_7"
    romalign 0x1000
    include "build/baserom/bdan_room_7.o"
endseg

beginseg
    name "bdan_room_8"
    romalign 0x1000
    include "build/baserom/bdan_room_8.o"
endseg

beginseg
    name "bdan_room_9"
    romalign 0x1000
    include "build/baserom/bdan_room_9.o"
endseg

beginseg
    name "bdan_room_10"
    romalign 0x1000
    include "build/baserom/bdan_room_10.o"
endseg

beginseg
    name "bdan_room_11"
    romalign 0x1000
    include "build/baserom/bdan_room_11.o"
endseg

beginseg
    name "bdan_room_12"
    romalign 0x1000
    include "build/baserom/bdan_room_12.o"
endseg

beginseg
    name "bdan_room_13"
    romalign 0x1000
    include "build/baserom/bdan_room_13.o"
endseg

beginseg
    name "bdan_room_14"
    romalign 0x1000
    include "build/baserom/bdan_room_14.o"
endseg

beginseg
    name "bdan_room_15"
    romalign 0x1000
    include "build/baserom/bdan_room_15.o"
endseg

beginseg
    name "Bmori1_scene"
    romalign 0x1000
    include "build/baserom/Bmori1_scene.o"
endseg

beginseg
    name "Bmori1_room_0"
    romalign 0x1000
    include "build/baserom/Bmori1_room_0.o"
endseg

beginseg
    name "Bmori1_room_1"
    romalign 0x1000
    include "build/baserom/Bmori1_room_1.o"
endseg

beginseg
    name "Bmori1_room_2"
    romalign 0x1000
    include "build/baserom/Bmori1_room_2.o"
endseg

beginseg
    name "Bmori1_room_3"
    romalign 0x1000
    include "build/baserom/Bmori1_room_3.o"
endseg

beginseg
    name "Bmori1_room_4"
    romalign 0x1000
    include "build/baserom/Bmori1_room_4.o"
endseg

beginseg
    name "Bmori1_room_5"
    romalign 0x1000
    include "build/baserom/Bmori1_room_5.o"
endseg

beginseg
    name "Bmori1_room_6"
    romalign 0x1000
    include "build/baserom/Bmori1_room_6.o"
endseg

beginseg
    name "Bmori1_room_7"
    romalign 0x1000
    include "build/baserom/Bmori1_room_7.o"
endseg

beginseg
    name "Bmori1_room_8"
    romalign 0x1000
    include "build/baserom/Bmori1_room_8.o"
endseg

beginseg
    name "Bmori1_room_9"
    romalign 0x1000
    include "build/baserom/Bmori1_room_9.o"
endseg

beginseg
    name "Bmori1_room_10"
    romalign 0x1000
    include "build/baserom/Bmori1_room_10.o"
endseg

beginseg
    name "Bmori1_room_11"
    romalign 0x1000
    include "build/baserom/Bmori1_room_11.o"
endseg

beginseg
    name "Bmori1_room_12"
    romalign 0x1000
    include "build/baserom/Bmori1_room_12.o"
endseg

beginseg
    name "Bmori1_room_13"
    romalign 0x1000
    include "build/baserom/Bmori1_room_13.o"
endseg

beginseg
    name "Bmori1_room_14"
    romalign 0x1000
    include "build/baserom/Bmori1_room_14.o"
endseg

beginseg
    name "Bmori1_room_15"
    romalign 0x1000
    include "build/baserom/Bmori1_room_15.o"
endseg

beginseg
    name "Bmori1_room_16"
    romalign 0x1000
    include "build/baserom/Bmori1_room_16.o"
endseg

beginseg
    name "Bmori1_room_17"
    romalign 0x1000
    include "build/baserom/Bmori1_room_17.o"
endseg

beginseg
    name "Bmori1_room_18"
    romalign 0x1000
    include "build/baserom/Bmori1_room_18.o"
endseg

beginseg
    name "Bmori1_room_19"
    romalign 0x1000
    include "build/baserom/Bmori1_room_19.o"
endseg

beginseg
    name "Bmori1_room_20"
    romalign 0x1000
    include "build/baserom/Bmori1_room_20.o"
endseg

beginseg
    name "Bmori1_room_21"
    romalign 0x1000
    include "build/baserom/Bmori1_room_21.o"
endseg

beginseg
    name "Bmori1_room_22"
    romalign 0x1000
    include "build/baserom/Bmori1_room_22.o"
endseg

beginseg
    name "HIDAN_scene"
    romalign 0x1000
    include "build/baserom/HIDAN_scene.o"
endseg

beginseg
    name "HIDAN_room_0"
    romalign 0x1000
    include "build/baserom/HIDAN_room_0.o"
endseg

beginseg
    name "HIDAN_room_1"
    romalign 0x1000
    include "build/baserom/HIDAN_room_1.o"
endseg

beginseg
    name "HIDAN_room_2"
    romalign 0x1000
    include "build/baserom/HIDAN_room_2.o"
endseg

beginseg
    name "HIDAN_room_3"
    romalign 0x1000
    include "build/baserom/HIDAN_room_3.o"
endseg

beginseg
    name "HIDAN_room_4"
    romalign 0x1000
    include "build/baserom/HIDAN_room_4.o"
endseg

beginseg
    name "HIDAN_room_5"
    romalign 0x1000
    include "build/baserom/HIDAN_room_5.o"
endseg

beginseg
    name "HIDAN_room_6"
    romalign 0x1000
    include "build/baserom/HIDAN_room_6.o"
endseg

beginseg
    name "HIDAN_room_7"
    romalign 0x1000
    include "build/baserom/HIDAN_room_7.o"
endseg

beginseg
    name "HIDAN_room_8"
    romalign 0x1000
    include "build/baserom/HIDAN_room_8.o"
endseg

beginseg
    name "HIDAN_room_9"
    romalign 0x1000
    include "build/baserom/HIDAN_room_9.o"
endseg

beginseg
    name "HIDAN_room_10"
    romalign 0x1000
    include "build/baserom/HIDAN_room_10.o"
endseg

beginseg
    name "HIDAN_room_11"
    romalign 0x1000
    include "build/baserom/HIDAN_room_11.o"
endseg

beginseg
    name "HIDAN_room_12"
    romalign 0x1000
    include "build/baserom/HIDAN_room_12.o"
endseg

beginseg
    name "HIDAN_room_13"
    romalign 0x1000
    include "build/baserom/HIDAN_room_13.o"
endseg

beginseg
    name "HIDAN_room_14"
    romalign 0x1000
    include "build/baserom/HIDAN_room_14.o"
endseg

beginseg
    name "HIDAN_room_15"
    romalign 0x1000
    include "build/baserom/HIDAN_room_15.o"
endseg

beginseg
    name "HIDAN_room_16"
    romalign 0x1000
    include "build/baserom/HIDAN_room_16.o"
endseg

beginseg
    name "HIDAN_room_17"
    romalign 0x1000
    include "build/baserom/HIDAN_room_17.o"
endseg

beginseg
    name "HIDAN_room_18"
    romalign 0x1000
    include "build/baserom/HIDAN_room_18.o"
endseg

beginseg
    name "HIDAN_room_19"
    romalign 0x1000
    include "build/baserom/HIDAN_room_19.o"
endseg

beginseg
    name "HIDAN_room_20"
    romalign 0x1000
    include "build/baserom/HIDAN_room_20.o"
endseg

beginseg
    name "HIDAN_room_21"
    romalign 0x1000
    include "build/baserom/HIDAN_room_21.o"
endseg

beginseg
    name "HIDAN_room_22"
    romalign 0x1000
    include "build/baserom/HIDAN_room_22.o"
endseg

beginseg
    name "HIDAN_room_23"
    romalign 0x1000
    include "build/baserom/HIDAN_room_23.o"
endseg

beginseg
    name "HIDAN_room_24"
    romalign 0x1000
    include "build/baserom/HIDAN_room_24.o"
endseg

beginseg
    name "HIDAN_room_25"
    romalign 0x1000
    include "build/baserom/HIDAN_room_25.o"
endseg

beginseg
    name "HIDAN_room_26"
    romalign 0x1000
    include "build/baserom/HIDAN_room_26.o"
endseg

beginseg
    name "MIZUsin_scene"
    romalign 0x1000
    include "build/baserom/MIZUsin_scene.o"
endseg

beginseg
    name "MIZUsin_room_0"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_0.o"
endseg

beginseg
    name "MIZUsin_room_1"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_1.o"
endseg

beginseg
    name "MIZUsin_room_2"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_2.o"
endseg

beginseg
    name "MIZUsin_room_3"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_3.o"
endseg

beginseg
    name "MIZUsin_room_4"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_4.o"
endseg

beginseg
    name "MIZUsin_room_5"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_5.o"
endseg

beginseg
    name "MIZUsin_room_6"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_6.o"
endseg

beginseg
    name "MIZUsin_room_7"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_7.o"
endseg

beginseg
    name "MIZUsin_room_8"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_8.o"
endseg

beginseg
    name "MIZUsin_room_9"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_9.o"
endseg

beginseg
    name "MIZUsin_room_10"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_10.o"
endseg

beginseg
    name "MIZUsin_room_11"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_11.o"
endseg

beginseg
    name "MIZUsin_room_12"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_12.o"
endseg

beginseg
    name "MIZUsin_room_13"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_13.o"
endseg

beginseg
    name "MIZUsin_room_14"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_14.o"
endseg

beginseg
    name "MIZUsin_room_15"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_15.o"
endseg

beginseg
    name "MIZUsin_room_16"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_16.o"
endseg

beginseg
    name "MIZUsin_room_17"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_17.o"
endseg

beginseg
    name "MIZUsin_room_18"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_18.o"
endseg

beginseg
    name "MIZUsin_room_19"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_19.o"
endseg

beginseg
    name "MIZUsin_room_20"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_20.o"
endseg

beginseg
    name "MIZUsin_room_21"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_21.o"
endseg

beginseg
    name "MIZUsin_room_22"
    romalign 0x1000
    include "build/baserom/MIZUsin_room_22.o"
endseg

beginseg
    name "jyasinzou_scene"
    romalign 0x1000
    include "build/baserom/jyasinzou_scene.o"
endseg

beginseg
    name "jyasinzou_room_0"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_0.o"
endseg

beginseg
    name "jyasinzou_room_1"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_1.o"
endseg

beginseg
    name "jyasinzou_room_2"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_2.o"
endseg

beginseg
    name "jyasinzou_room_3"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_3.o"
endseg

beginseg
    name "jyasinzou_room_4"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_4.o"
endseg

beginseg
    name "jyasinzou_room_5"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_5.o"
endseg

beginseg
    name "jyasinzou_room_6"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_6.o"
endseg

beginseg
    name "jyasinzou_room_7"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_7.o"
endseg

beginseg
    name "jyasinzou_room_8"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_8.o"
endseg

beginseg
    name "jyasinzou_room_9"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_9.o"
endseg

beginseg
    name "jyasinzou_room_10"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_10.o"
endseg

beginseg
    name "jyasinzou_room_11"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_11.o"
endseg

beginseg
    name "jyasinzou_room_12"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_12.o"
endseg

beginseg
    name "jyasinzou_room_13"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_13.o"
endseg

beginseg
    name "jyasinzou_room_14"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_14.o"
endseg

beginseg
    name "jyasinzou_room_15"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_15.o"
endseg

beginseg
    name "jyasinzou_room_16"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_16.o"
endseg

beginseg
    name "jyasinzou_room_17"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_17.o"
endseg

beginseg
    name "jyasinzou_room_18"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_18.o"
endseg

beginseg
    name "jyasinzou_room_19"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_19.o"
endseg

beginseg
    name "jyasinzou_room_20"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_20.o"
endseg

beginseg
    name "jyasinzou_room_21"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_21.o"
endseg

beginseg
    name "jyasinzou_room_22"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_22.o"
endseg

beginseg
    name "jyasinzou_room_23"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_23.o"
endseg

beginseg
    name "jyasinzou_room_24"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_24.o"
endseg

beginseg
    name "jyasinzou_room_25"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_25.o"
endseg

beginseg
    name "jyasinzou_room_26"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_26.o"
endseg

beginseg
    name "jyasinzou_room_27"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_27.o"
endseg

beginseg
    name "jyasinzou_room_28"
    romalign 0x1000
    include "build/baserom/jyasinzou_room_28.o"
endseg

beginseg
    name "HAKAdan_scene"
    romalign 0x1000
    include "build/baserom/HAKAdan_scene.o"
endseg

beginseg
    name "HAKAdan_room_0"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_0.o"
endseg

beginseg
    name "HAKAdan_room_1"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_1.o"
endseg

beginseg
    name "HAKAdan_room_2"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_2.o"
endseg

beginseg
    name "HAKAdan_room_3"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_3.o"
endseg

beginseg
    name "HAKAdan_room_4"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_4.o"
endseg

beginseg
    name "HAKAdan_room_5"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_5.o"
endseg

beginseg
    name "HAKAdan_room_6"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_6.o"
endseg

beginseg
    name "HAKAdan_room_7"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_7.o"
endseg

beginseg
    name "HAKAdan_room_8"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_8.o"
endseg

beginseg
    name "HAKAdan_room_9"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_9.o"
endseg

beginseg
    name "HAKAdan_room_10"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_10.o"
endseg

beginseg
    name "HAKAdan_room_11"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_11.o"
endseg

beginseg
    name "HAKAdan_room_12"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_12.o"
endseg

beginseg
    name "HAKAdan_room_13"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_13.o"
endseg

beginseg
    name "HAKAdan_room_14"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_14.o"
endseg

beginseg
    name "HAKAdan_room_15"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_15.o"
endseg

beginseg
    name "HAKAdan_room_16"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_16.o"
endseg

beginseg
    name "HAKAdan_room_17"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_17.o"
endseg

beginseg
    name "HAKAdan_room_18"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_18.o"
endseg

beginseg
    name "HAKAdan_room_19"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_19.o"
endseg

beginseg
    name "HAKAdan_room_20"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_20.o"
endseg

beginseg
    name "HAKAdan_room_21"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_21.o"
endseg

beginseg
    name "HAKAdan_room_22"
    romalign 0x1000
    include "build/baserom/HAKAdan_room_22.o"
endseg

beginseg
    name "HAKAdanCH_scene"
    romalign 0x1000
    include "build/baserom/HAKAdanCH_scene.o"
endseg

beginseg
    name "HAKAdanCH_room_0"
    romalign 0x1000
    include "build/baserom/HAKAdanCH_room_0.o"
endseg

beginseg
    name "HAKAdanCH_room_1"
    romalign 0x1000
    include "build/baserom/HAKAdanCH_room_1.o"
endseg

beginseg
    name "HAKAdanCH_room_2"
    romalign 0x1000
    include "build/baserom/HAKAdanCH_room_2.o"
endseg

beginseg
    name "HAKAdanCH_room_3"
    romalign 0x1000
    include "build/baserom/HAKAdanCH_room_3.o"
endseg

beginseg
    name "HAKAdanCH_room_4"
    romalign 0x1000
    include "build/baserom/HAKAdanCH_room_4.o"
endseg

beginseg
    name "HAKAdanCH_room_5"
    romalign 0x1000
    include "build/baserom/HAKAdanCH_room_5.o"
endseg

beginseg
    name "HAKAdanCH_room_6"
    romalign 0x1000
    include "build/baserom/HAKAdanCH_room_6.o"
endseg

beginseg
    name "ice_doukutu_scene"
    romalign 0x1000
    include "build/baserom/ice_doukutu_scene.o"
endseg

beginseg
    name "ice_doukutu_room_0"
    romalign 0x1000
    include "build/baserom/ice_doukutu_room_0.o"
endseg

beginseg
    name "ice_doukutu_room_1"
    romalign 0x1000
    include "build/baserom/ice_doukutu_room_1.o"
endseg

beginseg
    name "ice_doukutu_room_2"
    romalign 0x1000
    include "build/baserom/ice_doukutu_room_2.o"
endseg

beginseg
    name "ice_doukutu_room_3"
    romalign 0x1000
    include "build/baserom/ice_doukutu_room_3.o"
endseg

beginseg
    name "ice_doukutu_room_4"
    romalign 0x1000
    include "build/baserom/ice_doukutu_room_4.o"
endseg

beginseg
    name "ice_doukutu_room_5"
    romalign 0x1000
    include "build/baserom/ice_doukutu_room_5.o"
endseg

beginseg
    name "ice_doukutu_room_6"
    romalign 0x1000
    include "build/baserom/ice_doukutu_room_6.o"
endseg

beginseg
    name "ice_doukutu_room_7"
    romalign 0x1000
    include "build/baserom/ice_doukutu_room_7.o"
endseg

beginseg
    name "ice_doukutu_room_8"
    romalign 0x1000
    include "build/baserom/ice_doukutu_room_8.o"
endseg

beginseg
    name "ice_doukutu_room_9"
    romalign 0x1000
    include "build/baserom/ice_doukutu_room_9.o"
endseg

beginseg
    name "ice_doukutu_room_10"
    romalign 0x1000
    include "build/baserom/ice_doukutu_room_10.o"
endseg

beginseg
    name "ice_doukutu_room_11"
    romalign 0x1000
    include "build/baserom/ice_doukutu_room_11.o"
endseg

beginseg
    name "men_scene"
    romalign 0x1000
    include "build/baserom/men_scene.o"
endseg

beginseg
    name "men_room_0"
    romalign 0x1000
    include "build/baserom/men_room_0.o"
endseg

beginseg
    name "men_room_1"
    romalign 0x1000
    include "build/baserom/men_room_1.o"
endseg

beginseg
    name "men_room_2"
    romalign 0x1000
    include "build/baserom/men_room_2.o"
endseg

beginseg
    name "men_room_3"
    romalign 0x1000
    include "build/baserom/men_room_3.o"
endseg

beginseg
    name "men_room_4"
    romalign 0x1000
    include "build/baserom/men_room_4.o"
endseg

beginseg
    name "men_room_5"
    romalign 0x1000
    include "build/baserom/men_room_5.o"
endseg

beginseg
    name "men_room_6"
    romalign 0x1000
    include "build/baserom/men_room_6.o"
endseg

beginseg
    name "men_room_7"
    romalign 0x1000
    include "build/baserom/men_room_7.o"
endseg

beginseg
    name "men_room_8"
    romalign 0x1000
    include "build/baserom/men_room_8.o"
endseg

beginseg
    name "men_room_9"
    romalign 0x1000
    include "build/baserom/men_room_9.o"
endseg

beginseg
    name "men_room_10"
    romalign 0x1000
    include "build/baserom/men_room_10.o"
endseg

beginseg
    name "ganontika_scene"
    romalign 0x1000
    include "build/baserom/ganontika_scene.o"
endseg

beginseg
    name "ganontika_room_0"
    romalign 0x1000
    include "build/baserom/ganontika_room_0.o"
endseg

beginseg
    name "ganontika_room_1"
    romalign 0x1000
    include "build/baserom/ganontika_room_1.o"
endseg

beginseg
    name "ganontika_room_2"
    romalign 0x1000
    include "build/baserom/ganontika_room_2.o"
endseg

beginseg
    name "ganontika_room_3"
    romalign 0x1000
    include "build/baserom/ganontika_room_3.o"
endseg

beginseg
    name "ganontika_room_4"
    romalign 0x1000
    include "build/baserom/ganontika_room_4.o"
endseg

beginseg
    name "ganontika_room_5"
    romalign 0x1000
    include "build/baserom/ganontika_room_5.o"
endseg

beginseg
    name "ganontika_room_6"
    romalign 0x1000
    include "build/baserom/ganontika_room_6.o"
endseg

beginseg
    name "ganontika_room_7"
    romalign 0x1000
    include "build/baserom/ganontika_room_7.o"
endseg

beginseg
    name "ganontika_room_8"
    romalign 0x1000
    include "build/baserom/ganontika_room_8.o"
endseg

beginseg
    name "ganontika_room_9"
    romalign 0x1000
    include "build/baserom/ganontika_room_9.o"
endseg

beginseg
    name "ganontika_room_10"
    romalign 0x1000
    include "build/baserom/ganontika_room_10.o"
endseg

beginseg
    name "ganontika_room_11"
    romalign 0x1000
    include "build/baserom/ganontika_room_11.o"
endseg

beginseg
    name "ganontika_room_12"
    romalign 0x1000
    include "build/baserom/ganontika_room_12.o"
endseg

beginseg
    name "ganontika_room_13"
    romalign 0x1000
    include "build/baserom/ganontika_room_13.o"
endseg

beginseg
    name "ganontika_room_14"
    romalign 0x1000
    include "build/baserom/ganontika_room_14.o"
endseg

beginseg
    name "ganontika_room_15"
    romalign 0x1000
    include "build/baserom/ganontika_room_15.o"
endseg

beginseg
    name "ganontika_room_16"
    romalign 0x1000
    include "build/baserom/ganontika_room_16.o"
endseg

beginseg
    name "ganontika_room_17"
    romalign 0x1000
    include "build/baserom/ganontika_room_17.o"
endseg

beginseg
    name "ganontika_room_18"
    romalign 0x1000
    include "build/baserom/ganontika_room_18.o"
endseg

beginseg
    name "ganontika_room_19"
    romalign 0x1000
    include "build/baserom/ganontika_room_19.o"
endseg

beginseg
    name "syotes_scene"
    romalign 0x1000
    include "build/baserom/syotes_scene.o"
endseg

beginseg
    name "syotes_room_0"
    romalign 0x1000
    include "build/baserom/syotes_room_0.o"
endseg

beginseg
    name "syotes2_scene"
    romalign 0x1000
    include "build/baserom/syotes2_scene.o"
endseg

beginseg
    name "syotes2_room_0"
    romalign 0x1000
    include "build/baserom/syotes2_room_0.o"
endseg

beginseg
    name "depth_test_scene"
    romalign 0x1000
    include "build/baserom/depth_test_scene.o"
endseg

beginseg
    name "depth_test_room_0"
    romalign 0x1000
    include "build/baserom/depth_test_room_0.o"
endseg

beginseg
    name "spot00_scene"
    romalign 0x1000
    include "build/baserom/spot00_scene.o"
endseg

beginseg
    name "spot00_room_0"
    romalign 0x1000
    include "build/baserom/spot00_room_0.o"
endseg

beginseg
    name "spot01_scene"
    romalign 0x1000
    include "build/baserom/spot01_scene.o"
endseg

beginseg
    name "spot01_room_0"
    romalign 0x1000
    include "build/baserom/spot01_room_0.o"
endseg

beginseg
    name "spot02_scene"
    romalign 0x1000
    include "build/baserom/spot02_scene.o"
endseg

beginseg
    name "spot02_room_0"
    romalign 0x1000
    include "build/baserom/spot02_room_0.o"
endseg

beginseg
    name "spot02_room_1"
    romalign 0x1000
    include "build/baserom/spot02_room_1.o"
endseg

beginseg
    name "spot03_scene"
    romalign 0x1000
    include "build/baserom/spot03_scene.o"
endseg

beginseg
    name "spot03_room_0"
    romalign 0x1000
    include "build/baserom/spot03_room_0.o"
endseg

beginseg
    name "spot03_room_1"
    romalign 0x1000
    include "build/baserom/spot03_room_1.o"
endseg

beginseg
    name "spot04_scene"
    romalign 0x1000
    include "build/baserom/spot04_scene.o"
endseg

beginseg
    name "spot04_room_0"
    romalign 0x1000
    include "build/baserom/spot04_room_0.o"
endseg

beginseg
    name "spot04_room_1"
    romalign 0x1000
    include "build/baserom/spot04_room_1.o"
endseg

beginseg
    name "spot04_room_2"
    romalign 0x1000
    include "build/baserom/spot04_room_2.o"
endseg

beginseg
    name "spot05_scene"
    romalign 0x1000
    include "build/baserom/spot05_scene.o"
endseg

beginseg
    name "spot05_room_0"
    romalign 0x1000
    include "build/baserom/spot05_room_0.o"
endseg

beginseg
    name "spot06_scene"
    romalign 0x1000
    include "build/baserom/spot06_scene.o"
endseg

beginseg
    name "spot06_room_0"
    romalign 0x1000
    include "build/baserom/spot06_room_0.o"
endseg

beginseg
    name "spot07_scene"
    romalign 0x1000
    include "build/baserom/spot07_scene.o"
endseg

beginseg
    name "spot07_room_0"
    romalign 0x1000
    include "build/baserom/spot07_room_0.o"
endseg

beginseg
    name "spot07_room_1"
    romalign 0x1000
    include "build/baserom/spot07_room_1.o"
endseg

beginseg
    name "spot08_scene"
    romalign 0x1000
    include "build/baserom/spot08_scene.o"
endseg

beginseg
    name "spot08_room_0"
    romalign 0x1000
    include "build/baserom/spot08_room_0.o"
endseg

beginseg
    name "spot09_scene"
    romalign 0x1000
    include "build/baserom/spot09_scene.o"
endseg

beginseg
    name "spot09_room_0"
    romalign 0x1000
    include "build/baserom/spot09_room_0.o"
endseg

beginseg
    name "spot10_scene"
    romalign 0x1000
    include "build/baserom/spot10_scene.o"
endseg

beginseg
    name "spot10_room_0"
    romalign 0x1000
    include "build/baserom/spot10_room_0.o"
endseg

beginseg
    name "spot10_room_1"
    romalign 0x1000
    include "build/baserom/spot10_room_1.o"
endseg

beginseg
    name "spot10_room_2"
    romalign 0x1000
    include "build/baserom/spot10_room_2.o"
endseg

beginseg
    name "spot10_room_3"
    romalign 0x1000
    include "build/baserom/spot10_room_3.o"
endseg

beginseg
    name "spot10_room_4"
    romalign 0x1000
    include "build/baserom/spot10_room_4.o"
endseg

beginseg
    name "spot10_room_5"
    romalign 0x1000
    include "build/baserom/spot10_room_5.o"
endseg

beginseg
    name "spot10_room_6"
    romalign 0x1000
    include "build/baserom/spot10_room_6.o"
endseg

beginseg
    name "spot10_room_7"
    romalign 0x1000
    include "build/baserom/spot10_room_7.o"
endseg

beginseg
    name "spot10_room_8"
    romalign 0x1000
    include "build/baserom/spot10_room_8.o"
endseg

beginseg
    name "spot10_room_9"
    romalign 0x1000
    include "build/baserom/spot10_room_9.o"
endseg

beginseg
    name "spot11_scene"
    romalign 0x1000
    include "build/baserom/spot11_scene.o"
endseg

beginseg
    name "spot11_room_0"
    romalign 0x1000
    include "build/baserom/spot11_room_0.o"
endseg

beginseg
    name "spot12_scene"
    romalign 0x1000
    include "build/baserom/spot12_scene.o"
endseg

beginseg
    name "spot12_room_0"
    romalign 0x1000
    include "build/baserom/spot12_room_0.o"
endseg

beginseg
    name "spot12_room_1"
    romalign 0x1000
    include "build/baserom/spot12_room_1.o"
endseg

beginseg
    name "spot13_scene"
    romalign 0x1000
    include "build/baserom/spot13_scene.o"
endseg

beginseg
    name "spot13_room_0"
    romalign 0x1000
    include "build/baserom/spot13_room_0.o"
endseg

beginseg
    name "spot13_room_1"
    romalign 0x1000
    include "build/baserom/spot13_room_1.o"
endseg

beginseg
    name "spot15_scene"
    romalign 0x1000
    include "build/baserom/spot15_scene.o"
endseg

beginseg
    name "spot15_room_0"
    romalign 0x1000
    include "build/baserom/spot15_room_0.o"
endseg

beginseg
    name "spot16_scene"
    romalign 0x1000
    include "build/baserom/spot16_scene.o"
endseg

beginseg
    name "spot16_room_0"
    romalign 0x1000
    include "build/baserom/spot16_room_0.o"
endseg

beginseg
    name "spot17_scene"
    romalign 0x1000
    include "build/baserom/spot17_scene.o"
endseg

beginseg
    name "spot17_room_0"
    romalign 0x1000
    include "build/baserom/spot17_room_0.o"
endseg

beginseg
    name "spot17_room_1"
    romalign 0x1000
    include "build/baserom/spot17_room_1.o"
endseg

beginseg
    name "spot18_scene"
    romalign 0x1000
    include "build/baserom/spot18_scene.o"
endseg

beginseg
    name "spot18_room_0"
    romalign 0x1000
    include "build/baserom/spot18_room_0.o"
endseg

beginseg
    name "spot18_room_1"
    romalign 0x1000
    include "build/baserom/spot18_room_1.o"
endseg

beginseg
    name "spot18_room_2"
    romalign 0x1000
    include "build/baserom/spot18_room_2.o"
endseg

beginseg
    name "spot18_room_3"
    romalign 0x1000
    include "build/baserom/spot18_room_3.o"
endseg

beginseg
    name "market_day_scene"
    romalign 0x1000
    include "build/baserom/market_day_scene.o"
endseg

beginseg
    name "market_day_room_0"
    romalign 0x1000
    include "build/baserom/market_day_room_0.o"
endseg

beginseg
    name "market_night_scene"
    romalign 0x1000
    include "build/baserom/market_night_scene.o"
endseg

beginseg
    name "market_night_room_0"
    romalign 0x1000
    include "build/baserom/market_night_room_0.o"
endseg

beginseg
    name "testroom_scene"
    romalign 0x1000
    include "build/baserom/testroom_scene.o"
endseg

beginseg
    name "testroom_room_0"
    romalign 0x1000
    include "build/baserom/testroom_room_0.o"
endseg

beginseg
    name "testroom_room_1"
    romalign 0x1000
    include "build/baserom/testroom_room_1.o"
endseg

beginseg
    name "testroom_room_2"
    romalign 0x1000
    include "build/baserom/testroom_room_2.o"
endseg

beginseg
    name "testroom_room_3"
    romalign 0x1000
    include "build/baserom/testroom_room_3.o"
endseg

beginseg
    name "testroom_room_4"
    romalign 0x1000
    include "build/baserom/testroom_room_4.o"
endseg

beginseg
    name "kenjyanoma_scene"
    romalign 0x1000
    include "build/baserom/kenjyanoma_scene.o"
endseg

beginseg
    name "kenjyanoma_room_0"
    romalign 0x1000
    include "build/baserom/kenjyanoma_room_0.o"
endseg

beginseg
    name "tokinoma_scene"
    romalign 0x1000
    include "build/baserom/tokinoma_scene.o"
endseg

beginseg
    name "tokinoma_room_0"
    romalign 0x1000
    include "build/baserom/tokinoma_room_0.o"
endseg

beginseg
    name "tokinoma_room_1"
    romalign 0x1000
    include "build/baserom/tokinoma_room_1.o"
endseg

beginseg
    name "sutaru_scene"
    romalign 0x1000
    include "build/baserom/sutaru_scene.o"
endseg

beginseg
    name "sutaru_room_0"
    romalign 0x1000
    include "build/baserom/sutaru_room_0.o"
endseg

beginseg
    name "link_home_scene"
    romalign 0x1000
    include "build/baserom/link_home_scene.o"
endseg

beginseg
    name "link_home_room_0"
    romalign 0x1000
    include "build/baserom/link_home_room_0.o"
endseg

beginseg
    name "kokiri_shop_scene"
    romalign 0x1000
    include "build/baserom/kokiri_shop_scene.o"
endseg

beginseg
    name "kokiri_shop_room_0"
    romalign 0x1000
    include "build/baserom/kokiri_shop_room_0.o"
endseg

beginseg
    name "kokiri_home_scene"
    romalign 0x1000
    include "build/baserom/kokiri_home_scene.o"
endseg

beginseg
    name "kokiri_home_room_0"
    romalign 0x1000
    include "build/baserom/kokiri_home_room_0.o"
endseg

beginseg
    name "kakusiana_scene"
    romalign 0x1000
    include "build/baserom/kakusiana_scene.o"
endseg

beginseg
    name "kakusiana_room_0"
    romalign 0x1000
    include "build/baserom/kakusiana_room_0.o"
endseg

beginseg
    name "kakusiana_room_1"
    romalign 0x1000
    include "build/baserom/kakusiana_room_1.o"
endseg

beginseg
    name "kakusiana_room_2"
    romalign 0x1000
    include "build/baserom/kakusiana_room_2.o"
endseg

beginseg
    name "kakusiana_room_3"
    romalign 0x1000
    include "build/baserom/kakusiana_room_3.o"
endseg

beginseg
    name "kakusiana_room_4"
    romalign 0x1000
    include "build/baserom/kakusiana_room_4.o"
endseg

beginseg
    name "kakusiana_room_5"
    romalign 0x1000
    include "build/baserom/kakusiana_room_5.o"
endseg

beginseg
    name "kakusiana_room_6"
    romalign 0x1000
    include "build/baserom/kakusiana_room_6.o"
endseg

beginseg
    name "kakusiana_room_7"
    romalign 0x1000
    include "build/baserom/kakusiana_room_7.o"
endseg

beginseg
    name "kakusiana_room_8"
    romalign 0x1000
    include "build/baserom/kakusiana_room_8.o"
endseg

beginseg
    name "kakusiana_room_9"
    romalign 0x1000
    include "build/baserom/kakusiana_room_9.o"
endseg

beginseg
    name "kakusiana_room_10"
    romalign 0x1000
    include "build/baserom/kakusiana_room_10.o"
endseg

beginseg
    name "kakusiana_room_11"
    romalign 0x1000
    include "build/baserom/kakusiana_room_11.o"
endseg

beginseg
    name "kakusiana_room_12"
    romalign 0x1000
    include "build/baserom/kakusiana_room_12.o"
endseg

beginseg
    name "kakusiana_room_13"
    romalign 0x1000
    include "build/baserom/kakusiana_room_13.o"
endseg

beginseg
    name "entra_scene"
    romalign 0x1000
    include "build/baserom/entra_scene.o"
endseg

beginseg
    name "entra_room_0"
    romalign 0x1000
    include "build/baserom/entra_room_0.o"
endseg

beginseg
    name "moribossroom_scene"
    romalign 0x1000
    include "build/baserom/moribossroom_scene.o"
endseg

beginseg
    name "moribossroom_room_0"
    romalign 0x1000
    include "build/baserom/moribossroom_room_0.o"
endseg

beginseg
    name "moribossroom_room_1"
    romalign 0x1000
    include "build/baserom/moribossroom_room_1.o"
endseg

beginseg
    name "syatekijyou_scene"
    romalign 0x1000
    include "build/baserom/syatekijyou_scene.o"
endseg

beginseg
    name "syatekijyou_room_0"
    romalign 0x1000
    include "build/baserom/syatekijyou_room_0.o"
endseg

beginseg
    name "shop1_scene"
    romalign 0x1000
    include "build/baserom/shop1_scene.o"
endseg

beginseg
    name "shop1_room_0"
    romalign 0x1000
    include "build/baserom/shop1_room_0.o"
endseg

beginseg
    name "hairal_niwa_scene"
    romalign 0x1000
    include "build/baserom/hairal_niwa_scene.o"
endseg

beginseg
    name "hairal_niwa_room_0"
    romalign 0x1000
    include "build/baserom/hairal_niwa_room_0.o"
endseg

beginseg
    name "ganon_tou_scene"
    romalign 0x1000
    include "build/baserom/ganon_tou_scene.o"
endseg

beginseg
    name "ganon_tou_room_0"
    romalign 0x1000
    include "build/baserom/ganon_tou_room_0.o"
endseg

beginseg
    name "sasatest_scene"
    romalign 0x1000
    include "build/baserom/sasatest_scene.o"
endseg

beginseg
    name "sasatest_room_0"
    romalign 0x1000
    include "build/baserom/sasatest_room_0.o"
endseg

beginseg
    name "market_alley_scene"
    romalign 0x1000
    include "build/baserom/market_alley_scene.o"
endseg

beginseg
    name "market_alley_room_0"
    romalign 0x1000
    include "build/baserom/market_alley_room_0.o"
endseg

beginseg
    name "spot20_scene"
    romalign 0x1000
    include "build/baserom/spot20_scene.o"
endseg

beginseg
    name "spot20_room_0"
    romalign 0x1000
    include "build/baserom/spot20_room_0.o"
endseg

beginseg
    name "market_ruins_scene"
    romalign 0x1000
    include "build/baserom/market_ruins_scene.o"
endseg

beginseg
    name "market_ruins_room_0"
    romalign 0x1000
    include "build/baserom/market_ruins_room_0.o"
endseg

beginseg
    name "entra_n_scene"
    romalign 0x1000
    include "build/baserom/entra_n_scene.o"
endseg

beginseg
    name "entra_n_room_0"
    romalign 0x1000
    include "build/baserom/entra_n_room_0.o"
endseg

beginseg
    name "enrui_scene"
    romalign 0x1000
    include "build/baserom/enrui_scene.o"
endseg

beginseg
    name "enrui_room_0"
    romalign 0x1000
    include "build/baserom/enrui_room_0.o"
endseg

beginseg
    name "market_alley_n_scene"
    romalign 0x1000
    include "build/baserom/market_alley_n_scene.o"
endseg

beginseg
    name "market_alley_n_room_0"
    romalign 0x1000
    include "build/baserom/market_alley_n_room_0.o"
endseg

beginseg
    name "hiral_demo_scene"
    romalign 0x1000
    include "build/baserom/hiral_demo_scene.o"
endseg

beginseg
    name "hiral_demo_room_0"
    romalign 0x1000
    include "build/baserom/hiral_demo_room_0.o"
endseg

beginseg
    name "kokiri_home3_scene"
    romalign 0x1000
    include "build/baserom/kokiri_home3_scene.o"
endseg

beginseg
    name "kokiri_home3_room_0"
    romalign 0x1000
    include "build/baserom/kokiri_home3_room_0.o"
endseg

beginseg
    name "malon_stable_scene"
    romalign 0x1000
    include "build/baserom/malon_stable_scene.o"
endseg

beginseg
    name "malon_stable_room_0"
    romalign 0x1000
    include "build/baserom/malon_stable_room_0.o"
endseg

beginseg
    name "kakariko_scene"
    romalign 0x1000
    include "build/baserom/kakariko_scene.o"
endseg

beginseg
    name "kakariko_room_0"
    romalign 0x1000
    include "build/baserom/kakariko_room_0.o"
endseg

beginseg
    name "bdan_boss_scene"
    romalign 0x1000
    include "build/baserom/bdan_boss_scene.o"
endseg

beginseg
    name "bdan_boss_room_0"
    romalign 0x1000
    include "build/baserom/bdan_boss_room_0.o"
endseg

beginseg
    name "bdan_boss_room_1"
    romalign 0x1000
    include "build/baserom/bdan_boss_room_1.o"
endseg

beginseg
    name "FIRE_bs_scene"
    romalign 0x1000
    include "build/baserom/FIRE_bs_scene.o"
endseg

beginseg
    name "FIRE_bs_room_0"
    romalign 0x1000
    include "build/baserom/FIRE_bs_room_0.o"
endseg

beginseg
    name "FIRE_bs_room_1"
    romalign 0x1000
    include "build/baserom/FIRE_bs_room_1.o"
endseg

beginseg
    name "hut_scene"
    romalign 0x1000
    include "build/baserom/hut_scene.o"
endseg

beginseg
    name "hut_room_0"
    romalign 0x1000
    include "build/baserom/hut_room_0.o"
endseg

beginseg
    name "daiyousei_izumi_scene"
    romalign 0x1000
    include "build/baserom/daiyousei_izumi_scene.o"
endseg

beginseg
    name "daiyousei_izumi_room_0"
    romalign 0x1000
    include "build/baserom/daiyousei_izumi_room_0.o"
endseg

beginseg
    name "hakaana_scene"
    romalign 0x1000
    include "build/baserom/hakaana_scene.o"
endseg

beginseg
    name "hakaana_room_0"
    romalign 0x1000
    include "build/baserom/hakaana_room_0.o"
endseg

beginseg
    name "yousei_izumi_tate_scene"
    romalign 0x1000
    include "build/baserom/yousei_izumi_tate_scene.o"
endseg

beginseg
    name "yousei_izumi_tate_room_0"
    romalign 0x1000
    include "build/baserom/yousei_izumi_tate_room_0.o"
endseg

beginseg
    name "yousei_izumi_yoko_scene"
    romalign 0x1000
    include "build/baserom/yousei_izumi_yoko_scene.o"
endseg

beginseg
    name "yousei_izumi_yoko_room_0"
    romalign 0x1000
    include "build/baserom/yousei_izumi_yoko_room_0.o"
endseg

beginseg
    name "golon_scene"
    romalign 0x1000
    include "build/baserom/golon_scene.o"
endseg

beginseg
    name "golon_room_0"
    romalign 0x1000
    include "build/baserom/golon_room_0.o"
endseg

beginseg
    name "zoora_scene"
    romalign 0x1000
    include "build/baserom/zoora_scene.o"
endseg

beginseg
    name "zoora_room_0"
    romalign 0x1000
    include "build/baserom/zoora_room_0.o"
endseg

beginseg
    name "drag_scene"
    romalign 0x1000
    include "build/baserom/drag_scene.o"
endseg

beginseg
    name "drag_room_0"
    romalign 0x1000
    include "build/baserom/drag_room_0.o"
endseg

beginseg
    name "alley_shop_scene"
    romalign 0x1000
    include "build/baserom/alley_shop_scene.o"
endseg

beginseg
    name "alley_shop_room_0"
    romalign 0x1000
    include "build/baserom/alley_shop_room_0.o"
endseg

beginseg
    name "night_shop_scene"
    romalign 0x1000
    include "build/baserom/night_shop_scene.o"
endseg

beginseg
    name "night_shop_room_0"
    romalign 0x1000
    include "build/baserom/night_shop_room_0.o"
endseg

beginseg
    name "impa_scene"
    romalign 0x1000
    include "build/baserom/impa_scene.o"
endseg

beginseg
    name "impa_room_0"
    romalign 0x1000
    include "build/baserom/impa_room_0.o"
endseg

beginseg
    name "labo_scene"
    romalign 0x1000
    include "build/baserom/labo_scene.o"
endseg

beginseg
    name "labo_room_0"
    romalign 0x1000
    include "build/baserom/labo_room_0.o"
endseg

beginseg
    name "tent_scene"
    romalign 0x1000
    include "build/baserom/tent_scene.o"
endseg

beginseg
    name "tent_room_0"
    romalign 0x1000
    include "build/baserom/tent_room_0.o"
endseg

beginseg
    name "nakaniwa_scene"
    romalign 0x1000
    include "build/baserom/nakaniwa_scene.o"
endseg

beginseg
    name "nakaniwa_room_0"
    romalign 0x1000
    include "build/baserom/nakaniwa_room_0.o"
endseg

beginseg
    name "ddan_boss_scene"
    romalign 0x1000
    include "build/baserom/ddan_boss_scene.o"
endseg

beginseg
    name "ddan_boss_room_0"
    romalign 0x1000
    include "build/baserom/ddan_boss_room_0.o"
endseg

beginseg
    name "ddan_boss_room_1"
    romalign 0x1000
    include "build/baserom/ddan_boss_room_1.o"
endseg

beginseg
    name "ydan_boss_scene"
    romalign 0x1000
    include "build/baserom/ydan_boss_scene.o"
endseg

beginseg
    name "ydan_boss_room_0"
    romalign 0x1000
    include "build/baserom/ydan_boss_room_0.o"
endseg

beginseg
    name "ydan_boss_room_1"
    romalign 0x1000
    include "build/baserom/ydan_boss_room_1.o"
endseg

beginseg
    name "HAKAdan_bs_scene"
    romalign 0x1000
    include "build/baserom/HAKAdan_bs_scene.o"
endseg

beginseg
    name "HAKAdan_bs_room_0"
    romalign 0x1000
    include "build/baserom/HAKAdan_bs_room_0.o"
endseg

beginseg
    name "HAKAdan_bs_room_1"
    romalign 0x1000
    include "build/baserom/HAKAdan_bs_room_1.o"
endseg

beginseg
    name "MIZUsin_bs_scene"
    romalign 0x1000
    include "build/baserom/MIZUsin_bs_scene.o"
endseg

beginseg
    name "MIZUsin_bs_room_0"
    romalign 0x1000
    include "build/baserom/MIZUsin_bs_room_0.o"
endseg

beginseg
    name "MIZUsin_bs_room_1"
    romalign 0x1000
    include "build/baserom/MIZUsin_bs_room_1.o"
endseg

beginseg
    name "ganon_scene"
    romalign 0x1000
    include "build/baserom/ganon_scene.o"
endseg

beginseg
    name "ganon_room_0"
    romalign 0x1000
    include "build/baserom/ganon_room_0.o"
endseg

beginseg
    name "ganon_room_1"
    romalign 0x1000
    include "build/baserom/ganon_room_1.o"
endseg

beginseg
    name "ganon_room_2"
    romalign 0x1000
    include "build/baserom/ganon_room_2.o"
endseg

beginseg
    name "ganon_room_3"
    romalign 0x1000
    include "build/baserom/ganon_room_3.o"
endseg

beginseg
    name "ganon_room_4"
    romalign 0x1000
    include "build/baserom/ganon_room_4.o"
endseg

beginseg
    name "ganon_room_5"
    romalign 0x1000
    include "build/baserom/ganon_room_5.o"
endseg

beginseg
    name "ganon_room_6"
    romalign 0x1000
    include "build/baserom/ganon_room_6.o"
endseg

beginseg
    name "ganon_room_7"
    romalign 0x1000
    include "build/baserom/ganon_room_7.o"
endseg

beginseg
    name "ganon_room_8"
    romalign 0x1000
    include "build/baserom/ganon_room_8.o"
endseg

beginseg
    name "ganon_room_9"
    romalign 0x1000
    include "build/baserom/ganon_room_9.o"
endseg

beginseg
    name "ganon_boss_scene"
    romalign 0x1000
    include "build/baserom/ganon_boss_scene.o"
endseg

beginseg
    name "ganon_boss_room_0"
    romalign 0x1000
    include "build/baserom/ganon_boss_room_0.o"
endseg

beginseg
    name "jyasinboss_scene"
    romalign 0x1000
    include "build/baserom/jyasinboss_scene.o"
endseg

beginseg
    name "jyasinboss_room_0"
    romalign 0x1000
    include "build/baserom/jyasinboss_room_0.o"
endseg

beginseg
    name "jyasinboss_room_1"
    romalign 0x1000
    include "build/baserom/jyasinboss_room_1.o"
endseg

beginseg
    name "jyasinboss_room_2"
    romalign 0x1000
    include "build/baserom/jyasinboss_room_2.o"
endseg

beginseg
    name "jyasinboss_room_3"
    romalign 0x1000
    include "build/baserom/jyasinboss_room_3.o"
endseg

beginseg
    name "kokiri_home4_scene"
    romalign 0x1000
    include "build/baserom/kokiri_home4_scene.o"
endseg

beginseg
    name "kokiri_home4_room_0"
    romalign 0x1000
    include "build/baserom/kokiri_home4_room_0.o"
endseg

beginseg
    name "kokiri_home5_scene"
    romalign 0x1000
    include "build/baserom/kokiri_home5_scene.o"
endseg

beginseg
    name "kokiri_home5_room_0"
    romalign 0x1000
    include "build/baserom/kokiri_home5_room_0.o"
endseg

beginseg
    name "ganon_final_scene"
    romalign 0x1000
    include "build/baserom/ganon_final_scene.o"
endseg

beginseg
    name "ganon_final_room_0"
    romalign 0x1000
    include "build/baserom/ganon_final_room_0.o"
endseg

beginseg
    name "kakariko3_scene"
    romalign 0x1000
    include "build/baserom/kakariko3_scene.o"
endseg

beginseg
    name "kakariko3_room_0"
    romalign 0x1000
    include "build/baserom/kakariko3_room_0.o"
endseg

beginseg
    name "hairal_niwa2_scene"
    romalign 0x1000
    include "build/baserom/hairal_niwa2_scene.o"
endseg

beginseg
    name "hairal_niwa2_room_0"
    romalign 0x1000
    include "build/baserom/hairal_niwa2_room_0.o"
endseg

beginseg
    name "hakasitarelay_scene"
    romalign 0x1000
    include "build/baserom/hakasitarelay_scene.o"
endseg

beginseg
    name "hakasitarelay_room_0"
    romalign 0x1000
    include "build/baserom/hakasitarelay_room_0.o"
endseg

beginseg
    name "hakasitarelay_room_1"
    romalign 0x1000
    include "build/baserom/hakasitarelay_room_1.o"
endseg

beginseg
    name "hakasitarelay_room_2"
    romalign 0x1000
    include "build/baserom/hakasitarelay_room_2.o"
endseg

beginseg
    name "hakasitarelay_room_3"
    romalign 0x1000
    include "build/baserom/hakasitarelay_room_3.o"
endseg

beginseg
    name "hakasitarelay_room_4"
    romalign 0x1000
    include "build/baserom/hakasitarelay_room_4.o"
endseg

beginseg
    name "hakasitarelay_room_5"
    romalign 0x1000
    include "build/baserom/hakasitarelay_room_5.o"
endseg

beginseg
    name "hakasitarelay_room_6"
    romalign 0x1000
    include "build/baserom/hakasitarelay_room_6.o"
endseg

beginseg
    name "shrine_scene"
    romalign 0x1000
    include "build/baserom/shrine_scene.o"
endseg

beginseg
    name "shrine_room_0"
    romalign 0x1000
    include "build/baserom/shrine_room_0.o"
endseg

beginseg
    name "turibori_scene"
    romalign 0x1000
    include "build/baserom/turibori_scene.o"
endseg

beginseg
    name "turibori_room_0"
    romalign 0x1000
    include "build/baserom/turibori_room_0.o"
endseg

beginseg
    name "shrine_n_scene"
    romalign 0x1000
    include "build/baserom/shrine_n_scene.o"
endseg

beginseg
    name "shrine_n_room_0"
    romalign 0x1000
    include "build/baserom/shrine_n_room_0.o"
endseg

beginseg
    name "shrine_r_scene"
    romalign 0x1000
    include "build/baserom/shrine_r_scene.o"
endseg

beginseg
    name "shrine_r_room_0"
    romalign 0x1000
    include "build/baserom/shrine_r_room_0.o"
endseg

beginseg
    name "hakaana2_scene"
    romalign 0x1000
    include "build/baserom/hakaana2_scene.o"
endseg

beginseg
    name "hakaana2_room_0"
    romalign 0x1000
    include "build/baserom/hakaana2_room_0.o"
endseg

beginseg
    name "gerudoway_scene"
    romalign 0x1000
    include "build/baserom/gerudoway_scene.o"
endseg

beginseg
    name "gerudoway_room_0"
    romalign 0x1000
    include "build/baserom/gerudoway_room_0.o"
endseg

beginseg
    name "gerudoway_room_1"
    romalign 0x1000
    include "build/baserom/gerudoway_room_1.o"
endseg

beginseg
    name "gerudoway_room_2"
    romalign 0x1000
    include "build/baserom/gerudoway_room_2.o"
endseg

beginseg
    name "gerudoway_room_3"
    romalign 0x1000
    include "build/baserom/gerudoway_room_3.o"
endseg

beginseg
    name "gerudoway_room_4"
    romalign 0x1000
    include "build/baserom/gerudoway_room_4.o"
endseg

beginseg
    name "gerudoway_room_5"
    romalign 0x1000
    include "build/baserom/gerudoway_room_5.o"
endseg

beginseg
    name "hairal_niwa_n_scene"
    romalign 0x1000
    include "build/baserom/hairal_niwa_n_scene.o"
endseg

beginseg
    name "hairal_niwa_n_room_0"
    romalign 0x1000
    include "build/baserom/hairal_niwa_n_room_0.o"
endseg

beginseg
    name "bowling_scene"
    romalign 0x1000
    include "build/baserom/bowling_scene.o"
endseg

beginseg
    name "bowling_room_0"
    romalign 0x1000
    include "build/baserom/bowling_room_0.o"
endseg

beginseg
    name "hakaana_ouke_scene"
    romalign 0x1000
    include "build/baserom/hakaana_ouke_scene.o"
endseg

beginseg
    name "hakaana_ouke_room_0"
    romalign 0x1000
    include "build/baserom/hakaana_ouke_room_0.o"
endseg

beginseg
    name "hakaana_ouke_room_1"
    romalign 0x1000
    include "build/baserom/hakaana_ouke_room_1.o"
endseg

beginseg
    name "hakaana_ouke_room_2"
    romalign 0x1000
    include "build/baserom/hakaana_ouke_room_2.o"
endseg

beginseg
    name "hylia_labo_scene"
    romalign 0x1000
    include "build/baserom/hylia_labo_scene.o"
endseg

beginseg
    name "hylia_labo_room_0"
    romalign 0x1000
    include "build/baserom/hylia_labo_room_0.o"
endseg

beginseg
    name "souko_scene"
    romalign 0x1000
    include "build/baserom/souko_scene.o"
endseg

beginseg
    name "souko_room_0"
    romalign 0x1000
    include "build/baserom/souko_room_0.o"
endseg

beginseg
    name "souko_room_1"
    romalign 0x1000
    include "build/baserom/souko_room_1.o"
endseg

beginseg
    name "souko_room_2"
    romalign 0x1000
    include "build/baserom/souko_room_2.o"
endseg

beginseg
    name "miharigoya_scene"
    romalign 0x1000
    include "build/baserom/miharigoya_scene.o"
endseg

beginseg
    name "miharigoya_room_0"
    romalign 0x1000
    include "build/baserom/miharigoya_room_0.o"
endseg

beginseg
    name "mahouya_scene"
    romalign 0x1000
    include "build/baserom/mahouya_scene.o"
endseg

beginseg
    name "mahouya_room_0"
    romalign 0x1000
    include "build/baserom/mahouya_room_0.o"
endseg

beginseg
    name "takaraya_scene"
    romalign 0x1000
    include "build/baserom/takaraya_scene.o"
endseg

beginseg
    name "takaraya_room_0"
    romalign 0x1000
    include "build/baserom/takaraya_room_0.o"
endseg

beginseg
    name "takaraya_room_1"
    romalign 0x1000
    include "build/baserom/takaraya_room_1.o"
endseg

beginseg
    name "takaraya_room_2"
    romalign 0x1000
    include "build/baserom/takaraya_room_2.o"
endseg

beginseg
    name "takaraya_room_3"
    romalign 0x1000
    include "build/baserom/takaraya_room_3.o"
endseg

beginseg
    name "takaraya_room_4"
    romalign 0x1000
    include "build/baserom/takaraya_room_4.o"
endseg

beginseg
    name "takaraya_room_5"
    romalign 0x1000
    include "build/baserom/takaraya_room_5.o"
endseg

beginseg
    name "takaraya_room_6"
    romalign 0x1000
    include "build/baserom/takaraya_room_6.o"
endseg

beginseg
    name "ganon_sonogo_scene"
    romalign 0x1000
    include "build/baserom/ganon_sonogo_scene.o"
endseg

beginseg
    name "ganon_sonogo_room_0"
    romalign 0x1000
    include "build/baserom/ganon_sonogo_room_0.o"
endseg

beginseg
    name "ganon_sonogo_room_1"
    romalign 0x1000
    include "build/baserom/ganon_sonogo_room_1.o"
endseg

beginseg
    name "ganon_sonogo_room_2"
    romalign 0x1000
    include "build/baserom/ganon_sonogo_room_2.o"
endseg

beginseg
    name "ganon_sonogo_room_3"
    romalign 0x1000
    include "build/baserom/ganon_sonogo_room_3.o"
endseg

beginseg
    name "ganon_sonogo_room_4"
    romalign 0x1000
    include "build/baserom/ganon_sonogo_room_4.o"
endseg

beginseg
    name "ganon_demo_scene"
    romalign 0x1000
    include "build/baserom/ganon_demo_scene.o"
endseg

beginseg
    name "ganon_demo_room_0"
    romalign 0x1000
    include "build/baserom/ganon_demo_room_0.o"
endseg

beginseg
    name "besitu_scene"
    romalign 0x1000
    include "build/baserom/besitu_scene.o"
endseg

beginseg
    name "besitu_room_0"
    romalign 0x1000
    include "build/baserom/besitu_room_0.o"
endseg

beginseg
    name "face_shop_scene"
    romalign 0x1000
    include "build/baserom/face_shop_scene.o"
endseg

beginseg
    name "face_shop_room_0"
    romalign 0x1000
    include "build/baserom/face_shop_room_0.o"
endseg

beginseg
    name "kinsuta_scene"
    romalign 0x1000
    include "build/baserom/kinsuta_scene.o"
endseg

beginseg
    name "kinsuta_room_0"
    romalign 0x1000
    include "build/baserom/kinsuta_room_0.o"
endseg

beginseg
    name "ganontikasonogo_scene"
    romalign 0x1000
    include "build/baserom/ganontikasonogo_scene.o"
endseg

beginseg
    name "ganontikasonogo_room_0"
    romalign 0x1000
    include "build/baserom/ganontikasonogo_room_0.o"
endseg

beginseg
    name "ganontikasonogo_room_1"
    romalign 0x1000
    include "build/baserom/ganontikasonogo_room_1.o"
endseg

beginseg
    name "test01_scene"
    romalign 0x1000
    include "build/baserom/test01_scene.o"
endseg

beginseg
    name "test01_room_0"
    romalign 0x1000
    include "build/baserom/test01_room_0.o"
endseg

beginseg
    name "bump_texture_static"
    romalign 0x1000
    include "build/baserom/bump_texture_static.o"
endseg

beginseg
    name "anime_model_1_static"
    romalign 0x1000
    include "build/baserom/anime_model_1_static.o"
endseg

beginseg
    name "anime_model_2_static"
    romalign 0x1000
    include "build/baserom/anime_model_2_static.o"
endseg

beginseg
    name "anime_model_3_static"
    romalign 0x1000
    include "build/baserom/anime_model_3_static.o"
endseg

beginseg
    name "anime_model_4_static"
    romalign 0x1000
    include "build/baserom/anime_model_4_static.o"
endseg

beginseg
    name "anime_model_5_static"
    romalign 0x1000
    include "build/baserom/anime_model_5_static.o"
endseg

beginseg
    name "anime_model_6_static"
    romalign 0x1000
    include "build/baserom/anime_model_6_static.o"
endseg

beginseg
    name "anime_texture_1_static"
    romalign 0x1000
    include "build/baserom/anime_texture_1_static.o"
endseg

beginseg
    name "anime_texture_2_static"
    romalign 0x1000
    include "build/baserom/anime_texture_2_static.o"
endseg

beginseg
    name "anime_texture_3_static"
    romalign 0x1000
    include "build/baserom/anime_texture_3_static.o"
endseg

beginseg
    name "anime_texture_4_static"
    romalign 0x1000
    include "build/baserom/anime_texture_4_static.o"
endseg

beginseg
    name "anime_texture_5_static"
    romalign 0x1000
    include "build/baserom/anime_texture_5_static.o"
endseg

beginseg
    name "anime_texture_6_static"
    romalign 0x1000
    include "build/baserom/anime_texture_6_static.o"
endseg

beginseg
    name "softsprite_matrix_static"
    romalign 0x1000
    include "build/baserom/softsprite_matrix_static.o"
endseg
