.class public final Landroidx/compose/material/icons/twotone/MasksKt;
.super Ljava/lang/Object;
.source "Masks.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMasks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Masks.kt\nandroidx/compose/material/icons/twotone/MasksKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,113:1\n212#2,12:114\n233#2,18:127\n253#2:164\n233#2,18:165\n253#2:202\n174#3:126\n705#4,2:145\n717#4,2:147\n719#4,11:153\n705#4,2:183\n717#4,2:185\n719#4,11:191\n72#5,4:149\n72#5,4:187\n*S KotlinDebug\n*F\n+ 1 Masks.kt\nandroidx/compose/material/icons/twotone/MasksKt\n*L\n29#1:114,12\n30#1:127,18\n30#1:164\n54#1:165,18\n54#1:202\n29#1:126\n30#1:145,2\n30#1:147,2\n30#1:153,11\n54#1:183,2\n54#1:185,2\n54#1:191,11\n30#1:149,4\n54#1:187,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_masks",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Masks",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getMasks",
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
.field private static _masks:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getMasks(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 45
    .param p0, "$this$Masks"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/MasksKt;->_masks:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/MasksKt;->_masks:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.Masks"

    .line 114
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 116
    const/4 v13, 0x0

    .line 114
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 125
    .local v14, "$i$f$materialIcon":I
    nop

    .line 118
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 119
    nop

    .line 120
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 126
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 121
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 126
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 122
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 123
    const/high16 v6, 0x41c00000    # 24.0f

    .line 118
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 124
    nop

    .line 118
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    nop

    .local v1, "$this$_get_Masks__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-MasksKt$Masks$1":I
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v20, v3

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v4, v1

    .line 127
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 130
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v17, v5

    .line 127
    const/4 v6, 0x0

    .line 136
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 137
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v7

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 139
    nop

    .line 141
    nop

    .line 142
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 143
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 144
    nop

    .line 136
    move-object/from16 v21, v10

    .local v19, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v21, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v15, v4

    .local v15, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v23, v7

    .local v23, "strokeLineWidth$iv$iv":F
    .local v24, "strokeLineCap$iv$iv":I
    move/from16 v26, v7

    .line 145
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 146
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v8

    .line 145
    const/4 v9, 0x0

    .line 147
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 148
    const/4 v11, 0x0

    .line 149
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 150
    .local v16, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v34, v12

    .local v34, "$this$_get_Masks__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-MasksKt$Masks$1$1":I
    const v7, 0x416570a4    # 14.34f

    const v10, 0x410c7ae1    # 8.78f

    move-object/from16 v40, v0

    move-object/from16 v0, v34

    .end local v34    # "$this$_get_Masks__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Masks__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v40, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, 0x415851ec    # 13.52f

    const v29, 0x410547ae    # 8.33f

    const v30, 0x414ee148    # 12.93f

    const/high16 v31, 0x41000000    # 8.0f

    const/high16 v32, 0x41400000    # 12.0f

    const/high16 v33, 0x41000000    # 8.0f

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, -0x4091eb85    # -0.93f

    const/16 v29, 0x0

    const v30, -0x403d70a4    # -1.52f

    const v31, 0x3ea8f5c3    # 0.33f

    const v32, -0x3fea3d71    # -2.34f

    const v33, 0x3f451eb8    # 0.77f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, 0x410f3333    # 8.95f

    const v29, 0x41128f5c    # 9.16f

    const v30, 0x4101eb85    # 8.12f

    const v31, 0x4119eb85    # 9.62f

    const/high16 v32, 0x40e00000    # 7.0f

    const v33, 0x411d999a    # 9.85f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v7, 0x3fd33333    # 1.65f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/16 v28, 0x0

    const v29, 0x4030a3d7    # 2.76f

    const v30, 0x400f5c29    # 2.24f

    const/high16 v31, 0x40a00000    # 5.0f

    const/high16 v32, 0x40a00000    # 5.0f

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v10, -0x3ff0a3d7    # -2.24f

    const/high16 v7, -0x3f600000    # -5.0f

    move/from16 v41, v2

    .end local v2    # "$i$a$-materialIcon$default-MasksKt$Masks$1":I
    .local v41, "$i$a$-materialIcon$default-MasksKt$Masks$1":I
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2, v10, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v2, 0x411d999a    # 9.85f

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v28, 0x417e147b    # 15.88f

    const v29, 0x4119eb85    # 9.62f

    const v30, 0x4170cccd    # 15.05f

    const v31, 0x41128f5c    # 9.16f

    const v32, 0x416570a4    # 14.34f

    const v33, 0x410c7ae1    # 8.78f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/high16 v7, 0x41700000    # 15.0f

    const/high16 v10, 0x41340000    # 11.25f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v28, -0x40c00000    # -0.75f

    const v29, -0x41a8f5c3    # -0.21f

    const v30, -0x405eb852    # -1.26f

    const v31, -0x40fd70a4    # -0.51f

    const v32, -0x40251eb8    # -1.71f

    const v33, -0x40b851ec    # -0.78f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v28, 0x414d47ae    # 12.83f

    const v29, 0x41233333    # 10.2f

    const v30, 0x4147d70a    # 12.49f

    const/high16 v31, 0x41200000    # 10.0f

    const/high16 v32, 0x41400000    # 12.0f

    const/high16 v33, 0x41200000    # 10.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, -0x41051eb8    # -0.49f

    const/16 v29, 0x0

    const v30, -0x40a8f5c3    # -0.84f

    const v31, 0x3e4ccccd    # 0.2f

    const v32, -0x405851ec    # -1.31f

    const v33, 0x3ef5c28f    # 0.48f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v28, -0x411eb852    # -0.44f

    const v29, 0x3e851eb8    # 0.26f

    const v30, -0x408a3d71    # -0.96f

    const v31, 0x3f0f5c29    # 0.56f

    const v32, -0x4027ae14    # -1.69f

    const v33, 0x3f428f5c    # 0.76f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v7, 0x41233333    # 10.2f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v28, 0x3ef5c28f    # 0.48f

    const v29, -0x41d1eb85    # -0.17f

    const v30, 0x3f570a3d    # 0.84f

    const v31, -0x413d70a4    # -0.38f

    const v32, 0x3f970a3d    # 1.18f

    const v33, -0x40eb851f    # -0.58f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v28, 0x412b851f    # 10.72f

    const v29, 0x4114cccd    # 9.3f

    const v30, 0x4133ae14    # 11.23f

    const/high16 v31, 0x41100000    # 9.0f

    const/high16 v32, 0x41400000    # 12.0f

    const/high16 v33, 0x41100000    # 9.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v7, 0x3fa28f5c    # 1.27f

    const v2, 0x3e99999a    # 0.3f

    const v10, 0x3fe66666    # 1.8f

    move/from16 v42, v3

    .end local v3    # "fillAlpha$iv":F
    .local v42, "fillAlpha$iv":F
    const v3, 0x3f1eb852    # 0.62f

    invoke-virtual {v0, v7, v2, v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v28, 0x3eae147b    # 0.34f

    const v29, 0x3e4ccccd    # 0.2f

    const v30, 0x3f35c28f    # 0.71f

    const v31, 0x3ed70a3d    # 0.42f

    const v32, 0x3f99999a    # 1.2f

    const v33, 0x3f170a3d    # 0.59f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/high16 v2, 0x41340000    # 11.25f

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    nop

    .line 150
    .end local v0    # "$this$_get_Masks__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-MasksKt$Masks$1$1":I
    nop

    .line 151
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 149
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 152
    nop

    .line 153
    .end local v11    # "$i$f$PathData":I
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

    .line 161
    nop

    .line 162
    nop

    .line 147
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 163
    nop

    .line 164
    .end local v8    # "name$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$path-R_LF-3I":I
    .end local v15    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v19    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v21    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v23    # "strokeLineWidth$iv$iv":F
    .end local v24    # "strokeLineCap$iv$iv":I
    .end local v25    # "strokeLineJoin$iv$iv":I
    .end local v26    # "strokeLineMiter$iv$iv":F
    nop

    .line 54
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "strokeAlpha$iv":F
    .end local v42    # "fillAlpha$iv":F
    move-object v0, v1

    .line 165
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 166
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "fillAlpha$iv":F
    move/from16 v28, v2

    .line 165
    nop

    .line 167
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 165
    nop

    .line 168
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .restart local v5    # "pathFillType$iv":I
    move/from16 v25, v5

    .line 165
    const/4 v6, 0x0

    .line 174
    .restart local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 175
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v8

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 177
    nop

    .line 179
    nop

    .line 180
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 181
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 182
    nop

    .line 174
    const/4 v8, 0x0

    move-object/from16 v29, v8

    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    const/high16 v8, 0x3f800000    # 1.0f

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v8

    .local v31, "strokeLineWidth$iv$iv":F
    .local v32, "strokeLineCap$iv$iv":I
    move/from16 v34, v8

    .line 183
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 184
    const-string v8, ""

    .restart local v8    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v8

    .line 183
    const/4 v9, 0x0

    .line 185
    .restart local v9    # "$i$f$path-R_LF-3I":I
    nop

    .line 186
    const/4 v11, 0x0

    .line 187
    .restart local v11    # "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 188
    .local v15, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v24, v12

    .local v24, "$this$_get_Masks__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 55
    .local v35, "$i$a$-materialPath-YwgOQQI$default-MasksKt$Masks$1$2":I
    const/high16 v3, 0x419c0000    # 19.5f

    const/high16 v7, 0x40c00000    # 6.0f

    move-object/from16 v10, v24

    .end local v24    # "$this$_get_Masks__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v10, "$this$_get_Masks__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v10, v3, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v17, -0x405851ec    # -1.31f

    const/16 v18, 0x0

    const v19, -0x3fe851ec    # -2.37f

    const v20, 0x3f8147ae    # 1.01f

    const v21, -0x3fe147ae    # -2.48f

    const v22, 0x40133333    # 2.3f

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v17, 0x41723d71    # 15.14f

    const v18, 0x40f9999a    # 7.8f

    const v19, 0x4162e148    # 14.18f

    const/high16 v20, 0x40d00000    # 6.5f

    const/high16 v21, 0x41400000    # 12.0f

    const/high16 v22, 0x40d00000    # 6.5f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v17, -0x3ff3d70a    # -2.19f

    const/16 v18, 0x0

    const v19, -0x3fb70a3d    # -3.14f

    const v20, 0x3fa66666    # 1.3f

    const v21, -0x3f5f5c29    # -5.02f

    const v22, 0x3fe66666    # 1.8f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v17, 0x40dbd70a    # 6.87f

    const v18, 0x40e0a3d7    # 7.02f

    const v19, 0x40b9eb85    # 5.81f

    const/high16 v20, 0x40c00000    # 6.0f

    const/high16 v21, 0x40900000    # 4.5f

    const/high16 v22, 0x40c00000    # 6.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v17, 0x4047ae14    # 3.12f

    const/high16 v18, 0x40c00000    # 6.0f

    const/high16 v19, 0x40000000    # 2.0f

    const v20, 0x40e3d70a    # 7.12f

    const/high16 v21, 0x40000000    # 2.0f

    const/high16 v22, 0x41080000    # 8.5f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/16 v17, 0x0

    const v19, 0x40666666    # 3.6f

    const v20, 0x40f9eb85    # 7.81f

    const v21, 0x40d0a3d7    # 6.52f

    const v22, 0x40ff5c29    # 7.98f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v17, 0x41187ae1    # 9.53f

    const v18, 0x418cf5c3    # 17.62f

    const v19, 0x412b851f    # 10.72f

    const/high16 v20, 0x41900000    # 18.0f

    const/high16 v21, 0x41400000    # 12.0f

    const/high16 v22, 0x41900000    # 18.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v7, 0x405eb852    # 3.48f

    const v3, -0x407d70a4    # -1.02f

    move-object/from16 v43, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v43, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x401e147b    # 2.47f

    move-object/from16 v44, v1

    .end local v1    # "$this$_get_Masks__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v44, "$this$_get_Masks__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v1, -0x413d70a4    # -0.38f

    invoke-virtual {v10, v0, v1, v7, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v17, 0x41933333    # 18.4f

    const v18, 0x41867ae1    # 16.81f

    const/high16 v19, 0x41b00000    # 22.0f

    const/high16 v20, 0x41700000    # 15.0f

    const/high16 v21, 0x41b00000    # 22.0f

    const/high16 v22, 0x41100000    # 9.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/high16 v0, 0x41080000    # 8.5f

    invoke-virtual {v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const/high16 v17, 0x41b00000    # 22.0f

    const v18, 0x40e3d70a    # 7.12f

    const v19, 0x41a70a3d    # 20.88f

    const/high16 v20, 0x40c00000    # 6.0f

    const/high16 v21, 0x419c0000    # 19.5f

    const/high16 v22, 0x40c00000    # 6.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {v10, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const/16 v17, 0x0

    const v18, -0x40f33333    # -0.55f

    const v19, 0x3ee66666    # 0.45f

    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, -0x40800000    # -1.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v0, 0x3ee66666    # 0.45f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v10, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v10, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v18, 0x3fa3d70a    # 1.28f

    const v19, 0x3ec28f5c    # 0.38f

    const v20, 0x401e147b    # 2.47f

    const v21, 0x3f8147ae    # 1.01f

    const v22, 0x405eb852    # 3.48f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v17, 0x409fae14    # 4.99f

    const v18, 0x416451ec    # 14.27f

    const/high16 v19, 0x40600000    # 3.5f

    const v20, 0x414a6666    # 12.65f

    const/high16 v21, 0x40600000    # 3.5f

    const/high16 v22, 0x41100000    # 9.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const/high16 v1, 0x40e00000    # 7.0f

    const/high16 v3, 0x41380000    # 11.5f

    invoke-virtual {v10, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v7, 0x411d999a    # 9.85f

    invoke-virtual {v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v17, 0x3f8f5c29    # 1.12f

    const v18, -0x41947ae1    # -0.23f

    const v19, 0x3ff9999a    # 1.95f

    const v20, -0x40cf5c29    # -0.69f

    const v21, 0x402a3d71    # 2.66f

    const v22, -0x4075c28f    # -1.08f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v17, 0x4127ae14    # 10.48f

    const v18, 0x410547ae    # 8.33f

    const v19, 0x41311eb8    # 11.07f

    const/high16 v20, 0x41000000    # 8.0f

    const/high16 v21, 0x41400000    # 12.0f

    const/high16 v22, 0x41000000    # 8.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v17, 0x3f6e147b    # 0.93f

    const/16 v18, 0x0

    const v19, 0x3fc28f5c    # 1.52f

    const v20, 0x3ea8f5c3    # 0.33f

    const v21, 0x4015c28f    # 2.34f

    const v22, 0x3f47ae14    # 0.78f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v17, 0x3f35c28f    # 0.71f

    const v18, 0x3ec7ae14    # 0.39f

    const v19, 0x3fc51eb8    # 1.54f

    const v20, 0x3f570a3d    # 0.84f

    const v21, 0x402a3d71    # 2.66f

    const v22, 0x3f8a3d71    # 1.08f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v7, 0x3fd33333    # 1.65f

    invoke-virtual {v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const/16 v17, 0x0

    const v18, 0x4030a3d7    # 2.76f

    const v19, -0x3ff0a3d7    # -2.24f

    const/high16 v20, 0x40a00000    # 5.0f

    const/high16 v21, -0x3f600000    # -5.0f

    const/high16 v22, 0x40a00000    # 5.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v7, 0x416428f6    # 14.26f

    invoke-virtual {v10, v1, v7, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const/high16 v1, 0x41a40000    # 20.5f

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {v10, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v18, 0x4069999a    # 3.65f

    const v19, -0x404147ae    # -1.49f

    const v20, 0x40a8a3d7    # 5.27f

    const v21, -0x3fbf5c29    # -3.01f

    const v22, 0x40bf5c29    # 5.98f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v17, 0x3f23d70a    # 0.64f

    const v18, -0x407eb852    # -1.01f

    const v19, 0x3f8147ae    # 1.01f

    const v20, -0x3ff33333    # -2.2f

    const v21, 0x3f8147ae    # 1.01f

    const v22, -0x3fa147ae    # -3.48f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-virtual {v10, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const/16 v17, 0x0

    const v18, -0x40f33333    # -0.55f

    const v19, 0x3ee66666    # 0.45f

    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, -0x40800000    # -1.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v10, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const/high16 v0, 0x41100000    # 9.0f

    invoke-virtual {v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v0, 0x412b0a3d    # 10.69f

    const v1, 0x4127ae14    # 10.48f

    invoke-virtual {v10, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v17, -0x411eb852    # -0.44f

    const v18, 0x3e851eb8    # 0.26f

    const v19, -0x408a3d71    # -0.96f

    const v20, 0x3f0f5c29    # 0.56f

    const v21, -0x4027ae14    # -1.69f

    const v22, 0x3f428f5c    # 0.76f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v0, 0x41233333    # 10.2f

    invoke-virtual {v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v17, 0x3ef5c28f    # 0.48f

    const v18, -0x41d1eb85    # -0.17f

    const v19, 0x3f570a3d    # 0.84f

    const v20, -0x413d70a4    # -0.38f

    const v21, 0x3f970a3d    # 1.18f

    const v22, -0x40eb851f    # -0.58f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v17, 0x412b851f    # 10.72f

    const v18, 0x4114cccd    # 9.3f

    const v19, 0x4133ae14    # 11.23f

    const/high16 v20, 0x41100000    # 9.0f

    const/high16 v21, 0x41400000    # 12.0f

    const/high16 v22, 0x41100000    # 9.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v0, 0x3f1eb852    # 0.62f

    const v1, 0x3fe66666    # 1.8f

    const v3, 0x3e99999a    # 0.3f

    const v7, 0x3fa28f5c    # 1.27f

    invoke-virtual {v10, v7, v3, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v17, 0x3eae147b    # 0.34f

    const v18, 0x3e4ccccd    # 0.2f

    const v19, 0x3f35c28f    # 0.71f

    const v20, 0x3ed70a3d    # 0.42f

    const v21, 0x3f99999a    # 1.2f

    const v22, 0x3f170a3d    # 0.59f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v0, 0x3f851eb8    # 1.04f

    invoke-virtual {v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const/high16 v17, -0x40c00000    # -0.75f

    const v18, -0x41a8f5c3    # -0.21f

    const v19, -0x405eb852    # -1.26f

    const v20, -0x40fd70a4    # -0.51f

    const v21, -0x40251eb8    # -1.71f

    const v22, -0x40b851ec    # -0.78f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v17, 0x414d47ae    # 12.83f

    const v18, 0x41233333    # 10.2f

    const v19, 0x4147d70a    # 12.49f

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x41400000    # 12.0f

    const/high16 v22, 0x41200000    # 10.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v17, 0x413828f6    # 11.51f

    const/high16 v18, 0x41200000    # 10.0f

    const v19, 0x41328f5c    # 11.16f

    const v20, 0x41233333    # 10.2f

    const v21, 0x412b0a3d    # 10.69f

    const v22, 0x4127ae14    # 10.48f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    nop

    .line 188
    .end local v10    # "$this$_get_Masks__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-MasksKt$Masks$1$2":I
    nop

    .line 189
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 187
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 190
    nop

    .line 191
    .end local v11    # "$i$f$PathData":I
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

    .line 199
    nop

    .line 200
    nop

    .line 185
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 201
    nop

    .line 202
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

    .line 54
    .end local v2    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v43    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 125
    .end local v41    # "$i$a$-materialIcon$default-MasksKt$Masks$1":I
    .end local v44    # "$this$_get_Masks__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v40    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/MasksKt;->_masks:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 109
    sget-object v0, Landroidx/compose/material/icons/twotone/MasksKt;->_masks:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
