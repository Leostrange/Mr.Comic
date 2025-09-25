.class public final Landroidx/compose/material3/carousel/Strategy$Companion;
.super Ljava/lang/Object;
.source "Strategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/carousel/Strategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strategy.kt\nandroidx/compose/material3/carousel/Strategy$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,509:1\n1549#2:510\n1620#2,3:511\n1855#2,2:514\n*S KotlinDebug\n*F\n+ 1 Strategy.kt\nandroidx/compose/material3/carousel/Strategy$Companion\n*L\n405#1:510\n405#1:511,3\n432#1:514,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001!B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\tJ\u001e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000b2\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u001e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000b2\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J&\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00062\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J(\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J(\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f*\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u0010H\u0002\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/material3/carousel/Strategy$Companion;",
        "",
        "()V",
        "create",
        "Landroidx/compose/material3/carousel/Strategy;",
        "carouselMainAxisSize",
        "",
        "keylineList",
        "Landroidx/compose/material3/carousel/KeylineList;",
        "create$material3_release",
        "getEndKeylineSteps",
        "",
        "defaultKeylines",
        "getShiftPointRange",
        "Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;",
        "stepsCount",
        "",
        "shiftPoint",
        "Landroidx/collection/FloatList;",
        "interpolation",
        "getStartKeylineSteps",
        "getStepInterpolationPoints",
        "totalShiftDistance",
        "steps",
        "isShiftingLeft",
        "",
        "moveKeylineAndCreateShiftedKeylineList",
        "from",
        "srcIndex",
        "dstIndex",
        "move",
        "",
        "Landroidx/compose/material3/carousel/Keyline;",
        "ShiftPointRange",
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

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/carousel/Strategy$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getShiftPointRange(Landroidx/compose/material3/carousel/Strategy$Companion;ILandroidx/collection/FloatList;F)Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/carousel/Strategy$Companion;
    .param p1, "stepsCount"    # I
    .param p2, "shiftPoint"    # Landroidx/collection/FloatList;
    .param p3, "interpolation"    # F

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/carousel/Strategy$Companion;->getShiftPointRange(ILandroidx/collection/FloatList;F)Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$move(Landroidx/compose/material3/carousel/Strategy$Companion;Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/carousel/Strategy$Companion;
    .param p1, "$receiver"    # Ljava/util/List;
    .param p2, "srcIndex"    # I
    .param p3, "dstIndex"    # I

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/carousel/Strategy$Companion;->move(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getEndKeylineSteps(Landroidx/compose/material3/carousel/KeylineList;F)Ljava/util/List;
    .locals 10
    .param p1, "defaultKeylines"    # Landroidx/compose/material3/carousel/KeylineList;
    .param p2, "carouselMainAxisSize"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/carousel/KeylineList;",
            "F)",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 294
    .local v0, "steps":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {p1, p2}, Landroidx/compose/material3/carousel/KeylineList;->isLastFocalItemAtEndOfContainer(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    return-object v0

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getLastFocalIndex()I

    move-result v1

    .line 301
    .local v1, "startIndex":I
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getLastNonAnchorIndex()I

    move-result v2

    .line 302
    .local v2, "endIndex":I
    sub-int v3, v2, v1

    .line 306
    .local v3, "numberOfSteps":I
    if-gtz v3, :cond_1

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getLastFocal()Landroidx/compose/material3/carousel/Keyline;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/carousel/Keyline;->getCutoff()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 307
    nop

    .line 308
    nop

    .line 309
    nop

    .line 310
    nop

    .line 311
    nop

    .line 312
    nop

    .line 308
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v4, p2}, Landroidx/compose/material3/carousel/Strategy$Companion;->moveKeylineAndCreateShiftedKeylineList(Landroidx/compose/material3/carousel/KeylineList;IIF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v4

    .line 307
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    return-object v0

    .line 318
    :cond_1
    const/4 v4, 0x0

    .line 319
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 320
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/carousel/KeylineList;

    .line 321
    .local v5, "prevStep":Landroidx/compose/material3/carousel/KeylineList;
    sub-int v6, v2, v4

    .line 322
    .local v6, "originalItemIndex":I
    const/4 v7, 0x0

    .line 324
    .local v7, "dstIndex":I
    move-object v8, p1

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 325
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v8

    .line 326
    .local v8, "originalNeighborAfterSize":F
    nop

    .line 327
    nop

    .line 326
    invoke-virtual {v5, v8}, Landroidx/compose/material3/carousel/KeylineList;->lastIndexBeforeFocalRangeWithSize(F)I

    move-result v9

    .line 328
    nop

    .line 326
    add-int/lit8 v7, v9, 0x1

    .line 331
    .end local v8    # "originalNeighborAfterSize":F
    :cond_2
    nop

    .line 332
    nop

    .line 333
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getLastNonAnchorIndex()I

    move-result v8

    .line 334
    nop

    .line 335
    nop

    .line 331
    invoke-direct {p0, v5, v8, v7, p2}, Landroidx/compose/material3/carousel/Strategy$Companion;->moveKeylineAndCreateShiftedKeylineList(Landroidx/compose/material3/carousel/KeylineList;IIF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v8

    .line 337
    .local v8, "keylines":Landroidx/compose/material3/carousel/KeylineList;
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    nop

    .end local v5    # "prevStep":Landroidx/compose/material3/carousel/KeylineList;
    .end local v6    # "originalItemIndex":I
    .end local v7    # "dstIndex":I
    .end local v8    # "keylines":Landroidx/compose/material3/carousel/KeylineList;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 341
    :cond_3
    return-object v0
.end method

.method private final getShiftPointRange(ILandroidx/collection/FloatList;F)Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;
    .locals 11
    .param p1, "stepsCount"    # I
    .param p2, "shiftPoint"    # Landroidx/collection/FloatList;
    .param p3, "interpolation"    # F

    .line 431
    const/4 v0, 0x0

    .local v0, "lowerBounds":F
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/collection/FloatList;->get(I)F

    move-result v0

    .line 432
    const/4 v2, 0x1

    invoke-static {v2, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 514
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    .local v5, "element$iv":I
    move v7, v5

    .local v7, "i":I
    const/4 v8, 0x0

    .line 433
    .local v8, "$i$a$-forEach-Strategy$Companion$getShiftPointRange$1":I
    invoke-virtual {p2, v7}, Landroidx/collection/FloatList;->get(I)F

    move-result v9

    .line 434
    .local v9, "upperBounds":F
    cmpg-float v10, p3, v9

    if-gtz v10, :cond_0

    .line 435
    new-instance v1, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;

    .line 436
    add-int/lit8 v4, v7, -0x1

    .line 437
    nop

    .line 438
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v6, v10, v0, v9, p3}, Landroidx/compose/material3/carousel/StrategyKt;->access$lerp(FFFFF)F

    move-result v6

    .line 435
    invoke-direct {v1, v4, v7, v6}, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;-><init>(IIF)V

    return-object v1

    .line 441
    :cond_0
    move v0, v9

    .line 442
    nop

    .line 514
    .end local v7    # "i":I
    .end local v8    # "$i$a$-forEach-Strategy$Companion$getShiftPointRange$1":I
    .end local v9    # "upperBounds":F
    nop

    .end local v5    # "element$iv":I
    goto :goto_0

    .line 515
    :cond_1
    nop

    .line 443
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    new-instance v2, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;

    .line 444
    nop

    .line 445
    nop

    .line 446
    nop

    .line 443
    invoke-direct {v2, v1, v1, v6}, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;-><init>(IIF)V

    return-object v2
.end method

.method private final getStartKeylineSteps(Landroidx/compose/material3/carousel/KeylineList;F)Ljava/util/List;
    .locals 10
    .param p1, "defaultKeylines"    # Landroidx/compose/material3/carousel/KeylineList;
    .param p2, "carouselMainAxisSize"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/carousel/KeylineList;",
            "F)",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 223
    .local v0, "steps":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->isFirstFocalItemAtStartOfContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getFirstNonAnchorIndex()I

    move-result v1

    .line 230
    .local v1, "startIndex":I
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getFirstFocalIndex()I

    move-result v2

    .line 231
    .local v2, "endIndex":I
    sub-int v3, v2, v1

    .line 235
    .local v3, "numberOfSteps":I
    if-gtz v3, :cond_1

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getFirstFocal()Landroidx/compose/material3/carousel/Keyline;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/carousel/Keyline;->getCutoff()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

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

    .line 237
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v4, p2}, Landroidx/compose/material3/carousel/Strategy$Companion;->moveKeylineAndCreateShiftedKeylineList(Landroidx/compose/material3/carousel/KeylineList;IIF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v4

    .line 236
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-object v0

    .line 247
    :cond_1
    const/4 v4, 0x0

    .line 248
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 249
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/carousel/KeylineList;

    .line 250
    .local v5, "prevStep":Landroidx/compose/material3/carousel/KeylineList;
    add-int v6, v1, v4

    .line 251
    .local v6, "originalItemIndex":I
    move-object v7, p1

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    .line 252
    .local v7, "dstIndex":I
    if-lez v6, :cond_2

    .line 253
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {p1, v8}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v8

    .line 254
    .local v8, "originalNeighborBeforeSize":F
    nop

    .line 255
    nop

    .line 254
    invoke-virtual {v5, v8}, Landroidx/compose/material3/carousel/KeylineList;->firstIndexAfterFocalRangeWithSize(F)I

    move-result v9

    .line 256
    nop

    .line 254
    add-int/lit8 v7, v9, -0x1

    .line 259
    .end local v8    # "originalNeighborBeforeSize":F
    :cond_2
    nop

    .line 260
    nop

    .line 261
    nop

    .line 262
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getFirstNonAnchorIndex()I

    move-result v8

    .line 263
    nop

    .line 264
    nop

    .line 260
    invoke-direct {p0, v5, v8, v7, p2}, Landroidx/compose/material3/carousel/Strategy$Companion;->moveKeylineAndCreateShiftedKeylineList(Landroidx/compose/material3/carousel/KeylineList;IIF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v8

    .line 259
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    nop

    .end local v5    # "prevStep":Landroidx/compose/material3/carousel/KeylineList;
    .end local v6    # "originalItemIndex":I
    .end local v7    # "dstIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    :cond_3
    return-object v0
.end method

.method private final getStepInterpolationPoints(FLjava/util/List;Z)Landroidx/collection/FloatList;
    .locals 16
    .param p1, "totalShiftDistance"    # F
    .param p2, "steps"    # Ljava/util/List;
    .param p3, "isShiftingLeft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;Z)",
            "Landroidx/collection/FloatList;"
        }
    .end annotation

    .line 400
    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/collection/FloatListKt;->mutableFloatListOf(F)Landroidx/collection/MutableFloatList;

    move-result-object v2

    .line 401
    .local v2, "points":Landroidx/collection/MutableFloatList;
    cmpg-float v1, p1, v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 402
    move-object v1, v2

    check-cast v1, Landroidx/collection/FloatList;

    return-object v1

    .line 405
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v3, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 510
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 511
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v7

    check-cast v8, Lkotlin/collections/IntIterator;

    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v8

    .line 512
    .local v8, "item$iv$iv":I
    move v9, v8

    .local v9, "i":I
    const/4 v10, 0x0

    .line 406
    .local v10, "$i$a$-map-Strategy$Companion$getStepInterpolationPoints$1":I
    add-int/lit8 v11, v9, -0x1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/material3/carousel/KeylineList;

    .line 407
    .local v11, "prevKeylines":Landroidx/compose/material3/carousel/KeylineList;
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/material3/carousel/KeylineList;

    .line 408
    .local v12, "currKeylines":Landroidx/compose/material3/carousel/KeylineList;
    if-eqz p3, :cond_2

    .line 409
    move-object v13, v12

    check-cast v13, Ljava/util/List;

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v13}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v13

    move-object v14, v11

    check-cast v14, Ljava/util/List;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v14}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v14

    sub-float/2addr v13, v14

    goto :goto_2

    .line 411
    :cond_2
    move-object v13, v11

    check-cast v13, Ljava/util/List;

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v13}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v13

    move-object v14, v12

    check-cast v14, Ljava/util/List;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v14}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v14

    sub-float/2addr v13, v14

    .line 408
    :goto_2
    nop

    .line 413
    .local v13, "distanceShifted":F
    div-float v14, v13, p1

    .line 414
    .local v14, "stepPercentage":F
    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v15

    if-ne v9, v15, :cond_3

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    add-int/lit8 v15, v9, -0x1

    invoke-virtual {v2, v15}, Landroidx/collection/MutableFloatList;->get(I)F

    move-result v15

    add-float/2addr v15, v14

    .line 415
    .local v15, "point":F
    :goto_3
    invoke-virtual {v2, v15}, Landroidx/collection/MutableFloatList;->add(F)Z

    move-result v9

    .end local v9    # "i":I
    .end local v10    # "$i$a$-map-Strategy$Companion$getStepInterpolationPoints$1":I
    .end local v11    # "prevKeylines":Landroidx/compose/material3/carousel/KeylineList;
    .end local v12    # "currKeylines":Landroidx/compose/material3/carousel/KeylineList;
    .end local v13    # "distanceShifted":F
    .end local v14    # "stepPercentage":F
    .end local v15    # "point":F
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 512
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 513
    .end local v8    # "item$iv$iv":I
    :cond_4
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 510
    nop

    .line 417
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    move-object v1, v2

    check-cast v1, Landroidx/collection/FloatList;

    return-object v1
