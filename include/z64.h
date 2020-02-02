#ifndef _Z64_H_
#define _Z64_H_

#include <ultra64.h>
#include <ultra64/gbi.h>
#include <ultra64/gs2dex.h>
#include <z64light.h>
#include <z64actor.h>
#include <z64object.h>
#include <z64cutscene.h>
#include <z64scene.h>
#include <bgm.h>
#include <sfx.h>
#include <color.h>
#include <ichain.h>
#include <stdarg.h>

#define SCREEN_WIDTH  320
#define SCREEN_HEIGHT 240

#define REGION_NULL 0
#define REGION_US 1
#define REGION_JP 2
#define REGION_EU 3

// NOTE: Once we start supporting other builds, this can be changed with an ifdef
#define REGION_NATIVE REGION_EU

// Game Info aka. Static Context (dbg ram start: 80210A10) note: this is copied from gz. adjust for accuracy.
typedef struct
{
    /* 0x0000 */ char   unk_00[0x006E];
    /* 0x006E */ s16    run_speed_limit;
    /* 0x0070 */ char   unk_70[0x0004];
    /* 0x0074 */ s16    run_speed_max_anim;
    /* 0x0076 */ char   unk_76[0x0026];
    /* 0x009C */ s16    gravity;
    /* 0x009E */ char   unk_9E[0x0068];
    /* 0x0106 */ s16    unk_106;
    /* 0x0108 */ s16    unk_108;
    /* 0x010A */ char   unk_10A[0x0006];
    /* 0x0110 */ s16    update_rate;
    /* 0x0112 */ char   unk_112[0x0022];
    /* 0x0134 */ s16    override_aspect;
    /* 0x0136 */ u16    aspect_width;
    /* 0x0138 */ u16    aspect_height;
    /* 0x013A */ char   unk_13A[0x0050];
    /* 0x018A */ s16    game_playing;
    /* 0x018C */ char   unk_18C[0x0004];
    /* 0x0190 */ s16    screenshot_state;
    /* 0x0192 */ char   unk_192[0x0006];
    /* 0x0198 */ Vec3s  unk_198;
    /* 0x019E */ s16    unk_19E;
    /* 0x01A0 */ Vec3s  unk_1A0;
    /* 0x01A6 */ s16    unk_1A6;
    /* 0x01A8 */ char   unk_1A8[0x001E];
    /* 0x01C6 */ s16    unk_1C6;
    /* 0x01C8 */ s16    unk_1C8; // unknown if used
    /* 0x01CA */ s16    unk_1CA;
    /* 0x01CC */ s16    unk_1CC; // unknown if used
    /* 0x01CE */ s16    unk_1CE;
    /* 0x01D0 */ s16    unk_1D0;
    /* 0x01D2 */ s16    unk_1D2; // unknown if used
    /* 0x01D4 */ s16    unk_1D4;
    /* 0x01D6 */ s16    unk_1D6;
    /* 0x01D8 */ char   unk_1D8[0x000E];
    /* 0x01E6 */ s16    unk_1E6;
    /* 0x01E8 */ s16    unk_1E8;
    /* 0x01EA */ s16    unk_1EA;
    /* 0x01EC */ char   unk_1EC[0x0008];
    /* 0x01F4 */ s16    unk_1F4;
    /* 0x01F6 */ char   unk_1F6[0x00F4];
    /* 0x02EA */ s16    unk_2EA;
    /* 0x02EC */ s16    unk_2EC;
    /* 0x02EC */ s16    unk_2EE; // unknown if used
    /* 0x02F0 */ char   unk_2F0[0x0008];
    /* 0x02F8 */ s16    unk_2F8;
    /* 0x02FA */ char   unk_2FA[0x001A];
    /* 0x0314 */ s16    unk_314;
    /* 0x0316 */ s16    unk_316; // unknown if used
    /* 0x0318 */ s16    unk_318;
    /* 0x031A */ char   unk_31A[0x000E];
    /* 0x0328 */ s16    unk_328;
    /* 0x032A */ s16    unk_32A;
    /* 0x032C */ s16    unk_32C;
    /* 0x032E */ char   unk_32E[0x000E];
    /* 0x033C */ s16    unk_33C;
    /* 0x033E */ s16    unk_33E;
    /* 0x0340 */ s16    unk_340;
    /* 0x0342 */ s16    unk_342;
    /* 0x0344 */ s16    unk_344;
    /* 0x0346 */ s16    unk_346;
    /* 0x0348 */ s16    unk_348;
    /* 0x034A */ s16    unk_34A;
    /* 0x034C */ s16    unk_34C;
    /* 0x034E */ s16    unk_34E;
    /* 0x0350 */ s16    unk_350;
    /* 0x0352 */ s16    unk_352;
    /* 0x0354 */ s16    unk_354;
    /* 0x0356 */ s16    unk_356;
    /* 0x0358 */ char   unk_358[0x0020];
    /* 0x0378 */ s16    unk_378;
    /* 0x037A */ s16    unk_37A;
    /* 0x037C */ s16    unk_37C;
    /* 0x037E */ s16    unk_37E;
    /* 0x0380 */ s16    unk_380;
    /* 0x0382 */ s16    unk_382;
    /* 0x0384 */ s16    unk_384;
    /* 0x0386 */ s16    unk_386;
    /* 0x0388 */ s16    unk_388;
    /* 0x038A */ char   unk_38A[0x000C];
    /* 0x0396 */ s16    unk_396;
    /* 0x0398 */ char   unk_398[0x002E];
    /* 0x03C6 */ s16    unk_3C6;
    /* 0x03C8 */ char   unk_3C8[0x00EA];
    /* 0x04B2 */ s16    unk_4B2;
    /* 0x04B4 */ char   unk_4B4[0x0090];
    /* 0x0544 */ u16    c_up_icon_x;
    /* 0x0546 */ u16    c_up_icon_y;
    /* 0x0548 */ char   unk_548[0x000E];
    /* 0x0556 */ s16    unk_556;
    /* 0x0558 */ char   unk_558[0x01BC];
    /* 0x0714 */ s16    unk_714;
    /* 0x0716 */ char   unk_716[0x004E];
    /* 0x0764 */ u16    game_freeze;
    /* 0x0766 */ char   unk_766[0x002E];
    /* 0x0794 */ u16    magic_fill_r;
    /* 0x0796 */ u16    magic_fill_g;
    /* 0x0798 */ u16    magic_fill_b;
    /* 0x079A */ char   unk_79A[0x004A];
    /* 0x07E4 */ u16    c_button_r;
    /* 0x07E6 */ u16    c_button_g;
    /* 0x07E8 */ u16    c_button_b;
    /* 0x07EA */ u16    b_button_r;
    /* 0x07EC */ u16    b_button_g;
    /* 0x07EE */ u16    b_button_b;
    /* 0x07F0 */ char   unk_7F0[0x0004];
    /* 0x07F4 */ s16    start_icon_dd;
    /* 0x07F6 */ s16    start_icon_scale;
    /* 0x07F8 */ char   unk_7F8[0x0006];
    /* 0x07FE */ u16    start_icon_y;
    /* 0x0800 */ char   unk_800[0x0002];
    /* 0x0802 */ u16    start_icon_x;
    /* 0x0804 */ char   unk_804[0x000C];
    /* 0x0810 */ u16    c_up_button_x;
    /* 0x0812 */ u16    c_up_button_y;
    /* 0x0814 */ char   unk_814[0x0008];
    /* 0x081C */ u16    start_button_x;
    /* 0x081E */ u16    start_button_y;
    /* 0x0820 */ u16    item_button_x[4];
    /* 0x0828 */ u16    item_button_y[4];
    /* 0x0830 */ s16    item_button_dd[4];
    /* 0x0838 */ u16    item_icon_x[4];
    /* 0x0840 */ u16    item_icon_y[4];
    /* 0x0848 */ s16    item_icon_dd[4];
    /* 0x0850 */ char   unk_850[0x0184];
    /* 0x09D4 */ s16    unk_9D4;
    /* 0x09D6 */ char   unk_9D6[0x00DE];
    /* 0x0AB4 */ u16    a_button_y;
    /* 0x0AB6 */ u16    a_button_x;
    /* 0x0AB8 */ char   unk_AB8[0x0002];
    /* 0x0ABA */ u16    a_button_icon_y;
    /* 0x0ABC */ u16    a_button_icon_x;
    /* 0x0ABE */ char   unk_ABE[0x0002];
    /* 0x0AC0 */ u16    a_button_r;
    /* 0x0AC2 */ u16    a_button_g;
    /* 0x0AC4 */ u16    a_button_b;
    /* 0x0AC6 */ char   unk_AC6[0x0030];
    /* 0x0AF6 */ u16    magic_bar_x;
    /* 0x0AF8 */ u16    magic_bar_y;
    /* 0x0AFA */ u16    magic_fill_x;
    /* 0x0AFC */ char   unk_AFC[0x020E];
    /* 0x0D0A */ s16    unk_D0A;
    /* 0x0D0C */ s16    unk_D0C;
    /* 0x0D0E */ s16    unk_D0E;
    /* 0x0D10 */ char   unk_D10[0x0070];
    /* 0x0D80 */ s16    unk_D80;
    /* 0x0D82 */ s16    unk_D82;
    /* 0x0D84 */ s16    unk_D84;
    /* 0x0D86 */ s16    unk_D86;
    /* 0x0D88 */ char   unk_D88[0x004A];
    /* 0x0DD2 */ s16    minimap_disabled;
    /* 0x0DD4 */ char   unk_DD4[0x008C];
    /* 0x0E60 */ s16    unk_E60;
    /* 0x0E62 */ char   unk_E62[0x00CC];
    /* 0x0F2E */ s16    dungeon_map_floor;
    /* 0x0F30 */ char   unk_F30[0x0064];
    /* 0x0F94 */ u16    item_ammo_x[4];
    /* 0x0F9C */ u16    item_ammo_y[4];
    /* 0x0FA4 */ char   unk_FA4[0x0008];
    /* 0x0FAC */ u16    item_icon_space[4];
    /* 0x0FB4 */ u16    item_button_space[4];
    /* 0x0FB8 */ char   unk_FBC[0x0040];
    /* 0x0FFC */ s16    unk_FFC;
    /* 0x0FFE */ char   unk_FFE[0x0056];
    /* 0x1054 */ s16    unk_1054;
    /* 0x1056 */ s16    unk_1056;
    /* 0x1058 */ s16    unk_1058;
    /* 0x105A */ char   unk_105A[0x0002];
    /* 0x105C */ s16    unk_105C;
    /* 0x105E */ s16    unk_105E;
    /* 0x1060 */ s16    unk_1060;
    /* 0x1062 */ s16    unk_1062;
    /* 0x1064 */ s16    unk_1064;
    /* 0x1066 */ s16    unk_1066;
    /* 0x1068 */ s16    unk_1068;
    /* 0x106A */ s16    unk_106A;
    /* 0x106C */ s16    unk_106C;
    /* 0x106E */ char   unk_106E[0x0006];
    /* 0x1074 */ s16    unk_1074;
    /* 0x1076 */ s16    unk_1076;
    /* 0x1078 */ s16    unk_1078;
    /* 0x107A */ s16    unk_107A;
    /* 0x107C */ s16    unk_107C;
    /* 0x107E */ s16    unk_107E;
    /* 0x1080 */ s16    unk_1080;
    /* 0x1082 */ s16    unk_1082;
    /* 0x1084 */ s16    unk_1084;
    /* 0x1086 */ s16    unk_1086;
    /* 0x1088 */ s16    unk_1088;
    /* 0x108A */ s16    unk_108A;
    /* 0x108C */ s16    unk_108C;
    /* 0x108E */ s16    unk_108E;
    /* 0x1090 */ s16    unk_1090;
    /* 0x1092 */ s16    unk_1092;
    /* 0x1094 */ char   unk_1094[0x00BC];
    /* 0x1150 */ s16    unk_1150;
    /* 0x1152 */ s16    unk_1152;
    /* 0x1154 */ char   unk_1154[0x0180];
    /* 0x12D4 */ s16    unk_12D4;
    /* 0x12D6 */ char   unk_12D6[0x0002];
    /* 0x12D8 */ s16    unk_12D8;
    /* 0x12DA */ char   unk_12DA[0x0178];
    /* 0x1452 */ s16    unk_1452;
    /* 0x1454 */ s16    unk_1454;
    /* 0x1456 */ char   unk_1456[0x017E];
} GameInfo; // size = 0x15D4

