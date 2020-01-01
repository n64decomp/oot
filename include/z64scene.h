#ifndef _Z64SCENE_H_
#define _Z64SCENE_H_

typedef struct
{
    /* 0x00 */ u32 sceneVromStart;
    /* 0x04 */ u32 sceneVromEnd;
    /* 0x08 */ u32 titleVromStart;
    /* 0x0C */ u32 titleVromEnd;
    /* 0x10 */ u8  unk_10;
    /* 0x11 */ u8  config;
    /* 0x12 */ u8  unk_12;
    /* 0x13 */ u8  unk_13;
} Scene; // size = 0x14

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 data2;
} SCmdBase;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdSpawnList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdActorList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdCsCameraList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdColHeader;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdRoomList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ s8  unk_04;
    /* 0x05 */ s8  unk_05;
    /* 0x06 */ s8  unk_06;
    /* 0x07 */ u8  unk_07;
} SCmdWindSettings;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdEntranceList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  naviMsgNum;
    /* 0x04 */ u32 keepObjectId;
} SCmdSpecialFiles;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 data2;
} SCmdRoomBehavior;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdMesh;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdObjectList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdLightList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdPathList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdTransiActorList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  num;
    /* 0x04 */ u32 segment;
} SCmdLightSettingList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  hour;
    /* 0x05 */ u8  min;
    /* 0x06 */ u8  unk_06;
} SCmdTimeSettings;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  skyboxId;
    /* 0x05 */ u8  unk_05;
    /* 0x06 */ u8  unk_06;
} SCmdSkyboxSettings;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[2];
    /* 0x04 */ u8  unk_04;
    /* 0x05 */ u8  unk_05;
} SCmdSkyboxDisables;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdExitList;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  bgmId;
    /* 0x02 */ char pad[4];
    /* 0x06 */ u8  nighttimeSFX;
    /* 0x07 */ u8  musicSeq;
} SCmdSoundSettings;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x02 */ char pad[5];
    /* 0x07 */ u8  echo;
} SCmdEchoSettings;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdCutsceneData;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 segment;
} SCmdAltHeaders;

typedef struct
{
    /* 0x00 */ u8  code;
    /* 0x01 */ u8  data1;
    /* 0x04 */ u32 area;
} SCmdMiscSettings;

typedef union
{
    SCmdBase             base;
    SCmdSpawnList        spawnList;
    SCmdActorList        actorList;
    SCmdCsCameraList     csCameraList;
    SCmdRoomList         roomList;
    SCmdEntranceList     entranceList;
    SCmdObjectList       objectList;
    SCmdLightList        lightList;
    SCmdPathList         pathList;
    SCmdTransiActorList  transiActorList;
    SCmdLightSettingList lightSettingList;
    SCmdExitList         exitList;
    SCmdColHeader        colHeader;
    SCmdMesh             mesh;
    SCmdSpecialFiles     specialFiles;
    SCmdCutsceneData     cutsceneData;
    SCmdRoomBehavior     roomBehavior;
    SCmdWindSettings     windSettings;
    SCmdTimeSettings     timeSettings;
    SCmdSkyboxSettings   skyboxSettings;
    SCmdSkyboxDisables   skyboxDisables;
    SCmdSoundSettings    soundSettings;
    SCmdEchoSettings     echoSettings;
    SCmdMiscSettings     miscSettings;
    SCmdAltHeaders       altHeaders;
} SceneCmd; // size = 0x8

#endif
