.class public final Landroidx/compose/material/icons/twotone/Face3Kt;
.super Ljava/lang/Object;
.source "Face3.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFace3.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Face3.kt\nandroidx/compose/material/icons/twotone/Face3Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,118:1\n212#2,12:119\n233#2,18:132\n253#2:169\n233#2,18:170\n253#2:207\n233#2,18:208\n253#2:245\n233#2,18:246\n253#2:283\n233#2,18:284\n253#2:321\n233#2,18:322\n253#2:359\n233#2,18:360\n253#2:397\n174#3:131\n705#4,2:150\n717#4,2:152\n719#4,11:158\n705#4,2:188\n717#4,2:190\n719#4,11:196\n705#4,2:226\n717#4,2:228\n719#4,11:234\n705#4,2:264\n717#4,2:266\n719#4,11:272\n705#4,2:302\n717#4,2:304\n719#4,11:310\n705#4,2:340\n717#4,2:342\n719#4,11:348\n705#4,2:378\n717#4,2:380\n719#4,11:386\n72#5,4:154\n72#5,4:192\n72#5,4:230\n72#5,4:268\n72#5,4:306\n72#5,4:344\n72#5,4:382\n*S KotlinDebug\n*F\n+ 1 Face3.kt\nandroidx/compose/material/icons/twotone/Face3Kt\n*L\n29#1:119,12\n30#1:132,18\n30#1:169\n38#1:170,18\n38#1:207\n46#1:208,18\n46#1:245\n53#1:246,18\n53#1:283\n60#1:284,18\n60#1:321\n66#1:322,18\n66#1:359\n72#1:360,18\n72#1:397\n29#1:131\n30#1:150,2\n30#1:152,2\n30#1:158,11\n38#1:188,2\n38#1:190,2\n38#1:196,11\n46#1:226,2\n46#1:228,2\n46#1:234,11\n53#1:264,2\n53#1:266,2\n53#1:272,11\n60#1:302,2\n60#1:304,2\n60#1:310,11\n66#1:340,2\n66#1:342,2\n66#1:348,11\n72#1:378,2\n72#1:380,2\n72#1:386,11\n30#1:154,4\n38#1:192,4\n46#1:230,4\n53#1:268,4\n60#1:306,4\n66#1:344,4\n72#1:382,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_face3",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Face3",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getFace3",
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
.field private static _face3:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getFace3(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 53
    .param p0, "$this$Face3"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/Face3Kt;->_face3:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/Face3Kt;->_face3:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.Face3"

    .line 119
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 121
    const/4 v13, 0x0

    .line 119
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 130
    .local v14, "$i$f$materialIcon":I
    nop

    .line 123
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 124
    nop

    .line 125
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 131
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 126
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 131
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 127
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 128
    const/high16 v6, 0x41c00000    # 24.0f

    .line 123
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 129
    nop

    .line 123
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    nop

    .local v1, "$this$_get_Face3__u24lambda_u247":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-Face3Kt$Face3$1":I
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v20, v3

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v4, v1

    .line 132
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 135
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v17, v5

    .line 132
    const/4 v6, 0x0

    .line 141
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 142
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v7

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 144
    nop

    .line 146
    nop

    .line 147
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 148
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 149
    nop

    .line 141
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

    .line 150
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 151
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v8

    .line 150
    const/4 v9, 0x0

    .line 152
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 153
    const/4 v11, 0x0

    .line 154
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 155
    .local v16, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v34, v12

    .local v34, "$this$_get_Face3__u24lambda_u247_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$1":I
    const/high16 v7, 0x41840000    # 16.5f

    const/high16 v10, 0x41000000    # 8.0f

    move-object/from16 v42, v0

    move-object/from16 v0, v34

    .end local v34    # "$this$_get_Face3__u24lambda_u247_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Face3__u24lambda_u247_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v42, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, 0x3f3ae148    # 0.73f

    const/16 v29, 0x0

    const v30, 0x3fb47ae1    # 1.41f

    const/high16 v31, -0x41800000    # -0.25f

    const v32, 0x3ffeb852    # 1.99f

    const v33, -0x40d9999a    # -0.65f

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, 0x4189c28f    # 17.22f

    const v29, 0x40b28f5c    # 5.58f

    const v30, 0x417428f6    # 15.26f

    const v31, 0x408b3333    # 4.35f

    const/high16 v32, 0x41500000    # 13.0f

    const v33, 0x40823d71    # 4.07f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v7, 0x40900000    # 4.5f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const/high16 v28, 0x41500000    # 13.0f

    const v29, 0x40cdc28f    # 6.43f

    const v30, 0x41691eb8    # 14.57f

    const/high16 v31, 0x41000000    # 8.0f

    const/high16 v32, 0x41840000    # 16.5f

    const/high16 v33, 0x41000000    # 8.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    nop

    .line 155
    .end local v0    # "$this$_get_Face3__u24lambda_u247_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$1":I
    nop

    .line 156
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 154
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 157
    nop

    .line 158
    .end local v11    # "$i$f$PathData":I
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

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 152
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 168
    nop

    .line 169
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

    .line 170
    .local v3, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 173
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 170
    const/4 v5, 0x0

    .line 179
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 180
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v6, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 182
    nop

    .line 184
    nop

    .line 185
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 186
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 187
    nop

    .line 179
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

    .line 188
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 189
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 188
    const/4 v8, 0x0

    .line 190
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 191
    const/4 v9, 0x0

    .line 192
    .local v9, "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v10, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 193
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_Face3__u24lambda_u247_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 39
    .local v22, "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$2":I
    const/high16 v15, 0x41300000    # 11.0f

    invoke-virtual {v12, v15, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v7, 0x40823d71    # 4.07f

    invoke-virtual {v12, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v16, 0x410bd70a    # 8.74f

    const v17, 0x408b3333    # 4.35f

    const v18, 0x40d8f5c3    # 6.78f

    const v19, 0x40b28f5c    # 5.58f

    const v20, 0x40b051ec    # 5.51f

    const v21, 0x40eb3333    # 7.35f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v16, 0x40c2e148    # 6.09f

    const/high16 v17, 0x40f80000    # 7.75f

    const v18, 0x40d8a3d7    # 6.77f

    const/high16 v19, 0x41000000    # 8.0f

    const/high16 v20, 0x40f00000    # 7.5f

    const/high16 v21, 0x41000000    # 8.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v16, 0x4116e148    # 9.43f

    const/high16 v17, 0x41000000    # 8.0f

    const/high16 v18, 0x41300000    # 11.0f

    const v19, 0x40cdc28f    # 6.43f

    const/high16 v20, 0x41300000    # 11.0f

    const/high16 v21, 0x40900000    # 4.5f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    nop

    .line 193
    .end local v12    # "$this$_get_Face3__u24lambda_u247_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$2":I
    nop

    .line 194
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 192
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 195
    nop

    .line 196
    .end local v9    # "$i$f$PathData":I
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

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 190
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 206
    nop

    .line 207
    .end local v6    # "name$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 46
    .end local v0    # "fillAlpha$iv":F
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    const v0, 0x3e99999a    # 0.3f

    .restart local v0    # "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .line 208
    .restart local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "strokeAlpha$iv":F
    nop

    .line 211
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .restart local v4    # "pathFillType$iv":I
    move/from16 v25, v4

    .line 208
    const/4 v5, 0x0

    .line 217
    .restart local v5    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 218
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v6, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 220
    nop

    .line 222
    nop

    .line 223
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 224
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 225
    nop

    .line 217
    const/4 v6, 0x0

    move-object/from16 v29, v6

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v6

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v6

    .line 226
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 227
    const-string v6, ""

    .restart local v6    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 226
    const/4 v8, 0x0

    .line 228
    .restart local v8    # "$i$f$path-R_LF-3I":I
    nop

    .line 229
    const/4 v9, 0x0

    .line 230
    .restart local v9    # "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 231
    .restart local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_Face3__u24lambda_u247_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 47
    .local v22, "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$3":I
    const/high16 v15, 0x40300000    # 2.75f

    const v7, 0x417ccccd    # 15.8f

    invoke-virtual {v12, v15, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v7, 0x400c28f6    # 2.19f

    const/high16 v15, 0x41b00000    # 22.0f

    invoke-virtual {v12, v7, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v12, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v16, 0x40fa3d71    # 7.82f

    const/high16 v17, 0x41b00000    # 22.0f

    const/high16 v18, 0x40880000    # 4.25f

    const v19, 0x419b851f    # 19.44f

    const/high16 v20, 0x40300000    # 2.75f

    const v21, 0x417ccccd    # 15.8f

    move/from16 v43, v0

    move v0, v15

    .end local v0    # "fillAlpha$iv":F
    .local v43, "fillAlpha$iv":F
    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    nop

    .line 231
    .end local v12    # "$this$_get_Face3__u24lambda_u247_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$3":I
    nop

    .line 232
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 230
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 233
    nop

    .line 234
    .end local v9    # "$i$f$PathData":I
    nop

    .line 235
    nop

    .line 236
    nop

    .line 237
    nop

    .line 238
    nop

    .line 239
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 228
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 244
    nop

    .line 245
    .end local v6    # "name$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 53
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    .end local v43    # "fillAlpha$iv":F
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v28, v3

    const v30, 0x3e99999a    # 0.3f

    .restart local v30    # "strokeAlpha$iv":F
    move-object v4, v1

    .line 246
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 249
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v25, v5

    .line 246
    const/4 v6, 0x0

    .line 255
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 256
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v8

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 258
    nop

    .line 260
    nop

    .line 261
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 262
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 263
    nop

    .line 255
    const/4 v8, 0x0

    move-object/from16 v29, v8

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v4

    const/high16 v8, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v8

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v8

    .line 264
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 265
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v8

    .line 264
    const/4 v9, 0x0

    .line 266
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 267
    const/4 v10, 0x0

    .line 268
    .local v10, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 269
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v15, v11

    .local v15, "$this$_get_Face3__u24lambda_u247_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 54
    .local v22, "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$4":I
    invoke-virtual {v15, v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v0, 0x411cf5c3    # 9.81f

    invoke-virtual {v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v0, -0x40f0a3d7    # -0.56f

    const v7, -0x3f39999a    # -6.2f

    invoke-virtual {v15, v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const/high16 v16, 0x419e0000    # 19.75f

    const v17, 0x419b851f    # 19.44f

    const v18, 0x418170a4    # 16.18f

    const/high16 v19, 0x41b00000    # 22.0f

    const/high16 v20, 0x41400000    # 12.0f

    const/high16 v21, 0x41b00000    # 22.0f

    move-object v0, v15

    .end local v15    # "$this$_get_Face3__u24lambda_u247_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Face3__u24lambda_u247_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    nop

    .line 269
    .end local v0    # "$this$_get_Face3__u24lambda_u247_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$4":I
    nop

    .line 270
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 268
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 271
    nop

    .line 272
    .end local v10    # "$i$f$PathData":I
    nop

    .line 273
    nop

    .line 274
    nop

    .line 275
    nop

    .line 276
    nop

    .line 277
    nop

    .line 278
    nop

    .line 279
    nop

    .line 280
    nop

    .line 281
    nop

    .line 266
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 282
    nop

    .line 283
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

    .line 60
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    move-object v0, v1

    .line 284
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 285
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "fillAlpha$iv":F
    move/from16 v28, v3

    .line 284
    nop

    .line 286
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 284
    nop

    .line 287
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .restart local v5    # "pathFillType$iv":I
    move/from16 v25, v5

    .line 284
    const/4 v6, 0x0

    .line 293
    .restart local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 294
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v8

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 296
    nop

    .line 298
    nop

    .line 299
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 300
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 301
    nop

    .line 293
    const/4 v8, 0x0

    move-object/from16 v29, v8

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    const/high16 v8, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v8

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v8

    .line 302
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 303
    const-string v8, ""

    .restart local v8    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v8

    .line 302
    const/4 v9, 0x0

    .line 304
    .restart local v9    # "$i$f$path-R_LF-3I":I
    nop

    .line 305
    const/4 v10, 0x0

    .line 306
    .restart local v10    # "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 307
    .restart local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v15, v11

    .local v15, "$this$_get_Face3__u24lambda_u247_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v24, 0x0

    .line 61
    .local v24, "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$5":I
    const/high16 v7, 0x41100000    # 9.0f

    move-object/from16 v44, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v44, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v15, v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v7, -0x40600000    # -1.25f

    const/4 v0, 0x0

    invoke-virtual {v15, v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/high16 v16, 0x3fa00000    # 1.25f

    const/high16 v17, 0x3fa00000    # 1.25f

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/high16 v21, 0x40200000    # 2.5f

    const/16 v22, 0x0

    move-object/from16 v35, v15

    .end local v15    # "$this$_get_Face3__u24lambda_u247_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v35, "$this$_get_Face3__u24lambda_u247_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual/range {v15 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const/high16 v21, -0x3fe00000    # -2.5f

    invoke-virtual/range {v15 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    nop

    .line 307
    .end local v24    # "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$5":I
    .end local v35    # "$this$_get_Face3__u24lambda_u247_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    nop

    .line 308
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 306
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 309
    nop

    .line 310
    .end local v10    # "$i$f$PathData":I
    nop

    .line 311
    nop

    .line 312
    nop

    .line 313
    nop

    .line 314
    nop

    .line 315
    nop

    .line 316
    nop

    .line 317
    nop

    .line 318
    nop

    .line 319
    nop

    .line 304
    const/16 v35, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 320
    nop

    .line 321
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

    .line 66
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v44    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v3, v1

    .line 322
    .local v3, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 323
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "fillAlpha$iv":F
    move/from16 v28, v4

    .line 322
    nop

    .line 324
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v30, v5

    .line 322
    nop

    .line 325
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v25, v6

    .line 322
    const/4 v8, 0x0

    .line 331
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 332
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v9

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 334
    nop

    .line 336
    nop

    .line 337
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 338
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 339
    nop

    .line 331
    const/4 v9, 0x0

    move-object/from16 v29, v9

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v3

    const/high16 v9, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v9

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v9

    .line 340
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 341
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v9

    .line 340
    const/4 v10, 0x0

    .line 342
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 343
    const/4 v11, 0x0

    .line 344
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 345
    .local v15, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v16, v12

    .local v16, "$this$_get_Face3__u24lambda_u247_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v17, 0x0

    .line 67
    .local v17, "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$6":I
    const/high16 v0, 0x41700000    # 15.0f

    move-object/from16 v7, v16

    move/from16 v16, v2

    const/high16 v2, 0x41500000    # 13.0f

    .end local v2    # "$i$a$-materialIcon$default-Face3Kt$Face3$1":I
    .local v7, "$this$_get_Face3__u24lambda_u247_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v16, "$i$a$-materialIcon$default-Face3Kt$Face3$1":I
    invoke-virtual {v7, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/4 v0, 0x0

    const/high16 v2, -0x40600000    # -1.25f

    invoke-virtual {v7, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const/high16 v46, 0x3fa00000    # 1.25f

    const/high16 v47, 0x3fa00000    # 1.25f

    const/16 v48, 0x0

    const/16 v49, 0x1

    const/16 v50, 0x1

    const/high16 v51, 0x40200000    # 2.5f

    const/16 v52, 0x0

    move-object/from16 v45, v7

    invoke-virtual/range {v45 .. v52}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v51, -0x3fe00000    # -2.5f

    invoke-virtual/range {v45 .. v52}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    nop

    .line 345
    .end local v7    # "$this$_get_Face3__u24lambda_u247_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v17    # "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$6":I
    nop

    .line 346
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 344
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 347
    nop

    .line 348
    .end local v11    # "$i$f$PathData":I
    nop

    .line 349
    nop

    .line 350
    nop

    .line 351
    nop

    .line 352
    nop

    .line 353
    nop

    .line 354
    nop

    .line 355
    nop

    .line 356
    nop

    .line 357
    nop

    .line 342
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 358
    nop

    .line 359
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

    .line 72
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    move-object v0, v1

    .line 360
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 361
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "fillAlpha$iv":F
    move/from16 v28, v2

    .line 360
    nop

    .line 362
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 360
    nop

    .line 363
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 360
    const/4 v5, 0x0

    .line 369
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 370
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 372
    nop

    .line 374
    nop

    .line 375
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 376
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 377
    nop

    .line 369
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

    .line 378
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 379
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 378
    const/4 v7, 0x0

    .line 380
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 381
    const/4 v8, 0x0

    .line 382
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 383
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Face3__u24lambda_u247_u24lambda_u246":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 73
    .local v12, "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$7":I
    const v15, 0x41b747ae    # 22.91f

    move-object/from16 v17, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v17, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x413f5c29    # 11.96f

    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v36, 0x41b31eb8    # 22.39f

    const v37, 0x40ca3d71    # 6.32f

    const v38, 0x418d47ae    # 17.66f

    const/high16 v39, 0x40000000    # 2.0f

    const/high16 v40, 0x41400000    # 12.0f

    const/high16 v41, 0x40000000    # 2.0f

    move-object/from16 v35, v11

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v15, 0x40ca3d71    # 6.32f

    move-object/from16 v19, v1

    .end local v1    # "$this$_get_Face3__u24lambda_u247":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v19, "$this$_get_Face3__u24lambda_u247":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v1, 0x3f8b851f    # 1.09f

    move/from16 v20, v2

    .end local v2    # "fillAlpha$iv":F
    .local v20, "fillAlpha$iv":F
    const v2, 0x3fce147b    # 1.61f

    invoke-virtual {v11, v2, v15, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v1, -0x4099999a    # -0.9f

    const v2, 0x411dc28f    # 9.86f

    invoke-virtual {v11, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v36, 0x3db851ec    # 0.09f

    const v37, 0x41b7eb85    # 22.99f

    const v38, 0x3f8147ae    # 1.01f

    const/high16 v39, 0x41c00000    # 24.0f

    const v40, 0x400c28f6    # 2.19f

    const/high16 v41, 0x41c00000    # 24.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v1, 0x419cf5c3    # 19.62f

    invoke-virtual {v11, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v36, 0x3f970a3d    # 1.18f

    const/16 v37, 0x0

    const v38, 0x40066666    # 2.1f

    const v39, -0x407eb852    # -1.01f

    const v40, 0x3ffeb852    # 1.99f

    const v41, -0x3ff47ae1    # -2.18f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v1, 0x41b747ae    # 22.91f

    invoke-virtual {v11, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const/high16 v0, 0x41500000    # 13.0f

    const v1, 0x40823d71    # 4.07f

    invoke-virtual {v11, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v36, 0x4010a3d7    # 2.26f

    const v37, 0x3e8f5c29    # 0.28f

    const v38, 0x40870a3d    # 4.22f

    const v39, 0x3fc147ae    # 1.51f

    const v40, 0x40afae14    # 5.49f

    const v41, 0x4051eb85    # 3.28f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v36, 0x418f47ae    # 17.91f

    const/high16 v37, 0x40f80000    # 7.75f

    const v38, 0x4189d70a    # 17.23f

    const/high16 v39, 0x41000000    # 8.0f

    const/high16 v40, 0x41840000    # 16.5f

    const/high16 v41, 0x41000000    # 8.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v36, 0x41691eb8    # 14.57f

    const/high16 v37, 0x41000000    # 8.0f

    const/high16 v38, 0x41500000    # 13.0f

    const v39, 0x40cdc28f    # 6.43f

    const/high16 v40, 0x41500000    # 13.0f

    const/high16 v41, 0x40900000    # 4.5f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v0, 0x40823d71    # 4.07f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v11, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const/high16 v0, 0x40900000    # 4.5f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const/high16 v36, 0x41300000    # 11.0f

    const v37, 0x40cdc28f    # 6.43f

    const v38, 0x4116e148    # 9.43f

    const/high16 v39, 0x41000000    # 8.0f

    const/high16 v40, 0x40f00000    # 7.5f

    const/high16 v41, 0x41000000    # 8.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v36, 0x40d8a3d7    # 6.77f

    const/high16 v37, 0x41000000    # 8.0f

    const v38, 0x40c2e148    # 6.09f

    const/high16 v39, 0x40f80000    # 7.75f

    const v40, 0x40b051ec    # 5.51f

    const v41, 0x40eb3333    # 7.35f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v36, 0x40d8f5c3    # 6.78f

    const v37, 0x40b28f5c    # 5.58f

    const v38, 0x410bd70a    # 8.74f

    const v39, 0x408b3333    # 4.35f

    const/high16 v40, 0x41300000    # 11.0f

    const v41, 0x40823d71    # 4.07f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v0, 0x409147ae    # 4.54f

    const v1, 0x4112147b    # 9.13f

    invoke-virtual {v11, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v36, 0x40ad1eb8    # 5.41f

    const v37, 0x411ae148    # 9.68f

    const v38, 0x40cdc28f    # 6.43f

    const/high16 v39, 0x41200000    # 10.0f

    const/high16 v40, 0x40f00000    # 7.5f

    const/high16 v41, 0x41200000    # 10.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v36, 0x4115c28f    # 9.36f

    const/high16 v37, 0x41200000    # 10.0f

    const/high16 v38, 0x41300000    # 11.0f

    const v39, 0x41111eb8    # 9.07f

    const/high16 v40, 0x41400000    # 12.0f

    const v41, 0x40f4cccd    # 7.65f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const/high16 v36, 0x41500000    # 13.0f

    const v37, 0x41111eb8    # 9.07f

    const v38, 0x416a3d71    # 14.64f

    const/high16 v39, 0x41200000    # 10.0f

    const/high16 v40, 0x41840000    # 16.5f

    const/high16 v41, 0x41200000    # 10.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v36, 0x3f88f5c3    # 1.07f

    const/16 v37, 0x0

    const v38, 0x4005c28f    # 2.09f

    const v39, -0x415c28f6    # -0.32f

    const v40, 0x403d70a4    # 2.96f

    const v41, -0x40a147ae    # -0.87f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v36, 0x419e6666    # 19.8f

    const v37, 0x412051ec    # 10.02f

    const/high16 v38, 0x41a00000    # 20.0f

    const v39, 0x412fd70a    # 10.99f

    const/high16 v40, 0x41a00000    # 20.0f

    const/high16 v41, 0x41400000    # 12.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const/16 v36, 0x0

    const v37, 0x408d1eb8    # 4.41f

    const v38, -0x3f9a3d71    # -3.59f

    const/high16 v39, 0x41000000    # 8.0f

    const/high16 v40, -0x3f000000    # -8.0f

    const/high16 v41, 0x41000000    # 8.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v0, -0x3f9a3d71    # -3.59f

    const/high16 v1, -0x3f000000    # -8.0f

    invoke-virtual {v11, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const/high16 v36, 0x40800000    # 4.0f

    const v37, 0x412fd70a    # 10.99f

    const v38, 0x40866666    # 4.2f

    const v39, 0x412051ec    # 10.02f

    const v40, 0x409147ae    # 4.54f

    const v41, 0x4112147b    # 9.13f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const/high16 v0, 0x41b00000    # 22.0f

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v11, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v0, 0x400c28f6    # 2.19f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v0, 0x3f0f5c29    # 0.56f

    const v1, -0x3f39999a    # -6.2f

    invoke-virtual {v11, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const/high16 v36, 0x40880000    # 4.25f

    const v37, 0x419b851f    # 19.44f

    const v38, 0x40fa3d71    # 7.82f

    const/high16 v39, 0x41b00000    # 22.0f

    const/high16 v40, 0x41400000    # 12.0f

    const/high16 v41, 0x41b00000    # 22.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const v1, -0x3fdc28f6    # -2.56f

    const/high16 v2, 0x41140000    # 9.25f

    const/high16 v15, 0x40f80000    # 7.75f

    const v0, -0x3f39999a    # -6.2f

    invoke-virtual {v11, v15, v1, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const v0, 0x40c66666    # 6.2f

    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {v11, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    nop

    .line 383
    .end local v11    # "$this$_get_Face3__u24lambda_u247_u24lambda_u246":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-Face3Kt$Face3$1$7":I
    nop

    .line 384
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 382
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 385
    nop

    .line 386
    .end local v8    # "$i$f$PathData":I
    nop

    .line 387
    nop

    .line 388
    nop

    .line 389
    nop

    .line 390
    nop

    .line 391
    nop

    .line 392
    nop

    .line 393
    nop

    .line 394
    nop

    .line 395
    nop

    .line 380
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 396
    nop

    .line 397
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

    .line 72
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v17    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v20    # "fillAlpha$iv":F
    nop

    .line 130
    .end local v16    # "$i$a$-materialIcon$default-Face3Kt$Face3$1":I
    .end local v19    # "$this$_get_Face3__u24lambda_u247":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v42    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/Face3Kt;->_face3:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 114
    sget-object v0, Landroidx/compose/material/icons/twotone/Face3Kt;->_face3:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
