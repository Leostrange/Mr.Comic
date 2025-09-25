.class public final Landroidx/compose/material/icons/automirrored/rounded/OfflineShareKt;
.super Ljava/lang/Object;
.source "OfflineShare.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineShare.kt\nandroidx/compose/material/icons/automirrored/rounded/OfflineShareKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,88:1\n223#2:89\n216#2,3:90\n219#2,4:94\n233#2,18:98\n253#2:135\n233#2,18:136\n253#2:173\n233#2,18:174\n253#2:211\n174#3:93\n705#4,2:116\n717#4,2:118\n719#4,11:124\n705#4,2:154\n717#4,2:156\n719#4,11:162\n705#4,2:192\n717#4,2:194\n719#4,11:200\n72#5,4:120\n72#5,4:158\n72#5,4:196\n*S KotlinDebug\n*F\n+ 1 OfflineShare.kt\nandroidx/compose/material/icons/automirrored/rounded/OfflineShareKt\n*L\n29#1:89\n29#1:90,3\n29#1:94,4\n31#1:98,18\n31#1:135\n46#1:136,18\n46#1:173\n64#1:174,18\n64#1:211\n29#1:93\n31#1:116,2\n31#1:118,2\n31#1:124,11\n46#1:154,2\n46#1:156,2\n46#1:162,11\n64#1:192,2\n64#1:194,2\n64#1:200,11\n31#1:120,4\n46#1:158,4\n64#1:196,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_offlineShare",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "OfflineShare",
        "Landroidx/compose/material/icons/Icons$AutoMirrored$Rounded;",
        "getOfflineShare",
        "(Landroidx/compose/material/icons/Icons$AutoMirrored$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _offlineShare:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getOfflineShare(Landroidx/compose/material/icons/Icons$AutoMirrored$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 45
    .param p0, "$this$OfflineShare"    # Landroidx/compose/material/icons/Icons$AutoMirrored$Rounded;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/automirrored/rounded/OfflineShareKt;->_offlineShare:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/automirrored/rounded/OfflineShareKt;->_offlineShare:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "AutoMirrored.Rounded.OfflineShare"

    .local v2, "name$iv":Ljava/lang/String;
    const/4 v0, 0x0

    .line 89
    .local v0, "$i$f$materialIcon":I
    nop

    .line 90
    new-instance v13, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 91
    nop

    .line 92
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 93
    .local v3, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 94
    .end local v1    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 93
    .local v4, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 95
    .end local v1    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 96
    const/high16 v6, 0x41c00000    # 24.0f

    .line 90
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 97
    nop

    .line 90
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    nop

    .local v1, "$this$_get_OfflineShare__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 31
    .local v3, "$i$a$-materialIcon-OfflineShareKt$OfflineShare$1":I
    move-object v4, v1

    .line 98
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 99
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v16, v5

    .line 98
    nop

    .line 100
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v18, v6

    .line 98
    nop

    .line 101
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move v13, v7

    .line 98
    const/4 v8, 0x0

    .line 107
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 108
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v14, 0x0

    invoke-direct {v9, v11, v12, v14}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v9

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 110
    nop

    .line 112
    nop

    .line 113
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 114
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 115
    nop

    .line 107
    move-object/from16 v17, v14

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v19, v9

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    move/from16 v22, v9

    .line 116
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 117
    const-string v28, ""

    move-object v12, v14

    .local v28, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v14, v28

    .line 116
    const/16 v29, 0x0

    .line 118
    .local v29, "$i$f$path-R_LF-3I":I
    nop

    .line 119
    const/16 v23, 0x0

    .line 120
    .local v23, "$i$f$PathData":I
    new-instance v24, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct/range {v24 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v24, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v25, 0x0

    .line 121
    .local v25, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v26, v24

    .local v26, "$this$_get_OfflineShare__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v27, 0x0

    .line 32
    .local v27, "$i$a$-materialPath-YwgOQQI$default-OfflineShareKt$OfflineShare$1$1":I
    const/high16 v9, 0x40a00000    # 5.0f

    move-object/from16 v12, v26

    .end local v26    # "$this$_get_OfflineShare__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v12, "$this$_get_OfflineShare__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v12, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    invoke-virtual {v12, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v31, 0x408e6666    # 4.45f

    const/high16 v32, 0x40a00000    # 5.0f

    const/high16 v33, 0x40800000    # 4.0f

    const v34, 0x40ae6666    # 5.45f

    const/high16 v35, 0x40800000    # 4.0f

    const/high16 v36, 0x40c00000    # 6.0f

    move-object/from16 v30, v12

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/16 v31, 0x0

    const v32, 0x3f8ccccd    # 1.1f

    const v33, 0x3f666666    # 0.9f

    const/high16 v34, 0x40000000    # 2.0f

    const/high16 v35, 0x40000000    # 2.0f

    const/high16 v36, 0x40000000    # 2.0f

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/high16 v9, 0x41100000    # 9.0f

    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v31, 0x3f0ccccd    # 0.55f

    const/16 v32, 0x0

    const/high16 v33, 0x3f800000    # 1.0f

    const v34, -0x4119999a    # -0.45f

    const/high16 v35, 0x3f800000    # 1.0f

    const/high16 v36, -0x40800000    # -1.0f

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const/16 v31, 0x0

    const v32, -0x40f33333    # -0.55f

    const v33, -0x4119999a    # -0.45f

    const/high16 v34, -0x40800000    # -1.0f

    const/high16 v35, -0x40800000    # -1.0f

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/high16 v9, 0x40c00000    # 6.0f

    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const/high16 v31, 0x40c00000    # 6.0f

    const v32, 0x40ae6666    # 5.45f

    const v33, 0x40b1999a    # 5.55f

    const/high16 v34, 0x40a00000    # 5.0f

    const/high16 v35, 0x40a00000    # 5.0f

    const/high16 v36, 0x40a00000    # 5.0f

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    nop

    .line 121
    .end local v12    # "$this$_get_OfflineShare__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v27    # "$i$a$-materialPath-YwgOQQI$default-OfflineShareKt$OfflineShare$1$1":I
    nop

    .line 122
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    const/4 v9, 0x0

    .line 120
    .end local v24    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v25    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 123
    nop

    .line 124
    .end local v23    # "$i$f$PathData":I
    nop

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 131
    nop

    .line 132
    nop

    .line 133
    nop

    .line 118
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3800

    const/16 v27, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 134
    nop

    .line 135
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

    .line 46
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 136
    .restart local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 137
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "fillAlpha$iv":F
    move/from16 v24, v5

    .line 136
    nop

    .line 138
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v6    # "strokeAlpha$iv":F
    move/from16 v26, v6

    .line 136
    nop

    .line 139
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .restart local v7    # "pathFillType$iv":I
    move/from16 v21, v7

    .line 136
    const/4 v8, 0x0

    .line 145
    .restart local v8    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 146
    new-instance v11, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v12, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v12

    invoke-direct {v11, v12, v13, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v11

    check-cast v23, Landroidx/compose/ui/graphics/Brush;

    .line 148
    nop

    .line 150
    nop

    .line 151
    sget-object v11, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v28

    .line 152
    sget-object v11, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v29

    .line 153
    nop

    .line 145
    move-object/from16 v25, v9

    .local v23, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v25, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v19, v4

    const/high16 v11, 0x3f800000    # 1.0f

    .local v19, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v27, v11

    .local v27, "strokeLineWidth$iv$iv":F
    .local v28, "strokeLineCap$iv$iv":I
    move/from16 v30, v11

    .line 154
    .local v29, "strokeLineJoin$iv$iv":I
    .local v30, "strokeLineMiter$iv$iv":F
    nop

    .line 155
    const-string v11, ""

    .local v11, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v11

    .line 154
    const/4 v12, 0x0

    .line 156
    .local v12, "$i$f$path-R_LF-3I":I
    nop

    .line 157
    const/4 v13, 0x0

    .line 158
    .local v13, "$i$f$PathData":I
    new-instance v14, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v14, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 159
    .local v15, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v16, v14

    .local v16, "$this$_get_OfflineShare__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v17, 0x0

    .line 47
    .local v17, "$i$a$-materialPath-YwgOQQI$default-OfflineShareKt$OfflineShare$1$2":I
    const/high16 v9, 0x41900000    # 18.0f

    move/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .end local v2    # "name$iv":Ljava/lang/String;
    .local v0, "$this$_get_OfflineShare__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v16, "name$iv":Ljava/lang/String;
    .local v18, "$i$f$materialIcon":I
    invoke-virtual {v0, v9, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/high16 v2, -0x3f000000    # -8.0f

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v39, 0x410e6666    # 8.9f

    const/high16 v40, 0x3f800000    # 1.0f

    const/high16 v41, 0x41000000    # 8.0f

    const v42, 0x3ff33333    # 1.9f

    const/high16 v43, 0x41000000    # 8.0f

    const/high16 v44, 0x40400000    # 3.0f

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/16 v39, 0x0

    const v40, 0x3f8ccccd    # 1.1f

    const v41, 0x3f666666    # 0.9f

    const/high16 v42, 0x40000000    # 2.0f

    const/high16 v43, 0x40000000    # 2.0f

    const/high16 v44, 0x40000000    # 2.0f

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v39, 0x3f8ccccd    # 1.1f

    const/16 v40, 0x0

    const/high16 v41, 0x40000000    # 2.0f

    const v42, -0x4099999a    # -0.9f

    const/high16 v44, -0x40000000    # -2.0f

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/high16 v39, 0x41a00000    # 20.0f

    const v40, 0x3ff33333    # 1.9f

    const v41, 0x4198cccd    # 19.1f

    const/high16 v42, 0x3f800000    # 1.0f

    const/high16 v43, 0x41900000    # 18.0f

    const/high16 v44, 0x3f800000    # 1.0f

    invoke-virtual/range {v38 .. v44}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v9, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const/high16 v9, -0x3f000000    # -8.0f

    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    nop

    .line 159
    .end local v0    # "$this$_get_OfflineShare__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v17    # "$i$a$-materialPath-YwgOQQI$default-OfflineShareKt$OfflineShare$1$2":I
    nop

    .line 160
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v20

    .line 158
    .end local v14    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 161
    nop

    .line 162
    .end local v13    # "$i$f$PathData":I
    nop

    .line 163
    nop

    .line 164
    nop

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 169
    nop

    .line 170
    nop

    .line 171
    nop

    .line 156
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x3800

    const/16 v35, 0x0

    invoke-static/range {v19 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 172
    nop

    .line 173
    .end local v11    # "name$iv$iv":Ljava/lang/String;
    .end local v12    # "$i$f$path-R_LF-3I":I
    .end local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v27    # "strokeLineWidth$iv$iv":F
    .end local v28    # "strokeLineCap$iv$iv":I
    .end local v29    # "strokeLineJoin$iv$iv":I
    .end local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 64
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    move-object v0, v1

    .line 174
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 175
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "fillAlpha$iv":F
    move/from16 v24, v2

    .line 174
    nop

    .line 176
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v26, v4

    .line 174
    nop

    .line 177
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v21, v5

    .line 174
    const/4 v6, 0x0

    .line 183
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 184
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v7

    check-cast v23, Landroidx/compose/ui/graphics/Brush;

    .line 186
    nop

    .line 188
    nop

    .line 189
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v28

    .line 190
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v29

    .line 191
    nop

    .line 183
    const/4 v7, 0x0

    move-object/from16 v25, v7

    .restart local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v19, v0

    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v27, v7

    .restart local v27    # "strokeLineWidth$iv$iv":F
    .restart local v28    # "strokeLineCap$iv$iv":I
    move/from16 v30, v7

    .line 192
    .restart local v29    # "strokeLineJoin$iv$iv":I
    .restart local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 193
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v7

    .line 192
    const/4 v8, 0x0

    .line 194
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 195
    const/4 v9, 0x0

    .line 196
    .local v9, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 197
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v13, v11

    .local v13, "$this$_get_OfflineShare__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v14, 0x0

    .line 65
    .local v14, "$i$a$-materialPath-YwgOQQI$default-OfflineShareKt$OfflineShare$1$3":I
    const/high16 v15, 0x41480000    # 12.5f

    move-object/from16 v17, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v17, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x41240000    # 10.25f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/high16 v15, 0x40000000    # 2.0f

    invoke-virtual {v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v15, 0x3f0a3d71    # 0.54f

    invoke-virtual {v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v33, 0x3ee66666    # 0.45f

    const v34, 0x3f0a3d71    # 0.54f

    const v35, 0x3f2b851f    # 0.67f

    const v36, 0x3f59999a    # 0.85f

    const v37, 0x3eb33333    # 0.35f

    move-object/from16 v31, v13

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v0, 0x3fa51eb8    # 1.29f

    const v15, -0x405ae148    # -1.29f

    invoke-virtual {v13, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v32, 0x3e4ccccd    # 0.2f

    const v33, -0x41b33333    # -0.2f

    const v34, 0x3e4ccccd    # 0.2f

    const v35, -0x40fd70a4    # -0.51f

    const/16 v36, 0x0

    const v37, -0x40ca3d71    # -0.71f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    invoke-virtual {v13, v15, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v32, -0x416147ae    # -0.31f

    const v33, -0x416147ae    # -0.31f

    const v34, -0x40a66666    # -0.85f

    const v35, -0x4247ae14    # -0.09f

    const v36, -0x40a66666    # -0.85f

    const v37, 0x3eb33333    # 0.35f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v0, 0x3f0a3d71    # 0.54f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v32, -0x40f33333    # -0.55f

    const/16 v33, 0x0

    const/high16 v34, -0x40800000    # -1.0f

    const v35, 0x3ee66666    # 0.45f

    const/high16 v36, -0x40800000    # -1.0f

    const/high16 v37, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const/16 v32, 0x0

    const v33, 0x3ed1eb85    # 0.41f

    const v34, 0x3eae147b    # 0.34f

    const/high16 v35, 0x3f400000    # 0.75f

    const/high16 v36, 0x3f400000    # 0.75f

    const/high16 v37, 0x3f400000    # 0.75f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v32, 0x3ed1eb85    # 0.41f

    const/16 v33, 0x0

    const/high16 v34, 0x3f400000    # 0.75f

    const v35, -0x4151eb85    # -0.34f

    const/high16 v37, -0x40c00000    # -0.75f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const/high16 v0, 0x41240000    # 10.25f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    nop

    .line 197
    .end local v13    # "$this$_get_OfflineShare__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v14    # "$i$a$-materialPath-YwgOQQI$default-OfflineShareKt$OfflineShare$1$3":I
    nop

    .line 198
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v20

    .line 196
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 199
    nop

    .line 200
    .end local v9    # "$i$f$PathData":I
    nop

    .line 201
    nop

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 194
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x3800

    const/16 v35, 0x0

    invoke-static/range {v19 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 210
    nop

    .line 211
    .end local v7    # "name$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$path-R_LF-3I":I
    .end local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v27    # "strokeLineWidth$iv$iv":F
    .end local v28    # "strokeLineCap$iv$iv":I
    .end local v29    # "strokeLineJoin$iv$iv":I
    .end local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 64
    .end local v2    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v17    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 89
    .end local v1    # "$this$_get_OfflineShare__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "$i$a$-materialIcon-OfflineShareKt$OfflineShare$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v16    # "name$iv":Ljava/lang/String;
    .end local v18    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/automirrored/rounded/OfflineShareKt;->_offlineShare:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 84
    sget-object v0, Landroidx/compose/material/icons/automirrored/rounded/OfflineShareKt;->_offlineShare:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
