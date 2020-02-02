#include <ultra64.h>
#include <global.h>
#include <vt.h>

u32 gCurrentRegion = 0;

//temporary
extern u8 D_801668C0[];

void Locale_Init()
{
    osEPiReadIo(gCartHandle, 0x38, &D_80014508);
    osEPiReadIo(gCartHandle, 0x3C, &D_8001450C);

    switch (D_8001450E)
    {
        case 'J': // "NTSC-U (North America)"
            gCurrentRegion = REGION_US;
            break;
        case 'E': // "NTSC-J (Japan)"
            gCurrentRegion = REGION_JP;
            break;
        case 'P': // "PAL (Europe)"
            gCurrentRegion = REGION_EU;
            break;
        default:
            osSyncPrintf(VT_COL(RED, WHITE));
            osSyncPrintf("z_locale_init: 日本用かアメリカ用か判別できません\n");
            func_80002E50("../z_locale.c", 0x76);
            osSyncPrintf(VT_RST);
            break;
    }

    osSyncPrintf("z_locale_init:日本用かアメリカ用か３コンで判断させる\n");
}

void Locale_ResetRegion()
{
    gCurrentRegion = REGION_NULL;
}

u32 func_80001F48()
{
    if (gCurrentRegion == REGION_NATIVE)
        return 0;

    //weird but matches, temporary
    if (*(u8*)((u32)D_801668C0 + 0x2A8) & 4)
        return 0;

    return 1;
}

u32 func_80001F8C()
{
    if (gCurrentRegion == REGION_NATIVE)
        return 0;

    //same as above
    if (*(u8*)((u32)D_801668C0 + 0x2A8) & 4)
        return 1;

    return 0;
}

// This function appears to be unused?
u32 Locale_IsRegionNative()
{
    return gCurrentRegion == REGION_NATIVE;
}
