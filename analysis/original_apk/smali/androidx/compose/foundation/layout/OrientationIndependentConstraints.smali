.class public final Landroidx/compose/foundation/layout/OrientationIndependentConstraints;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRowColumnImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/OrientationIndependentConstraints\n*L\n1#1,871:1\n321#1:872\n322#1:873\n324#1:874\n323#1:875\n324#1:876\n321#1,4:877\n323#1,2:881\n321#1,2:883\n322#1:885\n324#1:886\n324#1:887\n322#1:888\n321#1:889\n322#1:890\n323#1:891\n324#1:892\n*S KotlinDebug\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/OrientationIndependentConstraints\n*L\n349#1:872\n350#1:873\n351#1:874\n351#1:875\n352#1:876\n358#1:877,4\n360#1:881,2\n360#1:883,2\n366#1:885\n368#1:886\n374#1:887\n376#1:888\n380#1:889\n381#1:890\n382#1:891\n383#1:892\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0081@\u0018\u00002\u00020\u0001B)\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0019\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0007\u0010\rB\u0011\u0008\u0002\u0012\u0006\u0010\u000e\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0007\u0010\u000fJ;\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001a\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010\u0011J\u0015\u0010 \u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010#\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008$\u0010\"J\u0013\u0010%\u001a\u00020\u0000\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\u000fJ\u001b\u0010\'\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010\rJ\u0010\u0010)\u001a\u00020*H\u00d6\u0001\u00a2\u0006\u0004\u0008+\u0010,R\u0012\u0010\u0006\u001a\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0005\u001a\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0011R\u0012\u0010\u0004\u001a\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011R\u0012\u0010\u0002\u001a\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0011R\u0016\u0010\u000e\u001a\u00020\nX\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u0015\u0088\u0001\u000e\u0092\u0001\u00020\n\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006-"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/OrientationIndependentConstraints;",
        "",
        "mainAxisMin",
        "",
        "mainAxisMax",
        "crossAxisMin",
        "crossAxisMax",
        "constructor-impl",
        "(IIII)J",
        "c",
        "Landroidx/compose/ui/unit/Constraints;",
        "orientation",
        "Landroidx/compose/foundation/layout/LayoutOrientation;",
        "(JLandroidx/compose/foundation/layout/LayoutOrientation;)J",
        "value",
        "(J)J",
        "getCrossAxisMax-impl",
        "(J)I",
        "getCrossAxisMin-impl",
        "getMainAxisMax-impl",
        "getMainAxisMin-impl",
        "J",
        "copy",
        "copy-yUG9Ft0",
        "(JIIII)J",
        "equals",
        "",
        "other",
        "equals-impl",
        "(JLjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "maxHeight",
        "maxHeight-impl",
        "(JLandroidx/compose/foundation/layout/LayoutOrientation;)I",
        "maxWidth",
        "maxWidth-impl",
        "stretchCrossAxis",
        "stretchCrossAxis-q4ezo7Y",
        "toBoxConstraints",
        "toBoxConstraints-OenEA2s",
        "toString",
        "",
        "toString-impl",
        "(J)Ljava/lang/String;",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field private final value:J


# direct methods
.method private synthetic constructor <init>(J)V
    .locals 0
    .param p1, "value"    # J

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->value:J

    return-void
.end method

.method public static final synthetic box-impl(J)Landroidx/compose/foundation/layout/OrientationIndependentConstraints;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(IIII)J
    .locals 2
    .param p0, "mainAxisMin"    # I
    .param p1, "mainAxisMax"    # I
    .param p2, "crossAxisMin"    # I
    .param p3, "crossAxisMax"    # I

    .line 331
    nop

    .line 333
    nop

    .line 334
    nop

    .line 335
    nop

    .line 336
    nop

    .line 332
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    .line 331
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(J)J

    move-result-wide v0

    .line 326
    return-wide v0
.end method

.method private static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method

.method public static constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J
    .locals 4
    .param p0, "c"    # J
    .param p2, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 340
    nop

    .line 341
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    .line 342
    :goto_0
    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v1, :cond_1

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    .line 343
    :goto_1
    sget-object v2, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v2, :cond_2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    .line 344
    :goto_2
    sget-object v3, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v3, :cond_3

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    goto :goto_3

    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    .line 340
    :goto_3
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copy-yUG9Ft0(JIIII)J
    .locals 2
    .param p0, "arg0"    # J
    .param p2, "mainAxisMin"    # I
    .param p3, "mainAxisMax"    # I
    .param p4, "crossAxisMin"    # I
    .param p5, "crossAxisMax"    # I

    .line 386
    nop

    .line 387
    nop

    .line 388
    nop

    .line 389
    nop

    .line 385
    invoke-static {p2, p3, p4, p5}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v0

    .line 390
    return-wide v0
.end method

