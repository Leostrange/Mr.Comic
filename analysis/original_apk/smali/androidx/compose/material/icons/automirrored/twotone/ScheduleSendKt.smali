.class public final Landroidx/compose/material/icons/automirrored/twotone/ScheduleSendKt;
.super Ljava/lang/Object;
.source "ScheduleSend.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScheduleSend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScheduleSend.kt\nandroidx/compose/material/icons/automirrored/twotone/ScheduleSendKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,80:1\n223#2:81\n216#2,3:82\n219#2,4:86\n233#2,18:90\n253#2:127\n233#2,18:128\n253#2:165\n233#2,18:166\n253#2:203\n174#3:85\n705#4,2:108\n717#4,2:110\n719#4,11:116\n705#4,2:146\n717#4,2:148\n719#4,11:154\n705#4,2:184\n717#4,2:186\n719#4,11:192\n72#5,4:112\n72#5,4:150\n72#5,4:188\n*S KotlinDebug\n*F\n+ 1 ScheduleSend.kt\nandroidx/compose/material/icons/automirrored/twotone/ScheduleSendKt\n*L\n29#1:81\n29#1:82,3\n29#1:86,4\n31#1:90,18\n31#1:127\n42#1:128,18\n42#1:165\n59#1:166,18\n59#1:203\n29#1:85\n31#1:108,2\n31#1:110,2\n31#1:116,11\n42#1:146,2\n42#1:148,2\n42#1:154,11\n59#1:184,2\n59#1:186,2\n59#1:192,11\n31#1:112,4\n42#1:150,4\n59#1:188,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_scheduleSend",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "ScheduleSend",
        "Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;",
        "getScheduleSend",
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
.field private static _scheduleSend:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getScheduleSend(Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46
    .param p0, "$this$ScheduleSend"    # Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/ScheduleSendKt;->_scheduleSend:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/ScheduleSendKt;->_scheduleSend:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "AutoMirrored.TwoTone.ScheduleSend"

    .local v2, "name$iv":Ljava/lang/String;
    const/4 v0, 0x0

    .line 81
    .local v0, "$i$f$materialIcon":I
    nop

    .line 82
    new-instance v13, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 83
    nop

    .line 84
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 85
    .local v3, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 86
    .end local v1    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 85
    .local v4, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 87
    .end local v1    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 88
    const/high16 v6, 0x41c00000    # 24.0f

    .line 82
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 89
    nop

    .line 82
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    nop

    .local v1, "$this$_get_ScheduleSend__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 31
    .local v3, "$i$a$-materialIcon-ScheduleSendKt$ScheduleSend$1":I
    const v4, 0x3e99999a    # 0.3f

    .local v4, "fillAlpha$iv":F
    move/from16 v16, v4

    const v18, 0x3e99999a    # 0.3f

    .local v18, "strokeAlpha$iv":F
    move-object v5, v1

    .line 90
    .local v5, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 93
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move v13, v6

    .line 90
    const/4 v7, 0x0

    .line 99
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 100
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v8

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 102
    nop

    .line 104
    nop

    .line 105
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 106
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 107
    nop

    .line 99
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

    .line 108
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 109
    const-string v28, ""

    .local v28, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v14, v28

    .line 108
    const/16 v29, 0x0

    .line 110
    .local v29, "$i$f$path-R_LF-3I":I
    nop

    .line 111
    const/16 v23, 0x0

    .line 112
    .local v23, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v24, 0x0

    .line 113
    .local v24, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v25, v12

    .local v25, "$this$_get_ScheduleSend__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v26, 0x0

    .line 32
    .local v26, "$i$a$-materialPath-YwgOQQI$default-ScheduleSendKt$ScheduleSend$1$1":I
    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x41280000    # 10.5f

    move/from16 v37, v0

    move-object/from16 v0, v25

    .end local v25    # "$this$_get_ScheduleSend__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_ScheduleSend__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v37, "$i$f$materialIcon":I
    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v9, -0x3f400000    # -6.0f

    invoke-virtual {v0, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v8, 0x405f5c29    # 3.49f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v8, 0x40ac7ae1    # 5.39f

    const v9, -0x3feeb852    # -2.27f

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v31, 0x3f19999a    # 0.6f

    const v32, -0x40228f5c    # -1.73f

    const v33, 0x3fee147b    # 1.86f

    const v34, -0x3fb5c28f    # -3.16f

    const v35, 0x405eb852    # 3.48f

    const v36, -0x3f81eb85    # -3.97f

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v8, 0x40e051ec    # 7.01f

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {v0, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/high16 v9, 0x41280000    # 10.5f

    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    nop

    .line 113
    .end local v0    # "$this$_get_ScheduleSend__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v26    # "$i$a$-materialPath-YwgOQQI$default-ScheduleSendKt$ScheduleSend$1$1":I
    nop

    .line 114
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 112
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v24    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 115
    nop

    .line 116
    .end local v23    # "$i$f$PathData":I
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    nop

    .line 110
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3800

    const/16 v27, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 126
    nop

    .line 127
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

    .line 128
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 129
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "fillAlpha$iv":F
    move/from16 v24, v4

    .line 128
    nop

    .line 130
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v26, v5

    .line 128
    nop

    .line 131
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .restart local v6    # "pathFillType$iv":I
    move/from16 v21, v6

    .line 128
    const/4 v7, 0x0

    .line 137
    .restart local v7    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 138
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-direct {v9, v11, v12, v13}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v9

    check-cast v23, Landroidx/compose/ui/graphics/Brush;

    .line 140
    nop

    .line 142
    nop

    .line 143
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v28

    .line 144
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v29

    .line 145
    nop

    .line 137
    const/4 v9, 0x0

    move-object/from16 v25, v9

    .local v23, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v25, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v19, v0

    const/high16 v9, 0x3f800000    # 1.0f

    .local v19, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v27, v9

    .local v27, "strokeLineWidth$iv$iv":F
    .local v28, "strokeLineCap$iv$iv":I
    move/from16 v30, v9

    .line 146
    .local v29, "strokeLineJoin$iv$iv":I
    .local v30, "strokeLineMiter$iv$iv":F
    nop

    .line 147
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v9

    .line 146
    const/4 v11, 0x0

    .line 148
    .local v11, "$i$f$path-R_LF-3I":I
    nop

    .line 149
    const/4 v12, 0x0

    .line 150
    .local v12, "$i$f$PathData":I
    new-instance v13, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v13, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v14, 0x0

    .line 151
    .local v14, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v15, v13

    .local v15, "$this$_get_ScheduleSend__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 43
    .local v16, "$i$a$-materialPath-YwgOQQI$default-ScheduleSendKt$ScheduleSend$1$2":I
    const/high16 v8, 0x41300000    # 11.0f

    move-object/from16 v18, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v18, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v15, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const/high16 v0, -0x40400000    # -1.5f

    const/high16 v8, -0x3f400000    # -6.0f

    invoke-virtual {v15, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v0, 0x40e051ec    # 7.01f

    invoke-virtual {v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v0, 0x410deb85    # 8.87f

    const v8, 0x406f5c29    # 3.74f

    invoke-virtual {v15, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v40, 0x3f70a3d7    # 0.94f

    const v41, -0x410f5c29    # -0.47f

    const/high16 v42, 0x40000000    # 2.0f

    const/high16 v43, -0x40c00000    # -0.75f

    const v44, 0x404851ec    # 3.13f

    const/high16 v45, -0x40c00000    # -0.75f

    move-object/from16 v39, v15

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v40, 0x3dcccccd    # 0.1f

    const/16 v41, 0x0

    const v42, 0x3e428f5c    # 0.19f

    const v43, 0x3c23d70a    # 0.01f

    const v44, 0x3e8f5c29    # 0.28f

    const v45, 0x3c23d70a    # 0.01f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v15, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/high16 v0, 0x40e00000    # 7.0f

    const v8, -0x3fc33333    # -2.95f

    invoke-virtual {v15, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const/16 v40, 0x0

    const v41, -0x435c28f6    # -0.02f

    const/16 v42, 0x0

    const v43, -0x430a3d71    # -0.03f

    const/16 v44, 0x0

    const v45, -0x42b33333    # -0.05f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v41, -0x40b33333    # -0.8f

    const v42, 0x3e0f5c29    # 0.14f

    const v43, -0x403851ec    # -1.56f

    const v44, 0x3ec7ae14    # 0.39f

    const v45, -0x3fee147b    # -2.28f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v0, 0x4187eb85    # 16.99f

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-virtual {v15, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/high16 v0, 0x41580000    # 13.5f

    invoke-virtual {v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/high16 v0, 0x41300000    # 11.0f

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v15, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    nop

    .line 151
    .end local v15    # "$this$_get_ScheduleSend__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-materialPath-YwgOQQI$default-ScheduleSendKt$ScheduleSend$1$2":I
    nop

    .line 152
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v20

    .line 150
    .end local v13    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v14    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 153
    nop

    .line 154
    .end local v12    # "$i$f$PathData":I
    nop

    .line 155
    nop

    .line 156
    nop

    .line 157
    nop

    .line 158
    nop

    .line 159
    nop

    .line 160
    nop

    .line 161
    nop

    .line 162
    nop

    .line 163
    nop

    .line 148
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x3800

    const/16 v35, 0x0

    invoke-static/range {v19 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 164
    nop

    .line 165
    .end local v9    # "name$iv$iv":Ljava/lang/String;
    .end local v11    # "$i$f$path-R_LF-3I":I
    .end local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v27    # "strokeLineWidth$iv$iv":F
    .end local v28    # "strokeLineCap$iv$iv":I
    .end local v29    # "strokeLineJoin$iv$iv":I
    .end local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 59
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    .end local v18    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v0, v1

    .line 166
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 167
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "fillAlpha$iv":F
    move/from16 v24, v4

    .line 166
    nop

    .line 168
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "strokeAlpha$iv":F
    move/from16 v26, v5

    .line 166
    nop

    .line 169
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .restart local v6    # "pathFillType$iv":I
    move/from16 v21, v6

    .line 166
    const/4 v7, 0x0

    .line 175
    .restart local v7    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 176
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v8

    check-cast v23, Landroidx/compose/ui/graphics/Brush;

    .line 178
    nop

    .line 180
    nop

    .line 181
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v28

    .line 182
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v29

    .line 183
    nop

    .line 175
    const/4 v8, 0x0

    move-object/from16 v25, v8

    .restart local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v19, v0

    const/high16 v8, 0x3f800000    # 1.0f

    .restart local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v27, v8

    .restart local v27    # "strokeLineWidth$iv$iv":F
    .restart local v28    # "strokeLineCap$iv$iv":I
    move/from16 v30, v8

    .line 184
    .restart local v29    # "strokeLineJoin$iv$iv":I
    .restart local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 185
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v8

    .line 184
    const/4 v9, 0x0

    .line 186
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 187
    const/4 v11, 0x0

    .line 188
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 189
    .local v13, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v14, v12

    .local v14, "$this$_get_ScheduleSend__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 60
    .local v15, "$i$a$-materialPath-YwgOQQI$default-ScheduleSendKt$ScheduleSend$1$3":I
    move-object/from16 v16, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v16, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x41880000    # 17.0f

    move-object/from16 v17, v1

    const/high16 v1, 0x41400000    # 12.0f

    .end local v1    # "$this$_get_ScheduleSend__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v17, "$this$_get_ScheduleSend__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v14, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v39, -0x3fcf5c29    # -2.76f

    const/high16 v41, -0x3f600000    # -5.0f

    const v42, 0x400f5c29    # 2.24f

    const/high16 v43, -0x3f600000    # -5.0f

    const/high16 v44, 0x40a00000    # 5.0f

    move-object/from16 v38, v14

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v1, 0x400f5c29    # 2.24f

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {v14, v1, v0, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v39, 0x4030a3d7    # 2.76f

    const/high16 v41, 0x40a00000    # 5.0f

    const v42, -0x3ff0a3d7    # -2.24f

    const/high16 v43, 0x40a00000    # 5.0f

    const/high16 v44, -0x3f600000    # -5.0f

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v0, 0x419e147b    # 19.76f

    move-object/from16 v18, v2

    const/high16 v1, 0x41880000    # 17.0f

    const/high16 v2, 0x41400000    # 12.0f

    .end local v2    # "name$iv":Ljava/lang/String;
    .local v18, "name$iv":Ljava/lang/String;
    invoke-virtual {v14, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v0, 0x41953333    # 18.65f

    const v1, 0x419acccd    # 19.35f

    invoke-virtual {v14, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v2, -0x3ff66666    # -2.15f

    invoke-virtual {v14, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v14, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v14, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v2, 0x40328f5c    # 2.79f

    invoke-virtual {v14, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v2, 0x3feccccd    # 1.85f

    invoke-virtual {v14, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v14, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    nop

    .line 189
    .end local v14    # "$this$_get_ScheduleSend__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-materialPath-YwgOQQI$default-ScheduleSendKt$ScheduleSend$1$3":I
    nop

    .line 190
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v20

    .line 188
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 191
    nop

    .line 192
    .end local v11    # "$i$f$PathData":I
    nop

    .line 193
    nop

    .line 194
    nop

    .line 195
    nop

    .line 196
    nop

    .line 197
    nop

    .line 198
    nop

    .line 199
    nop

    .line 200
    nop

    .line 201
    nop

    .line 186
    invoke-static/range {v19 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 202
    nop

    .line 203
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

    .line 59
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    .end local v16    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 81
    .end local v3    # "$i$a$-materialIcon-ScheduleSendKt$ScheduleSend$1":I
    .end local v17    # "$this$_get_ScheduleSend__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v18    # "name$iv":Ljava/lang/String;
    .end local v37    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/automirrored/twotone/ScheduleSendKt;->_scheduleSend:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 76
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/ScheduleSendKt;->_scheduleSend:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
