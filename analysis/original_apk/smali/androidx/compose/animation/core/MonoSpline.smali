.class public final Landroidx/compose/animation/core/MonoSpline;
.super Ljava/lang/Object;
.source "MonoSpline.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J&\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u000bj\u0008\u0012\u0004\u0012\u00020\u0003`\u000c2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u0002J8\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011H\u0002J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0003J\u0016\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eJ\u0016\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0003J\u0018\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J8\u0010 \u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011H\u0002J(\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u000bj\u0008\u0012\u0004\u0012\u00020\u0003`\u000c2\u0006\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u001eH\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u000bj\u0008\u0012\u0004\u0012\u00020\u0003`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u000bj\u0008\u0012\u0004\u0012\u00020\u0003`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/animation/core/MonoSpline;",
        "",
        "time",
        "",
        "y",
        "",
        "([FLjava/util/List;)V",
        "isExtrapolate",
        "",
        "slopeTemp",
        "tangents",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "timePoints",
        "values",
        "copyData",
        "diff",
        "",
        "h",
        "x",
        "y1",
        "y2",
        "t1",
        "t2",
        "getPos",
        "",
        "t",
        "v",
        "Landroidx/compose/animation/core/AnimationVector;",
        "j",
        "",
        "getSlope",
        "interpolate",
        "makeFloatArray",
        "a",
        "b",
        "animation-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final isExtrapolate:Z

