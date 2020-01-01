#include <ultra64.h>
#include <global.h>

void func_80001E60()
{
    func_80007760(D_80009450, 0x38, &D_80014508);
    func_80007760(D_80009450, 0x3C, &D_8001450C);

    switch (D_8001450E)
    {
        case 'J': // "NTSC-U (North America)"
            D_8000AC60 = 1;
            break;
        case 'E': // "NTSC-J (Japan)"
            D_8000AC60 = 2;
            break;
        case 'P': // "PAL (Europe)"
            D_8000AC60 = 3;
            break;
        default:
            osSyncPrintf(D_80011D20);
            osSyncPrintf(D_80011D2C);
            func_80002E50(D_80011D60, 0x76);
            osSyncPrintf(D_80011D70);
            break;
    }

    osSyncPrintf(D_80011D74);
}

void func_80001F3C()
{
    D_8000AC60 = 0;
}


#ifdef NON_MATCHING
u32 func_80001F48()
{
    if (D_8000AC60 == 3)
        return 0;

    if (D_80166B68 & 4)
        return 0;

    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/boot/z_locale/func_80001F48.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/boot/z_locale/func_80001F8C.s")

u32 func_80001FD0()
{
    return D_8000AC60 == 3;
}
