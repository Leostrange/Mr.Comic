.class public final Landroidx/compose/material3/carousel/Arrangement$Companion;
.super Ljava/lang/Object;
.source "Arrangement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/carousel/Arrangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008H\u0002JH\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0012JP\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/material3/carousel/Arrangement$Companion;",
        "",
        "()V",
        "MediumItemFlexPercentage",
        "",
        "calculateLargeSize",
        "availableSpace",
        "smallCount",
        "",
        "smallSize",
        "mediumCount",
        "largeCount",
        "findLowestCostArrangement",
        "Landroidx/compose/material3/carousel/Arrangement;",
        "targetSmallSize",
        "smallSizeRange",
        "Landroidx/annotation/FloatRange;",
        "smallCounts",
        "",
        "targetMediumSize",
        "mediumCounts",
        "targetLargeSize",
        "largeCounts",
        "fit",
        "priority",
        "mediumSize",
        "largeSize",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/carousel/Arrangement$Companion;-><init>()V

    return-void
.end method

.method private final calculateLargeSize(FIFII)F
    .locals 4
    .param p1, "availableSpace"    # F
    .param p2, "smallCount"    # I
    .param p3, "smallSize"    # F
    .param p4, "mediumCount"    # I
    .param p5, "largeCount"    # I

    .line 258
    nop

    .line 259
    int-to-float v0, p2

    int-to-float v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    .line 258
    sub-float v0, p1, v0

    .line 260
    int-to-float v1, p5

    int-to-float v3, p4

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 258
    div-float/2addr v0, v1

    return v0
.end method

