.class public final Landroidx/compose/material/icons/automirrored/twotone/AirplaneTicketKt;
.super Ljava/lang/Object;
.source "AirplaneTicket.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAirplaneTicket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AirplaneTicket.kt\nandroidx/compose/material/icons/automirrored/twotone/AirplaneTicketKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,99:1\n223#2:100\n216#2,3:101\n219#2,4:105\n233#2,18:109\n253#2:146\n233#2,18:147\n253#2:184\n233#2,18:185\n253#2:222\n174#3:104\n705#4,2:127\n717#4,2:129\n719#4,11:135\n705#4,2:165\n717#4,2:167\n719#4,11:173\n705#4,2:203\n717#4,2:205\n719#4,11:211\n72#5,4:131\n72#5,4:169\n72#5,4:207\n*S KotlinDebug\n*F\n+ 1 AirplaneTicket.kt\nandroidx/compose/material/icons/automirrored/twotone/AirplaneTicketKt\n*L\n29#1:100\n29#1:101,3\n29#1:105,4\n31#1:109,18\n31#1:146\n55#1:147,18\n55#1:184\n79#1:185,18\n79#1:222\n29#1:104\n31#1:127,2\n31#1:129,2\n31#1:135,11\n55#1:165,2\n55#1:167,2\n55#1:173,11\n79#1:203,2\n79#1:205,2\n79#1:211,11\n31#1:131,4\n55#1:169,4\n79#1:207,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_airplaneTicket",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "AirplaneTicket",
        "Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;",
        "getAirplaneTicket",
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
.field private static _airplaneTicket:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getAirplaneTicket(Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46
    .param p0, "$this$AirplaneTicket"    # Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/AirplaneTicketKt;->_airplaneTicket:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/AirplaneTicketKt;->_airplaneTicket:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "AutoMirrored.TwoTone.AirplaneTicket"

    .local v2, "name$iv":Ljava/lang/String;
    const/4 v0, 0x0

    .line 100
    .local v0, "$i$f$materialIcon":I
    nop

    .line 101
    new-instance v13, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 102
    nop

    .line 103
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 104
    .local v3, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 105
    .end local v1    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 104
    .local v4, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 106
    .end local v1    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 107
    const/high16 v6, 0x41c00000    # 24.0f

    .line 101
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 108
    nop

    .line 101
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    nop

    .local v1, "$this$_get_AirplaneTicket__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 31
    .local v3, "$i$a$-materialIcon-AirplaneTicketKt$AirplaneTicket$1":I
    const v4, 0x3e99999a    # 0.3f

    .local v4, "fillAlpha$iv":F
    move/from16 v16, v4

    const v18, 0x3e99999a    # 0.3f

    .local v18, "strokeAlpha$iv":F
    move-object v5, v1

    .line 109
    .local v5, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 112
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move v13, v6

    .line 109
    const/4 v7, 0x0

    .line 118
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 119
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v8

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 121
    nop

    .line 123
    nop

    .line 124
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 125
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 126
    nop

    .line 118
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

    .line 127
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 128
    const-string v28, ""

    .local v28, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v14, v28

    .line 127
    const/16 v29, 0x0

    .line 129
    .local v29, "$i$f$path-R_LF-3I":I
    nop

    .line 130
    const/16 v23, 0x0

    .line 131
    .local v23, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v24, 0x0

    .line 132
    .local v24, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v25, v12

    .local v25, "$this$_get_AirplaneTicket__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v26, 0x0

    .line 32
    .local v26, "$i$a$-materialPath-YwgOQQI$default-AirplaneTicketKt$AirplaneTicket$1$1":I
    const v8, 0x408051ec    # 4.01f

    const v9, 0x4108a3d7    # 8.54f

    move/from16 v38, v0

    move-object/from16 v0, v25

    .end local v25    # "$this$_get_AirplaneTicket__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_AirplaneTicket__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v38, "$i$f$materialIcon":I
    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v31, 0x40a66666    # 5.2f

    const v32, 0x4113ae14    # 9.23f

    const/high16 v33, 0x40c00000    # 6.0f

    const v34, 0x412851ec    # 10.52f

    const/high16 v35, 0x40c00000    # 6.0f

    const/high16 v36, 0x41400000    # 12.0f

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/16 v31, 0x0

    const v32, 0x3fbc28f6    # 1.47f

    const v33, -0x40b0a3d7    # -0.81f

    const v34, 0x403147ae    # 2.77f

    const/high16 v35, -0x40000000    # -2.0f

    const v36, 0x405d70a4    # 3.46f

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/high16 v8, 0x40c00000    # 6.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v8, 0x408051ec    # 4.01f

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v8, 0x41023d71    # 8.14f

    const v9, 0x41487ae1    # 12.53f

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v8, 0x3fa147ae    # 1.26f

    const v9, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v8, 0x4018f5c3    # 2.39f

    const v9, -0x40dc28f6    # -0.64f

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v8, -0x3fe66666    # -2.4f

    const v9, -0x3f7ae148    # -4.16f

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v8, 0x3fb33333    # 1.4f

    const v9, -0x413d70a4    # -0.38f

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v8, 0x406f5c29    # 3.74f

    const v9, 0x408051ec    # 4.01f

    invoke-virtual {v0, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v8, 0x401c28f6    # 2.44f

    const v9, -0x40d9999a    # -0.65f

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v31, 0x3f028f5c    # 0.51f

    const v32, -0x41f0a3d7    # -0.14f

    const v33, 0x3f851eb8    # 1.04f

    const v34, 0x3e2e147b    # 0.17f

    const v35, 0x3f970a3d    # 1.18f

    const v36, 0x3f2e147b    # 0.68f

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v31, 0x3e051eb8    # 0.13f

    const v32, 0x3f028f5c    # 0.51f

    const v33, -0x41d1eb85    # -0.17f

    const v34, 0x3f851eb8    # 1.04f

    const v35, -0x40cf5c29    # -0.69f

    const v36, 0x3f9851ec    # 1.19f

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v8, -0x3ef23d71    # -8.86f

    const v9, 0x40170a3d    # 2.36f

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v8, -0x402b851f    # -1.66f

    const v9, -0x3fc7ae14    # -2.88f

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v8, 0x41487ae1    # 12.53f

    const v9, 0x41023d71    # 8.14f

    invoke-virtual {v0, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    nop

    .line 132
    .end local v0    # "$this$_get_AirplaneTicket__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v26    # "$i$a$-materialPath-YwgOQQI$default-AirplaneTicketKt$AirplaneTicket$1$1":I
    nop

    .line 133
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 131
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v24    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 134
    nop

    .line 135
    .end local v23    # "$i$f$PathData":I
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

    .line 141
    nop

    .line 142
    nop

    .line 143
    nop

    .line 144
    nop

    .line 129
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3800

    const/16 v27, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 145
    nop

    .line 146
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

    .line 55
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    .end local v18    # "strokeAlpha$iv":F
    move-object v0, v1

    .line 147
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 148
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "fillAlpha$iv":F
    move/from16 v24, v4

    .line 147
    nop

    .line 149
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v26, v5

    .line 147
    nop

    .line 150
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .restart local v6    # "pathFillType$iv":I
    move/from16 v21, v6

    .line 147
    const/4 v7, 0x0

    .line 156
    .restart local v7    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 157
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v8

    check-cast v23, Landroidx/compose/ui/graphics/Brush;

    .line 159
    nop

    .line 161
    nop

    .line 162
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v28

    .line 163
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v29

    .line 164
    nop

    .line 156
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

    .line 165
    .local v29, "strokeLineJoin$iv$iv":I
    .local v30, "strokeLineMiter$iv$iv":F
    nop

    .line 166
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v8

    .line 165
    const/4 v9, 0x0

    .line 167
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 168
    const/4 v11, 0x0

    .line 169
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 170
    .local v13, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v14, v12

    .local v14, "$this$_get_AirplaneTicket__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 56
    .local v15, "$i$a$-materialPath-YwgOQQI$default-AirplaneTicketKt$AirplaneTicket$1$2":I
    move-object/from16 v16, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v16, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x41a1851f    # 20.19f

    move-object/from16 v17, v2

    const/high16 v2, 0x40800000    # 4.0f

    .end local v2    # "name$iv":Ljava/lang/String;
    .local v17, "name$iv":Ljava/lang/String;
    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v14, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v40, 0x4039999a    # 2.9f

    const/high16 v41, 0x40800000    # 4.0f

    const v42, 0x4000a3d7    # 2.01f

    const v43, 0x409ccccd    # 4.9f

    const v44, 0x4000a3d7    # 2.01f

    const/high16 v45, 0x40c00000    # 6.0f

    move-object/from16 v39, v14

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v40, 0x40470a3d    # 3.11f

    const/high16 v41, 0x41200000    # 10.0f

    const/high16 v42, 0x40800000    # 4.0f

    const v43, 0x412e6666    # 10.9f

    const/high16 v44, 0x40800000    # 4.0f

    const/high16 v45, 0x41400000    # 12.0f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v0, -0x409c28f6    # -0.89f

    const/high16 v2, -0x40000000    # -2.0f

    move/from16 v18, v3

    .end local v3    # "$i$a$-materialIcon-AirplaneTicketKt$AirplaneTicket$1":I
    .local v18, "$i$a$-materialIcon-AirplaneTicketKt$AirplaneTicket$1":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v14, v0, v3, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/16 v40, 0x0

    const v41, 0x3f8ccccd    # 1.1f

    const v42, 0x3f666666    # 0.9f

    const/high16 v43, 0x40000000    # 2.0f

    const/high16 v44, 0x40000000    # 2.0f

    const/high16 v45, 0x40000000    # 2.0f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v40, 0x3f8ccccd    # 1.1f

    const/16 v41, 0x0

    const/high16 v42, 0x40000000    # 2.0f

    const v43, -0x4099999a    # -0.9f

    const/high16 v45, -0x40000000    # -2.0f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const/high16 v40, 0x41b00000    # 22.0f

    const v41, 0x409ccccd    # 4.9f

    const v42, 0x41a9851f    # 21.19f

    const/high16 v43, 0x40800000    # 4.0f

    const v44, 0x41a1851f    # 20.19f

    const/high16 v45, 0x40800000    # 4.0f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const/high16 v0, 0x41a00000    # 20.0f

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v14, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v0, -0x3fdd70a4    # -2.54f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v40, 0x3f9851ec    # 1.19f

    const v41, -0x40cf5c29    # -0.69f

    const/high16 v42, 0x40000000    # 2.0f

    const v43, -0x400147ae    # -1.99f

    const/high16 v44, 0x40000000    # 2.0f

    const v45, -0x3fa28f5c    # -3.46f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const/16 v40, 0x0

    const v41, -0x40428f5c    # -1.48f

    const v42, -0x40b33333    # -0.8f

    const v43, -0x3fceb852    # -2.77f

    const v44, -0x400147ae    # -1.99f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const/high16 v0, 0x40c00000    # 6.0f

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v14, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    nop

    .line 170
    .end local v14    # "$this$_get_AirplaneTicket__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-materialPath-YwgOQQI$default-AirplaneTicketKt$AirplaneTicket$1$2":I
    nop

    .line 171
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v20

    .line 169
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 172
    nop

    .line 173
    .end local v11    # "$i$f$PathData":I
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

    .line 179
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    nop

    .line 167
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x3800

    const/16 v35, 0x0

    invoke-static/range {v19 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 183
    nop

    .line 184
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

    .line 79
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    .end local v16    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v0, v1

    .line 185
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 186
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "fillAlpha$iv":F
    move/from16 v24, v2

    .line 185
    nop

    .line 187
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "strokeAlpha$iv":F
    move/from16 v26, v3

    .line 185
    nop

    .line 188
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v21, v4

    .line 185
    const/4 v5, 0x0

    .line 194
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 195
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v6

    check-cast v23, Landroidx/compose/ui/graphics/Brush;

    .line 197
    nop

    .line 199
    nop

    .line 200
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v28

    .line 201
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v29

    .line 202
    nop

    .line 194
    const/4 v6, 0x0

    move-object/from16 v25, v6

    .restart local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v19, v0

    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v27, v6

    .restart local v27    # "strokeLineWidth$iv$iv":F
    .restart local v28    # "strokeLineCap$iv$iv":I
    move/from16 v30, v6

    .line 203
    .restart local v29    # "strokeLineJoin$iv$iv":I
    .restart local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 204
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v6

    .line 203
    const/4 v7, 0x0

    .line 205
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 206
    const/4 v8, 0x0

    .line 207
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 208
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v9

    .local v12, "$this$_get_AirplaneTicket__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 80
    .local v13, "$i$a$-materialPath-YwgOQQI$default-AirplaneTicketKt$AirplaneTicket$1$3":I
    const v14, 0x418dd70a    # 17.73f

    const v15, 0x4154cccd    # 13.3f

    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v32, 0x3f051eb8    # 0.52f

    const v33, -0x41e66666    # -0.15f

    const v34, 0x3f51eb85    # 0.82f

    const v35, -0x40d1eb85    # -0.68f

    const v36, 0x3f30a3d7    # 0.69f

    const v37, -0x4067ae14    # -1.19f

    move-object/from16 v31, v12

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v32, -0x41f0a3d7    # -0.14f

    const v33, -0x40fd70a4    # -0.51f

    const v34, -0x40d47ae1    # -0.67f

    const v35, -0x40ae147b    # -0.82f

    const v36, -0x4068f5c3    # -1.18f

    const v37, -0x40d1eb85    # -0.68f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v14, -0x3fe3d70a    # -2.44f

    const v15, 0x3f266666    # 0.65f

    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v14, -0x3f7fae14    # -4.01f

    const v15, -0x3f90a3d7    # -3.74f

    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v14, -0x404ccccd    # -1.4f

    const v15, 0x3ec28f5c    # 0.38f

    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v14, 0x4019999a    # 2.4f

    const v15, 0x40851eb8    # 4.16f

    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v14, 0x41166666    # 9.4f

    const v15, 0x415851ec    # 13.52f

    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v14, -0x405eb852    # -1.26f

    const v15, -0x40828f5c    # -0.99f

    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v14, -0x4091eb85    # -0.93f

    const/high16 v15, 0x3e800000    # 0.25f

    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v14, 0x3fd47ae1    # 1.66f

    const v15, 0x403851ec    # 2.88f

    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v14, 0x4154cccd    # 13.3f

    const v15, 0x418dd70a    # 17.73f

    invoke-virtual {v12, v15, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    nop

    .line 208
    .end local v12    # "$this$_get_AirplaneTicket__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-materialPath-YwgOQQI$default-AirplaneTicketKt$AirplaneTicket$1$3":I
    nop

    .line 209
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v20

    .line 207
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 210
    nop

    .line 211
    .end local v8    # "$i$f$PathData":I
    nop

    .line 212
    nop

    .line 213
    nop

    .line 214
    nop

    .line 215
    nop

    .line 216
    nop

    .line 217
    nop

    .line 218
    nop

    .line 219
    nop

    .line 220
    nop

    .line 205
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x3800

    const/16 v35, 0x0

    invoke-static/range {v19 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v8

    .line 221
    nop

    .line 222
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

    .line 79
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v2    # "fillAlpha$iv":F
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 100
    .end local v1    # "$this$_get_AirplaneTicket__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v18    # "$i$a$-materialIcon-AirplaneTicketKt$AirplaneTicket$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v17    # "name$iv":Ljava/lang/String;
    .end local v38    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/automirrored/twotone/AirplaneTicketKt;->_airplaneTicket:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 95
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/AirplaneTicketKt;->_airplaneTicket:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
