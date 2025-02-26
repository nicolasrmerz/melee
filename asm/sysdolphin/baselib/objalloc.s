.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global HSD_ObjAllocAddFree
HSD_ObjAllocAddFree:
/* 8037A968 00377548  7C 08 02 A6 */	mflr r0
/* 8037A96C 0037754C  90 01 00 04 */	stw r0, 4(r1)
/* 8037A970 00377550  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8037A974 00377554  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8037A978 00377558  3B E4 00 00 */	addi r31, r4, 0
/* 8037A97C 0037755C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8037A980 00377560  7C 7E 1B 79 */	or. r30, r3, r3
/* 8037A984 00377564  3C 60 80 40 */	lis r3, lbl_80406E48@ha
/* 8037A988 00377568  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8037A98C 0037756C  3B A3 6E 48 */	addi r29, r3, lbl_80406E48@l
/* 8037A990 00377570  93 81 00 18 */	stw r28, 0x18(r1)
/* 8037A994 00377574  40 82 00 14 */	bne lbl_8037A9A8
/* 8037A998 00377578  38 7D 00 10 */	addi r3, r29, 0x10
/* 8037A99C 0037757C  38 80 00 EE */	li r4, 0xee
/* 8037A9A0 00377580  38 AD A8 10 */	addi r5, r13, lbl_804D5EB0@sda21
/* 8037A9A4 00377584  48 00 D8 7D */	bl __assert
lbl_8037A9A8:
/* 8037A9A8 00377588  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 8037A9AC 0037758C  80 9D 00 00 */	lwz r4, 0(r29)
/* 8037A9B0 00377590  7F 86 F9 D6 */	mullw r28, r6, r31
/* 8037A9B4 00377594  28 04 00 00 */	cmplwi r4, 0
/* 8037A9B8 00377598  41 82 00 7C */	beq lbl_8037AA34
/* 8037A9BC 0037759C  38 FD 00 04 */	addi r7, r29, 4
/* 8037A9C0 003775A0  80 7D 00 08 */	lwz r3, 8(r29)
/* 8037A9C4 003775A4  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 8037A9C8 003775A8  80 1D 00 04 */	lwz r0, 4(r29)
/* 8037A9CC 003775AC  7C 64 1A 14 */	add r3, r4, r3
/* 8037A9D0 003775B0  7C 00 2A 14 */	add r0, r0, r5
/* 8037A9D4 003775B4  7C 00 28 78 */	andc r0, r0, r5
/* 8037A9D8 003775B8  7C 00 18 40 */	cmplw r0, r3
/* 8037A9DC 003775BC  7C 04 03 78 */	mr r4, r0
/* 8037A9E0 003775C0  40 81 00 0C */	ble lbl_8037A9EC
/* 8037A9E4 003775C4  38 60 00 00 */	li r3, 0
/* 8037A9E8 003775C8  48 00 01 C0 */	b lbl_8037ABA8
lbl_8037A9EC:
/* 8037A9EC 003775CC  7C A4 18 50 */	subf r5, r4, r3
/* 8037A9F0 003775D0  7C 05 E0 40 */	cmplw r5, r28
/* 8037A9F4 003775D4  40 80 00 14 */	bge lbl_8037AA08
/* 8037A9F8 003775D8  7C 05 33 96 */	divwu r0, r5, r6
/* 8037A9FC 003775DC  7C 00 31 D6 */	mullw r0, r0, r6
/* 8037AA00 003775E0  7C 00 28 50 */	subf r0, r0, r5
/* 8037AA04 003775E4  7F 80 28 50 */	subf r28, r0, r5
lbl_8037AA08:
/* 8037AA08 003775E8  7C 1C 33 97 */	divwu. r0, r28, r6
/* 8037AA0C 003775EC  7C 1F 03 78 */	mr r31, r0
/* 8037AA10 003775F0  40 82 00 0C */	bne lbl_8037AA1C
/* 8037AA14 003775F4  38 60 00 00 */	li r3, 0
/* 8037AA18 003775F8  48 00 01 90 */	b lbl_8037ABA8
lbl_8037AA1C:
/* 8037AA1C 003775FC  7C 04 E2 14 */	add r0, r4, r28
/* 8037AA20 00377600  90 07 00 00 */	stw r0, 0(r7)
/* 8037AA24 00377604  80 07 00 00 */	lwz r0, 0(r7)
/* 8037AA28 00377608  7C 00 18 50 */	subf r0, r0, r3
/* 8037AA2C 0037760C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8037AA30 00377610  48 00 00 28 */	b lbl_8037AA58
lbl_8037AA34:
/* 8037AA34 00377614  7F 83 E3 78 */	mr r3, r28
/* 8037AA38 00377618  48 00 47 AD */	bl HSD_MemAlloc
/* 8037AA3C 0037761C  7C 64 1B 79 */	or. r4, r3, r3
/* 8037AA40 00377620  40 82 00 0C */	bne lbl_8037AA4C
/* 8037AA44 00377624  38 60 00 00 */	li r3, 0
/* 8037AA48 00377628  48 00 01 60 */	b lbl_8037ABA8
lbl_8037AA4C:
/* 8037AA4C 0037762C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8037AA50 00377630  7C 1C 00 50 */	subf r0, r28, r0
/* 8037AA54 00377634  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_8037AA58:
/* 8037AA58 00377638  38 7F FF FF */	addi r3, r31, -1
/* 8037AA5C 0037763C  28 03 00 00 */	cmplwi r3, 0
/* 8037AA60 00377640  38 E0 00 00 */	li r7, 0
/* 8037AA64 00377644  40 81 01 20 */	ble lbl_8037AB84
/* 8037AA68 00377648  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 8037AA6C 0037764C  7C 09 03 A6 */	mtctr r0
/* 8037AA70 00377650  41 82 00 F0 */	beq lbl_8037AB60
lbl_8037AA74:
/* 8037AA74 00377654  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 8037AA78 00377658  38 07 00 01 */	addi r0, r7, 1
/* 8037AA7C 0037765C  7C A6 01 D6 */	mullw r5, r6, r0
/* 8037AA80 00377660  7C 06 39 D6 */	mullw r0, r6, r7
/* 8037AA84 00377664  7C A4 2A 14 */	add r5, r4, r5
/* 8037AA88 00377668  7C A4 01 2E */	stwx r5, r4, r0
/* 8037AA8C 0037766C  38 07 00 02 */	addi r0, r7, 2
/* 8037AA90 00377670  38 E7 00 01 */	addi r7, r7, 1
/* 8037AA94 00377674  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 8037AA98 00377678  7C A6 01 D6 */	mullw r5, r6, r0
/* 8037AA9C 0037767C  7C 06 39 D6 */	mullw r0, r6, r7
/* 8037AAA0 00377680  7C A4 2A 14 */	add r5, r4, r5
/* 8037AAA4 00377684  7C A4 01 2E */	stwx r5, r4, r0
/* 8037AAA8 00377688  38 07 00 02 */	addi r0, r7, 2
/* 8037AAAC 0037768C  38 E7 00 01 */	addi r7, r7, 1
/* 8037AAB0 00377690  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 8037AAB4 00377694  7C A6 01 D6 */	mullw r5, r6, r0
/* 8037AAB8 00377698  7C 06 39 D6 */	mullw r0, r6, r7
/* 8037AABC 0037769C  7C A4 2A 14 */	add r5, r4, r5
/* 8037AAC0 003776A0  7C A4 01 2E */	stwx r5, r4, r0
/* 8037AAC4 003776A4  38 07 00 02 */	addi r0, r7, 2
/* 8037AAC8 003776A8  38 E7 00 01 */	addi r7, r7, 1
/* 8037AACC 003776AC  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 8037AAD0 003776B0  7C A6 01 D6 */	mullw r5, r6, r0
/* 8037AAD4 003776B4  7C 06 39 D6 */	mullw r0, r6, r7
/* 8037AAD8 003776B8  7C A4 2A 14 */	add r5, r4, r5
/* 8037AADC 003776BC  7C A4 01 2E */	stwx r5, r4, r0
/* 8037AAE0 003776C0  38 07 00 02 */	addi r0, r7, 2
/* 8037AAE4 003776C4  38 E7 00 01 */	addi r7, r7, 1
/* 8037AAE8 003776C8  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 8037AAEC 003776CC  7C A6 01 D6 */	mullw r5, r6, r0
/* 8037AAF0 003776D0  7C 06 39 D6 */	mullw r0, r6, r7
/* 8037AAF4 003776D4  7C A4 2A 14 */	add r5, r4, r5
/* 8037AAF8 003776D8  7C A4 01 2E */	stwx r5, r4, r0
/* 8037AAFC 003776DC  38 07 00 02 */	addi r0, r7, 2
/* 8037AB00 003776E0  38 E7 00 01 */	addi r7, r7, 1
/* 8037AB04 003776E4  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 8037AB08 003776E8  7C A6 01 D6 */	mullw r5, r6, r0
/* 8037AB0C 003776EC  7C 06 39 D6 */	mullw r0, r6, r7
/* 8037AB10 003776F0  7C A4 2A 14 */	add r5, r4, r5
/* 8037AB14 003776F4  7C A4 01 2E */	stwx r5, r4, r0
/* 8037AB18 003776F8  38 07 00 02 */	addi r0, r7, 2
/* 8037AB1C 003776FC  38 E7 00 01 */	addi r7, r7, 1
/* 8037AB20 00377700  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 8037AB24 00377704  7C A6 01 D6 */	mullw r5, r6, r0
/* 8037AB28 00377708  7C 06 39 D6 */	mullw r0, r6, r7
/* 8037AB2C 0037770C  7C A4 2A 14 */	add r5, r4, r5
/* 8037AB30 00377710  7C A4 01 2E */	stwx r5, r4, r0
/* 8037AB34 00377714  38 07 00 02 */	addi r0, r7, 2
/* 8037AB38 00377718  38 E7 00 01 */	addi r7, r7, 1
/* 8037AB3C 0037771C  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 8037AB40 00377720  7C A6 01 D6 */	mullw r5, r6, r0
/* 8037AB44 00377724  7C 06 39 D6 */	mullw r0, r6, r7
/* 8037AB48 00377728  7C A4 2A 14 */	add r5, r4, r5
/* 8037AB4C 0037772C  7C A4 01 2E */	stwx r5, r4, r0
/* 8037AB50 00377730  38 E7 00 01 */	addi r7, r7, 1
/* 8037AB54 00377734  42 00 FF 20 */	bdnz lbl_8037AA74
/* 8037AB58 00377738  70 63 00 07 */	andi. r3, r3, 7
/* 8037AB5C 0037773C  41 82 00 28 */	beq lbl_8037AB84
lbl_8037AB60:
/* 8037AB60 00377740  7C 69 03 A6 */	mtctr r3
lbl_8037AB64:
/* 8037AB64 00377744  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 8037AB68 00377748  38 07 00 01 */	addi r0, r7, 1
/* 8037AB6C 0037774C  7C A6 01 D6 */	mullw r5, r6, r0
/* 8037AB70 00377750  7C 06 39 D6 */	mullw r0, r6, r7
/* 8037AB74 00377754  7C A4 2A 14 */	add r5, r4, r5
/* 8037AB78 00377758  7C A4 01 2E */	stwx r5, r4, r0
/* 8037AB7C 0037775C  38 E7 00 01 */	addi r7, r7, 1
/* 8037AB80 00377760  42 00 FF E4 */	bdnz lbl_8037AB64
lbl_8037AB84:
/* 8037AB84 00377764  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8037AB88 00377768  7F E3 FB 78 */	mr r3, r31
/* 8037AB8C 0037776C  80 BE 00 04 */	lwz r5, 4(r30)
/* 8037AB90 00377770  7C 00 39 D6 */	mullw r0, r0, r7
/* 8037AB94 00377774  7C A4 01 2E */	stwx r5, r4, r0
/* 8037AB98 00377778  90 9E 00 04 */	stw r4, 4(r30)
/* 8037AB9C 0037777C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8037ABA0 00377780  7C 00 FA 14 */	add r0, r0, r31
/* 8037ABA4 00377784  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_8037ABA8:
/* 8037ABA8 00377788  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8037ABAC 0037778C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8037ABB0 00377790  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8037ABB4 00377794  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8037ABB8 00377798  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8037ABBC 0037779C  38 21 00 28 */	addi r1, r1, 0x28
/* 8037ABC0 003777A0  7C 08 03 A6 */	mtlr r0
/* 8037ABC4 003777A4  4E 80 00 20 */	blr 

