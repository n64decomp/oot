/*
 * File: z_en_boom.c
 * Overlay: ovl_En_Boom
 * Description: Thrown Boomerang. Actor spawns when thrown and destoys when caught.
*/

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u8    unk_14C[0xAC];
    /* 0x01F8 */ u32*  currentFunc;
} ActorEnBoom; // size = 0x01FC

#define ROOM  0x00
#define FLAGS 0x00000030

static void func_809C8480(ActorEnBoom* this, ActorFunc* func);
static void Init(ActorEnBoom* this, GlobalContext* globalCtx);
static void Destroy(ActorEnBoom* this, GlobalContext* globalCtx);
static void func_809C85E0(ActorEnBoom* this, GlobalContext* globalCtx);
static void Update(ActorEnBoom* this, GlobalContext* globalCtx);
static void Draw(ActorEnBoom* this, GlobalContext* globalCtx);

const ActorInit En_Boom_InitVars =
{
    ACTOR_EN_BOOM,
    ACTORTYPE_MISC,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ActorEnBoom),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)Draw
};

static InitChainEntry initChain[] =
{
    ICHAIN_S8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_VEC3S(sub_B4.rot2, 0, ICHAIN_CONTINUE),
    ICHAIN_U32(flags, 0, ICHAIN_STOP)
};

static void func_809C8480(ActorEnBoom* this, ActorFunc* func)
{
    this->currentFunc = (ActorFunc)func;
}

static void Init(ActorEnBoom* this, GlobalContext* globalCtx)
{
    this->actor.room = -1;
    Actor_ProcessInitChain(&this->actor, initChain);
}

static void Destroy(ActorEnBoom* this, GlobalContext* globalCtx)
{

}

static void func_809C85E0(ActorEnBoom* this, GlobalContext* globalCtx)
{

}

static void Update(ActorEnBoom* this, GlobalContext* globalCtx)
{

}

static void Draw(ActorEnBoom* this, GlobalContext* globalCtx)
{

}
