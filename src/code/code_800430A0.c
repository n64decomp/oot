#include <ultra64.h>
#include <global.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800430A0/func_800430A0.s")

void func_800432A0(CollisionContext* colCtx, u32 floorPolySource, Actor* actor)
{
    if (func_8003E934(floorPolySource) != 0)
    {
        s16 v1 = colCtx->dyna.actorMeshArr[floorPolySource].rot2.y - colCtx->dyna.actorMeshArr[floorPolySource].rot1.y;

        if (actor->id == 0)
            ((Player*)actor)->unk_83C += v1;

        actor->sub_B4.rot2.y += v1;
        actor->posRot.rot.y += v1;
    }
}

void func_80043334(CollisionContext* colCtx, Actor* actor, u32 floorPolySource)
{
    if (func_8003E934(floorPolySource) != 0)
    {
        DynaPolyActor* dynaActor = DynaPolyInfo_GetActor(colCtx, floorPolySource);
        if (dynaActor != NULL)
        {
            func_800434A8(dynaActor);

            if ((actor->flags & 0x4000000) == 0x4000000)
                func_80043538(dynaActor);
        }
    }
}

s32 func_800433A4(CollisionContext* colCtx, u32 floorPolySource, Actor* actor)
{
    s32 sp24 = 0;
    DynaPolyActor* dynaActor;

    if (func_8003E934(floorPolySource) == 0)
        return 0;

    if ((colCtx->dyna.flags[floorPolySource] & 2) || !(colCtx->dyna.flags[floorPolySource] & 1))
        return 0;

    dynaActor = DynaPolyInfo_GetActor(colCtx, floorPolySource);

    if (dynaActor == NULL)
        return 0;

    if (dynaActor->unk_15C & 1)
    {
        func_800430A0(colCtx, floorPolySource, actor);
        sp24 = 1;
    }

    if (dynaActor->unk_15C & 2)
    {
        func_800432A0(colCtx, floorPolySource, actor);
        sp24 = 1;
    }

    return sp24;
}

void DynaPolyInfo_SetActorMove(DynaPolyActor* dynaActor, DynaPolyMoveFlag flags)
{
    dynaActor->dynaPolyId = -1;
    dynaActor->unk_15C = flags;
    dynaActor->unk_160 = 0;
    dynaActor->unk_150 = 0.0f;
    dynaActor->unk_154 = 0.0f;
}

void func_800434A0(DynaPolyActor *dynaActor)
{
    dynaActor->unk_160 = 0;
}

void func_800434A8(DynaPolyActor *dynaActor)
{
    dynaActor->unk_160 |= 1;
}

void func_800434B8(DynaPolyActor *dynaActor)
{
    dynaActor->unk_160 |= 2;
}

void func_800434C8(CollisionContext* colCtx, u32 floorPolySource)
{
    DynaPolyActor *dynaActor = DynaPolyInfo_GetActor(colCtx, floorPolySource);

    if (dynaActor != NULL)
        func_800434B8(dynaActor);
}

void func_800434F8(DynaPolyActor* dynaActor)
{
    dynaActor->unk_160 |= 4;
}

void func_80043508(CollisionContext* colCtx, u32 floorPolySource)
{
    DynaPolyActor *dynaActor = DynaPolyInfo_GetActor(colCtx, floorPolySource);

    if (dynaActor != NULL)
        func_800434F8(dynaActor);
}

void func_80043538(DynaPolyActor* dynaActor)
{
    dynaActor->unk_160 |= 8;
}

s32 func_80043548(DynaPolyActor* dynaActor)
{
    if (dynaActor->unk_160 & 1)
        return 1;
    else
        return 0;
}

s32 func_8004356C(DynaPolyActor* dynaActor)
{
    if (dynaActor->unk_160 & 2)
        return 1;
    else
        return 0;
}

s32 func_80043590(DynaPolyActor* dynaActor)
{
    if (dynaActor->unk_160 & 4)
        return 1;
    else
        return 0;
}

s32 func_800435B4(DynaPolyActor* dynaActor)
{
    if (dynaActor->unk_160 & 8)
        return 1;
    else
        return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800430A0/func_800435D8.s")
