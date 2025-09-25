.class public final Landroidx/compose/material/icons/twotone/AttractionsKt;
.super Ljava/lang/Object;
.source "Attractions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttractions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Attractions.kt\nandroidx/compose/material/icons/twotone/AttractionsKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,115:1\n212#2,12:116\n233#2,18:129\n253#2:166\n233#2,18:167\n253#2:204\n174#3:128\n705#4,2:147\n717#4,2:149\n719#4,11:155\n705#4,2:185\n717#4,2:187\n719#4,11:193\n72#5,4:151\n72#5,4:189\n*S KotlinDebug\n*F\n+ 1 Attractions.kt\nandroidx/compose/material/icons/twotone/AttractionsKt\n*L\n29#1:116,12\n30#1:129,18\n30#1:166\n36#1:167,18\n36#1:204\n29#1:128\n30#1:147,2\n30#1:149,2\n30#1:155,11\n36#1:185,2\n36#1:187,2\n36#1:193,11\n30#1:151,4\n36#1:189,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_attractions",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Attractions",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getAttractions",
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
.field private static _attractions:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getAttractions(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 45
    .param p0, "$this$Attractions"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/AttractionsKt;->_attractions:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/AttractionsKt;->_attractions:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.Attractions"

    .line 116
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 118
    const/4 v13, 0x0

    .line 116
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 127
    .local v14, "$i$f$materialIcon":I
    nop

    .line 120
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 121
    nop

    .line 122
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 128
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 123
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 128
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 124
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 125
    const/high16 v6, 0x41c00000    # 24.0f

    .line 120
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 126
    nop

    .line 120
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 127
    nop

    .local v1, "$this$_get_Attractions__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-AttractionsKt$Attractions$1":I
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v20, v3

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v4, v1

    .line 129
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 132
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v17, v5

    .line 129
    const/4 v6, 0x0

    .line 138
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 139
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v7

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 141
    nop

    .line 143
    nop

    .line 144
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 145
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 146
    nop

    .line 138
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

    .line 147
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 148
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v7

    .line 147
    const/4 v8, 0x0

    .line 149
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 150
    const/4 v9, 0x0

    .line 151
    .local v9, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 152
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v16, v11

    .local v16, "$this$_get_Attractions__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v27, 0x0

    .line 31
    .local v27, "$i$a$-materialPath-YwgOQQI$default-AttractionsKt$Attractions$1$1":I
    const v10, 0x413fae14    # 11.98f

    move-object/from16 v43, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v43, "name$iv":Ljava/lang/String;
    const v0, 0x414051ec    # 12.02f

    move/from16 v44, v2

    move-object/from16 v2, v16

    .end local v16    # "$this$_get_Attractions__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v2, "$this$_get_Attractions__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v44, "$i$a$-materialIcon$default-AttractionsKt$Attractions$1":I
    invoke-virtual {v2, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const/4 v10, 0x0

    const/high16 v0, -0x40400000    # -1.5f

    invoke-virtual {v2, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const/high16 v36, 0x3fc00000    # 1.5f

    const/high16 v37, 0x3fc00000    # 1.5f

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x1

    const/high16 v41, 0x40400000    # 3.0f

    const/16 v42, 0x0

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v42}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v41, -0x3fc00000    # -3.0f

    invoke-virtual/range {v35 .. v42}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    nop

    .line 152
    .end local v2    # "$this$_get_Attractions__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v27    # "$i$a$-materialPath-YwgOQQI$default-AttractionsKt$Attractions$1$1":I
    nop

    .line 153
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 151
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 154
    nop

    .line 155
    .end local v9    # "$i$f$PathData":I
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

    .line 164
    nop

    .line 149
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 165
    nop

    .line 166
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

    .line 36
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "strokeAlpha$iv":F
    move-object v2, v1

    .line 167
    .local v2, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 168
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "fillAlpha$iv":F
    move/from16 v28, v3

    .line 167
    nop

    .line 169
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 167
    nop

    .line 170
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .restart local v5    # "pathFillType$iv":I
    move/from16 v25, v5

    .line 167
    const/4 v6, 0x0

    .line 176
    .restart local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 177
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 179
    nop

    .line 181
    nop

    .line 182
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v7

    .line 183
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 184
    nop

    .line 176
    const/4 v8, 0x0

    move-object/from16 v29, v8

    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v2

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v34

    .local v31, "strokeLineWidth$iv$iv":F
    move/from16 v32, v7

    .line 185
    .local v32, "strokeLineCap$iv$iv":I
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 186
    const-string v7, ""

    .restart local v7    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 185
    const/4 v8, 0x0

    .line 187
    .restart local v8    # "$i$f$path-R_LF-3I":I
    nop

    .line 188
    const/4 v9, 0x0

    .line 189
    .restart local v9    # "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v10, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 190
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_Attractions__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 37
    .local v22, "$i$a$-materialPath-YwgOQQI$default-AttractionsKt$Attractions$1$2":I
    const v15, 0x41a13333    # 20.15f

    const v0, 0x4166b852    # 14.42f

    invoke-virtual {v12, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v16, 0x3e6b851f    # 0.23f

    const v17, -0x40bae148    # -0.77f

    const v18, 0x3eb33333    # 0.35f

    const v19, -0x4035c28f    # -1.58f

    const v20, 0x3eb33333    # 0.35f

    const v21, -0x3fe51eb8    # -2.42f

    move-object/from16 v40, v1

    move v1, v15

    .end local v1    # "$this$_get_Attractions__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v40, "$this$_get_Attractions__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v15, -0x414ccccd    # -0.35f

    const v0, -0x3fe51eb8    # -2.42f

    const v1, -0x420a3d71    # -0.12f

    move-object/from16 v41, v2

    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v41, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v2, -0x402ccccd    # -1.65f

    invoke-virtual {v12, v1, v2, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v16, 0x3f47ae14    # 0.78f

    const v17, -0x40e66666    # -0.6f

    const v18, 0x3f828f5c    # 1.02f

    const v19, -0x40266666    # -1.7f

    const v20, 0x3f028f5c    # 0.51f

    const v21, -0x3fdae148    # -2.58f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v16, -0x40fd70a4    # -0.51f

    const v17, -0x409eb852    # -0.88f

    const v18, -0x4035c28f    # -1.58f

    const v19, -0x40628f5c    # -1.23f

    const v20, -0x3fe0a3d7    # -2.49f

    const v21, -0x40a66666    # -0.85f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v16, -0x4071eb85    # -1.11f

    const v17, -0x406a3d71    # -1.17f

    const v18, -0x3fdc28f6    # -2.56f

    const v19, -0x3ffe147b    # -2.03f

    const v20, -0x3f7a3d71    # -4.18f

    const v21, -0x3fe51eb8    # -2.42f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v16, 0x415d999a    # 13.85f

    const/high16 v17, 0x40300000    # 2.75f

    const v18, 0x415028f6    # 13.01f

    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x41400000    # 12.0f

    const/high16 v21, 0x40000000    # 2.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v0, -0x40133333    # -1.85f

    const v1, -0x40028f5c    # -1.98f

    const/high16 v2, 0x3f400000    # 0.75f

    const v15, 0x3fdd70a4    # 1.73f

    invoke-virtual {v12, v0, v2, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v16, 0x41063d71    # 8.39f

    const v17, 0x4083d70a    # 4.12f

    const v18, 0x40de6666    # 6.95f

    const v19, 0x409f5c29    # 4.98f

    const v20, 0x40ba8f5c    # 5.83f

    const v21, 0x40c4cccd    # 6.15f

    move v0, v15

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v16, 0x409d70a4    # 4.92f

    const v17, 0x40b8a3d7    # 5.77f

    const v18, 0x40766666    # 3.85f

    const v19, 0x40c3d70a    # 6.12f

    const v20, 0x4055c28f    # 3.34f

    const/high16 v21, 0x40e00000    # 7.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v16, 0x40351eb8    # 2.83f

    const v17, 0x40fc28f6    # 7.88f

    const v18, 0x40447ae1    # 3.07f

    const v19, 0x410fae14    # 8.98f

    const v20, 0x40766666    # 3.85f

    const v21, 0x411947ae    # 9.58f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v16, 0x4067ae14    # 3.62f

    const v17, 0x4125999a    # 10.35f

    const/high16 v18, 0x40600000    # 3.5f

    const v19, 0x41328f5c    # 11.16f

    const/high16 v20, 0x40600000    # 3.5f

    const/high16 v21, 0x41400000    # 12.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v1, 0x3eb33333    # 0.35f

    const v15, 0x401ae148    # 2.42f

    const v0, 0x3df5c28f    # 0.12f

    const v2, 0x3fd33333    # 1.65f

    invoke-virtual {v12, v0, v2, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v16, -0x40b851ec    # -0.78f

    const v17, 0x3f19999a    # 0.6f

    const v18, -0x407d70a4    # -1.02f

    const v19, 0x3fd9999a    # 1.7f

    const v20, -0x40fd70a4    # -0.51f

    const v21, 0x40251eb8    # 2.58f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v16, 0x3f028f5c    # 0.51f

    const v17, 0x3f6147ae    # 0.88f

    const v18, 0x3fca3d71    # 1.58f

    const v19, 0x3f9d70a4    # 1.23f

    const v20, 0x401f5c29    # 2.49f

    const v21, 0x3f59999a    # 0.85f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v16, 0x3ecccccd    # 0.4f

    const v17, 0x3ed70a3d    # 0.42f

    const v18, 0x3f547ae1    # 0.83f

    const v19, 0x3f4a3d71    # 0.79f

    const v20, 0x3fa66666    # 1.3f

    const v21, 0x3f8f5c29    # 1.12f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v0, 0x40b8f5c3    # 5.78f

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v0, 0x3ff0a3d7    # 1.88f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v2, 0x3f7ae148    # 0.98f

    const v15, -0x3ff3d70a    # -2.19f

    invoke-virtual {v12, v2, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v16, 0x3ee147ae    # 0.44f

    const v17, 0x3e428f5c    # 0.19f

    const v18, 0x3f666666    # 0.9f

    const v19, 0x3eae147b    # 0.34f

    const v20, 0x3fb0a3d7    # 1.38f

    const v21, 0x3eeb851f    # 0.46f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v16, 0x41226666    # 10.15f

    const/high16 v17, 0x41aa0000    # 21.25f

    const v18, 0x412fd70a    # 10.99f

    const/high16 v19, 0x41b00000    # 22.0f

    const/high16 v20, 0x41400000    # 12.0f

    const/high16 v21, 0x41b00000    # 22.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v2, 0x3ffd70a4    # 1.98f

    const v15, -0x40228f5c    # -1.73f

    const v0, 0x3feccccd    # 1.85f

    const/high16 v1, -0x40c00000    # -0.75f

    invoke-virtual {v12, v0, v1, v2, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v16, 0x3eeb851f    # 0.46f

    const v17, -0x421eb852    # -0.11f

    const v18, 0x3f68f5c3    # 0.91f

    const v19, -0x417ae148    # -0.26f

    const v20, 0x3fab851f    # 1.34f

    const v21, -0x411eb852    # -0.44f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v0, 0x41826666    # 16.3f

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v0, 0x3ff0a3d7    # 1.88f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v0, -0x40547ae1    # -1.34f

    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v16, 0x3ef5c28f    # 0.48f

    const v17, -0x4151eb85    # -0.34f

    const v18, 0x3f6e147b    # 0.93f

    const v19, -0x40c7ae14    # -0.72f

    const v21, -0x406ccccd    # -1.15f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v16, 0x3f68f5c3    # 0.91f

    const v17, 0x3ec28f5c    # 0.38f

    const v18, 0x3ffeb852    # 1.99f

    const v19, 0x3cf5c28f    # 0.03f

    const v20, 0x401f5c29    # 2.49f

    const v21, -0x40a66666    # -0.85f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v0, 0x41a770a4    # 20.93f

    const v1, 0x417051ec    # 15.02f

    const v2, 0x4166b852    # 14.42f

    const v15, 0x41a13333    # 20.15f

    invoke-virtual {v12, v0, v1, v15, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v0, 0x4158f5c3    # 13.56f

    const/high16 v1, 0x41960000    # 18.75f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v16, 0x41530a3d    # 13.19f

    const v17, 0x419251ec    # 18.29f

    const v18, 0x414a147b    # 12.63f

    const/high16 v19, 0x41900000    # 18.0f

    const/high16 v20, 0x41400000    # 12.0f

    const/high16 v21, 0x41900000    # 18.0f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v0, 0x3e947ae1    # 0.29f

    const v1, -0x40370a3d    # -1.57f

    const v2, -0x40666666    # -1.2f

    const/high16 v15, 0x3f400000    # 0.75f

    invoke-virtual {v12, v2, v0, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v16, -0x41333333    # -0.4f

    const v17, -0x4247ae14    # -0.09f

    const v18, -0x40b5c28f    # -0.79f

    const v19, -0x41a8f5c3    # -0.21f

    const v20, -0x406b851f    # -1.16f

    const v21, -0x41428f5c    # -0.37f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v0, 0x3fb70a3d    # 1.43f

    const v1, -0x3fb3d70a    # -3.19f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v16, 0x3ecccccd    # 0.4f

    const v17, 0x3e23d70a    # 0.16f

    const v18, 0x3f570a3d    # 0.84f

    const/high16 v19, 0x3e800000    # 0.25f

    const v20, 0x3fa66666    # 1.3f

    const/high16 v21, 0x3e800000    # 0.25f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v16, 0x3ee147ae    # 0.44f

    const/16 v17, 0x0

    const v18, 0x3f5eb852    # 0.87f

    const v19, -0x425c28f6    # -0.08f

    const v20, 0x3fa147ae    # 1.26f

    const v21, -0x41947ae1    # -0.23f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v0, 0x3fb5c28f    # 1.42f

    const v1, 0x404b851f    # 3.18f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v16, 0x41651eb8    # 14.32f

    const v17, 0x419451ec    # 18.54f

    const v18, 0x415f3333    # 13.95f

    const v19, 0x419547ae    # 18.66f

    const v20, 0x4158f5c3    # 13.56f

    const/high16 v21, 0x41960000    # 18.75f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v0, 0x4127ae14    # 10.48f

    const v1, 0x414051ec    # 12.02f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const/16 v16, 0x0

    const v17, -0x40ab851f    # -0.83f

    const v18, 0x3f2b851f    # 0.67f

    const/high16 v19, -0x40400000    # -1.5f

    const/high16 v20, 0x3fc00000    # 1.5f

    const/high16 v21, -0x40400000    # -1.5f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v16, 0x3f547ae1    # 0.83f

    const/16 v17, 0x0

    const/high16 v18, 0x3fc00000    # 1.5f

    const v19, 0x3f2b851f    # 0.67f

    const/high16 v21, 0x3fc00000    # 1.5f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v0, -0x40d47ae1    # -0.67f

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, -0x40400000    # -1.5f

    invoke-virtual {v12, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v16, 0x41326666    # 11.15f

    const v17, 0x415851ec    # 13.52f

    const v18, 0x4127ae14    # 10.48f

    const v19, 0x414d999a    # 12.85f

    const v20, 0x4127ae14    # 10.48f

    const v21, 0x414051ec    # 12.02f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v0, 0x4195ae14    # 18.71f

    const v1, 0x416028f6    # 14.01f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v16, -0x40e3d70a    # -0.61f

    const v17, 0x3d8f5c29    # 0.07f

    const v18, -0x4068f5c3    # -1.18f

    const v19, 0x3ed1eb85    # 0.41f

    const v20, -0x403d70a4    # -1.52f

    const v21, 0x3f7d70a4    # 0.99f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v16, -0x415c28f6    # -0.32f

    const v17, 0x3f0f5c29    # 0.56f

    const v18, -0x4151eb85    # -0.34f

    const v19, 0x3f99999a    # 1.2f

    const v20, -0x420a3d71    # -0.12f

    const/high16 v21, 0x3fe00000    # 1.75f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v16, -0x4170a3d7    # -0.28f

    const v17, 0x3e947ae1    # 0.29f

    const v18, -0x40eb851f    # -0.58f

    const v19, 0x3f0ccccd    # 0.55f

    const v20, -0x4099999a    # -0.9f

    const v21, 0x3f4a3d71    # 0.79f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v0, -0x3fa9999a    # -3.35f

    const/high16 v1, -0x40400000    # -1.5f

    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v16, 0x3efae148    # 0.49f

    const v17, -0x40e8f5c3    # -0.59f

    const v18, 0x3f47ae14    # 0.78f

    const v19, -0x40547ae1    # -1.34f

    const v20, 0x3f47ae14    # 0.78f

    const v21, -0x3ff5c28f    # -2.16f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const/16 v16, 0x0

    const v17, -0x400e147b    # -1.89f

    const v18, -0x4039999a    # -1.55f

    const v19, -0x3fa5c28f    # -3.41f

    const v20, -0x3fa28f5c    # -3.46f

    const v21, -0x3fa5c28f    # -3.41f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v16, -0x400b851f    # -1.91f

    const/16 v17, 0x0

    const v18, -0x3fa28f5c    # -3.46f

    const v19, 0x3fc3d70a    # 1.53f

    const v21, 0x405a3d71    # 3.41f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const/16 v16, 0x0

    const v17, 0x3f4ccccd    # 0.8f

    const v18, 0x3e8f5c29    # 0.28f

    const v19, 0x3fc51eb8    # 1.54f

    const/high16 v20, 0x3f400000    # 0.75f

    const v21, 0x400851ec    # 2.13f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v0, -0x403d70a4    # -1.52f

    const v1, 0x4058f5c3    # 3.39f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v16, -0x416147ae    # -0.31f

    const v17, -0x41947ae1    # -0.23f

    const v18, -0x40e66666    # -0.6f

    const v19, -0x410a3d71    # -0.48f

    const v20, -0x40a147ae    # -0.87f

    const v21, -0x40bd70a4    # -0.76f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v16, 0x40e4cccd    # 7.15f

    const v17, 0x4181d70a    # 16.23f

    const v18, 0x40e428f6    # 7.13f

    const v19, 0x41791eb8    # 15.57f

    const v20, 0x40d9999a    # 6.8f

    const/high16 v21, 0x41700000    # 15.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v16, -0x4151eb85    # -0.34f

    const v17, -0x40e8f5c3    # -0.59f

    const v18, -0x4091eb85    # -0.93f

    const v19, -0x408f5c29    # -0.94f

    const v20, -0x403851ec    # -1.56f

    const v21, -0x40828f5c    # -0.99f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v16, -0x419eb852    # -0.22f

    const v17, -0x40d1eb85    # -0.68f

    const v18, -0x41570a3d    # -0.33f

    const v19, -0x404ccccd    # -1.4f

    const v20, -0x41570a3d    # -0.33f

    const v21, -0x3ff66666    # -2.15f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const/16 v16, 0x0

    const v17, -0x40dc28f6    # -0.64f

    const v18, 0x3db851ec    # 0.09f

    const v19, -0x405eb852    # -1.26f

    const/high16 v20, 0x3e800000    # 0.25f

    const v21, -0x40133333    # -1.85f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v16, 0x3f28f5c3    # 0.66f

    const v17, -0x430a3d71    # -0.03f

    const v18, 0x3fa66666    # 1.3f

    const v19, -0x413d70a4    # -0.38f

    const v20, 0x3fd33333    # 1.65f

    const/high16 v21, -0x40800000    # -1.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v16, 0x3ebd70a4    # 0.37f

    const v17, -0x40deb852    # -0.63f

    const v18, 0x3eb33333    # 0.35f

    const v19, -0x404f5c29    # -1.38f

    const v20, 0x3c23d70a    # 0.01f

    const v21, -0x40028f5c    # -1.98f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v16, 0x40f7ae14    # 7.74f

    const v17, 0x40c1999a    # 6.05f

    const v18, 0x410ee148    # 8.93f

    const v19, 0x40aae148    # 5.34f

    const v20, 0x412451ec    # 10.27f

    const/high16 v21, 0x40a00000    # 5.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v16, 0x3eae147b    # 0.34f

    const v17, 0x3f170a3d    # 0.59f

    const v18, 0x3f7d70a4    # 0.99f

    const/high16 v19, 0x3f800000    # 1.0f

    const v20, 0x3fdd70a4    # 1.73f

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v0, -0x41333333    # -0.4f

    const/high16 v1, -0x40800000    # -1.0f

    const v2, 0x3fb1eb85    # 1.39f

    const v15, 0x3fdd70a4    # 1.73f

    invoke-virtual {v12, v2, v0, v15, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v16, 0x3fab851f    # 1.34f

    const v17, 0x3eae147b    # 0.34f

    const v18, 0x4021eb85    # 2.53f

    const v19, 0x3f88f5c3    # 1.07f

    const v20, 0x405c28f6    # 3.44f

    const v21, 0x40033333    # 2.05f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v16, 0x4186cccd    # 16.85f

    const v17, 0x40f47ae1    # 7.64f

    const v18, 0x4186b852    # 16.84f

    const v19, 0x4106147b    # 8.38f

    const v20, 0x4189999a    # 17.2f

    const/high16 v21, 0x41100000    # 9.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v16, 0x3eb33333    # 0.35f

    const v17, 0x3f19999a    # 0.6f

    const v18, 0x3f75c28f    # 0.96f

    const v19, 0x3f733333    # 0.95f

    const v20, 0x3fcccccd    # 1.6f

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v16, 0x3e23d70a    # 0.16f

    const v17, 0x3f170a3d    # 0.59f

    const/high16 v18, 0x3e800000    # 0.25f

    const v19, 0x3f9ae148    # 1.21f

    const/high16 v20, 0x3e800000    # 0.25f

    const v21, 0x3fee147b    # 1.86f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const v16, 0x41986666    # 19.05f

    const v17, 0x4149c28f    # 12.61f

    const v18, 0x419770a4    # 18.93f

    const v19, 0x415547ae    # 13.33f

    const v20, 0x4195ae14    # 18.71f

    const v21, 0x416028f6    # 14.01f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    nop

    .line 190
    .end local v12    # "$this$_get_Attractions__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-AttractionsKt$Attractions$1$2":I
    nop

    .line 191
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 189
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 192
    nop

    .line 193
    .end local v9    # "$i$f$PathData":I
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

    .line 202
    nop

    .line 187
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 203
    nop

    .line 204
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

    .line 36
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v41    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 127
    .end local v40    # "$this$_get_Attractions__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v44    # "$i$a$-materialIcon$default-AttractionsKt$Attractions$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v43    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/AttractionsKt;->_attractions:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 111
    sget-object v0, Landroidx/compose/material/icons/twotone/AttractionsKt;->_attractions:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