typedef struct
{
    /* 0x00 */ s8       button_items[4];
    /* 0x04 */ s8       c_button_slots[3];
    union
    {
        /* 0x08 */ u16  all;
        struct
        {
            u16  boots   : 4;
            u16  tunic   : 4;
            u16  shield  : 4;
            u16  sword   : 4;
        };
    };
} ItemEquips; // size = 0x0A

typedef struct
{
    /* 0x00 */ u32        chest;
    /* 0x04 */ u32        swch;
    /* 0x08 */ u32        clear;
    /* 0x0C */ u32        collect;
    /* 0x10 */ u32        unk;
    /* 0x14 */ u32        rooms_1;
    /* 0x18 */ u32        rooms_2;
} SaveSceneFlags; // size = 0x1C

typedef struct
{
    /* 0x00 */ s16   scene;
    /* 0x02 */ Vec3s pos;
    /* 0x08 */ s16   angle;
} HorseData;

typedef struct
{
    /* 0x00 */ Vec3f       pos;
    /* 0x0C */ s16         yaw;
    /* 0x0E */ s16         player_params;
    /* 0x10 */ s16         entrance_index;
    /* 0x12 */ u8          room_index;
    /* 0x13 */ s8          data;
    /* 0x14 */ u32         temp_swch_flags;
    /* 0x18 */ u32         temp_collect_flags;
} RespawnData; // size = 0x1C

typedef enum
{
    RESPAWN_MODE_DOWN,   /* Normal Void Outs */
    RESPAWN_MODE_RETURN, /* Grotto Returnpoints */
    RESPAWN_MODE_TOP     /* Farore's Wind */
} RespawnMode;

