.class public final Landroidx/compose/material/icons/twotone/UnpublishedKt;
.super Ljava/lang/Object;
.source "Unpublished.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnpublished.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Unpublished.kt\nandroidx/compose/material/icons/twotone/UnpublishedKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,105:1\n212#2,12:106\n233#2,18:119\n253#2:156\n233#2,18:157\n253#2:194\n174#3:118\n705#4,2:137\n717#4,2:139\n719#4,11:145\n705#4,2:175\n717#4,2:177\n719#4,11:183\n72#5,4:141\n72#5,4:179\n*S KotlinDebug\n*F\n+ 1 Unpublished.kt\nandroidx/compose/material/icons/twotone/UnpublishedKt\n*L\n29#1:106,12\n30#1:119,18\n30#1:156\n60#1:157,18\n60#1:194\n29#1:118\n30#1:137,2\n30#1:139,2\n30#1:145,11\n60#1:175,2\n60#1:177,2\n60#1:183,11\n30#1:141,4\n60#1:179,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_unpublished",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Unpublished",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getUnpublished",
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
.field private static _unpublished:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getUnpublished(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 42
    .param p0, "$this$Unpublished"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/UnpublishedKt;->_unpublished:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/UnpublishedKt;->_unpublished:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.Unpublished"

    .line 106
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 108
    const/4 v13, 0x0

    .line 106
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 117
    .local v14, "$i$f$materialIcon":I
    nop

    .line 110
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 111
    nop

    .line 112
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 118
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 113
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 118
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 114
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 115
    const/high16 v6, 0x41c00000    # 24.0f

    .line 110
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 116
    nop

    .line 110
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    nop

    .local v1, "$this$_get_Unpublished__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-UnpublishedKt$Unpublished$1":I
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v20, v3

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v4, v1

    .line 119
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 122
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v17, v5

    .line 119
    const/4 v6, 0x0

    .line 128
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 129
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v7

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 131
    nop

    .line 133
    nop

    .line 134
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 135
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 136
    nop

    .line 128
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

    .line 137
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 138
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v7

    .line 137
    const/4 v8, 0x0

    .line 139
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 140
    const/4 v9, 0x0

    .line 141
    .local v9, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 142
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v16, v11

    .local v16, "$this$_get_Unpublished__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-UnpublishedKt$Unpublished$1$1":I
    const v10, 0x415970a4    # 13.59f

    move-object/from16 v40, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v40, "name$iv":Ljava/lang/String;
    const v0, 0x412c28f6    # 10.76f

    move/from16 v41, v2

    move-object/from16 v2, v16

    .end local v16    # "$this$_get_Unpublished__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v2, "$this$_get_Unpublished__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v41, "$i$a$-materialIcon$default-UnpublishedKt$Unpublished$1":I
    invoke-virtual {v2, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v0, 0x4029999a    # 2.65f

    const v10, -0x3fd66666    # -2.65f

    invoke-virtual {v2, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v0, 0x3fb47ae1    # 1.41f

    invoke-virtual {v2, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v0, 0x4029999a    # 2.65f

    invoke-virtual {v2, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v0, 0x407851ec    # 3.88f

    invoke-virtual {v2, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v28, 0x419cb852    # 19.59f

    const v29, 0x416dc28f    # 14.86f

    const/high16 v30, 0x41a00000    # 20.0f

    const v31, 0x4157ae14    # 13.48f

    const/high16 v32, 0x41a00000    # 20.0f

    const/high16 v33, 0x41400000    # 12.0f

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/16 v28, 0x0

    const v29, -0x3f72e148    # -4.41f

    const v30, -0x3f9a3d71    # -3.59f

    const/high16 v31, -0x3f000000    # -8.0f

    const/high16 v32, -0x3f000000    # -8.0f

    const/high16 v33, -0x3f000000    # -8.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v28, -0x40428f5c    # -1.48f

    const/16 v29, 0x0

    const v30, -0x3fc8f5c3    # -2.86f

    const v31, 0x3ed1eb85    # 0.41f

    const v32, -0x3f7e147b    # -4.06f

    const v33, 0x3f8f5c29    # 1.12f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v0, 0x412c28f6    # 10.76f

    const v10, 0x415970a4    # 13.59f

    invoke-virtual {v2, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v0, 0x418d47ae    # 17.66f

    const v10, 0x41187ae1    # 9.53f

    invoke-virtual {v2, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v0, -0x404b851f    # -1.41f

    invoke-virtual {v2, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v0, -0x3fd66666    # -2.65f

    const v10, 0x4029999a    # 2.65f

    invoke-virtual {v2, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v0, 0x3fb47ae1    # 1.41f

    invoke-virtual {v2, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v0, 0x41187ae1    # 9.53f

    const v10, 0x418d47ae    # 17.66f

    invoke-virtual {v2, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v0, 0x41807ae1    # 16.06f

    const v10, 0x41970a3d    # 18.88f

    invoke-virtual {v2, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v0, -0x3f87ae14    # -3.88f

    invoke-virtual {v2, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v0, -0x40347ae1    # -1.59f

    const v10, 0x3fcb851f    # 1.59f

    invoke-virtual {v2, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v0, -0x3f7851ec    # -4.24f

    invoke-virtual {v2, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v0, -0x404b851f    # -1.41f

    const v10, 0x3fb47ae1    # 1.41f

    invoke-virtual {v2, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v0, 0x40351eb8    # 2.83f

    invoke-virtual {v2, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v10, 0x3e3851ec    # 0.18f

    const v0, -0x41c7ae14    # -0.18f

    invoke-virtual {v2, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v0, 0x40a3d70a    # 5.12f

    const v10, 0x40fe147b    # 7.94f

    invoke-virtual {v2, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v28, 0x408d1eb8    # 4.41f

    const v29, 0x41123d71    # 9.14f

    const/high16 v30, 0x40800000    # 4.0f

    const v31, 0x412851ec    # 10.52f

    const/high16 v32, 0x40800000    # 4.0f

    const/high16 v33, 0x41400000    # 12.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/16 v28, 0x0

    const v29, 0x408d1eb8    # 4.41f

    const v30, 0x4065c28f    # 3.59f

    const/high16 v31, 0x41000000    # 8.0f

    const/high16 v32, 0x41000000    # 8.0f

    const/high16 v33, 0x41000000    # 8.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v28, 0x4157ae14    # 13.48f

    const/high16 v29, 0x41a00000    # 20.0f

    const v30, 0x416dc28f    # 14.86f

    const v31, 0x419cb852    # 19.59f

    const v32, 0x41807ae1    # 16.06f

    const v33, 0x41970a3d    # 18.88f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    nop

    .line 142
    .end local v2    # "$this$_get_Unpublished__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-UnpublishedKt$Unpublished$1$1":I
    nop

    .line 143
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 141
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 144
    nop

    .line 145
    .end local v9    # "$i$f$PathData":I
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

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 139
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 155
    nop

    .line 156
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

    .line 60
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "strokeAlpha$iv":F
    move-object v2, v1

    .line 157
    .local v2, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 158
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "fillAlpha$iv":F
    move/from16 v28, v3

    .line 157
    nop

    .line 159
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 157
    nop

    .line 160
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .restart local v5    # "pathFillType$iv":I
    move/from16 v25, v5

    .line 157
    const/4 v6, 0x0

    .line 166
    .restart local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 167
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 169
    nop

    .line 171
    nop

    .line 172
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 173
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 174
    nop

    .line 166
    const/4 v7, 0x0

    move-object/from16 v29, v7

    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v2

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v34

    .line 175
    .local v31, "strokeLineWidth$iv$iv":F
    .local v32, "strokeLineCap$iv$iv":I
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 176
    const-string v7, ""

    .restart local v7    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 175
    const/4 v8, 0x0

    .line 177
    .restart local v8    # "$i$f$path-R_LF-3I":I
    nop

    .line 178
    const/4 v9, 0x0

    .line 179
    .restart local v9    # "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 180
    .restart local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v15, v11

    .local v15, "$this$_get_Unpublished__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 61
    .local v22, "$i$a$-materialPath-YwgOQQI$default-UnpublishedKt$Unpublished$1$2":I
    invoke-virtual {v15, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v0, 0x40cfae14    # 6.49f

    const v10, 0x406a3d71    # 3.66f

    invoke-virtual {v15, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v16, 0x41011eb8    # 8.07f

    const v17, 0x40270a3d    # 2.61f

    const v18, 0x411f5c29    # 9.96f

    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x41400000    # 12.0f

    const/high16 v21, 0x40000000    # 2.0f

    move-object v0, v15

    .end local v15    # "$this$_get_Unpublished__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Unpublished__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v16, 0x40b0a3d7    # 5.52f

    const/16 v17, 0x0

    const/high16 v18, 0x41200000    # 10.0f

    const v19, 0x408f5c29    # 4.48f

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x41200000    # 10.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const/16 v16, 0x0

    const v17, 0x40028f5c    # 2.04f

    const v18, -0x40e3d70a    # -0.61f

    const v19, 0x407b851f    # 3.93f

    const v20, -0x402b851f    # -1.66f

    const v21, 0x40b051ec    # 5.51f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v10, -0x40451eb8    # -1.46f

    const v15, -0x40451eb8    # -1.46f

    invoke-virtual {v0, v10, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v16, 0x419cb852    # 19.59f

    const v17, 0x416dc28f    # 14.86f

    const/high16 v18, 0x41a00000    # 20.0f

    const v19, 0x4157ae14    # 13.48f

    const/high16 v20, 0x41a00000    # 20.0f

    const/high16 v21, 0x41400000    # 12.0f

    move-object v15, v0

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/16 v16, 0x0

    const v17, -0x3f72e148    # -4.41f

    const v18, -0x3f9a3d71    # -3.59f

    const/high16 v19, -0x3f000000    # -8.0f

    const/high16 v20, -0x3f000000    # -8.0f

    const/high16 v21, -0x3f000000    # -8.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v16, 0x412851ec    # 10.52f

    const/high16 v17, 0x40800000    # 4.0f

    const v18, 0x41123d71    # 9.14f

    const v19, 0x408d1eb8    # 4.41f

    const v20, 0x40fe147b    # 7.94f

    const v21, 0x40a3d70a    # 5.12f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v10, 0x41187ae1    # 9.53f

    const v15, 0x418d47ae    # 17.66f

    invoke-virtual {v0, v15, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v10, -0x404b851f    # -1.41f

    invoke-virtual {v0, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v10, -0x3fd66666    # -2.65f

    const v15, 0x4029999a    # 2.65f

    invoke-virtual {v0, v10, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v10, 0x3fb47ae1    # 1.41f

    invoke-virtual {v0, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v10, 0x41187ae1    # 9.53f

    const v15, 0x418d47ae    # 17.66f

    invoke-virtual {v0, v15, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v10, 0x419e3d71    # 19.78f

    const v15, 0x41b4e148    # 22.61f

    invoke-virtual {v0, v10, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v10, -0x3feeb852    # -2.27f

    const v15, -0x3feeb852    # -2.27f

    invoke-virtual {v0, v10, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v16, 0x417ee148    # 15.93f

    const v17, 0x41ab1eb8    # 21.39f

    const v18, 0x4160a3d7    # 14.04f

    const/high16 v19, 0x41b00000    # 22.0f

    const/high16 v20, 0x41400000    # 12.0f

    const/high16 v21, 0x41b00000    # 22.0f

    move-object v15, v0

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v16, 0x40cf5c29    # 6.48f

    const/high16 v17, 0x41b00000    # 22.0f

    const/high16 v18, 0x40000000    # 2.0f

    const v19, 0x418c28f6    # 17.52f

    const/high16 v20, 0x40000000    # 2.0f

    const/high16 v21, 0x41400000    # 12.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const/16 v16, 0x0

    const v17, -0x3ffd70a4    # -2.04f

    const v18, 0x3f1c28f6    # 0.61f

    const v19, -0x3f847ae1    # -3.93f

    const v20, 0x3fd47ae1    # 1.66f

    const v21, -0x3f4fae14    # -5.51f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v10, 0x3fb1eb85    # 1.39f

    const v15, 0x40870a3d    # 4.22f

    invoke-virtual {v0, v10, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v10, -0x404b851f    # -1.41f

    const v15, 0x3fb47ae1    # 1.41f

    invoke-virtual {v0, v15, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v10, 0x41930a3d    # 18.38f

    const v15, 0x41930a3d    # 18.38f

    invoke-virtual {v0, v10, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v10, 0x419e3d71    # 19.78f

    const v15, 0x41b4e148    # 22.61f

    invoke-virtual {v0, v10, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v10, 0x41970a3d    # 18.88f

    const v15, 0x41807ae1    # 16.06f

    invoke-virtual {v0, v15, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v10, -0x3f87ae14    # -3.88f

    invoke-virtual {v0, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v10, 0x3fcb851f    # 1.59f

    const v15, -0x40347ae1    # -1.59f

    invoke-virtual {v0, v15, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v10, -0x3f7851ec    # -4.24f

    invoke-virtual {v0, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v10, -0x404b851f    # -1.41f

    const v15, 0x3fb47ae1    # 1.41f

    invoke-virtual {v0, v15, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v10, 0x40351eb8    # 2.83f

    invoke-virtual {v0, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v10, -0x41c7ae14    # -0.18f

    const v15, 0x3e3851ec    # 0.18f

    invoke-virtual {v0, v15, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v10, 0x40fe147b    # 7.94f

    const v15, 0x40a3d70a    # 5.12f

    invoke-virtual {v0, v15, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v16, 0x408d1eb8    # 4.41f

    const v17, 0x41123d71    # 9.14f

    const/high16 v18, 0x40800000    # 4.0f

    const v19, 0x412851ec    # 10.52f

    const/high16 v20, 0x40800000    # 4.0f

    const/high16 v21, 0x41400000    # 12.0f

    move-object v15, v0

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const/16 v16, 0x0

    const v17, 0x408d1eb8    # 4.41f

    const v18, 0x4065c28f    # 3.59f

    const/high16 v19, 0x41000000    # 8.0f

    const/high16 v20, 0x41000000    # 8.0f

    const/high16 v21, 0x41000000    # 8.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v16, 0x4157ae14    # 13.48f

    const/high16 v17, 0x41a00000    # 20.0f

    const v18, 0x416dc28f    # 14.86f

    const v19, 0x419cb852    # 19.59f

    const v20, 0x41807ae1    # 16.06f

    const v21, 0x41970a3d    # 18.88f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    nop

    .line 180
    .end local v0    # "$this$_get_Unpublished__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-UnpublishedKt$Unpublished$1$2":I
    nop

    .line 181
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 179
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 182
    nop

    .line 183
    .end local v9    # "$i$f$PathData":I
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

    .line 190
    nop

    .line 191
    nop

    .line 192
    nop

    .line 177
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 193
    nop

    .line 194
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

    .line 60
    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 117
    .end local v1    # "$this$_get_Unpublished__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v41    # "$i$a$-materialIcon$default-UnpublishedKt$Unpublished$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v40    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/UnpublishedKt;->_unpublished:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 101
    sget-object v0, Landroidx/compose/material/icons/twotone/UnpublishedKt;->_unpublished:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
