/*
 * File: z_en_nutsball.c
 * Overlay: ovl_En_Nutsball
 * Description: The projectile fired by deku scrubs and octaroks.
*/

#include <ultra64.h>
#include <ultra64/gbi.h>
#include <global.h>
#include <z64.h>

typedef struct
{
    /* 0x0000 */ Actor                actor;
    /* 0x014C */ ActorFunc            updateFunc;
    /* 0x0150 */ s8                   objBankIndex;
    /* 0x0151 */ s8                   unk_151;
    /* 0x0152 */ s16                  someTimer;
    /* 0x0154 */ ColliderCylinderMain cylinderCollider;
} ActorNutsball; // size = 0x01A0

#define ROOM 0x00
#define FLAGS 0x00000010

void Init(ActorNutsball* this, GlobalContext* globalCtx);
void Destroy(ActorNutsball* this, GlobalContext* globalCtx);
void Update(ActorNutsball* this, GlobalContext* globalCtx);
void UpdateFunc_80ABBB34(ActorNutsball* this, GlobalContext* globalCtx);
void UpdateFunc_80ABBBA8(ActorNutsball* this, GlobalContext* globalCtx);
void DrawFunc_80ABBE90(ActorNutsball* this, GlobalContext* globalCtx);

const ActorInit En_NutsBall_InitVars =
{
    ACTOR_EN_NUTSBALL,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ActorNutsball),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)NULL,
};

static ColliderCylinderInit cylinderInitData =
{
        { 0xa, 0x11, 0x9, 0x39,
    0x20, 0x1, { 0x0, 0x0 },
    0x0, { 0x0, 0x0, 0x0 },
    0xffcfffff,
    0x0, 0x8, { 0x0, 0x0} ,
    0xffcfffff,
    { 0x0, 0x0, 0x0, 0x0 },
    0x11, 0x1, 0x1, 0x0, },
    0xd,
    0xd,
    0x0,
    { 0x0, 0x0, 0x0 }
};

static s16 objectTbl[] = { 0x004A, 0x0164, 0x0168, 0x0171, 0x0172, 0x0000 };
static u32 dListTbl[] = { 0x06002028, 0x060012F0, 0x06004008, 0x06002410, 0x06001890, 0x00000000 };

// MATCHING
void Init(ActorNutsball* this, GlobalContext* globalCtx)
{
    s8 uVar1;

    Actor_InitShadow(&this->actor.sub_B4, 400, ActorShadow_DrawFunc_Circle, 13.0f);
    ActorCollider_AllocCylinder(globalCtx, &this->cylinderCollider);
    ActorCollider_InitCylinder(globalCtx, &this->cylinderCollider, &this->actor, &cylinderInitData);
    uVar1 = Object_GetIndex(&globalCtx->objectCtx, objectTbl[this->actor.params]);
    this->objBankIndex = uVar1;

    if (this->objBankIndex < 0)
        Actor_Kill(&this->actor);
    else
        this->updateFunc = (ActorFunc)UpdateFunc_80ABBB34;
}

// MATCHING
void Destroy(ActorNutsball* this, GlobalContext* globalCtx)
{
    ActorNutsball* nutsball = this;
    ActorCollider_FreeCylinder(globalCtx, &nutsball->cylinderCollider);
}

// MATCHING
void UpdateFunc_80ABBB34(ActorNutsball* this, GlobalContext* globalCtx)
{
  int iVar1;

  iVar1 = Object_IsLoaded(&globalCtx->objectCtx, this->objBankIndex);

  if (iVar1 != 0)
  {
    this->actor.objBankIndex = this->objBankIndex;
    this->actor.draw = (ActorFunc)DrawFunc_80ABBE90;
    this->actor.sub_B4.rot2.y = 0;
    this->someTimer = 0x1E;
    this->updateFunc = (ActorFunc)UpdateFunc_80ABBBA8;
    this->actor.speedXZ = 10;
  }
}

