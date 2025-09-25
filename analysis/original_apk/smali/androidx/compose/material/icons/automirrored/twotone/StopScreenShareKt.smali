.class public final Landroidx/compose/material/icons/automirrored/twotone/StopScreenShareKt;
.super Ljava/lang/Object;
.source "StopScreenShare.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStopScreenShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StopScreenShare.kt\nandroidx/compose/material/icons/automirrored/twotone/StopScreenShareKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,106:1\n223#2:107\n216#2,3:108\n219#2,4:112\n233#2,18:116\n253#2:153\n233#2,18:154\n253#2:191\n233#2,18:192\n253#2:229\n174#3:111\n705#4,2:134\n717#4,2:136\n719#4,11:142\n705#4,2:172\n717#4,2:174\n719#4,11:180\n705#4,2:210\n717#4,2:212\n719#4,11:218\n72#5,4:138\n72#5,4:176\n72#5,4:214\n*S KotlinDebug\n*F\n+ 1 StopScreenShare.kt\nandroidx/compose/material/icons/automirrored/twotone/StopScreenShareKt\n*L\n29#1:107\n29#1:108,3\n29#1:112,4\n31#1:116,18\n31#1:153\n42#1:154,18\n42#1:191\n89#1:192,18\n89#1:229\n29#1:111\n31#1:134,2\n31#1:136,2\n31#1:142,11\n42#1:172,2\n42#1:174,2\n42#1:180,11\n89#1:210,2\n89#1:212,2\n89#1:218,11\n31#1:138,4\n42#1:176,4\n89#1:214,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_stopScreenShare",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "StopScreenShare",
        "Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;",
        "getStopScreenShare",
        "(Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _stopScreenShare:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getStopScreenShare(Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 45
    .param p0, "$this$StopScreenShare"    # Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/StopScreenShareKt;->_stopScreenShare:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/StopScreenShareKt;->_stopScreenShare:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    nop

    .line 30
    nop

    .line 29
    const/4 v10, 0x1

    .local v10, "autoMirror$iv":Z
    const-string v2, "AutoMirrored.TwoTone.StopScreenShare"

    .local v2, "name$iv":Ljava/lang/String;
    const/4 v0, 0x0

    .line 107
    .local v0, "$i$f$materialIcon":I
    nop

    .line 108
    new-instance v13, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 109
    nop

    .line 110
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 111
    .local v3, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 112
    .end local v1    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 111
    .local v4, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 113
    .end local v1    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 114
    const/high16 v6, 0x41c00000    # 24.0f

    .line 108
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 115
    nop

    .line 108
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    nop

    .local v1, "$this$_get_StopScreenShare__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 31
    .local v3, "$i$a$-materialIcon-StopScreenShareKt$StopScreenShare$1":I
    const v4, 0x3e99999a    # 0.3f

    .local v4, "fillAlpha$iv":F
    move/from16 v16, v4

    const v18, 0x3e99999a    # 0.3f

    .local v18, "strokeAlpha$iv":F
    move-object v5, v1

    .line 116
    .local v5, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 119
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move v13, v6

    .line 116
    const/4 v7, 0x0

    .line 125
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 126
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v8

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 128
    nop

    .line 130
    nop

    .line 131
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 132
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 133
    nop

    .line 125
    move-object/from16 v17, v9

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v5

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v19, v8

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    move/from16 v22, v8

    .line 134
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 135
    const-string v28, ""

    .local v28, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v14, v28

    .line 134
    const/16 v29, 0x0

    .line 136
    .local v29, "$i$f$path-R_LF-3I":I
    nop

    .line 137
    const/16 v23, 0x0

    .line 138
    .local v23, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v24, 0x0

    .line 139
    .local v24, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v25, v12

    .local v25, "$this$_get_StopScreenShare__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v26, 0x0

    .line 32
    .local v26, "$i$a$-materialPath-YwgOQQI$default-StopScreenShareKt$StopScreenShare$1$1":I
    const v8, 0x412ab852    # 10.67f

    const v9, 0x4148a3d7    # 12.54f

    move/from16 v37, v0

    move-object/from16 v0, v25

    .end local v25    # "$this$_get_StopScreenShare__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_StopScreenShare__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v37, "$i$f$materialIcon":I
    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v31, 0x4112147b    # 9.13f

    const v32, 0x414eb852    # 12.92f

    const v33, 0x40feb852    # 7.96f

    const v34, 0x415b5c29    # 13.71f

    const/high16 v35, 0x40e00000    # 7.0f

    const/high16 v36, 0x41700000    # 15.0f

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v31, 0x3e9eb852    # 0.31f

    const v32, -0x40428f5c    # -1.48f

    const v33, 0x3f70a3d7    # 0.94f

    const v34, -0x3fc47ae1    # -2.93f

    const v35, 0x40051eb8    # 2.08f

    const v36, -0x3f7e6666    # -4.05f

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v8, 0x408428f6    # 4.13f

    const v9, 0x40c0a3d7    # 6.02f

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v8, 0x412028f6    # 10.01f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v8, 0x41223d71    # 10.14f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v8, -0x3fa1eb85    # -3.47f

    const v9, -0x3fa0a3d7    # -3.49f

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    nop

    .line 139
    .end local v0    # "$this$_get_StopScreenShare__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v26    # "$i$a$-materialPath-YwgOQQI$default-StopScreenShareKt$StopScreenShare$1$1":I
    nop

    .line 140
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 138
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v24    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 141
    nop

    .line 142
    .end local v23    # "$i$f$PathData":I
    nop

    .line 143
    nop

    .line 144
    nop

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 136
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3800

    const/16 v27, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 152
    nop

    .line 153
    .end local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v19    # "strokeLineWidth$iv$iv":F
    .end local v20    # "strokeLineCap$iv$iv":I
    .end local v21    # "strokeLineJoin$iv$iv":I
    .end local v22    # "strokeLineMiter$iv$iv":F
    .end local v28    # "name$iv$iv":Ljava/lang/String;
    .end local v29    # "$i$f$path-R_LF-3I":I
    nop

    .line 42
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    .end local v18    # "strokeAlpha$iv":F
    move-object v0, v1

    .line 154
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 155
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "fillAlpha$iv":F
    move/from16 v24, v4

    .line 154
    nop

    .line 156
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v26, v5

    .line 154
    nop

    .line 157
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .restart local v6    # "pathFillType$iv":I
    move/from16 v21, v6

    .line 154
    const/4 v7, 0x0

    .line 163
    .restart local v7    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 164
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v8

    check-cast v23, Landroidx/compose/ui/graphics/Brush;

    .line 166
    nop

    .line 168
    nop

    .line 169
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v28

    .line 170
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v29

    .line 171
    nop

    .line 163
    const/4 v8, 0x0

    move-object/from16 v25, v8

    .local v23, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v25, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v19, v0

    const/high16 v8, 0x3f800000    # 1.0f

    .local v19, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v27, v8

    .local v27, "strokeLineWidth$iv$iv":F
    .local v28, "strokeLineCap$iv$iv":I
    move/from16 v30, v8

    .line 172
    .local v29, "strokeLineJoin$iv$iv":I
    .local v30, "strokeLineMiter$iv$iv":F
    nop

    .line 173
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v8

    .line 172
    const/4 v9, 0x0

    .line 174
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 175
    const/4 v11, 0x0

    .line 176
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 177
    .local v13, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v14, v12

    .local v14, "$this$_get_StopScreenShare__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 43
    .local v15, "$i$a$-materialPath-YwgOQQI$default-StopScreenShareKt$StopScreenShare$1$2":I
    move-object/from16 v16, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v16, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x41ae51ec    # 21.79f

    move-object/from16 v17, v2

    .end local v2    # "name$iv":Ljava/lang/String;
    .local v17, "name$iv":Ljava/lang/String;
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v14, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const/high16 v2, 0x41c00000    # 24.0f

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v14, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v14, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v2, -0x3ff28f5c    # -2.21f

    invoke-virtual {v14, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v2, 0x3f8e147b    # 1.11f

    const v0, 0x403eb852    # 2.98f

    invoke-virtual {v14, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v0, 0x3fc66666    # 1.55f

    const v2, 0x3fc7ae14    # 1.56f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v39, -0x412e147b    # -0.41f

    const v40, 0x3ebd70a4    # 0.37f

    const v41, -0x40d70a3d    # -0.66f

    const v42, 0x3f63d70a    # 0.89f

    const v43, -0x40d70a3d    # -0.66f

    const v44, 0x3fbd70a4    # 1.48f

    move-object/from16 v38, v14

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v14, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const/16 v39, 0x0

    const v40, 0x3f8ccccd    # 1.1f

    const v41, 0x3f666666    # 0.9f

    const/high16 v42, 0x40000000    # 2.0f

    const v43, 0x4000a3d7    # 2.01f

    const/high16 v44, 0x40000000    # 2.0f

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const/4 v0, 0x0

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v0, 0x41910a3d    # 18.13f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v0, 0x402d70a4    # 2.71f

    invoke-virtual {v14, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v0, 0x3fb47ae1    # 1.41f

    const v2, -0x404b851f    # -1.41f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v0, 0x402147ae    # 2.52f

    const v2, 0x3fc8f5c3    # 1.57f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v0, 0x403eb852    # 2.98f

    const v2, 0x3f8e147b    # 1.11f

    invoke-virtual {v14, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v0, 0x40800000    # 4.0f

    const v2, 0x40c0a3d7    # 6.02f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v0, 0x3e051eb8    # 0.13f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v0, 0x409e6666    # 4.95f

    const v2, 0x409dc28f    # 4.93f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v39, 0x40fe147b    # 7.94f

    const v40, 0x41411eb8    # 12.07f

    const v41, 0x40e9eb85    # 7.31f

    const v42, 0x415851ec    # 13.52f

    const/high16 v43, 0x40e00000    # 7.0f

    const/high16 v44, 0x41700000    # 15.0f

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v39, 0x3f75c28f    # 0.96f

    const v40, -0x405ae148    # -1.29f

    const v41, 0x400851ec    # 2.13f

    const v42, -0x3ffae148    # -2.08f

    const v43, 0x406ae148    # 3.67f

    const v44, -0x3fe28f5c    # -2.46f

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v0, 0x405d70a4    # 3.46f

    const v2, 0x405eb852    # 3.48f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v0, 0x418028f6    # 16.02f

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v14, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const/high16 v0, -0x3ee00000    # -10.0f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v0, 0x40c0a3d7    # 6.02f

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v14, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v0, 0x41230a3d    # 10.19f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v0, 0x3fa66666    # 1.3f

    invoke-virtual {v14, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v39, 0x3ed70a3d    # 0.42f

    const v40, -0x41428f5c    # -0.37f

    const v41, 0x3f333333    # 0.7f

    const v42, -0x409c28f6    # -0.89f

    const v43, 0x3f333333    # 0.7f

    const v44, -0x404147ae    # -1.49f

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const/high16 v0, -0x3ee00000    # -10.0f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const/16 v39, 0x0

    const v40, -0x4071eb85    # -1.11f

    const v41, -0x4099999a    # -0.9f

    const/high16 v42, -0x40000000    # -2.0f

    const/high16 v43, -0x40000000    # -2.0f

    const/high16 v44, -0x40000000    # -2.0f

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v0, 0x40f9999a    # 7.8f

    const v2, 0x4080a3d7    # 4.02f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v14, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/high16 v0, 0x41a00000    # 20.0f

    const v2, 0x40c0a3d7    # 6.02f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v0, 0x414ee148    # 12.93f

    const v2, 0x41126666    # 9.15f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v0, 0x40328f5c    # 2.79f

    const v2, 0x4031eb85    # 2.78f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v0, 0x3fa3d70a    # 1.28f

    const v2, -0x40666666    # -1.2f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const/high16 v0, 0x41500000    # 13.0f

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v0, 0x400851ec    # 2.13f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v0, -0x4270a3d7    # -0.07f

    const v2, 0x3ca3d70a    # 0.02f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    nop

    .line 177
    .end local v14    # "$this$_get_StopScreenShare__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-materialPath-YwgOQQI$default-StopScreenShareKt$StopScreenShare$1$2":I
    nop

    .line 178
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v20

    .line 176
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 179
    nop

    .line 180
    .end local v11    # "$i$f$PathData":I
    nop

    .line 181
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

    .line 174
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x3800

    const/16 v35, 0x0

    invoke-static/range {v19 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 190
    nop

    .line 191
    .end local v8    # "name$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$path-R_LF-3I":I
    .end local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v27    # "strokeLineWidth$iv$iv":F
    .end local v28    # "strokeLineCap$iv$iv":I
    .end local v29    # "strokeLineJoin$iv$iv":I
    .end local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 89
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    .end local v16    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x3e99999a    # 0.3f

    .local v0, "fillAlpha$iv":F
    move/from16 v24, v0

    const v26, 0x3e99999a    # 0.3f

    .local v26, "strokeAlpha$iv":F
    move-object v2, v1

    .line 192
    .local v2, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 195
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v21, v4

    .line 192
    const/4 v5, 0x0

    .line 201
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 202
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v6

    check-cast v23, Landroidx/compose/ui/graphics/Brush;

    .line 204
    nop

    .line 206
    nop

    .line 207
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v28

    .line 208
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v29

    .line 209
    nop

    .line 201
    const/4 v6, 0x0

    move-object/from16 v25, v6

    .restart local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v19, v2

    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v27, v6

    .restart local v27    # "strokeLineWidth$iv$iv":F
    .restart local v28    # "strokeLineCap$iv$iv":I
    move/from16 v30, v6

    .line 210
    .restart local v29    # "strokeLineJoin$iv$iv":I
    .restart local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 211
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v6

    .line 210
    const/4 v7, 0x0

    .line 212
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 213
    const/4 v8, 0x0

    .line 214
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 215
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v9

    .local v12, "$this$_get_StopScreenShare__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 90
    .local v13, "$i$a$-materialPath-YwgOQQI$default-StopScreenShareKt$StopScreenShare$1$3":I
    const/high16 v14, 0x41a00000    # 20.0f

    const v15, 0x40c0a3d7    # 6.02f

    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v14, 0x411ccccd    # 9.8f

    invoke-virtual {v12, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v14, 0x404851ec    # 3.13f

    invoke-virtual {v12, v14, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v39, 0x3ca3d70a    # 0.02f

    const/16 v40, 0x0

    const v41, 0x3d23d70a    # 0.04f

    const v42, -0x43dc28f6    # -0.01f

    const v43, 0x3d8f5c29    # 0.07f

    const v44, -0x435c28f6    # -0.02f

    move-object/from16 v38, v12

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const/high16 v14, 0x40e00000    # 7.0f

    invoke-virtual {v12, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v14, 0x406eb852    # 3.73f

    const/high16 v15, 0x40800000    # 4.0f

    invoke-virtual {v12, v15, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v14, -0x405c28f6    # -1.28f

    const v15, 0x3f99999a    # 1.2f

    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v14, 0x4181ae14    # 16.21f

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-virtual {v12, v15, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v14, 0x40c0a3d7    # 6.02f

    invoke-virtual {v12, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    nop

    .line 215
    .end local v12    # "$this$_get_StopScreenShare__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-materialPath-YwgOQQI$default-StopScreenShareKt$StopScreenShare$1$3":I
    nop

    .line 216
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v20

    .line 214
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 217
    nop

    .line 218
    .end local v8    # "$i$f$PathData":I
    nop

    .line 219
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

    .line 212
    invoke-static/range {v19 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v8

    .line 228
    nop

    .line 229
    .end local v6    # "name$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$path-R_LF-3I":I
    .end local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v27    # "strokeLineWidth$iv$iv":F
    .end local v28    # "strokeLineCap$iv$iv":I
    .end local v29    # "strokeLineJoin$iv$iv":I
    .end local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 89
    .end local v0    # "fillAlpha$iv":F
    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v26    # "strokeAlpha$iv":F
    nop

    .line 107
    .end local v1    # "$this$_get_StopScreenShare__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "$i$a$-materialIcon-StopScreenShareKt$StopScreenShare$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v17    # "name$iv":Ljava/lang/String;
    .end local v37    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/automirrored/twotone/StopScreenShareKt;->_stopScreenShare:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 102
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/StopScreenShareKt;->_stopScreenShare:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
