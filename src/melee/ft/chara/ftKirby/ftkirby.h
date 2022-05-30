#include "melee/ft/ftcommon.h"
#include "melee/lb/lbvector.h"

typedef struct _ftKirbyAttributes {
    f32 x0;
    f32 x4; 
    f32 x8;
    f32 xC;
    f32 x10;
    s32 x14;
    f32 x18;
    s32 x1C;
    s32 x20;
    s32 x24;
    s32 x28;
    s32 x2C;
    u8 data_filler_1[0x424 - 0x30];
} ftKirbyAttributes;