.method private final fit(IFIFLandroidx/annotation/FloatRange;IFIF)Landroidx/compose/material3/carousel/Arrangement;
    .locals 18
    .param p1, "priority"    # I
    .param p2, "availableSpace"    # F
    .param p3, "smallCount"    # I
    .param p4, "smallSize"    # F
    .param p5, "smallSizeRange"    # Landroidx/annotation/FloatRange;
    .param p6, "mediumCount"    # I
    .param p7, "mediumSize"    # F
    .param p8, "largeCount"    # I
    .param p9, "largeSize"    # F

    .line 170
    move/from16 v8, p3

    move/from16 v9, p6

    move/from16 v10, p8

    .line 171
    invoke-interface/range {p5 .. p5}, Landroidx/annotation/FloatRange;->from()D

    move-result-wide v0

    double-to-float v0, v0

    .line 172
    invoke-interface/range {p5 .. p5}, Landroidx/annotation/FloatRange;->to()D

    move-result-wide v1

    double-to-float v1, v1

    .line 170
    move/from16 v11, p4

    invoke-static {v11, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 174
    .local v0, "arrangedSmallSize":F
    move/from16 v6, p7

    .line 175
    .local v6, "arrangedMediumSize":F
    move/from16 v7, p9

    .line 177
    .local v7, "arrangedLargeSize":F
    int-to-float v1, v10

    mul-float/2addr v1, v7

    .line 178
    int-to-float v2, v9

    mul-float/2addr v2, v6

    .line 177
    add-float/2addr v1, v2

    .line 178
    int-to-float v2, v8

    mul-float/2addr v2, v0

    .line 177
    add-float v12, v1, v2

    .line 179
    .local v12, "totalSpaceTakenByArrangement":F
    sub-float v13, p2, v12

    .line 182
    .local v13, "delta":F
    const/4 v14, 0x0

    if-lez v8, :cond_0

    cmpl-float v1, v13, v14

    if-lez v1, :cond_0

    .line 184
    nop

    .line 185
    int-to-float v1, v8

    div-float v1, v13, v1

    .line 186
    invoke-interface/range {p5 .. p5}, Landroidx/annotation/FloatRange;->to()D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 184
    add-float/2addr v0, v1

    goto :goto_0

    .line 188
    :cond_0
    if-lez v8, :cond_1

    cmpg-float v1, v13, v14

    if-gez v1, :cond_1

    .line 190
    nop

    .line 191
    int-to-float v1, v8

    div-float v1, v13, v1

    .line 192
    invoke-interface/range {p5 .. p5}, Landroidx/annotation/FloatRange;->from()D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 190
    add-float/2addr v0, v1

    .line 197
    :cond_1
    :goto_0
    if-lez v8, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v14

    :goto_1
    move v15, v1

    .line 198
    .end local v0    # "arrangedSmallSize":F
    .local v15, "arrangedSmallSize":F
    nop

    .line 199
    nop

    .line 200
    nop

    .line 198
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v15

    move/from16 v4, p6

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/carousel/Arrangement$Companion;->calculateLargeSize(FIFII)F

    move-result v0

    .line 202
    .end local v7    # "arrangedLargeSize":F
    .local v0, "arrangedLargeSize":F
    add-float v1, v0, v15

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 207
    .end local v6    # "arrangedMediumSize":F
    .local v1, "arrangedMediumSize":F
    if-lez v9, :cond_5

    cmpg-float v2, v0, p9

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    .line 208
    sub-float v2, p9, v0

    int-to-float v3, v10

    mul-float/2addr v2, v3

    .line 210
    .local v2, "targetAdjustment":F
    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v1

    int-to-float v4, v9

    mul-float/2addr v3, v4

    .line 209
    nop

    .line 211
    .local v3, "availableMediumFlex":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 212
    .local v4, "distribute":F
    cmpl-float v5, v2, v14

    if-lez v5, :cond_4

    .line 214
    int-to-float v5, v9

    div-float v5, v4, v5

    sub-float/2addr v1, v5

    .line 215
    int-to-float v5, v10

    div-float v5, v4, v5

    add-float/2addr v0, v5

    move v14, v0

    move/from16 v16, v1

    goto :goto_3

    .line 218
    :cond_4
    int-to-float v5, v9

    div-float v5, v4, v5

    add-float/2addr v1, v5

    .line 219
    int-to-float v5, v10

    div-float v5, v4, v5

    sub-float/2addr v0, v5

    move v14, v0

    move/from16 v16, v1

    goto :goto_3

    .line 223
    .end local v2    # "targetAdjustment":F
    .end local v3    # "availableMediumFlex":F
    .end local v4    # "distribute":F
    :cond_5
    move v14, v0

    move/from16 v16, v1

    .end local v0    # "arrangedLargeSize":F
    .end local v1    # "arrangedMediumSize":F
    .local v14, "arrangedLargeSize":F
    .local v16, "arrangedMediumSize":F
    :goto_3
    new-instance v17, Landroidx/compose/material3/carousel/Arrangement;

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

    .line 223
    move-object/from16 v0, v17

    move/from16 v1, p1

    move v2, v15

    move/from16 v3, p3

    move/from16 v4, v16

    move/from16 v5, p6

    move v6, v14

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/carousel/Arrangement;-><init>(IFIFIFI)V

    return-object v17
.end method


# virtual methods
.method public final findLowestCostArrangement(FFLandroidx/annotation/FloatRange;[IF[IF[I)Landroidx/compose/material3/carousel/Arrangement;
    .locals 25
    .param p1, "availableSpace"    # F
    .param p2, "targetSmallSize"    # F
    .param p3, "smallSizeRange"    # Landroidx/annotation/FloatRange;
    .param p4, "smallCounts"    # [I
    .param p5, "targetMediumSize"    # F
    .param p6, "mediumCounts"    # [I
    .param p7, "targetLargeSize"    # F
    .param p8, "largeCounts"    # [I

    .line 104
    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    const/4 v2, 0x0

    .line 105
    .local v2, "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    const/4 v3, 0x1

    .line 106
    .local v3, "priority":I
    array-length v14, v13

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v14, :cond_6

    aget v16, v13, v11

    .line 107
    .local v16, "largeCount":I
    array-length v10, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_5

    aget v17, v1, v9

    .line 108
    .local v17, "mediumCount":I
    array-length v8, v0

    move-object v7, v2

    move/from16 v18, v3

    const/4 v6, 0x0

    .end local v2    # "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    .end local v3    # "priority":I
    .local v7, "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    .local v18, "priority":I
    :goto_2
    if-ge v6, v8, :cond_4

    aget v19, v0, v6

    .line 109
    .local v19, "smallCount":I
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 109
    move-object/from16 v2, p0

    move/from16 v3, v18

    move/from16 v4, p1

    move/from16 v5, v19

    move/from16 v20, v6

    move/from16 v6, p2

    move-object v15, v7

    .end local v7    # "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    .local v15, "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    move-object/from16 v7, p3

    move/from16 v21, v8

    move/from16 v8, v17

    move/from16 v22, v9

    move/from16 v9, p5

    move/from16 v23, v10

    move/from16 v10, v16

    move/from16 v24, v11

    move/from16 v11, p7

    invoke-direct/range {v2 .. v11}, Landroidx/compose/material3/carousel/Arrangement$Companion;->fit(IFIFLandroidx/annotation/FloatRange;IFIF)Landroidx/compose/material3/carousel/Arrangement;

    move-result-object v2

    .line 120
    .local v2, "arrangement":Landroidx/compose/material3/carousel/Arrangement;
    if-eqz v15, :cond_1

    .line 121
    invoke-static {v2, v12}, Landroidx/compose/material3/carousel/Arrangement;->access$cost(Landroidx/compose/material3/carousel/Arrangement;F)F

    move-result v3

    .line 122
    invoke-static {v15, v12}, Landroidx/compose/material3/carousel/Arrangement;->access$cost(Landroidx/compose/material3/carousel/Arrangement;F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    goto :goto_3

    :cond_0
    move-object v7, v15

    goto :goto_5

    .line 124
    :cond_1
    :goto_3
    move-object v3, v2

    .line 125
    .end local v15    # "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    .local v3, "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    invoke-static {v3, v12}, Landroidx/compose/material3/carousel/Arrangement;->access$cost(Landroidx/compose/material3/carousel/Arrangement;F)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_4

    :cond_2
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_3

    .line 131
    return-object v3

    .line 125
    :cond_3
    move-object v7, v3

    .line 134
    .end local v3    # "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    .restart local v7    # "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    :goto_5
    nop

    .end local v2    # "arrangement":Landroidx/compose/material3/carousel/Arrangement;
    .end local v19    # "smallCount":I
    add-int/lit8 v18, v18, 0x1

    .line 108
    add-int/lit8 v6, v20, 0x1

    move/from16 v8, v21

    move/from16 v9, v22

    move/from16 v10, v23

    move/from16 v11, v24

    goto :goto_2

    :cond_4
    move-object v15, v7

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    .line 107
    .end local v7    # "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    .end local v17    # "mediumCount":I
    .restart local v15    # "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    add-int/lit8 v9, v22, 0x1

    move-object v2, v15

    move/from16 v3, v18

    goto :goto_1

    .end local v15    # "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    .end local v18    # "priority":I
    .local v2, "lowestCostArrangement":Landroidx/compose/material3/carousel/Arrangement;
    .local v3, "priority":I
    :cond_5
    move/from16 v24, v11

    .line 106
    .end local v16    # "largeCount":I
    add-int/lit8 v11, v24, 0x1

    goto/16 :goto_0

    .line 138
    :cond_6
    return-object v2
.end method