.method public static synthetic copy-yUG9Ft0$default(JIIIIILjava/lang/Object;)J
    .locals 6

    .line 379
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 380
    const/4 p2, 0x0

    .line 889
    .local p2, "$i$f$getMainAxisMin-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p2

    move v2, p2

    .end local p2    # "$i$f$getMainAxisMin-impl":I
    goto :goto_0

    .line 379
    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x2

    if-eqz p2, :cond_1

    .line 381
    const/4 p2, 0x0

    .line 890
    .local p2, "$i$f$getMainAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p3

    move v3, p3

    .end local p2    # "$i$f$getMainAxisMax-impl":I
    goto :goto_1

    .line 379
    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 382
    const/4 p2, 0x0

    .line 891
    .local p2, "$i$f$getCrossAxisMin-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p4

    move v4, p4

    .end local p2    # "$i$f$getCrossAxisMin-impl":I
    goto :goto_2

    .line 379
    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 383
    const/4 p2, 0x0

    .line 892
    .local p2, "$i$f$getCrossAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p5

    move v5, p5

    .end local p2    # "$i$f$getCrossAxisMax-impl":I
    goto :goto_3

    .line 379
    :cond_3
    move v5, p5

    :goto_3
    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0(JIIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->unbox-impl()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v0

    return v0
.end method

.method public static final getCrossAxisMax-impl(J)I
    .locals 2
    .param p0, "arg0"    # J

    const/4 v0, 0x0

    .line 324
    .local v0, "$i$f$getCrossAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    return v1
.end method

.method public static final getCrossAxisMin-impl(J)I
    .locals 2
    .param p0, "arg0"    # J

    const/4 v0, 0x0

    .line 323
    .local v0, "$i$f$getCrossAxisMin-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    return v1
.end method

.method public static final getMainAxisMax-impl(J)I
    .locals 2
    .param p0, "arg0"    # J

    const/4 v0, 0x0

    .line 322
    .local v0, "$i$f$getMainAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    return v1
.end method

.method public static final getMainAxisMin-impl(J)I
    .locals 2
    .param p0, "arg0"    # J

    const/4 v0, 0x0

    .line 321
    .local v0, "$i$f$getMainAxisMin-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    return v1
.end method

.method public static hashCode-impl(J)I
    .locals 1

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public static final maxHeight-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 2
    .param p0, "arg0"    # J
    .param p2, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 373
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 887
    .local v0, "$i$f$getCrossAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    .end local v0    # "$i$f$getCrossAxisMax-impl":I
    goto :goto_0

    .line 376
    :cond_0
    const/4 v0, 0x0

    .line 888
    .local v0, "$i$f$getMainAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    move v0, v1

    .line 377
    .end local v0    # "$i$f$getMainAxisMax-impl":I
    :goto_0
    return v0
.end method

.method public static final maxWidth-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 2
    .param p0, "arg0"    # J
    .param p2, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 365
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v0, :cond_0

    .line 366
    const/4 v0, 0x0

    .line 885
    .local v0, "$i$f$getMainAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    .end local v0    # "$i$f$getMainAxisMax-impl":I
    goto :goto_0

    .line 368
    :cond_0
    const/4 v0, 0x0

    .line 886
    .local v0, "$i$f$getCrossAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    move v0, v1

    .line 369
    .end local v0    # "$i$f$getCrossAxisMax-impl":I
    :goto_0
    return v0
.end method

.method public static final stretchCrossAxis-q4ezo7Y(J)J
    .locals 4
    .param p0, "arg0"    # J

    .line 349
    const/4 v0, 0x0

    .line 872
    .local v0, "$i$f$getMainAxisMin-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    .line 350
    .end local v0    # "$i$f$getMainAxisMin-impl":I
    const/4 v1, 0x0

    .line 873
    .local v1, "$i$f$getMainAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    .line 351
    .end local v1    # "$i$f$getMainAxisMax-impl":I
    const/4 v2, 0x0

    .line 874
    .local v2, "$i$f$getCrossAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    .line 351
    .end local v2    # "$i$f$getCrossAxisMax-impl":I
    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 874
    .restart local v2    # "$i$f$getCrossAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    .end local v2    # "$i$f$getCrossAxisMax-impl":I
    goto :goto_0

    .line 351
    :cond_0
    const/4 v2, 0x0

    .line 875
    .local v2, "$i$f$getCrossAxisMin-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    move v2, v3

    .line 352
    .end local v2    # "$i$f$getCrossAxisMin-impl":I
    :goto_0
    const/4 v3, 0x0

    .line 876
    .local v3, "$i$f$getCrossAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    .line 348
    .end local v3    # "$i$f$getCrossAxisMax-impl":I
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v0

    .line 353
    return-wide v0
.end method

.method public static final toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J
    .locals 4
    .param p0, "arg0"    # J
    .param p2, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 357
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v0, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 877
    .local v0, "$i$f$getMainAxisMin-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    .line 358
    .end local v0    # "$i$f$getMainAxisMin-impl":I
    const/4 v1, 0x0

    .line 878
    .local v1, "$i$f$getMainAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    .line 358
    .end local v1    # "$i$f$getMainAxisMax-impl":I
    const/4 v2, 0x0

    .line 879
    .local v2, "$i$f$getCrossAxisMin-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    .line 358
    .end local v2    # "$i$f$getCrossAxisMin-impl":I
    const/4 v3, 0x0

    .line 880
    .local v3, "$i$f$getCrossAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    .line 358
    .end local v3    # "$i$f$getCrossAxisMax-impl":I
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    goto :goto_0

    .line 360
    :cond_0
    const/4 v0, 0x0

    .line 881
    .local v0, "$i$f$getCrossAxisMin-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    .line 360
    .end local v0    # "$i$f$getCrossAxisMin-impl":I
    const/4 v1, 0x0

    .line 882
    .local v1, "$i$f$getCrossAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    .line 360
    .end local v1    # "$i$f$getCrossAxisMax-impl":I
    const/4 v2, 0x0

    .line 883
    .local v2, "$i$f$getMainAxisMin-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    .line 360
    .end local v2    # "$i$f$getMainAxisMin-impl":I
    const/4 v3, 0x0

    .line 884
    .local v3, "$i$f$getMainAxisMax-impl":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    .line 360
    .end local v3    # "$i$f$getMainAxisMax-impl":I
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    .line 361
    :goto_0
    return-wide v0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OrientationIndependentConstraints(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->value:J

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->equals-impl(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->value:J

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->value:J

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->value:J

    return-wide v0
.end method
