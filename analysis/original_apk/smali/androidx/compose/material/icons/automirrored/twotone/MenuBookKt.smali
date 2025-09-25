.class public final Landroidx/compose/material/icons/automirrored/twotone/MenuBookKt;
.super Ljava/lang/Object;
.source "MenuBook.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMenuBook.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MenuBook.kt\nandroidx/compose/material/icons/automirrored/twotone/MenuBookKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,110:1\n223#2:111\n216#2,3:112\n219#2,4:116\n233#2,18:120\n253#2:157\n233#2,18:158\n253#2:195\n233#2,18:196\n253#2:233\n233#2,18:234\n253#2:271\n233#2,18:272\n253#2:309\n174#3:115\n705#4,2:138\n717#4,2:140\n719#4,11:146\n705#4,2:176\n717#4,2:178\n719#4,11:184\n705#4,2:214\n717#4,2:216\n719#4,11:222\n705#4,2:252\n717#4,2:254\n719#4,11:260\n705#4,2:290\n717#4,2:292\n719#4,11:298\n72#5,4:142\n72#5,4:180\n72#5,4:218\n72#5,4:256\n72#5,4:294\n*S KotlinDebug\n*F\n+ 1 MenuBook.kt\nandroidx/compose/material/icons/automirrored/twotone/MenuBookKt\n*L\n29#1:111\n29#1:112,3\n29#1:116,4\n30#1:120,18\n30#1:157\n65#1:158,18\n65#1:195\n75#1:196,18\n75#1:233\n85#1:234,18\n85#1:271\n95#1:272,18\n95#1:309\n29#1:115\n30#1:138,2\n30#1:140,2\n30#1:146,11\n65#1:176,2\n65#1:178,2\n65#1:184,11\n75#1:214,2\n75#1:216,2\n75#1:222,11\n85#1:252,2\n85#1:254,2\n85#1:260,11\n95#1:290,2\n95#1:292,2\n95#1:298,11\n30#1:142,4\n65#1:180,4\n75#1:218,4\n85#1:256,4\n95#1:294,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_menuBook",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "MenuBook",
        "Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;",
        "getMenuBook",
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
.field private static _menuBook:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getMenuBook(Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 42
    .param p0, "$this$MenuBook"    # Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/MenuBookKt;->_menuBook:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/MenuBookKt;->_menuBook:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string v0, "AutoMirrored.TwoTone.MenuBook"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v13, 0x1

    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 111
    .local v14, "$i$f$materialIcon":I
    nop

    .line 112
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 113
    nop

    .line 114
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 115
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 116
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 115
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 117
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 118
    const/high16 v6, 0x41c00000    # 24.0f

    .line 112
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 119
    nop

    .line 112
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    nop

    .local v1, "$this$_get_MenuBook__u24lambda_u245":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon-MenuBookKt$MenuBook$1":I
    move-object v3, v1

    .line 120
    .local v3, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 121
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "fillAlpha$iv":F
    move/from16 v20, v4

    .line 120
    nop

    .line 122
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v22, v5

    .line 120
    nop

    .line 123
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v17, v6

    .line 120
    const/4 v7, 0x0

    .line 129
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 130
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v8

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 132
    nop

    .line 134
    nop

    .line 135
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 136
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 137
    nop

    .line 129
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

    .line 138
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 139
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 138
    const/4 v10, 0x0

    .line 140
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 141
    const/4 v12, 0x0

    .line 142
    .local v12, "$i$f$PathData":I
    new-instance v16, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v16, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v27, 0x0

    .line 143
    .local v27, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v35, v16

    .local v35, "$this$_get_MenuBook__u24lambda_u245_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v36, 0x0

    .line 31
    .local v36, "$i$a$-materialPath-YwgOQQI$default-MenuBookKt$MenuBook$1$1":I
    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v8, 0x41a80000    # 21.0f

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    .end local v35    # "$this$_get_MenuBook__u24lambda_u245_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_MenuBook__u24lambda_u245_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v40, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v29, -0x4071eb85    # -1.11f

    const v30, -0x414ccccd    # -0.35f

    const v31, -0x3feae148    # -2.33f

    const/high16 v32, -0x41000000    # -0.5f

    const/high16 v33, -0x3fa00000    # -3.5f

    const/high16 v34, -0x41000000    # -0.5f

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v29, -0x40066666    # -1.95f

    const/16 v30, 0x0

    const v31, -0x3f7e6666    # -4.05f

    const v32, 0x3ecccccd    # 0.4f

    const/high16 v33, -0x3f500000    # -5.5f

    const/high16 v34, 0x3fc00000    # 1.5f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v29, -0x40466666    # -1.45f

    const v30, -0x40733333    # -1.1f

    const v31, -0x3f9ccccd    # -3.55f

    const/high16 v32, -0x40400000    # -1.5f

    const/high16 v34, -0x40400000    # -1.5f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v11, 0x401ccccd    # 2.45f

    const v8, 0x409ccccd    # 4.9f

    move/from16 v41, v2

    .end local v2    # "$i$a$-materialIcon-MenuBookKt$MenuBook$1":I
    .local v41, "$i$a$-materialIcon-MenuBookKt$MenuBook$1":I
    const/high16 v2, 0x40c00000    # 6.0f

    move-object/from16 v37, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v37, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0, v11, v8, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v3, 0x416a6666    # 14.65f

    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/16 v29, 0x0

    const/high16 v30, 0x3e800000    # 0.25f

    const/high16 v31, 0x3e800000    # 0.25f

    const/high16 v32, 0x3f000000    # 0.5f

    const/high16 v33, 0x3f000000    # 0.5f

    const/high16 v34, 0x3f000000    # 0.5f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v29, 0x3dcccccd    # 0.1f

    const/16 v30, 0x0

    const v31, 0x3e19999a    # 0.15f

    const v32, -0x42b33333    # -0.05f

    const/high16 v33, 0x3e800000    # 0.25f

    const v34, -0x42b33333    # -0.05f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v29, 0x40466666    # 3.1f

    const v30, 0x41a3999a    # 20.45f

    const v31, 0x40a1999a    # 5.05f

    const/high16 v32, 0x41a00000    # 20.0f

    const/high16 v33, 0x40d00000    # 6.5f

    const/high16 v34, 0x41a00000    # 20.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v29, 0x3ff9999a    # 1.95f

    const/16 v30, 0x0

    const v31, 0x4081999a    # 4.05f

    const v32, 0x3ecccccd    # 0.4f

    const/high16 v33, 0x40b00000    # 5.5f

    const/high16 v34, 0x3fc00000    # 1.5f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v29, 0x3faccccd    # 1.35f

    const v30, -0x40a66666    # -0.85f

    const v31, 0x40733333    # 3.8f

    const/high16 v32, -0x40400000    # -1.5f

    const/high16 v34, -0x40400000    # -1.5f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v29, 0x3fd33333    # 1.65f

    const/16 v30, 0x0

    const v31, 0x40566666    # 3.35f

    const v32, 0x3e99999a    # 0.3f

    const/high16 v33, 0x40980000    # 4.75f

    const v34, 0x3f866666    # 1.05f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v29, 0x3dcccccd    # 0.1f

    const v30, 0x3d4ccccd    # 0.05f

    const v31, 0x3e19999a    # 0.15f

    const v32, 0x3d4ccccd    # 0.05f

    const/high16 v33, 0x3e800000    # 0.25f

    const v34, 0x3d4ccccd    # 0.05f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const/high16 v29, 0x3e800000    # 0.25f

    const/16 v30, 0x0

    const/high16 v31, 0x3f000000    # 0.5f

    const/high16 v32, -0x41800000    # -0.25f

    const/high16 v33, 0x3f000000    # 0.5f

    const/high16 v34, -0x41000000    # -0.5f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v29, 0x41b33333    # 22.4f

    const v30, 0x40b1999a    # 5.55f

    const/high16 v31, 0x41ae0000    # 21.75f

    const/high16 v32, 0x40a80000    # 5.25f

    const/high16 v33, 0x41a80000    # 21.0f

    const/high16 v34, 0x40a00000    # 5.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x41940000    # 18.5f

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v29, 0x3f8ccccd    # 1.1f

    const v30, -0x414ccccd    # -0.35f

    const v31, 0x40133333    # 2.3f

    const/high16 v32, -0x41000000    # -0.5f

    const/high16 v33, 0x40600000    # 3.5f

    const/high16 v34, -0x41000000    # -0.5f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v29, 0x3fab851f    # 1.34f

    const/16 v30, 0x0

    const v31, 0x404851ec    # 3.13f

    const v32, 0x3ed1eb85    # 0.41f

    const/high16 v33, 0x40900000    # 4.5f

    const v34, 0x3f7d70a4    # 0.99f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const/high16 v2, 0x41380000    # 11.5f

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v29, 0x411a147b    # 9.63f

    const v30, 0x419347ae    # 18.41f

    const v31, 0x40fae148    # 7.84f

    const/high16 v32, 0x41900000    # 18.0f

    const/high16 v33, 0x40d00000    # 6.5f

    const/high16 v34, 0x41900000    # 18.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v29, 0x40a9999a    # 5.3f

    const/high16 v30, 0x41900000    # 18.0f

    const v31, 0x40833333    # 4.1f

    const v32, 0x41913333    # 18.15f

    const/high16 v33, 0x40400000    # 3.0f

    const/high16 v34, 0x41940000    # 18.5f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/high16 v8, 0x41a80000    # 21.0f

    invoke-virtual {v0, v8, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v29, -0x40733333    # -1.1f

    const v30, -0x414ccccd    # -0.35f

    const v31, -0x3feccccd    # -2.3f

    const/high16 v32, -0x41000000    # -0.5f

    const/high16 v33, -0x3fa00000    # -3.5f

    const/high16 v34, -0x41000000    # -0.5f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v29, -0x40547ae1    # -1.34f

    const/16 v30, 0x0

    const v31, -0x3fb7ae14    # -3.13f

    const v32, 0x3ed1eb85    # 0.41f

    const/high16 v33, -0x3f700000    # -4.5f

    const v34, 0x3f7d70a4    # 0.99f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v8, 0x40efae14    # 7.49f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v29, 0x3faf5c29    # 1.37f

    const v30, -0x40e8f5c3    # -0.59f

    const v31, 0x404a3d71    # 3.16f

    const v32, -0x40828f5c    # -0.99f

    const/high16 v33, 0x40900000    # 4.5f

    const v34, -0x40828f5c    # -0.99f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v29, 0x3f99999a    # 1.2f

    const/16 v30, 0x0

    const v31, 0x4019999a    # 2.4f

    const v32, 0x3e19999a    # 0.15f

    const/high16 v33, 0x40600000    # 3.5f

    const/high16 v34, 0x3f000000    # 0.5f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    nop

    .line 143
    .end local v0    # "$this$_get_MenuBook__u24lambda_u245_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v36    # "$i$a$-materialPath-YwgOQQI$default-MenuBookKt$MenuBook$1$1":I
    nop

    .line 144
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 142
    .end local v16    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v27    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 145
    nop

    .line 146
    .end local v12    # "$i$f$PathData":I
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

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 155
    nop

    .line 140
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 156
    nop

    .line 157
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

    .line 65
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    .end local v37    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x3e99999a    # 0.3f

    .local v0, "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .local v30, "strokeAlpha$iv":F
    move-object v3, v1

    .line 158
    .restart local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 161
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 158
    const/4 v5, 0x0

    .line 167
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 168
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v7, 0x0

    invoke-direct {v6, v9, v10, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 170
    nop

    .line 172
    nop

    .line 173
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 174
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 175
    nop

    .line 167
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

    .line 176
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 177
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 176
    const/4 v7, 0x0

    .line 178
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 179
    const/4 v9, 0x0

    .line 180
    .local v9, "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v10, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 181
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_MenuBook__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 66
    .local v22, "$i$a$-materialPath-YwgOQQI$default-MenuBookKt$MenuBook$1$2":I
    const/high16 v15, 0x41300000    # 11.0f

    invoke-virtual {v12, v15, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v16, 0x411a147b    # 9.63f

    const v17, 0x40dd1eb8    # 6.91f

    const v18, 0x40fae148    # 7.84f

    const/high16 v19, 0x40d00000    # 6.5f

    const/high16 v20, 0x40d00000    # 6.5f

    const/high16 v21, 0x40d00000    # 6.5f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v16, 0x40a9999a    # 5.3f

    const/high16 v17, 0x40d00000    # 6.5f

    const v18, 0x40833333    # 4.1f

    const v19, 0x40d4cccd    # 6.65f

    const/high16 v20, 0x40400000    # 3.0f

    const/high16 v21, 0x40e00000    # 7.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v12, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v16, 0x40833333    # 4.1f

    const v17, 0x41913333    # 18.15f

    const v18, 0x40a9999a    # 5.3f

    const/high16 v19, 0x41900000    # 18.0f

    const/high16 v20, 0x40d00000    # 6.5f

    const/high16 v21, 0x41900000    # 18.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v16, 0x3fab851f    # 1.34f

    const/16 v17, 0x0

    const v18, 0x404851ec    # 3.13f

    const v19, 0x3ed1eb85    # 0.41f

    const/high16 v20, 0x40900000    # 4.5f

    const v21, 0x3f7d70a4    # 0.99f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    nop

    .line 181
    .end local v12    # "$this$_get_MenuBook__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-MenuBookKt$MenuBook$1$2":I
    nop

    .line 182
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 180
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 183
    nop

    .line 184
    .end local v9    # "$i$f$PathData":I
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

    .line 191
    nop

    .line 192
    nop

    .line 193
    nop

    .line 178
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 194
    nop

    .line 195
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

    .line 75
    .end local v0    # "fillAlpha$iv":F
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    move-object v0, v1

    .line 196
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 197
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "fillAlpha$iv":F
    move/from16 v28, v2

    .line 196
    nop

    .line 198
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 196
    nop

    .line 199
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .restart local v4    # "pathFillType$iv":I
    move/from16 v25, v4

    .line 196
    const/4 v5, 0x0

    .line 205
    .restart local v5    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 206
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 208
    nop

    .line 210
    nop

    .line 211
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 212
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 213
    nop

    .line 205
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

    .line 214
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 215
    const-string v6, ""

    .restart local v6    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 214
    const/4 v7, 0x0

    .line 216
    .restart local v7    # "$i$f$path-R_LF-3I":I
    nop

    .line 217
    const/4 v8, 0x0

    .line 218
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 219
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_MenuBook__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 76
    .local v12, "$i$a$-materialPath-YwgOQQI$default-MenuBookKt$MenuBook$1$3":I
    const/high16 v15, 0x41280000    # 10.5f

    move-object/from16 v22, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v22, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x418c0000    # 17.5f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v16, 0x3f6147ae    # 0.88f

    const v18, 0x3fdd70a4    # 1.73f

    const v19, 0x3db851ec    # 0.09f

    const/high16 v20, 0x40200000    # 2.5f

    const v21, 0x3e851eb8    # 0.26f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v15, 0x4113d70a    # 9.24f

    invoke-virtual {v11, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v16, 0x4199ae14    # 19.21f

    const v17, 0x411170a4    # 9.09f

    const v18, 0x4192e148    # 18.36f

    const/high16 v19, 0x41100000    # 9.0f

    const/high16 v20, 0x418c0000    # 17.5f

    const/high16 v21, 0x41100000    # 9.0f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v16, -0x405c28f6    # -1.28f

    const/16 v17, 0x0

    const v18, -0x3fe28f5c    # -2.46f

    const v19, 0x3e23d70a    # 0.16f

    const/high16 v20, -0x3fa00000    # -3.5f

    const v21, 0x3ef0a3d7    # 0.47f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v15, 0x3fc8f5c3    # 1.57f

    invoke-virtual {v11, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v16, 0x416fd70a    # 14.99f

    const v17, 0x412b0a3d    # 10.69f

    const v18, 0x418170a4    # 16.18f

    const/high16 v19, 0x41280000    # 10.5f

    const/high16 v20, 0x418c0000    # 17.5f

    const/high16 v21, 0x41280000    # 10.5f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    nop

    .line 219
    .end local v11    # "$this$_get_MenuBook__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-MenuBookKt$MenuBook$1$3":I
    nop

    .line 220
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 218
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 221
    nop

    .line 222
    .end local v8    # "$i$f$PathData":I
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

    .line 229
    nop

    .line 230
    nop

    .line 231
    nop

    .line 216
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 232
    nop

    .line 233
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

    .line 85
    .end local v2    # "fillAlpha$iv":F
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v2, v1

    .line 234
    .local v2, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 235
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "fillAlpha$iv":F
    move/from16 v28, v3

    .line 234
    nop

    .line 236
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 234
    nop

    .line 237
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v25, v5

    .line 234
    const/4 v6, 0x0

    .line 243
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 244
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 246
    nop

    .line 248
    nop

    .line 249
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 250
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 251
    nop

    .line 243
    const/4 v7, 0x0

    move-object/from16 v29, v7

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v2

    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v7

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v7

    .line 252
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 253
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 252
    const/4 v8, 0x0

    .line 254
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 255
    const/4 v9, 0x0

    .line 256
    .local v9, "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v10, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 257
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_MenuBook__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 86
    .local v22, "$i$a$-materialPath-YwgOQQI$default-MenuBookKt$MenuBook$1$4":I
    const v15, 0x41528f5c    # 13.16f

    invoke-virtual {v12, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v16, 0x3f6147ae    # 0.88f

    const/16 v17, 0x0

    const v18, 0x3fdd70a4    # 1.73f

    const v19, 0x3db851ec    # 0.09f

    const/high16 v20, 0x40200000    # 2.5f

    const v21, 0x3e851eb8    # 0.26f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v15, 0x413e6666    # 11.9f

    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v16, -0x40b5c28f    # -0.79f

    const v17, -0x41e66666    # -0.15f

    const v18, -0x402e147b    # -1.64f

    const v19, -0x418a3d71    # -0.24f

    const/high16 v20, -0x3fe00000    # -2.5f

    const v21, -0x418a3d71    # -0.24f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v16, -0x405c28f6    # -1.28f

    const/16 v17, 0x0

    const v18, -0x3fe28f5c    # -2.46f

    const v19, 0x3e23d70a    # 0.16f

    const/high16 v20, -0x3fa00000    # -3.5f

    const v21, 0x3ef0a3d7    # 0.47f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v15, 0x3fc8f5c3    # 1.57f

    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v16, 0x416fd70a    # 14.99f

    const v17, 0x4155c28f    # 13.36f

    const v18, 0x418170a4    # 16.18f

    const v19, 0x41528f5c    # 13.16f

    const/high16 v20, 0x418c0000    # 17.5f

    const v21, 0x41528f5c    # 13.16f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    nop

    .line 257
    .end local v12    # "$this$_get_MenuBook__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-MenuBookKt$MenuBook$1$4":I
    nop

    .line 258
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 256
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 259
    nop

    .line 260
    .end local v9    # "$i$f$PathData":I
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

    .line 267
    nop

    .line 268
    nop

    .line 269
    nop

    .line 254
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 270
    nop

    .line 271
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

    .line 95
    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 272
    .restart local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 273
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "fillAlpha$iv":F
    move/from16 v28, v3

    .line 272
    nop

    .line 274
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 272
    nop

    .line 275
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .restart local v5    # "pathFillType$iv":I
    move/from16 v25, v5

    .line 272
    const/4 v6, 0x0

    .line 281
    .restart local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 282
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 284
    nop

    .line 286
    nop

    .line 287
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 288
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 289
    nop

    .line 281
    const/4 v7, 0x0

    move-object/from16 v29, v7

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v7

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v7

    .line 290
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 291
    const-string v7, ""

    .restart local v7    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 290
    const/4 v8, 0x0

    .line 292
    .restart local v8    # "$i$f$path-R_LF-3I":I
    nop

    .line 293
    const/4 v9, 0x0

    .line 294
    .restart local v9    # "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 295
    .restart local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_MenuBook__u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 96
    .local v22, "$i$a$-materialPath-YwgOQQI$default-MenuBookKt$MenuBook$1$5":I
    const v15, 0x417d47ae    # 15.83f

    invoke-virtual {v12, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v16, 0x3f6147ae    # 0.88f

    const/16 v17, 0x0

    const v18, 0x3fdd70a4    # 1.73f

    const v19, 0x3db851ec    # 0.09f

    const/high16 v20, 0x40200000    # 2.5f

    const v21, 0x3e851eb8    # 0.26f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v0, -0x403d70a4    # -1.52f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v16, -0x40b5c28f    # -0.79f

    const v17, -0x41e66666    # -0.15f

    const v18, -0x402e147b    # -1.64f

    const v19, -0x418a3d71    # -0.24f

    const/high16 v20, -0x3fe00000    # -2.5f

    const v21, -0x418a3d71    # -0.24f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v16, -0x405c28f6    # -1.28f

    const/16 v17, 0x0

    const v18, -0x3fe28f5c    # -2.46f

    const v19, 0x3e23d70a    # 0.16f

    const/high16 v20, -0x3fa00000    # -3.5f

    const v21, 0x3ef0a3d7    # 0.47f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v0, 0x3fc8f5c3    # 1.57f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v16, 0x416fd70a    # 14.99f

    const v17, 0x418028f6    # 16.02f

    const v18, 0x418170a4    # 16.18f

    const v19, 0x417d47ae    # 15.83f

    const/high16 v20, 0x418c0000    # 17.5f

    const v21, 0x417d47ae    # 15.83f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    nop

    .line 295
    .end local v12    # "$this$_get_MenuBook__u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-MenuBookKt$MenuBook$1$5":I
    nop

    .line 296
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 294
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 297
    nop

    .line 298
    .end local v9    # "$i$f$PathData":I
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

    .line 305
    nop

    .line 306
    nop

    .line 307
    nop

    .line 292
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 308
    nop

    .line 309
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

    .line 95
    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 111
    .end local v1    # "$this$_get_MenuBook__u24lambda_u245":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v41    # "$i$a$-materialIcon-MenuBookKt$MenuBook$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v40    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/automirrored/twotone/MenuBookKt;->_menuBook:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 106
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/MenuBookKt;->_menuBook:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
