.class public final Landroidx/compose/animation/core/PathEasing;
.super Ljava/lang/Object;
.source "PathEasing.kt"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/animation/core/PathEasing;",
        "Landroidx/compose/animation/core/Easing;",
        "path",
        "Landroidx/compose/ui/graphics/Path;",
        "(Landroidx/compose/ui/graphics/Path;)V",
        "offsetX",
        "",
        "offsetY",
        "transform",
        "",
        "fraction",
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
.field private final offsetX:[F

.field private final offsetY:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/Path;)V
    .locals 10
    .param p1, "path"    # Landroidx/compose/ui/graphics/Path;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    nop

    .line 51
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPathMeasure_androidKt;->PathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    .line 52
    .local v0, "pathMeasure":Landroidx/compose/ui/graphics/PathMeasure;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroidx/compose/ui/graphics/PathMeasure;->setPath(Landroidx/compose/ui/graphics/Path;Z)V

    .line 54
    invoke-interface {v0}, Landroidx/compose/ui/graphics/PathMeasure;->getLength()F

    move-result v2

    .line 55
    .local v2, "pathLength":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    const/4 v5, 0x1

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-eqz v4, :cond_6

    .line 60
    const v4, 0x3b03126f    # 0.002f

    div-float v4, v2, v4

    float-to-int v4, v4

    add-int/2addr v4, v5

    .line 59
    nop

    .line 62
    .local v4, "numPoints":I
    new-array v5, v4, [F

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_1

    aput v3, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iput-object v5, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    .line 63
    new-array v5, v4, [F

    :goto_2
    if-ge v1, v4, :cond_2

    aput v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iput-object v5, p0, Landroidx/compose/animation/core/PathEasing;->offsetY:[F

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v4, :cond_5

    .line 66
    int-to-float v3, v1

    mul-float/2addr v3, v2

    add-int/lit8 v5, v4, -0x1

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 67
    .local v3, "distance":F
    invoke-interface {v0, v3}, Landroidx/compose/ui/graphics/PathMeasure;->getPosition-tuRUvjQ(F)J

    move-result-wide v5

    .line 68
    .local v5, "offset":J
    iget-object v7, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    aput v8, v7, v1

    .line 69
    iget-object v7, p0, Landroidx/compose/animation/core/PathEasing;->offsetY:[F

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v8

    aput v8, v7, v1

    .line 70
    if-lez v1, :cond_4

    iget-object v7, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    aget v7, v7, v1

    iget-object v8, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    add-int/lit8 v9, v1, -0x1

    aget v8, v8, v9

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_3

    goto :goto_4

    .line 71
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Path needs to be continuously increasing"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 65
    .end local v3    # "distance":F
    .end local v5    # "offset":J
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 74
    .end local v0    # "pathMeasure":Landroidx/compose/ui/graphics/PathMeasure;
    .end local v1    # "i":I
    .end local v2    # "pathLength":F
    .end local v4    # "numPoints":I
    :cond_5
    nop

    .line 45
    return-void

    .line 55
    .restart local v0    # "pathMeasure":Landroidx/compose/ui/graphics/PathMeasure;
    .restart local v2    # "pathLength":F
    :cond_6
    const/4 v1, 0x0

    .line 56
    .local v1, "$i$a$-require-PathEasing$1":I
    nop

    .line 55
    .end local v1    # "$i$a$-require-PathEasing$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Path cannot be zero in length. Ensure that supplied Path starts at [0,0] and ends at [1,1]"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public transform(F)F
    .locals 9
    .param p1, "fraction"    # F

    .line 77
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 78
    return v0

    .line 79
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    .line 80
    return v0

    .line 84
    :cond_1
    iget-object v2, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move v3, p1

    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt;->binarySearch$default([FFIIILjava/lang/Object;)I

    move-result v0

    .line 87
    .local v0, "startIndex":I
    if-lez v0, :cond_2

    .line 88
    iget-object v1, p0, Landroidx/compose/animation/core/PathEasing;->offsetY:[F

    aget v1, v1, v0

    return v1

    .line 90
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 91
    .local v1, "insertionStartIndex":I
    iget-object v2, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_3

    .line 92
    iget-object v2, p0, Landroidx/compose/animation/core/PathEasing;->offsetY:[F

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->last([F)F

    move-result v2

    return v2

    .line 94
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .line 96
    .local v2, "endIndex":I
    iget-object v3, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    aget v3, v3, v2

    iget-object v4, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    .line 98
    .local v3, "xRange":F
    iget-object v4, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    aget v4, v4, v1

    sub-float v4, p1, v4

    .line 99
    .local v4, "tInRange":F
    div-float v5, v4, v3

    .line 101
    .local v5, "newFraction":F
    iget-object v6, p0, Landroidx/compose/animation/core/PathEasing;->offsetY:[F

    aget v6, v6, v1

    .line 102
    .local v6, "startY":F
    iget-object v7, p0, Landroidx/compose/animation/core/PathEasing;->offsetY:[F

    aget v7, v7, v2

    .line 104
    .local v7, "endY":F
    sub-float v8, v7, v6

    mul-float/2addr v8, v5

    add-float/2addr v8, v6

    return v8
.end method
