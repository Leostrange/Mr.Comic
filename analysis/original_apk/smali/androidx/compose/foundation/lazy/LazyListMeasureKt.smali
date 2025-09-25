.class public final Landroidx/compose/foundation/lazy/LazyListMeasureKt;
.super Ljava/lang/Object;
.source "LazyListMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,606:1\n1#2:607\n33#3,6:608\n33#3,6:614\n235#3,3:620\n33#3,4:623\n238#3,2:627\n38#3:629\n240#3:630\n116#3,2:631\n33#3,6:633\n118#3:639\n116#3,2:640\n33#3,6:642\n118#3:648\n116#3,2:649\n33#3,6:651\n118#3:657\n33#3,6:658\n51#3,6:664\n33#3,6:670\n33#3,6:676\n33#3,6:682\n*S KotlinDebug\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt\n*L\n288#1:608,6\n305#1:614,6\n376#1:620,3\n376#1:623,4\n376#1:627,2\n376#1:629\n376#1:630\n434#1:631,2\n434#1:633,6\n434#1:639\n451#1:640,2\n451#1:642,6\n451#1:648\n453#1:649,2\n453#1:651,6\n453#1:657\n474#1:658,6\n501#1:664,6\n585#1:670,6\n592#1:676,6\n598#1:682,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u008c\u0001\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u001a\\\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00042\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0002\u001a4\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010#\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004H\u0002\u001a\u0095\u0002\u0010$\u001a\u00020%2\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u001e2\u0006\u0010-\u001a\u00020.2\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u00100\u001a\u0002012\u0006\u0010\u001b\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00042\u0006\u00102\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0008\u00103\u001a\u0004\u0018\u00010!2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072/\u00108\u001a+\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<0:\u00a2\u0006\u0002\u0008=\u0012\u0004\u0012\u00020>09H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010@\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006A"
    }
    d2 = {
        "calculateItemsOffsets",
        "",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
        "items",
        "",
        "extraItemsBefore",
        "extraItemsAfter",
        "layoutWidth",
        "",
        "layoutHeight",
        "finalMainAxisOffset",
        "maxOffset",
        "itemsScrollOffset",
        "isVertical",
        "",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "reverseLayout",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "createItemsAfterList",
        "visibleItems",
        "measuredItemProvider",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
        "itemsCount",
        "beyondBoundsItemCount",
        "pinnedItems",
        "consumedScroll",
        "",
        "isLookingAhead",
        "lastPostLookaheadLayoutInfo",
        "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "createItemsBeforeList",
        "currentFirstItemIndex",
        "measureLazyList",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "mainAxisAvailableSize",
        "beforeContentPadding",
        "afterContentPadding",
        "spaceBetweenItems",
        "firstVisibleItemIndex",
        "firstVisibleItemScrollOffset",
        "scrollToBeConsumed",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "headerIndexes",
        "itemAnimator",
        "Landroidx/compose/foundation/lazy/LazyListItemAnimator;",
        "hasLookaheadPassOccurred",
        "postLookaheadLayoutInfo",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "placementScopeInvalidator",
        "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;",
        "layout",
        "Lkotlin/Function3;",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measureLazyList-5IMabDg",
        "(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/LazyListLayoutInfo;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
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
.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 20
    .param p0, "items"    # Ljava/util/List;
    .param p1, "extraItemsBefore"    # Ljava/util/List;
    .param p2, "extraItemsAfter"    # Ljava/util/List;
    .param p3, "layoutWidth"    # I
    .param p4, "layoutHeight"    # I
    .param p5, "finalMainAxisOffset"    # I
    .param p6, "maxOffset"    # I
    .param p7, "itemsScrollOffset"    # I
    .param p8, "isVertical"    # Z
    .param p9, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p10, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p11, "reverseLayout"    # Z
    .param p12, "density"    # Landroidx/compose/ui/unit/Density;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 529
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p11

    if-eqz p8, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 530
    .local v4, "mainAxisLayoutSize":I
    :goto_0
    move/from16 v11, p6

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v12, p5

    if-ge v12, v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    move v13, v5

    .line 531
    .local v13, "hasSpareSpace":Z
    if-eqz v13, :cond_4

    .line 532
    if-nez p7, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    if-eqz v5, :cond_3

    goto :goto_3

    .line 607
    :cond_3
    const/4 v5, 0x0

    .line 532
    .local v5, "$i$a$-check-LazyListMeasureKt$calculateItemsOffsets$1":I
    nop

    .end local v5    # "$i$a$-check-LazyListMeasureKt$calculateItemsOffsets$1":I
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "non-zero itemsScrollOffset"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 536
    :cond_4
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 535
    move-object v14, v5

    .line 538
    .local v14, "positionedItems":Ljava/util/ArrayList;
    if-eqz v13, :cond_10

    .line 539
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move v7, v6

    :goto_4
    if-eqz v7, :cond_f

    .line 541
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v15

    .line 545
    .local v15, "itemsCount":I
    new-array v5, v15, [I

    move v7, v6

    :goto_5
    if-ge v7, v15, :cond_6

    .line 546
    invoke-static {v7, v3, v15}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    .line 545
    goto :goto_5

    :cond_6
    move-object v10, v5

    .line 548
    .local v10, "sizes":[I
    new-array v5, v15, [I

    move v7, v6

    :goto_6
    if-ge v7, v15, :cond_7

    aput v6, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    move-object v9, v5

    .line 549
    .local v9, "offsets":[I
    if-eqz p8, :cond_9

    .line 551
    if-eqz p9, :cond_8

    .line 550
    move-object/from16 v5, p9

    .local v5, "$this$calculateItemsOffsets_u24lambda_u2416":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/4 v6, 0x0

    .line 555
    .local v6, "$i$a$-with-LazyListMeasureKt$calculateItemsOffsets$4":I
    move-object/from16 v8, p12

    invoke-interface {v5, v8, v4, v10, v9}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 556
    nop

    .line 550
    .end local v5    # "$this$calculateItemsOffsets_u24lambda_u2416":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v6    # "$i$a$-with-LazyListMeasureKt$calculateItemsOffsets$4":I
    move-object/from16 v18, v9

    move-object/from16 v17, v10

    goto :goto_7

    .line 551
    :cond_8
    move-object/from16 v8, p12

    const/4 v5, 0x0

    .line 552
    .local v5, "$i$a$-requireNotNull-LazyListMeasureKt$calculateItemsOffsets$3":I
    nop

    .line 551
    .end local v5    # "$i$a$-requireNotNull-LazyListMeasureKt$calculateItemsOffsets$3":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "null verticalArrangement when isVertical == true"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 559
    :cond_9
    move-object/from16 v8, p12

    if-eqz p10, :cond_e

    .line 558
    move-object/from16 v5, p10

    .local v5, "$this$calculateItemsOffsets_u24lambda_u2418":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v16, 0x0

    .line 564
    .local v16, "$i$a$-with-LazyListMeasureKt$calculateItemsOffsets$6":I
    sget-object v17, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v6, p12

    move v7, v4

    move-object v8, v10

    move-object/from16 v18, v9

    .end local v9    # "offsets":[I
    .local v18, "offsets":[I
    move-object/from16 v9, v17

    move-object/from16 v17, v10

    .end local v10    # "sizes":[I
    .local v17, "sizes":[I
    move-object/from16 v10, v18

    invoke-interface/range {v5 .. v10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 565
    nop

    .line 558
    .end local v5    # "$this$calculateItemsOffsets_u24lambda_u2418":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v16    # "$i$a$-with-LazyListMeasureKt$calculateItemsOffsets$6":I
    nop

    .line 569
    :goto_7
    invoke-static/range {v18 .. v18}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v5

    check-cast v5, Lkotlin/ranges/IntProgression;

    if-nez v3, :cond_a

    goto :goto_8

    :cond_a
    invoke-static {v5}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v5

    .line 568
    :goto_8
    nop

    .line 570
    .local v5, "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v6

    .local v6, "index":I
    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v8

    if-lez v8, :cond_b

    if-le v6, v7, :cond_c

    :cond_b
    if-gez v8, :cond_14

    if-gt v7, v6, :cond_14

    .line 571
    :cond_c
    :goto_9
    aget v9, v18, v6

    .line 573
    .local v9, "absoluteOffset":I
    invoke-static {v6, v3, v15}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v10

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 574
    .local v10, "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    if-eqz v3, :cond_d

    .line 576
    sub-int v16, v4, v9

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v19

    sub-int v16, v16, v19

    goto :goto_a

    .line 578
    :cond_d
    move/from16 v16, v9

    .line 574
    :goto_a
    move/from16 v19, v16

    .line 580
    .local v19, "relativeOffset":I
    move/from16 v0, v19

    .end local v19    # "relativeOffset":I
    .local v0, "relativeOffset":I
    invoke-virtual {v10, v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 581
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    .end local v0    # "relativeOffset":I
    .end local v9    # "absoluteOffset":I
    .end local v10    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    if-eq v6, v7, :cond_14

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    goto :goto_9

    .line 559
    .end local v5    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    .end local v6    # "index":I
    .end local v17    # "sizes":[I
    .end local v18    # "offsets":[I
    .local v9, "offsets":[I
    .local v10, "sizes":[I
    :cond_e
    const/4 v0, 0x0

    .line 560
    .local v0, "$i$a$-requireNotNull-LazyListMeasureKt$calculateItemsOffsets$5":I
    nop

    .line 559
    .end local v0    # "$i$a$-requireNotNull-LazyListMeasureKt$calculateItemsOffsets$5":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "null horizontalArrangement when isVertical == false"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    .end local v9    # "offsets":[I
    .end local v10    # "sizes":[I
    .end local v15    # "itemsCount":I
    :cond_f
    const/4 v0, 0x0

    .line 539
    .local v0, "$i$a$-require-LazyListMeasureKt$calculateItemsOffsets$2":I
    nop

    .end local v0    # "$i$a$-require-LazyListMeasureKt$calculateItemsOffsets$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "no extra items"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_10
    const/4 v0, 0x0

    .local v0, "currentMainAxis":I
    move/from16 v0, p7

    .line 585
    move-object/from16 v5, p1

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 670
    .local v6, "$i$f$fastForEach":I
    nop

    .line 671
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_b
    if-ge v7, v8, :cond_11

    .line 672
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 673
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v10, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v15, 0x0

    .line 586
    .local v15, "$i$a$-fastForEach-LazyListMeasureKt$calculateItemsOffsets$7":I
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v16

    sub-int v0, v0, v16

    .line 587
    invoke-virtual {v10, v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 588
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    nop

    .line 673
    .end local v10    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v15    # "$i$a$-fastForEach-LazyListMeasureKt$calculateItemsOffsets$7":I
    nop

    .line 671
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 675
    .end local v7    # "index$iv":I
    :cond_11
    nop

    .line 591
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move/from16 v0, p7

    .line 592
    move-object/from16 v5, p0

    .restart local v5    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 676
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 677
    const/4 v7, 0x0

    .restart local v7    # "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_c
    if-ge v7, v8, :cond_12

    .line 678
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 679
    .restart local v9    # "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .restart local v10    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v15, 0x0

    .line 593
    .local v15, "$i$a$-fastForEach-LazyListMeasureKt$calculateItemsOffsets$8":I
    invoke-virtual {v10, v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 594
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v16

    add-int v0, v0, v16

    .line 596
    nop

    .line 679
    .end local v10    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v15    # "$i$a$-fastForEach-LazyListMeasureKt$calculateItemsOffsets$8":I
    nop

    .line 677
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 681
    .end local v7    # "index$iv":I
    :cond_12
    nop

    .line 598
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object/from16 v5, p2

    .restart local v5    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 682
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 683
    const/4 v7, 0x0

    .restart local v7    # "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_d
    if-ge v7, v8, :cond_13

    .line 684
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 685
    .restart local v9    # "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .restart local v10    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v15, 0x0

    .line 599
    .local v15, "$i$a$-fastForEach-LazyListMeasureKt$calculateItemsOffsets$9":I
    invoke-virtual {v10, v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 600
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v16

    add-int v0, v0, v16

    .line 602
    nop

    .line 685
    .end local v10    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v15    # "$i$a$-fastForEach-LazyListMeasureKt$calculateItemsOffsets$9":I
    nop

    .line 683
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 687
    .end local v7    # "index$iv":I
    :cond_13
    nop

    .line 604
    .end local v0    # "currentMainAxis":I
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    :cond_14
    move-object v0, v14

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final calculateItemsOffsets$reverseAware(IZI)I
    .locals 1
    .param p0, "$this$calculateItemsOffsets_u24reverseAware"    # I
    .param p1, "$reverseLayout"    # Z
    .param p2, "itemsCount"    # I

    .line 543
    if-nez p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    sub-int v0, p2, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method private static final createItemsAfterList(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IILjava/util/List;FZLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)Ljava/util/List;
    .locals 21
    .param p0, "visibleItems"    # Ljava/util/List;
    .param p1, "measuredItemProvider"    # Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
    .param p2, "itemsCount"    # I
    .param p3, "beyondBoundsItemCount"    # I
    .param p4, "pinnedItems"    # Ljava/util/List;
    .param p5, "consumedScroll"    # F
    .param p6, "isLookingAhead"    # Z
    .param p7, "lastPostLookaheadLayoutInfo"    # Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FZ",
            "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 402
    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 404
    .local v2, "list":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "end":I
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v3

    .line 406
    add-int v4, v3, p3

    add-int/lit8 v5, v1, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 408
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .local v4, "i":I
    if-gt v4, v3, :cond_1

    .line 409
    :goto_0
    if-nez v2, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    check-cast v2, Ljava/util/List;

    .line 410
    :cond_0
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    if-eq v4, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 413
    .end local v4    # "i":I
    :cond_1
    if-eqz p6, :cond_16

    .line 415
    if-eqz p7, :cond_16

    .line 416
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_16

    .line 420
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    .local v4, "$this$createItemsAfterList_u24lambda_u246":Ljava/util/List;
    const/4 v6, 0x0

    .line 421
    .local v6, "$i$a$-run-LazyListMeasureKt$createItemsAfterList$firstItem$1":I
    const/4 v7, 0x0

    .line 422
    .local v7, "found":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    .local v8, "i":I
    :goto_1
    const/4 v9, -0x1

    if-ge v9, v8, :cond_4

    .line 423
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v9}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v9

    if-le v9, v3, :cond_3

    if-eqz v8, :cond_2

    add-int/lit8 v9, v8, -0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v9}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v9

    if-gt v9, v3, :cond_3

    .line 424
    :cond_2
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 425
    goto :goto_2

    .line 422
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 428
    .end local v8    # "i":I
    :cond_4
    :goto_2
    nop

    .line 420
    .end local v4    # "$this$createItemsAfterList_u24lambda_u246":Ljava/util/List;
    .end local v6    # "$i$a$-run-LazyListMeasureKt$createItemsAfterList$firstItem$1":I
    .end local v7    # "found":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    move-object v4, v7

    .line 430
    .local v4, "firstItem":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 431
    .local v6, "lastVisibleItem":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    if-eqz v4, :cond_b

    .line 432
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v9

    .local v9, "i":I
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v10

    add-int/lit8 v11, v1, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-gt v9, v10, :cond_b

    .line 434
    :goto_3
    if-eqz v2, :cond_8

    move-object v11, v2

    .local v11, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 631
    .local v12, "$i$f$fastFirstOrNull":I
    nop

    .line 632
    move-object v13, v11

    .local v13, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v14, 0x0

    .line 633
    .local v14, "$i$f$fastForEach":I
    nop

    .line 634
    const/4 v15, 0x0

    .local v15, "index$iv$iv":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    :goto_4
    if-ge v15, v7, :cond_7

    .line 635
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 636
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 632
    .local v18, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v19, v17

    check-cast v19, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v19, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v20, 0x0

    .line 434
    .local v20, "$i$a$-fastFirstOrNull-LazyListMeasureKt$createItemsAfterList$1":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v8

    if-ne v8, v9, :cond_5

    move v8, v5

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 632
    .end local v19    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v20    # "$i$a$-fastFirstOrNull-LazyListMeasureKt$createItemsAfterList$1":I
    :goto_5
    if-eqz v8, :cond_6

    goto :goto_6

    .line 636
    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 634
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 638
    .end local v15    # "index$iv$iv":I
    :cond_7
    nop

    .line 639
    .end local v13    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v14    # "$i$f$fastForEach":I
    const/16 v17, 0x0

    .line 434
    .end local v11    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastFirstOrNull":I
    :goto_6
    check-cast v17, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_7

    :cond_8
    const/16 v17, 0x0

    :goto_7
    if-nez v17, :cond_a

    .line 435
    if-nez v2, :cond_9

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    check-cast v2, Ljava/util/List;

    .line 436
    :cond_9
    invoke-virtual {v0, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_a
    if-eq v9, v10, :cond_b

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 444
    .end local v9    # "i":I
    :cond_b
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportEndOffset()I

    move-result v7

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v8

    sub-int/2addr v7, v8

    .line 445
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v8

    .line 444
    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 445
    nop

    .line 444
    sub-float v7, v7, p5

    .line 443
    nop

    .line 446
    .local v7, "additionalOffset":F
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_16

    .line 447
    const/4 v8, 0x0

    .local v8, "index":I
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v9

    add-int/2addr v9, v5

    .line 448
    .end local v8    # "index":I
    .local v9, "index":I
    const/4 v8, 0x0

    .line 449
    .local v8, "totalOffset":I
    :goto_8
    if-ge v9, v1, :cond_16

    int-to-float v10, v8

    cmpg-float v10, v10, v7

    if-gez v10, :cond_16

    .line 450
    if-gt v9, v3, :cond_f

    .line 451
    move-object/from16 v10, p0

    .local v10, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 640
    .local v11, "$i$f$fastFirstOrNull":I
    nop

    .line 641
    move-object v12, v10

    .local v12, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 642
    .local v13, "$i$f$fastForEach":I
    nop

    .line 643
    const/4 v14, 0x0

    .local v14, "index$iv$iv":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    :goto_9
    if-ge v14, v15, :cond_e

    .line 644
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 645
    .restart local v16    # "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .restart local v17    # "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 641
    .restart local v18    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v19, v17

    check-cast v19, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .restart local v19    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v20, 0x0

    .line 451
    .local v20, "$i$a$-fastFirstOrNull-LazyListMeasureKt$createItemsAfterList$item$1":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v5

    if-ne v5, v9, :cond_c

    const/4 v5, 0x1

    goto :goto_a

    :cond_c
    const/4 v5, 0x0

    .line 641
    .end local v19    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v20    # "$i$a$-fastFirstOrNull-LazyListMeasureKt$createItemsAfterList$item$1":I
    :goto_a
    if-eqz v5, :cond_d

    goto :goto_b

    .line 645
    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_d
    nop

    .line 643
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x1

    goto :goto_9

    .line 647
    .end local v14    # "index$iv$iv":I
    :cond_e
    nop

    .line 648
    .end local v12    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEach":I
    const/16 v17, 0x0

    .end local v10    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastFirstOrNull":I
    :goto_b
    check-cast v17, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_f

    .line 452
    :cond_f
    nop

    .line 453
    if-eqz v2, :cond_13

    move-object v5, v2

    .local v5, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 649
    .local v10, "$i$f$fastFirstOrNull":I
    nop

    .line 650
    move-object v11, v5

    .local v11, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 651
    .local v12, "$i$f$fastForEach":I
    nop

    .line 652
    const/4 v13, 0x0

    .local v13, "index$iv$iv":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    :goto_c
    if-ge v13, v14, :cond_12

    .line 653
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 654
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 650
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v18, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v19, 0x0

    .line 453
    .local v19, "$i$a$-fastFirstOrNull-LazyListMeasureKt$createItemsAfterList$item$2":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v1

    if-ne v1, v9, :cond_10

    const/4 v1, 0x1

    goto :goto_d

    :cond_10
    const/4 v1, 0x0

    .line 650
    .end local v18    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v19    # "$i$a$-fastFirstOrNull-LazyListMeasureKt$createItemsAfterList$item$2":I
    :goto_d
    if-eqz v1, :cond_11

    goto :goto_e

    .line 654
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_11
    nop

    .line 652
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p2

    goto :goto_c

    .line 656
    .end local v13    # "index$iv$iv":I
    :cond_12
    nop

    .line 657
    .end local v11    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    const/16 v16, 0x0

    .end local v5    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastFirstOrNull":I
    :goto_e
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_f

    .line 453
    :cond_13
    const/16 v17, 0x0

    .line 450
    :goto_f
    move-object/from16 v1, v17

    .line 454
    .local v1, "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    if-eqz v1, :cond_14

    .line 455
    add-int/lit8 v9, v9, 0x1

    .line 456
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v5

    add-int/2addr v8, v5

    move/from16 v1, p2

    const/4 v5, 0x1

    goto/16 :goto_8

    .line 458
    :cond_14
    if-nez v2, :cond_15

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    check-cast v2, Ljava/util/List;

    .line 459
    :cond_15
    invoke-virtual {v0, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    add-int/lit8 v9, v9, 0x1

    .line 461
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v5

    add-int/2addr v8, v5

    move/from16 v1, p2

    const/4 v5, 0x1

    .end local v1    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    goto/16 :goto_8

    .line 469
    .end local v4    # "firstItem":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .end local v6    # "lastVisibleItem":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .end local v7    # "additionalOffset":F
    .end local v8    # "totalOffset":I
    .end local v9    # "index":I
    :cond_16
    if-eqz v2, :cond_18

    move-object v1, v2

    .local v1, "it":Ljava/util/List;
    const/4 v4, 0x0

    .line 470
    .local v4, "$i$a$-let-LazyListMeasureKt$createItemsAfterList$2":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v5

    if-le v5, v3, :cond_17

    .line 471
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v3

    .line 473
    :cond_17
    nop

    .line 469
    .end local v1    # "it":Ljava/util/List;
    .end local v4    # "$i$a$-let-LazyListMeasureKt$createItemsAfterList$2":I
    nop

    .line 474
    :cond_18
    move-object/from16 v1, p4

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 658
    .local v4, "$i$f$fastForEach":I
    nop

    .line 659
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    :goto_10
    if-ge v5, v6, :cond_1b

    .line 660
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 661
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .local v8, "index":I
    const/4 v9, 0x0

    .line 475
    .local v9, "$i$a$-fastForEach-LazyListMeasureKt$createItemsAfterList$3":I
    if-le v8, v3, :cond_1a

    .line 476
    if-nez v2, :cond_19

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v10

    check-cast v2, Ljava/util/List;

    .line 477
    :cond_19
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_1a
    nop

    .line 661
    .end local v8    # "index":I
    .end local v9    # "$i$a$-fastForEach-LazyListMeasureKt$createItemsAfterList$3":I
    nop

    .line 659
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 663
    .end local v5    # "index$iv":I
    :cond_1b
    nop

    .line 481
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    if-nez v2, :cond_1c

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_11

    :cond_1c
    move-object v1, v2

    :goto_11
    return-object v1
.end method

.method private static final createItemsBeforeList(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ILjava/util/List;)Ljava/util/List;
    .locals 10
    .param p0, "currentFirstItemIndex"    # I
    .param p1, "measuredItemProvider"    # Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
    .param p2, "beyondBoundsItemCount"    # I
    .param p3, "pinnedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 490
    const/4 v0, 0x0

    .line 492
    .local v0, "list":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "start":I
    move v1, p0

    .line 494
    const/4 v2, 0x0

    sub-int v3, v1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 496
    add-int/lit8 v2, p0, -0x1

    .local v2, "i":I
    if-gt v1, v2, :cond_1

    .line 497
    :goto_0
    if-nez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 498
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    if-eq v2, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 501
    .end local v2    # "i":I
    :cond_1
    move-object v2, p3

    .local v2, "$this$fastForEachReversed$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 664
    .local v3, "$i$f$fastForEachReversed":I
    nop

    .line 665
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_5

    :cond_2
    move v5, v4

    .local v5, "index$iv":I
    add-int/lit8 v4, v4, -0x1

    .line 666
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 667
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .local v7, "index":I
    const/4 v8, 0x0

    .line 502
    .local v8, "$i$a$-fastForEachReversed-LazyListMeasureKt$createItemsBeforeList$1":I
    if-ge v7, v1, :cond_4

    .line 503
    if-nez v0, :cond_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 504
    :cond_3
    invoke-virtual {p1, v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_4
    nop

    .line 667
    .end local v7    # "index":I
    .end local v8    # "$i$a$-fastForEachReversed-LazyListMeasureKt$createItemsBeforeList$1":I
    nop

    .line 665
    .end local v6    # "item$iv":Ljava/lang/Object;
    if-gez v4, :cond_2

    .line 669
    .end local v5    # "index$iv":I
    :cond_5
    nop

    .line 508
    .end local v2    # "$this$fastForEachReversed$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEachReversed":I
    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_6
    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method public static final measureLazyList-5IMabDg(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/LazyListLayoutInfo;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 52
    .param p0, "itemsCount"    # I
    .param p1, "measuredItemProvider"    # Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
    .param p2, "mainAxisAvailableSize"    # I
    .param p3, "beforeContentPadding"    # I
    .param p4, "afterContentPadding"    # I
    .param p5, "spaceBetweenItems"    # I
    .param p6, "firstVisibleItemIndex"    # I
    .param p7, "firstVisibleItemScrollOffset"    # I
    .param p8, "scrollToBeConsumed"    # F
    .param p9, "constraints"    # J
    .param p11, "isVertical"    # Z
    .param p12, "headerIndexes"    # Ljava/util/List;
    .param p13, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p14, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p15, "reverseLayout"    # Z
    .param p16, "density"    # Landroidx/compose/ui/unit/Density;
    .param p17, "itemAnimator"    # Landroidx/compose/foundation/lazy/LazyListItemAnimator;
    .param p18, "beyondBoundsItemCount"    # I
    .param p19, "pinnedItems"    # Ljava/util/List;
    .param p20, "hasLookaheadPassOccurred"    # Z
    .param p21, "isLookingAhead"    # Z
    .param p22, "postLookaheadLayoutInfo"    # Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .param p23, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p24, "placementScopeInvalidator"    # Landroidx/compose/runtime/MutableState;
    .param p25, "layout"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/LazyListItemAnimator;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZ",
            "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
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
            "Landroidx/compose/foundation/lazy/LazyListMeasureResult;"
        }
    .end annotation

    .line 70
    move/from16 v15, p0

    move-object/from16 v13, p1

    move/from16 v12, p3

    move-wide/from16 v10, p9

    move/from16 v14, p21

    move-object/from16 v9, p25

    const/4 v8, 0x0

    const/16 v16, 0x1

    if-ltz v12, :cond_0

    move/from16 v0, v16

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    if-eqz v0, :cond_2d

    .line 71
    if-ltz p4, :cond_1

    move/from16 v0, v16

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    if-eqz v0, :cond_2c

    .line 72
    if-gtz v15, :cond_3

    .line 74
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v32

    .line 75
    .local v32, "layoutWidth":I
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v33

    .line 76
    .local v33, "layoutHeight":I
    nop

    .line 77
    const/4 v1, 0x0

    .line 78
    nop

    .line 79
    nop

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 81
    nop

    .line 82
    nop

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 76
    move-object/from16 v0, p17

    move/from16 v2, v32

    move/from16 v3, v33

    move-object/from16 v5, p1

    move/from16 v6, p11

    move/from16 v7, p21

    move/from16 v8, p20

    move-object v10, v9

    move-object/from16 v9, p23

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ZZZLkotlinx/coroutines/CoroutineScope;)V

    .line 92
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;

    invoke-interface {v10, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroidx/compose/ui/layout/MeasureResult;

    .line 94
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v24

    .line 95
    neg-int v0, v12

    .line 96
    add-int v26, p2, p4

    .line 99
    if-eqz p11, :cond_2

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :cond_2
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2
    move-object/from16 v29, v1

    .line 87
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 88
    const/16 v17, 0x0

    .line 89
    const/16 v18, 0x0

    .line 90
    const/16 v19, 0x0

    .line 91
    const/16 v20, 0x0

    .line 92
    nop

    .line 93
    const/16 v22, 0x0

    .line 102
    const/16 v23, 0x0

    .line 94
    nop

    .line 95
    nop

    .line 96
    nop

    .line 97
    const/16 v27, 0x0

    .line 98
    nop

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 87
    move-object/from16 v16, v1

    move/from16 v25, v0

    move/from16 v28, p15

    move/from16 v30, p4

    move/from16 v31, p5

    invoke-direct/range {v16 .. v31}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v1

    .line 105
    .end local v32    # "layoutWidth":I
    .end local v33    # "layoutHeight":I
    :cond_3
    move-object v10, v9

    move/from16 v0, p6

    .line 106
    .local v0, "currentFirstItemIndex":I
    move/from16 v1, p7

    .line 107
    .local v1, "currentFirstItemScrollOffset":I
    if-lt v0, v15, :cond_4

    .line 110
    add-int/lit8 v0, v15, -0x1

    .line 111
    const/4 v1, 0x0

    .line 115
    :cond_4
    invoke-static/range {p8 .. p8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 119
    .local v2, "scrollDelta":I
    sub-int/2addr v1, v2

    .line 122
    if-nez v0, :cond_5

    if-gez v1, :cond_5

    .line 123
    add-int/2addr v2, v1

    .line 124
    const/4 v1, 0x0

    .line 128
    :cond_5
    new-instance v3, Lkotlin/collections/ArrayDeque;

    invoke-direct {v3}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object v11, v3

    .line 131
    .local v11, "visibleItems":Lkotlin/collections/ArrayDeque;
    neg-int v3, v12

    if-gez p5, :cond_6

    move/from16 v4, p5

    goto :goto_3

    :cond_6
    move v4, v8

    :goto_3
    add-int v9, v3, v4

    .line 132
    .local v9, "minOffset":I
    move/from16 v7, p2

    .line 137
    .local v7, "maxOffset":I
    add-int/2addr v1, v9

    .line 140
    const/4 v3, 0x0

    .line 145
    .local v3, "maxCrossAxis":I
    const/4 v4, 0x0

    .line 150
    .local v4, "remeasureNeeded":Z
    :goto_4
    if-gez v1, :cond_7

    if-lez v0, :cond_7

    .line 151
    add-int/lit8 v5, v0, -0x1

    .line 152
    .local v5, "previous":I
    invoke-virtual {v13, v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v6

    .line 153
    .local v6, "measuredItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    invoke-virtual {v11, v8, v6}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 154
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 155
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v8

    add-int/2addr v1, v8

    .line 156
    move v0, v5

    const/4 v8, 0x0

    .end local v5    # "previous":I
    .end local v6    # "measuredItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    goto :goto_4

    .line 161
    :cond_7
    if-ge v1, v9, :cond_8

    .line 162
    add-int/2addr v2, v1

    .line 163
    move v1, v9

    .line 167
    :cond_8
    sub-int/2addr v1, v9

    .line 169
    move v5, v0

    .line 170
    .local v5, "index":I
    add-int v6, v7, p4

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    .line 171
    .local v6, "maxMainAxis":I
    neg-int v8, v1

    .line 174
    .local v8, "currentMainAxisOffset":I
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 175
    .local v10, "indexInVisibleItems":I
    :goto_5
    move/from16 v18, v0

    .end local v0    # "currentFirstItemIndex":I
    .local v18, "currentFirstItemIndex":I
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    if-ge v10, v0, :cond_a

    .line 176
    if-lt v8, v6, :cond_9

    .line 178
    invoke-virtual {v11, v10}, Lkotlin/collections/ArrayDeque;->remove(I)Ljava/lang/Object;

    .line 179
    const/4 v4, 0x1

    move/from16 v0, v18

    goto :goto_5

    .line 181
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 182
    invoke-virtual {v11, v10}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v0

    add-int/2addr v8, v0

    .line 183
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v18

    goto :goto_5

    .line 175
    :cond_a
    move/from16 v37, v4

    move v4, v8

    move/from16 v0, v18

    move v8, v5

    .line 190
    .end local v5    # "index":I
    .end local v18    # "currentFirstItemIndex":I
    .restart local v0    # "currentFirstItemIndex":I
    .local v4, "currentMainAxisOffset":I
    .local v8, "index":I
    .local v37, "remeasureNeeded":Z
    :goto_6
    if-ge v8, v15, :cond_f

    .line 191
    if-lt v4, v6, :cond_c

    .line 192
    if-lez v4, :cond_c

    .line 193
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v18, v0

    goto :goto_9

    .line 195
    :cond_c
    :goto_7
    invoke-virtual {v13, v8}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v5

    .line 196
    .local v5, "measuredItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v18

    add-int v4, v4, v18

    .line 198
    if-gt v4, v9, :cond_d

    move/from16 v18, v0

    .end local v0    # "currentFirstItemIndex":I
    .restart local v18    # "currentFirstItemIndex":I
    add-int/lit8 v0, v15, -0x1

    if-eq v8, v0, :cond_e

    .line 200
    add-int/lit8 v0, v8, 0x1

    .line 201
    .end local v18    # "currentFirstItemIndex":I
    .restart local v0    # "currentFirstItemIndex":I
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v18

    sub-int v1, v1, v18

    .line 202
    const/16 v18, 0x1

    move/from16 v37, v18

    .end local v37    # "remeasureNeeded":Z
    .local v18, "remeasureNeeded":Z
    goto :goto_8

    .line 198
    .end local v18    # "remeasureNeeded":Z
    .restart local v37    # "remeasureNeeded":Z
    :cond_d
    move/from16 v18, v0

    .line 204
    .end local v0    # "currentFirstItemIndex":I
    .local v18, "currentFirstItemIndex":I
    :cond_e
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 205
    .end local v3    # "maxCrossAxis":I
    .local v0, "maxCrossAxis":I
    invoke-virtual {v11, v5}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move v3, v0

    move/from16 v0, v18

    .line 208
    .end local v18    # "currentFirstItemIndex":I
    .local v0, "currentFirstItemIndex":I
    .restart local v3    # "maxCrossAxis":I
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 190
    .end local v5    # "measuredItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    :cond_f
    move/from16 v18, v0

    .line 211
    .end local v0    # "currentFirstItemIndex":I
    .restart local v18    # "currentFirstItemIndex":I
    :goto_9
    move v5, v2

    .line 214
    .local v5, "preScrollBackScrollDelta":I
    if-ge v4, v7, :cond_13

    .line 215
    sub-int v0, v7, v4

    .line 216
    .local v0, "toScrollBack":I
    sub-int/2addr v1, v0

    .line 217
    add-int/2addr v4, v0

    .line 218
    :goto_a
    if-ge v1, v12, :cond_11

    .line 219
    if-lez v18, :cond_10

    .line 221
    move/from16 v19, v6

    .end local v6    # "maxMainAxis":I
    .local v19, "maxMainAxis":I
    add-int/lit8 v6, v18, -0x1

    .line 222
    .local v6, "previousIndex":I
    move/from16 v20, v7

    .end local v7    # "maxOffset":I
    .local v20, "maxOffset":I
    invoke-virtual {v13, v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v7

    .line 223
    .local v7, "measuredItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    move/from16 v21, v8

    const/4 v8, 0x0

    .end local v8    # "index":I
    .local v21, "index":I
    invoke-virtual {v11, v8, v7}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 224
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 225
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v8

    add-int/2addr v1, v8

    .line 226
    move/from16 v18, v6

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    .end local v6    # "previousIndex":I
    .end local v7    # "measuredItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    goto :goto_a

    .line 219
    .end local v19    # "maxMainAxis":I
    .end local v20    # "maxOffset":I
    .end local v21    # "index":I
    .local v6, "maxMainAxis":I
    .local v7, "maxOffset":I
    .restart local v8    # "index":I
    :cond_10
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    .end local v6    # "maxMainAxis":I
    .end local v7    # "maxOffset":I
    .end local v8    # "index":I
    .restart local v19    # "maxMainAxis":I
    .restart local v20    # "maxOffset":I
    .restart local v21    # "index":I
    goto :goto_b

    .line 218
    .end local v19    # "maxMainAxis":I
    .end local v20    # "maxOffset":I
    .end local v21    # "index":I
    .restart local v6    # "maxMainAxis":I
    .restart local v7    # "maxOffset":I
    .restart local v8    # "index":I
    :cond_11
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    .line 228
    .end local v6    # "maxMainAxis":I
    .end local v7    # "maxOffset":I
    .end local v8    # "index":I
    .restart local v19    # "maxMainAxis":I
    .restart local v20    # "maxOffset":I
    .restart local v21    # "index":I
    :goto_b
    add-int/2addr v2, v0

    .line 229
    if-gez v1, :cond_12

    .line 230
    add-int/2addr v2, v1

    .line 231
    add-int/2addr v4, v1

    .line 232
    const/4 v1, 0x0

    move v7, v2

    move v6, v4

    move/from16 v8, v18

    goto :goto_c

    .line 229
    :cond_12
    move v7, v2

    move v6, v4

    move/from16 v8, v18

    goto :goto_c

    .line 214
    .end local v0    # "toScrollBack":I
    .end local v19    # "maxMainAxis":I
    .end local v20    # "maxOffset":I
    .end local v21    # "index":I
    .restart local v6    # "maxMainAxis":I
    .restart local v7    # "maxOffset":I
    .restart local v8    # "index":I
    :cond_13
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    .end local v6    # "maxMainAxis":I
    .end local v7    # "maxOffset":I
    .end local v8    # "index":I
    .restart local v19    # "maxMainAxis":I
    .restart local v20    # "maxOffset":I
    .restart local v21    # "index":I
    move v7, v2

    move v6, v4

    move/from16 v8, v18

    .line 240
    .end local v2    # "scrollDelta":I
    .end local v4    # "currentMainAxisOffset":I
    .end local v18    # "currentFirstItemIndex":I
    .local v6, "currentMainAxisOffset":I
    .local v7, "scrollDelta":I
    .local v8, "currentFirstItemIndex":I
    :goto_c
    invoke-static/range {p8 .. p8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v0

    invoke-static {v7}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v2

    if-ne v0, v2, :cond_14

    .line 241
    invoke-static/range {p8 .. p8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v0, v2, :cond_14

    .line 243
    int-to-float v0, v7

    goto :goto_d

    .line 245
    :cond_14
    move/from16 v0, p8

    .line 240
    :goto_d
    move v4, v0

    .line 248
    .local v4, "consumedScroll":F
    sub-float v38, p8, v4

    .line 253
    .local v38, "unconsumedScroll":F
    const/4 v0, 0x0

    if-eqz v14, :cond_15

    if-le v7, v5, :cond_15

    cmpg-float v2, v38, v0

    if-gtz v2, :cond_15

    .line 254
    sub-int v0, v7, v5

    int-to-float v0, v0

    add-float v0, v0, v38

    goto :goto_e

    .line 256
    :cond_15
    nop

    .line 253
    :goto_e
    nop

    .line 252
    move v2, v14

    move v14, v0

    .line 259
    .local v14, "scrollBackAmount":F
    if-ltz v1, :cond_16

    move/from16 v0, v16

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_2b

    .line 260
    neg-int v0, v1

    .line 261
    .local v0, "visibleItemsScrollOffset":I
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 265
    .local v18, "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    if-gtz v12, :cond_18

    if-gez p5, :cond_17

    goto :goto_10

    :cond_17
    move/from16 v23, v0

    move/from16 v39, v1

    move/from16 v25, v3

    move-object/from16 v3, v18

    goto :goto_13

    .line 266
    :cond_18
    :goto_10
    const/16 v22, 0x0

    move/from16 v23, v0

    .end local v0    # "visibleItemsScrollOffset":I
    .local v22, "i":I
    .local v23, "visibleItemsScrollOffset":I
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    move/from16 v2, v22

    .end local v22    # "i":I
    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_1b

    .line 267
    invoke-virtual {v11, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v0

    .line 268
    .local v0, "size":I
    if-eqz v1, :cond_19

    if-gt v0, v1, :cond_19

    .line 269
    move-object/from16 v22, v11

    check-cast v22, Ljava/util/List;

    move/from16 v25, v3

    .end local v3    # "maxCrossAxis":I
    .local v25, "maxCrossAxis":I
    invoke-static/range {v22 .. v22}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 271
    sub-int/2addr v1, v0

    .line 272
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v11, v3}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 266
    .end local v0    # "size":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v24

    move/from16 v3, v25

    goto :goto_11

    .line 268
    .end local v25    # "maxCrossAxis":I
    .restart local v0    # "size":I
    .restart local v3    # "maxCrossAxis":I
    :cond_19
    move/from16 v25, v3

    .line 274
    .end local v3    # "maxCrossAxis":I
    .restart local v25    # "maxCrossAxis":I
    :cond_1a
    goto :goto_12

    .line 266
    .end local v0    # "size":I
    .end local v25    # "maxCrossAxis":I
    .restart local v3    # "maxCrossAxis":I
    :cond_1b
    move/from16 v25, v3

    .line 281
    .end local v2    # "i":I
    .end local v3    # "maxCrossAxis":I
    .restart local v25    # "maxCrossAxis":I
    :goto_12
    move/from16 v39, v1

    move-object/from16 v3, v18

    .end local v1    # "currentFirstItemScrollOffset":I
    .end local v18    # "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v3, "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v39, "currentFirstItemScrollOffset":I
    :goto_13
    nop

    .line 282
    nop

    .line 283
    nop

    .line 284
    nop

    .line 280
    move/from16 v2, p18

    move-object/from16 v1, p19

    invoke-static {v8, v13, v2, v1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsBeforeList(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ILjava/util/List;)Ljava/util/List;

    move-result-object v40

    .line 288
    .local v40, "extraItemsBefore":Ljava/util/List;
    move-object/from16 v0, v40

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 608
    .local v18, "$i$f$fastForEach":I
    nop

    .line 609
    const/16 v22, 0x0

    .local v22, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v41, v8

    move/from16 v2, v22

    move/from16 v8, v25

    .end local v22    # "index$iv":I
    .end local v25    # "maxCrossAxis":I
    .local v2, "index$iv":I
    .local v8, "maxCrossAxis":I
    .local v41, "currentFirstItemIndex":I
    :goto_14
    if-ge v2, v1, :cond_1c

    .line 610
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    .line 611
    .local v22, "item$iv":Ljava/lang/Object;
    move-object/from16 v24, v22

    check-cast v24, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v24, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v25, 0x0

    .line 289
    .local v25, "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$5":I
    move-object/from16 v26, v0

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .local v26, "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 290
    nop

    .line 611
    .end local v24    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v25    # "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$5":I
    nop

    .line 609
    .end local v22    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v26

    goto :goto_14

    .end local v26    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_1c
    move-object/from16 v26, v0

    .line 613
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "index$iv":I
    .restart local v26    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 294
    .end local v18    # "$i$f$fastForEach":I
    .end local v26    # "$this$fastForEach$iv":Ljava/util/List;
    move-object v0, v11

    check-cast v0, Ljava/util/List;

    .line 295
    nop

    .line 296
    nop

    .line 297
    nop

    .line 298
    nop

    .line 299
    nop

    .line 300
    nop

    .line 301
    nop

    .line 293
    move/from16 v42, v23

    .end local v23    # "visibleItemsScrollOffset":I
    .local v42, "visibleItemsScrollOffset":I
    move-object/from16 v1, p1

    move/from16 v43, v14

    move/from16 v14, p21

    .end local v14    # "scrollBackAmount":F
    .local v43, "scrollBackAmount":F
    move/from16 v2, p0

    move-object v13, v3

    .end local v3    # "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v13, "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    move/from16 v3, p18

    move/from16 v44, v4

    .end local v4    # "consumedScroll":F
    .local v44, "consumedScroll":F
    move-object/from16 v4, p19

    move/from16 v45, v5

    .end local v5    # "preScrollBackScrollDelta":I
    .local v45, "preScrollBackScrollDelta":I
    move/from16 v5, v44

    move/from16 v46, v6

    move/from16 v47, v19

    .end local v6    # "currentMainAxisOffset":I
    .end local v19    # "maxMainAxis":I
    .local v46, "currentMainAxisOffset":I
    .local v47, "maxMainAxis":I
    move/from16 v6, p21

    move/from16 v49, v7

    move/from16 v48, v20

    .end local v7    # "scrollDelta":I
    .end local v20    # "maxOffset":I
    .local v48, "maxOffset":I
    .local v49, "scrollDelta":I
    move-object/from16 v7, p22

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsAfterList(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IILjava/util/List;FZLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)Ljava/util/List;

    move-result-object v50

    .line 305
    .local v50, "extraItemsAfter":Ljava/util/List;
    move-object/from16 v0, v50

    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 614
    .local v1, "$i$f$fastForEach":I
    nop

    .line 615
    const/4 v2, 0x0

    .restart local v2    # "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_15
    if-ge v2, v3, :cond_1d

    .line 616
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 617
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v5, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v6, 0x0

    .line 306
    .local v6, "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$6":I
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 307
    nop

    .line 617
    .end local v5    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v6    # "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$6":I
    nop

    .line 615
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 619
    .end local v2    # "index$iv":I
    :cond_1d
    nop

    .line 309
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 310
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 311
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    move/from16 v0, v16

    goto :goto_16

    :cond_1e
    const/4 v0, 0x0

    .line 309
    :goto_16
    move/from16 v51, v0

    .line 314
    .local v51, "noExtraItems":Z
    if-eqz p11, :cond_1f

    move v6, v8

    goto :goto_17

    :cond_1f
    move/from16 v6, v46

    :goto_17
    move-wide/from16 v4, p9

    move-object/from16 v7, p25

    invoke-static {v4, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v27

    .line 313
    nop

    .line 316
    .local v27, "layoutWidth":I
    if-eqz p11, :cond_20

    move/from16 v6, v46

    goto :goto_18

    :cond_20
    move v6, v8

    :goto_18
    invoke-static {v4, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v28

    .line 315
    nop

    .line 319
    .local v28, "layoutHeight":I
    move-object/from16 v24, v11

    check-cast v24, Ljava/util/List;

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

    .line 326
    nop

    .line 327
    nop

    .line 328
    nop

    .line 329
    nop

    .line 330
    nop

    .line 331
    nop

    .line 318
    move-object/from16 v25, v40

    move-object/from16 v26, v50

    move/from16 v29, v46

    move/from16 v30, v48

    move/from16 v31, v42

    move/from16 v32, p11

    move-object/from16 v33, p13

    move-object/from16 v34, p14

    move/from16 v35, p15

    move-object/from16 v36, p16

    invoke-static/range {v24 .. v36}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v6

    .line 334
    .local v6, "positionedItems":Ljava/util/List;
    nop

    .line 335
    move/from16 v3, v44

    .end local v44    # "consumedScroll":F
    .local v3, "consumedScroll":F
    float-to-int v1, v3

    .line 336
    nop

    .line 337
    nop

    .line 338
    nop

    .line 339
    nop

    .line 340
    nop

    .line 341
    nop

    .line 342
    nop

    .line 343
    nop

    .line 334
    move-object/from16 v0, p17

    move/from16 v2, v27

    move/from16 v24, v3

    .end local v3    # "consumedScroll":F
    .local v24, "consumedScroll":F
    move/from16 v3, v28

    move-object v4, v6

    move-object/from16 v5, p1

    move-object/from16 v25, v6

    .end local v6    # "positionedItems":Ljava/util/List;
    .local v25, "positionedItems":Ljava/util/List;
    move/from16 v6, p11

    move/from16 v18, v10

    move-object v10, v7

    .end local v10    # "indexInVisibleItems":I
    .local v18, "indexInVisibleItems":I
    move/from16 v7, p21

    move/from16 v29, v8

    move-object/from16 v19, v13

    move/from16 v13, v21

    move/from16 v26, v41

    const/16 v17, 0x0

    .end local v8    # "maxCrossAxis":I
    .end local v21    # "index":I
    .end local v41    # "currentFirstItemIndex":I
    .local v13, "index":I
    .local v19, "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v26, "currentFirstItemIndex":I
    .local v29, "maxCrossAxis":I
    move/from16 v8, p20

    move/from16 v30, v9

    .end local v9    # "minOffset":I
    .local v30, "minOffset":I
    move-object/from16 v9, p23

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ZZZLkotlinx/coroutines/CoroutineScope;)V

    .line 346
    move-object/from16 v0, p12

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    .line 348
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

    .line 347
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p12

    move/from16 v3, p3

    move/from16 v4, v27

    move/from16 v5, v28

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListHeadersKt;->findOrComposeLazyListHeader(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;Ljava/util/List;III)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    goto :goto_19

    .line 356
    :cond_21
    const/4 v0, 0x0

    .line 346
    :goto_19
    nop

    .line 360
    .local v0, "headerItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    nop

    .line 361
    nop

    .line 362
    if-lt v13, v15, :cond_23

    move/from16 v4, v46

    move/from16 v2, v48

    .end local v46    # "currentMainAxisOffset":I
    .end local v48    # "maxOffset":I
    .local v2, "maxOffset":I
    .local v4, "currentMainAxisOffset":I
    if-le v4, v2, :cond_22

    goto :goto_1a

    :cond_22
    move/from16 v1, v17

    goto :goto_1b

    .end local v2    # "maxOffset":I
    .end local v4    # "currentMainAxisOffset":I
    .restart local v46    # "currentMainAxisOffset":I
    .restart local v48    # "maxOffset":I
    :cond_23
    move/from16 v4, v46

    move/from16 v2, v48

    .end local v46    # "currentMainAxisOffset":I
    .end local v48    # "maxOffset":I
    .restart local v2    # "maxOffset":I
    .restart local v4    # "currentMainAxisOffset":I
    :goto_1a
    move/from16 v1, v16

    .line 364
    :goto_1b
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$7;

    move-object/from16 v7, p24

    move-object/from16 v9, v25

    .end local v25    # "positionedItems":Ljava/util/List;
    .local v9, "positionedItems":Ljava/util/List;
    invoke-direct {v6, v9, v0, v14, v7}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$7;-><init>(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ZLandroidx/compose/runtime/MutableState;)V

    invoke-interface {v10, v3, v5, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/MeasureResult;

    .line 376
    if-eqz v51, :cond_24

    move/from16 v46, v4

    move-object/from16 v16, v9

    move-object/from16 v35, v16

    goto/16 :goto_1e

    :cond_24
    move-object v5, v9

    .local v5, "$this$fastFilter$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 620
    .local v6, "$i$f$fastFilter":I
    nop

    .line 621
    new-instance v8, Ljava/util/ArrayList;

    move/from16 v46, v4

    .end local v4    # "currentMainAxisOffset":I
    .restart local v46    # "currentMainAxisOffset":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v8

    .line 622
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v8, v5

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v20, 0x0

    .line 623
    .local v20, "$i$f$fastForEach":I
    nop

    .line 624
    const/16 v21, 0x0

    move-object/from16 v22, v5

    .end local v5    # "$this$fastFilter$iv":Ljava/util/List;
    .local v21, "index$iv$iv":I
    .local v22, "$this$fastFilter$iv":Ljava/util/List;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v23, v6

    move/from16 v6, v21

    .end local v21    # "index$iv$iv":I
    .local v6, "index$iv$iv":I
    .local v23, "$i$f$fastFilter":I
    :goto_1c
    if-ge v6, v5, :cond_29

    .line 625
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 626
    .local v21, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v25, v21

    .local v25, "it$iv":Ljava/lang/Object;
    const/16 v31, 0x0

    .line 627
    .local v31, "$i$a$-fastForEach-ListUtilsKt$fastFilter$2$iv":I
    move/from16 v32, v5

    move-object/from16 v5, v25

    .end local v25    # "it$iv":Ljava/lang/Object;
    .local v5, "it$iv":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v7, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v25, 0x0

    .line 377
    .local v25, "$i$a$-fastFilter-LazyListMeasureKt$measureLazyList$8":I
    move-object/from16 v33, v8

    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v33, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v8

    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-object/from16 v35, v9

    .end local v9    # "positionedItems":Ljava/util/List;
    .local v35, "positionedItems":Ljava/util/List;
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v9

    if-lt v8, v9, :cond_25

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v8

    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v9

    if-le v8, v9, :cond_26

    .line 378
    :cond_25
    if-ne v7, v0, :cond_27

    :cond_26
    move/from16 v8, v16

    goto :goto_1d

    :cond_27
    move/from16 v8, v17

    .line 377
    :goto_1d
    nop

    .line 627
    .end local v7    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v25    # "$i$a$-fastFilter-LazyListMeasureKt$measureLazyList$8":I
    if-eqz v8, :cond_28

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_28
    nop

    .line 626
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v31    # "$i$a$-fastForEach-ListUtilsKt$fastFilter$2$iv":I
    nop

    .line 624
    .end local v21    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, p24

    move/from16 v5, v32

    move-object/from16 v8, v33

    move-object/from16 v9, v35

    goto :goto_1c

    .end local v33    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v35    # "positionedItems":Ljava/util/List;
    .restart local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v9    # "positionedItems":Ljava/util/List;
    :cond_29
    move-object/from16 v33, v8

    move-object/from16 v35, v9

    .line 629
    .end local v6    # "index$iv$iv":I
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "positionedItems":Ljava/util/List;
    .restart local v33    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v35    # "positionedItems":Ljava/util/List;
    nop

    .line 630
    .end local v20    # "$i$f$fastForEach":I
    .end local v33    # "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object v5, v4

    check-cast v5, Ljava/util/List;

    move-object/from16 v16, v5

    .line 376
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    .end local v22    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v23    # "$i$f$fastFilter":I
    :goto_1e
    nop

    .line 380
    neg-int v4, v12

    .line 381
    add-int v5, v2, p4

    .line 384
    if-eqz p11, :cond_2a

    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1f

    :cond_2a
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1f
    move-object/from16 v21, v6

    .line 387
    nop

    .line 359
    new-instance v6, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 360
    nop

    .line 361
    nop

    .line 362
    nop

    .line 363
    nop

    .line 364
    nop

    .line 375
    nop

    .line 387
    nop

    .line 376
    nop

    .line 380
    nop

    .line 381
    nop

    .line 382
    nop

    .line 383
    nop

    .line 384
    nop

    .line 385
    nop

    .line 386
    nop

    .line 359
    move-object v8, v6

    move-object/from16 v7, v35

    .end local v35    # "positionedItems":Ljava/util/List;
    .local v7, "positionedItems":Ljava/util/List;
    move-object/from16 v9, v19

    move/from16 v31, v18

    .end local v18    # "indexInVisibleItems":I
    .local v31, "indexInVisibleItems":I
    move/from16 v10, v39

    move-object/from16 v32, v11

    .end local v11    # "visibleItems":Lkotlin/collections/ArrayDeque;
    .local v32, "visibleItems":Lkotlin/collections/ArrayDeque;
    move v11, v1

    move/from16 v12, v24

    move/from16 v33, v13

    move-object/from16 v1, v19

    .end local v13    # "index":I
    .end local v19    # "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v1, "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v33, "index":I
    move-object v13, v3

    move/from16 v15, v37

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, p0

    move/from16 v20, p15

    move/from16 v22, p4

    move/from16 v23, p5

    move/from16 v14, v43

    .end local v43    # "scrollBackAmount":F
    .restart local v14    # "scrollBackAmount":F
    invoke-direct/range {v8 .. v23}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v6

    .line 607
    .end local v0    # "headerItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v2    # "maxOffset":I
    .end local v24    # "consumedScroll":F
    .end local v26    # "currentFirstItemIndex":I
    .end local v27    # "layoutWidth":I
    .end local v28    # "layoutHeight":I
    .end local v29    # "maxCrossAxis":I
    .end local v30    # "minOffset":I
    .end local v31    # "indexInVisibleItems":I
    .end local v32    # "visibleItems":Lkotlin/collections/ArrayDeque;
    .end local v33    # "index":I
    .end local v39    # "currentFirstItemScrollOffset":I
    .end local v40    # "extraItemsBefore":Ljava/util/List;
    .end local v42    # "visibleItemsScrollOffset":I
    .end local v45    # "preScrollBackScrollDelta":I
    .end local v46    # "currentMainAxisOffset":I
    .end local v47    # "maxMainAxis":I
    .end local v49    # "scrollDelta":I
    .end local v50    # "extraItemsAfter":Ljava/util/List;
    .end local v51    # "noExtraItems":Z
    .local v1, "currentFirstItemScrollOffset":I
    .local v3, "maxCrossAxis":I
    .local v4, "consumedScroll":F
    .local v5, "preScrollBackScrollDelta":I
    .local v6, "currentMainAxisOffset":I
    .local v7, "scrollDelta":I
    .local v8, "currentFirstItemIndex":I
    .local v9, "minOffset":I
    .restart local v10    # "indexInVisibleItems":I
    .restart local v11    # "visibleItems":Lkotlin/collections/ArrayDeque;
    .local v19, "maxMainAxis":I
    .local v20, "maxOffset":I
    .local v21, "index":I
    :cond_2b
    move/from16 v25, v3

    .end local v3    # "maxCrossAxis":I
    .local v25, "maxCrossAxis":I
    const/4 v0, 0x0

    .line 259
    .local v0, "$i$a$-require-LazyListMeasureKt$measureLazyList$4":I
    nop

    .end local v0    # "$i$a$-require-LazyListMeasureKt$measureLazyList$4":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "negative currentFirstItemScrollOffset"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    .end local v1    # "currentFirstItemScrollOffset":I
    .end local v4    # "consumedScroll":F
    .end local v5    # "preScrollBackScrollDelta":I
    .end local v6    # "currentMainAxisOffset":I
    .end local v7    # "scrollDelta":I
    .end local v8    # "currentFirstItemIndex":I
    .end local v9    # "minOffset":I
    .end local v10    # "indexInVisibleItems":I
    .end local v11    # "visibleItems":Lkotlin/collections/ArrayDeque;
    .end local v14    # "scrollBackAmount":F
    .end local v19    # "maxMainAxis":I
    .end local v20    # "maxOffset":I
    .end local v21    # "index":I
    .end local v25    # "maxCrossAxis":I
    .end local v37    # "remeasureNeeded":Z
    .end local v38    # "unconsumedScroll":F
    :cond_2c
    const/4 v0, 0x0

    .line 71
    .local v0, "$i$a$-require-LazyListMeasureKt$measureLazyList$2":I
    nop

    .end local v0    # "$i$a$-require-LazyListMeasureKt$measureLazyList$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid afterContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_2d
    const/4 v0, 0x0

    .line 70
    .local v0, "$i$a$-require-LazyListMeasureKt$measureLazyList$1":I
    nop

    .end local v0    # "$i$a$-require-LazyListMeasureKt$measureLazyList$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid beforeContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
