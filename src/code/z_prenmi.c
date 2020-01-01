#include <ultra64.h>
#include <global.h>

void func_80092320(PreNMIContext* prenmiCtx)
{
    prenmiCtx->unk_98 = 0;
    prenmiCtx->unk_0C = 0;
    prenmiCtx->unk_10 = 0;
}

void PreNMI_Move(PreNMIContext* prenmiCtx)
{
    osSyncPrintf("\x1B[43;30mprenmi_move\n\x1B[m");

    // Strings existing only in rodata
    ("../z_prenmi.c");
    ("(int)volume = %d\n");

    if (prenmiCtx->timer == 0)
    {
        func_80000A10(1);
        func_80092320(prenmiCtx);
        return;
    }

    prenmiCtx->timer--;
}

void PreNMI_Draw(PreNMIContext* prenmiCtx)
{
    GraphicsContext* gfxCtx = prenmiCtx->gfxCtx;
    Gfx* gfxArr[5];

    osSyncPrintf("\x1B[43;30mprenmi_draw\n\x1B[m");

    func_800C6AC4(gfxArr, gfxCtx, "../z_prenmi.c", 96);

    gSPSegment(gfxCtx->polyOpa.p++, 0x00, NULL);
    func_80095248(gfxCtx, 0, 0, 0);
    func_800940B0(gfxCtx);
    gDPSetFillColor(gfxCtx->polyOpa.p++, -1);
    gDPFillRectangle(gfxCtx->polyOpa.p++, 0, prenmiCtx->timer + 100, 319, prenmiCtx->timer + 100);

    func_800C6B54(gfxArr, gfxCtx, "../z_prenmi.c", 112);
}

void PreNMI_Main(PreNMIContext* prenmiCtx)
{
    PreNMI_Move(prenmiCtx);
    PreNMI_Draw(prenmiCtx);

    prenmiCtx->unk_A0 = 1;
}

void PreNMI_Destroy(PreNMIContext* prenmiCtx)
{

}

void PreNMI_Init(PreNMIContext* prenmiCtx)
{
    prenmiCtx->main = PreNMI_Main;
    prenmiCtx->destroy = PreNMI_Destroy;
    prenmiCtx->timer = 30;
    prenmiCtx->unk_A8 = 10;

    gGameInfo->update_rate = 1;
}
