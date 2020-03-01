/*
 * File: z_en_boom.c
 * Overlay: ovl_En_Boom
 * Description: Thrown Boomerang. Actor spawns when thrown and is killed when caught.
*/

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct
{
    /* 0x0000 */ Actor      actor;
    /* 0x014C */ Collider   collider;
    /* 0x0164 */ char       unk_164[0x68];
    /* 0x01CC */ Actor*     moveTo;      //actor boomerang to moves toward
    /* 0x01D0 */ Actor*     grabbed;     //actor grabbed by the boomerang
    /* 0x01D4 */ u8         returnTimer; //returns to link when 0
    /* 0x01D5 */ u8         activeTimer; //incremenets once every update
    /* 0x01D6 */ char       pad_1D6[0x2];
    /* 0x01D8 */ u32        effect;      //set by Effect_Add
    /* 0x01DC */ u32        unk_1DC[0x7];
    /* 0x01F8 */ ActorFunc  updateFunc;
} EnBoom; // size = 0x01FC

#define ROOM  0x00
#define FLAGS 0x00000030

void EnBoom_SetNewUpdate(EnBoom* this, ActorFunc* newUpdateFunc);
void EnBoom_Init(EnBoom* this, GlobalContext* globalCtx);
void EnBoom_Destroy(EnBoom* this, GlobalContext* globalCtx);
void EnBoom_StateUpdate(EnBoom* this, GlobalContext* globalCtx);
void EnBoom_Update(EnBoom* this, GlobalContext* globalCtx);
void EnBoom_Draw(EnBoom* this, GlobalContext* globalCtx);

const ActorInit En_Boom_InitVars =
{
    ACTOR_EN_BOOM,
    ACTORTYPE_MISC,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnBoom),
    (ActorFunc)EnBoom_Init,
    (ActorFunc)EnBoom_Destroy,
    (ActorFunc)EnBoom_Update,
    (ActorFunc)EnBoom_Draw
};

//Related to collision, should be moved somewhere else when collision_check is decompiled.
//Seems to be made up of a bunch of substructs, but I didnt do too much digging.
//This is probably not accurate.
typedef struct
{
    u8  unk_00;
    u8  unk_01;
    u8  unk_02;
    u8  unk_03;
    u8  unk_04;
    u8  unk_05;
    u16 pad_06;
    u8  unk_08;
    u8  pad_09;
    u8  pad_0A;
    u8  pad_0B;
    u32 unk_0C;
    u8  unk_10;
    u8  unk_11;
    u16 pad_12;
    u32 unk_14;
    u8  unk_18;
    u8  unk_19;
    u16 pad_1A;
    u8  unk_1C;
    u8  unk_1D;
    u8  unk_1E;
    u8  pad_1F;
    u32 unk_20;
    u32 unk_24;
    u32 unk_28;
    u32 unk_2C;
    u32 unk_30;
    u32 unk_34;
    u32 unk_38;
    u32 unk_3C;
    u32 unk_40;
    u32 unk_44;
    u32 unk_48;
    u32 unk_4C;
} unkCollision; //size = 0x50

unkCollision col =
{
    0x0A, 0x09, 0x00, 0x00, 0x08, 0x03, 0x0000, 0x02, 0x00, 0x00, 0x00, 0x00000010,
    0x00, 0x01, 0x0000, 0xFFCFFFFF, 0x00, 0x00, 0x0000, 0x05, 0x00, 0x00, 0x00,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
};

InitChainEntry initChain[] =
{
    ICHAIN_S8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_VEC3S(shape.rot, 0, ICHAIN_STOP),
};

Vec3f data_78 = {-960.0f, 0.0f, 0.0f};
Vec3f data_84 = {960.0f, 0.0f, 0.0f};

extern D_0400C808;

void EnBoom_SetNewUpdate(EnBoom* this, ActorFunc* newUpdateFunc)
{
    this->updateFunc = newUpdateFunc;
}