// Save Context (dbg ram start: 8015E660) note: this is copied from gz. adjust for accuracy.
typedef struct
{
    /* 0x0000 */ s32          entrance_index;
    /* 0x0004 */ s32          link_age;
    /* 0x0008 */ s32          cutscene_index;
    /* 0x000C */ u16          day_time;
    /* 0x000E */ char         unk_0E[0x0002];
    /* 0x0010 */ s32          night_flag;
    /* 0x0014 */ s32          unk_14;
    /* 0x0018 */ s32          unk_18;
    /* 0x001C */ char         id[6];
    /* 0x0022 */ s16          deaths;
    /* 0x0024 */ char         player_name[8];
    /* 0x002C */ s16          n64dd_flag;
    /* 0x002E */ s16          energy_capacity;
    /* 0x0030 */ s16          energy;
    /* 0x0032 */ s8           magic_capacity_set;
    /* 0x0033 */ s8           magic;
    /* 0x0034 */ s16          rupees;
    /* 0x0036 */ u16          bgs_hits_left;
    /* 0x0038 */ u16          navi_timer;
    /* 0x003A */ u8           magic_acquired;
    /* 0x003B */ char         unk_3B;
    /* 0x003C */ u8           magic_capacity;
    /* 0x003D */ s8           double_defense;
    /* 0x003E */ s8           bgs_flag;
    /* 0x003F */ char         unk_3F;
    /* 0x0040 */ ItemEquips   child_equips;
    /* 0x004A */ ItemEquips   adult_equips;
    /* 0x0054 */ char         unk_54[0x0012];
    /* 0x0066 */ s16          scene_index;
    /* 0x0068 */ ItemEquips   active_equips;
    /* 0x0072 */ char         unk_72[0x0002];
    /* 0x0074 */ u8           items[24];
    /* 0x008C */ s8           ammo[15];
    /* 0x009B */ u8           magic_beans_sold;
    union
    {
        /* 0x009C */ u16        equipment;
        struct
        {
          u16                          : 1;
          u16      hover_boots         : 1;
          u16      iron_boots          : 1;
          u16      kokiri_boots        : 1;
          u16                          : 1;
          u16      zora_tunic          : 1;
          u16      goron_tunic         : 1;
          u16      kokiri_tunic        : 1;
          u16                          : 1;
          u16      mirror_shield       : 1;
          u16      hylian_shield       : 1;
          u16      deku_shield         : 1;
          u16      broken_giants_knife : 1;
          u16      giants_knife        : 1;
          u16      master_sword        : 1;
          u16      kokiri_sword        : 1;
        };
    };
    /* 0x009E */ char         unk_9E[0x0002];
    union
    {
        /* 0x00A0 */ u32        equipment_items;
        struct
        {
          u32                          : 9;
          u32      nut_upgrade         : 3;
          u32      stick_upgrade       : 3;
          u32      bullet_bag          : 3;
          u32      wallet              : 2;
          u32      diving_upgrade      : 3;
          u32      strength_upgrade    : 3;
          u32      bomb_bag            : 3;
          u32      quiver              : 3;
        };
    };
    union
    {
        /* 0x00A4 */ u32        quest_items;
        struct
        {
          u32      heart_pieces        : 8;
          u32      gold_skulltula      : 1;
          u32      gerudos_card        : 1;
          u32      stone_of_agony      : 1;
          u32      zoras_sapphire      : 1;
          u32      gorons_ruby         : 1;
          u32      kokiris_emerald     : 1;
          u32      song_of_storms      : 1;
          u32      song_of_time        : 1;
          u32      suns_song           : 1;
          u32      sarias_song         : 1;
          u32      eponas_song         : 1;
          u32      zeldas_lullaby      : 1;
          u32      prelude_of_light    : 1;
          u32      nocturne_of_shadow  : 1;
          u32      requiem_of_spirit   : 1;
          u32      serenade_of_water   : 1;
          u32      bolero_of_fire      : 1;
          u32      minuet_of_forest    : 1;
          u32      light_medallion     : 1;
          u32      shadow_medallion    : 1;
          u32      spirit_medallion    : 1;
          u32      water_medallion     : 1;
          u32      fire_medallion      : 1;
          u32      forest_medallion    : 1;
        };
    };
    union
    {
        u8         items;
        struct
        {
          u8                           : 5;
          u8       map                 : 1;
          u8       compass             : 1;
          u8       boss_key            : 1;
        };
    } /* 0x00A8 */            dungeon_items[20];
    /* 0x00BC */ s8           dungeon_keys[19];
    /* 0x00CF */ s8           defense_hearts;
    /* 0x00D0 */ s16          gs_tokens;
    /* 0x00D2 */ char         unk_D2[0x0002];
    /* 0x00D4 */ SaveSceneFlags scene_flags[101];
    /* 0x0BE0 */ char         unk_BE0[0x0284];
    struct
    {
        s32         pos_x, pos_y, pos_z;
        s32         yaw;
        s32         player_params;
        s32         entrance_index;
        s32         room_index;
        s32         set;
        s32         temp_swch_flags;
        s32         temp_collect_flags;
    } /* 0x0E64 */            fw;
    /* 0x0E8C */ char         unk_E8C[0x0010];
    /* 0x0E9C */ u8           gs_flags[56];
    /* 0x0ED4 */ u16          event_chk_inf[14];
    /* 0x0EF0 */ u16          item_get_inf[4];
    /* 0x0EF8 */ u16          inf_table[30];
    /* 0x0F34 */ char         unk_F34[0x0004];
    /* 0x0F38 */ u32          world_map_area_data; // original name: "area_arrival"
    /* 0x0F3C */ char         unk_F3C[0x040C];
    /* 0x1348 */ HorseData    horse_data;
    /* 0x1352 */ u16          checksum;
    /* 0x1354 */ s32          file_index;
    /* 0x1358 */ char         unk_1358[0x0004];
    /* 0x135C */ s32          game_mode;
    /* 0x1360 */ s32          scene_setup_index;
    /* 0x1364 */ s32          respawn_flag;
    /* 0x1368 */ RespawnData  respawn[3];
    /* 0x13BC */ char         unk_13BC[0x000B];
    /* 0x13C7 */ u8           unk_13C7;
    /* 0x13C8 */ u16          nayrus_love_timer;
    /* 0x13CA */ char         unk_13CA[0x0004];
    /* 0x13CE */ s16          timer_1_state;
    /* 0x13D0 */ s16          timer_1_value;
    /* 0x13D2 */ s16          timer_2_state;
    /* 0x13D4 */ s16          timer_2_value;
    /* 0x13D6 */ char         unk_13D6[0x000A];
    /* 0x13E0 */ u8           seq_index;
    /* 0x13E1 */ u8           night_sfx;
    /* 0x13E2 */ char         unk_13E2[0x0005];
    /* 0x13E7 */ u8           unk_13E7;
    /* 0x13E8 */ char         unk_13E8[0x006];
    /* 0x13EE */ u16          unk_13EE;
    /* 0x13F0 */ s16          unk_13F0;
    /* 0x13F2 */ char         unk_13F2[0x0008];
    /* 0x13FA */ u16          event_inf[4];
    /* 0x1402 */ u16          minimap_index;
    /* 0x1404 */ u16          minigame_state;
    /* 0x1406 */ char         unk_1406[0x0003];
    /* 0x1409 */ u8           language;
    /* 0x140A */ char         unk_140A[0x0002];
    /* 0x140C */ u8           z_targeting;
    /* 0x140D */ char         unk_140D[0x0001];
    /* 0x140E */ u16          disable_music_flag;
    /* 0x1410 */ u8           unk_1410;
    /* 0x1411 */ u8           unk_1411;
    /* 0x1412 */ u16          unk_1412;
    /* 0x1414 */ u8           cutscene_trigger;
    /* 0x1415 */ u8           unk_1415;
    /* 0x1416 */ u16          unk_1416;
    /* 0x1418 */ u16          unk_1418;
    /* 0x141A */ u16          environment_time;
    /* 0x141C */ u8           unk_141C;
    /* 0x141D */ u8           transition_type;
    /* 0x141E */ s16          unk_141E;
    /* 0x1420 */ s16          world_map_area;
    /* 0x1422 */ s16          unk_1422;
    /* 0x1424 */ char         unk_1424[0x0004];
} SaveContext; // size = 0x1428

typedef struct
{
    /* 0x0000 */ u32    size;
    /* 0x0004 */ Gfx*   buf;
    /* 0x0008 */ Gfx*   p;
    /* 0x000C */ Gfx*   d;
} DispBuf; // size = 0x10

typedef struct
{
    /* 0x0000 */ char     unk_00[0x01B4];
    /* 0x01B4 */ DispBuf  work;
    /* 0x01C4 */ char     unk_1C4[0x00E4];
    /* 0x02A8 */ DispBuf  overlay;
    /* 0x02B8 */ DispBuf  polyOpa;
    /* 0x02C8 */ DispBuf  polyXlu;
} GraphicsContext;

typedef struct
{
    /* 0x00 */ union
    {
        struct
        {
            u16 a   : 1;
            u16 b   : 1;
            u16 z   : 1;
            u16 s   : 1;
            u16 du  : 1;
            u16 dd  : 1;
            u16 dl  : 1;
            u16 dr  : 1;
            u16     : 2;
            u16 l   : 1;
            u16 r   : 1;
            u16 cu  : 1;
            u16 cd  : 1;
            u16 cl  : 1;
            u16 cr  : 1;
        };
        u16        pad;
    };
    /* 0x02 */ s8  x;
    /* 0x03 */ s8  y;
} RawInput; // size = 0x4

typedef struct
{
    /* 0x00 */ RawInput raw;
    /* 0x04 */ u16      status;
    /* 0x06 */ RawInput rawPrev;
    /* 0x0A */ u16      statusPrev;
    /* 0x0C */ u16      padPressed;
    /* 0x0E */ s8       xDiff;
    /* 0x0F */ s8       yDiff;
    /* 0x10 */ char     unk_10[0x02];
    /* 0x12 */ u16      padReleased;
    /* 0x14 */ s8       xAdjusted;
    /* 0x15 */ s8       yAdjusted;
    /* 0x16 */ char     unk_16[0x02];
} Input; // size = 0x18

typedef struct
{
    /* 0x0000 */ char   unk_00[0x28];
    /* 0x0028 */ Vec3f  eye;
    /* 0x0034 */ char   unk_34[0xF4];
} View; // size = 0x128

typedef struct
{
    f32 unk_00;
    s16 unk_04;
    s16 unk_06;
} struct_80045714; // used in z_camera.c and code_8007BF90

