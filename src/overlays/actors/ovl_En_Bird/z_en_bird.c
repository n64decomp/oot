/*
 * File: z_en_bird.c
 * Overlay: ovl_En_Bird
 * Description: The projectile fired by deku scrubs and octaroks.
*/

#include <ultra64.h>
#include <ultra64/gbi.h>
#include <global.h>
#include <z64.h>

typedef struct
{
    /* 0x0000 */ Actor     actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ ActorFunc updateFunc;
    /* 0x0194 */ u32       unk_194;
    /* 0x0198 */ u32       unk_198;
    /* 0x019C */ s16       unk_19C;
    /* 0x019E */ s16       unk_19E;
    /* 0x01A0 */ f32       unk_1A0;
    /* 0x01A4 */ s32       unk_1A4;
    /* 0x01A8 */ f32       unk_1A8;
    /* 0x01AC */ f32       unk_1AC;
    /* 0x01B0 */ f32       unk_1B0;
    /* 0x01B4 */ f32       unk_1B4;
    /* 0x01B8 */ f32       unk_1B8;
    /* 0x01BC */ f32       unk_1BC;
    /* 0x01C0 */ s16       unk_1C0;
} ActorBird; // size = 0x01C2

#define ROOM  0x00
#define FLAGS 0x00000010

void Init(ActorBird* this, GlobalContext* globalCtx);
void Destroy(ActorBird* this, GlobalContext* globalCtx);
void Update(ActorBird* this, GlobalContext* globalCtx);
void Draw(ActorBird* this, GlobalContext* globalCtx);
void func_809C1E00(ActorBird* this, s16 params);
void func_809C1E40(ActorBird* this);
void func_809C1BB0(ActorBird* this, ActorFunc value);
void func_809C1D60(ActorBird* this);
void func_809C1CAC(ActorBird* this, s32 params);

const ActorInit En_Bird_InitVars =
{
    ACTOR_EN_BIRD,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ActorBird),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)Draw,
};

static InitChainEntry initChain[] =
{
    ICHAIN_F32(unk_4C, 5600, ICHAIN_STOP)
};

// MATCHING
void func_809C1BB0(ActorBird* this, ActorFunc value)
{
    this->updateFunc = value;
}

void Init(ActorBird* this, GlobalContext* globalCtx)
{
    Actor_ProcessInitChain(&this->actor, initChain);
    Actor_SetScale(&this->actor, 0.01);
    SkelAnime_Init(globalCtx, &this->skelAnime, 0x6002190, 0x600006C, 0, 0, 0);
    Actor_InitShadow(&this->actor.sub_B4, 5500, ActorShadow_DrawFunc_Circle, 4);
    this->unk_194 = 0;
    this->unk_198 = 0;
    this->unk_1C0 = 0x9C4;
    this->actor.sub_98.mass = 0;
    this->unk_1A8 = 1.5;
    this->unk_1AC = 0.5;
    this->unk_1A0 = 0;
    this->unk_1A4 = 0;
    this->unk_1B8 = 0;
    this->unk_1B0 = 40;
    this->unk_1BC = 70;
    func_809C1CAC(this, this->actor.params);
}

void Destroy(ActorBird* this, GlobalContext* globalCtx)
{

}

void func_809C1CAC(ActorBird* this, s32 params)
{
    s32 iVar1;
    u32 uVar2;
    f32 local_8;

    iVar1 = SkelAnime_GetFrameCount(0x0600006C);

    if (this->unk_19C == 0)
      local_8 = 1;
    else
      local_8 = 0;

    uVar2 = Math_Rand_S16Offset(5, 0x23);
    this->unk_198 = uVar2;
    Actor_ChangeAnimation(&this->skelAnime, 0x0600006C, local_8, 0, (f32)iVar1, 0, 0);
    func_809C1BB0(this, (ActorFunc)func_809C1D60);
}

void func_809C1D60(ActorBird* this)
{
    s32 iVar1;
    f32 fVar2;

    fVar2 = sinf(this->unk_1B4);
    this->actor.sub_B4.unk_08 = this->actor.sub_B4.unk_08 + fVar2 * this->unk_1A0;
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0, 0.1, 0.5, 0);

    if (this->unk_19C != 0)
    {
        this->skelAnime.animPlaybackSpeed = this->actor.speedXZ + this->actor.speedXZ;
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    iVar1 = this->unk_198 + -1;
    this->unk_198 = iVar1;

    if (iVar1 < 1)
    {
        func_809C1E00(this, this->actor.params);
    }
}

void func_809C1E00(ActorBird* this, s16 params)
{
    u32 uVar1;

    uVar1 = Math_Rand_S16Offset(0x14, 0x2D);
    this->unk_198 = uVar1;
    func_809C1BB0(this, (ActorFunc)func_809C1E40);
}

void func_809C1E40(ActorBird* this)
{
    short sVar1;
    u16 uVar2;
    s32 iVar3;
    f32 fVar4;

    fVar4 = sinf(this->unk_1B4);
    this->actor.sub_B4.unk_08 = this->actor.sub_B4.unk_08 + fVar4 * this->unk_1A0;
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, this->unk_1A8, 0.1, this->unk_1AC, 0);

    fVar4 = Math_Vec3f_DistXZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos);

    if ((this->unk_1B0 < fVar4) || (this->unk_198 < 4))
    {
        sVar1 = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
        func_80077B58(&this->actor.posRot.rot.x, (s32)sVar1, this->unk_1C0);
        uVar2 = this->actor.posRot.rot.x;
    }
    else
    {
        fVar4 = sinf(this->unk_1B4);
        this->actor.posRot.rot.y = this->actor.posRot.rot.y + (short)(s32)(fVar4 * this->unk_1A4);
        uVar2 = this->actor.posRot.rot.x;
    }

    this->actor.sub_B4.rot2.y = uVar2;
    SkelAnime_UpdateFrameMatrix(&this->skelAnime);
    iVar3 = this->unk_198 + -1;
    this->unk_198 = iVar3;

    if (iVar3 < 0)
    {
        func_809C1CAC(this, this->actor.params);
    }
}

void Update(ActorBird* this, GlobalContext* globalCtx)
{
    this->unk_1B4 += this->unk_1B8;
    this->updateFunc(this, globalCtx);
}

void Draw(ActorBird* this, GlobalContext* globalCtx)
{
    SkelAnime_Draw(globalCtx, this->skelAnime.limbCount, this->skelAnime.actorDrawTbl, 0, NULL, NULL);
}
