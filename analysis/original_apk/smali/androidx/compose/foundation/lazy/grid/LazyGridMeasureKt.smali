.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;
.super Ljava/lang/Object;
.source "LazyGridMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridMeasure.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,440:1\n334#1,3:442\n337#1,12:449\n350#1:462\n334#1,3:463\n337#1,12:470\n350#1:483\n1#2:441\n33#3,4:445\n38#3:461\n33#3,4:466\n38#3:482\n235#3,3:484\n33#3,4:487\n238#3,2:491\n38#3:493\n240#3:494\n33#3,6:495\n132#3,3:501\n33#3,4:504\n135#3,2:508\n38#3:510\n137#3:511\n51#3,6:512\n33#3,6:518\n33#3,6:524\n*S KotlinDebug\n*F\n+ 1 LazyGridMeasure.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasureKt\n*L\n230#1:442,3\n230#1:449,12\n230#1:462\n237#1:463,3\n237#1:470,12\n237#1:483\n230#1:445,4\n230#1:461\n237#1:466,4\n237#1:482\n313#1:484,3\n313#1:487,4\n313#1:491,2\n313#1:493\n313#1:494\n336#1:495,6\n377#1:501,3\n377#1:504,4\n377#1:508,2\n377#1:510\n377#1:511\n420#1:512,6\n427#1:518,6\n432#1:524,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aM\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\u00082\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\u0008H\u0083\u0008\u001a\u008c\u0001\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002\u001a\u00f5\u0001\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00012\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042/\u00105\u001a+\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u0002080\u0008\u00a2\u0006\u0002\u00089\u0012\u0004\u0012\u00020:06H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008;\u0010<\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006="
    }
    d2 = {
        "calculateExtraItems",
        "",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        "pinnedItems",
        "",
        "measuredItemProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
        "itemConstraints",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/unit/Constraints;",
        "filter",
        "",
        "calculateItemsOffsets",
        "",
        "lines",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
        "itemsBefore",
        "itemsAfter",
        "layoutWidth",
        "layoutHeight",
        "finalMainAxisOffset",
        "maxOffset",
        "firstLineScrollOffset",
        "isVertical",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "reverseLayout",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "measureLazyGrid",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        "itemsCount",
        "measuredLineProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
        "mainAxisAvailableSize",
        "beforeContentPadding",
        "afterContentPadding",
        "spaceBetweenLines",
        "firstVisibleLineIndex",
        "firstVisibleLineScrollOffset",
        "scrollToBeConsumed",
        "",
        "constraints",
        "placementAnimator",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
        "spanLayoutProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "placementScopeInvalidator",
        "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;",
        "layout",
        "Lkotlin/Function3;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measureLazyGrid-W2FL7xs",
        "(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        "foundation_release"
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
.method private static final calculateExtraItems(Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 20
    .param p0, "pinnedItems"    # Ljava/util/List;
    .param p1, "measuredItemProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
    .param p2, "itemConstraints"    # Lkotlin/jvm/functions/Function1;
    .param p3, "filter"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 334
    .local v0, "$i$f$calculateExtraItems":I
    const/4 v1, 0x0

    .line 336
    .local v1, "items":Ljava/lang/Object;
    move-object/from16 v2, p0

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 495
    .local v3, "$i$f$fastForEach":I
    nop

    .line 496
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_2

    .line 497
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 498
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .local v7, "index":I
    const/4 v15, 0x0

    .line 337
    .local v15, "$i$a$-fastForEach-LazyGridMeasureKt$calculateExtraItems$1":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v14, p3

    invoke-interface {v14, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 338
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v13, p2

    invoke-interface {v13, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v8}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v16

    .line 339
    .local v16, "constraints":J
    nop

    .line 340
    nop

    .line 339
    const/4 v10, 0x0

    .line 341
    nop

    .line 339
    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object/from16 v8, p1

    move v9, v7

    move-wide/from16 v11, v16

    move/from16 v13, v18

    move-object/from16 v14, v19

    invoke-static/range {v8 .. v14}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure-3p2s80s$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIJILjava/lang/Object;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v8

    .line 343
    .local v8, "measuredItem":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    if-nez v1, :cond_0

    .line 344
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v9

    check-cast v1, Ljava/util/List;

    .line 346
    :cond_0
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v8    # "measuredItem":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v16    # "constraints":J
    :cond_1
    nop

    .line 498
    .end local v7    # "index":I
    .end local v15    # "$i$a$-fastForEach-LazyGridMeasureKt$calculateExtraItems$1":I
    nop

    .line 496
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 500
    .end local v4    # "index$iv":I
    :cond_2
    nop

    .line 350
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 27
    .param p0, "lines"    # Ljava/util/List;
    .param p1, "itemsBefore"    # Ljava/util/List;
    .param p2, "itemsAfter"    # Ljava/util/List;
    .param p3, "layoutWidth"    # I
    .param p4, "layoutHeight"    # I
    .param p5, "finalMainAxisOffset"    # I
    .param p6, "maxOffset"    # I
    .param p7, "firstLineScrollOffset"    # I
    .param p8, "isVertical"    # Z
    .param p9, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p10, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p11, "reverseLayout"    # Z
    .param p12, "density"    # Landroidx/compose/ui/unit/Density;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 371
    move-object/from16 v0, p0

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p11

    if-eqz p8, :cond_0

    move v1, v11

    goto :goto_0

    :cond_0
    move v1, v10

    :goto_0
    move v13, v1

    .line 372
    .local v13, "mainAxisLayoutSize":I
    move/from16 v14, p6

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move/from16 v15, p5

    if-ge v15, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move/from16 v16, v1

    .line 373
    .local v16, "hasSpareSpace":Z
    if-eqz v16, :cond_4

    .line 374
    if-nez p7, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    goto :goto_3

    .line 441
    :cond_3
    const/4 v1, 0x0

    .line 374
    .local v1, "$i$a$-check-LazyGridMeasureKt$calculateItemsOffsets$1":I
    nop

    .end local v1    # "$i$a$-check-LazyGridMeasureKt$calculateItemsOffsets$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "non-zero firstLineScrollOffset"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_4
    :goto_3
    move-object/from16 v1, p0

    .local v1, "$this$fastSumBy$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 501
    .local v4, "$i$f$fastSumBy":I
    nop

    .line 502
    const/4 v5, 0x0

    .line 503
    .local v5, "sum$iv":I
    move-object v6, v1

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 504
    .local v7, "$i$f$fastForEach":I
    nop

    .line 505
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_4
    if-ge v8, v9, :cond_5

    .line 506
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 507
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "element$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 508
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastSumBy$2$iv":I
    move-object/from16 v20, v18

    check-cast v20, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .local v20, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    const/16 v21, 0x0

    .line 377
    .local v21, "$i$a$-fastSumBy-LazyGridMeasureKt$calculateItemsOffsets$positionedItems$1":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v3

    array-length v3, v3

    .line 508
    .end local v20    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v21    # "$i$a$-fastSumBy-LazyGridMeasureKt$calculateItemsOffsets$positionedItems$1":I
    add-int/2addr v5, v3

    .line 509
    nop

    .line 507
    .end local v18    # "element$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastSumBy$2$iv":I
    nop

    .line 505
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 510
    .end local v8    # "index$iv$iv":I
    :cond_5
    nop

    .line 511
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    nop

    .line 377
    .end local v1    # "$this$fastSumBy$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastSumBy":I
    .end local v5    # "sum$iv":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v1

    .line 379
    .local v9, "positionedItems":Ljava/util/ArrayList;
    if-eqz v16, :cond_13

    .line 380
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    if-eqz v3, :cond_12

    .line 381
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    .line 385
    .local v1, "linesCount":I
    new-array v3, v1, [I

    move v4, v2

    :goto_6
    if-ge v4, v1, :cond_7

    .line 386
    invoke-static {v4, v12, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSize()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 385
    goto :goto_6

    :cond_7
    move-object v8, v3

    .line 388
    .local v8, "sizes":[I
    new-array v3, v1, [I

    move v4, v2

    :goto_7
    if-ge v4, v1, :cond_8

    aput v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    move-object v7, v3

    .line 389
    .local v7, "offsets":[I
    if-eqz p8, :cond_a

    .line 390
    if-eqz p9, :cond_9

    move-object/from16 v2, p9

    .local v2, "$this$calculateItemsOffsets_u24lambda_u2413":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/4 v3, 0x0

    .line 391
    .local v3, "$i$a$-with-LazyGridMeasureKt$calculateItemsOffsets$4":I
    move-object/from16 v6, p12

    invoke-interface {v2, v6, v13, v8, v7}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 392
    nop

    .line 390
    .end local v2    # "$this$calculateItemsOffsets_u24lambda_u2413":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v3    # "$i$a$-with-LazyGridMeasureKt$calculateItemsOffsets$4":I
    move-object/from16 v18, v7

    goto :goto_8

    .line 441
    :cond_9
    move-object/from16 v6, p12

    const/4 v2, 0x0

    .line 390
    .local v2, "$i$a$-requireNotNull-LazyGridMeasureKt$calculateItemsOffsets$3":I
    nop

    .end local v2    # "$i$a$-requireNotNull-LazyGridMeasureKt$calculateItemsOffsets$3":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "null verticalArrangement"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_a
    move-object/from16 v6, p12

    if-eqz p10, :cond_11

    move-object/from16 v2, p10

    .local v2, "$this$calculateItemsOffsets_u24lambda_u2415":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v17, 0x0

    .line 396
    .local v17, "$i$a$-with-LazyGridMeasureKt$calculateItemsOffsets$6":I
    sget-object v18, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v3, p12

    move v4, v13

    move-object v5, v8

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    .end local v7    # "offsets":[I
    .local v18, "offsets":[I
    invoke-interface/range {v2 .. v7}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 397
    nop

    .line 394
    .end local v2    # "$this$calculateItemsOffsets_u24lambda_u2415":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v17    # "$i$a$-with-LazyGridMeasureKt$calculateItemsOffsets$6":I
    nop

    .line 401
    :goto_8
    invoke-static/range {v18 .. v18}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v2

    check-cast v2, Lkotlin/ranges/IntProgression;

    if-eqz v12, :cond_b

    invoke-static {v2}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v2

    .line 400
    :cond_b
    nop

    .line 403
    .local v2, "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    .local v3, "index":I
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v4

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v5

    if-lez v5, :cond_c

    if-le v3, v4, :cond_d

    :cond_c
    if-gez v5, :cond_f

    if-gt v4, v3, :cond_f

    .line 404
    :cond_d
    :goto_9
    aget v6, v18, v3

    .line 406
    .local v6, "absoluteOffset":I
    invoke-static {v3, v12, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 407
    .local v7, "line":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    if-eqz v12, :cond_e

    .line 409
    sub-int v17, v13, v6

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSize()I

    move-result v19

    sub-int v17, v17, v19

    goto :goto_a

    .line 411
    :cond_e
    move/from16 v17, v6

    .line 407
    :goto_a
    move/from16 v19, v17

    .line 413
    .local v19, "relativeOffset":I
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    .line 414
    move/from16 v17, v1

    move/from16 v1, v19

    move-object/from16 v19, v2

    .end local v2    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    .local v1, "relativeOffset":I
    .local v17, "linesCount":I
    .local v19, "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    invoke-virtual {v7, v1, v10, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v2

    .line 413
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 403
    .end local v1    # "relativeOffset":I
    .end local v6    # "absoluteOffset":I
    .end local v7    # "line":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    if-eq v3, v4, :cond_10

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    goto :goto_9

    .end local v17    # "linesCount":I
    .end local v19    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    .local v1, "linesCount":I
    .restart local v2    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    :cond_f
    move/from16 v17, v1

    move-object/from16 v19, v2

    .end local v1    # "linesCount":I
    .end local v2    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    .restart local v17    # "linesCount":I
    .restart local v19    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    :cond_10
    move-object v0, v9

    goto/16 :goto_f

    .line 441
    .end local v3    # "index":I
    .end local v17    # "linesCount":I
    .end local v18    # "offsets":[I
    .end local v19    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    .restart local v1    # "linesCount":I
    .local v7, "offsets":[I
    :cond_11
    move/from16 v17, v1

    .end local v1    # "linesCount":I
    .restart local v17    # "linesCount":I
    const/4 v0, 0x0

    .line 394
    .local v0, "$i$a$-requireNotNull-LazyGridMeasureKt$calculateItemsOffsets$5":I
    nop

    .end local v0    # "$i$a$-requireNotNull-LazyGridMeasureKt$calculateItemsOffsets$5":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null horizontalArrangement"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    .end local v7    # "offsets":[I
    .end local v8    # "sizes":[I
    .end local v17    # "linesCount":I
    :cond_12
    const/4 v0, 0x0

    .line 380
    .local v0, "$i$a$-require-LazyGridMeasureKt$calculateItemsOffsets$2":I
    nop

    .end local v0    # "$i$a$-require-LazyGridMeasureKt$calculateItemsOffsets$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "no items"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_13
    const/4 v0, 0x0

    .local v0, "currentMainAxis":I
    move/from16 v0, p7

    .line 420
    move-object/from16 v8, p1

    .local v8, "$this$fastForEachReversed$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 512
    .local v17, "$i$f$fastForEachReversed":I
    nop

    .line 513
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_15

    :goto_b
    move v7, v1

    .local v7, "index$iv":I
    add-int/lit8 v18, v1, -0x1

    .line 514
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 515
    .local v19, "item$iv":Ljava/lang/Object;
    move-object/from16 v6, v19

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v6, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/16 v20, 0x0

    .line 421
    .local v20, "$i$a$-fastForEachReversed-LazyGridMeasureKt$calculateItemsOffsets$7":I
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v1

    sub-int/2addr v0, v1

    .line 422
    const/4 v3, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x30

    const/16 v24, 0x0

    move-object v1, v6

    move v2, v0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v25, v6

    .end local v6    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .local v25, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    move/from16 v6, v21

    move/from16 v21, v7

    .end local v7    # "index$iv":I
    .local v21, "index$iv":I
    move/from16 v7, v22

    move-object/from16 v22, v8

    .end local v8    # "$this$fastForEachReversed$iv":Ljava/util/List;
    .local v22, "$this$fastForEachReversed$iv":Ljava/util/List;
    move/from16 v8, v23

    move/from16 v23, v0

    move-object v0, v9

    .end local v9    # "positionedItems":Ljava/util/ArrayList;
    .local v0, "positionedItems":Ljava/util/ArrayList;
    .local v23, "currentMainAxis":I
    move-object/from16 v9, v24

    invoke-static/range {v1 .. v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;IIIIIIILjava/lang/Object;)V

    .line 423
    move-object/from16 v1, v25

    .end local v25    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .local v1, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    nop

    .line 515
    .end local v1    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v20    # "$i$a$-fastForEachReversed-LazyGridMeasureKt$calculateItemsOffsets$7":I
    nop

    .line 513
    .end local v19    # "item$iv":Ljava/lang/Object;
    if-gez v18, :cond_14

    goto :goto_c

    :cond_14
    move-object v9, v0

    move/from16 v1, v18

    move-object/from16 v8, v22

    move/from16 v0, v23

    goto :goto_b

    .end local v21    # "index$iv":I
    .end local v22    # "$this$fastForEachReversed$iv":Ljava/util/List;
    .end local v23    # "currentMainAxis":I
    .local v0, "currentMainAxis":I
    .restart local v8    # "$this$fastForEachReversed$iv":Ljava/util/List;
    .restart local v9    # "positionedItems":Ljava/util/ArrayList;
    :cond_15
    move v1, v0

    move-object/from16 v22, v8

    move-object v0, v9

    .end local v8    # "$this$fastForEachReversed$iv":Ljava/util/List;
    .end local v9    # "positionedItems":Ljava/util/ArrayList;
    .local v0, "positionedItems":Ljava/util/ArrayList;
    .local v1, "currentMainAxis":I
    .restart local v22    # "$this$fastForEachReversed$iv":Ljava/util/List;
    move/from16 v23, v1

    .line 517
    .end local v1    # "currentMainAxis":I
    .restart local v23    # "currentMainAxis":I
    :goto_c
    nop

    .line 426
    .end local v17    # "$i$f$fastForEachReversed":I
    .end local v22    # "$this$fastForEachReversed$iv":Ljava/util/List;
    move/from16 v1, p7

    .line 427
    .end local v23    # "currentMainAxis":I
    .restart local v1    # "currentMainAxis":I
    move-object/from16 v2, p0

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 518
    .local v3, "$i$f$fastForEach":I
    nop

    .line 519
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_d
    if-ge v4, v5, :cond_16

    .line 520
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 521
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .local v7, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    const/4 v8, 0x0

    .line 428
    .local v8, "$i$a$-fastForEach-LazyGridMeasureKt$calculateItemsOffsets$8":I
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    move-object/from16 v17, v2

    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .local v17, "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual {v7, v1, v10, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v2

    invoke-static {v9, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v2

    add-int/2addr v1, v2

    .line 430
    nop

    .line 521
    .end local v7    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v8    # "$i$a$-fastForEach-LazyGridMeasureKt$calculateItemsOffsets$8":I
    nop

    .line 519
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v17

    goto :goto_d

    .end local v17    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v2    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_16
    move-object/from16 v17, v2

    .line 523
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "index$iv":I
    .restart local v17    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 432
    .end local v3    # "$i$f$fastForEach":I
    .end local v17    # "$this$fastForEach$iv":Ljava/util/List;
    move-object/from16 v9, p2

    .local v9, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 524
    .local v17, "$i$f$fastForEach":I
    nop

    .line 525
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v18, v1

    move v7, v2

    .end local v1    # "currentMainAxis":I
    .end local v2    # "index$iv":I
    .local v7, "index$iv":I
    .local v18, "currentMainAxis":I
    :goto_e
    if-ge v7, v8, :cond_17

    .line 526
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 527
    .restart local v19    # "item$iv":Ljava/lang/Object;
    move-object/from16 v6, v19

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v6, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/16 v20, 0x0

    .line 433
    .local v20, "$i$a$-fastForEach-LazyGridMeasureKt$calculateItemsOffsets$9":I
    const/4 v3, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x30

    const/16 v24, 0x0

    move-object v1, v6

    move/from16 v2, v18

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v26, v6

    .end local v6    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .local v26, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    move/from16 v6, v21

    move/from16 v21, v7

    .end local v7    # "index$iv":I
    .restart local v21    # "index$iv":I
    move/from16 v7, v22

    move/from16 v22, v8

    move/from16 v8, v23

    move-object/from16 v23, v9

    .end local v9    # "$this$fastForEach$iv":Ljava/util/List;
    .local v23, "$this$fastForEach$iv":Ljava/util/List;
    move-object/from16 v9, v24

    invoke-static/range {v1 .. v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;IIIIIIILjava/lang/Object;)V

    .line 434
    move-object/from16 v1, v26

    .end local v26    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .local v1, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v2

    add-int v18, v18, v2

    .line 436
    nop

    .line 527
    .end local v1    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v20    # "$i$a$-fastForEach-LazyGridMeasureKt$calculateItemsOffsets$9":I
    nop

    .line 525
    .end local v19    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v21, 0x1

    move/from16 v8, v22

    move-object/from16 v9, v23

    .end local v21    # "index$iv":I
    .restart local v7    # "index$iv":I
    goto :goto_e

    .end local v23    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v9    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_17
    move/from16 v21, v7

    move-object/from16 v23, v9

    .line 529
    .end local v7    # "index$iv":I
    .end local v9    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v23    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 438
    .end local v17    # "$i$f$fastForEach":I
    .end local v18    # "currentMainAxis":I
    .end local v23    # "$this$fastForEach$iv":Ljava/util/List;
    :goto_f
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private static final calculateItemsOffsets$reverseAware(IZI)I
    .locals 1
    .param p0, "$this$calculateItemsOffsets_u24reverseAware"    # I
    .param p1, "$reverseLayout"    # Z
    .param p2, "linesCount"    # I

    .line 383
    if-nez p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    sub-int v0, p2, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method public static final measureLazyGrid-W2FL7xs(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 47
    .param p0, "itemsCount"    # I
    .param p1, "measuredLineProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .param p2, "measuredItemProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
    .param p3, "mainAxisAvailableSize"    # I
    .param p4, "beforeContentPadding"    # I
    .param p5, "afterContentPadding"    # I
    .param p6, "spaceBetweenLines"    # I
    .param p7, "firstVisibleLineIndex"    # I
    .param p8, "firstVisibleLineScrollOffset"    # I
    .param p9, "scrollToBeConsumed"    # F
    .param p10, "constraints"    # J
    .param p12, "isVertical"    # Z
    .param p13, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p14, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p15, "reverseLayout"    # Z
    .param p16, "density"    # Landroidx/compose/ui/unit/Density;
    .param p17, "placementAnimator"    # Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
    .param p18, "spanLayoutProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .param p19, "pinnedItems"    # Ljava/util/List;
    .param p20, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p21, "placementScopeInvalidator"    # Landroidx/compose/runtime/MutableState;
    .param p22, "layout"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;"
        }
    .end annotation

    .line 69
    move/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p4

    move-wide/from16 v11, p10

    move-object/from16 v10, p22

    const/4 v9, 0x0

    const/16 v29, 0x1

    if-ltz v13, :cond_0

    move/from16 v0, v29

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    if-eqz v0, :cond_32

    .line 70
    if-ltz p5, :cond_1

    move/from16 v0, v29

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    if-eqz v0, :cond_31

    .line 71
    if-gtz v15, :cond_3

    .line 78
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;

    invoke-interface {v10, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroidx/compose/ui/layout/MeasureResult;

    .line 79
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v23

    .line 80
    neg-int v0, v13

    .line 81
    add-int v25, p3, p5

    .line 84
    if-eqz p12, :cond_2

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :cond_2
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2
    move-object/from16 v28, v1

    .line 73
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 74
    const/16 v17, 0x0

    .line 75
    const/16 v18, 0x0

    .line 76
    const/16 v19, 0x0

    .line 77
    const/16 v20, 0x0

    .line 78
    nop

    .line 87
    const/16 v22, 0x0

    .line 79
    nop

    .line 80
    nop

    .line 81
    nop

    .line 82
    const/16 v26, 0x0

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 86
    nop

    .line 73
    move-object/from16 v16, v1

    move/from16 v24, v0

    move/from16 v27, p15

    move/from16 v29, p5

    move/from16 v30, p6

    invoke-direct/range {v16 .. v30}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v1

    .line 90
    :cond_3
    move/from16 v0, p7

    .line 91
    .local v0, "currentFirstLineIndex":I
    move/from16 v1, p8

    .line 94
    .local v1, "currentFirstLineScrollOffset":I
    invoke-static/range {p9 .. p9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 98
    .local v2, "scrollDelta":I
    sub-int/2addr v1, v2

    .line 101
    if-nez v0, :cond_4

    if-gez v1, :cond_4

    .line 102
    add-int/2addr v2, v1

    .line 103
    const/4 v1, 0x0

    .line 107
    :cond_4
    new-instance v3, Lkotlin/collections/ArrayDeque;

    invoke-direct {v3}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object v8, v3

    .line 110
    .local v8, "visibleLines":Lkotlin/collections/ArrayDeque;
    neg-int v3, v13

    if-gez p6, :cond_5

    move/from16 v4, p6

    goto :goto_3

    :cond_5
    move v4, v9

    :goto_3
    add-int v7, v3, v4

    .line 111
    .local v7, "minOffset":I
    move/from16 v6, p3

    .line 116
    .local v6, "maxOffset":I
    add-int/2addr v1, v7

    .line 121
    :goto_4
    if-gez v1, :cond_6

    if-lez v0, :cond_6

    .line 122
    add-int/lit8 v3, v0, -0x1

    .line 123
    .local v3, "previous":I
    invoke-virtual {v14, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v4

    .line 124
    .local v4, "measuredLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    invoke-virtual {v8, v9, v4}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 125
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v5

    add-int/2addr v1, v5

    .line 126
    move v0, v3

    .end local v3    # "previous":I
    .end local v4    # "measuredLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    goto :goto_4

    .line 131
    :cond_6
    if-ge v1, v7, :cond_7

    .line 132
    add-int/2addr v2, v1

    .line 133
    move v1, v7

    .line 137
    :cond_7
    sub-int/2addr v1, v7

    .line 139
    move v3, v0

    .line 140
    .local v3, "index":I
    add-int v4, v6, p5

    invoke-static {v4, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    .line 141
    .local v5, "maxMainAxis":I
    neg-int v4, v1

    .line 146
    .local v4, "currentMainAxisOffset":I
    const/16 v16, 0x0

    .line 149
    .local v16, "remeasureNeeded":Z
    const/16 v17, 0x0

    move/from16 v9, v17

    .line 150
    .local v9, "indexInVisibleLines":I
    :goto_5
    move/from16 v17, v0

    .end local v0    # "currentFirstLineIndex":I
    .local v17, "currentFirstLineIndex":I
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    if-ge v9, v0, :cond_9

    .line 151
    if-lt v4, v5, :cond_8

    .line 153
    invoke-virtual {v8, v9}, Lkotlin/collections/ArrayDeque;->remove(I)Ljava/lang/Object;

    .line 154
    const/16 v16, 0x1

    move/from16 v0, v17

    goto :goto_5

    .line 156
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 157
    invoke-virtual {v8, v9}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v0

    add-int/2addr v4, v0

    .line 158
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v17

    goto :goto_5

    .line 150
    :cond_9
    move/from16 v31, v16

    move/from16 v0, v17

    move/from16 v46, v4

    move v4, v3

    move/from16 v3, v46

    .line 165
    .end local v16    # "remeasureNeeded":Z
    .end local v17    # "currentFirstLineIndex":I
    .restart local v0    # "currentFirstLineIndex":I
    .local v3, "currentMainAxisOffset":I
    .local v4, "index":I
    .local v31, "remeasureNeeded":Z
    :goto_6
    if-ge v4, v15, :cond_f

    .line 166
    if-lt v3, v5, :cond_b

    .line 167
    if-lez v3, :cond_b

    .line 168
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v16, v0

    move/from16 v32, v5

    goto :goto_9

    .line 170
    :cond_b
    :goto_7
    move/from16 v16, v0

    .end local v0    # "currentFirstLineIndex":I
    .local v16, "currentFirstLineIndex":I
    invoke-virtual {v14, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v0

    .line 171
    .local v0, "measuredLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 172
    move/from16 v32, v5

    goto :goto_9

    .line 175
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v17

    add-int v3, v3, v17

    .line 176
    if-gt v3, v7, :cond_d

    .line 177
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move/from16 v18, v3

    .end local v3    # "currentMainAxisOffset":I
    .local v18, "currentMainAxisOffset":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v3

    move/from16 v32, v5

    .end local v5    # "maxMainAxis":I
    .local v32, "maxMainAxis":I
    add-int/lit8 v5, v15, -0x1

    if-eq v3, v5, :cond_e

    .line 179
    add-int/lit8 v3, v4, 0x1

    .line 180
    .end local v16    # "currentFirstLineIndex":I
    .local v3, "currentFirstLineIndex":I
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v5

    sub-int/2addr v1, v5

    .line 181
    const/4 v5, 0x1

    move/from16 v16, v3

    move/from16 v31, v5

    .end local v31    # "remeasureNeeded":Z
    .local v5, "remeasureNeeded":Z
    goto :goto_8

    .line 176
    .end local v18    # "currentMainAxisOffset":I
    .end local v32    # "maxMainAxis":I
    .local v3, "currentMainAxisOffset":I
    .local v5, "maxMainAxis":I
    .restart local v16    # "currentFirstLineIndex":I
    .restart local v31    # "remeasureNeeded":Z
    :cond_d
    move/from16 v18, v3

    move/from16 v32, v5

    .line 183
    .end local v3    # "currentMainAxisOffset":I
    .end local v5    # "maxMainAxis":I
    .restart local v18    # "currentMainAxisOffset":I
    .restart local v32    # "maxMainAxis":I
    :cond_e
    invoke-virtual {v8, v0}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_8
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v16

    move/from16 v3, v18

    move/from16 v5, v32

    goto :goto_6

    .line 165
    .end local v16    # "currentFirstLineIndex":I
    .end local v18    # "currentMainAxisOffset":I
    .end local v32    # "maxMainAxis":I
    .local v0, "currentFirstLineIndex":I
    .restart local v3    # "currentMainAxisOffset":I
    .restart local v5    # "maxMainAxis":I
    :cond_f
    move/from16 v16, v0

    move/from16 v32, v5

    .line 190
    .end local v0    # "currentFirstLineIndex":I
    .end local v5    # "maxMainAxis":I
    .restart local v16    # "currentFirstLineIndex":I
    .restart local v32    # "maxMainAxis":I
    :goto_9
    if-ge v3, v6, :cond_13

    .line 191
    sub-int v0, v6, v3

    .line 192
    .local v0, "toScrollBack":I
    sub-int/2addr v1, v0

    .line 193
    add-int/2addr v3, v0

    .line 194
    :goto_a
    if-ge v1, v13, :cond_11

    .line 195
    if-lez v16, :cond_10

    .line 197
    add-int/lit8 v5, v16, -0x1

    .line 198
    .local v5, "previousIndex":I
    move/from16 v33, v4

    .end local v4    # "index":I
    .local v33, "index":I
    invoke-virtual {v14, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v4

    .line 199
    .local v4, "measuredLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    move/from16 v34, v9

    const/4 v9, 0x0

    .end local v9    # "indexInVisibleLines":I
    .local v34, "indexInVisibleLines":I
    invoke-virtual {v8, v9, v4}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 200
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v17

    add-int v1, v1, v17

    .line 201
    move/from16 v16, v5

    move/from16 v4, v33

    move/from16 v9, v34

    .end local v4    # "measuredLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v5    # "previousIndex":I
    goto :goto_a

    .line 195
    .end local v33    # "index":I
    .end local v34    # "indexInVisibleLines":I
    .local v4, "index":I
    .restart local v9    # "indexInVisibleLines":I
    :cond_10
    move/from16 v33, v4

    move/from16 v34, v9

    const/4 v9, 0x0

    .end local v4    # "index":I
    .end local v9    # "indexInVisibleLines":I
    .restart local v33    # "index":I
    .restart local v34    # "indexInVisibleLines":I
    goto :goto_b

    .line 194
    .end local v33    # "index":I
    .end local v34    # "indexInVisibleLines":I
    .restart local v4    # "index":I
    .restart local v9    # "indexInVisibleLines":I
    :cond_11
    move/from16 v33, v4

    move/from16 v34, v9

    const/4 v9, 0x0

    .line 203
    .end local v4    # "index":I
    .end local v9    # "indexInVisibleLines":I
    .restart local v33    # "index":I
    .restart local v34    # "indexInVisibleLines":I
    :goto_b
    add-int/2addr v2, v0

    .line 204
    if-gez v1, :cond_12

    .line 205
    add-int/2addr v2, v1

    .line 206
    add-int/2addr v3, v1

    .line 207
    const/4 v1, 0x0

    move v5, v2

    move v4, v3

    move/from16 v30, v16

    goto :goto_c

    .line 204
    :cond_12
    move v5, v2

    move v4, v3

    move/from16 v30, v16

    goto :goto_c

    .line 190
    .end local v0    # "toScrollBack":I
    .end local v33    # "index":I
    .end local v34    # "indexInVisibleLines":I
    .restart local v4    # "index":I
    .restart local v9    # "indexInVisibleLines":I
    :cond_13
    move/from16 v33, v4

    move/from16 v34, v9

    const/4 v9, 0x0

    .end local v4    # "index":I
    .end local v9    # "indexInVisibleLines":I
    .restart local v33    # "index":I
    .restart local v34    # "indexInVisibleLines":I
    move v5, v2

    move v4, v3

    move/from16 v30, v16

    .line 215
    .end local v2    # "scrollDelta":I
    .end local v3    # "currentMainAxisOffset":I
    .end local v16    # "currentFirstLineIndex":I
    .local v4, "currentMainAxisOffset":I
    .local v5, "scrollDelta":I
    .local v30, "currentFirstLineIndex":I
    :goto_c
    invoke-static/range {p9 .. p9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v0

    invoke-static {v5}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v2

    if-ne v0, v2, :cond_14

    .line 216
    invoke-static/range {p9 .. p9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v0, v2, :cond_14

    .line 218
    int-to-float v0, v5

    goto :goto_d

    .line 220
    :cond_14
    move/from16 v0, p9

    .line 215
    :goto_d
    move v3, v0

    .line 224
    .local v3, "consumedScroll":F
    if-ltz v1, :cond_15

    move/from16 v0, v29

    goto :goto_e

    :cond_15
    move v0, v9

    :goto_e
    if-eqz v0, :cond_30

    .line 225
    neg-int v2, v1

    .line 226
    .local v2, "visibleLinesScrollOffset":I
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 228
    .local v0, "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v16

    goto :goto_f

    :cond_16
    move/from16 v16, v9

    :goto_f
    move/from16 v35, v16

    .line 229
    .local v35, "firstItemIndex":I
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v16, :cond_17

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v16

    if-eqz v16, :cond_17

    invoke-static/range {v16 .. v16}, Lkotlin/collections/ArraysKt;->lastOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v16, :cond_17

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v16

    goto :goto_10

    :cond_17
    move/from16 v16, v9

    :goto_10
    move/from16 v36, v16

    .line 230
    .local v36, "lastItemIndex":I
    const/16 v16, 0x0

    .line 442
    .local v16, "$i$f$calculateExtraItems":I
    const/16 v17, 0x0

    .line 444
    .local v17, "items$iv":Ljava/lang/Object;
    move-object/from16 v18, p19

    .local v18, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v19, 0x0

    .line 445
    .local v19, "$i$f$fastForEach":I
    nop

    .line 446
    const/16 v20, 0x0

    .local v20, "index$iv$iv":I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v46, v20

    move-object/from16 v20, v0

    move/from16 v0, v46

    .local v0, "index$iv$iv":I
    .local v20, "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    :goto_11
    if-ge v0, v9, :cond_1c

    .line 447
    move/from16 v21, v1

    move-object/from16 v1, v18

    .end local v18    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v1, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v21, "currentFirstLineScrollOffset":I
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 448
    .local v18, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v22, v18

    check-cast v22, Ljava/lang/Number;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->intValue()I

    move-result v22

    .local v22, "index$iv":I
    const/16 v23, 0x0

    .line 449
    .local v23, "$i$a$-fastForEach-LazyGridMeasureKt$calculateExtraItems$1$iv":I
    move/from16 v24, v22

    .local v24, "it":I
    const/16 v25, 0x0

    .line 234
    .local v25, "$i$a$-calculateExtraItems-LazyGridMeasureKt$measureLazyGrid$extraItemsBefore$2":I
    move-object/from16 v26, v1

    move/from16 v1, v24

    .end local v24    # "it":I
    .local v1, "it":I
    .local v26, "$this$fastForEach$iv$iv":Ljava/util/List;
    if-ltz v1, :cond_18

    move/from16 v24, v9

    move/from16 v9, v35

    .end local v35    # "firstItemIndex":I
    .local v9, "firstItemIndex":I
    if-ge v1, v9, :cond_19

    move/from16 v1, v29

    goto :goto_12

    .end local v9    # "firstItemIndex":I
    .restart local v35    # "firstItemIndex":I
    :cond_18
    move/from16 v24, v9

    move/from16 v9, v35

    .end local v35    # "firstItemIndex":I
    .restart local v9    # "firstItemIndex":I
    :cond_19
    const/4 v1, 0x0

    .line 449
    .end local v1    # "it":I
    .end local v25    # "$i$a$-calculateExtraItems-LazyGridMeasureKt$measureLazyGrid$extraItemsBefore$2":I
    :goto_12
    if-eqz v1, :cond_1b

    .line 450
    move/from16 v1, v22

    .restart local v1    # "it":I
    const/16 v25, 0x0

    .line 233
    .local v25, "$i$a$-calculateExtraItems-LazyGridMeasureKt$measureLazyGrid$extraItemsBefore$1":I
    invoke-virtual {v14, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->itemConstraints-OenEA2s(I)J

    move-result-wide v40

    .line 450
    .end local v1    # "it":I
    .end local v25    # "$i$a$-calculateExtraItems-LazyGridMeasureKt$measureLazyGrid$extraItemsBefore$1":I
    nop

    .line 451
    .local v40, "constraints$iv":J
    nop

    .line 452
    nop

    .line 451
    const/16 v39, 0x0

    .line 453
    nop

    .line 451
    const/16 v42, 0x2

    const/16 v43, 0x0

    move-object/from16 v37, p2

    move/from16 v38, v22

    invoke-static/range {v37 .. v43}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure-3p2s80s$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIJILjava/lang/Object;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    .line 455
    .local v1, "measuredItem$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    if-nez v17, :cond_1a

    .line 456
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v25

    check-cast v17, Ljava/util/List;

    move/from16 v35, v5

    move-object/from16 v5, v17

    goto :goto_13

    .line 455
    :cond_1a
    move/from16 v35, v5

    move-object/from16 v5, v17

    .line 458
    .end local v17    # "items$iv":Ljava/lang/Object;
    .local v5, "items$iv":Ljava/lang/Object;
    .local v35, "scrollDelta":I
    :goto_13
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v5

    goto :goto_14

    .line 449
    .end local v1    # "measuredItem$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v35    # "scrollDelta":I
    .end local v40    # "constraints$iv":J
    .local v5, "scrollDelta":I
    .restart local v17    # "items$iv":Ljava/lang/Object;
    :cond_1b
    move/from16 v35, v5

    .line 460
    .end local v5    # "scrollDelta":I
    .restart local v35    # "scrollDelta":I
    :goto_14
    nop

    .line 448
    .end local v22    # "index$iv":I
    .end local v23    # "$i$a$-fastForEach-LazyGridMeasureKt$calculateExtraItems$1$iv":I
    nop

    .line 446
    .end local v18    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v21

    move-object/from16 v18, v26

    move/from16 v5, v35

    move/from16 v35, v9

    move/from16 v9, v24

    goto :goto_11

    .end local v9    # "firstItemIndex":I
    .end local v21    # "currentFirstLineScrollOffset":I
    .end local v26    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v1, "currentFirstLineScrollOffset":I
    .restart local v5    # "scrollDelta":I
    .local v18, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v35, "firstItemIndex":I
    :cond_1c
    move/from16 v21, v1

    move-object/from16 v26, v18

    move/from16 v9, v35

    move/from16 v35, v5

    .line 461
    .end local v0    # "index$iv$iv":I
    .end local v1    # "currentFirstLineScrollOffset":I
    .end local v5    # "scrollDelta":I
    .end local v18    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v9    # "firstItemIndex":I
    .restart local v21    # "currentFirstLineScrollOffset":I
    .restart local v26    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v35, "scrollDelta":I
    nop

    .line 462
    .end local v19    # "$i$f$fastForEach":I
    .end local v26    # "$this$fastForEach$iv$iv":Ljava/util/List;
    if-nez v17, :cond_1d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v17, v0

    .line 230
    .end local v16    # "$i$f$calculateExtraItems":I
    .end local v17    # "items$iv":Ljava/lang/Object;
    :cond_1d
    nop

    .line 237
    .local v17, "extraItemsBefore":Ljava/util/List;
    const/4 v0, 0x0

    .line 463
    .local v0, "$i$f$calculateExtraItems":I
    const/4 v1, 0x0

    .line 465
    .local v1, "items$iv":Ljava/lang/Object;
    move-object/from16 v5, p19

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 466
    .local v16, "$i$f$fastForEach":I
    nop

    .line 467
    const/16 v18, 0x0

    move/from16 v19, v0

    .end local v0    # "$i$f$calculateExtraItems":I
    .local v18, "index$iv$iv":I
    .local v19, "$i$f$calculateExtraItems":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v37, v7

    move/from16 v7, v18

    .end local v18    # "index$iv$iv":I
    .local v7, "index$iv$iv":I
    .local v37, "minOffset":I
    :goto_15
    if-ge v7, v0, :cond_21

    .line 468
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 469
    .local v18, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v22, v18

    check-cast v22, Ljava/lang/Number;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->intValue()I

    move-result v22

    .restart local v22    # "index$iv":I
    const/16 v23, 0x0

    .line 470
    .restart local v23    # "$i$a$-fastForEach-LazyGridMeasureKt$calculateExtraItems$1$iv":I
    move/from16 v24, v22

    .restart local v24    # "it":I
    const/16 v25, 0x0

    .line 241
    .local v25, "$i$a$-calculateExtraItems-LazyGridMeasureKt$measureLazyGrid$extraItemsAfter$2":I
    move/from16 v26, v0

    move/from16 v45, v9

    move/from16 v9, v36

    .end local v36    # "lastItemIndex":I
    .local v9, "lastItemIndex":I
    .local v45, "firstItemIndex":I
    add-int/lit8 v0, v9, 0x1

    move-object/from16 v27, v5

    move/from16 v5, v24

    .end local v24    # "it":I
    .local v5, "it":I
    .local v27, "$this$fastForEach$iv$iv":Ljava/util/List;
    if-gt v0, v5, :cond_1e

    if-ge v5, v15, :cond_1e

    move/from16 v0, v29

    goto :goto_16

    :cond_1e
    const/4 v0, 0x0

    .line 470
    .end local v5    # "it":I
    .end local v25    # "$i$a$-calculateExtraItems-LazyGridMeasureKt$measureLazyGrid$extraItemsAfter$2":I
    :goto_16
    if-eqz v0, :cond_20

    .line 471
    move/from16 v0, v22

    .local v0, "it":I
    const/4 v5, 0x0

    .line 240
    .local v5, "$i$a$-calculateExtraItems-LazyGridMeasureKt$measureLazyGrid$extraItemsAfter$1":I
    invoke-virtual {v14, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->itemConstraints-OenEA2s(I)J

    move-result-wide v41

    .line 471
    .end local v0    # "it":I
    .end local v5    # "$i$a$-calculateExtraItems-LazyGridMeasureKt$measureLazyGrid$extraItemsAfter$1":I
    nop

    .line 472
    .local v41, "constraints$iv":J
    nop

    .line 473
    nop

    .line 472
    const/16 v40, 0x0

    .line 474
    nop

    .line 472
    const/16 v43, 0x2

    const/16 v44, 0x0

    move-object/from16 v38, p2

    move/from16 v39, v22

    invoke-static/range {v38 .. v44}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure-3p2s80s$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIJILjava/lang/Object;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v0

    .line 476
    .local v0, "measuredItem$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    if-nez v1, :cond_1f

    .line 477
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    check-cast v1, Ljava/util/List;

    .line 479
    :cond_1f
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    .end local v0    # "measuredItem$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v41    # "constraints$iv":J
    :cond_20
    nop

    .line 469
    .end local v22    # "index$iv":I
    .end local v23    # "$i$a$-fastForEach-LazyGridMeasureKt$calculateExtraItems$1$iv":I
    nop

    .line 467
    .end local v18    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move/from16 v36, v9

    move/from16 v0, v26

    move-object/from16 v5, v27

    move/from16 v9, v45

    goto :goto_15

    .end local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v45    # "firstItemIndex":I
    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v9, "firstItemIndex":I
    .restart local v36    # "lastItemIndex":I
    :cond_21
    move-object/from16 v27, v5

    move/from16 v45, v9

    move/from16 v9, v36

    .line 482
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "index$iv$iv":I
    .end local v36    # "lastItemIndex":I
    .local v9, "lastItemIndex":I
    .restart local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v45    # "firstItemIndex":I
    nop

    .line 483
    .end local v16    # "$i$f$fastForEach":I
    .end local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    if-nez v1, :cond_22

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_17

    :cond_22
    move-object/from16 v18, v1

    .line 237
    .end local v1    # "items$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$calculateExtraItems":I
    :goto_17
    nop

    .line 246
    .local v18, "extraItemsAfter":Ljava/util/List;
    if-gtz v13, :cond_24

    if-gez p6, :cond_23

    goto :goto_18

    :cond_23
    move-object/from16 v36, v20

    move/from16 v38, v21

    goto :goto_1a

    .line 247
    :cond_24
    :goto_18
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    move/from16 v5, v21

    .end local v21    # "currentFirstLineScrollOffset":I
    .local v5, "currentFirstLineScrollOffset":I
    :goto_19
    if-ge v0, v1, :cond_26

    .line 248
    invoke-virtual {v8, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v7

    .line 249
    .local v7, "size":I
    if-eqz v5, :cond_25

    if-gt v7, v5, :cond_25

    .line 250
    move-object/from16 v16, v8

    check-cast v16, Ljava/util/List;

    move/from16 v19, v1

    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    if-eq v0, v1, :cond_25

    .line 251
    sub-int/2addr v5, v7

    .line 252
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v8, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 247
    .end local v7    # "size":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v19

    goto :goto_19

    .line 254
    .restart local v7    # "size":I
    :cond_25
    nop

    .line 259
    .end local v0    # "i":I
    .end local v7    # "size":I
    :cond_26
    move/from16 v38, v5

    move-object/from16 v36, v20

    .end local v5    # "currentFirstLineScrollOffset":I
    .end local v20    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .local v36, "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .local v38, "currentFirstLineScrollOffset":I
    :goto_1a
    if-eqz p12, :cond_27

    .line 260
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    move/from16 v19, v0

    goto :goto_1b

    .line 262
    :cond_27
    invoke-static {v11, v12, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v0

    move/from16 v19, v0

    .line 259
    :goto_1b
    nop

    .line 264
    .local v19, "layoutWidth":I
    if-eqz p12, :cond_28

    .line 265
    invoke-static {v11, v12, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v0

    move/from16 v20, v0

    goto :goto_1c

    .line 267
    :cond_28
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    move/from16 v20, v0

    .line 264
    :goto_1c
    nop

    .line 271
    .local v20, "layoutHeight":I
    move-object/from16 v16, v8

    check-cast v16, Ljava/util/List;

    .line 272
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

    .line 282
    nop

    .line 283
    nop

    .line 270
    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v23, v2

    move/from16 v24, p12

    move-object/from16 v25, p13

    move-object/from16 v26, p14

    move/from16 v27, p15

    move-object/from16 v28, p16

    invoke-static/range {v16 .. v28}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v7

    .line 286
    .local v7, "positionedItems":Ljava/util/List;
    nop

    .line 287
    float-to-int v1, v3

    .line 288
    nop

    .line 289
    nop

    .line 290
    nop

    .line 291
    nop

    .line 292
    nop

    .line 293
    nop

    .line 294
    nop

    .line 286
    move-object/from16 v0, p17

    move/from16 v16, v2

    .end local v2    # "visibleLinesScrollOffset":I
    .local v16, "visibleLinesScrollOffset":I
    move/from16 v2, v19

    move/from16 v22, v3

    .end local v3    # "consumedScroll":F
    .local v22, "consumedScroll":F
    move/from16 v3, v20

    move v5, v4

    move/from16 v23, v33

    .end local v4    # "currentMainAxisOffset":I
    .end local v33    # "index":I
    .local v5, "currentMainAxisOffset":I
    .local v23, "index":I
    move-object v4, v7

    move v14, v5

    move/from16 v24, v32

    move/from16 v25, v35

    .end local v5    # "currentMainAxisOffset":I
    .end local v32    # "maxMainAxis":I
    .end local v35    # "scrollDelta":I
    .local v14, "currentMainAxisOffset":I
    .local v24, "maxMainAxis":I
    .local v25, "scrollDelta":I
    move-object/from16 v5, p2

    move v12, v6

    .end local v6    # "maxOffset":I
    .local v12, "maxOffset":I
    move-object/from16 v6, p18

    move-object v11, v7

    move/from16 v26, v37

    .end local v7    # "positionedItems":Ljava/util/List;
    .end local v37    # "minOffset":I
    .local v11, "positionedItems":Ljava/util/List;
    .local v26, "minOffset":I
    move/from16 v7, p12

    move-object/from16 v27, v8

    .end local v8    # "visibleLines":Lkotlin/collections/ArrayDeque;
    .local v27, "visibleLines":Lkotlin/collections/ArrayDeque;
    move-object/from16 v8, p20

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;ZLkotlinx/coroutines/CoroutineScope;)V

    .line 298
    nop

    .line 299
    nop

    .line 301
    add-int/lit8 v0, v15, -0x1

    if-ne v9, v0, :cond_2a

    if-le v14, v12, :cond_29

    goto :goto_1d

    :cond_29
    const/4 v3, 0x0

    goto :goto_1e

    :cond_2a
    :goto_1d
    move/from16 v3, v29

    .line 303
    :goto_1e
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$5;

    move-object/from16 v8, p21

    invoke-direct {v2, v11, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$5;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v10, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    .line 308
    neg-int v7, v13

    .line 309
    add-int v21, p3, p5

    .line 310
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 311
    move-object/from16 v28, v11

    move/from16 v10, v45

    goto :goto_21

    .line 313
    :cond_2b
    move-object v0, v11

    .local v0, "$this$fastFilter$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 484
    .local v1, "$i$f$fastFilter":I
    nop

    .line 485
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 486
    .local v2, "target$iv":Ljava/util/ArrayList;
    move-object v4, v0

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 487
    .local v6, "$i$f$fastForEach":I
    nop

    .line 488
    const/16 v28, 0x0

    move-object/from16 v32, v0

    .end local v0    # "$this$fastFilter$iv":Ljava/util/List;
    .local v28, "index$iv$iv":I
    .local v32, "$this$fastFilter$iv":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v33, v1

    move/from16 v1, v28

    .end local v28    # "index$iv$iv":I
    .local v1, "index$iv$iv":I
    .local v33, "$i$f$fastFilter":I
    :goto_1f
    if-ge v1, v0, :cond_2e

    .line 489
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    .line 490
    .local v28, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v35, v28

    .local v35, "it$iv":Ljava/lang/Object;
    const/16 v37, 0x0

    .line 491
    .local v37, "$i$a$-fastForEach-ListUtilsKt$fastFilter$2$iv":I
    move/from16 v39, v0

    move-object/from16 v0, v35

    .end local v35    # "it$iv":Ljava/lang/Object;
    .local v0, "it$iv":Ljava/lang/Object;
    move-object/from16 v35, v0

    check-cast v35, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v35, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/16 v40, 0x0

    .line 314
    .local v40, "$i$a$-fastFilter-LazyGridMeasureKt$measureLazyGrid$6":I
    move-object/from16 v41, v4

    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v41, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v4

    move/from16 v10, v45

    .end local v45    # "firstItemIndex":I
    .local v10, "firstItemIndex":I
    if-gt v10, v4, :cond_2c

    if-gt v4, v9, :cond_2c

    move/from16 v4, v29

    goto :goto_20

    :cond_2c
    const/4 v4, 0x0

    .line 491
    .end local v35    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v40    # "$i$a$-fastFilter-LazyGridMeasureKt$measureLazyGrid$6":I
    :goto_20
    if-eqz v4, :cond_2d

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_2d
    nop

    .line 490
    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v37    # "$i$a$-fastForEach-ListUtilsKt$fastFilter$2$iv":I
    nop

    .line 488
    .end local v28    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    move/from16 v45, v10

    move/from16 v0, v39

    move-object/from16 v4, v41

    move-object/from16 v10, p22

    goto :goto_1f

    .end local v10    # "firstItemIndex":I
    .end local v41    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v45    # "firstItemIndex":I
    :cond_2e
    move-object/from16 v41, v4

    move/from16 v10, v45

    .line 493
    .end local v1    # "index$iv$iv":I
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v45    # "firstItemIndex":I
    .restart local v10    # "firstItemIndex":I
    .restart local v41    # "$this$fastForEach$iv$iv":Ljava/util/List;
    nop

    .line 494
    .end local v6    # "$i$f$fastForEach":I
    .end local v41    # "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object/from16 v28, v0

    .line 310
    .end local v2    # "target$iv":Ljava/util/ArrayList;
    .end local v32    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v33    # "$i$f$fastFilter":I
    :goto_21
    nop

    .line 319
    if-eqz p12, :cond_2f

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_22

    :cond_2f
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_22
    move-object/from16 v29, v0

    .line 322
    nop

    .line 297
    new-instance v32, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 298
    nop

    .line 299
    nop

    .line 301
    nop

    .line 302
    nop

    .line 303
    nop

    .line 322
    nop

    .line 310
    nop

    .line 308
    nop

    .line 309
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

    .line 297
    move-object/from16 v0, v32

    move-object/from16 v1, v36

    move/from16 v2, v38

    move/from16 v4, v22

    move/from16 v6, v31

    move/from16 v33, v7

    move-object/from16 v7, v28

    move/from16 v8, v33

    move/from16 v33, v10

    move/from16 v28, v34

    move/from16 v34, v9

    .end local v9    # "lastItemIndex":I
    .end local v10    # "firstItemIndex":I
    .local v28, "indexInVisibleLines":I
    .local v33, "firstItemIndex":I
    .local v34, "lastItemIndex":I
    move/from16 v9, v21

    move/from16 v10, p0

    move-object/from16 v21, v11

    .end local v11    # "positionedItems":Ljava/util/List;
    .local v21, "positionedItems":Ljava/util/List;
    move/from16 v11, p15

    move/from16 v35, v12

    .end local v12    # "maxOffset":I
    .local v35, "maxOffset":I
    move-object/from16 v12, v29

    move/from16 v13, p5

    move/from16 v29, v14

    .end local v14    # "currentMainAxisOffset":I
    .local v29, "currentMainAxisOffset":I
    move/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v32

    .line 441
    .end local v16    # "visibleLinesScrollOffset":I
    .end local v17    # "extraItemsBefore":Ljava/util/List;
    .end local v18    # "extraItemsAfter":Ljava/util/List;
    .end local v19    # "layoutWidth":I
    .end local v20    # "layoutHeight":I
    .end local v21    # "positionedItems":Ljava/util/List;
    .end local v22    # "consumedScroll":F
    .end local v23    # "index":I
    .end local v24    # "maxMainAxis":I
    .end local v25    # "scrollDelta":I
    .end local v26    # "minOffset":I
    .end local v27    # "visibleLines":Lkotlin/collections/ArrayDeque;
    .end local v28    # "indexInVisibleLines":I
    .end local v29    # "currentMainAxisOffset":I
    .end local v35    # "maxOffset":I
    .end local v36    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v38    # "currentFirstLineScrollOffset":I
    .local v1, "currentFirstLineScrollOffset":I
    .restart local v3    # "consumedScroll":F
    .local v4, "currentMainAxisOffset":I
    .local v5, "scrollDelta":I
    .local v6, "maxOffset":I
    .local v7, "minOffset":I
    .restart local v8    # "visibleLines":Lkotlin/collections/ArrayDeque;
    .local v32, "maxMainAxis":I
    .local v33, "index":I
    .local v34, "indexInVisibleLines":I
    :cond_30
    move/from16 v21, v1

    .end local v1    # "currentFirstLineScrollOffset":I
    .local v21, "currentFirstLineScrollOffset":I
    const/4 v0, 0x0

    .line 224
    .local v0, "$i$a$-require-LazyGridMeasureKt$measureLazyGrid$4":I
    nop

    .end local v0    # "$i$a$-require-LazyGridMeasureKt$measureLazyGrid$4":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative initial offset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    .end local v3    # "consumedScroll":F
    .end local v4    # "currentMainAxisOffset":I
    .end local v5    # "scrollDelta":I
    .end local v6    # "maxOffset":I
    .end local v7    # "minOffset":I
    .end local v8    # "visibleLines":Lkotlin/collections/ArrayDeque;
    .end local v21    # "currentFirstLineScrollOffset":I
    .end local v30    # "currentFirstLineIndex":I
    .end local v31    # "remeasureNeeded":Z
    .end local v32    # "maxMainAxis":I
    .end local v33    # "index":I
    .end local v34    # "indexInVisibleLines":I
    :cond_31
    const/4 v0, 0x0

    .line 70
    .local v0, "$i$a$-require-LazyGridMeasureKt$measureLazyGrid$2":I
    nop

    .end local v0    # "$i$a$-require-LazyGridMeasureKt$measureLazyGrid$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative afterContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_32
    const/4 v0, 0x0

    .line 69
    .local v0, "$i$a$-require-LazyGridMeasureKt$measureLazyGrid$1":I
    nop

    .end local v0    # "$i$a$-require-LazyGridMeasureKt$measureLazyGrid$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative beforeContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
