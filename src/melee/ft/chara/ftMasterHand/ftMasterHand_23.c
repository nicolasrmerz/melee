#include "ftMasterHand.h"

// 80154A78 151658
// https://decomp.me/scratch/ci0xf
void func_80154A78(HSD_GObj* gobj) {
    Fighter* ft;
    MasterHandAttributes* attr;

    ft = gobj->user_data;
    attr = ft->x10C_ftData->ext_attr;
    ft->x2200_ftcmd_var1 = 0;
    Fighter_ActionStateChange_800693AC(gobj, 0x17A, 0, 0, 0.0f, 1.0f, 0.0f);
    func_8006EBA4(gobj);
    ft->x2222_flag.bits.b2 = 1;
    func_8007E2F4(ft, 0x1FFU);
    func_8007E2FC(gobj);
    func_80155B80(ft->x1A58);
    ft->x234C_pos.x = attr->x118_pos.x;
    ft->x234C_pos.y = attr->x118_pos.y;
    ft->x234C_pos.z = 0.0f;
}



// 80154B2C 15170C
// https://decomp.me/scratch/6WD6p
void lbl_80154B2C(HSD_GObj* gobj) {
    Fighter* ft;
    s32 unused[2];

    ft = gobj->user_data;
    if (ft->x2200_ftcmd_var1 != 0) {
        func_8015C5F8(gobj);
        ft->x2200_ftcmd_var1 = 0;
    }
    if (func_8006F238(gobj) == 0) {
        if (((Fighter*)gobj->user_data)->sa.masterhand.x2250 == 0x17B) {
            func_80154E78(gobj);
        } else {
            func_80155014(gobj);
        }
    }
}



// 80154BB0 151790
void lbl_80154BB0(HSD_GObj* arg0) {
    Fighter* ft = arg0->user_data;
    if (Player_GetPlayerSlotType(ft->xC_playerID) == 0) {
        func_8015BD20(arg0);
    }
}



// 80154BF4 1517D4
// https://decomp.me/scratch/D7Kd4
void lbl_80154BF4(HSD_GObj* gobj) {
    Fighter* ft;
    MasterHandAttributes* attr;

    ft = gobj->user_data;
    attr = ft->x10C_ftData->ext_attr;
    func_80085134(gobj);
    func_8015BE40(gobj, &ft->x234C_pos, &ft->x2358_stateVar7, attr->x2C, attr->x28);
}



// 80154C54 151834
// https://decomp.me/scratch/Pp9nI
void lbl_80154C54(HSD_GObj* gobj) {
    f32 temp_f1;
    Fighter* ft;

    ft = gobj->user_data;
    if (ft->x2358_stateVar7 == 0.0f) {
        ft->x80_self_vel.z = 0.0f;
        ft->x80_self_vel.y = 0.0f;
        ft->x80_self_vel.x = 0.0f;
    }
}