typedef struct
{
    /* 0x0000 */ s32 unk_00;
    /* 0x0004 */ s16 unk_04;
    /* 0x0006 */ s16 unk_06;
    /* 0x0008 */ s16 unk_08;
    /* 0x000A */ s16 unk_0A;
    /* 0x000C */ char unk_0C[0x44];
    /* 0x0050 */ Vec3f unk_50;
    /* 0x005C */ Vec3f unk_5C;
    /* 0x0068 */ char unk_68[0x0C];
    /* 0x0074 */ Vec3f unk_74;
    /* 0x0080 */ Vec3f unk_80;
    /* 0x008C */ struct GlobalContext *globalCtx;
    /* 0x0090 */ Player *player;
    /* 0x0094 */ PosRot unk_94;
    /* 0x00A8 */ char unk_A8[0x18];
    /* 0x00C0 */ Vec3f unk_C0;
    /* 0x00CC */ Vec3f unk_CC;
    /* 0x00D8 */ f32 unk_D8;
    /* 0x00DC */ f32 unk_DC; // possibly a Vec3f
    /* 0x00E0 */ f32 unk_E0;
    /* 0x00E4 */ Vec3f unk_E4;
    /* 0x00F0 */ char unk_F0[0x0C];
    /* 0x00FC */ f32 unk_FC;
    /* 0x0100 */ f32 unk_100;
    /* 0x0104 */ f32 unk_104;
    /* 0x0108 */ Vec3f unk_108;
    /* 0x0114 */ char unk_114[0x10];
    /* 0x0124 */ s32 unk_124;
    /* 0x0128 */ s32 unk_128;
    /* 0x012C */ s16 unk_12C;
    /* 0x012E */ s16 unk_12E;
    /* 0x0130 */ char unk_130[0x10];
    /* 0x0140 */ s16 unk_140;
    /* 0x0142 */ s16 unk_142; // related to door camera (see func_8005AD40)
    /* 0x0144 */ s16 unk_144;
    /* 0x0146 */ s16 unk_146; // unknown if used
    /* 0x0148 */ s16 unk_148; // ID for door camera? (see func_8005AD40)
    /* 0x014A */ s16 unk_14A; // unknown if used
    /* 0x014C */ s16 unk_14C;
    /* 0x014E */ s16 unk_14E;
    /* 0x0150 */ s16 unk_150; // unknown if used
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ u16 unk_154;
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ s16 unk_158; // unknown if used
    /* 0x015E */ s16 unk_15A;
    /* 0x015E */ s16 unk_15C; // unknown if used
    /* 0x015E */ u16 unk_15E;
    /* 0x0160 */ s16 unk_160;
    /* 0x0162 */ s16 unk_162;
    /* 0x0164 */ s16 unk_164;
    /* 0x0166 */ s16 unk_166; // unknown if used
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ s16 unk_16A; // unknown if used
} Camera; // size = 0x16C

typedef struct
{
    /* 0x0000 */ Camera  activeCameras[4];
    /* 0x05B0 */ Camera* activeCameraPtrs[4];
    /* 0x05C0 */ s16     unk_5C0;
    /* 0x05C2 */ s16     unk_5C2;
} CameraContext; // size = 0x5C4

typedef struct
{
    /* 0x00 */ u8   musicSeq;
    /* 0x01 */ u8   nighttimeSFX;
    /* 0x02 */ char unk_02[0x2];
} SoundContext; // size = 0x4

typedef struct
{
    /* 0x00 */ char    unk_00[0x50];
} StaticCollisionContext; // size = 0x50

typedef struct
{
    /* 0x0000 */ char   unk_00[0x04];
    /* 0x0004 */ ActorMesh actorMeshArr[50];
    /* 0x138C */ u16    flags[50];
    /* 0x13F0 */ char   unk_13F0[0x24];
} DynaCollisionContext; // size = 0x1414

typedef struct
{
    /* 0x0000 */ StaticCollisionContext stat;
    /* 0x0050 */ DynaCollisionContext   dyna;
} CollisionContext; // size = 0x1464

typedef struct
{
    /* 0x00 */ Vec3f    pos;
    /* 0x0C */ f32      unk_0C; // radius?
    /* 0x10 */ Color_RGB8 color;
} TargetContextEntry; // size = 0x14

typedef struct
{
    /* 0x00 */ Vec3f    naviRefPos; // possibly wrong
    /* 0x0C */ Vec3f    targetCenterPos;
    /* 0x18 */ Color_RGBAf naviInner;
    /* 0x28 */ Color_RGBAf naviOuter;
    /* 0x38 */ Actor*   arrowPointedActor;
    /* 0x3C */ Actor*   targetedActor;
    /* 0x40 */ f32      unk_40;
    /* 0x44 */ f32      unk_44;
    /* 0x48 */ s16      unk_48;
    /* 0x4A */ u8       activeType;
    /* 0x4B */ u8       unk_4B;
    /* 0x4C */ s8       unk_4C;
    /* 0x4D */ char     unk_4D[0x03];
    /* 0x50 */ TargetContextEntry arr_50[3];
    /* 0x8C */ Actor*   unk_8C;
    /* 0x90 */ Actor*   unk_90;
    /* 0x94 */ Actor*   unk_94;
} TargetContext; // size = 0x98

typedef struct
{
    /* 0x00 */ u32      texture;
    /* 0x04 */ s16      unk_4;
    /* 0x06 */ s16      unk_6;
    /* 0x08 */ u8       unk_8;
    /* 0x09 */ u8       unk_9;
    /* 0x0A */ u8       delayA;
    /* 0x0B */ u8       delayB;
    /* 0x0C */ s16      unk_C;
    /* 0x0E */ s16      unk_E;
} TitleCardContext; // size = 0x10

typedef struct
{
    /* 0x00 */ u32    length; // number of actors loaded of this type
    /* 0x04 */ Actor* first;  // pointer to first actor of this type
} ActorListEntry; // size = 0x08

typedef struct
{
    /* 0x0000 */ u8     unk_00;
    /* 0x0001 */ char   unk_01[0x01];
    /* 0x0002 */ u8     unk_02;
    /* 0x0003 */ u8     unk_03;
    /* 0x0004 */ char   unk_04[0x04];
    /* 0x0008 */ u8     total; // total number of actors loaded
    /* 0x0009 */ char   unk_09[0x03];
    /* 0x000C */ ActorListEntry actorList[12];
    /* 0x006C */ TargetContext targetCtx;
    struct
    {
        /* 0x0104 */ u32    swch;
        /* 0x0108 */ u32    tempSwch;
        /* 0x010C */ u32    unk0;
        /* 0x0110 */ u32    unk1;
        /* 0x0114 */ u32    chest;
        /* 0x0118 */ u32    clear;
        /* 0x011C */ u32    tempClear;
        /* 0x0120 */ u32    collect;
        /* 0x0124 */ u32    tempCollect;
    }                   flags;
    /* 0x0128 */ TitleCardContext titleCtx;
    /* 0x0138 */ char   unk_138[0x04];
    /* 0x013C */ void*  absoluteSpace; // Space used to allocate actor overlays of alloc type 1
} ActorContext; // size = 0x140

typedef struct
{
    /* 0x00 */ char  unk_00[0x4];
    /* 0x04 */ void* segment;
    /* 0x08 */ u8    state;
    /* 0x0C */ f32   unk_0C;
    /* 0x10 */ u16   frames;
    /* 0x12 */ u16   unk_12;
    union
    {
        /* 0x14 */ s32 unk_14_all;
        struct
        {
            s16      unk_14;
            s16      unk_16;
        };
    };
    /* 0x18 */ u16   unk_18;
    /* 0x1A */ u8    unk_1A;
    /* 0x1B */ u8    unk_1B;
    /* 0x1C */ CutsceneCameraPoint* cameraFocus;
    /* 0x20 */ CutsceneCameraPoint* cameraPosition;
    /* 0x24 */ CsCmdActorAction* linkAction;
    /* 0x28 */ CsCmdActorAction* actorActions[10];
} CutsceneContext; // size = 0x50

typedef struct
{
    /* 0x0000 */ char   unk_00[0x62FA];
    /* 0x62FA */ u16    unk_62FA;
    /* 0x62FC */ char   unk_62FC[0x8];
    /* 0x6304 */ u8     unk_6304;
    /* 0x6305 */ char   unk_6305[0xE0];
    /* 0x63E5 */ u8     unk_63E5;
    /* 0x63E6 */ char   unk_63E6[0x0E];
    /* 0x63F4 */ u16    unk_63F4;
    /* 0x63F6 */ char   unk_63F6[0x16];
    /* 0x640C */ u16    unk_640C;
    /* 0x640E */ char   unk_640E[0xA];
} SubGlobalContextA0D8; // size = 0x6418

typedef struct
{
    /* 0x0000 */ char   unk_00[0x8000];
    /* 0x8000 */ SubGlobalContextA0D8 sub_8000;
} SubGlobalContext20D8; // size = 0xE418