void EnBoom_Init(EnBoom* this, GlobalContext* globalCtx)
{
    u32 pad;
    TrailEffect trail;

    this->actor.room = -1;

    Actor_ProcessInitChain(&this->actor, initChain);

    trail.p1Start.r = 0xFF;
    trail.p1Start.g = 0xFF;
    trail.p1Start.b = 0x64;
    trail.p1Start.a = 0xFF;

    trail.p2Start.r = 0xFF;
    trail.p2Start.g = 0xFF;
    trail.p2Start.b = 0x64;
    trail.p2Start.a = 0x40;

    trail.p1End.r = 0xFF;
    trail.p1End.g = 0xFF;
    trail.p1End.b = 0x64;
    trail.p1End.a = 0x00;

    trail.p2End.r = 0xFF;
    trail.p2End.g = 0xFF;
    trail.p2End.b = 0x64;
    trail.p2End.a = 0x00;

    trail.unk_194 = 0x00000008;
    trail.unk_198 = 0x00000000;
    trail.unk_19C = 0x00000000;

    Effect_Add(globalCtx, &this->effect, 1, 0, 0, &trail);

    func_8005D018(globalCtx, &this->collider);
    func_8005D104(globalCtx, &this->collider, this, &col);

    EnBoom_SetNewUpdate(this, &EnBoom_StateUpdate);
}

void EnBoom_Destroy(EnBoom* this, GlobalContext* globalCtx)
{
    func_8002709C(globalCtx, this->effect);
    func_8005D060(globalCtx, &this->collider);
}

