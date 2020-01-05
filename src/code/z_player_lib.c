#include <ultra64.h>
#include <global.h>
#include <z64actor.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008E750.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008E8DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008E988.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008E9D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008E9F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EA40.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EB2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EC04.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008ECAC.s")

void func_8008EDF0(Player *arg0)
{
    arg0->unk_664 = 0;
    arg0->stateFlags2 = (s32) (arg0->stateFlags2 & -0x2001);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EE08.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F034.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F080.s")

s32 func_8008F0D8(s32 arg0, s32 arg1)
{
    s32 temp_v0;

    temp_v0 = arg1 - 21;
    if (temp_v0 >= 0 && temp_v0 < 6)
    {
        return temp_v0;
    }
    return -1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F104.s")

s32 func_8008F158(s32 arg0)
{
    s32 temp_v0;

    temp_v0 = arg0 - 2;
    if (temp_v0 > 0 && temp_v0 < 6)
    {
        return temp_v0;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F180.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F1A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F1CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F224.s")

s32 func_8008F270(s32 arg0, s32 arg1)
{
    s32 temp_v0;

    temp_v0 = arg1 - 18;
    if (temp_v0 >= 0 && temp_v0 < 2)
    {
        return temp_v0;
    }
    return -1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F29C.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090AFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80091880.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80091A24.s")