typedef struct
{
    /* 0x0000 */ View   view;
    /* 0x0128 */ void*  unk_128;
    /* 0x012C */ void*  unk_12C;
    /* 0x0130 */ void*  parameterSegment;
    /* 0x0134 */ void*  do_actionSegment;
    /* 0x0138 */ void*  icon_itemSegment;
    /* 0x013C */ void*  mapSegment;
    /* 0x0140 */ char   unk_140[0x0BE];
    /* 0x01FE */ s16    unk_1FE;
    /* 0x0200 */ s16    unk_200;
    /* 0x0202 */ s16    unk_202[3];
    /* 0x0208 */ s16    unk_208[3];
    /* 0x020E */ s16    unk_20E[6];
    /* 0x021A */ s16    unk_21A[6];
    /* 0x0226 */ s16    unk_226;
    /* 0x0228 */ s16    unk_228;
    /* 0x022A */ s16    unk_22A;
    /* 0x022C */ s16    unk_22C;
    /* 0x022E */ char   unk_22E[0x022];
    /* 0x0250 */ u16    healthAlpha;
    /* 0x0252 */ u16    rupeeCounterAlpha;
    /* 0x0254 */ u16    minimapAlpha;
    /* 0x0256 */ char   unk_256[0x006];
    /* 0x025C */ s16    roomNum;
    /* 0x025E */ char   unk_25E[0x012];
} InterfaceContext; // size = 0x270

typedef struct
{
    /* 0x00 */ u32      vromAddr; // VROM address (source)
    /* 0x04 */ void*    dramAddr; // DRAM address (destination)
    /* 0x08 */ u32      size;     // File Transfer size
    /* 0x0C */ char*    filename; // Filename for debugging
    /* 0x10 */ s32      line;     // Line for debugging
    /* 0x14 */ s32      unk_14;
    /* 0x18 */ OSMesgQueue* notifyQueue; // Message queue for the notification message
    /* 0x1C */ OSMesg   notifyMsg;       // Completion notification message
} DmaRequest; // size = 0x20

typedef struct
{
    /* 0x00 */ s16      id;
    /* 0x04 */ void*    segment;
    /* 0x08 */ DmaRequest  dmaRequest;
    /* 0x28 */ OSMesgQueue loadQueue;
    /* 0x40 */ OSMesg   loadMsg;
} ObjectStatus; // size = 0x44

typedef struct
{
    /* 0x0000 */ void*  spaceStart;
    /* 0x0004 */ void*  spaceEnd; // original name: "endSegment"
    /* 0x0008 */ u8     num; // number of objects in bank
    /* 0x0009 */ u8     unk_09;
    /* 0x000A */ u8     mainKeepIndex; // "gameplay_keep" index in bank
    /* 0x000B */ u8     subKeepIndex; // "gameplay_field_keep" or "gameplay_dangeon_keep" index in bank
    /* 0x000C */ ObjectStatus status[OBJECT_EXCHANGE_BANK_MAX];
} ObjectContext; // size = 0x514

typedef struct
{
    /* 0x00 */ Gfx* opa;
    /* 0x04 */ Gfx* xlu;
} PolygonDlist; // size = 0x8

typedef struct
{
    /* 0x00 */ u8    type;
    /* 0x01 */ u8    num; // number of dlist entries
    /* 0x04 */ void* start;
    /* 0x08 */ void* end;
} Polygon; // size = 0xC

typedef struct
{
    /* 0x00 */ u8    type;
    /* 0x01 */ u8    num; // number of dlist entries
    /* 0x04 */ void* start;
    /* 0x08 */ void* end;
} PolygonType0; // size = 0xC

typedef struct
{
    /* 0x00 */ u16   unk_00;
    /* 0x02 */ u8    id;
    /* 0x04 */ u32   source;
    /* 0x08 */ u32   unk_0C;
    /* 0x0C */ u32   tlut;
    /* 0x10 */ u16   width;
    /* 0x12 */ u16   height;
    /* 0x14 */ u8    fmt;
    /* 0x15 */ u8    siz;
    /* 0x16 */ u16   mode0;
    /* 0x18 */ u16   tlutCount;
} BgImage; // size = 0x1C

typedef struct
{
    /* 0x00 */ u8    type;
    /* 0x01 */ u8    format; // 1 = single, 2 = multi
    /* 0x04 */ void* dlist;
    union
    {
        struct
        {
            /* 0x08 */ u32   source;
            /* 0x0C */ u32   unk_0C;
            /* 0x10 */ u32   tlut;
            /* 0x14 */ u16   width;
            /* 0x16 */ u16   height;
            /* 0x18 */ u8    fmt;
            /* 0x19 */ u8    siz;
            /* 0x1A */ u16   mode0;
            /* 0x1C */ u16   tlutCount;
        } single;
        struct
        {
            /* 0x08 */ u8    count;
            /* 0x0C */ BgImage* list;
        } multi;
    };
} PolygonType1;

typedef struct
{
    /* 0x00 */ Vec3s pos;
    /* 0x06 */ s16   unk_06;
    /* 0x08 */ Gfx*  opa;
    /* 0x0C */ Gfx*  xlu;
} PolygonDlist2; // size = 0x8

typedef struct
{
    /* 0x00 */ u8    type;
    /* 0x01 */ u8    num; // number of dlist entries
    /* 0x04 */ void* start;
    /* 0x08 */ void* end;
} PolygonType2; // size = 0xC

typedef union
{
    Polygon      polygon;
    PolygonType0 polygon0;
    PolygonType1 polygon1;
    PolygonType2 polygon2;
} Mesh; // "Ground Shape"

typedef struct
{
    /* 0x00 */ s8   num;
    /* 0x01 */ u8   unk_01;
    /* 0x02 */ u8   unk_02;
    /* 0x03 */ u8   unk_03;
    /* 0x04 */ s8   echo;
    /* 0x05 */ u8   showInvisActors;
    /* 0x08 */ Mesh* mesh; // original name: "ground_shape"
    /* 0x0C */ void* segment;
    /* 0x10 */ char unk_10[0x4];
} Room; // size = 0x14

typedef struct
{
    /* 0x00 */ Room  curRoom;
    /* 0x14 */ Room  prevRoom;
    /* 0x28 */ void* bufPtrs[2];
    /* 0x30 */ u8    unk_30;
    /* 0x31 */ s8    status;
    /* 0x34 */ void* unk_34;
    /* 0x38 */ DmaRequest dmaRequest;
    /* 0x58 */ OSMesgQueue loadQueue;
    /* 0x70 */ OSMesg loadMsg;
} RoomContext; // size = 0x74

typedef struct
{
    /* 0x00 */ char     unk_00[0x028C];
} SubGlobalContext11E60; // size = 0x28C

typedef struct
{
    /* 0x00 */ s16   id;
    /* 0x02 */ Vec3s pos;
    /* 0x08 */ Vec3s rot;
    /* 0x0E */ s16   params;
} ActorEntry; // size = 0x10

typedef struct
{
    /* 0x00 */ s8    frontRoom;    // Room to switch to when triggered from the front of the object
    /* 0x01 */ s8    frontEffects; // How the camera reacts during the front transition
    /* 0x02 */ s8    backRoom;     // Room to switch to when triggered from the back of the object
    /* 0x03 */ s8    backEffects;  // How the camera reacts during the back transition
    /* 0x04 */ s16   id;
    /* 0x06 */ Vec3s pos;
    /* 0x0C */ s16   rotY;
    /* 0x0E */ s16   params;
} TransitionActorEntry; // size = 0x10

typedef struct
{
    /* 0x00 */ u8 spawn;
    /* 0x01 */ u8 room;
} EntranceEntry;

typedef struct
{
    /* 0x00 */ u32 vromStart;
    /* 0x04 */ u32 vromEnd;
} RomFile; // size = 0x8

