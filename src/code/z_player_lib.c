#include <ultra64.h>
#include <global.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008E750.s")

UNK_TYPE func_8008E8DC(GlobalContext* globalCtx, Player* player)
{
    return (
            player->stateFlags1 & 0x20000080 ||
            player->action ||
            globalCtx->sceneLoadFlag == 0x14 ||
            player->stateFlags1 & 1 ||
            player->unk_692 & 0x80 ||
            gSaveContext.unk_13F0 &&
            func_8008F0D8(player, player->unk_154) >= 0
    );

}

UNK_TYPE func_8008E988(GlobalContext* globalCtx)
{
    Player* player = (Player*) globalCtx->actorCtx.actorList[ACTORTYPE_PLAYER].first;
    return func_8008E8DC(globalCtx, player) || player->unk_6AD == 4;
}

UNK_TYPE func_8008E9C4(Player* player)
{
    return player->stateFlags1 & 0x10;
}

UNK_TYPE func_8008E9D0(Player* player)
{
    return gSaveContext.link_age != 0 && player->unk_14E == 2;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008E9F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EA40.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EB2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EC04.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EC70.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008ECAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008ED9C.s")

void func_8008EDF0(Player* player)
{
    player->unk_664 = NULL;
    player->stateFlags2 &= ~0x2000;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EE08.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EEAC.s")

UNK_TYPE func_8008EF44(GlobalContext* globalCtx, UNK_TYPE arg1)
{
    globalCtx->unk_11E5C = (arg1 + 1);
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EF5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F034.s")

u8 func_8008F080(GlobalContext* globalCtx)
{
    Player* player = (Player*) globalCtx->actorCtx.actorList[ACTORTYPE_PLAYER].first;
    return player->unk_15F;
}

void func_8008F08C(GlobalContext* globalCtx)
{
    Player* player = (Player*) globalCtx->actorCtx.actorList[ACTORTYPE_PLAYER].first;
    player->unk_15F = 0;
}

UNK_TYPE func_8008F098(GlobalContext* globalCtx)
{
    Player* player = (Player*) globalCtx->actorCtx.actorList[ACTORTYPE_PLAYER].first;
    return player->unk_14E == 3;
}

UNK_TYPE func_8008F0AC(GlobalContext* globalCtx)
{
    Player* player = (Player*) globalCtx->actorCtx.actorList[ACTORTYPE_PLAYER].first;
    return player->unk_15D == 0xa && player->unk_14E == 3;
}

s32 func_8008F0D8(Player* player, UNK_TYPE arg1)
{
    s32 temp_v0 = arg1 - 0x15;
    if (temp_v0 >= 0 && temp_v0 < 6)
    {
        return temp_v0;
    }
    return -1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F104.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F128.s")

s32 func_8008F158(UNK_TYPE arg0)
{
    s32 temp_v0 = arg0 - 2;
    if (temp_v0 > 0 && temp_v0 < 6)
    {
        return temp_v0;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F180.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F1A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F1CC.s")

s32 func_8008F224(UNK_TYPE arg0, UNK_TYPE arg1)
{
    s32 temp_v0 = arg1 - 0x1e;
    if (temp_v0 >= 0 && temp_v0 < 0xd)
    {
        return temp_v0;
    }
    return -1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F250.s")

s32 func_8008F270(UNK_TYPE arg0, UNK_TYPE arg1)
{
    s32 temp_v0 = arg1 - 0x12;
    if (temp_v0 >= 0 && temp_v0 < 2)
    {
        return temp_v0;
    }
    return -1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F29C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F2BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F2F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F470.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F87C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008FCC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_800902F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090440.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090480.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090604.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_800906D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_800907E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_800909B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090AFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80091738.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80091880.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80091A24.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8009214C.s")

