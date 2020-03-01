/*
 * File: z_opening.c
 * Overlay: ovl_opening
 * Description: Initializes the game into the title screen
*/

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ GraphicsContext* gfxCtx;
    /* 0x0004 */ void (*unk_4)(struct OpeningContext*);
    /* 0x0008 */ void (*unk_8)(struct OpeningContext*);
    /* 0x000C */ UNK_TYPE unk_C;
    /* 0x0010 */ UNK_TYPE unk_10;
    /* 0x0014 */ char UNK_14[0x84];
    /* 0x0098 */ UNK_TYPE unk_98;
    /* 0x009C */ char unk_9C[0xC];
    /* 0x00A8 */ View view;
} OpeningContext; // size = 0x1D0

static void func_80803BF0(OpeningContext* this)
{
    gSaveContext.game_mode = 1;
    this->unk_98 = 0;
    gSaveContext.link_age = 0;
    func_800A82C8();
    gSaveContext.cutscene_index = 0xFFF3;
    gSaveContext.scene_setup_index = 7;
    this->unk_C = func_800BCA64; this->unk_10 = 0x12518;
}

static void func_80803C5C(OpeningContext* this)
{

}

static void func_80803C64(OpeningContext* this)
{
    func_80095248(this->gfxCtx, 0, 0, 0);
    func_80803BF0(this);
    func_80803C5C(this);
}

static void func_80803CA4(OpeningContext* this)
{

}

void func_80803CAC(OpeningContext* this)
{
    R_UPDATE_RATE = 1;
    Matrix_Init(this);
    func_800AA278(&this->view, this->gfxCtx);
    this->unk_4 = func_80803C64;
    this->unk_8 = func_80803CA4;
}
