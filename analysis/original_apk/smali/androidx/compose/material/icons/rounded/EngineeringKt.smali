.class public final Landroidx/compose/material/icons/rounded/EngineeringKt;
.super Ljava/lang/Object;
.source "Engineering.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngineering.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Engineering.kt\nandroidx/compose/material/icons/rounded/EngineeringKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,146:1\n212#2,12:147\n233#2,18:160\n253#2:197\n233#2,18:198\n253#2:235\n233#2,18:236\n253#2:273\n233#2,18:274\n253#2:311\n233#2,18:312\n253#2:349\n174#3:159\n705#4,2:178\n717#4,2:180\n719#4,11:186\n705#4,2:216\n717#4,2:218\n719#4,11:224\n705#4,2:254\n717#4,2:256\n719#4,11:262\n705#4,2:292\n717#4,2:294\n719#4,11:300\n705#4,2:330\n717#4,2:332\n719#4,11:338\n72#5,4:182\n72#5,4:220\n72#5,4:258\n72#5,4:296\n72#5,4:334\n*S KotlinDebug\n*F\n+ 1 Engineering.kt\nandroidx/compose/material/icons/rounded/EngineeringKt\n*L\n29#1:147,12\n30#1:160,18\n30#1:197\n41#1:198,18\n41#1:235\n66#1:236,18\n66#1:273\n73#1:274,18\n73#1:311\n107#1:312,18\n107#1:349\n29#1:159\n30#1:178,2\n30#1:180,2\n30#1:186,11\n41#1:216,2\n41#1:218,2\n41#1:224,11\n66#1:254,2\n66#1:256,2\n66#1:262,11\n73#1:292,2\n73#1:294,2\n73#1:300,11\n107#1:330,2\n107#1:332,2\n107#1:338,11\n30#1:182,4\n41#1:220,4\n66#1:258,4\n73#1:296,4\n107#1:334,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_engineering",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Engineering",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getEngineering",
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
.field private static _engineering:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getEngineering(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46
    .param p0, "$this$Engineering"    # Landroidx/compose/material/icons/Icons$Rounded;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/EngineeringKt;->_engineering:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/rounded/EngineeringKt;->_engineering:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "Rounded.Engineering"

    .line 147
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 149
    const/4 v13, 0x0

    .line 147
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 158
    .local v14, "$i$f$materialIcon":I
    nop

    .line 151
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 152
    nop

    .line 153
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 159
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 154
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 159
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 155
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 156
    const/high16 v6, 0x41c00000    # 24.0f

    .line 151
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 157
    nop

    .line 151
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 158
    nop

    .local v1, "$this$_get_Engineering__u24lambda_u245":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-EngineeringKt$Engineering$1":I
    move-object v3, v1

    .line 160
    .local v3, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 161
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "fillAlpha$iv":F
    move/from16 v20, v4

    .line 160
    nop

    .line 162
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v22, v5

    .line 160
    nop

    .line 163
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v17, v6

    .line 160
    const/4 v7, 0x0

    .line 169
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 170
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v8

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 172
    nop

    .line 174
    nop

    .line 175
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 176
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 177
    nop

    .line 169
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

    .line 178
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 179
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 178
    const/4 v10, 0x0

    .line 180
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 181
    const/4 v12, 0x0

    .line 182
    .local v12, "$i$f$PathData":I
    new-instance v16, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v16, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v27, 0x0

    .line 183
    .local v27, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v35, v16

    .local v35, "$this$_get_Engineering__u24lambda_u245_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v36, 0x0

    .line 31
    .local v36, "$i$a$-materialPath-YwgOQQI$default-EngineeringKt$Engineering$1$1":I
    const/high16 v11, 0x41100000    # 9.0f

    const/high16 v8, 0x41700000    # 15.0f

    move-object/from16 v42, v0

    move-object/from16 v0, v35

    .end local v35    # "$this$_get_Engineering__u24lambda_u245_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Engineering__u24lambda_u245_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v42, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v11, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v29, -0x3fd51eb8    # -2.67f

    const/16 v30, 0x0

    const/high16 v31, -0x3f000000    # -8.0f

    const v32, 0x3fab851f    # 1.34f

    const/high16 v33, -0x3f000000    # -8.0f

    const/high16 v34, 0x40800000    # 4.0f

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/16 v29, 0x0

    const v30, 0x3f0ccccd    # 0.55f

    const v31, 0x3ee66666    # 0.45f

    const/high16 v32, 0x3f800000    # 1.0f

    const/high16 v33, 0x3f800000    # 1.0f

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v29, 0x3f0ccccd    # 0.55f

    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    const v32, -0x4119999a    # -0.45f

    const/high16 v34, -0x40800000    # -1.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const/high16 v29, 0x41880000    # 17.0f

    const v30, 0x4182b852    # 16.34f

    const v31, 0x413ab852    # 11.67f

    const/high16 v32, 0x41700000    # 15.0f

    const/high16 v33, 0x41100000    # 9.0f

    const/high16 v34, 0x41700000    # 15.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    nop

    .line 183
    .end local v0    # "$this$_get_Engineering__u24lambda_u245_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v36    # "$i$a$-materialPath-YwgOQQI$default-EngineeringKt$Engineering$1$1":I
    nop

    .line 184
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 182
    .end local v16    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v27    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 185
    nop

    .line 186
    .end local v12    # "$i$f$PathData":I
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

    .line 194
    nop

    .line 195
    nop

    .line 180
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 196
    nop

    .line 197
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

    .line 41
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    move-object v0, v1

    .line 198
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 199
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "fillAlpha$iv":F
    move/from16 v28, v3

    .line 198
    nop

    .line 200
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 198
    nop

    .line 201
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v25, v5

    .line 198
    const/4 v6, 0x0

    .line 207
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 208
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 210
    nop

    .line 212
    nop

    .line 213
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 214
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 215
    nop

    .line 207
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

    .line 216
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 217
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 216
    const/4 v8, 0x0

    .line 218
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 219
    const/4 v9, 0x0

    .line 220
    .local v9, "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v10, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 221
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v15, v10

    .local v15, "$this$_get_Engineering__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 42
    .local v22, "$i$a$-materialPath-YwgOQQI$default-EngineeringKt$Engineering$1$2":I
    move-object/from16 v43, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v43, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x4097ae14    # 4.74f

    invoke-virtual {v15, v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v11, 0x41087ae1    # 8.53f

    invoke-virtual {v15, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v16, 0x3e8a3d71    # 0.27f

    const/16 v17, 0x0

    const v18, 0x3efae148    # 0.49f

    const v19, -0x419eb852    # -0.22f

    const v20, 0x3efae148    # 0.49f

    const v21, -0x41051eb8    # -0.49f

    move-object v11, v15

    .end local v15    # "$this$_get_Engineering__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v11, "$this$_get_Engineering__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v15, 0x4107d70a    # 8.49f

    invoke-virtual {v11, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const/16 v16, 0x0

    const v17, -0x4175c28f    # -0.27f

    const v18, -0x419eb852    # -0.22f

    const v19, -0x41051eb8    # -0.49f

    const v20, -0x41051eb8    # -0.49f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const/high16 v15, 0x41500000    # 13.0f

    invoke-virtual {v11, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v17, -0x40428f5c    # -1.48f

    const v18, -0x40b0a3d7    # -0.81f

    const/high16 v19, -0x3fd00000    # -2.75f

    const/high16 v20, -0x40000000    # -2.0f

    const v21, -0x3fa33333    # -3.45f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/high16 v15, 0x40b00000    # 5.5f

    invoke-virtual {v11, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v16, 0x41300000    # 11.0f

    const v17, 0x40b8f5c3    # 5.78f

    const v18, 0x412c7ae1    # 10.78f

    const/high16 v19, 0x40c00000    # 6.0f

    const/high16 v20, 0x41280000    # 10.5f

    const/high16 v21, 0x40c00000    # 6.0f

    move v0, v15

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/high16 v15, 0x41200000    # 10.0f

    move/from16 v44, v2

    .end local v2    # "$i$a$-materialIcon$default-EngineeringKt$Engineering$1":I
    .local v44, "$i$a$-materialIcon$default-EngineeringKt$Engineering$1":I
    const v2, 0x40b8f5c3    # 5.78f

    invoke-virtual {v11, v15, v2, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v2, 0x40847ae1    # 4.14f

    invoke-virtual {v11, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v16, 0x411ae148    # 9.68f

    const v17, 0x4081eb85    # 4.06f

    const v18, 0x4115999a    # 9.35f

    const/high16 v19, 0x40800000    # 4.0f

    const/high16 v20, 0x41100000    # 9.0f

    const/high16 v21, 0x40800000    # 4.0f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v15, 0x4081eb85    # 4.06f

    const/high16 v0, 0x41000000    # 8.0f

    move/from16 v45, v3

    .end local v3    # "fillAlpha$iv":F
    .local v45, "fillAlpha$iv":F
    const v3, 0x41051eb8    # 8.32f

    invoke-virtual {v11, v3, v15, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/high16 v0, 0x40b00000    # 5.5f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/high16 v16, 0x41000000    # 8.0f

    const v17, 0x40b8f5c3    # 5.78f

    const v18, 0x40f8f5c3    # 7.78f

    const/high16 v19, 0x40c00000    # 6.0f

    const/high16 v20, 0x40f00000    # 7.5f

    const/high16 v21, 0x40c00000    # 6.0f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const/high16 v0, 0x40e00000    # 7.0f

    const v2, 0x40b8f5c3    # 5.78f

    const/high16 v3, 0x40b00000    # 5.5f

    invoke-virtual {v11, v0, v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v0, 0x4091999a    # 4.55f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v16, 0x40b9eb85    # 5.81f

    const/high16 v17, 0x40a80000    # 5.25f

    const/high16 v18, 0x40a00000    # 5.0f

    const v19, 0x40d0a3d7    # 6.52f

    const/high16 v20, 0x40a00000    # 5.0f

    const/high16 v21, 0x41000000    # 8.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v0, 0x4097ae14    # 4.74f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v16, 0x408f0a3d    # 4.47f

    const/high16 v17, 0x41000000    # 8.0f

    const/high16 v18, 0x40880000    # 4.25f

    const v19, 0x4103851f    # 8.22f

    const/high16 v20, 0x40880000    # 4.25f

    const v21, 0x4107d70a    # 8.49f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v0, 0x3cf5c28f    # 0.03f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/high16 v16, 0x40880000    # 4.25f

    const v17, 0x410c7ae1    # 8.78f

    const v18, 0x408f0a3d    # 4.47f

    const/high16 v19, 0x41100000    # 9.0f

    const v20, 0x4097ae14    # 4.74f

    const/high16 v21, 0x41100000    # 9.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    nop

    .line 221
    .end local v11    # "$this$_get_Engineering__u24lambda_u245_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-EngineeringKt$Engineering$1$2":I
    nop

    .line 222
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 220
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 223
    nop

    .line 224
    .end local v9    # "$i$f$PathData":I
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

    .line 232
    nop

    .line 233
    nop

    .line 218
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 234
    nop

    .line 235
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

    .line 66
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v43    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v45    # "fillAlpha$iv":F
    move-object v0, v1

    .line 236
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 237
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "fillAlpha$iv":F
    move/from16 v28, v2

    .line 236
    nop

    .line 238
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 236
    nop

    .line 239
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 236
    const/4 v5, 0x0

    .line 245
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 246
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 248
    nop

    .line 250
    nop

    .line 251
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 252
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 253
    nop

    .line 245
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

    .line 254
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 255
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 254
    const/4 v7, 0x0

    .line 256
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 257
    const/4 v8, 0x0

    .line 258
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 259
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Engineering__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 67
    .local v12, "$i$a$-materialPath-YwgOQQI$default-EngineeringKt$Engineering$1$3":I
    move-object/from16 v22, v0

    const/high16 v0, 0x41100000    # 9.0f

    const/high16 v15, 0x41500000    # 13.0f

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v22, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v16, 0x3fee147b    # 1.86f

    const/16 v17, 0x0

    const v18, 0x405a3d71    # 3.41f

    const v19, -0x405c28f6    # -1.28f

    const v20, 0x40770a3d    # 3.86f

    const/high16 v21, -0x3fc00000    # -3.0f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v0, 0x40a47ae1    # 5.14f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v16, 0x40b2e148    # 5.59f

    const v17, 0x413b851f    # 11.72f

    const v18, 0x40e47ae1    # 7.14f

    const/high16 v19, 0x41500000    # 13.0f

    const/high16 v20, 0x41100000    # 9.0f

    const/high16 v21, 0x41500000    # 13.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    nop

    .line 259
    .end local v11    # "$this$_get_Engineering__u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-EngineeringKt$Engineering$1$3":I
    nop

    .line 260
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 258
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 261
    nop

    .line 262
    .end local v8    # "$i$f$PathData":I
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

    .line 270
    nop

    .line 271
    nop

    .line 256
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 272
    nop

    .line 273
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

    .line 73
    .end local v2    # "fillAlpha$iv":F
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v0, v1

    .line 274
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 275
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "fillAlpha$iv":F
    move/from16 v28, v2

    .line 274
    nop

    .line 276
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 274
    nop

    .line 277
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .restart local v4    # "pathFillType$iv":I
    move/from16 v25, v4

    .line 274
    const/4 v5, 0x0

    .line 283
    .restart local v5    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 284
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 286
    nop

    .line 288
    nop

    .line 289
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 290
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 291
    nop

    .line 283
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

    .line 292
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 293
    const-string v6, ""

    .restart local v6    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 292
    const/4 v7, 0x0

    .line 294
    .restart local v7    # "$i$f$path-R_LF-3I":I
    nop

    .line 295
    const/4 v8, 0x0

    .line 296
    .restart local v8    # "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 297
    .restart local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Engineering__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 74
    .local v12, "$i$a$-materialPath-YwgOQQI$default-EngineeringKt$Engineering$1$4":I
    const v15, 0x41afd70a    # 21.98f

    move-object/from16 v22, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v22    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x40c75c29    # 6.23f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v0, -0x40ab851f    # -0.83f

    const v15, 0x3f6e147b    # 0.93f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const/high16 v0, -0x40c00000    # -0.75f

    move/from16 v43, v2

    .end local v2    # "fillAlpha$iv":F
    .local v43, "fillAlpha$iv":F
    const v2, -0x4059999a    # -1.3f

    invoke-virtual {v11, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v15, -0x4067ae14    # -1.19f

    const v2, 0x3ec7ae14    # 0.39f

    invoke-virtual {v11, v15, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v2, -0x41f0a3d7    # -0.14f

    const v17, -0x421eb852    # -0.11f

    const v18, -0x41666666    # -0.3f

    const v19, -0x41b33333    # -0.2f

    const v20, -0x410f5c29    # -0.47f

    const v21, -0x4175c28f    # -0.27f

    move-object v15, v11

    move/from16 v16, v2

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/high16 v2, 0x41a20000    # 20.25f

    const/high16 v15, 0x40400000    # 3.0f

    invoke-virtual {v11, v2, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const/high16 v2, -0x40400000    # -1.5f

    invoke-virtual {v11, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const/high16 v2, 0x41940000    # 18.5f

    const v15, 0x40870a3d    # 4.22f

    invoke-virtual {v11, v2, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v16, -0x41d1eb85    # -0.17f

    const v17, 0x3d8f5c29    # 0.07f

    const v18, -0x41570a3d    # -0.33f

    const v19, 0x3e23d70a    # 0.16f

    const v20, -0x410a3d71    # -0.48f

    const v21, 0x3e8a3d71    # 0.27f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v2, 0x4186b852    # 16.84f

    const v15, 0x40833333    # 4.1f

    invoke-virtual {v11, v2, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v2, 0x3fa66666    # 1.3f

    invoke-virtual {v11, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v0, 0x3f547ae1    # 0.83f

    const v15, 0x3f6e147b    # 0.93f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const/high16 v16, 0x41880000    # 17.0f

    const v17, 0x40cccccd    # 6.4f

    const/high16 v18, 0x41880000    # 17.0f

    const v19, 0x40d28f5c    # 6.58f

    const v20, 0x418828f6    # 17.02f

    const/high16 v21, 0x40d80000    # 6.75f

    move v0, v15

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v15, 0x4180b852    # 16.09f

    const v0, 0x40f33333    # 7.6f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {v11, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v2, 0x3f99999a    # 1.2f

    const v15, -0x413d70a4    # -0.38f

    invoke-virtual {v11, v2, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v16, 0x3e051eb8    # 0.13f

    const v17, 0x3dcccccd    # 0.1f

    const v18, 0x3e8f5c29    # 0.28f

    const v19, 0x3e3851ec    # 0.18f

    const v20, 0x3edc28f6    # 0.43f

    const/high16 v21, 0x3e800000    # 0.25f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const/high16 v2, 0x41960000    # 18.75f

    const/high16 v15, 0x41200000    # 10.0f

    invoke-virtual {v11, v2, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {v11, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v2, -0x4063d70a    # -1.22f

    const v0, 0x3e8a3d71    # 0.27f

    invoke-virtual {v11, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v16, 0x3e23d70a    # 0.16f

    const v17, -0x4270a3d7    # -0.07f

    const v18, 0x3e99999a    # 0.3f

    const v19, -0x41e66666    # -0.15f

    const v20, 0x3ee147ae    # 0.44f

    const/high16 v21, -0x41800000    # -0.25f

    move v2, v15

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v15, 0x3f9851ec    # 1.19f

    const v0, 0x3ec28f5c    # 0.38f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const/high16 v0, 0x3f400000    # 0.75f

    const v15, -0x4059999a    # -1.3f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v0, -0x4091eb85    # -0.93f

    const v15, -0x40a66666    # -0.85f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const/high16 v16, 0x41b00000    # 22.0f

    const v17, 0x40d23d71    # 6.57f

    const v18, 0x41afeb85    # 21.99f

    const v19, 0x40cccccd    # 6.4f

    const v20, 0x41afd70a    # 21.98f

    const v21, 0x40c75c29    # 6.23f

    move v0, v15

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const/high16 v15, 0x419c0000    # 19.5f

    const/high16 v2, 0x40f80000    # 7.75f

    invoke-virtual {v11, v15, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v16, -0x40cf5c29    # -0.69f

    const/16 v17, 0x0

    const/high16 v18, -0x40600000    # -1.25f

    const v19, -0x40f0a3d7    # -0.56f

    const/high16 v20, -0x40600000    # -1.25f

    const/high16 v21, -0x40600000    # -1.25f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const/high16 v15, -0x40600000    # -1.25f

    const/high16 v0, -0x40600000    # -1.25f

    const v2, 0x3f0f5c29    # 0.56f

    move/from16 v18, v3

    .end local v3    # "strokeAlpha$iv":F
    .local v18, "strokeAlpha$iv":F
    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-virtual {v11, v2, v15, v3, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v0, 0x3f0f5c29    # 0.56f

    invoke-virtual {v11, v3, v0, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v0, 0x41a1851f    # 20.19f

    const/high16 v2, 0x419c0000    # 19.5f

    const/high16 v3, 0x40f80000    # 7.75f

    invoke-virtual {v11, v0, v3, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    nop

    .line 297
    .end local v11    # "$this$_get_Engineering__u24lambda_u245_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-EngineeringKt$Engineering$1$4":I
    nop

    .line 298
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 296
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 299
    nop

    .line 300
    .end local v8    # "$i$f$PathData":I
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

    .line 308
    nop

    .line 309
    nop

    .line 294
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 310
    nop

    .line 311
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

    .line 107
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v18    # "strokeAlpha$iv":F
    .end local v22    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v43    # "fillAlpha$iv":F
    move-object v0, v1

    .line 312
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 313
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "fillAlpha$iv":F
    move/from16 v28, v2

    .line 312
    nop

    .line 314
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 312
    nop

    .line 315
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .restart local v4    # "pathFillType$iv":I
    move/from16 v25, v4

    .line 312
    const/4 v5, 0x0

    .line 321
    .restart local v5    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 322
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 324
    nop

    .line 326
    nop

    .line 327
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 328
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 329
    nop

    .line 321
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

    .line 330
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 331
    const-string v6, ""

    .restart local v6    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 330
    const/4 v7, 0x0

    .line 332
    .restart local v7    # "$i$f$path-R_LF-3I":I
    nop

    .line 333
    const/4 v8, 0x0

    .line 334
    .restart local v8    # "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 335
    .restart local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Engineering__u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 108
    .local v12, "$i$a$-materialPath-YwgOQQI$default-EngineeringKt$Engineering$1$5":I
    const v15, 0x419b3333    # 19.4f

    move-object/from16 v17, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v17, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x412ca3d7    # 10.79f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const v0, 0x3e8f5c29    # 0.28f

    const v15, -0x40a66666    # -0.85f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const v36, -0x42333333    # -0.1f

    const v37, -0x425c28f6    # -0.08f

    const v38, -0x41a8f5c3    # -0.21f

    const v39, -0x41f0a3d7    # -0.14f

    const v40, -0x41570a3d    # -0.33f

    const v41, -0x41bd70a4    # -0.19f

    move-object/from16 v35, v11

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v0, 0x419051ec    # 18.04f

    const/high16 v15, 0x41200000    # 10.0f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const v0, -0x40770a3d    # -1.07f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const v0, -0x41c7ae14    # -0.18f

    const v15, 0x3f5eb852    # 0.87f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const v36, -0x420a3d71    # -0.12f

    const v37, 0x3d4ccccd    # 0.05f

    const v38, -0x418a3d71    # -0.24f

    const v39, 0x3df5c28f    # 0.12f

    const v40, -0x4151eb85    # -0.34f

    const v41, 0x3e428f5c    # 0.19f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v0, -0x40a8f5c3    # -0.84f

    const v15, -0x4170a3d7    # -0.28f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    const v0, -0x40f5c28f    # -0.54f

    const v15, 0x3f6e147b    # 0.93f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const v0, 0x3f28f5c3    # 0.66f

    const v15, 0x3f170a3d    # 0.59f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    const v36, -0x43dc28f6    # -0.01f

    const v37, 0x3e051eb8    # 0.13f

    const v38, -0x43dc28f6    # -0.01f

    const/high16 v39, 0x3e800000    # 0.25f

    const/16 v40, 0x0

    const v41, 0x3ebd70a4    # 0.37f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v0, -0x40d70a3d    # -0.66f

    const v15, 0x3f1c28f6    # 0.61f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    const v0, 0x3f0a3d71    # 0.54f

    const v15, 0x3f6e147b    # 0.93f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    const v0, 0x3f5c28f6    # 0.86f

    const v15, -0x4175c28f    # -0.27f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    const v36, 0x3dcccccd    # 0.1f

    const v37, 0x3d8f5c29    # 0.07f

    const v38, 0x3e4ccccd    # 0.2f

    const v39, 0x3e051eb8    # 0.13f

    const v40, 0x3e9eb852    # 0.31f

    const v41, 0x3e3851ec    # 0.18f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    const v0, 0x4187ae14    # 16.96f

    const/high16 v15, 0x41700000    # 15.0f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    const v0, 0x3f88f5c3    # 1.07f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    const v0, 0x3e428f5c    # 0.19f

    const v15, -0x40a147ae    # -0.87f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    const v36, 0x3de147ae    # 0.11f

    const v37, -0x42b33333    # -0.05f

    const v38, 0x3e6147ae    # 0.22f

    const v39, -0x421eb852    # -0.11f

    const v40, 0x3ea3d70a    # 0.32f

    const v41, -0x41c7ae14    # -0.18f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 127
    const v0, 0x3f59999a    # 0.85f

    const v15, 0x3e8a3d71    # 0.27f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    const v0, 0x3f0a3d71    # 0.54f

    const v15, -0x4091eb85    # -0.93f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    const v0, -0x40d70a3d    # -0.66f

    const v15, -0x40e3d70a    # -0.61f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    const v36, 0x3c23d70a    # 0.01f

    const v37, -0x41fae148    # -0.13f

    const v38, 0x3c23d70a    # 0.01f

    const/high16 v39, -0x41800000    # -0.25f

    const/16 v40, 0x0

    const v41, -0x41428f5c    # -0.37f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    const v0, 0x3f28f5c3    # 0.66f

    const v15, -0x40e8f5c3    # -0.59f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    const v0, 0x419b3333    # 19.4f

    const v15, 0x412ca3d7    # 10.79f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 133
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    const/high16 v0, 0x418c0000    # 17.5f

    const v15, 0x41563d71    # 13.39f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    const v36, -0x41051eb8    # -0.49f

    const/16 v37, 0x0

    const v38, -0x409c28f6    # -0.89f

    const v39, -0x41333333    # -0.4f

    const v40, -0x409c28f6    # -0.89f

    const v41, -0x409c28f6    # -0.89f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    const/16 v36, 0x0

    const v37, -0x41051eb8    # -0.49f

    const v38, 0x3ecccccd    # 0.4f

    const v39, -0x409c28f6    # -0.89f

    const v40, 0x3f63d70a    # 0.89f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    const v0, 0x3ecccccd    # 0.4f

    const v15, 0x3f63d70a    # 0.89f

    invoke-virtual {v11, v15, v0, v15, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    const v36, 0x41931eb8    # 18.39f

    const v37, 0x414fd70a    # 12.99f

    const v38, 0x418feb85    # 17.99f

    const v39, 0x41563d71    # 13.39f

    const/high16 v40, 0x418c0000    # 17.5f

    const v41, 0x41563d71    # 13.39f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 139
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 140
    nop

    .line 335
    .end local v11    # "$this$_get_Engineering__u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-EngineeringKt$Engineering$1$5":I
    nop

    .line 336
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 334
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 337
    nop

    .line 338
    .end local v8    # "$i$f$PathData":I
    nop

    .line 339
    nop

    .line 340
    nop

    .line 341
    nop

    .line 342
    nop

    .line 343
    nop

    .line 344
    nop

    .line 345
    nop

    .line 346
    nop

    .line 347
    nop

    .line 332
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 348
    nop

    .line 349
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

    .line 107
    .end local v2    # "fillAlpha$iv":F
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v17    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 158
    .end local v1    # "$this$_get_Engineering__u24lambda_u245":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v44    # "$i$a$-materialIcon$default-EngineeringKt$Engineering$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v42    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/rounded/EngineeringKt;->_engineering:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 142
    sget-object v0, Landroidx/compose/material/icons/rounded/EngineeringKt;->_engineering:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
