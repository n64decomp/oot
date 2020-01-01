#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x00 */ s16 drawType; // indicates which draw function to use when displaying the object
    /* 0x04 */ u32 drawArg; // segment address (display list or texture) passed to the draw funciton when called
} DebugDispObjectInfo; // size = 0x8

typedef void (*DebugDispObject_DrawFunc)(DebugDispObject*, u32, GlobalContext*);

static void func_80064030(DebugDispObject* dispObj, u32 texture, GlobalContext* globalCtx);
static void func_80064254(DebugDispObject* dispObj, u32 dlist, GlobalContext* globalCtx);

static DebugDispObject_DrawFunc sDebugObjectDrawFuncTable[] =
{
    func_80064030,
    func_80064254,
};

static DebugDispObjectInfo sDebugObjectInfoTable[] =
{
    { 0, 0x040035F0 }, // Circle
    { 0, 0x040038F0 }, // Cross
    { 0, 0x040036F0 }, // Ball
    { 0, 0x040037F0 }, // Cursor
    { 1, 0x040039F0 }, // Arrow
    { 1, 0x04003C90 }, // Camera
};

static Lights1 sDebugObjectLights = gdSPDefLights1(0x80, 0x80, 0x80, 0xFF, 0xFF, 0xFF, 0x49, 0x49, 0x49);

static DebugDispObject* sDebugObjectListHead;

void DebugDisplay_ClearList(void)
{
    sDebugObjectListHead = NULL;
}

DebugDispObject* DebugDisplay_AddObject(f32 posX, f32 posY, f32 posZ, s16 rotX, s16 rotY, s16 rotZ,
                                        f32 scaleX, f32 scaleY, f32 scaleZ, u8 red, u8 green, u8 blue, u8 alpha,
                                        s16 type, GraphicsContext* gfxCtx)
{
    DebugDispObject* prevHead = sDebugObjectListHead;

    sDebugObjectListHead = Graph_Alloc(gfxCtx, sizeof(DebugDispObject));

    sDebugObjectListHead->pos.x = posX;
    sDebugObjectListHead->pos.y = posY;
    sDebugObjectListHead->pos.z = posZ;
    sDebugObjectListHead->rot.x = rotX;
    sDebugObjectListHead->rot.y = rotY;
    sDebugObjectListHead->rot.z = rotZ;
    sDebugObjectListHead->scale.x = scaleX;
    sDebugObjectListHead->scale.y = scaleY;
    sDebugObjectListHead->scale.z = scaleZ;
    sDebugObjectListHead->color.r = red;
    sDebugObjectListHead->color.g = green;
    sDebugObjectListHead->color.b = blue;
    sDebugObjectListHead->color.a = alpha;
    sDebugObjectListHead->type = type;
    sDebugObjectListHead->next = prevHead;

    return sDebugObjectListHead;
}

void DebugDisplay_DrawObjects(GlobalContext* globalCtx)
{
    DebugDispObject* dispObj = sDebugObjectListHead;
    DebugDispObjectInfo* objInfo;

    while (dispObj != NULL)
    {
        objInfo = &sDebugObjectInfoTable[dispObj->type];
        sDebugObjectDrawFuncTable[objInfo->drawType](dispObj, objInfo->drawArg, globalCtx);
        dispObj = dispObj->next;
    }
}

static void func_80064030(DebugDispObject* dispObj, u32 texture, GlobalContext* globalCtx)
{
    GraphicsContext* gfxCtx = globalCtx->gfxCtx;
    Gfx* gfxArr[4];

    func_800C6AC4(gfxArr, globalCtx->gfxCtx, "../z_debug_display.c", 169);

    func_80094678(globalCtx->gfxCtx);

    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, dispObj->color.r, dispObj->color.g, dispObj->color.b, dispObj->color.a);

    func_800D0984(dispObj->pos.x, dispObj->pos.y, dispObj->pos.z, 0);
    func_800D0A8C(dispObj->scale.x, dispObj->scale.y, dispObj->scale.z, 1);
    func_800D0930(&globalCtx->mf_11DA0, 1);
    func_800D1084(dispObj->rot.x, dispObj->rot.y, dispObj->rot.z, 1);

    gDPLoadTextureBlock(gfxCtx->polyXlu.p++,
                        texture,
                        G_IM_FMT_I,
                        G_IM_SIZ_8b,
                        16, 16,
                        0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMASK, G_TX_NOMASK,
                        G_TX_NOLOD, G_TX_NOLOD);

    gSPMatrix(gfxCtx->polyXlu.p++, func_800D1A88(globalCtx->gfxCtx, "../z_debug_display.c", 189), G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, &D_04004298);

    func_800C6B54(gfxArr, globalCtx->gfxCtx, "../z_debug_display.c", 192);
}

static void func_80064254(DebugDispObject* dispObj, u32 dlist, GlobalContext* globalCtx)
{
    GraphicsContext* gfxCtx = globalCtx->gfxCtx;
    Gfx* gfxArr[4];

    func_800C6AC4(gfxArr, globalCtx->gfxCtx, "../z_debug_display.c", 211);
    func_8009435C(globalCtx->gfxCtx);

    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, dispObj->color.r, dispObj->color.g, dispObj->color.b, dispObj->color.a);

    gSPSetLights1(gfxCtx->polyXlu.p++, sDebugObjectLights);

    func_800D1694(dispObj->pos.x, dispObj->pos.y, dispObj->pos.z, &dispObj->rot);
    func_800D0A8C(dispObj->scale.x, dispObj->scale.y, dispObj->scale.z, 1);

    gSPMatrix(gfxCtx->polyXlu.p++, func_800D1A88(globalCtx->gfxCtx, "../z_debug_display.c", 228), G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, dlist);

    func_800C6B54(gfxArr, globalCtx->gfxCtx, "../z_debug_display.c", 231);
}
