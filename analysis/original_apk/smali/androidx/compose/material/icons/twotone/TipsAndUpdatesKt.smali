.class public final Landroidx/compose/material/icons/twotone/TipsAndUpdatesKt;
.super Ljava/lang/Object;
.source "TipsAndUpdates.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTipsAndUpdates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TipsAndUpdates.kt\nandroidx/compose/material/icons/twotone/TipsAndUpdatesKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,91:1\n212#2,12:92\n233#2,18:105\n253#2:142\n233#2,18:143\n253#2:180\n174#3:104\n705#4,2:123\n717#4,2:125\n719#4,11:131\n705#4,2:161\n717#4,2:163\n719#4,11:169\n72#5,4:127\n72#5,4:165\n*S KotlinDebug\n*F\n+ 1 TipsAndUpdates.kt\nandroidx/compose/material/icons/twotone/TipsAndUpdatesKt\n*L\n29#1:92,12\n30#1:105,18\n30#1:142\n39#1:143,18\n39#1:180\n29#1:104\n30#1:123,2\n30#1:125,2\n30#1:131,11\n39#1:161,2\n39#1:163,2\n39#1:169,11\n30#1:127,4\n39#1:165,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_tipsAndUpdates",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "TipsAndUpdates",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getTipsAndUpdates",
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
.field private static _tipsAndUpdates:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getTipsAndUpdates(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 43
    .param p0, "$this$TipsAndUpdates"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/TipsAndUpdatesKt;->_tipsAndUpdates:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/TipsAndUpdatesKt;->_tipsAndUpdates:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.TipsAndUpdates"

    .line 92
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 94
    const/4 v13, 0x0

    .line 92
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 103
    .local v14, "$i$f$materialIcon":I
    nop

    .line 96
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 97
    nop

    .line 98
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 104
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 99
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 104
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 100
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 101
    const/high16 v6, 0x41c00000    # 24.0f

    .line 96
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 102
    nop

    .line 96
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    nop

    .local v1, "$this$_get_TipsAndUpdates__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-TipsAndUpdatesKt$TipsAndUpdates$1":I
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v20, v3

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v4, v1

    .line 105
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 108
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v17, v5

    .line 105
    const/4 v6, 0x0

    .line 114
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 115
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v7

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 117
    nop

    .line 119
    nop

    .line 120
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 121
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 122
    nop

    .line 114
    move-object/from16 v21, v10

    .local v19, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v21, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v15, v4

    .local v15, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v34, 0x3f800000    # 1.0f

    move/from16 v23, v34

    .local v23, "strokeLineWidth$iv$iv":F
    .local v24, "strokeLineCap$iv$iv":I
    move/from16 v26, v34

    .line 123
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 124
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v7

    .line 123
    const/4 v8, 0x0

    .line 125
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 126
    const/4 v9, 0x0

    .line 127
    .local v9, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 128
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v16, v11

    .local v16, "$this$_get_TipsAndUpdates__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-TipsAndUpdatesKt$TipsAndUpdates$1$1":I
    const/high16 v10, 0x41680000    # 14.5f

    move-object/from16 v40, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v40, "name$iv":Ljava/lang/String;
    const/high16 v0, 0x41180000    # 9.5f

    move/from16 v41, v2

    move-object/from16 v2, v16

    .end local v16    # "$this$_get_TipsAndUpdates__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v2, "$this$_get_TipsAndUpdates__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v41, "$i$a$-materialIcon$default-TipsAndUpdatesKt$TipsAndUpdates$1":I
    invoke-virtual {v2, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const/high16 v28, 0x41680000    # 14.5f

    const v29, 0x40cf0a3d    # 6.47f

    const v30, 0x41407ae1    # 12.03f

    const/high16 v31, 0x40800000    # 4.0f

    const/high16 v32, 0x41100000    # 9.0f

    const/high16 v33, 0x40800000    # 4.0f

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const/high16 v10, 0x40600000    # 3.5f

    move/from16 v38, v3

    .end local v3    # "fillAlpha$iv":F
    .local v38, "fillAlpha$iv":F
    const v3, 0x40cf0a3d    # 6.47f

    invoke-virtual {v2, v10, v3, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/16 v28, 0x0

    const v29, 0x401e147b    # 2.47f

    const v30, 0x3fbeb852    # 1.49f

    const v31, 0x4078f5c3    # 3.89f

    const v32, 0x40166666    # 2.35f

    const/high16 v33, 0x40900000    # 4.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v3, 0x40c9999a    # 6.3f

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v28, 0x415028f6    # 13.01f

    const v29, 0x41563d71    # 13.39f

    const/high16 v30, 0x41680000    # 14.5f

    const v31, 0x413f851f    # 11.97f

    const/high16 v32, 0x41680000    # 14.5f

    const/high16 v33, 0x41180000    # 9.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    nop

    .line 128
    .end local v2    # "$this$_get_TipsAndUpdates__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-TipsAndUpdatesKt$TipsAndUpdates$1$1":I
    nop

    .line 129
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 127
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 130
    nop

    .line 131
    .end local v9    # "$i$f$PathData":I
    nop

    .line 132
    nop

    .line 133
    nop

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 138
    nop

    .line 139
    nop

    .line 140
    nop

    .line 125
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 141
    nop

    .line 142
    .end local v7    # "name$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$path-R_LF-3I":I
    .end local v15    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v19    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v21    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v23    # "strokeLineWidth$iv$iv":F
    .end local v24    # "strokeLineCap$iv$iv":I
    .end local v25    # "strokeLineJoin$iv$iv":I
    .end local v26    # "strokeLineMiter$iv$iv":F
    nop

    .line 39
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "strokeAlpha$iv":F
    .end local v38    # "fillAlpha$iv":F
    move-object v2, v1

    .line 143
    .local v2, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 144
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "fillAlpha$iv":F
    move/from16 v28, v4

    .line 143
    nop

    .line 145
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v30, v5

    .line 143
    nop

    .line 146
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v25, v6

    .line 143
    const/4 v7, 0x0

    .line 152
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 153
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v8

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 155
    nop

    .line 157
    nop

    .line 158
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 159
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 160
    nop

    .line 152
    const/4 v8, 0x0

    move-object/from16 v29, v8

    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v2

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v34

    .line 161
    .local v31, "strokeLineWidth$iv$iv":F
    .local v32, "strokeLineCap$iv$iv":I
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 162
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v8

    .line 161
    const/4 v9, 0x0

    .line 163
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 164
    const/4 v11, 0x0

    .line 165
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 166
    .local v15, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v24, v12

    .local v24, "$this$_get_TipsAndUpdates__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 40
    .local v35, "$i$a$-materialPath-YwgOQQI$default-TipsAndUpdatesKt$TipsAndUpdates$1$2":I
    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v10, 0x41a00000    # 20.0f

    move-object/from16 v0, v24

    .end local v24    # "$this$_get_TipsAndUpdates__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_TipsAndUpdates__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0, v3, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/16 v17, 0x0

    const v18, 0x3f8ccccd    # 1.1f

    const v19, -0x4099999a    # -0.9f

    const/high16 v20, 0x40000000    # 2.0f

    const/high16 v21, -0x40000000    # -2.0f

    const/high16 v22, 0x40000000    # 2.0f

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v3, 0x41a8cccd    # 21.1f

    move-object/from16 v42, v1

    const/high16 v1, 0x40e00000    # 7.0f

    .end local v1    # "$this$_get_TipsAndUpdates__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v42, "$this$_get_TipsAndUpdates__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0, v1, v3, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const/high16 v10, 0x41000000    # 8.0f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const/high16 v10, -0x40000000    # -2.0f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/high16 v1, 0x41840000    # 16.5f

    const/high16 v10, 0x41180000    # 9.5f

    invoke-virtual {v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v18, 0x40747ae1    # 3.82f

    const v19, -0x3fd5c28f    # -2.66f

    const v20, 0x40bb851f    # 5.86f

    const v21, -0x3f8eb852    # -3.77f

    const/high16 v22, 0x40d00000    # 6.5f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v10, 0x40a8a3d7    # 5.27f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v17, 0x40851eb8    # 4.16f

    const v18, 0x4175c28f    # 15.36f

    const/high16 v19, 0x3fc00000    # 1.5f

    const v20, 0x41551eb8    # 13.32f

    const/high16 v21, 0x3fc00000    # 1.5f

    const/high16 v22, 0x41180000    # 9.5f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/high16 v17, 0x3fc00000    # 1.5f

    const v18, 0x40ab851f    # 5.36f

    const v19, 0x409b851f    # 4.86f

    const/high16 v20, 0x40000000    # 2.0f

    const/high16 v21, 0x41100000    # 9.0f

    const/high16 v22, 0x40000000    # 2.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v10, 0x40ab851f    # 5.36f

    const/high16 v3, 0x41180000    # 9.5f

    invoke-virtual {v0, v1, v10, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const/high16 v1, 0x41680000    # 14.5f

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const/high16 v17, 0x41680000    # 14.5f

    const v18, 0x40cf0a3d    # 6.47f

    const v19, 0x41407ae1    # 12.03f

    const/high16 v20, 0x40800000    # 4.0f

    const/high16 v22, 0x40800000    # 4.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v1, 0x40cf0a3d    # 6.47f

    const/high16 v3, 0x40600000    # 3.5f

    const/high16 v10, 0x41180000    # 9.5f

    invoke-virtual {v0, v3, v1, v3, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const/16 v17, 0x0

    const v18, 0x401e147b    # 2.47f

    const v19, 0x3fbeb852    # 1.49f

    const v20, 0x4078f5c3    # 3.89f

    const v21, 0x40166666    # 2.35f

    const/high16 v22, 0x40900000    # 4.5f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v1, 0x40c9999a    # 6.3f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v17, 0x415028f6    # 13.01f

    const v18, 0x41563d71    # 13.39f

    const/high16 v19, 0x41680000    # 14.5f

    const v20, 0x413f851f    # 11.97f

    const/high16 v21, 0x41680000    # 14.5f

    const/high16 v22, 0x41180000    # 9.5f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v1, 0x41aaf5c3    # 21.37f

    const v3, 0x40ebd70a    # 7.37f

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v10, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v1, 0x3faf5c29    # 1.37f

    const v10, 0x3f2147ae    # 0.63f

    invoke-virtual {v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v1, -0x4050a3d7    # -1.37f

    invoke-virtual {v0, v10, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v10, 0x41c00000    # 24.0f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v0, v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v3, -0x40deb852    # -0.63f

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v3, 0x40ebd70a    # 7.37f

    const v10, 0x41aaf5c3    # 21.37f

    invoke-virtual {v0, v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v3, 0x3f70a3d7    # 0.94f

    const v10, -0x3ffc28f6    # -2.06f

    invoke-virtual {v0, v3, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v3, -0x408f5c29    # -0.94f

    invoke-virtual {v0, v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/4 v3, 0x0

    const/high16 v10, 0x41980000    # 19.0f

    invoke-virtual {v0, v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v3, -0x408f5c29    # -0.94f

    const v10, 0x4003d70a    # 2.06f

    invoke-virtual {v0, v3, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v1, 0x4003d70a    # 2.06f

    const v3, 0x3f70a3d7    # 0.94f

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    nop

    .line 166
    .end local v0    # "$this$_get_TipsAndUpdates__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-TipsAndUpdatesKt$TipsAndUpdates$1$2":I
    nop

    .line 167
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 165
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 168
    nop

    .line 169
    .end local v11    # "$i$f$PathData":I
    nop

    .line 170
    nop

    .line 171
    nop

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
    nop

    .line 176
    nop

    .line 177
    nop

    .line 178
    nop

    .line 163
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 179
    nop

    .line 180
    .end local v8    # "name$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 39
    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 103
    .end local v41    # "$i$a$-materialIcon$default-TipsAndUpdatesKt$TipsAndUpdates$1":I
    .end local v42    # "$this$_get_TipsAndUpdates__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v40    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/TipsAndUpdatesKt;->_tipsAndUpdates:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 87
    sget-object v0, Landroidx/compose/material/icons/twotone/TipsAndUpdatesKt;->_tipsAndUpdates:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