.global HSD_ObjAlloc
HSD_ObjAlloc:
/* 8037ABC8 003777A8  7C 08 02 A6 */	mflr r0
/* 8037ABCC 003777AC  90 01 00 04 */	stw r0, 4(r1)
/* 8037ABD0 003777B0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8037ABD4 003777B4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037ABD8 003777B8  7C 7F 1B 78 */	mr r31, r3
/* 8037ABDC 003777BC  88 03 00 00 */	lbz r0, 0(r3)
/* 8037ABE0 003777C0  3C 60 80 40 */	lis r3, lbl_80406E48@ha
/* 8037ABE4 003777C4  38 83 6E 48 */	addi r4, r3, lbl_80406E48@l
/* 8037ABE8 003777C8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8037ABEC 003777CC  41 82 00 1C */	beq lbl_8037AC08
/* 8037ABF0 003777D0  80 7F 00 08 */	lwz r3, 8(r31)
/* 8037ABF4 003777D4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8037ABF8 003777D8  7C 03 00 40 */	cmplw r3, r0
/* 8037ABFC 003777DC  41 80 00 0C */	blt lbl_8037AC08
/* 8037AC00 003777E0  38 60 00 00 */	li r3, 0
/* 8037AC04 003777E4  48 00 01 08 */	b lbl_8037AD0C
lbl_8037AC08:
/* 8037AC08 003777E8  88 1F 00 00 */	lbz r0, 0(r31)
/* 8037AC0C 003777EC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8037AC10 003777F0  41 82 00 98 */	beq lbl_8037ACA8
/* 8037AC14 003777F4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8037AC18 003777F8  3C 03 00 01 */	addis r0, r3, 1
/* 8037AC1C 003777FC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8037AC20 00377800  40 82 00 40 */	bne lbl_8037AC60
/* 8037AC24 00377804  80 04 00 00 */	lwz r0, 0(r4)
/* 8037AC28 00377808  28 00 00 00 */	cmplwi r0, 0
/* 8037AC2C 0037780C  41 82 00 0C */	beq lbl_8037AC38
/* 8037AC30 00377810  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8037AC34 00377814  48 00 00 0C */	b lbl_8037AC40
lbl_8037AC38:
/* 8037AC38 00377818  4B FF A7 CD */	bl HSD_GetHeap
/* 8037AC3C 0037781C  4B FC 95 2D */	bl OSCheckHeap
lbl_8037AC40:
/* 8037AC40 00377820  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8037AC44 00377824  7C 03 00 40 */	cmplw r3, r0
/* 8037AC48 00377828  41 81 00 48 */	bgt lbl_8037AC90
/* 8037AC4C 0037782C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8037AC50 00377830  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8037AC54 00377834  7C 03 02 14 */	add r0, r3, r0
/* 8037AC58 00377838  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8037AC5C 0037783C  48 00 00 34 */	b lbl_8037AC90
lbl_8037AC60:
/* 8037AC60 00377840  80 04 00 00 */	lwz r0, 0(r4)
/* 8037AC64 00377844  28 00 00 00 */	cmplwi r0, 0
/* 8037AC68 00377848  41 82 00 0C */	beq lbl_8037AC74
/* 8037AC6C 0037784C  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8037AC70 00377850  48 00 00 0C */	b lbl_8037AC7C
lbl_8037AC74:
/* 8037AC74 00377854  4B FF A7 91 */	bl HSD_GetHeap
/* 8037AC78 00377858  4B FC 94 F1 */	bl OSCheckHeap
lbl_8037AC7C:
/* 8037AC7C 0037785C  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8037AC80 00377860  7C 03 00 40 */	cmplw r3, r0
/* 8037AC84 00377864  40 81 00 0C */	ble lbl_8037AC90
/* 8037AC88 00377868  38 00 FF FF */	li r0, -1
/* 8037AC8C 0037786C  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_8037AC90:
/* 8037AC90 00377870  80 7F 00 08 */	lwz r3, 8(r31)
/* 8037AC94 00377874  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8037AC98 00377878  7C 03 00 40 */	cmplw r3, r0
/* 8037AC9C 0037787C  41 80 00 0C */	blt lbl_8037ACA8
/* 8037ACA0 00377880  38 60 00 00 */	li r3, 0
/* 8037ACA4 00377884  48 00 00 68 */	b lbl_8037AD0C
lbl_8037ACA8:
/* 8037ACA8 00377888  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8037ACAC 0037788C  28 00 00 00 */	cmplwi r0, 0
/* 8037ACB0 00377890  40 82 00 24 */	bne lbl_8037ACD4
/* 8037ACB4 00377894  38 7F 00 00 */	addi r3, r31, 0
/* 8037ACB8 00377898  38 80 00 01 */	li r4, 1
/* 8037ACBC 0037789C  4B FF FC AD */	bl HSD_ObjAllocAddFree
/* 8037ACC0 003778A0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8037ACC4 003778A4  28 00 00 00 */	cmplwi r0, 0
/* 8037ACC8 003778A8  40 82 00 0C */	bne lbl_8037ACD4
/* 8037ACCC 003778AC  38 60 00 00 */	li r3, 0
/* 8037ACD0 003778B0  48 00 00 3C */	b lbl_8037AD0C
lbl_8037ACD4:
/* 8037ACD4 003778B4  80 7F 00 04 */	lwz r3, 4(r31)
/* 8037ACD8 003778B8  80 03 00 00 */	lwz r0, 0(r3)
/* 8037ACDC 003778BC  90 1F 00 04 */	stw r0, 4(r31)
/* 8037ACE0 003778C0  80 9F 00 08 */	lwz r4, 8(r31)
/* 8037ACE4 003778C4  38 04 00 01 */	addi r0, r4, 1
/* 8037ACE8 003778C8  90 1F 00 08 */	stw r0, 8(r31)
/* 8037ACEC 003778CC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8037ACF0 003778D0  38 04 FF FF */	addi r0, r4, -1
/* 8037ACF4 003778D4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8037ACF8 003778D8  80 9F 00 08 */	lwz r4, 8(r31)
/* 8037ACFC 003778DC  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8037AD00 003778E0  7C 04 00 40 */	cmplw r4, r0
/* 8037AD04 003778E4  40 81 00 08 */	ble lbl_8037AD0C
/* 8037AD08 003778E8  90 9F 00 10 */	stw r4, 0x10(r31)
lbl_8037AD0C:
/* 8037AD0C 003778EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8037AD10 003778F0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037AD14 003778F4  38 21 00 18 */	addi r1, r1, 0x18
/* 8037AD18 003778F8  7C 08 03 A6 */	mtlr r0
/* 8037AD1C 003778FC  4E 80 00 20 */	blr 

