#include <ultra64.h>
#include <global.h>

void func_80000A10(u32 arg0)
{
    if (arg0 != 0)
    {
        osSyncPrintf(D_8000B240, 1.0f);

        if (D_80000300 == 0)
            osViSetMode(&D_8000ACA0);

        osViSetYScale(1.0f);
    }
    else
    {
        osViSetMode(&D_80013910);

        if (D_80009438 != 0)
            func_80003270(D_80009438);

        if (D_8000943C != 0)
            osViSetSpecialFeatures(D_8000943C);

        if (D_80009440 != 1.0f)
            func_80009160(D_80009440);

        if (D_80009444 != 1.0f)
        {
            osSyncPrintf(D_8000B260, D_80009444);
            osViSetYScale(D_80009444);
        }
    }

    D_80009434 = arg0;
}

void func_80000B48()
{
    if (D_80009434 != 0)
        osViBlack(1);
    else
        osViBlack(0);
}
