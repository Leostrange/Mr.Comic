.class public final Landroidx/compose/material/icons/twotone/DirectionsBoatKt;
.super Ljava/lang/Object;
.source "DirectionsBoat.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDirectionsBoat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DirectionsBoat.kt\nandroidx/compose/material/icons/twotone/DirectionsBoatKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,130:1\n212#2,12:131\n233#2,18:144\n253#2:181\n233#2,18:182\n253#2:219\n174#3:143\n705#4,2:162\n717#4,2:164\n719#4,11:170\n705#4,2:200\n717#4,2:202\n719#4,11:208\n72#5,4:166\n72#5,4:204\n*S KotlinDebug\n*F\n+ 1 DirectionsBoat.kt\nandroidx/compose/material/icons/twotone/DirectionsBoatKt\n*L\n29#1:131,12\n30#1:144,18\n30#1:181\n53#1:182,18\n53#1:219\n29#1:143\n30#1:162,2\n30#1:164,2\n30#1:170,11\n53#1:200,2\n53#1:202,2\n53#1:208,11\n30#1:166,4\n53#1:204,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_directionsBoat",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "DirectionsBoat",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getDirectionsBoat",
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
.field private static _directionsBoat:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getDirectionsBoat(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 44
    .param p0, "$this$DirectionsBoat"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/DirectionsBoatKt;->_directionsBoat:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/DirectionsBoatKt;->_directionsBoat:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.DirectionsBoat"

    .line 131
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 133
    const/4 v13, 0x0

    .line 131
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 142
    .local v14, "$i$f$materialIcon":I
    nop

    .line 135
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 136
    nop

    .line 137
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 143
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 138
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 143
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 139
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 140
    const/high16 v6, 0x41c00000    # 24.0f

    .line 135
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 141
    nop

    .line 135
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 142
    nop

    .local v1, "$this$_get_DirectionsBoat__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-DirectionsBoatKt$DirectionsBoat$1":I
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v20, v3

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v4, v1

    .line 144
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 147
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v17, v5

    .line 144
    const/4 v6, 0x0

    .line 153
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 154
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v7

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 156
    nop

    .line 158
    nop

    .line 159
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 160
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 161
    nop

    .line 153
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

    .line 162
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 163
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v8

    .line 162
    const/4 v9, 0x0

    .line 164
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 165
    const/4 v11, 0x0

    .line 166
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 167
    .local v16, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v34, v12

    .local v34, "$this$_get_DirectionsBoat__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-DirectionsBoatKt$DirectionsBoat$1$1":I
    const v10, 0x40cfae14    # 6.49f

    const v7, 0x417ae148    # 15.68f

    move-object/from16 v40, v0

    move-object/from16 v0, v34

    .end local v34    # "$this$_get_DirectionsBoat__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_DirectionsBoat__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v40, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const/high16 v7, 0x41000000    # 8.0f

    const v10, 0x415f5c29    # 13.96f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v7, 0x3fc147ae    # 1.51f

    const v10, 0x3fdc28f6    # 1.72f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, 0x3eae147b    # 0.34f

    const v29, 0x3ecccccd    # 0.4f

    const v30, 0x3fa3d70a    # 1.28f

    const v31, 0x3fa8f5c3    # 1.32f

    const v32, 0x401f5c29    # 2.49f

    const v33, 0x3fa8f5c3    # 1.32f

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, 0x3f9ae148    # 1.21f

    const/16 v29, 0x0

    const v30, 0x4009999a    # 2.15f

    const v31, -0x40947ae1    # -0.92f

    const v33, -0x40570a3d    # -1.32f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/high16 v7, 0x41800000    # 16.0f

    const v10, 0x415f5c29    # 13.96f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v7, 0x3fdc28f6    # 1.72f

    const v10, 0x3fc147ae    # 1.51f

    invoke-virtual {v0, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v28, 0x3e4ccccd    # 0.2f

    const v29, 0x3e6b851f    # 0.23f

    const v30, 0x3f19999a    # 0.6f

    const v31, 0x3f23d70a    # 0.64f

    const v32, 0x3f91eb85    # 1.14f

    const v33, 0x3f70a3d7    # 0.94f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v7, 0x3f8f5c29    # 1.12f

    const v10, -0x3f81eb85    # -3.97f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v7, -0x3fe70a3d    # -2.39f

    const v10, -0x40b851ec    # -0.78f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/high16 v7, 0x41400000    # 12.0f

    const v10, 0x4121c28f    # 10.11f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v10, -0x3f53d70a    # -5.38f

    const v7, 0x3fe28f5c    # 1.77f

    invoke-virtual {v0, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v10, -0x3fe66666    # -2.4f

    const v7, 0x3f4a3d71    # 0.79f

    invoke-virtual {v0, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v7, 0x3f90a3d7    # 1.13f

    const v10, 0x407d70a4    # 3.96f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v28, 0x3f0ccccd    # 0.55f

    const v29, -0x416147ae    # -0.31f

    const v30, 0x3f70a3d7    # 0.94f

    const v31, -0x40c7ae14    # -0.72f

    const v33, -0x408ccccd    # -0.95f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const/high16 v7, 0x41300000    # 11.0f

    const/high16 v10, 0x40400000    # 3.0f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    nop

    .line 167
    .end local v0    # "$this$_get_DirectionsBoat__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-DirectionsBoatKt$DirectionsBoat$1$1":I
    nop

    .line 168
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 166
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 169
    nop

    .line 170
    .end local v11    # "$i$f$PathData":I
    nop

    .line 171
    nop

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
    nop

    .line 176
    nop

    .line 177
    nop

    .line 178
    nop

    .line 179
    nop

    .line 164
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 180
    nop

    .line 181
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

    .line 53
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "strokeAlpha$iv":F
    move-object v0, v1

    .line 182
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 183
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "fillAlpha$iv":F
    move/from16 v28, v3

    .line 182
    nop

    .line 184
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 182
    nop

    .line 185
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .restart local v5    # "pathFillType$iv":I
    move/from16 v25, v5

    .line 182
    const/4 v6, 0x0

    .line 191
    .restart local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 192
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v8

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 194
    nop

    .line 196
    nop

    .line 197
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 198
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 199
    nop

    .line 191
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

    .line 200
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 201
    const-string v8, ""

    .restart local v8    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v8

    .line 200
    const/4 v9, 0x0

    .line 202
    .restart local v9    # "$i$f$path-R_LF-3I":I
    nop

    .line 203
    const/4 v11, 0x0

    .line 204
    .restart local v11    # "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 205
    .local v15, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v24, v12

    .local v24, "$this$_get_DirectionsBoat__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 54
    .local v35, "$i$a$-materialPath-YwgOQQI$default-DirectionsBoatKt$DirectionsBoat$1$2":I
    const v10, 0x407ccccd    # 3.95f

    const/high16 v7, 0x41980000    # 19.0f

    move-object/from16 v41, v0

    move-object/from16 v0, v24

    .end local v24    # "$this$_get_DirectionsBoat__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_DirectionsBoat__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v41, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v0, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v17, 0x3fcccccd    # 1.6f

    const/16 v18, 0x0

    const v19, 0x404147ae    # 3.02f

    const v20, -0x409eb852    # -0.88f

    const/high16 v21, 0x40800000    # 4.0f

    const/high16 v22, -0x40000000    # -2.0f

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v17, 0x3f7ae148    # 0.98f

    const v18, 0x3f8f5c29    # 1.12f

    const v19, 0x4019999a    # 2.4f

    const/high16 v20, 0x40000000    # 2.0f

    const/high16 v22, 0x40000000    # 2.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v7, 0x404147ae    # 3.02f

    move-object/from16 v42, v1

    .end local v1    # "$this$_get_DirectionsBoat__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v42, "$this$_get_DirectionsBoat__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v1, -0x409eb852    # -0.88f

    move/from16 v43, v2

    const/high16 v2, -0x40000000    # -2.0f

    .end local v2    # "$i$a$-materialIcon$default-DirectionsBoatKt$DirectionsBoat$1":I
    .local v43, "$i$a$-materialIcon$default-DirectionsBoatKt$DirectionsBoat$1":I
    invoke-virtual {v0, v7, v1, v10, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v1, 0x3ff1eb85    # 1.89f

    const v2, -0x3f2a3d71    # -6.68f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v17, 0x3da3d70a    # 0.08f

    const v18, -0x417ae148    # -0.26f

    const v19, 0x3d75c28f    # 0.06f

    const v20, -0x40f5c28f    # -0.54f

    const v21, -0x428a3d71    # -0.06f

    const v22, -0x40b851ec    # -0.78f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v1, -0x40e66666    # -0.6f

    const/high16 v2, -0x41000000    # -0.5f

    const v7, -0x4151eb85    # -0.34f

    const v10, -0x4128f5c3    # -0.42f

    invoke-virtual {v0, v7, v10, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v1, 0x4129eb85    # 10.62f

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/16 v17, 0x0

    const v18, -0x40733333    # -1.1f

    const v19, -0x4099999a    # -0.9f

    const/high16 v20, -0x40000000    # -2.0f

    const/high16 v21, -0x40000000    # -2.0f

    const/high16 v22, -0x40000000    # -2.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const/high16 v2, -0x3fc00000    # -3.0f

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v0, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v17, -0x40733333    # -1.1f

    const/16 v18, 0x0

    const/high16 v19, -0x40000000    # -2.0f

    const v20, 0x3f666666    # 0.9f

    const/high16 v22, 0x40000000    # 2.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v2, 0x4093d70a    # 4.62f

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v2, -0x405ae148    # -1.29f

    const v7, 0x3ed70a3d    # 0.42f

    invoke-virtual {v0, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v17, -0x417ae148    # -0.26f

    const v18, 0x3da3d70a    # 0.08f

    const v19, -0x410a3d71    # -0.48f

    const v20, 0x3e851eb8    # 0.26f

    const v21, -0x40e66666    # -0.6f

    const/high16 v22, 0x3f000000    # 0.5f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v2, 0x3f051eb8    # 0.52f

    const v7, -0x428a3d71    # -0.06f

    const v10, -0x41e66666    # -0.15f

    const v1, 0x3f47ae14    # 0.78f

    invoke-virtual {v0, v10, v2, v7, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v2, 0x407ccccd    # 3.95f

    const/high16 v7, 0x41980000    # 19.0f

    invoke-virtual {v0, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/high16 v2, 0x41300000    # 11.0f

    const/high16 v7, 0x40400000    # 3.0f

    invoke-virtual {v0, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const/high16 v10, -0x40000000    # -2.0f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    invoke-virtual {v0, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v0, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v10, 0x407e147b    # 3.97f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const/high16 v10, 0x41000000    # 8.0f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v7, 0x411f851f    # 9.97f

    invoke-virtual {v0, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    invoke-virtual {v0, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v2, 0x40d3d70a    # 6.62f

    const v7, 0x413deb85    # 11.87f

    invoke-virtual {v0, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v2, 0x4121c28f    # 10.11f

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v0, v7, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v2, 0x40ac28f6    # 5.38f

    const v7, 0x3fe28f5c    # 1.77f

    invoke-virtual {v0, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v2, 0x4018f5c3    # 2.39f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v1, -0x4070a3d7    # -1.12f

    const v2, 0x407e147b    # 3.97f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v17, -0x40f5c28f    # -0.54f

    const v18, -0x41666666    # -0.3f

    const v19, -0x408f5c29    # -0.94f

    const v20, -0x40ca3d71    # -0.71f

    const v21, -0x406e147b    # -1.14f

    const v22, -0x408f5c29    # -0.94f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const/high16 v1, 0x41800000    # 16.0f

    const v2, 0x415f5c29    # 13.96f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v1, -0x403eb852    # -1.51f

    const v2, 0x3fdc28f6    # 1.72f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v17, -0x4151eb85    # -0.34f

    const v18, 0x3ecccccd    # 0.4f

    const v19, -0x405c28f6    # -1.28f

    const v20, 0x3fa8f5c3    # 1.32f

    const v21, -0x3fe0a3d7    # -2.49f

    const v22, 0x3fa8f5c3    # 1.32f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v17, -0x40651eb8    # -1.21f

    const/16 v18, 0x0

    const v19, -0x3ff66666    # -2.15f

    const v20, -0x40947ae1    # -0.92f

    const v22, -0x40570a3d    # -1.32f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v1, 0x415f5c29    # 13.96f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v1, -0x403eb852    # -1.51f

    const v2, 0x3fdc28f6    # 1.72f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v17, -0x41b33333    # -0.2f

    const v18, 0x3e6b851f    # 0.23f

    const v19, -0x40e66666    # -0.6f

    const v20, 0x3f2147ae    # 0.63f

    const v21, -0x406e147b    # -1.14f

    const v22, 0x3f6e147b    # 0.93f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v1, -0x406f5c29    # -1.13f

    const v2, -0x3f828f5c    # -3.96f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v1, 0x4019999a    # 2.4f

    const v2, -0x40b851ec    # -0.78f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const v1, 0x41b0147b    # 22.01f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const v17, 0x3fa147ae    # 1.26f

    const v18, 0x3f23d70a    # 0.64f

    const v19, 0x402851ec    # 2.63f

    const v20, 0x3f7851ec    # 0.97f

    const/high16 v21, 0x40800000    # 4.0f

    const v22, 0x3f7851ec    # 0.97f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const v1, -0x415c28f6    # -0.32f

    const v2, -0x4087ae14    # -0.97f

    const v7, 0x402f5c29    # 2.74f

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v0, v7, v1, v10, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v18, 0x3f266666    # 0.65f

    const v19, 0x4027ae14    # 2.62f

    const v20, 0x3f7d70a4    # 0.99f

    const v22, 0x3f7d70a4    # 0.99f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v17, -0x404e147b    # -1.39f

    const/16 v18, 0x0

    const v19, -0x3fce147b    # -2.78f

    const v20, -0x410f5c29    # -0.47f

    const/high16 v21, -0x3f800000    # -4.0f

    const v22, -0x40570a3d    # -1.32f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    const v17, -0x4063d70a    # -1.22f

    const v18, 0x3f59999a    # 0.85f

    const v19, -0x3fd8f5c3    # -2.61f

    const v20, 0x3fa3d70a    # 1.28f

    const v22, 0x3fa3d70a    # 1.28f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const/high16 v1, -0x3f800000    # -4.0f

    const v2, -0x405c28f6    # -1.28f

    const v7, -0x3fce147b    # -2.78f

    const v10, -0x4123d70a    # -0.43f

    invoke-virtual {v0, v7, v10, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    const v17, 0x40d8f5c3    # 6.78f

    const v18, 0x41a43d71    # 20.53f

    const v19, 0x40ac7ae1    # 5.39f

    const/high16 v20, 0x41a80000    # 21.0f

    const/high16 v21, 0x40800000    # 4.0f

    const/high16 v22, 0x41a80000    # 21.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const/high16 v1, 0x41a80000    # 21.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    const v17, 0x3fb0a3d7    # 1.38f

    const/16 v18, 0x0

    const v19, 0x402f5c29    # 2.74f

    const v20, -0x414ccccd    # -0.35f

    const v22, -0x40828f5c    # -0.99f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    nop

    .line 205
    .end local v0    # "$this$_get_DirectionsBoat__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-DirectionsBoatKt$DirectionsBoat$1$2":I
    nop

    .line 206
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 204
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 207
    nop

    .line 208
    .end local v11    # "$i$f$PathData":I
    nop

    .line 209
    nop

    .line 210
    nop

    .line 211
    nop

    .line 212
    nop

    .line 213
    nop

    .line 214
    nop

    .line 215
    nop

    .line 216
    nop

    .line 217
    nop

    .line 202
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 218
    nop

    .line 219
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

    .line 53
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v41    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 142
    .end local v42    # "$this$_get_DirectionsBoat__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v43    # "$i$a$-materialIcon$default-DirectionsBoatKt$DirectionsBoat$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v40    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/DirectionsBoatKt;->_directionsBoat:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 126
    sget-object v0, Landroidx/compose/material/icons/twotone/DirectionsBoatKt;->_directionsBoat:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
