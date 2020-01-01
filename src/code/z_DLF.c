#include <ultra64.h>
#include <global.h>

#ifdef NON_MATCHING
// only missing a useless move instruction
void func_8002AF00(GameState* gameState)
{
    if (gameState->loadedRamAddr != NULL)
    {
        // Translates to: "ALREADY LINKED"
        osSyncPrintf("既にリンクされています\n");
        return;
    }

    if (gameState->vramStart == 0)
        gameState->unk_28 = 0;
    else
    {
        gameState->loadedRamAddr = func_800FC010(gameState->vromStart, gameState->vromEnd,
                                                 gameState->vramStart, gameState->vramEnd);

        if (gameState->loadedRamAddr == NULL)
        {
            // Translates to: "LOADING FAILED"
            osSyncPrintf("ロードに失敗しました\n");
            return;
        }

        osSyncPrintf("\x1B[32m");
        osSyncPrintf("OVL(a):Seg:%08x-%08x Ram:%08x-%08x Off:%08x %s\n",
                     gameState->vramStart, gameState->vramEnd,
                     (s32)gameState->loadedRamAddr,
                     (s32)gameState->loadedRamAddr + (s32)gameState->vramEnd - (s32)gameState->vramStart,
                     (s32)gameState->vramStart - (s32)gameState->loadedRamAddr,
                      "");
        osSyncPrintf("\x1B[m");

        if (gameState->unk_14 != NULL)
            gameState->unk_14 = (void*)((s32)gameState->unk_14 - (s32)(gameState->vramStart - (s32)gameState->loadedRamAddr));
        else
            gameState->unk_14 = NULL;

        if (gameState->init != NULL)
            gameState->init = (void*)((s32)gameState->init - (s32)(gameState->vramStart - (s32)gameState->loadedRamAddr));
        else
            gameState->init = NULL;

        if (gameState->destroy != NULL)
            gameState->destroy = (void*)((s32)gameState->destroy - (s32)(gameState->vramStart - (s32)gameState->loadedRamAddr));
        else
            gameState->destroy = NULL;

        if (gameState->unk_20 != NULL)
            gameState->unk_20 = (void*)((s32)gameState->unk_20 - (s32)(gameState->vramStart - (s32)gameState->loadedRamAddr));
        else
            gameState->unk_20 = NULL;

        if (gameState->unk_24 != NULL)
            gameState->unk_24 = (void*)((s32)gameState->unk_24 - (s32)(gameState->vramStart - (s32)gameState->loadedRamAddr));
        else
            gameState->unk_24 = NULL;

        gameState->unk_28 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_DLF/func_8002AF00.s")
#endif

void func_8002B0A8(GameState* gameState)
{
    if (gameState->loadedRamAddr != NULL)
    {
        s32 temp = gameState->unk_28 != 0 ? -1 : 0;

        if (temp == 0)
        {
            if (gameState->unk_14 != NULL)
                gameState->unk_14 = (void*)((s32)gameState->unk_14 + (s32)(gameState->vramStart - (s32)gameState->loadedRamAddr));
            else
                gameState->unk_14 = NULL;

            if (gameState->init != NULL)
                gameState->init = (void*)((s32)gameState->init + (s32)(gameState->vramStart - (s32)gameState->loadedRamAddr));
            else
                gameState->init = NULL;

            if (gameState->destroy != NULL)
                gameState->destroy = (void*)((s32)gameState->destroy + (s32)(gameState->vramStart - (s32)gameState->loadedRamAddr));
            else
                gameState->destroy = NULL;

            if (gameState->unk_20 != NULL)
                gameState->unk_20 = (void*)((s32)gameState->unk_20 + (s32)(gameState->vramStart - (s32)gameState->loadedRamAddr));
            else
                gameState->unk_20 = NULL;

            if (gameState->unk_24 != NULL)
                gameState->unk_24 = (void*)((s32)gameState->unk_24 + (s32)(gameState->vramStart - (s32)gameState->loadedRamAddr));
            else
                gameState->unk_24 = NULL;

            func_800FD7B4(gameState->loadedRamAddr, "../z_DLF.c", 149, gameState);
            gameState->loadedRamAddr = NULL;
        }
    }
}
