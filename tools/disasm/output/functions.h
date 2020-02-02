#ifndef _FUNCTIONS_H_
#define _FUNCTIONS_H_

#include <PR/ultratypes.h>
#include <osint.h>
#include <viint.h>
#include <guint.h>
#include <unk.h>
#include <structs.h>

// UNK_RET func_8002B1E0(UNK_ARGS);
// UNK_RET func_8002D62C(UNK_ARGS);
// UNK_RET func_80077B58(UNK_ARGS);
// UNK_RET func_80077D90(UNK_ARGS);
// UNK_RET func_80078028(UNK_ARGS);
// UNK_RET func_80078068(UNK_ARGS);
// UNK_RET func_800780DC(UNK_ARGS);
// UNK_RET func_80078310(UNK_ARGS);
UNK_RET func_80080060(void); // func_80080060
void func_80080150(UNK_PTR, UNK_PTR); // func_80080150
void func_80080180(UNK_TYPE*, UNK_TYPE, UNK_TYPE); // func_80080180
UNK_RET func_8008019C(void); // func_8008019C
UNK_RET func_800801EC(void); // func_800801EC
UNK_RET func_80080250(void); // func_80080250
UNK_RET func_80080300(UNK_TYPE); // func_80080300
UNK_RET func_8008038C(void); // func_8008038C
void func_80080514(UNK_TYPE); // func_80080514
UNK_RET func_800805E0(UNK_TYPE); // func_800805E0
UNK_RET func_80080748(void); // func_80080748
s32 func_80080790(void*, void*, s32); // func_80080790
void func_800808D4(OSPiHandle* pihandle, OSIoMesg* mb, s32 direction); // func_800808D4
DmadataEntry* func_800808F4(u32); // func_800808F4
s32 func_80080950(u32); // func_80080950
s32 func_800809BC(u32); // func_800809BC
UNK_TYPE* func_800809F4(u32); // func_800809F4
void func_80080A08(s80080A08*); // func_80080A08
void func_80080B84(void*); // func_80080B84
s32 func_80080C04(s80080A08*, UNK_FUN_ARG, UNK_PTR, UNK_TYPE, UNK_TYPE, OSMesgQueue*, UNK_TYPE); // func_80080C04
s32 func_80080C90(UNK_TYPE, UNK_PTR, UNK_TYPE); // func_80080C90
void func_80080D0C(void); // func_80080D0C
void func_80080E00(void); // func_80080E00
// UNK_RET func_80081250(UNK_ARGS);
UNK_RET func_80081754(UNK_PTR, s80085320*, UNK_TYPE, UNK_TYPE); // func_80081754
void func_80081820(void); // func_80081820
void func_80081828(void); // func_80081828
void func_80081830(void); // func_80081830
void func_8008189C(void); // func_8008189C
void func_800818D0(void); // func_800818D0
void func_800818F4(void); // func_800818F4
void func_80081920(UNK_TYPE, UNK_TYPE, UNK_TYPE, UNK_TYPE); // func_80081920
void func_8008193C(UNK_TYPE, UNK_TYPE, UNK_TYPE, UNK_TYPE); // func_8008193C
void func_80081958(UNK_TYPE, UNK_TYPE, UNK_TYPE, UNK_TYPE); // func_80081958
UNK_RET func_800819F0(UNK_PTR, void(*)(UNK_TYPE, UNK_TYPE), UNK_TYPE, UNK_TYPE); // func_800819F0
UNK_RET func_80081AD4(UNK_PTR); // func_80081AD4
UNK_RET func_80081BCC(UNK_PTR, UNK_TYPE(*)(UNK_TYPE, UNK_TYPE), UNK_TYPE); // func_80081BCC
UNK_RET func_80081CA4(UNK_PTR); // func_80081CA4
UNK_RET func_80083E4C(UNK_TYPE*, UNK_TYPE); // func_80083E4C
UNK_RET func_8008439C(UNK_TYPE, UNK_TYPE); // func_8008439C
UNK_RET func_800847CC(UNK_PTR, ...); // func_800847CC
UNK_RET func_8008481C(UNK_TYPE, UNK_TYPE, UNK_PTR, UNK_PTR); // func_8008481C
void func_80084940(void); // func_80084940
void func_80084968(void); // func_80084968
// UNK_RET func_80084DB0(UNK_ARGS);
void func_8008501C(u32, u32, u32, u32, u32); // func_8008501C
void func_80085320(s80085320*, UNK_PTR, UNK_PTR, UNK_TYPE, UNK_TYPE, UNK_PTR); // func_80085320
UNK_RET func_800853F8(s80085320*); // func_800853F8
UNK_TYPE func_80085468(s80085320*); // func_80085468
UNK_TYPE func_800854E0(UNK_ARGS); // func_800854E0
UNK_RET func_80085538(s80085320*); // func_80085538
// UNK_RET func_80086110(UNK_ARGS);
f32 func_80086FDC(void); // func_80086FDC
// UNK_RET func_80087160(UNK_ARGS);
UNK_TYPE func_80087830(UNK_TYPE, UNK_TYPE, UNK_TYPE); // func_80087830
UNK_TYPE func_80087854(u8*, UNK_TYPE, UNK_PTR); // func_80087854
UNK_TYPE func_800878A4(u8*, UNK_TYPE, UNK_TYPE, UNK_TYPE); // func_800878A4
UNK_RET func_80087A6C(UNK_TYPE); // func_80087A6C
void __osSetCause(u32 value); // func_80087B00
s32 osSendMesg(OSMesgQueue* mq, OSMesg msg, s32 flags); // func_80087B10
void func_80087E00(u32); // func_80087E00
void osStopThread(OSThread* t); // func_80087E10
s32 osRecvMesg(OSMesgQueue* mq, OSMesg* msg, s32 flags); // func_80087ED0
OSIntMask osSetIntMask(OSIntMask im); // func_80088010
OSIntMask osGetIntMask(void); // func_800880B0
// UNK_RET func_80088110(UNK_ARGS);
float __sinf(float x); // func_80088350
short sins(unsigned short x); // func_80088510
OSTask* _VirtualToPhysicalTask(OSTask* intp); // func_80088580
void osSpTaskLoad(OSTask* intp); // func_8008868C
void osSpTaskStartGo(OSTask* tp); // func_800887F4
long long __ull_rshift(unsigned long long left, long long right); // func_80088840
unsigned long long __ull_rem(unsigned long long left, unsigned long long right); // func_8008886C
unsigned long long __ull_div(unsigned long long left, unsigned long long right); // func_800888A8
long long __ll_lshift(long long left, long long right); // func_800888E4
long long __ll_rem(long long left, unsigned long long right); // func_80088910
long long __ll_div(long long left, long long right); // func_8008894C
long long __ll_mul(long long left, long long right); // func_800889A8
void __ull_divremi(unsigned long long* quotient, unsigned long long* remainder, unsigned long long dividend, unsigned short divisor); // func_800889D8
long long __ll_mod(long long left, long long right); // func_80088A38
long long __ll_rshift(long long left, long long right); // func_80088AD4
UNK_RET __osExceptionPreamble(UNK_ARGS); // func_80088B00
UNK_RET __osException(UNK_ARGS); // func_80088B10
UNK_RET send_mesg(UNK_ARGS); // func_8008905C
UNK_RET handle_CpU(UNK_ARGS); // func_80089110
UNK_RET __osEnqueueAndYield(OSThread**); // func_80089144
UNK_RET __osEnqueueThread(UNK_PTR, OSThread*); // func_80089244
OSThread* __osPopThread(OSThread**); // func_8008928C
UNK_RET __osDispatchThread(void); // func_800892A4
UNK_RET __osCleanupThread(UNK_ARGS); // func_80089420
UNK_RET __osDequeueThread(OSThread**, OSThread*); // func_80089430
void osDestroyThread(OSThread* t); // func_80089470
UNK_RET _blkclr(void*, size_t); // func_80089630
void __osSiCreateAccessQueue(void); // func_80089AA0
void __osSiGetAccess(void); // func_80089AF0
void __osSiRelAccess(void); // func_80089B34
s32 osContInit(OSMesgQueue* mq, u8* bitpattern, OSContStatus* data); // func_80089B60
void __osContGetInitData(u8* pattern, OSContStatus* data); // func_80089CBC
void __osPackRequestData(u8 cmd); // func_80089D68
void osCreateThread(OSThread* t, OSId id, void (*entry)(void*), void* arg, void* sp, OSPri p); // func_80089E40
s32 osContStartReadData(OSMesgQueue* mq); // func_80089F90
void osContGetReadData(OSContPad* data); // func_8008A014
u32 osVirtualToPhysical(void* virtualAddress); // func_8008A540
u32 __osGetSR(void); // func_8008A5C0
void __osSetSR(u32 value); // func_8008A5D0
void osWritebackDCache(void *vaddr, s32 nbytes); // func_8008A5E0
void func_8008A660(void); // func_8008A660
void osInitialize(void); // func_8008A6FC
void func_8008A9A8(void); // func_8008A9A8
void guPerspectiveF(float* mf[4], u16* perspNorm, float fovy, float aspect, float near, float far, float scale); // func_8008AA50
void guPerspective(Mtx* m, u16* perspNorm, float fovy, float aspect, float near, float far, float scale); // func_8008AC80
s32 __osSpRawStartDma(s32 direction, u32 devAddr, void* dramAddr, u32 size); // func_8008ACE0
s32 __osSiRawStartDma(s32 direction, void* dramAddr); // func_8008AD70
UNK_RET func_8008AE70(UNK_TYPE); // func_8008AE70
s32 __osSiRawReadIo(u32 devAddr, u32* data); // func_8008AEE0
OSId osGetThreadId(OSThread* t); // func_8008AF30
void osSpTaskYield(void); // func_8008AF50
// UNK_RET func_8008AF70(UNK_ARGS);
UNK_RET func_8008B650(UNK_PTR); // func_8008B650
u32  __osGetConfig(void); // func_8008B6B0
void  __osSetConfig(u32 value); // func_8008B6C0
int osStopTimer(OSTimer* t); // func_8008BE70
u32 __osProbeTLB(void*); // func_8008BF60
void osCreatePiManager(OSPri pri, OSMesgQueue* cmdQ, OSMesg* cmdBuf, s32 cmdMsgCnt); // func_8008C020
void __osPiCreateAccessQueue(void); // func_8008C190
void __osPiGetAccess(void); // func_8008C1E0
void __osPiRelAccess(void); // func_8008C224
u32 osGetCount(void); // func_8008D2C0
UNK_TYPE func_8008D350(void); // func_8008D350
void osSetEventMesg(OSEvent e, OSMesgQueue* mq, OSMesg m); // func_8008D640
f32 sqrtf(f32); // func_8008D700
s32 osContStartQuery(OSMesgQueue* mq); // func_8008D730
void osContGetQuery(OSContStatus* data); // func_8008D7AC
// UNK_RET func_8008D7D0(UNK_ARGS);
int _Printf(void* (*pfn)(void*), void* arg, const unsigned char* fmt, va_list ap); // func_8008E050
UNK_RET func_8008E698(UNK_ARGS); // func_8008E698
void osUnmapTLBAll(void); // func_8008EDE0
s32 osEPiStartDma(OSPiHandle* pihandle, OSIoMesg* mb, s32 direction); // func_8008EE30
unsigned char* strchr(const unsigned char* s, int c); // func_8008F1A0
size_t strlen(const unsigned char* s); // func_8008F1E0
void* memcpy(void* s1, const void* s2, size_t n); // func_8008F208
void osCreateMesgQueue(OSMesgQueue* mq, OSMesg* msg, s32 msgCount); // func_8008F240
void osInvalICache(void* vaddr, s32 nbytes); // func_8008F270
void osInvalDCache(void* vaddr, s32 nbytes); // func_8008F2F0
void __osTimerServicesInit(void); // func_8008F3A0
void __osTimerInterrupt(void); // func_8008F42C
void __osSetTimerIntr(OSTime tim); // func_8008F5A4
OSTime __osInsertTimer(OSTimer* t); // func_8008F644
int __osSpDeviceBusy(void); // func_8008FA00
int __osSiDeviceBusy(void); // func_8008FA30
s32 osJamMesg(OSMesgQueue* mq, OSMesg msg, s32 flags); // func_8008FAB0
void osSetThreadPri(OSThread* t, OSPri p); // func_8008FC00
OSPri osGetThreadPri(OSThread* t); // func_8008FCE0
UNK_RET func_8008FE60(UNK_PTR); // func_8008FE60
void osSpTaskYielded(void); // func_800902A0
UNK_RET memcmp(UNK_ARGS); // func_80090300
OSTime osGetTime(void); // func_80090420
UNK_RET __osSetGlobalIntMask(UNK_ARGS); // func_80090680
void __osSetCompare(u32 value); // func_80091280
u32 __osGetCompare(void); // func_80091290
u32 osDpGetStatus(void); // func_800912A0
void osDpSetStatus(u32 data); // func_800912B0
void _bcopy(const void* src, void* dst, size_t n); // func_800912C0
UNK_RET __osResetGlobalIntMask(UNK_ARGS); // func_800915D0
void guOrthoF(float* mf[4], float l, float r, float b, float t, float n, float f, float scale); // func_800918A0
void guOrtho(Mtx* m, float l, float r, float b, float t, float n, float f, float scale); // func_800919F4
u32 __osDisableInt(void); // func_80091A60
void __osRestoreInt(u32); // func_80091AD0
void __osViInit(void); // func_80091AF0
void __osViSwapContext(void); // func_80091C10
OSMesgQueue* osPiGetCmdQueue(void); // func_80091F10
float __cosf(float x); // func_80091F40
UNK_RET func_80092100(UNK_TYPE); // func_80092100
short coss(unsigned short x); // func_80092260
void osSetTime(OSTime ticks); // func_80092290
// UNK_RET func_800923E0(UNK_ARGS);
OSPiHandle* func_80092920(void); // func_80092920
s32 osContSetCh(u8 ch); // func_80092C80
void __osSetFpcCsr(u32 value); // func_80092CE0
u32 __osGetFpcCsr(void); // func_80092CF0
u32 osAiGetLength(void); // func_80093BA0
void osMapTLBRdb(void); // func_80093C00
void osYieldThread(void); // func_80093C60
u32 __osGetCause(void); // func_80093D90
int osSetTimer(OSTimer* t, OSTime value, OSTime interval, OSMesgQueue* mq, OSMesg msg); // func_80094150
void _Ldtob(_Pft* px, unsigned char code); // func_800942E0
UNK_RET func_80094770(UNK_ARGS); // func_80094770
UNK_RET func_80094828(UNK_ARGS); // func_80094828
ldiv_t ldiv(long numer, long denom); // func_80094DF0
lldiv_t lldiv(long long numer, long long denom); // func_80094E74
void _Litob(_Pft* px, unsigned char code); // func_80094F80
s32 __osSiRawWriteIo(u32 devAddr, u32 data); // func_80095220
u32 __osSpGetStatus(void); // func_80095270
void __osSpSetStatus(u32 data); // func_80095280
void osCreateViManager(OSPri pri); // func_800952A0
__OSViContext* __osViGetCurrentContext(void); // func_800955B0
void osWritebackDCacheAll(void); // func_800955C0
OSThread* __osGetCurrFaultedThread(void); // func_800955F0
void guMtxF2L(float* mf[4], Mtx* m); // func_80095740
void osStartThread(OSThread* t); // func_800957B0
void osViSetYScale(f32); // func_80095900
void osViSetXScale(f32); // func_80095950
long long __d_to_ll(double d); // func_80095A60
long long __f_to_ll(float f); // func_80095A7C
unsigned long long __d_to_ull(double d); // func_80095A98
unsigned long long __f_to_ull(float f); // func_80095B38
double __ll_to_d(long long l); // func_80095BD4
float __ll_to_f(long long l); // func_80095BEC
double __ull_to_d(unsigned long long l); // func_80095C04
float __ull_to_f(unsigned long long l); // func_80095C38
s32 __osSpSetPc(u32 data); // func_80096510
UNK_RET func_80096820(UNK_TYPE); // func_80096820
u32 func_800968B0(const u8*, const u8*); // func_800968B0
UNK_RET osViModeNtscHpf1(UNK_ARGS); // func_80097540
UNK_RET osViModeNtscHpn1(UNK_ARGS); // func_80097EB0
UNK_RET osViModeNtscLan1(UNK_ARGS); // func_80097FC0
UNK_RET osViModeMpalLan1(UNK_ARGS); // func_80098010
// UNK_RET func_800A15C8(UNK_ARGS);
// UNK_RET func_800A2000(UNK_ARGS);
// UNK_RET func_800A457C(UNK_ARGS);
// UNK_RET func_800A49FC(UNK_ARGS);
// UNK_RET func_800A51A0(UNK_ARGS);
UNK_RET func_800A5AC0(void*, UNK_TYPE); // func_800A5AC0
UNK_RET func_800A5B6C(s800A5AC0*, GlobalContext*); // func_800A5B6C
UNK_RET func_800A5B98(s800A5AC0*, UNK_TYPE); // func_800A5B98
UNK_RET func_800A5C28(s800A5AC0*); // func_800A5C28
UNK_RET func_800A5C60(s800A5AC0*, UNK_TYPE); // func_800A5C60
UNK_RET func_800A5CB8(s800A5AC0*, UNK_TYPE); // func_800A5CB8
// UNK_RET func_800A5D00(UNK_ARGS);
UNK_RET func_800A63A8(z_Actor* a0, GlobalContext* a1); // func_800A63A8
UNK_RET func_800A640C(z_Actor* a0, GlobalContext* a1); // func_800A640C
UNK_RET func_800A6650(z_Actor* a0, GlobalContext* a1); // func_800A6650
UNK_RET func_800A6A40(z_Actor* a0, GlobalContext* a1); // func_800A6A40
UNK_RET func_800A72AC(z_Actor* a0, GlobalContext* a1); // func_800A72AC
UNK_RET func_800A73A0(z_Actor* a0, GlobalContext* a1); // func_800A73A0
UNK_RET func_800A74D8(z_Actor* a0, GlobalContext* a1); // func_800A74D8
UNK_RET func_800A75B8(z_Actor* a0, GlobalContext* a1); // func_800A75B8
s16 func_800A7650(s16); // func_800A7650
// UNK_RET func_800A81F0(UNK_ARGS);
// UNK_RET func_800AB5D0(UNK_ARGS);
// UNK_RET func_800ACBF0(UNK_ARGS);
// UNK_RET func_800AE2A0(UNK_ARGS);
// UNK_RET func_800AE930(UNK_ARGS);
// UNK_RET func_800AF710(UNK_ARGS);
void effect_ss_init(GlobalContext* ctxt, s32 numEntries); // func_800B0050
void effect_ss_clear(GlobalContext* ctxt); // func_800B0140
z_LoadedParticleEntry* effect_ss_get_table(void); // func_800B0200
void effect_ss_delete(z_LoadedParticleEntry* a0); // func_800B0210
void effect_ss_reset_entry(z_LoadedParticleEntry* particle); // func_800B0270
s32 effect_ss_find_free_space(u32 priority, u32* tableEntry); // func_800B0304
void func_800B043C(GlobalContext* ctxt, z_LoadedParticleEntry* a1); // func_800B043C
void effect_ss_load_particle(GlobalContext* ctxt, u32 type, u32 priority, void* initData); // func_800B04D4
void effect_ss_update_particle(GlobalContext* ctxt, u32 index); // func_800B067C
void effect_ss_update_all_particles(GlobalContext* ctxt); // func_800B071C
void effect_ss_draw_particle(GlobalContext* ctxt, s32 index); // func_800B07D8
void effect_ss_draw_all_particles(GlobalContext* ctxt); // func_800B081C
s16 func_800B096C(s16 a0, s16 a1, s32 a2); // func_800B096C
s16 func_800B09D0(s16 a0, s16 a1, f32 a2); // func_800B09D0
u8 func_800B0A24(u8 a0, u8 a1, f32 a2); // func_800B0A24
// UNK_RET func_800B0B10(UNK_ARGS);
UNK_RET func_800B16B8(GlobalContext*, z_Vector3D*, UNK_PTR, UNK_PTR, UNK_PTR, UNK_PTR); // func_800B16B8
// UNK_RET func_800B32D0(UNK_ARGS);
// UNK_RET func_800B3880(UNK_ARGS);
// UNK_RET func_800B3AD0(UNK_ARGS);
UNK_RET func_800B3BA4(UNK_PTR, f32, UNK_PTR, f32); // func_800B3BA4
UNK_TYPE func_800B3FC0(UNK_TYPE); // func_800B3FC0
UNK_TYPE func_800B5BB0(GlobalContext*, UNK_TYPE); // func_800B5BB0
UNK_TYPE func_800B5D6C(GlobalContext*, s16); // func_800B5D6C
UNK_RET func_800B5DB0(GlobalContext*, s16); // func_800B5DB0
UNK_RET func_800B670C(z_Actor*); // func_800B670C
UNK_RET func_800B675C(s800A5AC0*, UNK_TYPE); // func_800B675C
UNK_RET func_800B67E0(z_Actor*, f32); // func_800B67E0
UNK_RET func_800B67FC(GlobalContext*, z_Actor*); // func_800B67FC
UNK_RET func_800B6A88(z_Actor*); // func_800B6A88
UNK_RET func_800B78B8(GlobalContext*, z_Actor*, f32, f32, f32, UNK_TYPE); // func_800B78B8
UNK_RET func_800B8050(z_Actor*, GlobalContext*, UNK_TYPE); // func_800B8050
UNK_RET func_800B8118(z_Actor*, GlobalContext*, UNK_TYPE); // func_800B8118
UNK_TYPE func_800B84D0(s800A5AC0*, UNK_TYPE); // func_800B84D0
UNK_RET func_800B863C(s800A5AC0*, UNK_TYPE); // func_800B863C
UNK_TYPE func_800B867C(s800A5AC0*); // func_800B867C
UNK_TYPE func_800B89F8(z_Actor*, GlobalContext*); // func_800B89F8
UNK_RET func_800B8A1C(z_Actor*, GlobalContext*, UNK_TYPE, f32, f32); // func_800B8A1C
z_Actor* func_800BAC60(UNK_PTR, GlobalContext*, UNK_TYPE, f32, f32, f32, UNK_TYPE, UNK_TYPE, UNK_TYPE, UNK_TYPE); // func_800BAC60
UNK_RET func_800BDFC0(UNK_TYPE, UNK_TYPE, UNK_TYPE, s800A5AC0*); // func_800BDFC0
void func_800BE03C(GlobalContext*, UNK_TYPE); // func_800BE03C
// UNK_RET func_800BFB80(UNK_ARGS);
UNK_TYPE func_800C6024(UNK_TYPE); // func_800C6024
UNK_TYPE func_800C6188(GlobalContext*, UNK_PTR, z_Actor*, UNK_TYPE); // func_800C6188
UNK_TYPE func_800C6248(UNK_TYPE, UNK_TYPE); // func_800C6248
UNK_RET func_800C64CC(GlobalContext*, UNK_PTR, UNK_TYPE); // func_800C64CC
UNK_RET func_800C9564(UNK_TYPE, UNK_PTR); // func_800C9564
UNK_RET func_800CAAD0(UNK_TYPE, UNK_TYPE, UNK_TYPE); // func_800CAAD0
UNK_RET func_800CAC0C(UNK_TYPE, UNK_TYPE, UNK_TYPE); // func_800CAC0C
UNK_RET func_800CACA0(UNK_TYPE, UNK_TYPE, UNK_TYPE); // func_800CACA0
UNK_TYPE func_800CAD2C(UNK_TYPE, UNK_TYPE, UNK_TYPE); // func_800CAD2C
UNK_RET func_800CAE10(z_Actor*, UNK_TYPE); // func_800CAE10
UNK_RET func_800CAE88(UNK_TYPE); // func_800CAE88
UNK_RET func_800CAF24(UNK_TYPE); // func_800CAF24
UNK_RET func_800CAF38(UNK_TYPE); // func_800CAF38
s800E03A0* func_800E03A0(s32); // func_800E03A0
void func_800E03CC(u8*); // func_800E03CC
// UNK_RET func_800E0410(UNK_ARGS);
void func_800E119C(GlobalContext*, UNK_PTR); // func_800E119C
void func_800E11EC(GlobalContext*, UNK_PTR); // func_800E11EC
void func_800E130C(GlobalContext*, UNK_PTR, z_Actor*, UNK_PTR); // func_800E130C
UNK_RET func_800E1374(UNK_TYPE, UNK_PTR, z_Actor*, UNK_PTR); // func_800E1374
void func_800E2558(GlobalContext*, UNK_PTR, UNK_PTR); // func_800E2558
UNK_RET func_800E2740(GlobalContext*, UNK_PTR, UNK_PTR); // func_800E2740
UNK_RET func_800E2928(UNK_TYPE, UNK_TYPE, UNK_PTR); // func_800E2928
void func_800E7DF8(z_Actor*, UNK_PTR); // func_800E7DF8
void func_800E8EA0(GlobalContext* a0, z_Actor* a1, u16 a2); // func_800E8EA0
UNK_TYPE func_800E8ED0(UNK_TYPE a0); // func_800E8ED0
void func_800E8EE0(UNK_TYPE a0); // func_800E8EE0
UNK_TYPE func_800E8EEC(UNK_TYPE a0); // func_800E8EEC
void func_800E8EFC(UNK_TYPE a0); // func_800E8EFC
UNK_TYPE func_800E8F08(s16* a0, s16* a1); // func_800E8F08
UNK_RET func_800E8FA4(UNK_TYPE a0, UNK_TYPE a1, UNK_TYPE a2, UNK_TYPE a3); // func_800E8FA4
UNK_RET func_800E9138(UNK_ARGS); // func_800E9138
UNK_RET func_800E9250(UNK_ARGS); // func_800E9250
// UNK_RET func_800E93E0(UNK_ARGS);
// UNK_RET func_800E9470(UNK_ARGS);
// UNK_RET func_800E9C90(UNK_ARGS);
UNK_RET func_800EE320(GlobalContext*, UNK_TYPE); // func_800EE320
// UNK_RET func_800EFE60(UNK_ARGS);
UNK_RET func_800F0568(GlobalContext*, z_Vector3D*, UNK_TYPE, UNK_TYPE); // func_800F0568
// UNK_RET func_800F2620(UNK_ARGS);
// UNK_RET func_800F2D30(UNK_ARGS);
// UNK_RET func_800F3940(UNK_ARGS);
// UNK_RET func_800F42A0(UNK_ARGS);
// UNK_RET func_800F4A10(UNK_ARGS);
// UNK_RET func_800F4F40(UNK_ARGS);
// UNK_RET func_800F5090(UNK_ARGS);
// UNK_RET func_800FEC90(UNK_ARGS);
f32 func_800FED44(s16); // func_800FED44
f32 func_800FED84(s16); // func_800FED84
f32 func_800FF8D4(z_Vector3D* a0, z_Vector3D* a1, z_Vector3D* a2); // func_800FF8D4
void func_800FFADC(z_Actor*, z_ActorCompInitEntry*); // func_800FFADC
f32 func_800FFCD8(f32*, f32, f32, f32, f32); // func_800FFCD8
s16 func_800FFEBC(s16*, s16, s16, s16, s16); // func_800FFEBC
// UNK_RET func_80100290(UNK_ARGS);
UNK_TYPE func_80100504(u32); // func_80100504
// UNK_RET func_801005C0(UNK_ARGS);
// UNK_RET func_801019A0(UNK_ARGS);
UNK_RET func_80101BC8(UNK_TYPE, z_GraphicsContext*); // func_80101BC8
UNK_RET func_801022F0(UNK_TYPE, UNK_TYPE, UNK_TYPE, GlobalContext*); // func_801022F0
UNK_TYPE func_80102580(UNK_PTR, z_GraphicsContext*); // func_80102580
void* func_80102C88(u32); // func_80102C88
void func_80102CE0(void*); // func_80102CE0
// UNK_RET func_80102E40(UNK_ARGS);
// UNK_RET func_801094A0(UNK_ARGS);
// UNK_RET func_8010A000(UNK_ARGS);
// UNK_RET func_8010A760(UNK_ARGS);
// UNK_RET func_8010CB80(UNK_ARGS);
UNK_RET func_80112E80(GlobalContext*, UNK_TYPE); // func_80112E80
UNK_RET func_80115908(GlobalContext*, UNK_TYPE); // func_80115908
// UNK_RET func_801224E0(UNK_ARGS);
// UNK_RET func_801226E0(UNK_ARGS);
// UNK_RET func_80129EF0(UNK_ARGS);
// UNK_RET func_8012A080(UNK_ARGS);
// UNK_RET func_8012BC50(UNK_ARGS);
UNK_RET func_8012C28C(z_GraphicsContext*); // func_8012C28C
UNK_RET func_8012C2DC(z_GraphicsContext*); // func_8012C2DC
u32* func_8012C724(u32*); // func_8012C724
// UNK_RET func_8012D510(UNK_ARGS);
// UNK_RET func_8012F2E0(UNK_ARGS);
u8 func_8012F608(UNK_PTR, UNK_TYPE); // func_8012F608
UNK_TYPE func_8012F668(UNK_PTR, UNK_TYPE); // func_8012F668
// UNK_RET func_801307C0(UNK_ARGS);
void func_80131758(GlobalContext*, UNK_TYPE); // func_80131758
// UNK_RET func_801322C0(UNK_ARGS);
// UNK_RET func_801330E0(UNK_ARGS);
// UNK_RET func_80137970(UNK_ARGS);
// UNK_RET func_80138410(UNK_ARGS);
UNK_RET func_80138C88(UNK_PTR, UNK_PTR, UNK_PTR); // func_80138C88
UNK_TYPE func_80139188(UNK_PTR, UNK_PTR); // func_80139188
UNK_RET func_80139894(UNK_PTR, UNK_TYPE, UNK_TYPE, UNK_TYPE, UNK_TYPE, UNK_TYPE, UNK_TYPE, f32, f32, f32); // func_80139894
// UNK_RET func_8013A7C0(UNK_ARGS);
// UNK_RET func_8013EE60(UNK_ARGS);
// UNK_RET func_80140260(UNK_ARGS);
// UNK_RET func_801418B0(UNK_ARGS);
// UNK_RET func_80142440(UNK_ARGS);
// UNK_RET func_801435A0(UNK_ARGS);
// UNK_RET func_80143A10(UNK_ARGS);
// UNK_RET func_80147520(UNK_ARGS);
// UNK_RET func_801588D0(UNK_ARGS);
// UNK_RET func_8015E750(UNK_ARGS);
// UNK_RET func_80160C00(UNK_ARGS);
// UNK_RET func_80163700(UNK_ARGS);
// UNK_RET func_80163DC0(UNK_ARGS);
// UNK_RET func_80164AF0(UNK_ARGS);
// UNK_RET func_801651B0(UNK_ARGS);
// UNK_RET func_80165460(UNK_ARGS);
u32* func_801660B8(GlobalContext*, u32*, UNK_TYPE); // func_801660B8
s32 func_8016A01C(GlobalContext*); // func_8016A01C
// UNK_RET func_8016AC10(UNK_ARGS);
// UNK_RET func_8016FCF0(UNK_ARGS);
void* func_80172AC8(UNK_PTR, u32); // func_80172AC8
// UNK_RET func_80173130(UNK_ARGS);
// UNK_RET func_80173BF0(UNK_ARGS);
// UNK_RET func_80173D30(UNK_ARGS);
// UNK_RET func_80174AA0(UNK_ARGS);
UNK_RET func_80174BF0(UNK_TYPE); // func_80174BF0
// UNK_RET func_80174F10(UNK_ARGS);
// UNK_RET func_80176280(UNK_ARGS);
// UNK_RET func_80177390(UNK_ARGS);
// UNK_RET func_80178750(UNK_ARGS);
// UNK_RET func_80178F30(UNK_ARGS);
f32 func_801795C0(f32); // func_801795C0
f32 func_8017A6D4(z_Vector3D*); // func_8017A6D4
UNK_TYPE func_80180100(f32, f32); // func_80180100
// UNK_RET func_80180160(UNK_ARGS);
UNK_RET func_8018039C(f32, f32, f32, UNK_TYPE); // func_8018039C
UNK_TYPE func_80181A40(z_GraphicsContext*); // func_80181A40
void func_80183070(void); // func_80183070
// UNK_RET func_801830A0(UNK_ARGS);
UNK_RET func_8018349C(UNK_TYPE, UNK_TYPE); // func_8018349C
UNK_RET func_8019F0C8(u16); // func_8019F0C8
UNK_RET func_8019F128(u16); // func_8019F128
UNK_RET func_8019F1C0(UNK_TYPE, u16); // func_8019F1C0
UNK_RET func_8019FAD8(UNK_PTR, UNK_TYPE, f32); // func_8019FAD8
UNK_RET func_801A72CC(UNK_PTR); // func_801A72CC
// UNK_RET func_80800000(UNK_ARGS);
// UNK_RET func_809C1BB0(UNK_ARGS);
// UNK_RET func_809C1CAC(UNK_ARGS);
// UNK_RET func_809C1E00(UNK_ARGS);

#endif
