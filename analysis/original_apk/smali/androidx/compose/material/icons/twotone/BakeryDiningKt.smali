.class public final Landroidx/compose/material/icons/twotone/BakeryDiningKt;
.super Ljava/lang/Object;
.source "BakeryDining.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBakeryDining.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BakeryDining.kt\nandroidx/compose/material/icons/twotone/BakeryDiningKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,141:1\n212#2,12:142\n233#2,18:155\n253#2:192\n233#2,18:193\n253#2:230\n233#2,18:231\n253#2:268\n233#2,18:269\n253#2:306\n233#2,18:307\n253#2:344\n233#2,18:345\n253#2:382\n174#3:154\n705#4,2:173\n717#4,2:175\n719#4,11:181\n705#4,2:211\n717#4,2:213\n719#4,11:219\n705#4,2:249\n717#4,2:251\n719#4,11:257\n705#4,2:287\n717#4,2:289\n719#4,11:295\n705#4,2:325\n717#4,2:327\n719#4,11:333\n705#4,2:363\n717#4,2:365\n719#4,11:371\n72#5,4:177\n72#5,4:215\n72#5,4:253\n72#5,4:291\n72#5,4:329\n72#5,4:367\n*S KotlinDebug\n*F\n+ 1 BakeryDining.kt\nandroidx/compose/material/icons/twotone/BakeryDiningKt\n*L\n29#1:142,12\n30#1:155,18\n30#1:192\n40#1:193,18\n40#1:230\n48#1:231,18\n48#1:268\n58#1:269,18\n58#1:306\n68#1:307,18\n68#1:344\n76#1:345,18\n76#1:382\n29#1:154\n30#1:173,2\n30#1:175,2\n30#1:181,11\n40#1:211,2\n40#1:213,2\n40#1:219,11\n48#1:249,2\n48#1:251,2\n48#1:257,11\n58#1:287,2\n58#1:289,2\n58#1:295,11\n68#1:325,2\n68#1:327,2\n68#1:333,11\n76#1:363,2\n76#1:365,2\n76#1:371,11\n30#1:177,4\n40#1:215,4\n48#1:253,4\n58#1:291,4\n68#1:329,4\n76#1:367,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_bakeryDining",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "BakeryDining",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getBakeryDining",
        "(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;",
        "material-icons-extended_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static _bakeryDining:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getBakeryDining(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 51
    .param p0, "$this$BakeryDining"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/BakeryDiningKt;->_bakeryDining:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/BakeryDiningKt;->_bakeryDining:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.BakeryDining"

    .line 142
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 144
    const/4 v13, 0x0

    .line 142
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 153
    .local v14, "$i$f$materialIcon":I
    nop

    .line 146
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 147
    nop

    .line 148
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 154
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 149
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 154
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 150
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 151
    const/high16 v6, 0x41c00000    # 24.0f

    .line 146
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 152
    nop

    .line 146
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 153
    nop

    .local v1, "$this$_get_BakeryDining__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-BakeryDiningKt$BakeryDining$1":I
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v20, v3

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v4, v1

    .line 155
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 158
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v17, v5

    .line 155
    const/4 v6, 0x0

    .line 164
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 165
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v7

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 167
    nop

    .line 169
    nop

    .line 170
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 171
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 172
    nop

    .line 164
    move-object/from16 v21, v10

    .local v19, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v21, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v15, v4

    .local v15, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v23, v7

    .local v23, "strokeLineWidth$iv$iv":F
    .local v24, "strokeLineCap$iv$iv":I
    move/from16 v26, v7

    .line 173
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 174
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v8

    .line 173
    const/4 v9, 0x0

    .line 175
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 176
    const/4 v11, 0x0

    .line 177
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 178
    .local v16, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v34, v12

    .local v34, "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-BakeryDiningKt$BakeryDining$1$1":I
    const v7, 0x40f33333    # 7.6f

    const v10, 0x410ab852    # 8.67f

    move-object/from16 v42, v0

    move-object/from16 v0, v34

    .end local v34    # "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v42, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v7, -0x3fff5c29    # -2.01f

    const v10, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, -0x419eb852    # -0.22f

    const v29, 0x3db851ec    # 0.09f

    const v30, -0x4151eb85    # -0.34f

    const v31, 0x3e9eb852    # 0.31f

    const v32, -0x416147ae    # -0.31f

    const v33, 0x3f0a3d71    # 0.54f

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v10, 0x40bf5c29    # 5.98f

    const v7, 0x4019999a    # 2.4f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v10, 0x3f9d70a4    # 1.23f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v7, -0x40e147ae    # -0.62f

    const v10, -0x3f233333    # -6.9f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/high16 v28, 0x41040000    # 8.25f

    const/high16 v29, 0x410c0000    # 8.75f

    const v30, 0x40fd1eb8    # 7.91f

    const v31, 0x4108a3d7    # 8.54f

    const v32, 0x40f33333    # 7.6f

    const v33, 0x410ab852    # 8.67f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    nop

    .line 178
    .end local v0    # "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-BakeryDiningKt$BakeryDining$1$1":I
    nop

    .line 179
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 177
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 180
    nop

    .line 181
    .end local v11    # "$i$f$PathData":I
    nop

    .line 182
    nop

    .line 183
    nop

    .line 184
    nop

    .line 185
    nop

    .line 186
    nop

    .line 187
    nop

    .line 188
    nop

    .line 189
    nop

    .line 190
    nop

    .line 175
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 191
    nop

    .line 192
    .end local v8    # "name$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$path-R_LF-3I":I
    .end local v15    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v19    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v21    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v23    # "strokeLineWidth$iv$iv":F
    .end local v24    # "strokeLineCap$iv$iv":I
    .end local v25    # "strokeLineJoin$iv$iv":I
    .end local v26    # "strokeLineMiter$iv$iv":F
    nop

    .line 40
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "strokeAlpha$iv":F
    const v0, 0x3e99999a    # 0.3f

    .local v0, "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .local v30, "strokeAlpha$iv":F
    move-object v3, v1

    .line 193
    .local v3, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 196
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 193
    const/4 v5, 0x0

    .line 202
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 203
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v11, 0x0

    invoke-direct {v6, v8, v9, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 205
    nop

    .line 207
    nop

    .line 208
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 209
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 210
    nop

    .line 202
    const/4 v6, 0x0

    move-object/from16 v29, v6

    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v3

    const/high16 v6, 0x3f800000    # 1.0f

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v6

    .local v31, "strokeLineWidth$iv$iv":F
    .local v32, "strokeLineCap$iv$iv":I
    move/from16 v34, v6

    .line 211
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 212
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 211
    const/4 v8, 0x0

    .line 213
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 214
    const/4 v9, 0x0

    .line 215
    .local v9, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 216
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v15, v11

    .local v15, "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 41
    .local v22, "$i$a$-materialPath-YwgOQQI$default-BakeryDiningKt$BakeryDining$1$2":I
    const v10, 0x40447ae1    # 3.07f

    const v7, 0x4180cccd    # 16.1f

    invoke-virtual {v15, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v16, -0x4175c28f    # -0.27f

    const v17, 0x3f07ae14    # 0.53f

    const v18, 0x3e947ae1    # 0.29f

    const v19, 0x3f8b851f    # 1.09f

    const v20, 0x3f51eb85    # 0.82f

    const v21, 0x3f547ae1    # 0.83f

    move-object/from16 v24, v15

    .end local v15    # "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v24, "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v15, 0x3fd70a3d    # 1.68f

    const v7, -0x40a8f5c3    # -0.84f

    move-object/from16 v10, v24

    .end local v24    # "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v10, "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v10, v15, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v7, -0x4075c28f    # -1.08f

    const v15, -0x3fd28f5c    # -2.71f

    invoke-virtual {v10, v7, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v7, 0x4180cccd    # 16.1f

    const v15, 0x40447ae1    # 3.07f

    invoke-virtual {v10, v15, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    nop

    .line 216
    .end local v10    # "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-BakeryDiningKt$BakeryDining$1$2":I
    nop

    .line 217
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 215
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 218
    nop

    .line 219
    .end local v9    # "$i$f$PathData":I
    nop

    .line 220
    nop

    .line 221
    nop

    .line 222
    nop

    .line 223
    nop

    .line 224
    nop

    .line 225
    nop

    .line 226
    nop

    .line 227
    nop

    .line 228
    nop

    .line 213
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 229
    nop

    .line 230
    .end local v6    # "name$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 48
    .end local v0    # "fillAlpha$iv":F
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    const v0, 0x3e99999a    # 0.3f

    .restart local v0    # "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .line 231
    .restart local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "strokeAlpha$iv":F
    nop

    .line 234
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .restart local v4    # "pathFillType$iv":I
    move/from16 v25, v4

    .line 231
    const/4 v5, 0x0

    .line 240
    .restart local v5    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 241
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 243
    nop

    .line 245
    nop

    .line 246
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 247
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 248
    nop

    .line 240
    const/4 v6, 0x0

    move-object/from16 v29, v6

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v6

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v6

    .line 249
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 250
    const-string v6, ""

    .restart local v6    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 249
    const/4 v7, 0x0

    .line 251
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 252
    const/4 v8, 0x0

    .line 253
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 254
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 49
    .local v12, "$i$a$-materialPath-YwgOQQI$default-BakeryDiningKt$BakeryDining$1$3":I
    const v15, 0x4155c28f    # 13.36f

    move/from16 v17, v0

    .end local v0    # "fillAlpha$iv":F
    .local v17, "fillAlpha$iv":F
    const v0, 0x40dfae14    # 6.99f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v0, -0x3fd28f5c    # -2.71f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v45, -0x4175c28f    # -0.27f

    const/16 v46, 0x0

    const v47, -0x40f851ec    # -0.53f

    const v48, 0x3e6b851f    # 0.23f

    const/high16 v49, -0x41000000    # -0.5f

    const v50, 0x3f0a3d71    # 0.54f

    move-object/from16 v44, v11

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v0, 0x41073333    # 8.45f

    const v15, 0x3f451eb8    # 0.77f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v0, 0x400ae148    # 2.17f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v0, -0x3ef8cccd    # -8.45f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v45, 0x415e147b    # 13.88f

    const v46, 0x40e70a3d    # 7.22f

    const v47, 0x415a147b    # 13.63f

    const v48, 0x40dfae14    # 6.99f

    const v49, 0x4155c28f    # 13.36f

    const v50, 0x40dfae14    # 6.99f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    nop

    .line 254
    .end local v11    # "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-BakeryDiningKt$BakeryDining$1$3":I
    nop

    .line 255
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 253
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 256
    nop

    .line 257
    .end local v8    # "$i$f$PathData":I
    nop

    .line 258
    nop

    .line 259
    nop

    .line 260
    nop

    .line 261
    nop

    .line 262
    nop

    .line 263
    nop

    .line 264
    nop

    .line 265
    nop

    .line 266
    nop

    .line 251
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 267
    nop

    .line 268
    .end local v6    # "name$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 58
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v17    # "fillAlpha$iv":F
    .end local v30    # "strokeAlpha$iv":F
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v28, v3

    const v30, 0x3e99999a    # 0.3f

    .restart local v30    # "strokeAlpha$iv":F
    move-object v4, v1

    .line 269
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 272
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v25, v5

    .line 269
    const/4 v6, 0x0

    .line 278
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 279
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 281
    nop

    .line 283
    nop

    .line 284
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 285
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 286
    nop

    .line 278
    const/4 v7, 0x0

    move-object/from16 v29, v7

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v4

    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v7

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v7

    .line 287
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 288
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 287
    const/4 v8, 0x0

    .line 289
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 290
    const/4 v9, 0x0

    .line 291
    .local v9, "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v10, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 292
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 59
    .local v15, "$i$a$-materialPath-YwgOQQI$default-BakeryDiningKt$BakeryDining$1$4":I
    const v0, 0x419347ae    # 18.41f

    move/from16 v21, v2

    .end local v2    # "$i$a$-materialIcon$default-BakeryDiningKt$BakeryDining$1":I
    .local v21, "$i$a$-materialIcon$default-BakeryDiningKt$BakeryDining$1":I
    const v2, 0x4117851f    # 9.47f

    invoke-virtual {v12, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v0, -0x40b33333    # -0.8f

    const v2, -0x3fff5c29    # -2.01f

    invoke-virtual {v12, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v45, -0x416147ae    # -0.31f

    const v46, -0x420a3d71    # -0.12f

    const v47, -0x40d9999a    # -0.65f

    const v48, 0x3db851ec    # 0.09f

    const v49, -0x40d1eb85    # -0.68f

    const v50, 0x3ed70a3d    # 0.42f

    move-object/from16 v44, v12

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v2, 0x40dccccd    # 6.9f

    const v0, -0x40e147ae    # -0.62f

    invoke-virtual {v12, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v0, 0x3f9d70a4    # 1.23f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v0, -0x3f40a3d7    # -5.98f

    const v2, 0x4019999a    # 2.4f

    invoke-virtual {v12, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const/high16 v45, 0x41960000    # 18.75f

    const v46, 0x411c7ae1    # 9.78f

    const v47, 0x41950a3d    # 18.63f

    const v48, 0x4118f5c3    # 9.56f

    const v49, 0x419347ae    # 18.41f

    const v50, 0x4117851f    # 9.47f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    nop

    .line 292
    .end local v12    # "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-materialPath-YwgOQQI$default-BakeryDiningKt$BakeryDining$1$4":I
    nop

    .line 293
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 291
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 294
    nop

    .line 295
    .end local v9    # "$i$f$PathData":I
    nop

    .line 296
    nop

    .line 297
    nop

    .line 298
    nop

    .line 299
    nop

    .line 300
    nop

    .line 301
    nop

    .line 302
    nop

    .line 303
    nop

    .line 304
    nop

    .line 289
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 305
    nop

    .line 306
    .end local v7    # "name$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 68
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    const v2, 0x3e99999a    # 0.3f

    .local v2, "fillAlpha$iv":F
    move/from16 v28, v2

    const v30, 0x3e99999a    # 0.3f

    .restart local v30    # "strokeAlpha$iv":F
    move-object v3, v1

    .line 307
    .local v3, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 310
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 307
    const/4 v5, 0x0

    .line 316
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 317
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 319
    nop

    .line 321
    nop

    .line 322
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 323
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 324
    nop

    .line 316
    const/4 v6, 0x0

    move-object/from16 v29, v6

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v3

    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v6

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v6

    .line 325
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 326
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 325
    const/4 v7, 0x0

    .line 327
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 328
    const/4 v8, 0x0

    .line 329
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 330
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 69
    .local v12, "$i$a$-materialPath-YwgOQQI$default-BakeryDiningKt$BakeryDining$1$5":I
    const v15, 0x419c28f6    # 19.52f

    const v0, 0x41563d71    # 13.39f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v0, 0x402ccccd    # 2.7f

    const v15, -0x4075c28f    # -1.08f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v0, 0x3f570a3d    # 0.84f

    const v15, 0x3fd70a3d    # 1.68f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v44, 0x3f051eb8    # 0.52f

    const v45, 0x3e851eb8    # 0.26f

    const v46, 0x3f8b851f    # 1.09f

    const v47, -0x41666666    # -0.3f

    const v48, 0x3f51eb85    # 0.82f

    const v49, -0x40ab851f    # -0.83f

    move-object/from16 v43, v11

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v0, 0x419c28f6    # 19.52f

    const v15, 0x41563d71    # 13.39f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    nop

    .line 330
    .end local v11    # "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-BakeryDiningKt$BakeryDining$1$5":I
    nop

    .line 331
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 329
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 332
    nop

    .line 333
    .end local v8    # "$i$f$PathData":I
    nop

    .line 334
    nop

    .line 335
    nop

    .line 336
    nop

    .line 337
    nop

    .line 338
    nop

    .line 339
    nop

    .line 340
    nop

    .line 341
    nop

    .line 342
    nop

    .line 327
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 343
    nop

    .line 344
    .end local v6    # "name$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 76
    .end local v2    # "fillAlpha$iv":F
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    move-object v0, v1

    .line 345
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 346
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "fillAlpha$iv":F
    move/from16 v28, v2

    .line 345
    nop

    .line 347
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 345
    nop

    .line 348
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .restart local v4    # "pathFillType$iv":I
    move/from16 v25, v4

    .line 345
    const/4 v5, 0x0

    .line 354
    .restart local v5    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 355
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 357
    nop

    .line 359
    nop

    .line 360
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 361
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 362
    nop

    .line 354
    const/4 v6, 0x0

    move-object/from16 v29, v6

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v6

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v6

    .line 363
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 364
    const-string v6, ""

    .restart local v6    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 363
    const/4 v7, 0x0

    .line 365
    .restart local v7    # "$i$f$path-R_LF-3I":I
    nop

    .line 366
    const/4 v8, 0x0

    .line 367
    .restart local v8    # "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 368
    .restart local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 77
    .local v12, "$i$a$-materialPath-YwgOQQI$default-BakeryDiningKt$BakeryDining$1$6":I
    const/high16 v15, 0x41a40000    # 20.5f

    move-object/from16 v19, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v19, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x412f0a3d    # 10.94f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v36, 0x3e051eb8    # 0.13f

    const v37, -0x415c28f6    # -0.32f

    const v38, 0x3dcccccd    # 0.1f

    const v39, -0x41947ae1    # -0.23f

    const v40, 0x3e19999a    # 0.15f

    const v41, -0x413851ec    # -0.39f

    move-object/from16 v35, v11

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v36, 0x3e99999a    # 0.3f

    const v37, -0x40651eb8    # -1.21f

    const v38, -0x4151eb85    # -0.34f

    const v39, -0x3fe1eb85    # -2.47f

    const/high16 v40, -0x40400000    # -1.5f

    const v41, -0x3fc47ae1    # -2.93f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v0, -0x40b33333    # -0.8f

    const v15, -0x3fff5c29    # -2.01f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v36, -0x41147ae1    # -0.46f

    const v37, -0x41c7ae14    # -0.18f

    const v38, -0x408ccccd    # -0.95f

    const v39, -0x41a8f5c3    # -0.21f

    const v40, -0x404b851f    # -1.41f

    const v41, -0x420a3d71    # -0.12f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v36, -0x421eb852    # -0.11f

    const v37, -0x41570a3d    # -0.33f

    const v38, -0x416b851f    # -0.29f

    const v39, -0x40deb852    # -0.63f

    const v40, -0x40fae148    # -0.52f

    const v41, -0x409c28f6    # -0.89f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v36, 0x416bae14    # 14.73f

    const v37, 0x40a947ae    # 5.29f

    const v38, 0x4160f5c3    # 14.06f

    const/high16 v39, 0x40a00000    # 5.0f

    const v40, 0x4155c28f    # 13.36f

    const/high16 v41, 0x40a00000    # 5.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v0, -0x3fd28f5c    # -2.71f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v36, 0x411f0a3d    # 9.94f

    const/high16 v37, 0x40a00000    # 5.0f

    const v38, 0x411451ec    # 9.27f

    const v39, 0x40a947ae    # 5.29f

    const v40, 0x410ccccd    # 8.8f

    const v41, 0x40b9eb85    # 5.81f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v36, 0x4108f5c3    # 8.56f

    const v37, 0x40c23d71    # 6.07f

    const v38, 0x4106147b    # 8.38f

    const v39, 0x40cbd70a    # 6.37f

    const v40, 0x410451ec    # 8.27f

    const v41, 0x40d6147b    # 6.69f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v36, 0x40f9eb85    # 7.81f

    const v37, 0x40d33333    # 6.6f

    const v38, 0x40ea3d71    # 7.32f

    const v39, 0x40d428f6    # 6.63f

    const v40, 0x40db851f    # 6.86f

    const v41, 0x40d9eb85    # 6.81f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v0, 0x3f4ccccd    # 0.8f

    const v15, -0x3fff5c29    # -2.01f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v36, -0x406b851f    # -1.16f

    const v37, 0x3eeb851f    # 0.46f

    const v38, -0x4019999a    # -1.8f

    const v39, 0x3fdc28f6    # 1.72f

    const/high16 v40, -0x40400000    # -1.5f

    const v41, 0x403b851f    # 2.93f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v0, 0x3e19999a    # 0.15f

    const v15, 0x3ec28f5c    # 0.38f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v36, 0x3f8ccccd    # 1.1f

    const v37, 0x4178cccd    # 15.55f

    const/high16 v38, 0x3f800000    # 1.0f

    const v39, 0x4178cccd    # 15.55f

    const/high16 v40, 0x3f800000    # 1.0f

    const v41, 0x41830a3d    # 16.38f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const/16 v36, 0x0

    const v37, 0x3f68f5c3    # 0.91f

    const v38, 0x3eeb851f    # 0.46f

    const v39, 0x3fdeb852    # 1.74f

    const v40, 0x3f9eb852    # 1.24f

    const v41, 0x400e147b    # 2.22f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v36, 0x3fb5c28f    # 1.42f

    const v37, 0x3f6147ae    # 0.88f

    const v38, 0x401f5c29    # 2.49f

    const v39, 0x3e0f5c29    # 0.14f

    const/high16 v40, 0x40800000    # 4.0f

    const v41, -0x40e3d70a    # -0.61f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v0, 0x41387ae1    # 11.53f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v36, 0x3fc28f5c    # 1.52f

    const v37, 0x3f428f5c    # 0.76f

    const v38, 0x3fee147b    # 1.86f

    const v39, 0x3f8147ae    # 1.01f

    const v40, 0x402851ec    # 2.63f

    const v41, 0x3f8147ae    # 1.01f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const/high16 v36, 0x3f800000    # 1.0f

    const/16 v37, 0x0

    const v38, 0x40270a3d    # 2.61f

    const v39, -0x40bae148    # -0.77f

    const v40, 0x40270a3d    # 2.61f

    const v41, -0x3fd8f5c3    # -2.61f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const/high16 v36, 0x41b80000    # 23.0f

    const v37, 0x4178a3d7    # 15.54f

    const v38, 0x41b70a3d    # 22.88f

    const v39, 0x417828f6    # 15.51f

    const/high16 v40, 0x41a40000    # 20.5f

    const v41, 0x412f0a3d    # 10.94f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v0, 0x407851ec    # 3.88f

    const v15, 0x418770a4    # 16.93f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v36, -0x40f851ec    # -0.53f

    const v37, 0x3e851eb8    # 0.26f

    const v38, -0x40747ae1    # -1.09f

    const v39, -0x41666666    # -0.3f

    const v40, -0x40ae147b    # -0.82f

    const v41, -0x40ab851f    # -0.83f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v0, 0x3fb47ae1    # 1.41f

    const v15, -0x3fd1eb85    # -2.72f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v0, 0x3f8a3d71    # 1.08f

    const v15, 0x402d70a4    # 2.71f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v0, 0x407851ec    # 3.88f

    const v15, 0x418770a4    # 16.93f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v0, 0x40f5c28f    # 7.68f

    const v15, 0x417fd70a    # 15.99f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v0, -0x3fe66666    # -2.4f

    const v15, -0x3f40a3d7    # -5.98f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const/high16 v36, 0x40a80000    # 5.25f

    const v37, 0x411c7ae1    # 9.78f

    const v38, 0x40abd70a    # 5.37f

    const v39, 0x4118f5c3    # 9.56f

    const v40, 0x40b2e148    # 5.59f

    const v41, 0x4117851f    # 9.47f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const v0, 0x4000a3d7    # 2.01f

    const v15, -0x40b33333    # -0.8f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const v36, 0x3e9eb852    # 0.31f

    const v37, -0x420a3d71    # -0.12f

    const v38, 0x3f266666    # 0.65f

    const v39, 0x3da3d70a    # 0.08f

    const v40, 0x3f2e147b    # 0.68f

    const v41, 0x3ed70a3d    # 0.42f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const v0, 0x3f1eb852    # 0.62f

    const v15, 0x40dccccd    # 6.9f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v0, 0x40f5c28f    # 7.68f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const v0, 0x415170a4    # 13.09f

    const v15, 0x417fd70a    # 15.99f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const v0, -0x3ff51eb8    # -2.17f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v0, -0x40bae148    # -0.77f

    const v15, -0x3ef8cccd    # -8.45f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    const v36, -0x430a3d71    # -0.03f

    const v37, -0x416147ae    # -0.31f

    const v38, 0x3e6b851f    # 0.23f

    const v39, -0x40f5c28f    # -0.54f

    const/high16 v40, 0x3f000000    # 0.5f

    const v41, -0x40f5c28f    # -0.54f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const v0, 0x402d70a4    # 2.71f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    const v36, 0x3e8a3d71    # 0.27f

    const/16 v37, 0x0

    const v38, 0x3f07ae14    # 0.53f

    const v39, 0x3e6b851f    # 0.23f

    const v41, 0x3f0a3d71    # 0.54f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v0, 0x415170a4    # 13.09f

    const v15, 0x417fd70a    # 15.99f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    const v0, 0x41828f5c    # 16.32f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    const v0, -0x40628f5c    # -1.23f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    const v0, 0x3f1eb852    # 0.62f

    const v15, -0x3f233333    # -6.9f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    const v36, 0x3cf5c28f    # 0.03f

    const v37, -0x41570a3d    # -0.33f

    const v38, 0x3ebd70a4    # 0.37f

    const v39, -0x40f5c28f    # -0.54f

    const v40, 0x3f2e147b    # 0.68f

    const v41, -0x4128f5c3    # -0.42f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    const v0, 0x4000a3d7    # 2.01f

    const v15, 0x3f4ccccd    # 0.8f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    const v36, 0x3e6147ae    # 0.22f

    const v37, 0x3db851ec    # 0.09f

    const v38, 0x3eae147b    # 0.34f

    const v39, 0x3e9eb852    # 0.31f

    const v40, 0x3e9eb852    # 0.31f

    const v41, 0x3f0a3d71    # 0.54f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 127
    const v0, 0x41828f5c    # 16.32f

    const v15, 0x417fd70a    # 15.99f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    const v0, 0x41a0f5c3    # 20.12f

    const v15, 0x418770a4    # 16.93f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    const v0, -0x4028f5c3    # -1.68f

    const v15, -0x40a8f5c3    # -0.84f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    const v0, 0x3f8a3d71    # 1.08f

    const v15, -0x3fd33333    # -2.7f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    const v0, 0x3fb47ae1    # 1.41f

    const v15, 0x402d70a4    # 2.71f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 133
    const v36, 0x41a9ae14    # 21.21f

    const v37, 0x41850a3d    # 16.63f

    const v38, 0x41a51eb8    # 20.64f

    const v39, 0x4189851f    # 17.19f

    const v40, 0x41a0f5c3    # 20.12f

    const v41, 0x418770a4    # 16.93f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    nop

    .line 368
    .end local v11    # "$this$_get_BakeryDining__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-BakeryDiningKt$BakeryDining$1$6":I
    nop

    .line 369
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 367
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 370
    nop

    .line 371
    .end local v8    # "$i$f$PathData":I
    nop

    .line 372
    nop

    .line 373
    nop

    .line 374
    nop

    .line 375
    nop

    .line 376
    nop

    .line 377
    nop

    .line 378
    nop

    .line 379
    nop

    .line 380
    nop

    .line 365
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 381
    nop

    .line 382
    .end local v6    # "name$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 76
    .end local v2    # "fillAlpha$iv":F
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v19    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 153
    .end local v1    # "$this$_get_BakeryDining__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v21    # "$i$a$-materialIcon$default-BakeryDiningKt$BakeryDining$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v42    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/BakeryDiningKt;->_bakeryDining:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 137
    sget-object v0, Landroidx/compose/material/icons/twotone/BakeryDiningKt;->_bakeryDining:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