.end method

.method private final move(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .param p1, "$this$move"    # Ljava/util/List;
    .param p2, "srcIndex"    # I
    .param p3, "dstIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;II)",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;"
        }
    .end annotation

    .line 450
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/carousel/Keyline;

    .line 451
    .local v0, "keyline":Landroidx/compose/material3/carousel/Keyline;
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 452
    invoke-interface {p1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 453
    return-object p1
.end method

.method private final moveKeylineAndCreateShiftedKeylineList(Landroidx/compose/material3/carousel/KeylineList;IIF)Landroidx/compose/material3/carousel/KeylineList;
    .locals 5
    .param p1, "from"    # Landroidx/compose/material3/carousel/KeylineList;
    .param p2, "srcIndex"    # I
    .param p3, "dstIndex"    # I
    .param p4, "carouselMainAxisSize"    # F

    .line 355
    if-le p2, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 356
    .local v0, "pivotDir":I
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    .line 357
    .local v1, "pivotDelta":F
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getPivotIndex()I

    move-result v2

    add-int/2addr v2, v0

    .line 358
    .local v2, "newPivotIndex":I
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getPivot()Landroidx/compose/material3/carousel/Keyline;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/carousel/Keyline;->getOffset()F

    move-result v3

    add-float/2addr v3, v1

    .line 359
    .local v3, "newPivotOffset":F
    new-instance v4, Landroidx/compose/material3/carousel/Strategy$Companion$moveKeylineAndCreateShiftedKeylineList$1;

    invoke-direct {v4, p1, p2, p3}, Landroidx/compose/material3/carousel/Strategy$Companion$moveKeylineAndCreateShiftedKeylineList$1;-><init>(Landroidx/compose/material3/carousel/KeylineList;II)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {p4, v2, v3, v4}, Landroidx/compose/material3/carousel/KeylineKt;->keylineListOf(FIFLkotlin/jvm/functions/Function1;)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public final create$material3_release(FLandroidx/compose/material3/carousel/KeylineList;)Landroidx/compose/material3/carousel/Strategy;
    .locals 17
    .param p1, "carouselMainAxisSize"    # F
    .param p2, "keylineList"    # Landroidx/compose/material3/carousel/KeylineList;

    .line 173
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v11, p2

    invoke-direct {v0, v11, v1}, Landroidx/compose/material3/carousel/Strategy$Companion;->getStartKeylineSteps(Landroidx/compose/material3/carousel/KeylineList;F)Ljava/util/List;

    move-result-object v12

    .line 175
    .local v12, "startKeylineSteps":Ljava/util/List;
    invoke-direct {v0, v11, v1}, Landroidx/compose/material3/carousel/Strategy$Companion;->getEndKeylineSteps(Landroidx/compose/material3/carousel/KeylineList;F)Ljava/util/List;

    move-result-object v2

    .line 174
    move-object v13, v2

    .line 178
    .local v13, "endKeylineSteps":Ljava/util/List;
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v2}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v2

    .line 179
    move-object v3, v11

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v3}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v3

    .line 178
    sub-float v14, v2, v3

    .line 180
    .local v14, "startShiftDistance":F
    move-object v2, v11

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v2}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v2

    .line 181
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v3}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v3

    .line 180
    sub-float v15, v2, v3

    .line 183
    .local v15, "endShiftDistance":F
    new-instance v16, Landroidx/compose/material3/carousel/Strategy;

    .line 184
    nop

    .line 185
    nop

    .line 186
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

    .line 189
    const/4 v2, 0x1

    invoke-direct {v0, v14, v12, v2}, Landroidx/compose/material3/carousel/Strategy$Companion;->getStepInterpolationPoints(FLjava/util/List;Z)Landroidx/collection/FloatList;

    move-result-object v8

    .line 194
    nop

    .line 195
    nop

    .line 196
    nop

    .line 197
    nop

    .line 194
    const/4 v2, 0x0

    invoke-direct {v0, v15, v13, v2}, Landroidx/compose/material3/carousel/Strategy$Companion;->getStepInterpolationPoints(FLjava/util/List;Z)Landroidx/collection/FloatList;

    move-result-object v9

    const/4 v10, 0x0

    .line 183
    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-object v4, v12

    move-object v5, v13

    move v6, v14

    move v7, v15

    invoke-direct/range {v2 .. v10}, Landroidx/compose/material3/carousel/Strategy;-><init>(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFLandroidx/collection/FloatList;Landroidx/collection/FloatList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v16
.end method