// Global Context (dbg ram start: 80212020)
typedef struct GlobalContext
{
    /* 0x00000 */ GraphicsContext* gfxCtx;
    /* 0x00004 */ char unk_04[0x10];
    /* 0x00014 */ Input input[4];
    /* 0x00074 */ char unk_74[0x28];
    /* 0x0009C */ u32 stateFrames;
    /* 0x000A0 */ char unk_A0[0x4];
    /* 0x000A4 */ s16 sceneNum;
    /* 0x000A6 */ u8 sceneConfig;
    /* 0x000A7 */ char unk_A7[0x11];
    /* 0x000B8 */ View view;
    /* 0x001E0 */ CameraContext cameraCtx;
    /* 0x007A4 */ SoundContext soundCtx;
    /* 0x007A8 */ LightingContext lightCtx;
    /* 0x007B8 */ s32 unk_7B8;
    /* 0x007BC */ char unk7BC[0x4];
    /* 0x007C0 */ CollisionContext colCtx;
    /* 0x01C24 */ ActorContext actorCtx;
    /* 0x01D64 */ CutsceneContext csCtx;
    /* 0x01DB4 */ char unk_1DB4[0x1C4];
    /* 0x01F78 */ u16 unk_1F78;
    /* 0x01F7A */ char unk_1F7A[0x15E];
    /* 0x020D8 */ SubGlobalContext20D8 sub_20D8;
    /* 0x104F0 */ InterfaceContext interfaceCtx;
    /* 0x10760 */ char unk_10760[0x1D4];
    /* 0x10934 */ u16 gameState;
    /* 0x10936 */ u16 pauseMenuFlag;
    /* 0x10938 */ char unk_10938[0x0E8];
    /* 0x10A20 */ u16 unk_10A20;
    /* 0x10A22 */ char unk_10A22[0x2];
    /* 0x10A24 */ u16 unk_10A24;
    /* 0x10A26 */ u16 unk_10A26;
    /* 0x10A28 */ f32 unk_10A28;
    /* 0x10A2C */ f32 unk_10A2C;
    /* 0x10A30 */ f32 unk_10A30;
    /* 0x10A34 */ char unk_10A34[0x5];
    /* 0x10A39 */ u8 skyDisabled;
    /* 0x10A3A */ u8 sunMoonDisabled;
    /* 0x10A3B */ u8 unk_10A3B;
    /* 0x10A3C */ u8 unk_10A3C;
    /* 0x10A3D */ u8 unk_10A3D;
    /* 0x10A3E */ u16 unk_10A3E;
    /* 0x10A40 */ char unk_10A40[0x2];
    /* 0x10A42 */ u8 unk_10A42;
    /* 0x10A43 */ u8 unk_10A43;
    /* 0x10A44 */ u8 unk_10A44;
    /* 0x10A45 */ u8 unk_10A45;
    /* 0x10A46 */ u16 unk_10A46;
    /* 0x10A48 */ u16 unk_10A48;
    /* 0x10A4A */ char unk_10A4A[0x4];
    /* 0x10A4E */ s8 unk_10A4E;
    /* 0x10A4F */ s8 unk_10A4F;
    /* 0x10A50 */ s8 unk_10A50;
    /* 0x10A51 */ char unk_10A51[0x5F];
    /* 0x10AB0 */ s16 unk_10AB0[6];
    /* 0x10ABC */ char unk_10ABC[0x8];
    /* 0x10AC4 */ s16 unk_10AC4;
    /* 0x10AC6 */ char unk_10AC6[0x6];
    /* 0x10ACC */ s16 unk_10ACC;
    /* 0x10ACE */ s16 unk_10ACE;
    /* 0x10AD0 */ s16 unk_10AD0;
    /* 0x10AD4 */ f32 unk_10AD4;
    /* 0x10AD8 */ u8 nbLightSettings;
    /* 0x10AD9 */ char unk_10AD9[0x3];
    /* 0x10ADC */ UNK_PTR lightSettingsList;
    /* 0x10AE0 */ char unk_10AE0[0x3];
    /* 0x10AE3 */ u8 unk_10AE3;
    /* 0x10AE4 */ char unk_10AE4[0x18];
    /* 0x10AFC */ f32 unk_10AFC;
    /* 0x10B00 */ char unk_10B00[0x1];
    /* 0x10B01 */ u8 unk_10B01;
    /* 0x10B02 */ char unk_10B02[0x3];
    /* 0x10B05 */ u8 unk_10B05;
    /* 0x10B06 */ u8 unk_10B06[4];
    /* 0x10B0A */ u8 unk_10B0A;
    /* 0x10B0B */ char unk_10B0B[0x7];
    /* 0x10B12 */ u8 unk_10B12[4];
    /* 0x10B16 */ char unk_10B16[0xC8E];
    /* 0x117A4 */ ObjectContext objectCtx;
    /* 0x11CBC */ RoomContext roomCtx;
    /* 0x11D30 */ s16 unk_11D30[2];
    /* 0x11D34 */ u8 nbTransitionActors;
    /* 0x11D38 */ TransitionActorEntry* transitionActorList;
    /* 0x11D3C */ char unk_11D3C[0x1C];
    /* 0x11D58 */ void (*unk_11D58)(struct GlobalContext*, s32);
    /* 0x11D5C */ char unk_11D5C[0x4];
    /* 0x11D60 */ f32 mf_11D60[4][4];
    /* 0x11DA0 */ f32 mf_11DA0[4][4];
    /* 0x11DE0 */ char unk_11DE0[0x4];
    /* 0x11DE4 */ u32 gameplayFrames;
    /* 0x11DE8 */ u8 linkAgeOnLoad;
    /* 0x11DE9 */ u8 unk_11DE9;
    /* 0x11DEA */ u8 curSpawn;
    /* 0x11DEB */ u8 nbSetupActors;
    /* 0x11DEC */ u8 nbRooms;
    /* 0x11DF0 */ RomFile* roomList;
    /* 0x11DF4 */ ActorEntry* linkActorEntry;
    /* 0x11DF8 */ ActorEntry* setupActorList;
    /* 0x11DFC */ UNK_PTR unk_11DFC;
    /* 0x11E00 */ EntranceEntry* setupEntranceList;
    /* 0x11E04 */ UNK_PTR setupExitList;
    /* 0x11E08 */ UNK_PTR setupPathList;
    /* 0x11E0C */ UNK_PTR naviMsgSegment;
    /* 0x11E10 */ char unk_11E10[0x4];
    /* 0x11E14 */ s8 skyboxId;
    /* 0x11E15 */ s8 sceneLoadFlag;
    /* 0x11E16 */ char unk_11E16[0x4];
    /* 0x11E1A */ s16 nextEntranceIndex;
    /* 0x11E1C */ char unk_11E1C[0x40];
    /* 0x11E5C */ s8 unk_11E5C;
    /* 0x11E5D */ char unk_11E5D;
    /* 0x11E5E */ u8 fadeOutTransition;
    /* 0x11E5F */ char unk_11E5F[0x1];
    /* 0x11E60 */ SubGlobalContext11E60 sub_11E60;
    /* 0x120EC */ char unk_120EC[0x304];
    /* 0x123F0 */ s32 unk_123F0;
    /* 0x123F4 */ char unk_123F4[0x37];
    /* 0x1242B */ u8 unk_1242B;
    /* 0x1242C */ Scene* loadedScene;
    /* 0x12430 */ char unk_12430[0xE8];
} GlobalContext; // size = 0x12518

typedef enum
{
    DPM_UNK = 0,
    DPM_PLAYER = 1,
    DPM_ENEMY = 2
} DynaPolyMoveFlag;

// Declared here to avoid warning
struct LoadedParticleEntry;
typedef struct
{
    /* 0x0000 */ Vec3f position;
    /* 0x000C */ Vec3f velocity;
    /* 0x0018 */ Vec3f acceleration;
    /* 0x0024 */ void(*update)(GlobalContext*, s32, struct LoadedParticleEntry*);
    /* 0x0028 */ void(*draw)(GlobalContext*, s32, struct LoadedParticleEntry*);
    /* 0x002C */ f32 unk_2C; // Probaly a Vec3f
    /* 0x0030 */ f32 unk_30;
    /* 0x0034 */ f32 unk_34;
    /* 0x0038 */ u32 unk_38;
    /* 0x003C */ u32 unk_3C;
    /* 0x0042 */ u16 unk_40[13];
    /* 0x005A */ u16 flags; // bit 0: set if this entry is not considered free on a priority tie bit 1: ? bit 2: ?
    /* 0x005C */ s16 life; // -1 means this entry is free
    /* 0x005E */ u8 priority; // Lower value means higher priority
    /* 0x005F */ u8 type;
} LoadedParticleEntry; // size = 0x60

