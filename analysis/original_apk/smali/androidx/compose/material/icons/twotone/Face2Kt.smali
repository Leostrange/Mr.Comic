.class public final Landroidx/compose/material/icons/twotone/Face2Kt;
.super Ljava/lang/Object;
.source "Face2.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFace2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Face2.kt\nandroidx/compose/material/icons/twotone/Face2Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,162:1\n212#2,12:163\n233#2,18:176\n253#2:213\n233#2,18:214\n253#2:251\n233#2,18:252\n253#2:289\n233#2,18:290\n253#2:327\n233#2,18:328\n253#2:365\n233#2,18:366\n253#2:403\n233#2,18:404\n253#2:441\n233#2,18:442\n253#2:479\n233#2,18:480\n253#2:517\n174#3:175\n705#4,2:194\n717#4,2:196\n719#4,11:202\n705#4,2:232\n717#4,2:234\n719#4,11:240\n705#4,2:270\n717#4,2:272\n719#4,11:278\n705#4,2:308\n717#4,2:310\n719#4,11:316\n705#4,2:346\n717#4,2:348\n719#4,11:354\n705#4,2:384\n717#4,2:386\n719#4,11:392\n705#4,2:422\n717#4,2:424\n719#4,11:430\n705#4,2:460\n717#4,2:462\n719#4,11:468\n705#4,2:498\n717#4,2:500\n719#4,11:506\n72#5,4:198\n72#5,4:236\n72#5,4:274\n72#5,4:312\n72#5,4:350\n72#5,4:388\n72#5,4:426\n72#5,4:464\n72#5,4:502\n*S KotlinDebug\n*F\n+ 1 Face2.kt\nandroidx/compose/material/icons/twotone/Face2Kt\n*L\n29#1:163,12\n30#1:176,18\n30#1:213\n38#1:214,18\n38#1:251\n46#1:252,18\n46#1:289\n54#1:290,18\n54#1:327\n62#1:328,18\n62#1:365\n70#1:366,18\n70#1:403\n78#1:404,18\n78#1:441\n145#1:442,18\n145#1:479\n151#1:480,18\n151#1:517\n29#1:175\n30#1:194,2\n30#1:196,2\n30#1:202,11\n38#1:232,2\n38#1:234,2\n38#1:240,11\n46#1:270,2\n46#1:272,2\n46#1:278,11\n54#1:308,2\n54#1:310,2\n54#1:316,11\n62#1:346,2\n62#1:348,2\n62#1:354,11\n70#1:384,2\n70#1:386,2\n70#1:392,11\n78#1:422,2\n78#1:424,2\n78#1:430,11\n145#1:460,2\n145#1:462,2\n145#1:468,11\n151#1:498,2\n151#1:500,2\n151#1:506,11\n30#1:198,4\n38#1:236,4\n46#1:274,4\n54#1:312,4\n62#1:350,4\n70#1:388,4\n78#1:426,4\n145#1:464,4\n151#1:502,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_face2",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Face2",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getFace2",
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
.field private static _face2:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getFace2(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 51
    .param p0, "$this$Face2"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/Face2Kt;->_face2:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/Face2Kt;->_face2:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.Face2"

    .line 163
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 165
    const/4 v13, 0x0

    .line 163
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 174
    .local v14, "$i$f$materialIcon":I
    nop

    .line 167
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 168
    nop

    .line 169
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 175
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 170
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 175
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 171
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 172
    const/high16 v6, 0x41c00000    # 24.0f

    .line 167
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 173
    nop

    .line 167
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 174
    nop

    .local v1, "$this$_get_Face2__u24lambda_u249":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-Face2Kt$Face2$1":I
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v20, v3

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v4, v1

    .line 176
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 179
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v17, v5

    .line 176
    const/4 v6, 0x0

    .line 185
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 186
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v7

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 188
    nop

    .line 190
    nop

    .line 191
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 192
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 193
    nop

    .line 185
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

    .line 194
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 195
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v8

    .line 194
    const/4 v9, 0x0

    .line 196
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 197
    const/4 v11, 0x0

    .line 198
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 199
    .local v16, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v34, v12

    .local v34, "$this$_get_Face2__u24lambda_u249_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$1":I
    const v7, 0x40c0a3d7    # 6.02f

    const/high16 v10, 0x40a00000    # 5.0f

    move-object/from16 v40, v0

    move-object/from16 v0, v34

    .end local v34    # "$this$_get_Face2__u24lambda_u249_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Face2__u24lambda_u249_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v40, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, 0x40c051ec    # 6.01f

    const/high16 v29, 0x40a00000    # 5.0f

    const v30, 0x40c051ec    # 6.01f

    const/high16 v31, 0x40a00000    # 5.0f

    const/high16 v32, 0x40c00000    # 6.0f

    const/high16 v33, 0x40a00000    # 5.0f

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, 0x40728f5c    # 3.79f

    const/high16 v30, 0x40000000    # 2.0f

    const v31, 0x40d947ae    # 6.79f

    const/high16 v32, 0x40000000    # 2.0f

    const/high16 v33, 0x41100000    # 9.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/16 v28, 0x0

    const v29, 0x3f0ccccd    # 0.55f

    const v30, 0x3df5c28f    # 0.12f

    const v31, 0x3f88f5c3    # 1.07f

    const v32, 0x3ea3d70a    # 0.32f

    const v33, 0x3fc51eb8    # 1.54f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, 0x4038f5c3    # 2.89f

    const v29, 0x4104a3d7    # 8.29f

    const v30, 0x40870a3d    # 4.22f

    const v31, 0x40cb3333    # 6.35f

    const v32, 0x40c0a3d7    # 6.02f

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    nop

    .line 199
    .end local v0    # "$this$_get_Face2__u24lambda_u249_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$1":I
    nop

    .line 200
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 198
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
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
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 212
    nop

    .line 213
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

    .line 38
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "strokeAlpha$iv":F
    const v0, 0x3e99999a    # 0.3f

    .local v0, "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .local v30, "strokeAlpha$iv":F
    move-object v3, v1

    .line 214
    .local v3, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 217
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 214
    const/4 v5, 0x0

    .line 223
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 224
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 226
    nop

    .line 228
    nop

    .line 229
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 230
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 231
    nop

    .line 223
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

    .line 232
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 233
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 232
    const/4 v7, 0x0

    .line 234
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 235
    const/4 v8, 0x0

    .line 236
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 237
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v9

    .local v12, "$this$_get_Face2__u24lambda_u249_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 39
    .local v22, "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$2":I
    const v15, 0x4171999a    # 15.1f

    const/high16 v10, 0x40600000    # 3.5f

    invoke-virtual {v12, v15, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v16, 0x4165c28f    # 14.36f

    const v17, 0x4025c28f    # 2.59f

    const/high16 v18, 0x41540000    # 13.25f

    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x41400000    # 12.0f

    const/high16 v21, 0x40000000    # 2.0f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v15, 0x411a3d71    # 9.64f

    move/from16 v42, v0

    .end local v0    # "fillAlpha$iv":F
    .local v42, "fillAlpha$iv":F
    const v0, 0x4025c28f    # 2.59f

    move/from16 v43, v2

    .end local v2    # "$i$a$-materialIcon$default-Face2Kt$Face2$1":I
    .local v43, "$i$a$-materialIcon$default-Face2Kt$Face2$1":I
    const v2, 0x410e6666    # 8.9f

    invoke-virtual {v12, v15, v0, v2, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v16, 0x411e147b    # 9.88f

    const v17, 0x404b851f    # 3.18f

    const v18, 0x412eb852    # 10.92f

    const/high16 v19, 0x40400000    # 3.0f

    const/high16 v21, 0x40400000    # 3.0f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v0, 0x4161eb85    # 14.12f

    const v15, 0x404b851f    # 3.18f

    const v2, 0x4171999a    # 15.1f

    invoke-virtual {v12, v0, v15, v2, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    nop

    .line 237
    .end local v12    # "$this$_get_Face2__u24lambda_u249_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$2":I
    nop

    .line 238
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 236
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 239
    nop

    .line 240
    .end local v8    # "$i$f$PathData":I
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 245
    nop

    .line 246
    nop

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 234
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 250
    nop

    .line 251
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

    .line 46
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    .end local v42    # "fillAlpha$iv":F
    const v0, 0x3e99999a    # 0.3f

    .restart local v0    # "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .restart local v30    # "strokeAlpha$iv":F
    move-object v2, v1

    .line 252
    .local v2, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 255
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v3

    .local v3, "pathFillType$iv":I
    move/from16 v25, v3

    .line 252
    const/4 v4, 0x0

    .line 261
    .local v4, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 262
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v5

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 264
    nop

    .line 266
    nop

    .line 267
    sget-object v5, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 268
    sget-object v5, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 269
    nop

    .line 261
    const/4 v5, 0x0

    move-object/from16 v29, v5

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v2

    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v5

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v5

    .line 270
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 271
    const-string v5, ""

    .local v5, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v5

    .line 270
    const/4 v6, 0x0

    .line 272
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 273
    const/4 v7, 0x0

    .line 274
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 275
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v8

    .local v11, "$this$_get_Face2__u24lambda_u249_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 47
    .local v12, "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$3":I
    const v10, 0x40a9eb85    # 5.31f

    const/high16 v15, 0x41400000    # 12.0f

    invoke-virtual {v11, v15, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/16 v45, 0x0

    const v46, 0x400f5c29    # 2.24f

    const v47, 0x3fe8f5c3    # 1.82f

    const v48, 0x4081eb85    # 4.06f

    const v49, 0x4081eb85    # 4.06f

    const v50, 0x4081eb85    # 4.06f

    move-object/from16 v44, v11

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v45, 0x3f6e147b    # 0.93f

    const/16 v46, 0x0

    const v48, -0x415c28f6    # -0.32f

    const v49, 0x4021eb85    # 2.53f

    const v50, -0x409c28f6    # -0.89f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v45, 0x418947ae    # 17.16f

    const v46, 0x40cc7ae1    # 6.39f

    const/high16 v47, 0x416c0000    # 14.75f

    const v48, 0x40a051ec    # 5.01f

    const v49, 0x41407ae1    # 12.03f

    const/high16 v50, 0x40a00000    # 5.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v45, 0x414051ec    # 12.02f

    const v46, 0x40a3851f    # 5.11f

    const/high16 v47, 0x41400000    # 12.0f

    const v48, 0x40a6b852    # 5.21f

    const/high16 v49, 0x41400000    # 12.0f

    const v50, 0x40a9eb85    # 5.31f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    nop

    .line 275
    .end local v11    # "$this$_get_Face2__u24lambda_u249_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$3":I
    nop

    .line 276
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 274
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 277
    nop

    .line 278
    .end local v7    # "$i$f$PathData":I
    nop

    .line 279
    nop

    .line 280
    nop

    .line 281
    nop

    .line 282
    nop

    .line 283
    nop

    .line 284
    nop

    .line 285
    nop

    .line 286
    nop

    .line 287
    nop

    .line 272
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 288
    nop

    .line 289
    .end local v5    # "name$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 54
    .end local v0    # "fillAlpha$iv":F
    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "pathFillType$iv":I
    .end local v4    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    const v0, 0x3e99999a    # 0.3f

    .restart local v0    # "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .line 290
    .restart local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "strokeAlpha$iv":F
    nop

    .line 293
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v3

    .restart local v3    # "pathFillType$iv":I
    move/from16 v25, v3

    .line 290
    const/4 v4, 0x0

    .line 299
    .restart local v4    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 300
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v5

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 302
    nop

    .line 304
    nop

    .line 305
    sget-object v5, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 306
    sget-object v5, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 307
    nop

    .line 299
    const/4 v5, 0x0

    move-object/from16 v29, v5

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v5

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v5

    .line 308
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 309
    const-string v5, ""

    .restart local v5    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v5

    .line 308
    const/4 v6, 0x0

    .line 310
    .restart local v6    # "$i$f$path-R_LF-3I":I
    nop

    .line 311
    const/4 v7, 0x0

    .line 312
    .restart local v7    # "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 313
    .restart local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v10, v8

    .local v10, "$this$_get_Face2__u24lambda_u249_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 55
    .local v11, "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$4":I
    const/high16 v12, 0x40200000    # 2.5f

    const v15, 0x4180f5c3    # 16.12f

    invoke-virtual {v10, v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v45, 0x400c28f6    # 2.19f

    const v46, 0x418570a4    # 16.68f

    const/high16 v47, 0x40000000    # 2.0f

    const v48, 0x418a7ae1    # 17.31f

    const/high16 v49, 0x40000000    # 2.0f

    const/high16 v50, 0x41900000    # 18.0f

    move-object/from16 v44, v10

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const/16 v45, 0x0

    const v46, 0x400d70a4    # 2.21f

    const v47, 0x3fe51eb8    # 1.79f

    const/high16 v48, 0x40800000    # 4.0f

    const/high16 v49, 0x40800000    # 4.0f

    const/high16 v50, 0x40800000    # 4.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v45, 0x3ee147ae    # 0.44f

    const/16 v46, 0x0

    const v47, 0x3f59999a    # 0.85f

    const v48, -0x4270a3d7    # -0.07f

    const/high16 v49, 0x3fa00000    # 1.25f

    const v50, -0x41b33333    # -0.2f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v45, 0x40a0a3d7    # 5.02f

    const v46, 0x41a4b852    # 20.59f

    const v47, 0x4053d70a    # 3.31f

    const v48, 0x41947ae1    # 18.56f

    const/high16 v49, 0x40200000    # 2.5f

    const v50, 0x4180f5c3    # 16.12f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    nop

    .line 313
    .end local v10    # "$this$_get_Face2__u24lambda_u249_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$4":I
    nop

    .line 314
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 312
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 315
    nop

    .line 316
    .end local v7    # "$i$f$PathData":I
    nop

    .line 317
    nop

    .line 318
    nop

    .line 319
    nop

    .line 320
    nop

    .line 321
    nop

    .line 322
    nop

    .line 323
    nop

    .line 324
    nop

    .line 325
    nop

    .line 310
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 326
    nop

    .line 327
    .end local v5    # "name$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 62
    .end local v0    # "fillAlpha$iv":F
    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "pathFillType$iv":I
    .end local v4    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    const v0, 0x3e99999a    # 0.3f

    .restart local v0    # "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .line 328
    .restart local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "strokeAlpha$iv":F
    nop

    .line 331
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v3

    .restart local v3    # "pathFillType$iv":I
    move/from16 v25, v3

    .line 328
    const/4 v4, 0x0

    .line 337
    .restart local v4    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 338
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v5

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 340
    nop

    .line 342
    nop

    .line 343
    sget-object v5, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 344
    sget-object v5, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 345
    nop

    .line 337
    const/4 v5, 0x0

    move-object/from16 v29, v5

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v5

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v5

    .line 346
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 347
    const-string v5, ""

    .restart local v5    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v5

    .line 346
    const/4 v6, 0x0

    .line 348
    .restart local v6    # "$i$f$path-R_LF-3I":I
    nop

    .line 349
    const/4 v7, 0x0

    .line 350
    .restart local v7    # "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 351
    .restart local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v10, v8

    .local v10, "$this$_get_Face2__u24lambda_u249_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 63
    .local v11, "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$5":I
    const v12, 0x41ad70a4    # 21.68f

    const v15, 0x4128a3d7    # 10.54f

    invoke-virtual {v10, v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v45, 0x41af0a3d    # 21.88f

    const v46, 0x41211eb8    # 10.07f

    const/high16 v47, 0x41b00000    # 22.0f

    const v48, 0x4118cccd    # 9.55f

    const/high16 v49, 0x41b00000    # 22.0f

    const/high16 v50, 0x41100000    # 9.0f

    move-object/from16 v44, v10

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const/16 v45, 0x0

    const v46, -0x3ff28f5c    # -2.21f

    const v47, -0x401ae148    # -1.79f

    const/high16 v48, -0x3f800000    # -4.0f

    const/high16 v49, -0x3f800000    # -4.0f

    const/high16 v50, -0x3f800000    # -4.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v45, -0x43dc28f6    # -0.01f

    const/16 v46, 0x0

    const v47, -0x43dc28f6    # -0.01f

    const/16 v48, 0x0

    const v49, -0x435c28f6    # -0.02f

    const/16 v50, 0x0

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v45, 0x419e3d71    # 19.78f

    const v46, 0x40cb3333    # 6.35f

    const v47, 0x41a8e148    # 21.11f

    const v48, 0x4104a3d7    # 8.29f

    const v49, 0x41ad70a4    # 21.68f

    const v50, 0x4128a3d7    # 10.54f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    nop

    .line 351
    .end local v10    # "$this$_get_Face2__u24lambda_u249_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$5":I
    nop

    .line 352
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 350
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 353
    nop

    .line 354
    .end local v7    # "$i$f$PathData":I
    nop

    .line 355
    nop

    .line 356
    nop

    .line 357
    nop

    .line 358
    nop

    .line 359
    nop

    .line 360
    nop

    .line 361
    nop

    .line 362
    nop

    .line 363
    nop

    .line 348
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 364
    nop

    .line 365
    .end local v5    # "name$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 70
    .end local v0    # "fillAlpha$iv":F
    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "pathFillType$iv":I
    .end local v4    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    const v0, 0x3e99999a    # 0.3f

    .restart local v0    # "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .line 366
    .restart local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "strokeAlpha$iv":F
    nop

    .line 369
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v3

    .restart local v3    # "pathFillType$iv":I
    move/from16 v25, v3

    .line 366
    const/4 v4, 0x0

    .line 375
    .restart local v4    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 376
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v5

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 378
    nop

    .line 380
    nop

    .line 381
    sget-object v5, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 382
    sget-object v5, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 383
    nop

    .line 375
    const/4 v5, 0x0

    move-object/from16 v29, v5

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v5

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v5

    .line 384
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 385
    const-string v5, ""

    .restart local v5    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v5

    .line 384
    const/4 v6, 0x0

    .line 386
    .restart local v6    # "$i$f$path-R_LF-3I":I
    nop

    .line 387
    const/4 v7, 0x0

    .line 388
    .restart local v7    # "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 389
    .restart local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v10, v8

    .local v10, "$this$_get_Face2__u24lambda_u249_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 71
    .local v11, "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$6":I
    const/high16 v12, 0x41860000    # 16.75f

    const v15, 0x41ae6666    # 21.8f

    invoke-virtual {v10, v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v45, 0x41893333    # 17.15f

    const v46, 0x41af70a4    # 21.93f

    const v47, 0x418c7ae1    # 17.56f

    const/high16 v48, 0x41b00000    # 22.0f

    const/high16 v49, 0x41900000    # 18.0f

    const/high16 v50, 0x41b00000    # 22.0f

    move-object/from16 v44, v10

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v45, 0x400d70a4    # 2.21f

    const/16 v46, 0x0

    const/high16 v47, 0x40800000    # 4.0f

    const v48, -0x401ae148    # -1.79f

    const/high16 v49, 0x40800000    # 4.0f

    const/high16 v50, -0x3f800000    # -4.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const/16 v45, 0x0

    const v46, -0x40cf5c29    # -0.69f

    const v47, -0x41bd70a4    # -0.19f

    const v48, -0x40570a3d    # -1.32f

    const/high16 v49, -0x41000000    # -0.5f

    const v50, -0x400f5c29    # -1.88f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v45, 0x41a5851f    # 20.69f

    const v46, 0x41947ae1    # 18.56f

    const v47, 0x4197d70a    # 18.98f

    const v48, 0x41a4b852    # 20.59f

    const/high16 v49, 0x41860000    # 16.75f

    const v50, 0x41ae6666    # 21.8f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    nop

    .line 389
    .end local v10    # "$this$_get_Face2__u24lambda_u249_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$6":I
    nop

    .line 390
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 388
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 391
    nop

    .line 392
    .end local v7    # "$i$f$PathData":I
    nop

    .line 393
    nop

    .line 394
    nop

    .line 395
    nop

    .line 396
    nop

    .line 397
    nop

    .line 398
    nop

    .line 399
    nop

    .line 400
    nop

    .line 401
    nop

    .line 386
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 402
    nop

    .line 403
    .end local v5    # "name$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 78
    .end local v0    # "fillAlpha$iv":F
    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "pathFillType$iv":I
    .end local v4    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    move-object v0, v1

    .line 404
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 405
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "fillAlpha$iv":F
    move/from16 v28, v2

    .line 404
    nop

    .line 406
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 404
    nop

    .line 407
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 404
    const/4 v5, 0x0

    .line 413
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 414
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 416
    nop

    .line 418
    nop

    .line 419
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 420
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 421
    nop

    .line 413
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

    .line 422
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 423
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 422
    const/4 v7, 0x0

    .line 424
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 425
    const/4 v8, 0x0

    .line 426
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 427
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Face2__u24lambda_u249_u24lambda_u246":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 79
    .local v12, "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$7":I
    const v15, 0x41afc28f    # 21.97f

    move-object/from16 v20, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v20, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x415851ec    # 13.52f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const/16 v45, 0x0

    const v46, -0x43dc28f6    # -0.01f

    const/16 v47, 0x0

    const v48, -0x435c28f6    # -0.02f

    const/16 v49, 0x0

    const v50, -0x42dc28f6    # -0.04f

    move-object/from16 v44, v11

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v45, 0x41b9ae14    # 23.21f

    const v46, 0x4146147b    # 12.38f

    const/high16 v47, 0x41c00000    # 24.0f

    const v48, 0x412c7ae1    # 10.78f

    const/high16 v49, 0x41c00000    # 24.0f

    const/high16 v50, 0x41100000    # 9.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const/16 v45, 0x0

    const v46, -0x3fac28f6    # -3.31f

    const v47, -0x3fd3d70a    # -2.69f

    const/high16 v48, -0x3f400000    # -6.0f

    const/high16 v49, -0x3f400000    # -6.0f

    const/high16 v50, -0x3f400000    # -6.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v45, -0x417ae148    # -0.26f

    const/16 v46, 0x0

    const v47, -0x40fae148    # -0.52f

    const v48, 0x3ca3d70a    # 0.02f

    const v49, -0x40b851ec    # -0.78f

    const v50, 0x3d75c28f    # 0.06f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v45, 0x4181851f    # 16.19f

    const v46, 0x3f9d70a4    # 1.23f

    const v47, 0x4163d70a    # 14.24f

    const/16 v48, 0x0

    const/high16 v49, 0x41400000    # 12.0f

    const/16 v50, 0x0

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v0, 0x40d8f5c3    # 6.78f

    const v15, 0x4043d70a    # 3.06f

    move/from16 v21, v2

    .end local v2    # "fillAlpha$iv":F
    .local v21, "fillAlpha$iv":F
    const v2, 0x40f9eb85    # 7.81f

    move/from16 v22, v3

    .end local v3    # "strokeAlpha$iv":F
    .local v22, "strokeAlpha$iv":F
    const v3, 0x3f9d70a4    # 1.23f

    invoke-virtual {v11, v2, v3, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v45, 0x40d0a3d7    # 6.52f

    const v46, 0x404147ae    # 3.02f

    const v47, 0x40c851ec    # 6.26f

    const/high16 v48, 0x40400000    # 3.0f

    const/high16 v49, 0x40c00000    # 6.0f

    const/high16 v50, 0x40400000    # 3.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v45, 0x402c28f6    # 2.69f

    const/high16 v46, 0x40400000    # 3.0f

    const/16 v47, 0x0

    const v48, 0x40b6147b    # 5.69f

    const/16 v49, 0x0

    const/high16 v50, 0x41100000    # 9.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const/16 v45, 0x0

    const v46, 0x3fe3d70a    # 1.78f

    const v47, 0x3f4a3d71    # 0.79f

    const v48, 0x405851ec    # 3.38f

    const v49, 0x400147ae    # 2.02f

    const v50, 0x408f5c29    # 4.48f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v46, 0x3c23d70a    # 0.01f

    const/16 v47, 0x0

    const v48, 0x3ca3d70a    # 0.02f

    const/16 v49, 0x0

    const v50, 0x3d23d70a    # 0.04f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v45, 0x3f4a3d71    # 0.79f

    const v46, 0x4169eb85    # 14.62f

    const v48, 0x4181c28f    # 16.22f

    const/high16 v50, 0x41900000    # 18.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const/16 v45, 0x0

    const v46, 0x4053d70a    # 3.31f

    const v47, 0x402c28f6    # 2.69f

    const/high16 v48, 0x40c00000    # 6.0f

    const/high16 v49, 0x40c00000    # 6.0f

    const/high16 v50, 0x40c00000    # 6.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v45, 0x3fb1eb85    # 1.39f

    const/16 v46, 0x0

    const v47, 0x402ae148    # 2.67f

    const v48, -0x410a3d71    # -0.48f

    const v49, 0x406c28f6    # 3.69f

    const v50, -0x405c28f6    # -1.28f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v45, 0x4126e148    # 10.43f

    const v46, 0x41b73333    # 22.9f

    const v47, 0x41333333    # 11.2f

    const/high16 v48, 0x41b80000    # 23.0f

    const/high16 v49, 0x41400000    # 12.0f

    const/high16 v50, 0x41b80000    # 23.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v0, 0x4013d70a    # 2.31f

    const v2, -0x4170a3d7    # -0.28f

    const v3, 0x3fc8f5c3    # 1.57f

    const v15, -0x42333333    # -0.1f

    invoke-virtual {v11, v3, v15, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v45, 0x417547ae    # 15.33f

    const v46, 0x41bc28f6    # 23.52f

    const v47, 0x4184e148    # 16.61f

    const/high16 v48, 0x41c00000    # 24.0f

    const/high16 v49, 0x41900000    # 18.0f

    const/high16 v50, 0x41c00000    # 24.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v45, 0x4053d70a    # 3.31f

    const/16 v46, 0x0

    const/high16 v47, 0x40c00000    # 6.0f

    const v48, -0x3fd3d70a    # -2.69f

    const/high16 v49, 0x40c00000    # 6.0f

    const/high16 v50, -0x3f400000    # -6.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const/high16 v45, 0x41c00000    # 24.0f

    const v46, 0x4181c28f    # 16.22f

    const v47, 0x41b9ae14    # 23.21f

    const v48, 0x4169eb85    # 14.62f

    const v49, 0x41afc28f    # 21.97f

    const v50, 0x415851ec    # 13.52f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const/high16 v0, 0x41900000    # 18.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v11, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v45, 0x400d70a4    # 2.21f

    const/16 v46, 0x0

    const/high16 v47, 0x40800000    # 4.0f

    const v48, 0x3fe51eb8    # 1.79f

    const/high16 v49, 0x40800000    # 4.0f

    const/high16 v50, 0x40800000    # 4.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const/16 v45, 0x0

    const v46, 0x3f0ccccd    # 0.55f

    const v47, -0x420a3d71    # -0.12f

    const v48, 0x3f88f5c3    # 1.07f

    const v49, -0x415c28f6    # -0.32f

    const v50, 0x3fc51eb8    # 1.54f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v45, -0x40ee147b    # -0.57f

    const/high16 v46, -0x3ff00000    # -2.25f

    const v47, -0x400ccccd    # -1.9f

    const v48, -0x3f79eb85    # -4.19f

    const v49, -0x3f933333    # -3.7f

    const v50, -0x3f4eb852    # -5.54f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v45, 0x418feb85    # 17.99f

    const/high16 v46, 0x40a00000    # 5.0f

    const v47, 0x418feb85    # 17.99f

    const/high16 v48, 0x40a00000    # 5.0f

    const/high16 v49, 0x41900000    # 18.0f

    const/high16 v50, 0x40a00000    # 5.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v2, 0x4194cccd    # 18.6f

    const v3, 0x4107ae14    # 8.48f

    invoke-virtual {v11, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v45, -0x40ca3d71    # -0.71f

    const v46, 0x3f11eb85    # 0.57f

    const v47, -0x40333333    # -1.6f

    const v48, 0x3f63d70a    # 0.89f

    const v49, -0x3fde147b    # -2.53f

    const v50, 0x3f63d70a    # 0.89f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const v45, 0x415d1eb8    # 13.82f

    const v46, 0x4116147b    # 9.38f

    const/high16 v47, 0x41400000    # 12.0f

    const v48, 0x40f1999a    # 7.55f

    const/high16 v49, 0x41400000    # 12.0f

    const v50, 0x40a9eb85    # 5.31f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const/16 v45, 0x0

    const v46, -0x42333333    # -0.1f

    const v47, 0x3ca3d70a    # 0.02f

    const v48, -0x41a8f5c3    # -0.21f

    const v49, 0x3cf5c28f    # 0.03f

    const v50, -0x416147ae    # -0.31f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const/high16 v45, 0x416c0000    # 14.75f

    const v46, 0x40a051ec    # 5.01f

    const v47, 0x418947ae    # 17.16f

    const v48, 0x40cc7ae1    # 6.39f

    const v49, 0x4194cccd    # 18.6f

    const v50, 0x4107ae14    # 8.48f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v11, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const/high16 v45, 0x3fa00000    # 1.25f

    const/16 v46, 0x0

    const v47, 0x40170a3d    # 2.36f

    const v48, 0x3f170a3d    # 0.59f

    const v49, 0x40466666    # 3.1f

    const/high16 v50, 0x3fc00000    # 1.5f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const v45, 0x4161eb85    # 14.12f

    const v46, 0x404b851f    # 3.18f

    const v47, 0x415147ae    # 13.08f

    const/high16 v48, 0x40400000    # 3.0f

    const/high16 v49, 0x41400000    # 12.0f

    const/high16 v50, 0x40400000    # 3.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const v3, 0x411e147b    # 9.88f

    const v0, 0x410e6666    # 8.9f

    const/high16 v2, 0x40600000    # 3.5f

    const v15, 0x404b851f    # 3.18f

    invoke-virtual {v11, v3, v15, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v45, 0x411a3d71    # 9.64f

    const v46, 0x4025c28f    # 2.59f

    const/high16 v47, 0x412c0000    # 10.75f

    const/high16 v48, 0x40000000    # 2.0f

    const/high16 v50, 0x40000000    # 2.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const/high16 v0, 0x41100000    # 9.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v11, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    const/16 v45, 0x0

    const v46, -0x3ff28f5c    # -2.21f

    const v47, 0x3fe51eb8    # 1.79f

    const/high16 v48, -0x3f800000    # -4.0f

    const/high16 v49, 0x40800000    # 4.0f

    const/high16 v50, -0x3f800000    # -4.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v45, 0x3c23d70a    # 0.01f

    const/16 v46, 0x0

    const v47, 0x3c23d70a    # 0.01f

    const/16 v48, 0x0

    const v49, 0x3ca3d70a    # 0.02f

    const/16 v50, 0x0

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    const v45, -0x4019999a    # -1.8f

    const v46, 0x3faccccd    # 1.35f

    const v47, -0x3fb7ae14    # -3.13f

    const v48, 0x40528f5c    # 3.29f

    const v49, -0x3f933333    # -3.7f

    const v50, 0x40b147ae    # 5.54f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    const v45, 0x4007ae14    # 2.12f

    const v46, 0x41211eb8    # 10.07f

    const/high16 v47, 0x40000000    # 2.0f

    const v48, 0x4118cccd    # 9.55f

    const/high16 v49, 0x40000000    # 2.0f

    const/high16 v50, 0x41100000    # 9.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v11, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    const v45, -0x3ff28f5c    # -2.21f

    const/16 v46, 0x0

    const/high16 v47, -0x3f800000    # -4.0f

    const v48, -0x401ae148    # -1.79f

    const/high16 v49, -0x3f800000    # -4.0f

    const/high16 v50, -0x3f800000    # -4.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    const/16 v45, 0x0

    const v46, -0x40cf5c29    # -0.69f

    const v47, 0x3e428f5c    # 0.19f

    const v48, -0x40570a3d    # -1.32f

    const/high16 v49, 0x3f000000    # 0.5f

    const v50, -0x400f5c29    # -1.88f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    const v45, 0x3f4ccccd    # 0.8f

    const v46, 0x401c28f6    # 2.44f

    const v47, 0x402147ae    # 2.52f

    const v48, 0x408f0a3d    # 4.47f

    const v49, 0x4097ae14    # 4.74f

    const v50, 0x40b5c28f    # 5.68f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 127
    const v45, 0x40db3333    # 6.85f

    const v46, 0x41af70a4    # 21.93f

    const v47, 0x40ce147b    # 6.44f

    const/high16 v48, 0x41b00000    # 22.0f

    const/high16 v49, 0x40c00000    # 6.0f

    const/high16 v50, 0x41b00000    # 22.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v15, 0x41400000    # 12.0f

    invoke-virtual {v11, v15, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    const v45, -0x3f72e148    # -4.41f

    const/16 v46, 0x0

    const/high16 v47, -0x3f000000    # -8.0f

    const v48, -0x3f9a3d71    # -3.59f

    const/high16 v49, -0x3f000000    # -8.0f

    const/high16 v50, -0x3f000000    # -8.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    const/16 v45, 0x0

    const v46, -0x3f91eb85    # -3.72f

    const v47, 0x4023d70a    # 2.56f

    const v48, -0x3f24cccd    # -6.85f

    const/high16 v49, 0x40c00000    # 6.0f

    const v50, -0x3f0851ec    # -7.74f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    const v46, 0x3ca3d70a    # 0.02f

    const/16 v47, 0x0

    const v48, 0x3cf5c28f    # 0.03f

    const/16 v49, 0x0

    const v50, 0x3d4ccccd    # 0.05f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 133
    const v46, 0x4055c28f    # 3.34f

    const v47, 0x402e147b    # 2.72f

    const v48, 0x40c1eb85    # 6.06f

    const v49, 0x40c1eb85    # 6.06f

    const v50, 0x40c1eb85    # 6.06f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    const v45, 0x3fa147ae    # 1.26f

    const/16 v46, 0x0

    const v47, 0x401ccccd    # 2.45f

    const v48, -0x413851ec    # -0.39f

    const v49, 0x405ccccd    # 3.45f

    const v50, -0x40747ae1    # -1.09f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    const v45, 0x419e8f5c    # 19.82f

    const v46, 0x41323d71    # 11.14f

    const/high16 v47, 0x41a00000    # 20.0f

    const v48, 0x4140cccd    # 12.05f

    const/high16 v49, 0x41a00000    # 20.0f

    const/high16 v50, 0x41500000    # 13.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    const/high16 v45, 0x41a00000    # 20.0f

    const v46, 0x418b47ae    # 17.41f

    const v47, 0x418347ae    # 16.41f

    const/high16 v48, 0x41a80000    # 21.0f

    const/high16 v49, 0x41400000    # 12.0f

    const/high16 v50, 0x41a80000    # 21.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v11, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 139
    const v45, -0x411eb852    # -0.44f

    const/16 v46, 0x0

    const v47, -0x40a66666    # -0.85f

    const v48, -0x4270a3d7    # -0.07f

    const/high16 v49, -0x40600000    # -1.25f

    const v50, -0x41b33333    # -0.2f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 140
    const v45, 0x400eb852    # 2.23f

    const v46, -0x40651eb8    # -1.21f

    const v47, 0x407c28f6    # 3.94f

    const v48, -0x3fb0a3d7    # -3.24f

    const v49, 0x4097ae14    # 4.74f

    const v50, -0x3f4a3d71    # -5.68f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 141
    const v45, 0x3e9eb852    # 0.31f

    const v46, 0x3f0f5c29    # 0.56f

    const/high16 v47, 0x3f000000    # 0.5f

    const v48, 0x3f99999a    # 1.2f

    const/high16 v49, 0x3f000000    # 0.5f

    const v50, 0x3ff0a3d7    # 1.88f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 142
    const/high16 v45, 0x41b00000    # 22.0f

    const v46, 0x41a1ae14    # 20.21f

    const v47, 0x41a1ae14    # 20.21f

    const/high16 v48, 0x41b00000    # 22.0f

    const/high16 v49, 0x41900000    # 18.0f

    const/high16 v50, 0x41b00000    # 22.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 143
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 144
    nop

    .line 427
    .end local v11    # "$this$_get_Face2__u24lambda_u249_u24lambda_u246":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$7":I
    nop

    .line 428
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 426
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 429
    nop

    .line 430
    .end local v8    # "$i$f$PathData":I
    nop

    .line 431
    nop

    .line 432
    nop

    .line 433
    nop

    .line 434
    nop

    .line 435
    nop

    .line 436
    nop

    .line 437
    nop

    .line 438
    nop

    .line 439
    nop

    .line 424
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 440
    nop

    .line 441
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

    .line 145
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v20    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v21    # "fillAlpha$iv":F
    .end local v22    # "strokeAlpha$iv":F
    move-object v2, v1

    .line 442
    .local v2, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 443
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "fillAlpha$iv":F
    move/from16 v28, v3

    .line 442
    nop

    .line 444
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 442
    nop

    .line 445
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v25, v5

    .line 442
    const/4 v6, 0x0

    .line 451
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 452
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 454
    nop

    .line 456
    nop

    .line 457
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 458
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 459
    nop

    .line 451
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

    .line 460
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 461
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 460
    const/4 v8, 0x0

    .line 462
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 463
    const/4 v9, 0x0

    .line 464
    .local v9, "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v10, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 465
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_Face2__u24lambda_u249_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v24, 0x0

    .line 146
    .local v24, "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$8":I
    const/high16 v15, 0x41600000    # 14.0f

    invoke-virtual {v12, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 147
    const/high16 v0, -0x40600000    # -1.25f

    move-object/from16 v41, v2

    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v41, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 148
    const/high16 v16, 0x3fa00000    # 1.25f

    const/high16 v17, 0x3fa00000    # 1.25f

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/high16 v21, 0x40200000    # 2.5f

    const/16 v22, 0x0

    move v0, v15

    move-object v15, v12

    invoke-virtual/range {v15 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 149
    const/high16 v21, -0x3fe00000    # -2.5f

    invoke-virtual/range {v15 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 150
    nop

    .line 465
    .end local v12    # "$this$_get_Face2__u24lambda_u249_u24lambda_u247":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v24    # "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$8":I
    nop

    .line 466
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 464
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 467
    nop

    .line 468
    .end local v9    # "$i$f$PathData":I
    nop

    .line 469
    nop

    .line 470
    nop

    .line 471
    nop

    .line 472
    nop

    .line 473
    nop

    .line 474
    nop

    .line 475
    nop

    .line 476
    nop

    .line 477
    nop

    .line 462
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 478
    nop

    .line 479
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

    .line 151
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v41    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v3, v1

    .line 480
    .local v3, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 481
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "fillAlpha$iv":F
    move/from16 v28, v4

    .line 480
    nop

    .line 482
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v30, v5

    .line 480
    nop

    .line 483
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v25, v6

    .line 480
    const/4 v7, 0x0

    .line 489
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 490
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v8

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 492
    nop

    .line 494
    nop

    .line 495
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 496
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 497
    nop

    .line 489
    const/4 v8, 0x0

    move-object/from16 v29, v8

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v3

    const/high16 v8, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v8

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v8

    .line 498
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 499
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v8

    .line 498
    const/4 v9, 0x0

    .line 500
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 501
    const/4 v10, 0x0

    .line 502
    .local v10, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 503
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v15, v11

    .local v15, "$this$_get_Face2__u24lambda_u249_u24lambda_u248":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v24, 0x0

    .line 152
    .local v24, "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$9":I
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v15, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 153
    const/4 v0, 0x0

    const/high16 v2, -0x40600000    # -1.25f

    invoke-virtual {v15, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 154
    const/high16 v21, 0x40200000    # 2.5f

    move-object v0, v15

    .end local v15    # "$this$_get_Face2__u24lambda_u249_u24lambda_u248":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Face2__u24lambda_u249_u24lambda_u248":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v15 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 155
    const/high16 v21, -0x3fe00000    # -2.5f

    invoke-virtual/range {v15 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 156
    nop

    .line 503
    .end local v0    # "$this$_get_Face2__u24lambda_u249_u24lambda_u248":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v24    # "$i$a$-materialPath-YwgOQQI$default-Face2Kt$Face2$1$9":I
    nop

    .line 504
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 502
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 505
    nop

    .line 506
    .end local v10    # "$i$f$PathData":I
    nop

    .line 507
    nop

    .line 508
    nop

    .line 509
    nop

    .line 510
    nop

    .line 511
    nop

    .line 512
    nop

    .line 513
    nop

    .line 514
    nop

    .line 515
    nop

    .line 500
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 516
    nop

    .line 517
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

    .line 151
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 174
    .end local v1    # "$this$_get_Face2__u24lambda_u249":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v43    # "$i$a$-materialIcon$default-Face2Kt$Face2$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v40    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/Face2Kt;->_face2:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 158
    sget-object v0, Landroidx/compose/material/icons/twotone/Face2Kt;->_face2:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
