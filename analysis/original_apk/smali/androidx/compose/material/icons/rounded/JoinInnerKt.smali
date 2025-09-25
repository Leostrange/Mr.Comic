.class public final Landroidx/compose/material/icons/rounded/JoinInnerKt;
.super Ljava/lang/Object;
.source "JoinInner.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJoinInner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JoinInner.kt\nandroidx/compose/material/icons/rounded/JoinInnerKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,73:1\n212#2,12:74\n233#2,18:87\n253#2:124\n233#2,18:125\n253#2:162\n233#2,18:163\n253#2:200\n174#3:86\n705#4,2:105\n717#4,2:107\n719#4,11:113\n705#4,2:143\n717#4,2:145\n719#4,11:151\n705#4,2:181\n717#4,2:183\n719#4,11:189\n72#5,4:109\n72#5,4:147\n72#5,4:185\n*S KotlinDebug\n*F\n+ 1 JoinInner.kt\nandroidx/compose/material/icons/rounded/JoinInnerKt\n*L\n29#1:74,12\n30#1:87,18\n30#1:124\n40#1:125,18\n40#1:162\n54#1:163,18\n54#1:200\n29#1:86\n30#1:105,2\n30#1:107,2\n30#1:113,11\n40#1:143,2\n40#1:145,2\n40#1:151,11\n54#1:181,2\n54#1:183,2\n54#1:189,11\n30#1:109,4\n40#1:147,4\n54#1:185,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_joinInner",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "JoinInner",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getJoinInner",
        "(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _joinInner:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getJoinInner(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 44
    .param p0, "$this$JoinInner"    # Landroidx/compose/material/icons/Icons$Rounded;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/JoinInnerKt;->_joinInner:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/rounded/JoinInnerKt;->_joinInner:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "Rounded.JoinInner"

    .line 74
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 76
    const/4 v13, 0x0

    .line 74
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 85
    .local v14, "$i$f$materialIcon":I
    nop

    .line 78
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 79
    nop

    .line 80
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 86
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 81
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 86
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 82
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 83
    const/high16 v6, 0x41c00000    # 24.0f

    .line 78
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 84
    nop

    .line 78
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    nop

    .local v1, "$this$_get_JoinInner__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-JoinInnerKt$JoinInner$1":I
    move-object v3, v1

    .line 87
    .local v3, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 88
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "fillAlpha$iv":F
    move/from16 v20, v4

    .line 87
    nop

    .line 89
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v22, v5

    .line 87
    nop

    .line 90
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v17, v6

    .line 87
    const/4 v7, 0x0

    .line 96
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 97
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v8

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 99
    nop

    .line 101
    nop

    .line 102
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 103
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 104
    nop

    .line 96
    move-object/from16 v21, v11

    .local v19, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v21, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v15, v3

    .local v15, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v23, v8

    .local v23, "strokeLineWidth$iv$iv":F
    .local v24, "strokeLineCap$iv$iv":I
    move/from16 v26, v8

    .line 105
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 106
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 105
    const/4 v10, 0x0

    .line 107
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 108
    const/4 v12, 0x0

    .line 109
    .local v12, "$i$f$PathData":I
    new-instance v16, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v16, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v27, 0x0

    .line 110
    .local v27, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v35, v16

    .local v35, "$this$_get_JoinInner__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v36, 0x0

    .line 31
    .local v36, "$i$a$-materialPath-YwgOQQI$default-JoinInnerKt$JoinInner$1$1":I
    const v8, 0x414ae148    # 12.68f

    const v11, 0x40d9999a    # 6.8f

    move-object/from16 v41, v0

    move-object/from16 v0, v35

    .end local v35    # "$this$_get_JoinInner__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_JoinInner__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v41, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v29, -0x413851ec    # -0.39f

    const v30, -0x414ccccd    # -0.35f

    const v31, -0x40851eb8    # -0.98f

    const v32, -0x414ccccd    # -0.35f

    const v33, -0x4050a3d7    # -1.37f

    const/16 v34, 0x0

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v29, 0x4115999a    # 9.35f

    const v30, 0x4108f5c3    # 8.56f

    const/high16 v31, 0x41100000    # 9.0f

    const v32, 0x412d70a4    # 10.84f

    const/high16 v33, 0x41100000    # 9.0f

    const/high16 v34, 0x41400000    # 12.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/16 v29, 0x0

    const v30, 0x3f933333    # 1.15f

    const v31, 0x3eb33333    # 0.35f

    const v32, 0x405c28f6    # 3.44f

    const v33, 0x40147ae1    # 2.32f

    const v34, 0x40a66666    # 5.2f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v29, 0x3ec7ae14    # 0.39f

    const v30, 0x3eb33333    # 0.35f

    const v31, 0x3f7ae148    # 0.98f

    const v32, 0x3eb33333    # 0.35f

    const v33, 0x3faf5c29    # 1.37f

    const/16 v34, 0x0

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v29, 0x416a6666    # 14.65f

    const v30, 0x41770a3d    # 15.44f

    const/high16 v31, 0x41700000    # 15.0f

    const v32, 0x41528f5c    # 13.16f

    const/high16 v33, 0x41700000    # 15.0f

    const/high16 v34, 0x41400000    # 12.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/high16 v29, 0x41700000    # 15.0f

    const v30, 0x412d999a    # 10.85f

    const v31, 0x416a6666    # 14.65f

    const v32, 0x4108f5c3    # 8.56f

    const v33, 0x414ae148    # 12.68f

    const v34, 0x40d9999a    # 6.8f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    nop

    .line 110
    .end local v0    # "$this$_get_JoinInner__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v36    # "$i$a$-materialPath-YwgOQQI$default-JoinInnerKt$JoinInner$1$1":I
    nop

    .line 111
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 109
    .end local v16    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v27    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 112
    nop

    .line 113
    .end local v12    # "$i$f$PathData":I
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

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 107
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 123
    nop

    .line 124
    .end local v9    # "name$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$path-R_LF-3I":I
    .end local v15    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v19    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v21    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v23    # "strokeLineWidth$iv$iv":F
    .end local v24    # "strokeLineCap$iv$iv":I
    .end local v25    # "strokeLineJoin$iv$iv":I
    .end local v26    # "strokeLineMiter$iv$iv":F
    nop

    .line 40
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    move-object v0, v1

    .line 125
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 126
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "fillAlpha$iv":F
    move/from16 v28, v3

    .line 125
    nop

    .line 127
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 125
    nop

    .line 128
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v25, v5

    .line 125
    const/4 v6, 0x0

    .line 134
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 135
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 137
    nop

    .line 139
    nop

    .line 140
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 141
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 142
    nop

    .line 134
    const/4 v7, 0x0

    move-object/from16 v29, v7

    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    const/high16 v7, 0x3f800000    # 1.0f

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v7

    .local v31, "strokeLineWidth$iv$iv":F
    .local v32, "strokeLineCap$iv$iv":I
    move/from16 v34, v7

    .line 143
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 144
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 143
    const/4 v8, 0x0

    .line 145
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 146
    const/4 v9, 0x0

    .line 147
    .local v9, "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v10, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 148
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_JoinInner__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 41
    .local v22, "$i$a$-materialPath-YwgOQQI$default-JoinInnerKt$JoinInner$1$2":I
    const v15, 0x4110a3d7    # 9.04f

    move-object/from16 v42, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v42, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x4186f5c3    # 16.87f

    invoke-virtual {v12, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v16, 0x410b5c29    # 8.71f

    const v17, 0x4187999a    # 16.95f

    const v18, 0x4105c28f    # 8.36f

    const/high16 v19, 0x41880000    # 17.0f

    const/high16 v20, 0x41000000    # 8.0f

    const/high16 v21, 0x41880000    # 17.0f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v16, -0x3fcf5c29    # -2.76f

    const/16 v17, 0x0

    const/high16 v18, -0x3f600000    # -5.0f

    const v19, -0x3ff0a3d7    # -2.24f

    const/high16 v20, -0x3f600000    # -5.0f

    const/high16 v21, -0x3f600000    # -5.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v0, 0x400f5c29    # 2.24f

    const/high16 v15, -0x3f600000    # -5.0f

    move/from16 v43, v2

    .end local v2    # "$i$a$-materialIcon$default-JoinInnerKt$JoinInner$1":I
    .local v43, "$i$a$-materialIcon$default-JoinInnerKt$JoinInner$1":I
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v12, v0, v15, v2, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v16, 0x3eb851ec    # 0.36f

    const v18, 0x3f35c28f    # 0.71f

    const v19, 0x3d4ccccd    # 0.05f

    const v20, 0x3f851eb8    # 1.04f

    const v21, 0x3e051eb8    # 0.13f

    move v0, v15

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v16, 0x3ec7ae14    # 0.39f

    const v17, -0x40f0a3d7    # -0.56f

    const v18, 0x3f6147ae    # 0.88f

    const v19, -0x4070a3d7    # -1.12f

    const v20, 0x3fbeb852    # 1.49f

    const v21, -0x402f5c29    # -1.63f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const/high16 v16, 0x411c0000    # 9.75f

    const v17, 0x40a6147b    # 5.19f

    const v18, 0x410e6666    # 8.9f

    const/high16 v19, 0x40a00000    # 5.0f

    const/high16 v20, 0x41000000    # 8.0f

    const/high16 v21, 0x40a00000    # 5.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v16, -0x3f88f5c3    # -3.86f

    const/16 v17, 0x0

    const/high16 v18, -0x3f200000    # -7.0f

    const v19, 0x4048f5c3    # 3.14f

    const/high16 v20, -0x3f200000    # -7.0f

    const/high16 v21, 0x40e00000    # 7.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v15, 0x4048f5c3    # 3.14f

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {v12, v15, v0, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v16, 0x3f666666    # 0.9f

    const/high16 v18, 0x3fe00000    # 1.75f

    const v19, -0x41bd70a4    # -0.19f

    const v20, 0x4021eb85    # 2.53f

    const/high16 v21, -0x41000000    # -0.5f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v16, 0x411eb852    # 9.92f

    const v17, 0x418feb85    # 17.99f

    const v18, 0x4116e148    # 9.43f

    const v19, 0x418b70a4    # 17.43f

    const v20, 0x4110a3d7    # 9.04f

    const v21, 0x4186f5c3    # 16.87f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    nop

    .line 148
    .end local v12    # "$this$_get_JoinInner__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-JoinInnerKt$JoinInner$1$2":I
    nop

    .line 149
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 147
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 150
    nop

    .line 151
    .end local v9    # "$i$f$PathData":I
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

    .line 158
    nop

    .line 159
    nop

    .line 160
    nop

    .line 145
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 161
    nop

    .line 162
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

    .line 54
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v42    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v0, v1

    .line 163
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 164
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "fillAlpha$iv":F
    move/from16 v28, v3

    .line 163
    nop

    .line 165
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 163
    nop

    .line 166
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .restart local v5    # "pathFillType$iv":I
    move/from16 v25, v5

    .line 163
    const/4 v6, 0x0

    .line 172
    .restart local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 173
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 175
    nop

    .line 177
    nop

    .line 178
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 179
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 180
    nop

    .line 172
    const/4 v7, 0x0

    move-object/from16 v29, v7

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v7

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v7

    .line 181
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 182
    const-string v7, ""

    .restart local v7    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 181
    const/4 v8, 0x0

    .line 183
    .restart local v8    # "$i$f$path-R_LF-3I":I
    nop

    .line 184
    const/4 v9, 0x0

    .line 185
    .restart local v9    # "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 186
    .restart local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_JoinInner__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 55
    .local v22, "$i$a$-materialPath-YwgOQQI$default-JoinInnerKt$JoinInner$1$3":I
    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v12, v15, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v16, -0x4099999a    # -0.9f

    const/16 v17, 0x0

    const/high16 v18, -0x40200000    # -1.75f

    const v19, 0x3e428f5c    # 0.19f

    const v20, -0x3fde147b    # -2.53f

    const/high16 v21, 0x3f000000    # 0.5f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v16, 0x3f1c28f6    # 0.61f

    const v17, 0x3f028f5c    # 0.51f

    const v18, 0x3f8ccccd    # 1.1f

    const v19, 0x3f88f5c3    # 1.07f

    const v20, 0x3fbeb852    # 1.49f

    const v21, 0x3fd0a3d7    # 1.63f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v16, 0x4174a3d7    # 15.29f

    const v17, 0x40e1999a    # 7.05f

    const v18, 0x417a3d71    # 15.64f

    const/high16 v19, 0x40e00000    # 7.0f

    const/high16 v20, 0x41800000    # 16.0f

    const/high16 v21, 0x40e00000    # 7.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v16, 0x4030a3d7    # 2.76f

    const/16 v17, 0x0

    const/high16 v18, 0x40a00000    # 5.0f

    const v19, 0x400f5c29    # 2.24f

    const/high16 v20, 0x40a00000    # 5.0f

    const/high16 v21, 0x40a00000    # 5.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v15, -0x3ff0a3d7    # -2.24f

    move-object/from16 v40, v0

    const/high16 v0, -0x3f600000    # -5.0f

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v40, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v12, v15, v2, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v16, -0x4147ae14    # -0.36f

    const v18, -0x40ca3d71    # -0.71f

    const v19, -0x42b33333    # -0.05f

    const v20, -0x407ae148    # -1.04f

    const v21, -0x41fae148    # -0.13f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v16, -0x413851ec    # -0.39f

    const v17, 0x3f0f5c29    # 0.56f

    const v18, -0x409eb852    # -0.88f

    const v19, 0x3f8f5c29    # 1.12f

    const v20, -0x404147ae    # -1.49f

    const v21, 0x3fd0a3d7    # 1.63f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/high16 v16, 0x41640000    # 14.25f

    const v17, 0x41967ae1    # 18.81f

    const v18, 0x4171999a    # 15.1f

    const/high16 v19, 0x41980000    # 19.0f

    const/high16 v20, 0x41800000    # 16.0f

    const/high16 v21, 0x41980000    # 19.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v16, 0x40770a3d    # 3.86f

    const/16 v17, 0x0

    const/high16 v18, 0x40e00000    # 7.0f

    const v19, -0x3fb70a3d    # -3.14f

    const/high16 v20, 0x40e00000    # 7.0f

    const/high16 v21, -0x3f200000    # -7.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v0, 0x419ee148    # 19.86f

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v12, v0, v2, v15, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    nop

    .line 186
    .end local v12    # "$this$_get_JoinInner__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-JoinInnerKt$JoinInner$1$3":I
    nop

    .line 187
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 185
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 188
    nop

    .line 189
    .end local v9    # "$i$f$PathData":I
    nop

    .line 190
    nop

    .line 191
    nop

    .line 192
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

    .line 183
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 199
    nop

    .line 200
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

    .line 54
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v40    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 85
    .end local v1    # "$this$_get_JoinInner__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v43    # "$i$a$-materialIcon$default-JoinInnerKt$JoinInner$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v41    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/rounded/JoinInnerKt;->_joinInner:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 69
    sget-object v0, Landroidx/compose/material/icons/rounded/JoinInnerKt;->_joinInner:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
