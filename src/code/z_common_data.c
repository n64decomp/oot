#include <ultra64.h>
#include <global.h>

void func_80063640()
{
    bzero(&gSaveContext, sizeof(gSaveContext));
    D_8015FA88 = 0;
    D_8015FA8C = 0;
    gSaveContext.seq_index = 0xFF;
    gSaveContext.night_sfx = 0xFF;
    gSaveContext.disable_music_flag = 0;
    gSaveContext.unk_1412 = 0xFFEF;
    gSaveContext.cutscene_trigger = 0;
    gSaveContext.unk_1415 = 0;
    gSaveContext.unk_1416 = 0xFFFF;
    gSaveContext.environment_time = 0;
    gSaveContext.unk_141C = 1;
    gSaveContext.transition_type = 0xFF;
    gSaveContext.unk_13EE = 50;
}

