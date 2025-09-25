.class public final Landroidx/compose/material/icons/rounded/GrassKt;
.super Ljava/lang/Object;
.source "Grass.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGrass.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Grass.kt\nandroidx/compose/material/icons/rounded/GrassKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,79:1\n212#2,12:80\n233#2,18:93\n253#2:130\n174#3:92\n705#4,2:111\n717#4,2:113\n719#4,11:119\n72#5,4:115\n*S KotlinDebug\n*F\n+ 1 Grass.kt\nandroidx/compose/material/icons/rounded/GrassKt\n*L\n29#1:80,12\n30#1:93,18\n30#1:130\n29#1:92\n30#1:111,2\n30#1:113,2\n30#1:119,11\n30#1:115,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_grass",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Grass",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getGrass",
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
.field private static _grass:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getGrass(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 38
    .param p0, "$this$Grass"    # Landroidx/compose/material/icons/Icons$Rounded;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/GrassKt;->_grass:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/rounded/GrassKt;->_grass:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "Rounded.Grass"

    .line 80
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 82
    const/4 v13, 0x0

    .line 80
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 91
    .local v14, "$i$f$materialIcon":I
    nop

    .line 84
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 85
    nop

    .line 86
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 92
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 87
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 92
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 88
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 89
    const/high16 v6, 0x41c00000    # 24.0f

    .line 84
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 90
    nop

    .line 84
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    nop

    .local v1, "$this$_get_Grass__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-GrassKt$Grass$1":I
    move-object v3, v1

    .line 93
    .local v3, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 94
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "fillAlpha$iv":F
    move/from16 v20, v4

    .line 93
    nop

    .line 95
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v22, v5

    .line 93
    nop

    .line 96
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v17, v6

    .line 93
    const/4 v7, 0x0

    .line 102
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 103
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v8

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 105
    nop

    .line 107
    nop

    .line 108
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 109
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 110
    nop

    .line 102
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

    .line 111
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 112
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 111
    const/4 v10, 0x0

    .line 113
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 114
    const/4 v11, 0x0

    .line 115
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 116
    .local v16, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v34, v12

    .local v34, "$this$_get_Grass__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-GrassKt$Grass$1$1":I
    const v8, 0x417a3d71    # 15.64f

    move-object/from16 v36, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v36, "name$iv":Ljava/lang/String;
    const v0, 0x413051ec    # 11.02f

    move-object/from16 v37, v1

    move-object/from16 v1, v34

    .end local v34    # "$this$_get_Grass__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v1, "$this$_get_Grass__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v37, "$this$_get_Grass__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v1, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, 0x3f0ccccd    # 0.55f

    const v29, -0x4043d70a    # -1.47f

    const v30, 0x3fb70a3d    # 1.43f

    const v31, -0x3fce147b    # -2.78f

    const v32, 0x4023d70a    # 2.56f

    const v33, -0x3f8ae148    # -3.83f

    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, 0x3ec28f5c    # 0.38f

    const v29, -0x4147ae14    # -0.36f

    const v30, 0x3d23d70a    # 0.04f

    const/high16 v31, -0x40800000    # -1.0f

    const v32, -0x41147ae1    # -0.46f

    const v33, -0x40a66666    # -0.85f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, -0x3fab851f    # -3.32f

    const v29, 0x3f7ae148    # 0.98f

    const/high16 v30, -0x3f480000    # -5.75f

    const v31, 0x4081999a    # 4.05f

    const v32, -0x3f4851ec    # -5.74f

    const v33, 0x40f6147b    # 7.69f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v28, 0x414f3333    # 12.95f

    const/high16 v29, 0x414c0000    # 12.75f

    const v30, 0x41633333    # 14.2f

    const v31, 0x413b851f    # 11.72f

    const v32, 0x417a3d71    # 15.64f

    const v33, 0x413051ec    # 11.02f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v0, 0x4136b852    # 11.42f

    const v8, 0x410d999a    # 8.85f

    invoke-virtual {v1, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v28, -0x40e66666    # -0.6f

    const v29, -0x403851ec    # -1.56f

    const v30, -0x402f5c29    # -1.63f

    const v31, -0x3fc5c28f    # -2.91f

    const v32, -0x3fc28f5c    # -2.96f

    const v33, -0x3f8851ec    # -3.87f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v28, 0x4100a3d7    # 8.04f

    const v29, 0x4095c28f    # 4.68f

    const/high16 v30, 0x40f00000    # 7.5f

    const v31, 0x40a570a4    # 5.17f

    const v32, 0x40f7ae14    # 7.74f

    const v33, 0x40b428f6    # 5.63f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v28, 0x4108a3d7    # 8.54f

    const v29, 0x40e4cccd    # 7.15f

    const/high16 v30, 0x41100000    # 9.0f

    const v31, 0x410e147b    # 8.88f

    const/high16 v32, 0x41100000    # 9.0f

    const v33, 0x412b5c29    # 10.71f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/16 v28, 0x0

    const v29, 0x3e570a3d    # 0.21f

    const v30, -0x430a3d71    # -0.03f

    const v31, 0x3ed1eb85    # 0.41f

    const v32, -0x42dc28f6    # -0.04f

    const v33, 0x3f1c28f6    # 0.61f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v28, 0x3edc28f6    # 0.43f

    const v29, 0x3e75c28f    # 0.24f

    const v30, 0x3f547ae1    # 0.83f

    const v31, 0x3f051eb8    # 0.52f

    const v32, 0x3f9c28f6    # 1.22f

    const v33, 0x3f51eb85    # 0.82f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, 0x41263d71    # 10.39f

    const v29, 0x412f5c29    # 10.96f

    const v30, 0x412d47ae    # 10.83f

    const v31, 0x411d999a    # 9.85f

    const v32, 0x4136b852    # 11.42f

    const v33, 0x410d999a    # 8.85f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v28, -0x40f33333    # -0.55f

    const/16 v29, 0x0

    const/high16 v30, -0x40800000    # -1.0f

    const v31, -0x4119999a    # -0.45f

    const/high16 v32, -0x40800000    # -1.0f

    const/high16 v33, -0x40800000    # -1.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v0, 0x3ee66666    # 0.45f

    const/high16 v8, -0x40800000    # -1.0f

    move/from16 v34, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .end local v2    # "$i$a$-materialIcon$default-GrassKt$Grass$1":I
    .local v34, "$i$a$-materialIcon$default-GrassKt$Grass$1":I
    invoke-virtual {v1, v0, v8, v2, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v0, 0x40980000    # 4.75f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v28, -0x40ee147b    # -0.57f

    const v29, -0x3ff3d70a    # -2.19f

    const v30, -0x3ffd70a4    # -2.04f

    const v31, -0x3f7f5c29    # -4.02f

    const/high16 v32, -0x3f800000    # -4.0f

    const v33, -0x3f5e147b    # -5.06f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v28, -0x41dc28f6    # -0.16f

    const v29, -0x425c28f6    # -0.08f

    const v30, -0x417ae148    # -0.26f

    const/high16 v31, -0x41800000    # -0.25f

    const v32, -0x417ae148    # -0.26f

    const v33, -0x411eb852    # -0.44f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const/16 v28, 0x0

    const v29, -0x4175c28f    # -0.27f

    const v30, 0x3e6147ae    # 0.22f

    const v31, -0x41051eb8    # -0.49f

    const v32, 0x3efae148    # 0.49f

    const/high16 v33, -0x41000000    # -0.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v28, 0x3c23d70a    # 0.01f

    const/16 v29, 0x0

    const v30, 0x3ca3d70a    # 0.02f

    const/16 v31, 0x0

    const v32, 0x3ca3d70a    # 0.02f

    const/16 v33, 0x0

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v28, 0x4106b852    # 8.42f

    const/high16 v29, 0x41400000    # 12.0f

    const/high16 v30, 0x41400000    # 12.0f

    const v31, 0x417947ae    # 15.58f

    const/high16 v32, 0x41400000    # 12.0f

    const/high16 v33, 0x41a00000    # 20.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v0, 0x41a2147b    # 20.26f

    const v2, 0x414f0a3d    # 12.94f

    invoke-virtual {v1, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    invoke-virtual {v1, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v28, -0x40051eb8    # -1.96f

    const v29, 0x3f851eb8    # 1.04f

    const v30, -0x3fa3d70a    # -3.44f

    const v31, 0x4037ae14    # 2.87f

    const/high16 v32, -0x3f800000    # -4.0f

    const v33, 0x40a1eb85    # 5.06f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const/high16 v0, 0x41a80000    # 21.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v28, 0x3f0ccccd    # 0.55f

    const/16 v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    const v31, 0x3ee66666    # 0.45f

    const/high16 v32, 0x3f800000    # 1.0f

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v0, -0x4119999a    # -0.45f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2, v8, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const/high16 v0, -0x3f600000    # -5.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/16 v28, 0x0

    const v29, -0x40d1eb85    # -0.68f

    const v30, -0x4270a3d7    # -0.07f

    const v31, -0x40533333    # -1.35f

    const v32, -0x41b33333    # -0.2f

    const/high16 v33, -0x40000000    # -2.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v28, -0x41e66666    # -0.15f

    const v29, -0x40c7ae14    # -0.72f

    const v30, -0x413d70a4    # -0.38f

    const v31, -0x404a3d71    # -1.42f

    const v32, -0x40d47ae1    # -0.67f

    const v33, -0x3ffb851f    # -2.07f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v28, 0x416851ec    # 14.52f

    const v29, 0x415947ae    # 13.58f

    const v30, 0x41888f5c    # 17.07f

    const/high16 v31, 0x41400000    # 12.0f

    const/high16 v32, 0x41a00000    # 20.0f

    const/high16 v33, 0x41400000    # 12.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v28, 0x3c23d70a    # 0.01f

    const/16 v29, 0x0

    const v30, 0x3ca3d70a    # 0.02f

    const/16 v31, 0x0

    const v32, 0x3ca3d70a    # 0.02f

    const/16 v33, 0x0

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v28, 0x3e8a3d71    # 0.27f

    const v30, 0x3efae148    # 0.49f

    const v31, 0x3e6b851f    # 0.23f

    const v32, 0x3efae148    # 0.49f

    const/high16 v33, 0x3f000000    # 0.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v28, 0x41a428f6    # 20.52f

    const v29, 0x414b0a3d    # 12.69f

    const v30, 0x41a347ae    # 20.41f

    const v31, 0x414d999a    # 12.85f

    const v32, 0x41a2147b    # 20.26f

    const v33, 0x414f0a3d    # 12.94f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    nop

    .line 116
    .end local v1    # "$this$_get_Grass__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-GrassKt$Grass$1$1":I
    nop

    .line 117
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 115
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 118
    nop

    .line 119
    .end local v11    # "$i$f$PathData":I
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

    .line 126
    nop

    .line 127
    nop

    .line 128
    nop

    .line 113
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 129
    nop

    .line 130
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

    .line 30
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 91
    .end local v34    # "$i$a$-materialIcon$default-GrassKt$Grass$1":I
    .end local v37    # "$this$_get_Grass__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v36    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/rounded/GrassKt;->_grass:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 75
    sget-object v0, Landroidx/compose/material/icons/rounded/GrassKt;->_grass:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