.field private final slopeTemp:[F

.field private final tangents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field

.field private final timePoints:[F

.field private final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/animation/core/MonoSpline;->$stable:I

    return-void
.end method

.method public constructor <init>([FLjava/util/List;)V
    .locals 19
    .param p1, "time"    # [F
    .param p2, "y"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "[F>;)V"
        }
    .end annotation

    .line 25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/compose/animation/core/MonoSpline;->isExtrapolate:Z

    .line 33
    nop

    .line 34
    array-length v4, v1

    .line 35
    .local v4, "n":I
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    array-length v6, v6

    .line 36
    .local v6, "dim":I
    new-array v7, v6, [F

    iput-object v7, v0, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    .line 37
    add-int/lit8 v7, v4, -0x1

    invoke-direct {v0, v7, v6}, Landroidx/compose/animation/core/MonoSpline;->makeFloatArray(II)Ljava/util/ArrayList;

    move-result-object v7

    .line 38
    .local v7, "slope":Ljava/util/ArrayList;
    invoke-direct {v0, v4, v6}, Landroidx/compose/animation/core/MonoSpline;->makeFloatArray(II)Ljava/util/ArrayList;

    move-result-object v8

    .line 39
    .local v8, "tangent":Ljava/util/ArrayList;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 40
    const/4 v10, 0x0

    .local v10, "i":I
    add-int/lit8 v11, v4, -0x1

    :goto_1
    if-ge v10, v11, :cond_1

    .line 41
    add-int/lit8 v12, v10, 0x1

    aget v12, v1, v12

    aget v13, v1, v10

    sub-float/2addr v12, v13

    .line 42
    .local v12, "dt":F
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    add-int/lit8 v14, v10, 0x1

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    aget v14, v14, v9

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [F

    aget v15, v15, v9

    sub-float/2addr v14, v15

    div-float/2addr v14, v12

    aput v14, v13, v9

    .line 43
    if-nez v10, :cond_0

    .line 44
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    aget v14, v14, v9

    aput v14, v13, v9

    goto :goto_2

    .line 46
    :cond_0
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    add-int/lit8 v14, v10, -0x1

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    aget v14, v14, v9

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [F

    aget v15, v15, v9

    add-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    aput v14, v13, v9

    .line 40
    .end local v12    # "dt":F
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 49
    .end local v10    # "i":I
    :cond_1
    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    add-int/lit8 v11, v4, -0x2

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    aget v11, v11, v9

    aput v11, v10, v9

    .line 39
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 51
    .end local v9    # "j":I
    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    add-int/lit8 v10, v4, -0x1

    :goto_3
    if-ge v9, v10, :cond_7

    .line 52
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    if-ge v11, v6, :cond_6

    .line 53
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    aget v12, v12, v11

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-nez v12, :cond_3

    move v12, v3

    goto :goto_5

    :cond_3
    move v12, v5

    :goto_5
    if-eqz v12, :cond_4

    .line 54
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    aput v13, v12, v11

    .line 55
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    aput v13, v12, v11

    move/from16 v16, v4

    goto :goto_6

    .line 57
    :cond_4
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    aget v12, v12, v11

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    aget v13, v13, v11

    div-float/2addr v12, v13

    .line 58
    .local v12, "a":F
    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    aget v13, v13, v11

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    aget v14, v14, v11

    div-float/2addr v13, v14

    .line 59
    .local v13, "b":F
    float-to-double v14, v12

    move/from16 v16, v4

    .end local v4    # "n":I
    .local v16, "n":I
    float-to-double v3, v13

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 60
    .local v3, "h":F
    float-to-double v14, v3

    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    cmpl-double v4, v14, v17

    if-lez v4, :cond_5

    .line 61
    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v4, v3

    .line 62
    .local v4, "t":F
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    mul-float v15, v4, v12

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [F

    aget v17, v17, v11

    mul-float v15, v15, v17

    aput v15, v14, v11

    .line 63
    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    mul-float v15, v4, v13

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [F

    aget v17, v17, v11

    mul-float v15, v15, v17

    aput v15, v14, v11

    .line 52
    .end local v3    # "h":F
    .end local v4    # "t":F
    .end local v12    # "a":F
    .end local v13    # "b":F
    :cond_5
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v16

    const/4 v3, 0x1

    goto/16 :goto_4

    .end local v16    # "n":I
    .local v4, "n":I
    :cond_6
    move/from16 v16, v4

    .line 51
    .end local v4    # "n":I
    .end local v11    # "j":I
    .restart local v16    # "n":I
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    goto/16 :goto_3

    .line 68
    .end local v9    # "i":I
    .end local v16    # "n":I
    .restart local v4    # "n":I
    :cond_7
    iput-object v1, v0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    .line 69
    invoke-direct {v0, v2}, Landroidx/compose/animation/core/MonoSpline;->copyData(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    .line 70
    iput-object v8, v0, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    .line 71
    .end local v4    # "n":I
    .end local v6    # "dim":I
    .end local v7    # "slope":Ljava/util/ArrayList;
    .end local v8    # "tangent":Ljava/util/ArrayList;
    nop

    .line 26
    return-void
.end method

.method private final copyData(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "y"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "ret":Ljava/util/ArrayList;
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    return-object v0
.end method

.method private final diff(FFFFFF)F
    .locals 4
    .param p1, "h"    # F
    .param p2, "x"    # F
    .param p3, "y1"    # F
    .param p4, "y2"    # F
    .param p5, "t1"    # F
    .param p6, "t2"    # F

    .line 351
    mul-float v0, p2, p2

    .line 352
    .local v0, "x2":F
    const/4 v1, -0x6

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v1, p4

    .line 353
    const/4 v2, 0x6

    int-to-float v2, v2

    mul-float v3, v2, p2

    mul-float/2addr v3, p4

    .line 352
    add-float/2addr v1, v3

    .line 354
    mul-float v3, v2, v0

    mul-float/2addr v3, p3

    .line 352
    add-float/2addr v1, v3

    .line 355
    mul-float/2addr v2, p2

    mul-float/2addr v2, p3

    .line 352
    sub-float/2addr v1, v2

    .line 356
    const/4 v2, 0x3

    int-to-float v2, v2

    mul-float v3, v2, p1

    mul-float/2addr v3, p6

    mul-float/2addr v3, v0

    .line 352
    add-float/2addr v1, v3

    .line 357
    mul-float/2addr v2, p1

    mul-float/2addr v2, p5

    mul-float/2addr v2, v0

    .line 352
    add-float/2addr v1, v2

    .line 358
    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    mul-float/2addr v2, p6

    mul-float/2addr v2, p2

    .line 352
    sub-float/2addr v1, v2

    .line 359
    const/4 v2, 0x4

    int-to-float v2, v2

    mul-float/2addr v2, p1

    mul-float/2addr v2, p5

    mul-float/2addr v2, p2

    .line 352
    sub-float/2addr v1, v2

    .line 359
    mul-float v2, p1, p5

    .line 352
    add-float/2addr v1, v2

    return v1
.end method

.method private final getSlope(FI)F
    .locals 17
    .param p1, "time"    # F
    .param p2, "j"    # I

    .line 302
    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 303
    .local v0, "t":F
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v8, v1

    .line 304
    .local v8, "n":I
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 305
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v1, v2

    move v9, v0

    goto :goto_0

    .line 306
    :cond_0
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v8, -0x1

    aget v1, v1, v2

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 307
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v8, -0x1

    aget v0, v1, v2

    move v9, v0

    goto :goto_0

    .line 306
    :cond_1
    move v9, v0

    .line 309
    .end local v0    # "t":F
    .local v9, "t":F
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/lit8 v1, v8, -0x1

    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    :goto_1
    if-ge v10, v1, :cond_3

    .line 310
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v10, 0x1

    aget v0, v0, v2

    cmpg-float v0, v9, v0

    if-gtz v0, :cond_2

    .line 311
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v1, v10, 0x1

    aget v0, v0, v1

    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v10

    sub-float v11, v0, v1

    .line 312
    .local v11, "h":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v10

    sub-float v0, v9, v0

    div-float v12, v0, v11

    .line 313
    .local v12, "x":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v13, v0, p2

    .line 314
    .local v13, "y1":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v14, v0, p2

    .line 315
    .local v14, "y2":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v15, v0, p2

    .line 316
    .local v15, "t1":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v16, v0, p2

    .line 317
    .local v16, "t2":F
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->diff(FFFFFF)F

    move-result v0

    div-float/2addr v0, v11

    return v0

    .line 309
    .end local v11    # "h":F
    .end local v12    # "x":F
    .end local v13    # "y1":F
    .end local v14    # "y2":F
    .end local v15    # "t1":F
    .end local v16    # "t2":F
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 320
    .end local v10    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final interpolate(FFFFFF)F
    .locals 6
    .param p1, "h"    # F
    .param p2, "x"    # F
    .param p3, "y1"    # F
    .param p4, "y2"    # F
    .param p5, "t1"    # F
    .param p6, "t2"    # F

    .line 334
    mul-float v0, p2, p2

    .line 335
    .local v0, "x2":F
    mul-float v1, v0, p2

    .line 336
    .local v1, "x3":F
    const/4 v2, -0x2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, p4

    .line 337
    const/4 v3, 0x3

    int-to-float v3, v3

    mul-float v4, v3, v0

    mul-float/2addr v4, p4

    .line 336
    add-float/2addr v2, v4

    .line 338
    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float v5, v4, v1

    mul-float/2addr v5, p3

    .line 336
    add-float/2addr v2, v5

    .line 339
    mul-float/2addr v3, v0

    mul-float/2addr v3, p3

    .line 336
    sub-float/2addr v2, v3

    .line 340
    nop

    .line 336
    add-float/2addr v2, p3

    .line 340
    mul-float v3, p1, p6

    mul-float/2addr v3, v1

    .line 336
    add-float/2addr v2, v3

    .line 341
    mul-float v3, p1, p5

    mul-float/2addr v3, v1

    .line 336
    add-float/2addr v2, v3

    .line 342
    mul-float v3, p1, p6

    mul-float/2addr v3, v0

    .line 336
    sub-float/2addr v2, v3

    .line 343
    mul-float/2addr v4, p1

    mul-float/2addr v4, p5

    mul-float/2addr v4, v0

    .line 336
    sub-float/2addr v2, v4

    .line 344
    mul-float v3, p1, p5

    mul-float/2addr v3, p2

    .line 336
    add-float/2addr v2, v3

    return v2
.end method

.method private final makeFloatArray(II)Ljava/util/ArrayList;
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "ret":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 80
    new-array v2, p2, [F

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getPos(FI)F
    .locals 17
    .param p1, "t"    # F
    .param p2, "j"    # I

    .line 152
    move-object/from16 v7, p0

    move/from16 v8, p2

    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v9, v0

    .line 153
    .local v9, "n":I
    iget-boolean v0, v7, Landroidx/compose/animation/core/MonoSpline;->isExtrapolate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 155
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v8

    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v2, v2, v1

    sub-float v2, p1, v2

    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v3, v1

    invoke-direct {v7, v1, v8}, Landroidx/compose/animation/core/MonoSpline;->getSlope(FI)F

    move-result v1

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0

    .line 157
    :cond_0
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v9, -0x1

    aget v0, v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    .line 158
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v8

    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v9, -0x1

    aget v1, v1, v2

    sub-float v1, p1, v1

    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v3, v9, -0x1

    aget v2, v2, v3

    invoke-direct {v7, v2, v8}, Landroidx/compose/animation/core/MonoSpline;->getSlope(FI)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0

    .line 161
    :cond_1
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 162
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v8

    return v0

    .line 164
    :cond_2
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v9, -0x1

    aget v0, v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    .line 165
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v8

    return v0

    .line 168
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/lit8 v2, v9, -0x1

    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    :goto_0
    if-ge v10, v2, :cond_7

    .line 169
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v10

    cmpg-float v0, p1, v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 170
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v8

    return v0

    .line 172
    :cond_5
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v3, v10, 0x1

    aget v0, v0, v3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 173
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v1, v10, 0x1

    aget v0, v0, v1

    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v10

    sub-float v11, v0, v1

    .line 174
    .local v11, "h":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v10

    sub-float v0, p1, v0

    div-float v12, v0, v11

    .line 175
    .local v12, "x":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v13, v0, v8

    .line 176
    .local v13, "y1":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v14, v0, v8

    .line 177
    .local v14, "y2":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v15, v0, v8

    .line 178
    .local v15, "t1":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v16, v0, v8

    .line 179
    .local v16, "t2":F
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->interpolate(FFFFFF)F

    move-result v0

    return v0

    .line 168
    .end local v11    # "h":F
    .end local v12    # "x":F
    .end local v13    # "y1":F
    .end local v14    # "y2":F
    .end local v15    # "t1":F
    .end local v16    # "t2":F
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 182
    .end local v10    # "i":I
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final getPos(FLandroidx/compose/animation/core/AnimationVector;)V
    .locals 19
    .param p1, "t"    # F
    .param p2, "v"    # Landroidx/compose/animation/core/AnimationVector;

    .line 189
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v9, v0

    .line 190
    .local v9, "n":I
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v10, v0

    .line 191
    .local v10, "dim":I
    iget-boolean v0, v7, Landroidx/compose/animation/core/MonoSpline;->isExtrapolate:Z

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 193
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v1

    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    invoke-virtual {v7, v0, v2}, Landroidx/compose/animation/core/MonoSpline;->getSlope(F[F)V

    .line 194
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v10, :cond_0

    .line 195
    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    aget v2, v2, v0

    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v3, v3, v1

    sub-float v3, p1, v3

    iget-object v4, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    aget v4, v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v8, v0, v2}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "j":I
    :cond_0
    return-void

    .line 199
    :cond_1
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v9, -0x1

    aget v0, v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    .line 200
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v1, v9, -0x1

    aget v0, v0, v1

    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    invoke-virtual {v7, v0, v1}, Landroidx/compose/animation/core/MonoSpline;->getSlope(F[F)V

    .line 201
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_1
    if-ge v0, v10, :cond_2

    .line 202
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    aget v1, v1, v0

    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v3, v9, -0x1

    aget v2, v2, v3

    sub-float v2, p1, v2

    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    aget v3, v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v8, v0, v1}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    .end local v0    # "j":I
    :cond_2
    return-void

    .line 207
    :cond_3
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_5

    .line 208
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_2
    if-ge v0, v10, :cond_4

    .line 209
    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    aget v2, v2, v0

    invoke-virtual {v8, v0, v2}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 211
    .end local v0    # "j":I
    :cond_4
    return-void

    .line 213
    :cond_5
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v9, -0x1

    aget v0, v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    .line 214
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_3
    if-ge v0, v10, :cond_6

    .line 215
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    aget v1, v1, v0

    invoke-virtual {v8, v0, v1}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 217
    .end local v0    # "j":I
    :cond_6
    return-void

    .line 220
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/lit8 v2, v9, -0x1

    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    :goto_4
    if-ge v11, v2, :cond_c

    .line 221
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v11

    cmpg-float v0, p1, v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    move v0, v1

    :goto_5
    if-eqz v0, :cond_9

    .line 222
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_6
    if-ge v0, v10, :cond_9

    .line 223
    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    aget v3, v3, v0

    invoke-virtual {v8, v0, v3}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 226
    .end local v0    # "j":I
    :cond_9
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v3, v11, 0x1

    aget v0, v0, v3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_b

    .line 227
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v1, v11, 0x1

    aget v0, v0, v1

    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v11

    sub-float v12, v0, v1

    .line 228
    .local v12, "h":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v11

    sub-float v0, p1, v0

    div-float v13, v0, v12

    .line 229
    .local v13, "x":F
    const/4 v0, 0x0

    move v14, v0

    .local v14, "j":I
    :goto_7
    if-ge v14, v10, :cond_a

    .line 230
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v15, v0, v14

    .line 231
    .local v15, "y1":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v16, v0, v14

    .line 232
    .local v16, "y2":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v17, v0, v14

    .line 233
    .local v17, "t1":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v18, v0, v14

    .line 234
    .local v18, "t2":F
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->interpolate(FFFFFF)F

    move-result v0

    invoke-virtual {v8, v14, v0}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    .line 229
    .end local v15    # "y1":F
    .end local v16    # "y2":F
    .end local v17    # "t1":F
    .end local v18    # "t2":F
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 236
    .end local v14    # "j":I
    :cond_a
    return-void

    .line 220
    .end local v12    # "h":F
    .end local v13    # "x":F
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 239
    .end local v11    # "i":I
    :cond_c
    return-void
.end method

.method public final getPos(F[F)V
    .locals 18
    .param p1, "t"    # F
    .param p2, "v"    # [F

    .line 96
    move-object/from16 v7, p0

    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v8, v0

    .line 97
    .local v8, "n":I
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v9, v0

    .line 98
    .local v9, "dim":I
    iget-boolean v0, v7, Landroidx/compose/animation/core/MonoSpline;->isExtrapolate:Z

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 100
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v1

    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    invoke-virtual {v7, v0, v2}, Landroidx/compose/animation/core/MonoSpline;->getSlope(F[F)V

    .line 101
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v9, :cond_0

    .line 102
    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    aget v2, v2, v0

    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v3, v3, v1

    sub-float v3, p1, v3

    iget-object v4, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    aget v4, v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p2, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "j":I
    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v8, -0x1

    aget v0, v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    .line 107
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v1, v8, -0x1

    aget v0, v0, v1

    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    invoke-virtual {v7, v0, v1}, Landroidx/compose/animation/core/MonoSpline;->getSlope(F[F)V

    .line 108
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_1
    if-ge v0, v9, :cond_2

    .line 109
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    aget v1, v1, v0

    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v3, v8, -0x1

    aget v2, v2, v3

    sub-float v2, p1, v2

    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    aget v3, v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    .end local v0    # "j":I
    :cond_2
    return-void

    .line 114
    :cond_3
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_5

    .line 115
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_2
    if-ge v0, v9, :cond_4

    .line 116
    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    aget v2, v2, v0

    aput v2, p2, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 118
    .end local v0    # "j":I
    :cond_4
    return-void

    .line 120
    :cond_5
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v8, -0x1

    aget v0, v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    .line 121
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_3
    if-ge v0, v9, :cond_6

    .line 122
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    aget v1, v1, v0

    aput v1, p2, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 124
    .end local v0    # "j":I
    :cond_6
    return-void

    .line 127
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/lit8 v2, v8, -0x1

    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    :goto_4
    if-ge v10, v2, :cond_c

    .line 128
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v10

    cmpg-float v0, p1, v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    move v0, v1

    :goto_5
    if-eqz v0, :cond_9

    .line 129
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_6
    if-ge v0, v9, :cond_9

    .line 130
    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    aget v3, v3, v0

    aput v3, p2, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 133
    .end local v0    # "j":I
    :cond_9
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v3, v10, 0x1

    aget v0, v0, v3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_b

    .line 134
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v1, v10, 0x1

    aget v0, v0, v1

    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v10

    sub-float v11, v0, v1

    .line 135
    .local v11, "h":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v10

    sub-float v0, p1, v0

    div-float v12, v0, v11

    .line 136
    .local v12, "x":F
    const/4 v0, 0x0

    move v13, v0

    .local v13, "j":I
    :goto_7
    if-ge v13, v9, :cond_a

    .line 137
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v14, v0, v13

    .line 138
    .local v14, "y1":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v15, v0, v13

    .line 139
    .local v15, "y2":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v16, v0, v13

    .line 140
    .local v16, "t1":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v17, v0, v13

    .line 141
    .local v17, "t2":F
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->interpolate(FFFFFF)F

    move-result v0

    aput v0, p2, v13

    .line 136
    .end local v14    # "y1":F
    .end local v15    # "y2":F
    .end local v16    # "t1":F
    .end local v17    # "t2":F
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 143
    .end local v13    # "j":I
    :cond_a
    return-void

    .line 127
    .end local v11    # "h":F
    .end local v12    # "x":F
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 146
    .end local v10    # "i":I
    :cond_c
    return-void
.end method

.method public final getSlope(FLandroidx/compose/animation/core/AnimationVector;)V
    .locals 19
    .param p1, "time"    # F
    .param p2, "v"    # Landroidx/compose/animation/core/AnimationVector;

    .line 276
    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 277
    .local v0, "t":F
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v8, v1

    .line 278
    .local v8, "n":I
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v9, v1

    .line 279
    .local v9, "dim":I
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v2

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 280
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v1, v2

    move v10, v0

    goto :goto_0

    .line 281
    :cond_0
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v8, -0x1

    aget v1, v1, v2

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 282
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v8, -0x1

    aget v0, v1, v2

    move v10, v0

    goto :goto_0

    .line 281
    :cond_1
    move v10, v0

    .line 284
    .end local v0    # "t":F
    .local v10, "t":F
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/lit8 v1, v8, -0x1

    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    :goto_1
    if-ge v11, v1, :cond_4

    .line 285
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v11, 0x1

    aget v0, v0, v2

    cmpg-float v0, v10, v0

    if-gtz v0, :cond_3

    .line 286
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v1, v11, 0x1

    aget v0, v0, v1

    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v11

    sub-float v12, v0, v1

    .line 287
    .local v12, "h":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v11

    sub-float v0, v10, v0

    div-float v13, v0, v12

    .line 288
    .local v13, "x":F
    const/4 v0, 0x0

    move v14, v0

    .local v14, "j":I
    :goto_2
    if-ge v14, v9, :cond_2

    .line 289
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v15, v0, v14

    .line 290
    .local v15, "y1":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v16, v0, v14

    .line 291
    .local v16, "y2":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v17, v0, v14

    .line 292
    .local v17, "t1":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v18, v0, v14

    .line 293
    .local v18, "t2":F
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->diff(FFFFFF)F

    move-result v0

    div-float/2addr v0, v12

    move-object/from16 v2, p2

    invoke-virtual {v2, v14, v0}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    .line 288
    .end local v15    # "y1":F
    .end local v16    # "y2":F
    .end local v17    # "t1":F
    .end local v18    # "t2":F
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v2, p2

    .line 295
    .end local v14    # "j":I
    goto :goto_3

    .line 284
    .end local v12    # "h":F
    .end local v13    # "x":F
    :cond_3
    move-object/from16 v2, p2

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v2, p2

    .line 298
    .end local v11    # "i":I
    :goto_3
    return-void
.end method

.method public final getSlope(F[F)V
    .locals 19
    .param p1, "time"    # F
    .param p2, "v"    # [F

    .line 246
    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 247
    .local v0, "t":F
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v8, v1

    .line 248
    .local v8, "n":I
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v9, v1

    .line 249
    .local v9, "dim":I
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v2

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 250
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v1, v2

    move v10, v0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v8, -0x1

    aget v1, v1, v2

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 252
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v8, -0x1

    aget v0, v1, v2

    move v10, v0

    goto :goto_0

    .line 251
    :cond_1
    move v10, v0

    .line 254
    .end local v0    # "t":F
    .local v10, "t":F
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/lit8 v1, v8, -0x1

    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    :goto_1
    if-ge v11, v1, :cond_4

    .line 255
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v2, v11, 0x1

    aget v0, v0, v2

    cmpg-float v0, v10, v0

    if-gtz v0, :cond_3

    .line 256
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v1, v11, 0x1

    aget v0, v0, v1

    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v11

    sub-float v12, v0, v1

    .line 257
    .local v12, "h":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v11

    sub-float v0, v10, v0

    div-float v13, v0, v12

    .line 258
    .local v13, "x":F
    const/4 v0, 0x0

    move v14, v0

    .local v14, "j":I
    :goto_2
    if-ge v14, v9, :cond_2

    .line 259
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v15, v0, v14

    .line 260
    .local v15, "y1":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v16, v0, v14

    .line 261
    .local v16, "y2":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v17, v0, v14

    .line 262
    .local v17, "t1":F
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v18, v0, v14

    .line 263
    .local v18, "t2":F
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->diff(FFFFFF)F

    move-result v0

    div-float/2addr v0, v12

    aput v0, p2, v14

    .line 258
    .end local v15    # "y1":F
    .end local v16    # "y2":F
    .end local v17    # "t1":F
    .end local v18    # "t2":F
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 265
    .end local v14    # "j":I
    :cond_2
    goto :goto_3

    .line 254
    .end local v12    # "h":F
    .end local v13    # "x":F
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 268
    .end local v11    # "i":I
    :cond_4
    :goto_3
    return-void
.end method
