.class public final Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;
.super Ljava/lang/Object;
.source "AndroidMatrixConversions.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidMatrixConversions.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidMatrixConversions.android.kt\nandroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt\n+ 2 Matrix.kt\nandroidx/compose/ui/graphics/Matrix\n*L\n1#1,112:1\n39#2:113\n39#2:114\n39#2:115\n39#2:116\n39#2:117\n39#2:118\n39#2:119\n*S KotlinDebug\n*F\n+ 1 AndroidMatrixConversions.android.kt\nandroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt\n*L\n58#1:113\n59#1:114\n60#1:115\n61#1:116\n62#1:117\n63#1:118\n64#1:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\t"
    }
    d2 = {
        "setFrom",
        "",
        "Landroid/graphics/Matrix;",
        "matrix",
        "Landroidx/compose/ui/graphics/Matrix;",
        "setFrom-EL8BTi8",
        "(Landroid/graphics/Matrix;[F)V",
        "setFrom-tU-YjHk",
        "([FLandroid/graphics/Matrix;)V",
        "ui-graphics_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final setFrom-EL8BTi8(Landroid/graphics/Matrix;[F)V
    .locals 22
    .param p0, "$this$setFrom_u2dEL8BTi8"    # Landroid/graphics/Matrix;
    .param p1, "matrix"    # [F

    .line 58
    const/4 v0, 0x0

    .local v0, "row$iv":I
    const/4 v1, 0x2

    .local v1, "column$iv":I
    const/4 v2, 0x0

    .line 113
    .local v2, "$i$f$get-impl":I
    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v1

    aget v0, p1, v3

    .line 58
    .end local v0    # "row$iv":I
    .end local v1    # "column$iv":I
    .end local v2    # "$i$f$get-impl":I
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_7

    .line 59
    const/4 v0, 0x1

    .restart local v0    # "row$iv":I
    const/4 v4, 0x2

    .local v4, "column$iv":I
    const/4 v5, 0x0

    .line 114
    .local v5, "$i$f$get-impl":I
    mul-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v4

    aget v0, p1, v6

    .line 59
    .end local v0    # "row$iv":I
    .end local v4    # "column$iv":I
    .end local v5    # "$i$f$get-impl":I
    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_7

    .line 60
    const/4 v0, 0x2

    .restart local v0    # "row$iv":I
    const/4 v4, 0x2

    .restart local v4    # "column$iv":I
    const/4 v5, 0x0

    .line 115
    .restart local v5    # "$i$f$get-impl":I
    mul-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v4

    aget v0, p1, v6

    .line 60
    .end local v0    # "row$iv":I
    .end local v4    # "column$iv":I
    .end local v5    # "$i$f$get-impl":I
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    if-eqz v0, :cond_7

    .line 61
    const/4 v0, 0x3

    .restart local v0    # "row$iv":I
    const/4 v4, 0x2

    .restart local v4    # "column$iv":I
    const/4 v5, 0x0

    .line 116
    .restart local v5    # "$i$f$get-impl":I
    mul-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v4

    aget v0, p1, v6

    .line 61
    .end local v0    # "row$iv":I
    .end local v4    # "column$iv":I
    .end local v5    # "$i$f$get-impl":I
    cmpg-float v0, v0, v1

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-eqz v0, :cond_7

    .line 62
    const/4 v0, 0x2

    .restart local v0    # "row$iv":I
    const/4 v4, 0x0

    .restart local v4    # "column$iv":I
    const/4 v5, 0x0

    .line 117
    .restart local v5    # "$i$f$get-impl":I
    mul-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v4

    aget v0, p1, v6

    .line 62
    .end local v0    # "row$iv":I
    .end local v4    # "column$iv":I
    .end local v5    # "$i$f$get-impl":I
    cmpg-float v0, v0, v1

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    if-eqz v0, :cond_7

    .line 63
    const/4 v0, 0x2

    .restart local v0    # "row$iv":I
    const/4 v4, 0x1

    .restart local v4    # "column$iv":I
    const/4 v5, 0x0

    .line 118
    .restart local v5    # "$i$f$get-impl":I
    mul-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v4

    aget v0, p1, v6

    .line 63
    .end local v0    # "row$iv":I
    .end local v4    # "column$iv":I
    .end local v5    # "$i$f$get-impl":I
    cmpg-float v0, v0, v1

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    if-eqz v0, :cond_7

    .line 64
    const/4 v0, 0x2

    .restart local v0    # "row$iv":I
    const/4 v4, 0x3

    .restart local v4    # "column$iv":I
    const/4 v5, 0x0

    .line 119
    .restart local v5    # "$i$f$get-impl":I
    mul-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v4

    aget v0, p1, v6

    .line 64
    .end local v0    # "row$iv":I
    .end local v4    # "column$iv":I
    .end local v5    # "$i$f$get-impl":I
    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v3

    :goto_6
    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v3

    .line 57
    :goto_7
    if-eqz v0, :cond_8

    .line 73
    aget v0, p1, v3

    .line 74
    .local v0, "scaleX":F
    aget v1, p1, v2

    .line 75
    .local v1, "skewY":F
    const/4 v4, 0x2

    aget v5, p1, v4

    .line 76
    .local v5, "v2":F
    const/4 v6, 0x3

    aget v7, p1, v6

    .line 77
    .local v7, "persp0":F
    const/4 v8, 0x4

    aget v9, p1, v8

    .line 78
    .local v9, "skewX":F
    const/4 v10, 0x5

    aget v11, p1, v10

    .line 79
    .local v11, "scaleY":F
    const/4 v12, 0x6

    aget v13, p1, v12

    .line 80
    .local v13, "v6":F
    const/4 v14, 0x7

    aget v15, p1, v14

    .line 81
    .local v15, "persp1":F
    const/16 v16, 0x8

    aget v17, p1, v16

    .line 83
    .local v17, "v8":F
    const/16 v18, 0xc

    aget v18, p1, v18

    .line 84
    .local v18, "translateX":F
    const/16 v19, 0xd

    aget v19, p1, v19

    .line 85
    .local v19, "translateY":F
    const/16 v20, 0xf

    aget v20, p1, v20

    .line 87
    .local v20, "persp2":F
    move-object/from16 v21, p1

    .line 89
    .local v21, "v":[F
    move-object/from16 v14, v21

    .end local v21    # "v":[F
    .local v14, "v":[F
    aput v0, v14, v3

    .line 90
    aput v9, v14, v2

    .line 91
    aput v18, v14, v4

    .line 92
    aput v1, v14, v6

    .line 93
    aput v11, v14, v8

    .line 94
    aput v19, v14, v10

    .line 95
    aput v7, v14, v12

    .line 96
    const/16 v21, 0x7

    aput v15, v14, v21

    .line 97
    aput v20, v14, v16

    .line 99
    move-object/from16 v12, p0

    invoke-virtual {v12, v14}, Landroid/graphics/Matrix;->setValues([F)V

    .line 102
    aput v0, v14, v3

    .line 103
    aput v1, v14, v2

    .line 104
    aput v5, v14, v4

    .line 105
    aput v7, v14, v6

    .line 106
    aput v9, v14, v8

    .line 107
    aput v11, v14, v10

    .line 108
    const/4 v2, 0x6

    aput v13, v14, v2

    .line 109
    const/4 v2, 0x7

    aput v15, v14, v2

    .line 110
    aput v17, v14, v16

    .line 111
    return-void

    .line 57
    .end local v0    # "scaleX":F
    .end local v1    # "skewY":F
    .end local v5    # "v2":F
    .end local v7    # "persp0":F
    .end local v9    # "skewX":F
    .end local v11    # "scaleY":F
    .end local v13    # "v6":F
    .end local v14    # "v":[F
    .end local v15    # "persp1":F
    .end local v17    # "v8":F
    .end local v18    # "translateX":F
    .end local v19    # "translateY":F
    .end local v20    # "persp2":F
    :cond_8
    move-object/from16 v12, p0

    const/4 v0, 0x0

    .line 66
    .local v0, "$i$a$-require-AndroidMatrixConversions_androidKt$setFrom$1":I
    nop

    .line 57
    .end local v0    # "$i$a$-require-AndroidMatrixConversions_androidKt$setFrom$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Android does not support arbitrary transforms"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final setFrom-tU-YjHk([FLandroid/graphics/Matrix;)V
    .locals 20
    .param p0, "$this$setFrom_u2dtU_u2dYjHk"    # [F
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 23
    move-object/from16 v0, p0

    .line 24
    .local v0, "v":[F
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 25
    const/4 v2, 0x0

    aget v3, v0, v2

    .line 26
    .local v3, "scaleX":F
    const/4 v4, 0x1

    aget v5, v0, v4

    .line 27
    .local v5, "skewX":F
    const/4 v6, 0x2

    aget v7, v0, v6

    .line 28
    .local v7, "translateX":F
    const/4 v8, 0x3

    aget v9, v0, v8

    .line 29
    .local v9, "skewY":F
    const/4 v10, 0x4

    aget v11, v0, v10

    .line 30
    .local v11, "scaleY":F
    const/4 v12, 0x5

    aget v13, v0, v12

    .line 31
    .local v13, "translateY":F
    const/4 v14, 0x6

    aget v15, v0, v14

    .line 32
    .local v15, "persp0":F
    const/16 v16, 0x7

    aget v17, v0, v16

    .line 33
    .local v17, "persp1":F
    const/16 v18, 0x8

    aget v19, v0, v18

    .line 35
    .local v19, "persp2":F
    aput v3, v0, v2

    .line 36
    aput v9, v0, v4

    .line 37
    const/4 v2, 0x0

    aput v2, v0, v6

    .line 38
    aput v15, v0, v8

    .line 39
    aput v5, v0, v10

    .line 40
    aput v11, v0, v12

    .line 41
    aput v2, v0, v14

    .line 42
    aput v17, v0, v16

    .line 43
    aput v2, v0, v18

    .line 44
    const/16 v4, 0x9

    aput v2, v0, v4

    .line 45
    const/16 v4, 0xa

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v0, v4

    .line 46
    const/16 v4, 0xb

    aput v2, v0, v4

    .line 47
    const/16 v4, 0xc

    aput v7, v0, v4

    .line 48
    const/16 v4, 0xd

    aput v13, v0, v4

    .line 49
    const/16 v4, 0xe

    aput v2, v0, v4

    .line 50
    const/16 v2, 0xf

    aput v19, v0, v2

    .line 51
    return-void
.end method
