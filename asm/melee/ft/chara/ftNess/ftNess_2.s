.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240
.global lbl_80114BF4
lbl_80114BF4:
/* 80114BF4 001117D4  7C 08 02 A6 */	mflr r0
/* 80114BF8 001117D8  38 80 00 E0 */	li r4, 0xe0
/* 80114BFC 001117DC  90 01 00 04 */	stw r0, 4(r1)
/* 80114C00 001117E0  38 A0 00 7F */	li r5, 0x7f
/* 80114C04 001117E4  38 C0 00 40 */	li r6, 0x40
/* 80114C08 001117E8  94 21 FF F8 */	stwu r1, -8(r1)
/* 80114C0C 001117EC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80114C10 001117F0  4B F7 35 39 */	bl func_80088148
/* 80114C14 001117F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80114C18 001117F8  38 21 00 08 */	addi r1, r1, 8
/* 80114C1C 001117FC  7C 08 03 A6 */	mtlr r0
/* 80114C20 00111800  4E 80 00 20 */	blr 

.global func_80114C24
func_80114C24:
/* 80114C24 00111804  7C 08 02 A6 */	mflr r0
/* 80114C28 00111808  38 E0 00 00 */	li r7, 0
/* 80114C2C 0011180C  90 01 00 04 */	stw r0, 4(r1)
/* 80114C30 00111810  38 80 01 55 */	li r4, 0x155
/* 80114C34 00111814  38 A0 00 00 */	li r5, 0
/* 80114C38 00111818  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80114C3C 0011181C  38 C0 00 00 */	li r6, 0
/* 80114C40 00111820  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80114C44 00111824  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80114C48 00111828  7C 7E 1B 78 */	mr r30, r3
/* 80114C4C 0011182C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80114C50 00111830  88 1F 22 18 */	lbz r0, 0x2218(r31)
/* 80114C54 00111834  50 E0 3E 30 */	rlwimi r0, r7, 7, 0x18, 0x18
/* 80114C58 00111838  98 1F 22 18 */	stb r0, 0x2218(r31)
/* 80114C5C 0011183C  90 FF 22 00 */	stw r7, 0x2200(r31)
# SPLIT NO LATER THAN HERE
/* 80114C60 00111840  C0 22 9C D8 */	lfs f1, lbl_804D96B8/*0.0f*/@sda21(r2)
# SPLIT NO EARLIER THAN HERE
/* 80114C64 00111844  C0 42 9C DC */	lfs f2, lbl_804D96BC/*1.0f*/@sda21(r2)
/* 80114C68 00111848  FC 60 08 90 */	fmr f3, f1
/* 80114C6C 0011184C  4B F5 47 41 */	bl Fighter_ActionStateChange_800693AC
/* 80114C70 00111850  7F C3 F3 78 */	mr r3, r30
/* 80114C74 00111854  4B F5 9F 31 */	bl func_8006EBA4
/* 80114C78 00111858  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80114C7C 0011185C  38 7E 00 00 */	addi r3, r30, 0
/* 80114C80 00111860  38 9F 00 B0 */	addi r4, r31, 0xb0
/* 80114C84 00111864  38 A0 00 2A */	li r5, 0x2a
/* 80114C88 00111868  48 19 87 F1 */	bl func_802AD478
/* 80114C8C 0011186C  28 03 00 00 */	cmplwi r3, 0
/* 80114C90 00111870  90 7F 22 48 */	stw r3, 0x2248(r31)
/* 80114C94 00111874  41 82 00 14 */	beq lbl_80114CA8
/* 80114C98 00111878  3C 60 80 11 */	lis r3, func_801148F8@ha
/* 80114C9C 0011187C  38 03 48 F8 */	addi r0, r3, func_801148F8@l
/* 80114CA0 00111880  90 1F 21 E4 */	stw r0, 0x21e4(r31)
/* 80114CA4 00111884  90 1F 21 DC */	stw r0, 0x21dc(r31)
lbl_80114CA8:
/* 80114CA8 00111888  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80114CAC 0011188C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80114CB0 00111890  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80114CB4 00111894  38 21 00 20 */	addi r1, r1, 0x20
/* 80114CB8 00111898  7C 08 03 A6 */	mtlr r0
/* 80114CBC 0011189C  4E 80 00 20 */	blr 

.section .sdata2
    .balign 8
.global lbl_804D96B8/*0.0f*/
lbl_804D96B8/*0.0f*/:
	.4byte 0x00000000
.global lbl_804D96BC/*1.0f*/
lbl_804D96BC/*1.0f*/:
	.4byte 0x3F800000