typedef struct
{
    /* 0x00 */ u8 limbCount;
    /* 0x01 */ char unk_01[0x01];
    /* 0x02 */ u8 dListCount;
    /* 0x03 */ char unk_03[0x01]; /* Probably Padding */
    /* 0x04 */ u32 limbIndex;
    /* 0x08 */ u32 animCurrent;
    /* 0x0C */ char unk_0C[0x04];
    /* 0x10 */ f32 animFrameCount;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 animCurrentFrame;
    /* 0x1C */ f32 animPlaybackSpeed;
    /* 0x20 */ u32 actorDrawTbl;
    /* 0x24 */ u32 unk_24;
    /* 0x28 */ u32 unk_28;
    /* 0x2C */ u32 unk_2C;
    /* 0x30 */ void* funcUnk30; /* Some function pointer */
    /* 0x34 */ s32 unk_34;
    /* 0x38 */ s32 unk_38;
    /* 0x3C */ u16 unk_3C;
    /* 0x3E */ u16 unk_3E; /* Probably Padding */
} SkelAnime; // size = 0x40

typedef struct
{
    /* 0x00 */ u32 unk_00;
    /* 0x04 */ u32(*init)(GlobalContext*, u32, LoadedParticleEntry*, void*);
} ParticleOverlayInfo;

typedef struct
{
    /* 0x00 */ u32 vromStart;
    /* 0x04 */ u32 vromEnd;
    /* 0x0C */ u32 vramStart;
    /* 0x08 */ u32 vramEnd;
    /* 0x10 */ void* loadedRamAddr;
    /* 0x14 */ ParticleOverlayInfo* overlayInfo;
    /* 0x18 */ u32 unk_18; // Always 0x01000000?
} ParticleOverlay;

typedef struct
{
    /* 0x00 */ LoadedParticleEntry* data_table; // Name from debug assert
    /* 0x04 */ s32 searchIndex;
    /* 0x08 */ s32 size;
} EffectTableInfo;

typedef struct
{
    /* 0x00 */ s8  scene;
    /* 0x01 */ s8  spawn;
    /* 0x02 */ u16 continueBgm : 1;
    /* 0x02 */ u16 displayTitleCard : 1;
    /* 0x02 */ u16 fadeInTransition : 7;
    /* 0x02 */ u16 fadeOutTransition : 7;
} EntranceInfo; // size = 0x4

typedef struct
{
    /* 0x00 */ void*    loadedRamAddr;
    /* 0x04 */ u32      vromStart; // if applicable
    /* 0x08 */ u32      vromEnd;   // if applicable
    /* 0x0C */ u32      vramStart; // if applicable
    /* 0x10 */ u32      vramEnd;   // if applicable
    /* 0x14 */ UNK_PTR  unk_14;
    /* 0x18 */ void*    init;    // initializes and executes the given context
    /* 0x1C */ void*    destroy; // deconstructs the context, and sets the next context to load
    /* 0x20 */ UNK_PTR  unk_20;
    /* 0x24 */ UNK_PTR  unk_24;
    /* 0x28 */ UNK_TYPE unk_28;
    /* 0x2C */ u32      instanceSize;
} GameState; // size = 0x30

typedef struct PreNMIContext
{
    /* 0x00 */ GraphicsContext* gfxCtx;
    /* 0x04 */ void   (*main)(struct PreNMIContext*);
    /* 0x08 */ void   (*destroy)(struct PreNMIContext*);
    /* 0x0C */ UNK_TYPE unk_0C;
    /* 0x10 */ UNK_TYPE unk_10;
    /* 0x14 */ char     unk_14[0x84];
    /* 0x98 */ UNK_TYPE unk_98;
    /* 0x9C */ char     unk_9C[0x04];
    /* 0xA0 */ UNK_TYPE unk_A0;
    /* 0xA4 */ u32      timer;
    /* 0xA8 */ UNK_TYPE unk_A8;
} PreNMIContext; // size = 0xAC

typedef struct
{
    /* 0x00 */ s8 chestFlag; // chest icon is only displayed if this flag is not set for the current room
    /* 0x01 */ u8 x, y; // coordinates to place the icon (top-left corner), relative to the minimap texture
} MapMarkPoint; // size = 0x3

typedef struct
{
    /* 0x00 */ s8 markType; // 0 for the chest icon, 1 for the boss skull icon, -1 for none
    /* 0x01 */ u8 count; // number of icons to display
    /* 0x02 */ MapMarkPoint points[12];
} MapMarkData; // size = 0x26

typedef MapMarkData MapMarksData[3]; // size = 0x72

typedef struct DebugDispObject
{
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3s rot;
    /* 0x14 */ Vec3f scale;
    /* 0x20 */ Color_RGBA8 color;
    /* 0x24 */ s16   type;
    /* 0x28 */ struct DebugDispObject* next;
} DebugDispObject; // size = 0x2C

typedef struct
{
    /* 0x00 */ Vec3s colAbsMin;
    /* 0x06 */ Vec3s colAbsMax;
    /* 0x0C */ s16   nbVertices;
    /* 0x10 */ void* vertexArray;
    /* 0x14 */ s16   nbPolygons;
    /* 0x18 */ void* polygonArray;
    /* 0x1C */ void* polygonTypes;
    /* 0x20 */ void* cameraData;
    /* 0x24 */ s16   nbWaterBoxes;
    /* 0x28 */ void* waterBoxes;
} CollisionHeader;

typedef struct FaultClient
{
    struct FaultClient* next;
    u32 callback;
    u32 param1;
    u32 param2;
} FaultClient;

typedef struct FaultAddrConvClient
{
    struct FaultAddrConvClient* next;
    u32 callback;
    u32 param;
} FaultAddrConvClient;


typedef struct 
{
    u32 (*callback)(u32, u32);
    u32 param0;
    u32 param1;
    u32 ret;
    OSMesgQueue* queue;
    OSMesg msg;
} FaultClientContext;

typedef struct FaultThreadStruct
{
    OSThread thread;
    u8 unk_1B0[0x600];
    OSMesgQueue queue;
    OSMesg msg;
    u8 exitDebugger;
    u8 msgId;
    u8 faultHandlerEnabled;
    u8 faultActive;
    OSThread* faultedThread;
    void(*padCallback)(Input*);
    FaultClient* clients;
    FaultAddrConvClient* addrConvClients;
    u8 unk_7E0[4];
    Input padInput;
    u16 colors[36];
    void* fb;
    u32 currClientThreadSp;
    u8 unk_84C[4];
} FaultThreadStruct;

typedef struct
{
    u16* fb;
    u16 w;
    u16 h;
    u16 yStart;
    u16 yEnd;
    u16 xStart;
    u16 xEnd;
    u16 foreColor;
    u16 backColor;
    u16 cursorX;
    u16 cursorY;
    u32* fontData;
    u8 charW;
    u8 charH;
    s8 charWPad;
    s8 charHPad;
    u16 printColors[10];
    u8 escCode; //bool
    u8 osSyncPrintfEnabled;
    void(*inputCallback)();
} FaultDrawer;

#define VEC3_ADD( V3A0, V3A1 ) \
{                              \
    V3A0.x += V3A1.x;          \
    V3A0.y += V3A1.y;          \
    V3A0.z += V3A1.z;          \
}

#define VEC3_SUB( V3DST, V3A0, V3A1 ) \
{                                     \
    V3DST.x = V3A0.x - V3A1.x;        \
    V3DST.y = V3A0.y - V3A1.y;        \
    V3DST.z = V3A0.z - V3A1.z;        \
}