// NON-MATCHING - REG ALLOC AND STACK
void UpdateFunc_80ABBBA8(ActorNutsball* this, GlobalContext* globalCtx)
{
    u8 bVar1;
    s8 cVar3;
    Player* player;
    Vec3f vector;
    s16 auStack12;

    player = (Player*)globalCtx->actorCtx.actorList[ACTORTYPE_PLAYER].first;

    this->someTimer--;

    if (!this->someTimer)
        this->actor.gravity = -1;

    this->actor.initPosRot.rot.z += 0x2AA8;

    if ((this->actor.bgCheckFlags & 8) == 0 && (this->actor.bgCheckFlags & 1) == 0)
    {
        if ((this->cylinderCollider.base.colliderFlags & 2) == 0 && (this->cylinderCollider.base.collideFlags & 2) == 0)
        {
            if ((this->cylinderCollider.base.maskA & 2) != 0)
            {
                // Probably checking if the player is shielding, and if so reflecting the projectile
                // Needs further investigation...
                cVar3 = player->unk_14E;

                switch (cVar3)
                {
                case 2:
                    if (gSaveContext.link_age != 0)
                    break;
                case 1:
                    bVar1 = this->cylinderCollider.base.colliderFlags;

                    if ((((bVar1 & 2) != 0) && ((bVar1 & 0x10) != 0)) && ((bVar1 & 4) != 0))
                    {
                        this->cylinderCollider.base.colliderFlags &= 0xFFE9;
                        this->cylinderCollider.base.colliderFlags |= 8;

                        this->cylinderCollider.body.toucher.flags = 2;
                        func_800D20CC((u32)player + 0xA20, &auStack12, 0);
                        this->actor.posRot.rot.x += 0x8000;
                        this->someTimer = 0x1E;
                        return;
                    }
                }

                vector.x = this->actor.posRot.pos.x;
                vector.y = this->actor.posRot.pos.y + 4;
                vector.z = this->actor.posRot.pos.z;

                func_800297A4(globalCtx, &vector, 6, 0, 7, 3, 0x0F, 0xFFFFFFFF, 10, 0);
                Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x14, 0x38C0);
                Actor_Kill(&this->actor);
            }
            else
            {
                if (this->someTimer == -300)
                    Actor_Kill(&this->actor);
            }
        }
    }
}

// MATCHING
void Update(ActorNutsball* this, GlobalContext* globalCtx)
{
    SubGlobalContext11E60* sub_11E60;
    ActorNutsball* nutsball;
    Player* player;

    nutsball = this;
    player = (Player*)globalCtx->actorCtx.actorList[ACTORTYPE_PLAYER].first;

    if ((player->stateFlags1 & 0x300000C0) != 0 && nutsball->updateFunc != (ActorFunc)UpdateFunc_80ABBB34)
        ; // Nintendo why
    else
    {
        nutsball->updateFunc(&nutsball->actor, globalCtx);

        Actor_MoveForward(&nutsball->actor);
        func_8002E4B4(globalCtx, &nutsball->actor, 10, cylinderInitData.radius, cylinderInitData.height, 5);
        ActorCollider_Cylinder_Update(&nutsball->actor, &nutsball->cylinderCollider);

        nutsball->actor.flags |= 0x1000000;
        sub_11E60 = &globalCtx->sub_11E60;

        Actor_CollisionCheck_SetAT(globalCtx, sub_11E60, &nutsball->cylinderCollider);
        Actor_CollisionCheck_SetAC(globalCtx, sub_11E60, &nutsball->cylinderCollider);
        Actor_CollisionCheck_SetOT(globalCtx, sub_11E60, &nutsball->cylinderCollider);
    }
}

// NON-MATCHING
// This one is going to be a pain
void DrawFunc_80ABBE90(ActorNutsball* this, GlobalContext* globalCtx)
{
    GraphicsContext* gfxCtx;
    Gfx* gfxArr[6];

    gfxCtx = globalCtx->gfxCtx;

    func_800C6AC4(gfxArr, globalCtx->gfxCtx, "../z_en_nutsball.c", 327);

    func_80093D18(globalCtx->gfxCtx);
    func_800D0930(&globalCtx->mf_11DA0, 1);
    func_800D0ED4(this->actor.initPosRot.rot.z * 9.58738e-05f, 1);

    gSPMatrix(gfxCtx->polyOpa.p++, func_800D1A88(globalCtx->gfxCtx, "../z_en_nutsball.c", 333), G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, dListTbl[this->actor.params]);

    func_800C6B54(gfxArr, globalCtx->gfxCtx, "../z_en_nutsball.c", 337);
}
