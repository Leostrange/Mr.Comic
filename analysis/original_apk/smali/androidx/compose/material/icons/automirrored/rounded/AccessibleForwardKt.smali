.class public final Landroidx/compose/material/icons/automirrored/rounded/AccessibleForwardKt;
.super Ljava/lang/Object;
.source "AccessibleForward.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccessibleForward.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccessibleForward.kt\nandroidx/compose/material/icons/automirrored/rounded/AccessibleForwardKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,74:1\n223#2:75\n216#2,3:76\n219#2,4:80\n233#2,18:84\n253#2:121\n233#2,18:122\n253#2:159\n174#3:79\n705#4,2:102\n717#4,2:104\n719#4,11:110\n705#4,2:140\n717#4,2:142\n719#4,11:148\n72#5,4:106\n72#5,4:144\n*S KotlinDebug\n*F\n+ 1 AccessibleForward.kt\nandroidx/compose/material/icons/automirrored/rounded/AccessibleForwardKt\n*L\n29#1:75\n29#1:76,3\n29#1:80,4\n31#1:84,18\n31#1:121\n37#1:122,18\n37#1:159\n29#1:79\n31#1:102,2\n31#1:104,2\n31#1:110,11\n37#1:140,2\n37#1:142,2\n37#1:148,11\n31#1:106,4\n37#1:144,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_accessibleForward",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "AccessibleForward",
        "Landroidx/compose/material/icons/Icons$AutoMirrored$Rounded;",
        "getAccessibleForward",
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
.field private static _accessibleForward:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getAccessibleForward(Landroidx/compose/material/icons/Icons$AutoMirrored$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 40
    .param p0, "$this$AccessibleForward"    # Landroidx/compose/material/icons/Icons$AutoMirrored$Rounded;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/automirrored/rounded/AccessibleForwardKt;->_accessibleForward:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/automirrored/rounded/AccessibleForwardKt;->_accessibleForward:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "AutoMirrored.Rounded.AccessibleForward"

    .local v2, "name$iv":Ljava/lang/String;
    const/4 v0, 0x0

    .line 75
    .local v0, "$i$f$materialIcon":I
    nop

    .line 76
    new-instance v13, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 77
    nop

    .line 78
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 79
    .local v3, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 80
    .end local v1    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 79
    .local v4, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 81
    .end local v1    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 82
    const/high16 v6, 0x41c00000    # 24.0f

    .line 76
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 83
    nop

    .line 76
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    nop

    .local v1, "$this$_get_AccessibleForward__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 31
    .local v3, "$i$a$-materialIcon-AccessibleForwardKt$AccessibleForward$1":I
    move-object v4, v1

    .line 84
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 85
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v16, v5

    .line 84
    nop

    .line 86
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v18, v6

    .line 84
    nop

    .line 87
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move v13, v7

    .line 84
    const/4 v8, 0x0

    .line 93
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 94
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v14, 0x0

    invoke-direct {v9, v11, v12, v14}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v9

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 96
    nop

    .line 98
    nop

    .line 99
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 100
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 101
    nop

    .line 93
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

    .line 102
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 103
    const-string v28, ""

    move-object v12, v14

    .local v28, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v14, v28

    .line 102
    const/16 v29, 0x0

    .line 104
    .local v29, "$i$f$path-R_LF-3I":I
    nop

    .line 105
    const/16 v23, 0x0

    .line 106
    .local v23, "$i$f$PathData":I
    new-instance v24, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct/range {v24 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v24, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v25, 0x0

    .line 107
    .local v25, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v26, v24

    .local v26, "$this$_get_AccessibleForward__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v27, 0x0

    .line 32
    .local v27, "$i$a$-materialPath-YwgOQQI$default-AccessibleForwardKt$AccessibleForward$1$1":I
    const v12, 0x409147ae    # 4.54f

    const/high16 v9, 0x41900000    # 18.0f

    move/from16 v39, v0

    move-object/from16 v0, v26

    .end local v26    # "$this$_get_AccessibleForward__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_AccessibleForward__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v39, "$i$f$materialIcon":I
    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const/4 v12, 0x0

    const/high16 v9, -0x40000000    # -2.0f

    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v31, 0x40000000    # 2.0f

    const/high16 v32, 0x40000000    # 2.0f

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x1

    const/high16 v36, 0x40800000    # 4.0f

    const/16 v37, 0x0

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const/high16 v36, -0x3f800000    # -4.0f

    invoke-virtual/range {v30 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    nop

    .line 107
    .end local v0    # "$this$_get_AccessibleForward__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v27    # "$i$a$-materialPath-YwgOQQI$default-AccessibleForwardKt$AccessibleForward$1$1":I
    nop

    .line 108
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    const/4 v0, 0x0

    .line 106
    .end local v24    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v25    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 109
    nop

    .line 110
    .end local v23    # "$i$f$PathData":I
    nop

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 104
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3800

    const/16 v27, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 120
    nop

    .line 121
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

    .line 37
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 122
    .restart local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 123
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "fillAlpha$iv":F
    move/from16 v24, v5

    .line 122
    nop

    .line 124
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v6    # "strokeAlpha$iv":F
    move/from16 v26, v6

    .line 122
    nop

    .line 125
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .restart local v7    # "pathFillType$iv":I
    move/from16 v21, v7

    .line 122
    const/4 v8, 0x0

    .line 131
    .restart local v8    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 132
    new-instance v11, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v12, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v12

    invoke-direct {v11, v12, v13, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v11

    check-cast v23, Landroidx/compose/ui/graphics/Brush;

    .line 134
    nop

    .line 136
    nop

    .line 137
    sget-object v11, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v28

    .line 138
    sget-object v11, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v29

    .line 139
    nop

    .line 131
    move-object/from16 v25, v0

    .local v23, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v25, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v19, v4

    const/high16 v0, 0x3f800000    # 1.0f

    .local v19, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v27, v0

    .local v27, "strokeLineWidth$iv$iv":F
    .local v28, "strokeLineCap$iv$iv":I
    move/from16 v30, v0

    .line 140
    .local v29, "strokeLineJoin$iv$iv":I
    .local v30, "strokeLineMiter$iv$iv":F
    nop

    .line 141
    const-string v0, ""

    .local v0, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v0

    .line 140
    const/4 v11, 0x0

    .line 142
    .local v11, "$i$f$path-R_LF-3I":I
    nop

    .line 143
    const/4 v12, 0x0

    .line 144
    .local v12, "$i$f$PathData":I
    new-instance v13, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v13, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v14, 0x0

    .line 145
    .local v14, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v15, v13

    .local v15, "$this$_get_AccessibleForward__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 38
    .local v16, "$i$a$-materialPath-YwgOQQI$default-AccessibleForwardKt$AccessibleForward$1$2":I
    const/high16 v9, 0x41700000    # 15.0f

    move-object/from16 v18, v0

    .end local v0    # "name$iv$iv":Ljava/lang/String;
    .local v18, "name$iv$iv":Ljava/lang/String;
    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v15, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const/16 v32, 0x0

    const v33, 0x3fd33333    # 1.65f

    const v34, -0x40533333    # -1.35f

    const/high16 v35, 0x40400000    # 3.0f

    const/high16 v36, -0x3fc00000    # -3.0f

    const/high16 v37, 0x40400000    # 3.0f

    move-object/from16 v31, v15

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v0, -0x40533333    # -1.35f

    const/high16 v9, -0x3fc00000    # -3.0f

    invoke-virtual {v15, v9, v0, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v0, 0x3faccccd    # 1.35f

    move-object/from16 v38, v1

    .end local v1    # "$this$_get_AccessibleForward__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v38, "$this$_get_AccessibleForward__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v15, v0, v9, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v32, -0x3fcf5c29    # -2.76f

    const/16 v33, 0x0

    const/high16 v34, -0x3f600000    # -5.0f

    const v35, 0x400f5c29    # 2.24f

    const/high16 v36, -0x3f600000    # -5.0f

    const/high16 v37, 0x40a00000    # 5.0f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v0, 0x400f5c29    # 2.24f

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v15, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v0, -0x3ff0a3d7    # -2.24f

    const/high16 v9, -0x3f600000    # -5.0f

    invoke-virtual {v15, v1, v0, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/high16 v0, 0x41580000    # 13.5f

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v15, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v0, -0x4011eb85    # -1.86f

    invoke-virtual {v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v0, 0x3fd5c28f    # 1.67f

    const v1, -0x3f951eb8    # -3.67f

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v32, 0x41935c29    # 18.42f

    const/high16 v33, 0x41080000    # 8.5f

    const v34, 0x418b851f    # 17.44f

    const/high16 v35, 0x40e00000    # 7.0f

    const v36, 0x417f5c29    # 15.96f

    const/high16 v37, 0x40e00000    # 7.0f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v0, -0x3f59999a    # -5.2f

    invoke-virtual {v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v32, -0x40b0a3d7    # -0.81f

    const/16 v33, 0x0

    const v34, -0x403ae148    # -1.54f

    const v35, 0x3ef0a3d7    # 0.47f

    const v36, -0x4010a3d7    # -1.87f

    const v37, 0x3f99999a    # 1.2f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v0, -0x4170a3d7    # -0.28f

    const v1, 0x3f428f5c    # 0.76f

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v32, -0x41a8f5c3    # -0.21f

    const v33, 0x3f0f5c29    # 0.56f

    const v34, 0x3de147ae    # 0.11f

    const v35, 0x3f95c28f    # 1.17f

    const v36, 0x3f2e147b    # 0.68f

    const v37, 0x3faa3d71    # 1.33f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v32, 0x3efae148    # 0.49f

    const v33, 0x3e0f5c29    # 0.14f

    const/high16 v34, 0x3f800000    # 1.0f

    const v35, -0x421eb852    # -0.11f

    const v36, 0x3f99999a    # 1.2f

    const v37, -0x40eb851f    # -0.58f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v0, 0x3e99999a    # 0.3f

    const v1, -0x40ca3d71    # -0.71f

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const/high16 v0, 0x41500000    # 13.0f

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v0, -0x4015c28f    # -1.83f

    const v1, 0x40833333    # 4.1f

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v32, -0x40e66666    # -0.6f

    const v33, 0x3faa3d71    # 1.33f

    const v34, 0x3ec7ae14    # 0.39f

    const v35, 0x4039999a    # 2.9f

    const v36, 0x3feccccd    # 1.85f

    const v37, 0x4039999a    # 2.9f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v15, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/16 v32, 0x0

    const v33, 0x3f0ccccd    # 0.55f

    const v34, 0x3ee66666    # 0.45f

    const/high16 v35, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    const/high16 v37, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v0, -0x4119999a    # -0.45f

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v15, v9, v0, v9, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const/high16 v0, -0x3f700000    # -4.5f

    invoke-virtual {v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v33, -0x40733333    # -1.1f

    const v34, -0x4099999a    # -0.9f

    const/high16 v35, -0x40000000    # -2.0f

    const/high16 v36, -0x40000000    # -2.0f

    const/high16 v37, -0x40000000    # -2.0f

    invoke-virtual/range {v31 .. v37}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    nop

    .line 145
    .end local v15    # "$this$_get_AccessibleForward__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-materialPath-YwgOQQI$default-AccessibleForwardKt$AccessibleForward$1$2":I
    nop

    .line 146
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v20

    .line 144
    .end local v13    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v14    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 147
    nop

    .line 148
    .end local v12    # "$i$f$PathData":I
    nop

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 155
    nop

    .line 156
    nop

    .line 157
    nop

    .line 142
    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x3800

    const/16 v35, 0x0

    invoke-static/range {v19 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 158
    nop

    .line 159
    .end local v11    # "$i$f$path-R_LF-3I":I
    .end local v18    # "name$iv$iv":Ljava/lang/String;
    .end local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v27    # "strokeLineWidth$iv$iv":F
    .end local v28    # "strokeLineCap$iv$iv":I
    .end local v29    # "strokeLineJoin$iv$iv":I
    .end local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 37
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 75
    .end local v3    # "$i$a$-materialIcon-AccessibleForwardKt$AccessibleForward$1":I
    .end local v38    # "$this$_get_AccessibleForward__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v10    # "autoMirror$iv":Z
    .end local v39    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/automirrored/rounded/AccessibleForwardKt;->_accessibleForward:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 70
    sget-object v0, Landroidx/compose/material/icons/automirrored/rounded/AccessibleForwardKt;->_accessibleForward:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