//This function needs serious work, its not even functionally equivalent yet.
//Lost the motivation for now, but I'll be back to finish it if no one else takes it.
#ifdef NON_MATCHING
void EnBoom_StateUpdate(EnBoom* this, GlobalContext* globalCtx)
{
    Actor*  moveTo;
    Player* player;
    s16     yOffset;
    s16     tempYRot;
    s16     newYRot;
    s16     xOffset;
    s16     tempXRot;
    s16     newXRot;
    Vec3f*  targetPos;
    Vec3f*  rangPos;
    f32     dist;
    u32     colliderAnd2;
    u8      returnNext;
    u8      newReturnTimer;
    Actor*  grabbed;
    u32     flagsAnd2;
    CollisionContext* colCtx;
    UNK_TYPE sp58;
    UNK_TYPE sp4C;
    s32 unkBgCheck1;
    DynaPolyActor* dynaPolyActor;
    UNK_TYPE phi_v1;

    player = PLAYER;

    if (this->moveTo != 0)
    {
        targetPos = &this->moveTo->posRot2.pos;
        yOffset = func_8002DAC0(this, targetPos);
        tempYRot = this->actor.posRot.rot.y - yOffset;

        xOffset = func_8002DB28(this, targetPos);
        tempXRot = this->actor.posRot.rot.x - xOffset;

        dist = (200.0f - Math_Vec3f_DistXYZ(&this->actor.posRot.pos, targetPos) * 0.005f);
        if (dist < 0.12f)
        {
            dist = 0.12f;
        }

        if (this->moveTo != (Actor*)player)
        {
            if (this->moveTo->update != 0)
            {
                newYRot = -tempYRot;
                if (tempYRot >= 0)
                {
                    newYRot = tempYRot;
                }
                if (newYRot >= 0x4001)
                {
                    this->moveTo = 0;
                }
            }
        }

        newYRot = -tempYRot;
        if(tempYRot >= 0)
        {
            newYRot = tempYRot;
        }
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, yOffset, (s16)(newYRot * dist));

        newXRot = -tempXRot;
        if(tempXRot >= 0)
        {
            newXRot = tempXRot;
        }
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.x, xOffset, (s16)(newXRot * dist));
    }
    rangPos = &this->actor.posRot.pos;
    func_8002D9A4(this, 12.0f);
    Actor_MoveForward(this);
    func_8002F974(this, 0x1010); //TODO: sound fx enum?
    colliderAnd2 = (0 < (this->collider.colliderFlags & 2));
    if (colliderAnd2)
    {
        if (this->collider.at->id != ACTOR_EN_ITEM00)
        {
            if (this->collider.at->id == ACTOR_EN_SI)
            {
                this->grabbed = this->collider.at;

                if (this->collider.at->id == ACTOR_EN_SI)
                {
                    this->collider.at->flags = (this->collider.at->flags | 0x2000);
                }
            }
        }
    }

    returnNext = this->returnTimer - 1;
    if (this->returnTimer == 0)
    {
        newReturnTimer = 0;
    }
    else
    {
        this->returnTimer = returnNext;
        newReturnTimer = (returnNext & 0xFF);
    }

    if (newReturnTimer == 0)
    {
        this->moveTo = player;
        if (Math_Vec3f_DistXYZ(rangPos, &player->actor.posRot2.pos) < 40.0f)
        {
            if (this->grabbed != 0)
            {
                grabbed = this->grabbed;
                Math_Vec3f_Copy(&this->grabbed->posRot.pos, &player->actor.posRot.pos);
                if (this->grabbed->id == ACTOR_EN_ITEM00)
                {
                    this->grabbed->bgCheckFlags = (this->grabbed->bgCheckFlags & 0xFFFC);
                    this->grabbed->gravity = -0.9f;
                }
                else
                {
                    this->grabbed->flags = (this->grabbed->flags & 0xFFFFDFFF);
                }
                player->stateFlags1 = (player->stateFlags1 & 0xFDFFFFFF);
                Actor_Kill(this);
            }
        }
    }
    else
    {
        flagsAnd2 = ((this->collider.colliderFlags & 2) < 0);
        colCtx = &globalCtx->colCtx;
        if (flagsAnd2 != 0)
        {
            Math_Vec3f_Copy(rangPos, &this->actor.pos4);
        }
        else
        {
            unkBgCheck1 = func_8003DE84(colCtx, &this->actor.pos4, rangPos, &sp4C,
                                        &this->actor.wallPoly, 1, 1, 1, 1, &sp58);
            if (unkBgCheck1 != 0) //seems related to bouncing off walls
            {
                if (func_8002F9EC(globalCtx, this, this->actor.wallPoly, sp58, &sp4C) == 0)
                {
                    if (sp58 != 0x32)
                    {
                        dynaPolyActor = DynaPolyInfo_GetActor(colCtx, sp58);
                        if (dynaPolyActor->actor.id == ACTOR_BG_BDAN_OBJECTS)
                        {
                            if (dynaPolyActor->actor.params == 0)
                            {
                                phi_v1 = 0;
                            }
                            else
                            {
                                func_80062D60(globalCtx, &sp4C);
                                phi_v1 = unkBgCheck1;
                            }
                        }
                    }
                }
            }
        }
        if (phi_v1 != 0)
        {
            this->actor.posRot.rot.x = -this->actor.posRot.rot.x;
            this->actor.posRot.rot.y = this->actor.posRot.rot.y + 0x8000;
            this->returnTimer = 0;
            this->moveTo = player;
        }
    }

    if (this->grabbed != 0)
    {
        if (this->grabbed->update == 0)
        {
            this->grabbed = 0;
            return;
        }
        Math_Vec3f_Copy(&this->grabbed->posRot.pos, rangPos);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Boom/EnBoom_StateUpdate.s")
#endif

void EnBoom_Update(EnBoom* this, GlobalContext* globalCtx)
{
    Player* player = PLAYER;
    if (!(player->stateFlags1 & 0x20000000))
    {
        this->updateFunc(this, globalCtx);
        Actor_SetHeight(&this->actor, 0.0f);
        this->activeTimer = this->activeTimer + 1;
    }
}

void EnBoom_Draw(EnBoom* this, GlobalContext* globalCtx)
{
    s32 pad;
    Vec3f sp58;
    Vec3f sp4C;
    GraphicsContext* gfxCtx;
    Gfx* gfxArr[4];

    gfxCtx = globalCtx->gfxCtx;
    func_800C6AC4(gfxArr, globalCtx->gfxCtx, "../z_en_boom.c", 567);
    Matrix_RotateY(this->actor.posRot.rot.y * 0.0000958738f, 1);
    Matrix_RotateZ(0.7669904, 1);
    Matrix_RotateX(this->actor.posRot.rot.x * 0.0000958738f, 1);
    func_800D1AF4(&data_78, &sp58);
    func_800D1AF4(&data_84, &sp4C);

    if (func_80090480(globalCtx, &this->collider, &this->unk_1DC, &sp58, &sp4C) != 0)
    {
        func_8001FDF0(func_80026B0C(this->effect), &sp58, &sp4C);
    }

    func_80093D18(globalCtx->gfxCtx);
    Matrix_RotateY((this->activeTimer * 12000) * 0.0000958738f, 1);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->gfxCtx, "../z_en_boom.c", 601),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_0400C808);

    func_800C6B54(gfxArr, globalCtx->gfxCtx, "../z_en_boom.c", 604);
}
