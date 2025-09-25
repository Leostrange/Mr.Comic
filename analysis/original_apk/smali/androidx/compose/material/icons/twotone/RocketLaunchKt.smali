.class public final Landroidx/compose/material/icons/twotone/RocketLaunchKt;
.super Ljava/lang/Object;
.source "RocketLaunch.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketLaunch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketLaunch.kt\nandroidx/compose/material/icons/twotone/RocketLaunchKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,124:1\n212#2,12:125\n233#2,18:138\n253#2:175\n233#2,18:176\n253#2:213\n174#3:137\n705#4,2:156\n717#4,2:158\n719#4,11:164\n705#4,2:194\n717#4,2:196\n719#4,11:202\n72#5,4:160\n72#5,4:198\n*S KotlinDebug\n*F\n+ 1 RocketLaunch.kt\nandroidx/compose/material/icons/twotone/RocketLaunchKt\n*L\n29#1:125,12\n30#1:138,18\n30#1:175\n64#1:176,18\n64#1:213\n29#1:137\n30#1:156,2\n30#1:158,2\n30#1:164,11\n64#1:194,2\n64#1:196,2\n64#1:202,11\n30#1:160,4\n64#1:198,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_rocketLaunch",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "RocketLaunch",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getRocketLaunch",
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
.field private static _rocketLaunch:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getRocketLaunch(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 44
    .param p0, "$this$RocketLaunch"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/RocketLaunchKt;->_rocketLaunch:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/RocketLaunchKt;->_rocketLaunch:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.RocketLaunch"

    .line 125
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 127
    const/4 v13, 0x0

    .line 125
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 136
    .local v14, "$i$f$materialIcon":I
    nop

    .line 129
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 130
    nop

    .line 131
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 137
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 132
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 137
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 133
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 134
    const/high16 v6, 0x41c00000    # 24.0f

    .line 129
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 135
    nop

    .line 129
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    nop

    .local v1, "$this$_get_RocketLaunch__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-RocketLaunchKt$RocketLaunch$1":I
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v20, v3

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v4, v1

    .line 138
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 141
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v17, v5

    .line 138
    const/4 v6, 0x0

    .line 147
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 148
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v7

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 150
    nop

    .line 152
    nop

    .line 153
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 154
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 155
    nop

    .line 147
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

    .line 156
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 157
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v7

    .line 156
    const/4 v8, 0x0

    .line 158
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 159
    const/4 v9, 0x0

    .line 160
    .local v9, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 161
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v16, v11

    .local v16, "$this$_get_RocketLaunch__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-RocketLaunchKt$RocketLaunch$1$1":I
    const v10, 0x40d6b852    # 6.71f

    move-object/from16 v40, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v40, "name$iv":Ljava/lang/String;
    const v0, 0x4195ae14    # 18.71f

    move/from16 v41, v2

    move-object/from16 v2, v16

    .end local v16    # "$this$_get_RocketLaunch__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v2, "$this$_get_RocketLaunch__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v41, "$i$a$-materialIcon$default-RocketLaunchKt$RocketLaunch$1":I
    invoke-virtual {v2, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, -0x4170a3d7    # -0.28f

    const v29, 0x3e8f5c29    # 0.28f

    const v30, -0x3ff51eb8    # -2.17f

    const v31, 0x3f428f5c    # 0.76f

    const v32, -0x3ff51eb8    # -2.17f

    const v33, 0x3f428f5c    # 0.76f

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v0, 0x3ef0a3d7    # 0.47f

    const v10, -0x400f5c29    # -1.88f

    move/from16 v39, v3

    .end local v3    # "fillAlpha$iv":F
    .local v39, "fillAlpha$iv":F
    const v3, 0x3f428f5c    # 0.76f

    move-object/from16 v42, v4

    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v42, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v4, -0x3ff51eb8    # -2.17f

    invoke-virtual {v2, v0, v10, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, 0x40af0a3d    # 5.47f

    const v29, 0x4188e148    # 17.11f

    const v30, 0x40b70a3d    # 5.72f

    const/high16 v31, 0x41880000    # 17.0f

    const/high16 v32, 0x40c00000    # 6.0f

    const/high16 v33, 0x41880000    # 17.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, 0x3f0ccccd    # 0.55f

    const/16 v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    const v31, 0x3ee66666    # 0.45f

    const/high16 v32, 0x3f800000    # 1.0f

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/high16 v28, 0x40e00000    # 7.0f

    const v29, 0x41923d71    # 18.28f

    const v30, 0x40dc7ae1    # 6.89f

    const v31, 0x41943d71    # 18.53f

    const v32, 0x40d6b852    # 6.71f

    const v33, 0x4195ae14    # 18.71f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v0, 0x40ed1eb8    # 7.41f

    const v3, 0x412d47ae    # 10.83f

    invoke-virtual {v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/high16 v0, 0x40b00000    # 5.5f

    const v3, 0x412028f6    # 10.01f

    invoke-virtual {v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v0, 0x3ffc28f6    # 1.97f

    const v3, -0x4003d70a    # -1.97f

    invoke-virtual {v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v0, 0x3fb851ec    # 1.44f

    const v3, 0x3e947ae1    # 0.29f

    invoke-virtual {v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v28, 0x410570a4    # 8.34f

    const v29, 0x41128f5c    # 9.16f

    const v30, 0x40fa8f5c    # 7.83f

    const v31, 0x41207ae1    # 10.03f

    const v32, 0x40ed1eb8    # 7.41f

    const v33, 0x412d47ae    # 10.83f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v4, 0x415fd70a    # 13.99f

    const/high16 v10, 0x41940000    # 18.5f

    invoke-virtual {v2, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v4, -0x40ae147b    # -0.82f

    const v10, -0x400b851f    # -1.91f

    invoke-virtual {v2, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v28, 0x3f4ccccd    # 0.8f

    const v29, -0x4128f5c3    # -0.42f

    const v30, 0x3fd5c28f    # 1.67f

    const v31, -0x4091eb85    # -0.93f

    const v32, 0x401f5c29    # 2.49f

    const/high16 v33, -0x40400000    # -1.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    invoke-virtual {v2, v3, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/high16 v4, 0x41940000    # 18.5f

    const v10, 0x415fd70a    # 13.99f

    invoke-virtual {v2, v10, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v4, 0x419feb85    # 19.99f

    const v10, 0x408051ec    # 4.01f

    invoke-virtual {v2, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, -0x3f9ccccd    # -3.55f

    const v31, -0x40cf5c29    # -0.69f

    const v32, -0x3efc51ec    # -8.23f

    const v33, 0x407f5c29    # 3.99f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v28, -0x40570a3d    # -1.32f

    const v29, 0x3fa8f5c3    # 1.32f

    const v30, -0x3fe66666    # -2.4f

    const v31, 0x405851ec    # 3.38f

    const v32, -0x3fd147ae    # -2.73f

    const v33, 0x408147ae    # 4.04f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v4, 0x403b851f    # 2.93f

    const v10, 0x403b851f    # 2.93f

    invoke-virtual {v2, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v28, 0x3f266666    # 0.65f

    const v29, -0x415c28f6    # -0.32f

    const v30, 0x402d70a4    # 2.71f

    const v31, -0x404ccccd    # -1.4f

    const v32, 0x408147ae    # 4.04f

    const v33, -0x3fd147ae    # -2.73f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v28, 0x41a570a4    # 20.68f

    const v29, 0x40f1eb85    # 7.56f

    const v30, 0x419feb85    # 19.99f

    const v31, 0x408051ec    # 4.01f

    const v32, 0x419feb85    # 19.99f

    const v33, 0x408051ec    # 4.01f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v10, 0x41300000    # 11.0f

    invoke-virtual {v2, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v28, -0x40733333    # -1.1f

    const/16 v29, 0x0

    const/high16 v30, -0x40000000    # -2.0f

    const v31, -0x4099999a    # -0.9f

    const/high16 v32, -0x40000000    # -2.0f

    const/high16 v33, -0x40000000    # -2.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const/16 v28, 0x0

    const v29, -0x40733333    # -1.1f

    const v30, 0x3f666666    # 0.9f

    const/high16 v31, -0x40000000    # -2.0f

    const/high16 v32, 0x40000000    # 2.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v10, 0x3f666666    # 0.9f

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v2, v0, v10, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const/high16 v28, 0x41880000    # 17.0f

    const v29, 0x4121999a    # 10.1f

    const v30, 0x4180cccd    # 16.1f

    const/high16 v31, 0x41300000    # 11.0f

    const/high16 v32, 0x41700000    # 15.0f

    const/high16 v33, 0x41300000    # 11.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    nop

    .line 161
    .end local v2    # "$this$_get_RocketLaunch__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-RocketLaunchKt$RocketLaunch$1$1":I
    nop

    .line 162
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 160
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 163
    nop

    .line 164
    .end local v9    # "$i$f$PathData":I
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

    .line 172
    nop

    .line 173
    nop

    .line 158
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 174
    nop

    .line 175
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

    .line 64
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "strokeAlpha$iv":F
    .end local v39    # "fillAlpha$iv":F
    .end local v42    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v2, v1

    .line 176
    .local v2, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 177
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v28, v5

    .line 176
    nop

    .line 178
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v30, v6

    .line 176
    nop

    .line 179
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move/from16 v25, v7

    .line 176
    const/4 v8, 0x0

    .line 185
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 186
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v9

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 188
    nop

    .line 190
    nop

    .line 191
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 192
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 193
    nop

    .line 185
    const/4 v9, 0x0

    move-object/from16 v29, v9

    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v2

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v34

    .line 194
    .local v31, "strokeLineWidth$iv$iv":F
    .local v32, "strokeLineCap$iv$iv":I
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 195
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v9

    .line 194
    const/4 v10, 0x0

    .line 196
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 197
    const/4 v11, 0x0

    .line 198
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 199
    .local v15, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v24, v12

    .local v24, "$this$_get_RocketLaunch__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 65
    .local v35, "$i$a$-materialPath-YwgOQQI$default-RocketLaunchKt$RocketLaunch$1$2":I
    const/high16 v3, 0x40c00000    # 6.0f

    move-object/from16 v0, v24

    .end local v24    # "$this$_get_RocketLaunch__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_RocketLaunch__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v17, -0x40ab851f    # -0.83f

    const/16 v18, 0x0

    const v19, -0x4035c28f    # -1.58f

    const v20, 0x3eae147b    # 0.34f

    const v21, -0x3ff851ec    # -2.12f

    const v22, 0x3f6147ae    # 0.88f

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v17, 0x402ccccd    # 2.7f

    const v18, 0x41887ae1    # 17.06f

    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x41b00000    # 22.0f

    const/high16 v21, 0x40000000    # 2.0f

    const/high16 v22, 0x41b00000    # 22.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v3, -0x40cccccd    # -0.7f

    const v4, 0x40c3d70a    # 6.12f

    move-object/from16 v42, v1

    .end local v1    # "$this$_get_RocketLaunch__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v42, "$this$_get_RocketLaunch__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v1, 0x409e147b    # 4.94f

    move-object/from16 v43, v2

    const v2, -0x400f5c29    # -1.88f

    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v43, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0, v1, v3, v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v17, 0x410a8f5c    # 8.66f

    const v18, 0x419ca3d7    # 19.58f

    const/high16 v19, 0x41100000    # 9.0f

    const v20, 0x4196a3d7    # 18.83f

    const/high16 v21, 0x41100000    # 9.0f

    const/high16 v22, 0x41900000    # 18.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v17, 0x41100000    # 9.0f

    const v18, 0x4182b852    # 16.34f

    const v19, 0x40f51eb8    # 7.66f

    const/high16 v20, 0x41700000    # 15.0f

    const/high16 v21, 0x40c00000    # 6.0f

    const/high16 v22, 0x41700000    # 15.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v1, 0x4195ae14    # 18.71f

    const v2, 0x40d6b852    # 6.71f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v17, -0x4170a3d7    # -0.28f

    const v18, 0x3e8f5c29    # 0.28f

    const v19, -0x3ff51eb8    # -2.17f

    const v20, 0x3f428f5c    # 0.76f

    const v21, -0x3ff51eb8    # -2.17f

    const v22, 0x3f428f5c    # 0.76f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v1, -0x3ff51eb8    # -2.17f

    const v2, 0x3f428f5c    # 0.76f

    const v3, 0x3ef0a3d7    # 0.47f

    const v4, -0x400f5c29    # -1.88f

    invoke-virtual {v0, v3, v4, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v17, 0x40af0a3d    # 5.47f

    const v18, 0x4188e148    # 17.11f

    const v19, 0x40b70a3d    # 5.72f

    const/high16 v20, 0x41880000    # 17.0f

    const/high16 v21, 0x40c00000    # 6.0f

    const/high16 v22, 0x41880000    # 17.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v17, 0x3f0ccccd    # 0.55f

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const v20, 0x3ee66666    # 0.45f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const/high16 v17, 0x40e00000    # 7.0f

    const v18, 0x41923d71    # 18.28f

    const v19, 0x40dc7ae1    # 6.89f

    const v20, 0x41943d71    # 18.53f

    const v21, 0x40d6b852    # 6.71f

    const v22, 0x4195ae14    # 18.71f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v1, 0x418b5c29    # 17.42f

    const v2, 0x415a6666    # 13.65f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v17, 0x40cb851f    # 6.36f

    const v18, -0x3f347ae1    # -6.36f

    const v19, 0x4087ae14    # 4.24f

    const v20, -0x3ecb0a3d    # -11.31f

    const v21, 0x4087ae14    # 4.24f

    const v22, -0x3ecb0a3d    # -11.31f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v3, -0x3ecb0a3d    # -11.31f

    const v4, 0x4087ae14    # 4.24f

    const v1, -0x3f61999a    # -4.95f

    const v2, -0x3ff851ec    # -2.12f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v1, -0x3fe0a3d7    # -2.49f

    const/high16 v2, -0x41000000    # -0.5f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v17, 0x40e6b852    # 7.21f

    const v18, 0x40be6666    # 5.95f

    const v19, 0x40d0f5c3    # 6.53f

    const v20, 0x40c51eb8    # 6.16f

    const v21, 0x40c1999a    # 6.05f

    const v22, 0x40d428f6    # 6.63f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v1, 0x412b0a3d    # 10.69f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const/high16 v1, 0x40a00000    # 5.0f

    const v2, 0x4008f5c3    # 2.14f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v1, 0x4132b852    # 11.17f

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v1, 0x4008f5c3    # 2.14f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v1, 0x4081999a    # 4.05f

    const v2, -0x3f7e6666    # -4.05f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v17, 0x3ef0a3d7    # 0.47f

    const v18, -0x410f5c29    # -0.47f

    const v19, 0x3f2e147b    # 0.68f

    const v20, -0x406ccccd    # -1.15f

    const v21, 0x3f0ccccd    # 0.55f

    const v22, -0x401851ec    # -1.81f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v1, 0x415a6666    # 13.65f

    const v2, 0x418b5c29    # 17.42f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v1, 0x412d47ae    # 10.83f

    const v2, 0x40ed1eb8    # 7.41f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v1, 0x412028f6    # 10.01f

    const/high16 v2, 0x40b00000    # 5.5f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v1, 0x3ffc28f6    # 1.97f

    const v2, -0x4003d70a    # -1.97f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v1, 0x3e947ae1    # 0.29f

    const v2, 0x3fb851ec    # 1.44f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v17, 0x410570a4    # 8.34f

    const v18, 0x41128f5c    # 9.16f

    const v19, 0x40fa8f5c    # 7.83f

    const v20, 0x41207ae1    # 10.03f

    const v21, 0x40ed1eb8    # 7.41f

    const v22, 0x412d47ae    # 10.83f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const/high16 v1, 0x41940000    # 18.5f

    const v2, 0x415fd70a    # 13.99f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v1, -0x40ae147b    # -0.82f

    const v2, -0x400b851f    # -1.91f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v17, 0x3f4ccccd    # 0.8f

    const v18, -0x4128f5c3    # -0.42f

    const v19, 0x3fd5c28f    # 1.67f

    const v20, -0x4091eb85    # -0.93f

    const v21, 0x401f5c29    # 2.49f

    const/high16 v22, -0x40400000    # -1.5f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v1, 0x3e947ae1    # 0.29f

    const v2, 0x3fb851ec    # 1.44f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const/high16 v1, 0x41940000    # 18.5f

    const v2, 0x415fd70a    # 13.99f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const/high16 v1, 0x41800000    # 16.0f

    const v2, 0x4143d70a    # 12.24f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v17, -0x40570a3d    # -1.32f

    const v18, 0x3fa8f5c3    # 1.32f

    const v19, -0x3fa7ae14    # -3.38f

    const v20, 0x4019999a    # 2.4f

    const v21, -0x3f7eb852    # -4.04f

    const v22, 0x402eb852    # 2.73f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const v1, -0x3fc47ae1    # -2.93f

    const v2, -0x3fc47ae1    # -2.93f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const v17, 0x3ea3d70a    # 0.32f

    const v18, -0x40d9999a    # -0.65f

    const v19, 0x3fb33333    # 1.4f

    const v20, -0x3fd28f5c    # -2.71f

    const v21, 0x402eb852    # 2.73f

    const v22, -0x3f7eb852    # -4.04f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const v17, 0x4095c28f    # 4.68f

    const v18, -0x3f6a3d71    # -4.68f

    const v19, 0x4103ae14    # 8.23f

    const v20, -0x3f80a3d7    # -3.99f

    const v21, 0x4103ae14    # 8.23f

    const v22, -0x3f80a3d7    # -3.99f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const/high16 v1, 0x41800000    # 16.0f

    const v2, 0x4143d70a    # 12.24f

    const v3, 0x41a570a4    # 20.68f

    const v4, 0x40f1eb85    # 7.56f

    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const/high16 v1, 0x41300000    # 11.0f

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const v17, 0x3f8ccccd    # 1.1f

    const/16 v18, 0x0

    const/high16 v19, 0x40000000    # 2.0f

    const v20, -0x4099999a    # -0.9f

    const/high16 v21, 0x40000000    # 2.0f

    const/high16 v22, -0x40000000    # -2.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const v1, -0x4099999a    # -0.9f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v1, 0x3f666666    # 0.9f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    const v1, 0x415e6666    # 13.9f

    const/high16 v2, 0x41300000    # 11.0f

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    nop

    .line 199
    .end local v0    # "$this$_get_RocketLaunch__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-RocketLaunchKt$RocketLaunch$1$2":I
    nop

    .line 200
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 198
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 201
    nop

    .line 202
    .end local v11    # "$i$f$PathData":I
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

    .line 210
    nop

    .line 211
    nop

    .line 196
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 212
    nop

    .line 213
    .end local v9    # "name$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 64
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    .end local v43    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 136
    .end local v41    # "$i$a$-materialIcon$default-RocketLaunchKt$RocketLaunch$1":I
    .end local v42    # "$this$_get_RocketLaunch__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v40    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/RocketLaunchKt;->_rocketLaunch:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 120
    sget-object v0, Landroidx/compose/material/icons/twotone/RocketLaunchKt;->_rocketLaunch:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