//results may vary depending on context (drop/shop/chest/scrub). Add comments as necessary
typedef enum
{
    /* 0x00 */ GI_INVALID_1, //link picks up chest and it sends him flying upwards
    /* 0x01 */ GI_BOMBS_5,
    /* 0x02 */ GI_NUTS_5,
    /* 0x03 */ GI_BOMBCHUS_10,
    /* 0x04 */ GI_BOW,
    /* 0x05 */ GI_SLINGSHOT,
    /* 0x06 */ GI_BOOMERANG,
    /* 0x07 */ GI_STICKS_1,
    /* 0x08 */ GI_HOOKSHOT,
    /* 0x09 */ GI_LONGSHOT,
    /* 0x0A */ GI_LENS,
    /* 0x0B */ GI_LETTER_ZELDA,
    /* 0x0C */ GI_OCARINA_OOT,
    /* 0x0D */ GI_HAMMER,
    /* 0x0E */ GI_COJIRO,
    /* 0x0F */ GI_BOTTLE,
    /* 0x10 */ GI_POTION_RED,
    /* 0x11 */ GI_POTION_GREEN,
    /* 0x12 */ GI_POTION_BLUE,
    /* 0x13 */ GI_FAIRY,
    /* 0x14 */ GI_MILK,
    /* 0x15 */ GI_LETTER_RUTO,
    /* 0x16 */ GI_BEAN,
    /* 0x17 */ GI_MASK_SKULL,
    /* 0x18 */ GI_MASK_SPOOKY,
    /* 0x19 */ GI_CHICKEN, //uses bean message ID
    /* 0x1A */ GI_MASK_KEATON,
    /* 0x1B */ GI_MASK_BUNNY,
    /* 0x1C */ GI_MASK_TRUTH,
    /* 0x1D */ GI_POCKET_EGG,
    /* 0x1E */ GI_POCKET_CUCCO, //uses bean message ID
    /* 0x1F */ GI_MUSHROOM,
    /* 0x20 */ GI_POTION,
    /* 0x21 */ GI_SAW,
    /* 0x22 */ GI_SWORD_BROKEN,
    /* 0x23 */ GI_PERSCRIPTION,
    /* 0x24 */ GI_FROG,
    /* 0x25 */ GI_EYEDROPS,
    /* 0x26 */ GI_CLAIM_CHECK,
    /* 0x27 */ GI_SWORD_KOKIRI,
    /* 0x28 */ GI_SWORD_KNIFE,
    /* 0x29 */ GI_SHIELD_DEKU,   //or blue rupee if you have the shield
    /* 0x2A */ GI_SHIELD_HYLIAN, //or blue rupee if you have the shield
    /* 0x2B */ GI_SHIELD_MIRROR,
    /* 0x2C */ GI_TUNIC_GORON,   //or blue rupee if you have the tunic
    /* 0x2D */ GI_TUNIC_ZORA, //or blue rupee if you have the tunic
    /* 0x2E */ GI_BOOTS_IRON,
    /* 0x2F */ GI_BOOTS_HOVER,
    /* 0x30 */ GI_QUIVER_40,
    /* 0x31 */ GI_QUIVER_50,
    /* 0x32 */ GI_BOMB_BAG_20,
    /* 0x33 */ GI_BOMB_BAG_30,
    /* 0x34 */ GI_BOMB_BAG_40,
    /* 0x35 */ GI_GAUNTLETS_SILVER,
    /* 0x36 */ GI_GAUNTLETS_GOLD,
    /* 0x37 */ GI_SCALE_SILVER,
    /* 0x38 */ GI_SCALE_GOLD,
    /* 0x39 */ GI_AGONY, //stone of agony
    /* 0x3A */ GI_GERUDO_CARD,
    /* 0x3B */ GI_OCARINA_FAIRY, //uses Ocarina of Time message ID
    /* 0x3C */ GI_SEEDS_5,
    /* 0x3D */ GI_HEART_CONTAINER,
    /* 0x3E */ GI_HEART_PIECE,
    /* 0x3F */ GI_BOSS_KEY,
    /* 0x40 */ GI_COMPASS,
    /* 0x41 */ GI_MAP,
    /* 0x42 */ GI_SMALL_KEY,
    /* 0x43 */ GI_MAGIC_SMALL, //blue rupee if chest
    /* 0x44 */ GI_MAGIC_BIG, //blue rupee if chest
    /* 0x45 */ GI_WALLET_ADULT,
    /* 0x46 */ GI_WALLET_GIANT,
    /* 0x47 */ GI_WEIRD_EGG,
    /* 0x48 */ GI_HEART,
    /* 0x49 */ GI_ARROWS_SMALL, //amount changes depending on context
    /* 0x4A */ GI_ARROWS_MEDIUM, //amount changes depending on context
    /* 0x4B */ GI_ARROWS_BIG, //amount changes depending on context
    /* 0x4C */ GI_RUPEE_GREEN,
    /* 0x4D */ GI_RUPEE_BLUE,
    /* 0x4E */ GI_RUPEE_RED,
    /* 0x4F */ GI_HEART_CONTAINER_2,
    /* 0x50 */ GI_MILK_2, //purchased or received
    /* 0x51 */ GI_MASK_GORON,
    /* 0x52 */ GI_MASK_ZORA,
    /* 0x53 */ GI_MASK_GERUDO,
    /* 0x54 */ GI_BRACELET,
    /* 0x55 */ GI_RUPEE_PURPLE,
    /* 0x56 */ GI_RUPEE_GOLD,
    /* 0x57 */ GI_SWORD_BGS,
    /* 0x58 */ GI_ARROW_FIRE,
    /* 0x59 */ GI_ARROW_ICE,
    /* 0x5A */ GI_ARROW_LIGHT,
    /* 0x5B */ GI_SKULL_TOKEN,
    /* 0x5C */ GI_DINS_FIRE,
    /* 0x5D */ GI_FARORES_WIND,
    /* 0x5E */ GI_NAYRUS_LOVE,
    /* 0x5F */ GI_BULLET_BAG_30,
    /* 0x60 */ GI_BULLET_BAG_40,
    /* 0x61 */ GI_STICKS_5,
    /* 0x62 */ GI_STICKS_10,
    /* 0x63 */ GI_NUTS_5_2,
    /* 0x64 */ GI_NUTS_10,
    /* 0x65 */ GI_BOMBS_1,
    /* 0x66 */ GI_BOMBS_10,
    /* 0x67 */ GI_BOMBS_20,
    /* 0x68 */ GI_BOMBS_30,
    /* 0x69 */ GI_SEEDS_30,
    /* 0x6A */ GI_BOMBCHUS_5,
    /* 0x6B */ GI_BOMBCHUS_20,
    /* 0x6C */ GI_FISH,
    /* 0x6D */ GI_BUGS,
    /* 0x6E */ GI_BLUE_FIRE,
    /* 0x6F */ GI_POE,
    /* 0x70 */ GI_BIG_POE,
    /* 0x71 */ GI_DOOR_KEY,          //chest minigame
    /* 0x72 */ GI_RUPEE_GREEN_LOSE,  //chest minigame
    /* 0x73 */ GI_RUPEE_BLUE_LOSE,   //chest minigame
    /* 0x74 */ GI_RUPEE_RED_LOSE,    //chest minigame
    /* 0x75 */ GI_RUPEE_PURPLE_LOSE, //chest minigame
    /* 0x76 */ GI_HEART_PIECE_WIN,   //chest minigame
    /* 0x77 */ GI_STICK_UPGRADE_20,
    /* 0x78 */ GI_STICK_UPGRADE_30,
    /* 0x79 */ GI_NUT_UPGRADE_30,
    /* 0x7A */ GI_NUT_UPGRADE_40,
    /* 0x7B */ GI_BULLET_BAG_50,
    /* 0x7C */ GI_ICE_TRAP, //freezes link when opened
    /* 0x7D */ GI_TEXT_0, //no model appears over Link, shows text id 0 (pocket egg)
    /* 0x7E */ GI_INVALID_2, //crashes when opened
    /* 0x7F */ GI_INVALID_3 //crashes when opened
} GetItemID;

typedef struct GfxPrint
{
    /* 0x00 */ struct GfxPrint*(*callback)(struct GfxPrint*, const char*, size_t);
    /* 0x04 */ Gfx* dlist;
    /* 0x08 */ u16 posX;
    /* 0x0A */ u16 posY;
    /* 0x0C */ u16 baseX;
    /* 0x0E */ u8 baseY;
    /* 0x0F */ u8 flag;
    /* 0x10 */ Color_RGBA8 color;
} GfxPrint;

typedef enum
{
    GFXPRINT_FLAG1 = 1,
    GFXPRINT_USE_RGBA16 = 2,
    GFXPRINT_FLAG4 = 4,
    GFXPRINT_UPDATE_MODE = 8,
    GFXPRINT_FLAG64 = 0x40,
    GFXPRINT_OPEN = 0x80
} GfxPrintFlag;

typedef struct StackEntry
{
    /* 0x00 */ struct StackEntry* next;
    /* 0x04 */ struct StackEntry* prev;
    /* 0x08 */ u32 head;
    /* 0x0C */ u32 tail;
    /* 0x10 */ u32 initValue;
    /* 0x14 */ s32 minSpace;
    /* 0x18 */ const char* name;
} StackEntry;

typedef struct
{
    /* 0x00 */ u32 magic; //IS64
    /* 0x04 */ u32 pos;
    /* 0x08 */ u8 unk_08[0x14-0x08];
    /* 0x14 */ u32 start;
    /* 0x18 */ u8 unk_18[0x20-0x18];
    /* 0x20 */ u8 data[];
} ISVDbg;

typedef struct
{
    /* 0x00 */ u32 vromStart;
    /* 0x04 */ u32 vromEnd;
    /* 0x08 */ u32 romStart;
    /* 0x0C */ u32 romEnd; 
} DmaEntry;

#endif