.global HSD_ObjFree
HSD_ObjFree:
/* 8037AD20 00377900  80 03 00 04 */	lwz r0, 4(r3)
/* 8037AD24 00377904  90 04 00 00 */	stw r0, 0(r4)
/* 8037AD28 00377908  90 83 00 04 */	stw r4, 4(r3)
/* 8037AD2C 0037790C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8037AD30 00377910  38 04 00 01 */	addi r0, r4, 1
/* 8037AD34 00377914  90 03 00 0C */	stw r0, 0xc(r3)
/* 8037AD38 00377918  80 83 00 08 */	lwz r4, 8(r3)
/* 8037AD3C 0037791C  38 04 FF FF */	addi r0, r4, -1
/* 8037AD40 00377920  90 03 00 08 */	stw r0, 8(r3)
/* 8037AD44 00377924  4E 80 00 20 */	blr 

.global HSD_ObjAllocInit
HSD_ObjAllocInit:
/* 8037AD48 00377928  7C 08 02 A6 */	mflr r0
/* 8037AD4C 0037792C  90 01 00 04 */	stw r0, 4(r1)
/* 8037AD50 00377930  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8037AD54 00377934  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8037AD58 00377938  3B E5 00 00 */	addi r31, r5, 0
/* 8037AD5C 0037793C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8037AD60 00377940  3B C4 00 00 */	addi r30, r4, 0
/* 8037AD64 00377944  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8037AD68 00377948  7C 7D 1B 79 */	or. r29, r3, r3
/* 8037AD6C 0037794C  40 82 00 18 */	bne lbl_8037AD84
/* 8037AD70 00377950  3C 60 80 40 */	lis r3, lbl_80406E58@ha
/* 8037AD74 00377954  38 63 6E 58 */	addi r3, r3, lbl_80406E58@l
/* 8037AD78 00377958  38 80 01 85 */	li r4, 0x185
/* 8037AD7C 0037795C  38 AD A8 10 */	addi r5, r13, lbl_804D5EB0@sda21
/* 8037AD80 00377960  48 00 D4 A1 */	bl __assert
lbl_8037AD84:
/* 8037AD84 00377964  28 1D 00 00 */	cmplwi r29, 0
/* 8037AD88 00377968  41 82 00 34 */	beq lbl_8037ADBC
/* 8037AD8C 0037796C  38 6D C0 40 */	addi r3, r13, lbl_804D76E0@sda21
/* 8037AD90 00377970  48 00 00 1C */	b lbl_8037ADAC
lbl_8037AD94:
/* 8037AD94 00377974  7C 04 E8 40 */	cmplw r4, r29
/* 8037AD98 00377978  40 82 00 10 */	bne lbl_8037ADA8
/* 8037AD9C 0037797C  80 04 00 28 */	lwz r0, 0x28(r4)
/* 8037ADA0 00377980  90 03 00 00 */	stw r0, 0(r3)
/* 8037ADA4 00377984  48 00 00 08 */	b lbl_8037ADAC
lbl_8037ADA8:
/* 8037ADA8 00377988  38 64 00 28 */	addi r3, r4, 0x28
lbl_8037ADAC:
/* 8037ADAC 0037798C  80 83 00 00 */	lwz r4, 0(r3)
/* 8037ADB0 00377990  28 04 00 00 */	cmplwi r4, 0
/* 8037ADB4 00377994  40 82 FF E0 */	bne lbl_8037AD94
/* 8037ADB8 00377998  48 00 00 0C */	b lbl_8037ADC4
lbl_8037ADBC:
/* 8037ADBC 0037799C  38 00 00 00 */	li r0, 0
/* 8037ADC0 003779A0  90 0D C0 40 */	stw r0, lbl_804D76E0@sda21(r13)
lbl_8037ADC4:
/* 8037ADC4 003779A4  38 7D 00 00 */	addi r3, r29, 0
/* 8037ADC8 003779A8  38 80 00 00 */	li r4, 0
/* 8037ADCC 003779AC  38 A0 00 2C */	li r5, 0x2c
/* 8037ADD0 003779B0  4B C8 83 31 */	bl memset
/* 8037ADD4 003779B4  38 80 FF FF */	li r4, -1
/* 8037ADD8 003779B8  90 9D 00 14 */	stw r4, 0x14(r29)
/* 8037ADDC 003779BC  38 60 00 00 */	li r3, 0
/* 8037ADE0 003779C0  38 1F FF FF */	addi r0, r31, -1
/* 8037ADE4 003779C4  90 7D 00 18 */	stw r3, 0x18(r29)
/* 8037ADE8 003779C8  90 9D 00 1C */	stw r4, 0x1c(r29)
/* 8037ADEC 003779CC  90 1D 00 24 */	stw r0, 0x24(r29)
/* 8037ADF0 003779D0  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 8037ADF4 003779D4  7C 1E 1A 14 */	add r0, r30, r3
/* 8037ADF8 003779D8  7C 00 18 78 */	andc r0, r0, r3
/* 8037ADFC 003779DC  90 1D 00 20 */	stw r0, 0x20(r29)
/* 8037AE00 003779E0  80 0D C0 40 */	lwz r0, lbl_804D76E0@sda21(r13)
/* 8037AE04 003779E4  90 1D 00 28 */	stw r0, 0x28(r29)
/* 8037AE08 003779E8  93 AD C0 40 */	stw r29, lbl_804D76E0@sda21(r13)
/* 8037AE0C 003779EC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8037AE10 003779F0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8037AE14 003779F4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8037AE18 003779F8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8037AE1C 003779FC  38 21 00 28 */	addi r1, r1, 0x28
/* 8037AE20 00377A00  7C 08 03 A6 */	mtlr r0
/* 8037AE24 00377A04  4E 80 00 20 */	blr 

.global _HSD_ObjAllocForgetMemory
_HSD_ObjAllocForgetMemory:
/* 8037AE28 00377A08  38 00 00 00 */	li r0, 0
/* 8037AE2C 00377A0C  90 0D C0 40 */	stw r0, lbl_804D76E0@sda21(r13)
/* 8037AE30 00377A10  4E 80 00 20 */	blr 


.section .data
    .balign 8
.global lbl_80406E48
lbl_80406E48:
    .4byte NULL
    .4byte NULL
    .4byte 0xFFFFFFFF
    .4byte 0xFFFFFFFF
.global lbl_80406E58
lbl_80406E58:
    .asciz "objalloc.c"
    .balign 4
    .4byte NULL


.section .sdata
    .balign 8
.global lbl_804D5EB0
lbl_804D5EB0:
    .asciz "data"
    .balign 4


.section .sbss
    .balign 8
.global lbl_804D76E0
lbl_804D76E0:
	.skip 0x8
