.class public final Landroidx/compose/foundation/pager/PagerMeasureKt;
.super Ljava/lang/Object;
.source "PagerMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagerMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagerMeasure.kt\nandroidx/compose/foundation/pager/PagerMeasureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,631:1\n627#1,4:633\n627#1,4:660\n1#2:632\n33#3,6:637\n33#3,6:643\n235#3,3:649\n33#3,4:652\n238#3,2:656\n38#3:658\n240#3:659\n33#3,6:664\n33#3,6:670\n171#3,13:676\n33#3,6:689\n33#3,6:695\n33#3,6:701\n*S KotlinDebug\n*F\n+ 1 PagerMeasure.kt\nandroidx/compose/foundation/pager/PagerMeasureKt\n*L\n66#1:633,4\n402#1:660,4\n312#1:637,6\n338#1:643,6\n378#1:649,3\n378#1:652,4\n378#1:656,2\n378#1:658\n378#1:659\n449#1:664,6\n474#1:670,6\n493#1:676,13\n600#1:689,6\n607#1:695,6\n613#1:701,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a@\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u001aH\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00060\u0016H\u0002\u001a@\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00060\u0016H\u0002\u001a\u0017\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0082\u0008\u001a\u008c\u0001\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001f*\u00020 2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00012\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u0008H\u0002\u001aj\u0010\u0015\u001a\u00020\u0006*\u00020 2\u0006\u00100\u001a\u00020\u00082\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u0010)\u001a\u00020*2\u0008\u00107\u001a\u0004\u0018\u0001082\u0008\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020<2\u0006\u0010+\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\u0008H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>\u001a\u00e9\u0001\u0010?\u001a\u00020@*\u00020 2\u0006\u0010A\u001a\u00020\u00082\u0006\u00103\u001a\u0002042\u0006\u0010B\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u00082\u0006\u0010C\u001a\u00020\u00082\u0006\u0010D\u001a\u00020\u00082\u0006\u0010E\u001a\u0002022\u0006\u0010)\u001a\u00020*2\u0008\u00109\u001a\u0004\u0018\u00010:2\u0008\u00107\u001a\u0004\u0018\u0001082\u0006\u0010+\u001a\u00020\u00012\u0006\u00105\u001a\u0002062\u0006\u0010/\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010F\u001a\u00020G2/\u0010H\u001a+\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020J\u0012\u0004\u0012\u00020\u001a0\u0016\u00a2\u0006\u0002\u0008K\u0012\u0004\u0012\u00020L0IH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008M\u0010N\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006O"
    }
    d2 = {
        "DEBUG",
        "",
        "MaxPageOffset",
        "",
        "MinPageOffset",
        "calculateNewCurrentPage",
        "Landroidx/compose/foundation/pager/MeasuredPage;",
        "viewportSize",
        "",
        "visiblePagesInfo",
        "",
        "beforeContentPadding",
        "afterContentPadding",
        "itemSize",
        "snapPositionInLayout",
        "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;",
        "createPagesAfterList",
        "currentLastPage",
        "pagesCount",
        "beyondBoundsPageCount",
        "pinnedPages",
        "getAndMeasure",
        "Lkotlin/Function1;",
        "createPagesBeforeList",
        "currentFirstPage",
        "debugLog",
        "",
        "generateMsg",
        "Lkotlin/Function0;",
        "",
        "calculatePagesOffsets",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "pages",
        "extraPagesBefore",
        "extraPagesAfter",
        "layoutWidth",
        "layoutHeight",
        "finalMainAxisOffset",
        "maxOffset",
        "pagesScrollOffset",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "reverseLayout",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "spaceBetweenPages",
        "pageAvailableSize",
        "index",
        "childConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "pagerItemProvider",
        "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
        "visualPageOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getAndMeasure-SGf7dI0",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;",
        "measurePager",
        "Landroidx/compose/foundation/pager/PagerMeasureResult;",
        "pageCount",
        "mainAxisAvailableSize",
        "currentPage",
        "currentPageOffset",
        "constraints",
        "placementScopeInvalidator",
        "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;",
        "layout",
        "Lkotlin/Function3;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measurePager-_JDW0YA",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;IIIIIIJLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ZJIILjava/util/List;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/pager/PagerMeasureResult;",
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


# static fields
.field private static final DEBUG:Z = false

.field public static final MaxPageOffset:F = 0.5f

.field public static final MinPageOffset:F = -0.5f


# direct methods
.method public static final synthetic access$getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p1, "index"    # I
    .param p2, "childConstraints"    # J
    .param p4, "pagerItemProvider"    # Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .param p5, "visualPageOffset"    # J
    .param p7, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p8, "horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p9, "verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p10, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p11, "reverseLayout"    # Z
    .param p12, "pageAvailableSize"    # I

    .line 1
    invoke-static/range {p0 .. p12}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v0

    return-object v0
.end method

.method private static final calculateNewCurrentPage(ILjava/util/List;IIILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)Landroidx/compose/foundation/pager/MeasuredPage;
    .locals 16
    .param p0, "viewportSize"    # I
    .param p1, "visiblePagesInfo"    # Ljava/util/List;
    .param p2, "beforeContentPadding"    # I
    .param p3, "afterContentPadding"    # I
    .param p4, "itemSize"    # I
    .param p5, "snapPositionInLayout"    # Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;III",
            "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;",
            ")",
            "Landroidx/compose/foundation/pager/MeasuredPage;"
        }
    .end annotation

    .line 493
    move-object/from16 v0, p1

    .local v0, "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 676
    .local v1, "$i$f$fastMaxBy":I
    nop

    .line 677
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 678
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 679
    .local v2, "maxElem$iv":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v3, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v4, 0x0

    .line 494
    .local v4, "$i$a$-fastMaxBy-PagerMeasureKt$calculateNewCurrentPage$1":I
    nop

    .line 496
    nop

    .line 497
    nop

    .line 498
    nop

    .line 499
    nop

    .line 500
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/MeasuredPage;->getOffset()I

    move-result v9

    .line 501
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v10

    .line 502
    nop

    .line 495
    move/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v11, p5

    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayoutKt;->calculateDistanceToDesiredSnapPosition(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 494
    neg-float v3, v5

    .line 679
    .end local v3    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v4    # "$i$a$-fastMaxBy-PagerMeasureKt$calculateNewCurrentPage$1":I
    nop

    .line 680
    .local v3, "maxValue$iv":F
    const/4 v4, 0x1

    .local v4, "i$iv":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 681
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 682
    .local v6, "e$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v7, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v8, 0x0

    .line 494
    .local v8, "$i$a$-fastMaxBy-PagerMeasureKt$calculateNewCurrentPage$1":I
    nop

    .line 496
    nop

    .line 497
    nop

    .line 498
    nop

    .line 499
    nop

    .line 500
    invoke-virtual {v7}, Landroidx/compose/foundation/pager/MeasuredPage;->getOffset()I

    move-result v13

    .line 501
    invoke-virtual {v7}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v14

    .line 502
    nop

    .line 495
    move/from16 v9, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v15, p5

    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayoutKt;->calculateDistanceToDesiredSnapPosition(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 494
    neg-float v7, v9

    .line 682
    .end local v7    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v8    # "$i$a$-fastMaxBy-PagerMeasureKt$calculateNewCurrentPage$1":I
    nop

    .line 683
    .local v7, "v$iv":F
    invoke-static {v3, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-gez v8, :cond_1

    .line 684
    move-object v2, v6

    .line 685
    move v3, v7

    .line 680
    .end local v6    # "e$iv":Ljava/lang/Object;
    .end local v7    # "v$iv":F
    :cond_1
    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 688
    .end local v4    # "i$iv":I
    :cond_2
    nop

    .end local v0    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastMaxBy":I
    .end local v2    # "maxElem$iv":Ljava/lang/Object;
    .end local v3    # "maxValue$iv":F
    :goto_1
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 493
    return-object v2
.end method

.method private static final calculatePagesOffsets(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/unit/Density;II)Ljava/util/List;
    .locals 23
    .param p0, "$this$calculatePagesOffsets"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p1, "pages"    # Ljava/util/List;
    .param p2, "extraPagesBefore"    # Ljava/util/List;
    .param p3, "extraPagesAfter"    # Ljava/util/List;
    .param p4, "layoutWidth"    # I
    .param p5, "layoutHeight"    # I
    .param p6, "finalMainAxisOffset"    # I
    .param p7, "maxOffset"    # I
    .param p8, "pagesScrollOffset"    # I
    .param p9, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p10, "reverseLayout"    # Z
    .param p11, "density"    # Landroidx/compose/ui/unit/Density;
    .param p12, "spaceBetweenPages"    # I
    .param p13, "pageAvailableSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;IIIII",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "II)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;"
        }
    .end annotation

    .line 554
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v4, p10

    move/from16 v5, p12

    add-int v6, p13, v5

    .line 555
    .local v6, "pageSizeWithSpacing":I
    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v3, v7, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v0

    .line 556
    .local v7, "mainAxisLayoutSize":I
    :goto_0
    move/from16 v14, p7

    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v15, p6

    if-ge v15, v8, :cond_1

    move v8, v10

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    move/from16 v16, v8

    .line 557
    .local v16, "hasSpareSpace":Z
    if-eqz v16, :cond_4

    .line 558
    if-nez v2, :cond_2

    move v8, v10

    goto :goto_2

    :cond_2
    move v8, v9

    :goto_2
    if-eqz v8, :cond_3

    goto :goto_3

    .line 632
    :cond_3
    const/4 v8, 0x0

    .line 558
    .local v8, "$i$a$-check-PagerMeasureKt$calculatePagesOffsets$1":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "non-zero pagesScrollOffset="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v8    # "$i$a$-check-PagerMeasureKt$calculatePagesOffsets$1":I
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 561
    :cond_4
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v11, v12

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 560
    move-object v13, v8

    .line 563
    .local v13, "positionedPages":Ljava/util/ArrayList;
    if-eqz v16, :cond_f

    .line 564
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    move v10, v9

    :goto_4
    if-eqz v10, :cond_e

    .line 566
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 570
    .local v12, "pagesCount":I
    new-array v8, v12, [I

    move v10, v9

    :goto_5
    if-ge v10, v12, :cond_6

    aput p13, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_6
    move-object v11, v8

    .line 571
    .local v11, "sizes":[I
    new-array v8, v12, [I

    move v10, v9

    :goto_6
    if-ge v10, v12, :cond_7

    aput v9, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    move-object v10, v8

    .line 573
    .local v10, "offsets":[I
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement$Absolute;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement$Absolute;

    move-object/from16 v9, p0

    invoke-interface {v9, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->toDp-u2uoSUM(I)F

    move-result v2

    invoke-virtual {v8, v2}, Landroidx/compose/foundation/layout/Arrangement$Absolute;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v2

    .line 574
    .local v2, "arrangement":Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v3, v8, :cond_8

    .line 575
    move-object v8, v2

    .line 632
    .local v8, "$this$calculatePagesOffsets_u24lambda_u2413":Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    const/16 v17, 0x0

    .line 575
    .local v17, "$i$a$-with-PagerMeasureKt$calculatePagesOffsets$3":I
    move-object/from16 v3, p11

    invoke-interface {v8, v3, v7, v11, v10}, Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    move-object/from16 v21, v2

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move v2, v12

    move-object v3, v13

    .end local v8    # "$this$calculatePagesOffsets_u24lambda_u2413":Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .end local v17    # "$i$a$-with-PagerMeasureKt$calculatePagesOffsets$3":I
    goto :goto_7

    .line 577
    :cond_8
    move-object/from16 v3, p11

    move-object v8, v2

    .local v8, "$this$calculatePagesOffsets_u24lambda_u2414":Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    const/16 v17, 0x0

    .line 579
    .local v17, "$i$a$-with-PagerMeasureKt$calculatePagesOffsets$4":I
    sget-object v18, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v9, p11

    move-object/from16 v19, v10

    .end local v10    # "offsets":[I
    .local v19, "offsets":[I
    move v10, v7

    move-object/from16 v20, v11

    .end local v11    # "sizes":[I
    .local v20, "sizes":[I
    move-object/from16 v21, v2

    move v2, v12

    .end local v12    # "pagesCount":I
    .local v2, "pagesCount":I
    .local v21, "arrangement":Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    move-object/from16 v12, v18

    move-object v3, v13

    .end local v13    # "positionedPages":Ljava/util/ArrayList;
    .local v3, "positionedPages":Ljava/util/ArrayList;
    move-object/from16 v13, v19

    invoke-interface/range {v8 .. v13}, Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 580
    nop

    .line 577
    .end local v8    # "$this$calculatePagesOffsets_u24lambda_u2414":Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .end local v17    # "$i$a$-with-PagerMeasureKt$calculatePagesOffsets$4":I
    nop

    .line 584
    :goto_7
    invoke-static/range {v19 .. v19}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v8

    check-cast v8, Lkotlin/ranges/IntProgression;

    if-nez v4, :cond_9

    goto :goto_8

    :cond_9
    invoke-static {v8}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v8

    .line 583
    :goto_8
    nop

    .line 585
    .local v8, "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v9

    .local v9, "index":I
    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v10

    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v11

    if-lez v11, :cond_a

    if-le v9, v10, :cond_b

    :cond_a
    if-gez v11, :cond_d

    if-gt v10, v9, :cond_d

    .line 586
    :cond_b
    :goto_9
    aget v12, v19, v9

    .line 588
    .local v12, "absoluteOffset":I
    invoke-static {v9, v4, v2}, Landroidx/compose/foundation/pager/PagerMeasureKt;->calculatePagesOffsets$reverseAware(IZI)I

    move-result v13

    move/from16 v17, v2

    move-object/from16 v2, p1

    .end local v2    # "pagesCount":I
    .local v17, "pagesCount":I
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 589
    .local v13, "page":Landroidx/compose/foundation/pager/MeasuredPage;
    if-eqz v4, :cond_c

    .line 591
    sub-int v18, v7, v12

    invoke-virtual {v13}, Landroidx/compose/foundation/pager/MeasuredPage;->getSize()I

    move-result v22

    sub-int v18, v18, v22

    goto :goto_a

    .line 593
    :cond_c
    move/from16 v18, v12

    .line 589
    :goto_a
    move/from16 v22, v18

    .line 595
    .local v22, "relativeOffset":I
    move/from16 v2, v22

    .end local v22    # "relativeOffset":I
    .local v2, "relativeOffset":I
    invoke-virtual {v13, v2, v0, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 596
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .end local v2    # "relativeOffset":I
    .end local v12    # "absoluteOffset":I
    .end local v13    # "page":Landroidx/compose/foundation/pager/MeasuredPage;
    if-eq v9, v10, :cond_13

    add-int/2addr v9, v11

    move/from16 v2, v17

    goto :goto_9

    .end local v17    # "pagesCount":I
    .local v2, "pagesCount":I
    :cond_d
    move/from16 v17, v2

    .end local v2    # "pagesCount":I
    .restart local v17    # "pagesCount":I
    goto/16 :goto_e

    .line 632
    .end local v3    # "positionedPages":Ljava/util/ArrayList;
    .end local v8    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    .end local v9    # "index":I
    .end local v17    # "pagesCount":I
    .end local v19    # "offsets":[I
    .end local v20    # "sizes":[I
    .end local v21    # "arrangement":Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .local v13, "positionedPages":Ljava/util/ArrayList;
    :cond_e
    const/4 v2, 0x0

    .line 564
    .local v2, "$i$a$-require-PagerMeasureKt$calculatePagesOffsets$2":I
    nop

    .end local v2    # "$i$a$-require-PagerMeasureKt$calculatePagesOffsets$2":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "No extra pages"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 599
    :cond_f
    move-object v3, v13

    .end local v13    # "positionedPages":Ljava/util/ArrayList;
    .restart local v3    # "positionedPages":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "currentMainAxis":I
    move/from16 v2, p8

    .line 600
    move-object/from16 v8, p2

    .local v8, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 689
    .local v9, "$i$f$fastForEach":I
    nop

    .line 690
    const/4 v10, 0x0

    .local v10, "index$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_b
    if-ge v10, v11, :cond_10

    .line 691
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 692
    .local v12, "item$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v13, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/16 v17, 0x0

    .line 601
    .local v17, "$i$a$-fastForEach-PagerMeasureKt$calculatePagesOffsets$5":I
    sub-int/2addr v2, v6

    .line 602
    invoke-virtual {v13, v2, v0, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 603
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    nop

    .line 692
    .end local v13    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v17    # "$i$a$-fastForEach-PagerMeasureKt$calculatePagesOffsets$5":I
    nop

    .line 690
    .end local v12    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 694
    .end local v10    # "index$iv":I
    :cond_10
    nop

    .line 606
    .end local v8    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    move/from16 v2, p8

    .line 607
    move-object/from16 v8, p1

    .restart local v8    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 695
    .restart local v9    # "$i$f$fastForEach":I
    nop

    .line 696
    const/4 v10, 0x0

    .restart local v10    # "index$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_c
    if-ge v10, v11, :cond_11

    .line 697
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 698
    .restart local v12    # "item$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/foundation/pager/MeasuredPage;

    .restart local v13    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/16 v17, 0x0

    .line 608
    .local v17, "$i$a$-fastForEach-PagerMeasureKt$calculatePagesOffsets$6":I
    invoke-virtual {v13, v2, v0, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 609
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    add-int/2addr v2, v6

    .line 611
    nop

    .line 698
    .end local v13    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v17    # "$i$a$-fastForEach-PagerMeasureKt$calculatePagesOffsets$6":I
    nop

    .line 696
    .end local v12    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 700
    .end local v10    # "index$iv":I
    :cond_11
    nop

    .line 613
    .end local v8    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    move-object/from16 v8, p3

    .restart local v8    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 701
    .restart local v9    # "$i$f$fastForEach":I
    nop

    .line 702
    const/4 v10, 0x0

    .restart local v10    # "index$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_d
    if-ge v10, v11, :cond_12

    .line 703
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 704
    .restart local v12    # "item$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/foundation/pager/MeasuredPage;

    .restart local v13    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/16 v17, 0x0

    .line 614
    .local v17, "$i$a$-fastForEach-PagerMeasureKt$calculatePagesOffsets$7":I
    invoke-virtual {v13, v2, v0, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 615
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    add-int/2addr v2, v6

    .line 617
    nop

    .line 704
    .end local v13    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v17    # "$i$a$-fastForEach-PagerMeasureKt$calculatePagesOffsets$7":I
    nop

    .line 702
    .end local v12    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 706
    .end local v10    # "index$iv":I
    :cond_12
    nop

    .line 619
    .end local v2    # "currentMainAxis":I
    .end local v8    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    :cond_13
    :goto_e
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method private static final calculatePagesOffsets$reverseAware(IZI)I
    .locals 1
    .param p0, "$this$calculatePagesOffsets_u24reverseAware"    # I
    .param p1, "$reverseLayout"    # Z
    .param p2, "pagesCount"    # I

    .line 568
    if-nez p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    sub-int v0, p2, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method private static final createPagesAfterList(IIILjava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 11
    .param p0, "currentLastPage"    # I
    .param p1, "pagesCount"    # I
    .param p2, "beyondBoundsPageCount"    # I
    .param p3, "pinnedPages"    # Ljava/util/List;
    .param p4, "getAndMeasure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;"
        }
    .end annotation

    .line 440
    const/4 v0, 0x0

    .line 442
    .local v0, "list":Ljava/lang/Object;
    add-int v1, p0, p2

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 444
    .local v1, "end":I
    add-int/lit8 v2, p0, 0x1

    .local v2, "i":I
    if-gt v2, v1, :cond_1

    .line 445
    :goto_0
    if-nez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 446
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    if-eq v2, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    .end local v2    # "i":I
    :cond_1
    move-object v2, p3

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 664
    .local v3, "$i$f$fastForEach":I
    nop

    .line 665
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_5

    .line 666
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 667
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .local v7, "pageIndex":I
    const/4 v8, 0x0

    .line 450
    .local v8, "$i$a$-fastForEach-PagerMeasureKt$createPagesAfterList$1":I
    add-int/lit8 v9, v1, 0x1

    const/4 v10, 0x0

    if-gt v9, v7, :cond_2

    if-ge v7, p1, :cond_2

    const/4 v10, 0x1

    :cond_2
    if-eqz v10, :cond_4

    .line 451
    if-nez v0, :cond_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 452
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p4, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_4
    nop

    .line 667
    .end local v7    # "pageIndex":I
    .end local v8    # "$i$a$-fastForEach-PagerMeasureKt$createPagesAfterList$1":I
    nop

    .line 665
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 669
    .end local v4    # "index$iv":I
    :cond_5
    nop

    .line 456
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method private static final createPagesBeforeList(IILjava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 10
    .param p0, "currentFirstPage"    # I
    .param p1, "beyondBoundsPageCount"    # I
    .param p2, "pinnedPages"    # Ljava/util/List;
    .param p3, "getAndMeasure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;"
        }
    .end annotation

    .line 465
    const/4 v0, 0x0

    .line 467
    .local v0, "list":Ljava/lang/Object;
    const/4 v1, 0x0

    sub-int v2, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 469
    .local v1, "start":I
    add-int/lit8 v2, p0, -0x1

    .local v2, "i":I
    if-gt v1, v2, :cond_1

    .line 470
    :goto_0
    if-nez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 471
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    if-eq v2, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 474
    .end local v2    # "i":I
    :cond_1
    move-object v2, p2

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 670
    .local v3, "$i$f$fastForEach":I
    nop

    .line 671
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_4

    .line 672
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 673
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .local v7, "pageIndex":I
    const/4 v8, 0x0

    .line 475
    .local v8, "$i$a$-fastForEach-PagerMeasureKt$createPagesBeforeList$1":I
    if-ge v7, v1, :cond_3

    .line 476
    if-nez v0, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 477
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p3, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_3
    nop

    .line 673
    .end local v7    # "pageIndex":I
    .end local v8    # "$i$a$-fastForEach-PagerMeasureKt$createPagesBeforeList$1":I
    nop

    .line 671
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 675
    .end local v4    # "index$iv":I
    :cond_4
    nop

    .line 481
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method private static final debugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0, "generateMsg"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 627
    .local v0, "$i$f$debugLog":I
    nop

    .line 630
    return-void
.end method

.method private static final getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;
    .locals 18
    .param p0, "$this$getAndMeasure_u2dSGf7dI0"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p1, "index"    # I
    .param p2, "childConstraints"    # J
    .param p4, "pagerItemProvider"    # Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .param p5, "visualPageOffset"    # J
    .param p7, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p8, "horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p9, "verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p10, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p11, "reverseLayout"    # Z
    .param p12, "pageAvailableSize"    # I

    .line 521
    move/from16 v13, p1

    move-object/from16 v14, p4

    invoke-virtual {v14, v13}, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v15

    .line 522
    .local v15, "key":Ljava/lang/Object;
    invoke-interface/range {p0 .. p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->measure-0kLqBqw(IJ)Ljava/util/List;

    move-result-object v16

    .line 524
    .local v16, "placeable":Ljava/util/List;
    new-instance v17, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 525
    nop

    .line 532
    nop

    .line 526
    nop

    .line 527
    nop

    .line 534
    nop

    .line 533
    nop

    .line 528
    nop

    .line 529
    nop

    .line 530
    nop

    .line 531
    const/4 v12, 0x0

    .line 524
    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p12

    move-object/from16 v3, v16

    move-wide/from16 v4, p5

    move-object v6, v15

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/pager/MeasuredPage;-><init>(IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v17
.end method

.method public static final measurePager-_JDW0YA(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;IIIIIIJLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ZJIILjava/util/List;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/pager/PagerMeasureResult;
    .locals 55
    .param p0, "$this$measurePager_u2d_JDW0YA"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p1, "pageCount"    # I
    .param p2, "pagerItemProvider"    # Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .param p3, "mainAxisAvailableSize"    # I
    .param p4, "beforeContentPadding"    # I
    .param p5, "afterContentPadding"    # I
    .param p6, "spaceBetweenPages"    # I
    .param p7, "currentPage"    # I
    .param p8, "currentPageOffset"    # I
    .param p9, "constraints"    # J
    .param p11, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p12, "verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p13, "horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p14, "reverseLayout"    # Z
    .param p15, "visualPageOffset"    # J
    .param p17, "pageAvailableSize"    # I
    .param p18, "beyondBoundsPageCount"    # I
    .param p19, "pinnedPages"    # Ljava/util/List;
    .param p20, "snapPositionInLayout"    # Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;
    .param p21, "placementScopeInvalidator"    # Landroidx/compose/runtime/MutableState;
    .param p22, "layout"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "I",
            "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
            "IIIIIIJ",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "ZJII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;",
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
            "Landroidx/compose/foundation/pager/PagerMeasureResult;"
        }
    .end annotation

    .line 63
    move/from16 v0, p1

    move/from16 v7, p4

    move-wide/from16 v5, p9

    move-object/from16 v4, p11

    move/from16 v3, p18

    move-object/from16 v1, p19

    move-object/from16 v2, p22

    const/4 v15, 0x0

    const/16 v21, 0x1

    if-ltz v7, :cond_0

    move/from16 v8, v21

    goto :goto_0

    :cond_0
    move v8, v15

    :goto_0
    if-eqz v8, :cond_2a

    .line 64
    if-ltz p5, :cond_1

    move/from16 v8, v21

    goto :goto_1

    :cond_1
    move v8, v15

    :goto_1
    if-eqz v8, :cond_29

    .line 65
    add-int v8, p17, p6

    invoke-static {v8, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v13

    .line 66
    .local v13, "pageSizeWithSpacing":I
    const/4 v8, 0x0

    .line 633
    .local v8, "$i$f$debugLog":I
    nop

    .line 636
    nop

    .line 70
    .end local v8    # "$i$f$debugLog":I
    if-gtz v0, :cond_2

    .line 72
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 77
    neg-int v14, v7

    .line 78
    add-int v15, p3, p5

    .line 79
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;->INSTANCE:Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;

    invoke-interface {v2, v8, v10, v11}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v23, v8

    check-cast v23, Landroidx/compose/ui/layout/MeasureResult;

    .line 71
    new-instance v25, Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-object/from16 v8, v25

    .line 72
    nop

    .line 73
    nop

    .line 74
    nop

    .line 75
    nop

    .line 76
    nop

    .line 77
    nop

    .line 78
    nop

    .line 82
    const/16 v16, 0x0

    .line 83
    nop

    .line 80
    const/16 v18, 0x0

    .line 85
    const/16 v19, 0x0

    .line 86
    const/16 v20, 0x0

    .line 81
    const/16 v21, 0x0

    .line 84
    const/16 v22, 0x0

    .line 79
    nop

    .line 87
    const/16 v24, 0x0

    .line 71
    move/from16 v10, p17

    move/from16 v11, p6

    move/from16 v12, p5

    move v2, v13

    .end local v13    # "pageSizeWithSpacing":I
    .local v2, "pageSizeWithSpacing":I
    move-object/from16 v13, p11

    move/from16 v17, p18

    invoke-direct/range {v8 .. v24}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/ui/layout/MeasureResult;Z)V

    .line 70
    return-object v25

    .line 91
    .end local v2    # "pageSizeWithSpacing":I
    .restart local v13    # "pageSizeWithSpacing":I
    :cond_2
    move v2, v13

    .end local v13    # "pageSizeWithSpacing":I
    .restart local v2    # "pageSizeWithSpacing":I
    const/16 v26, 0x0

    .line 92
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v4, v8, :cond_3

    .line 93
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v8

    move/from16 v27, v8

    goto :goto_2

    .line 95
    :cond_3
    move/from16 v27, p17

    .line 91
    :goto_2
    const/16 v28, 0x0

    .line 97
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v4, v8, :cond_4

    .line 98
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v8

    move/from16 v29, v8

    goto :goto_3

    .line 100
    :cond_4
    move/from16 v29, p17

    .line 91
    :goto_3
    const/16 v30, 0x5

    const/16 v31, 0x0

    invoke-static/range {v26 .. v31}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v39

    .line 104
    .local v39, "childConstraints":J
    move/from16 v8, p7

    .line 105
    .local v8, "firstVisiblePage":I
    move/from16 v9, p8

    move/from16 v41, v8

    move/from16 v42, v9

    .line 109
    .end local v8    # "firstVisiblePage":I
    .local v41, "firstVisiblePage":I
    .local v42, "firstVisiblePageOffset":I
    :goto_4
    if-lez v41, :cond_5

    if-lez v42, :cond_5

    .line 110
    add-int/lit8 v41, v41, -0x1

    .line 111
    sub-int v42, v42, v2

    goto :goto_4

    .line 115
    :cond_5
    mul-int/lit8 v43, v42, -0x1

    .line 117
    .local v43, "firstVisiblePageScrollOffset":I
    move/from16 v8, v41

    .line 118
    .local v8, "currentFirstPage":I
    move/from16 v9, v43

    .line 119
    .local v9, "currentFirstPageScrollOffset":I
    if-lt v8, v0, :cond_6

    .line 122
    add-int/lit8 v8, v0, -0x1

    .line 123
    const/4 v9, 0x0

    .line 127
    :cond_6
    new-instance v10, Lkotlin/collections/ArrayDeque;

    invoke-direct {v10}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object v13, v10

    .line 130
    .local v13, "visiblePages":Lkotlin/collections/ArrayDeque;
    neg-int v10, v7

    if-gez p6, :cond_7

    move/from16 v11, p6

    goto :goto_5

    :cond_7
    move v11, v15

    :goto_5
    add-int v14, v10, v11

    .line 131
    .local v14, "minOffset":I
    move/from16 v12, p3

    .line 136
    .local v12, "maxOffset":I
    add-int/2addr v9, v14

    .line 139
    const/4 v10, 0x0

    move/from16 v22, v8

    move v11, v10

    move v10, v9

    .line 144
    .end local v8    # "currentFirstPage":I
    .end local v9    # "currentFirstPageScrollOffset":I
    .local v10, "currentFirstPageScrollOffset":I
    .local v11, "maxCrossAxis":I
    .local v22, "currentFirstPage":I
    :goto_6
    if-gez v10, :cond_8

    if-lez v22, :cond_8

    .line 145
    add-int/lit8 v23, v22, -0x1

    .line 146
    .local v23, "previous":I
    nop

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 154
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v18

    .line 155
    nop

    .line 156
    nop

    .line 146
    move-object/from16 v8, p0

    move/from16 v9, v23

    move v5, v10

    move v6, v11

    .end local v10    # "currentFirstPageScrollOffset":I
    .end local v11    # "maxCrossAxis":I
    .local v5, "currentFirstPageScrollOffset":I
    .local v6, "maxCrossAxis":I
    move-wide/from16 v10, v39

    move v4, v12

    .end local v12    # "maxOffset":I
    .local v4, "maxOffset":I
    move-object/from16 v12, p2

    move-object v1, v13

    move v3, v14

    .end local v13    # "visiblePages":Lkotlin/collections/ArrayDeque;
    .end local v14    # "minOffset":I
    .local v1, "visiblePages":Lkotlin/collections/ArrayDeque;
    .local v3, "minOffset":I
    move-wide/from16 v13, p15

    move v7, v15

    move-object/from16 v15, p11

    move-object/from16 v16, p13

    move-object/from16 v17, p12

    move/from16 v19, p14

    move/from16 v20, p17

    invoke-static/range {v8 .. v20}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v8

    .line 158
    .local v8, "measuredPage":Landroidx/compose/foundation/pager/MeasuredPage;
    invoke-virtual {v1, v7, v8}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 159
    invoke-virtual {v8}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 160
    .end local v6    # "maxCrossAxis":I
    .restart local v11    # "maxCrossAxis":I
    add-int v10, v5, v2

    .line 161
    .end local v5    # "currentFirstPageScrollOffset":I
    .restart local v10    # "currentFirstPageScrollOffset":I
    move/from16 v22, v23

    move-wide/from16 v5, p9

    move-object v13, v1

    move v14, v3

    move v12, v4

    move v15, v7

    move/from16 v7, p4

    move-object/from16 v4, p11

    move/from16 v3, p18

    move-object/from16 v1, p19

    .end local v8    # "measuredPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v23    # "previous":I
    goto :goto_6

    .line 144
    .end local v1    # "visiblePages":Lkotlin/collections/ArrayDeque;
    .end local v3    # "minOffset":I
    .end local v4    # "maxOffset":I
    .restart local v12    # "maxOffset":I
    .restart local v13    # "visiblePages":Lkotlin/collections/ArrayDeque;
    .restart local v14    # "minOffset":I
    :cond_8
    move v5, v10

    move v6, v11

    move v4, v12

    move-object v1, v13

    move v3, v14

    move v7, v15

    .line 164
    .end local v10    # "currentFirstPageScrollOffset":I
    .end local v11    # "maxCrossAxis":I
    .end local v12    # "maxOffset":I
    .end local v13    # "visiblePages":Lkotlin/collections/ArrayDeque;
    .end local v14    # "minOffset":I
    .restart local v1    # "visiblePages":Lkotlin/collections/ArrayDeque;
    .restart local v3    # "minOffset":I
    .restart local v4    # "maxOffset":I
    .restart local v5    # "currentFirstPageScrollOffset":I
    .restart local v6    # "maxCrossAxis":I
    if-ge v5, v3, :cond_9

    .line 165
    move v10, v3

    .end local v5    # "currentFirstPageScrollOffset":I
    .restart local v10    # "currentFirstPageScrollOffset":I
    goto :goto_7

    .line 164
    .end local v10    # "currentFirstPageScrollOffset":I
    .restart local v5    # "currentFirstPageScrollOffset":I
    :cond_9
    move v10, v5

    .line 169
    .end local v5    # "currentFirstPageScrollOffset":I
    .restart local v10    # "currentFirstPageScrollOffset":I
    :goto_7
    sub-int/2addr v10, v3

    .line 171
    move/from16 v5, v22

    .line 172
    .local v5, "index":I
    add-int v12, v4, p5

    invoke-static {v12, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v15

    .line 173
    .local v15, "maxMainAxis":I
    neg-int v8, v10

    .line 178
    .local v8, "currentMainAxisOffset":I
    const/4 v9, 0x0

    .line 181
    .local v9, "remeasureNeeded":Z
    const/4 v11, 0x0

    move v13, v11

    .line 183
    .local v13, "indexInVisibleItems":I
    :goto_8
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v11

    if-ge v13, v11, :cond_b

    .line 184
    if-lt v8, v15, :cond_a

    .line 186
    invoke-virtual {v1, v13}, Lkotlin/collections/ArrayDeque;->remove(I)Ljava/lang/Object;

    .line 187
    const/4 v9, 0x1

    goto :goto_8

    .line 189
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 190
    add-int/2addr v8, v2

    .line 191
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 183
    :cond_b
    move v14, v6

    move/from16 v44, v9

    move/from16 v23, v22

    move v6, v5

    move v5, v8

    move/from16 v22, v10

    .line 198
    .end local v8    # "currentMainAxisOffset":I
    .end local v9    # "remeasureNeeded":Z
    .end local v10    # "currentFirstPageScrollOffset":I
    .local v5, "currentMainAxisOffset":I
    .local v6, "index":I
    .local v14, "maxCrossAxis":I
    .local v22, "currentFirstPageScrollOffset":I
    .local v23, "currentFirstPage":I
    .local v44, "remeasureNeeded":Z
    :goto_9
    if-ge v6, v0, :cond_10

    .line 199
    if-lt v5, v15, :cond_d

    .line 200
    if-lez v5, :cond_d

    .line 201
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_a

    :cond_c
    move/from16 v45, v13

    move v7, v14

    move/from16 v46, v15

    goto/16 :goto_d

    .line 203
    :cond_d
    :goto_a
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 211
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v18

    .line 212
    nop

    .line 213
    nop

    .line 203
    move-object/from16 v8, p0

    move v9, v6

    move-wide/from16 v10, v39

    move-object/from16 v12, p2

    move/from16 v45, v13

    move v7, v14

    .end local v13    # "indexInVisibleItems":I
    .end local v14    # "maxCrossAxis":I
    .local v7, "maxCrossAxis":I
    .local v45, "indexInVisibleItems":I
    move-wide/from16 v13, p15

    move/from16 v46, v15

    .end local v15    # "maxMainAxis":I
    .local v46, "maxMainAxis":I
    move-object/from16 v15, p11

    move-object/from16 v16, p13

    move-object/from16 v17, p12

    move/from16 v19, p14

    move/from16 v20, p17

    invoke-static/range {v8 .. v20}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v8

    .line 217
    .local v8, "measuredPage":Landroidx/compose/foundation/pager/MeasuredPage;
    add-int/lit8 v9, v0, -0x1

    if-ne v6, v9, :cond_e

    .line 218
    move/from16 v13, p17

    goto :goto_b

    .line 220
    :cond_e
    move v13, v2

    .line 217
    :goto_b
    add-int/2addr v5, v13

    .line 223
    if-gt v5, v3, :cond_f

    add-int/lit8 v9, v0, -0x1

    if-eq v6, v9, :cond_f

    .line 225
    add-int/lit8 v9, v6, 0x1

    .line 226
    .end local v23    # "currentFirstPage":I
    .local v9, "currentFirstPage":I
    sub-int v22, v22, v2

    .line 227
    const/4 v10, 0x1

    move v14, v7

    move/from16 v23, v9

    move/from16 v44, v10

    .end local v44    # "remeasureNeeded":Z
    .local v10, "remeasureNeeded":Z
    goto :goto_c

    .line 229
    .end local v9    # "currentFirstPage":I
    .end local v10    # "remeasureNeeded":Z
    .restart local v23    # "currentFirstPage":I
    .restart local v44    # "remeasureNeeded":Z
    :cond_f
    invoke-virtual {v8}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 230
    invoke-virtual {v1, v8}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move v14, v7

    .line 233
    .end local v7    # "maxCrossAxis":I
    .restart local v14    # "maxCrossAxis":I
    :goto_c
    nop

    .end local v8    # "measuredPage":Landroidx/compose/foundation/pager/MeasuredPage;
    add-int/lit8 v6, v6, 0x1

    move/from16 v13, v45

    move/from16 v15, v46

    const/4 v7, 0x0

    goto :goto_9

    .line 198
    .end local v45    # "indexInVisibleItems":I
    .end local v46    # "maxMainAxis":I
    .restart local v13    # "indexInVisibleItems":I
    .restart local v15    # "maxMainAxis":I
    :cond_10
    move/from16 v45, v13

    move v7, v14

    move/from16 v46, v15

    .line 238
    .end local v13    # "indexInVisibleItems":I
    .end local v14    # "maxCrossAxis":I
    .end local v15    # "maxMainAxis":I
    .restart local v7    # "maxCrossAxis":I
    .restart local v45    # "indexInVisibleItems":I
    .restart local v46    # "maxMainAxis":I
    :goto_d
    if-ge v5, v4, :cond_14

    .line 239
    sub-int v25, v4, v5

    .line 240
    .local v25, "toScrollBack":I
    sub-int v22, v22, v25

    .line 241
    add-int v5, v5, v25

    move/from16 v15, v22

    .line 242
    .end local v22    # "currentFirstPageScrollOffset":I
    .local v15, "currentFirstPageScrollOffset":I
    :goto_e
    move/from16 v13, p4

    const/4 v14, 0x0

    if-ge v15, v13, :cond_12

    .line 243
    if-lez v23, :cond_11

    .line 245
    add-int/lit8 v22, v23, -0x1

    .line 246
    .local v22, "previousIndex":I
    nop

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 250
    nop

    .line 251
    nop

    .line 252
    nop

    .line 253
    nop

    .line 254
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v18

    .line 255
    nop

    .line 256
    nop

    .line 246
    move-object/from16 v8, p0

    move/from16 v9, v22

    move-wide/from16 v10, v39

    move-object/from16 v12, p2

    move/from16 v26, v4

    move/from16 v24, v6

    move v6, v13

    move v4, v14

    .end local v4    # "maxOffset":I
    .end local v6    # "index":I
    .local v24, "index":I
    .local v26, "maxOffset":I
    move-wide/from16 v13, p15

    move/from16 v27, v15

    .end local v15    # "currentFirstPageScrollOffset":I
    .local v27, "currentFirstPageScrollOffset":I
    move-object/from16 v15, p11

    move-object/from16 v16, p13

    move-object/from16 v17, p12

    move/from16 v19, p14

    move/from16 v20, p17

    invoke-static/range {v8 .. v20}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v8

    .line 258
    .restart local v8    # "measuredPage":Landroidx/compose/foundation/pager/MeasuredPage;
    invoke-virtual {v1, v4, v8}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 259
    invoke-virtual {v8}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 260
    add-int v15, v27, v2

    .line 261
    .end local v27    # "currentFirstPageScrollOffset":I
    .restart local v15    # "currentFirstPageScrollOffset":I
    move/from16 v23, v22

    move/from16 v6, v24

    move/from16 v4, v26

    .end local v8    # "measuredPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v22    # "previousIndex":I
    goto :goto_e

    .line 243
    .end local v24    # "index":I
    .end local v26    # "maxOffset":I
    .restart local v4    # "maxOffset":I
    .restart local v6    # "index":I
    :cond_11
    move/from16 v26, v4

    move/from16 v24, v6

    move v6, v13

    move v4, v14

    move/from16 v27, v15

    .end local v4    # "maxOffset":I
    .end local v6    # "index":I
    .end local v15    # "currentFirstPageScrollOffset":I
    .restart local v24    # "index":I
    .restart local v26    # "maxOffset":I
    .restart local v27    # "currentFirstPageScrollOffset":I
    goto :goto_f

    .line 242
    .end local v24    # "index":I
    .end local v26    # "maxOffset":I
    .end local v27    # "currentFirstPageScrollOffset":I
    .restart local v4    # "maxOffset":I
    .restart local v6    # "index":I
    .restart local v15    # "currentFirstPageScrollOffset":I
    :cond_12
    move/from16 v26, v4

    move/from16 v24, v6

    move v6, v13

    move v4, v14

    move/from16 v27, v15

    .line 264
    .end local v4    # "maxOffset":I
    .end local v6    # "index":I
    .end local v15    # "currentFirstPageScrollOffset":I
    .restart local v24    # "index":I
    .restart local v26    # "maxOffset":I
    .restart local v27    # "currentFirstPageScrollOffset":I
    :goto_f
    if-gez v27, :cond_13

    .line 265
    add-int v5, v5, v27

    .line 266
    const/16 v22, 0x0

    move/from16 v8, v22

    move/from16 v15, v23

    move/from16 v54, v7

    move v7, v5

    move/from16 v5, v54

    .end local v27    # "currentFirstPageScrollOffset":I
    .local v22, "currentFirstPageScrollOffset":I
    goto :goto_10

    .line 264
    .end local v22    # "currentFirstPageScrollOffset":I
    .restart local v27    # "currentFirstPageScrollOffset":I
    :cond_13
    move/from16 v15, v23

    move/from16 v8, v27

    move/from16 v54, v7

    move v7, v5

    move/from16 v5, v54

    goto :goto_10

    .line 238
    .end local v24    # "index":I
    .end local v25    # "toScrollBack":I
    .end local v26    # "maxOffset":I
    .end local v27    # "currentFirstPageScrollOffset":I
    .restart local v4    # "maxOffset":I
    .restart local v6    # "index":I
    .restart local v22    # "currentFirstPageScrollOffset":I
    :cond_14
    move/from16 v26, v4

    move/from16 v24, v6

    const/4 v4, 0x0

    move/from16 v6, p4

    .end local v4    # "maxOffset":I
    .end local v6    # "index":I
    .restart local v24    # "index":I
    .restart local v26    # "maxOffset":I
    move/from16 v8, v22

    move/from16 v15, v23

    move/from16 v54, v7

    move v7, v5

    move/from16 v5, v54

    .line 271
    .end local v22    # "currentFirstPageScrollOffset":I
    .end local v23    # "currentFirstPage":I
    .local v5, "maxCrossAxis":I
    .local v7, "currentMainAxisOffset":I
    .local v8, "currentFirstPageScrollOffset":I
    .local v15, "currentFirstPage":I
    :goto_10
    if-ltz v8, :cond_15

    move/from16 v9, v21

    goto :goto_11

    :cond_15
    move v9, v4

    :goto_11
    if-eqz v9, :cond_28

    .line 272
    neg-int v13, v8

    .line 273
    .local v13, "visiblePagesScrollOffset":I
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 277
    .local v9, "firstPage":Landroidx/compose/foundation/pager/MeasuredPage;
    if-gtz v6, :cond_17

    if-gez p6, :cond_16

    goto :goto_12

    :cond_16
    move/from16 v47, v8

    move-object v14, v9

    goto :goto_14

    .line 278
    :cond_17
    :goto_12
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v11

    :goto_13
    if-ge v10, v11, :cond_19

    .line 279
    move v12, v2

    .line 280
    .local v12, "size":I
    if-eqz v8, :cond_18

    if-gt v12, v8, :cond_18

    .line 281
    move-object v14, v1

    check-cast v14, Ljava/util/List;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v14

    if-eq v10, v14, :cond_18

    .line 283
    sub-int/2addr v8, v12

    .line 284
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v1, v14}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v9, v14

    check-cast v9, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 278
    .end local v12    # "size":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 286
    .restart local v12    # "size":I
    :cond_18
    nop

    .line 293
    .end local v10    # "i":I
    .end local v12    # "size":I
    :cond_19
    move/from16 v47, v8

    move-object v14, v9

    .end local v8    # "currentFirstPageScrollOffset":I
    .end local v9    # "firstPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .local v14, "firstPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .local v47, "currentFirstPageScrollOffset":I
    :goto_14
    nop

    .line 294
    nop

    .line 295
    nop

    .line 292
    new-instance v20, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesBefore$1;

    move-object/from16 v8, v20

    move-object/from16 v9, p0

    move-wide/from16 v10, v39

    move-object/from16 v12, p2

    move/from16 v48, v13

    move-object v6, v14

    .end local v13    # "visiblePagesScrollOffset":I
    .end local v14    # "firstPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .local v6, "firstPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .local v48, "visiblePagesScrollOffset":I
    move-wide/from16 v13, p15

    move/from16 v22, v5

    move v5, v15

    .end local v15    # "currentFirstPage":I
    .local v5, "currentFirstPage":I
    .local v22, "maxCrossAxis":I
    move-object/from16 v15, p11

    move-object/from16 v16, p13

    move-object/from16 v17, p12

    move/from16 v18, p14

    move/from16 v19, p17

    invoke-direct/range {v8 .. v19}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesBefore$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZI)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v49, v1

    move/from16 v50, v3

    move/from16 v3, p18

    move-object/from16 v1, p19

    .end local v1    # "visiblePages":Lkotlin/collections/ArrayDeque;
    .end local v3    # "minOffset":I
    .local v49, "visiblePages":Lkotlin/collections/ArrayDeque;
    .local v50, "minOffset":I
    invoke-static {v5, v3, v1, v8}, Landroidx/compose/foundation/pager/PagerMeasureKt;->createPagesBeforeList(IILjava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v51

    .line 312
    .local v51, "extraPagesBefore":Ljava/util/List;
    move-object/from16 v8, v51

    .local v8, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 637
    .local v9, "$i$f$fastForEach":I
    nop

    .line 638
    const/4 v10, 0x0

    .local v10, "index$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    move/from16 v15, v22

    .end local v22    # "maxCrossAxis":I
    .local v15, "maxCrossAxis":I
    :goto_15
    if-ge v10, v11, :cond_1a

    .line 639
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 640
    .local v12, "item$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v13, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v14, 0x0

    .line 313
    .local v14, "$i$a$-fastForEach-PagerMeasureKt$measurePager$6":I
    invoke-virtual {v13}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v4

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 314
    nop

    .line 640
    .end local v13    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v14    # "$i$a$-fastForEach-PagerMeasureKt$measurePager$6":I
    nop

    .line 638
    .end local v12    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_15

    .line 642
    .end local v10    # "index$iv":I
    :cond_1a
    nop

    .line 318
    .end local v8    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    invoke-virtual/range {v49 .. v49}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v4

    .line 319
    nop

    .line 320
    nop

    .line 321
    nop

    .line 317
    new-instance v22, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesAfter$1;

    move-object/from16 v8, v22

    move-object/from16 v9, p0

    move-wide/from16 v10, v39

    move-object/from16 v12, p2

    move-wide/from16 v13, p15

    move/from16 v23, v15

    .end local v15    # "maxCrossAxis":I
    .local v23, "maxCrossAxis":I
    move-object/from16 v15, p11

    move-object/from16 v16, p13

    move-object/from16 v17, p12

    move/from16 v18, p14

    move/from16 v19, p17

    invoke-direct/range {v8 .. v19}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesAfter$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZI)V

    move-object/from16 v8, v22

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v0, v3, v1, v8}, Landroidx/compose/foundation/pager/PagerMeasureKt;->createPagesAfterList(IIILjava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v52

    .line 338
    .local v52, "extraPagesAfter":Ljava/util/List;
    move-object/from16 v4, v52

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 643
    .local v8, "$i$f$fastForEach":I
    nop

    .line 644
    const/4 v9, 0x0

    .local v9, "index$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v15, v23

    .end local v23    # "maxCrossAxis":I
    .restart local v15    # "maxCrossAxis":I
    :goto_16
    if-ge v9, v10, :cond_1b

    .line 645
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 646
    .local v11, "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v12, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v13, 0x0

    .line 339
    .local v13, "$i$a$-fastForEach-PagerMeasureKt$measurePager$7":I
    invoke-virtual {v12}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v14

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 340
    nop

    .line 646
    .end local v12    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v13    # "$i$a$-fastForEach-PagerMeasureKt$measurePager$7":I
    nop

    .line 644
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 648
    .end local v9    # "index$iv":I
    :cond_1b
    nop

    .line 342
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    invoke-virtual/range {v49 .. v49}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 343
    invoke-interface/range {v51 .. v51}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 344
    invoke-interface/range {v52 .. v52}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    move/from16 v4, v21

    goto :goto_17

    :cond_1c
    const/4 v4, 0x0

    .line 342
    :goto_17
    move/from16 v53, v4

    .line 346
    .local v53, "noExtraPages":Z
    nop

    .line 348
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    move-object/from16 v8, p11

    move/from16 v14, v26

    .end local v26    # "maxOffset":I
    .local v14, "maxOffset":I
    if-ne v8, v4, :cond_1d

    .line 349
    move v4, v15

    goto :goto_18

    .line 351
    :cond_1d
    move v4, v7

    .line 347
    :goto_18
    move-wide/from16 v9, p9

    invoke-static {v9, v10, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v29

    .line 346
    nop

    .line 354
    .local v29, "layoutWidth":I
    nop

    .line 356
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v8, v4, :cond_1e

    .line 357
    move v4, v7

    goto :goto_19

    .line 359
    :cond_1e
    move v4, v15

    .line 355
    :goto_19
    invoke-static {v9, v10, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v30

    .line 354
    nop

    .line 362
    .local v30, "layoutHeight":I
    nop

    .line 363
    move-object/from16 v26, v49

    check-cast v26, Ljava/util/List;

    .line 364
    nop

    .line 365
    nop

    .line 366
    nop

    .line 367
    nop

    .line 368
    nop

    .line 369
    nop

    .line 370
    nop

    .line 371
    nop

    .line 372
    nop

    .line 373
    move-object/from16 v36, p0

    check-cast v36, Landroidx/compose/ui/unit/Density;

    .line 375
    nop

    .line 374
    nop

    .line 362
    move-object/from16 v25, p0

    move-object/from16 v27, v51

    move-object/from16 v28, v52

    move/from16 v31, v7

    move/from16 v32, v14

    move/from16 v33, v48

    move-object/from16 v34, p11

    move/from16 v35, p14

    move/from16 v37, p6

    move/from16 v38, p17

    invoke-static/range {v25 .. v38}, Landroidx/compose/foundation/pager/PagerMeasureKt;->calculatePagesOffsets(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/unit/Density;II)Ljava/util/List;

    move-result-object v13

    .line 378
    .local v13, "positionedPages":Ljava/util/List;
    if-eqz v53, :cond_1f

    move/from16 v18, v2

    move/from16 v28, v5

    move-object v2, v13

    goto/16 :goto_1c

    :cond_1f
    move-object v4, v13

    .local v4, "$this$fastFilter$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 649
    .local v11, "$i$f$fastFilter":I
    nop

    .line 650
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v12

    .line 651
    .local v1, "target$iv":Ljava/util/ArrayList;
    move-object v12, v4

    .local v12, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 652
    .local v16, "$i$f$fastForEach":I
    nop

    .line 653
    const/16 v17, 0x0

    move/from16 v18, v2

    .end local v2    # "pageSizeWithSpacing":I
    .local v17, "index$iv$iv":I
    .local v18, "pageSizeWithSpacing":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v3, v17

    .end local v17    # "index$iv$iv":I
    .local v3, "index$iv$iv":I
    :goto_1a
    if-ge v3, v2, :cond_22

    .line 654
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 655
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v17

    .local v19, "it$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 656
    .local v22, "$i$a$-fastForEach-ListUtilsKt$fastFilter$2$iv":I
    move/from16 v23, v2

    move-object/from16 v2, v19

    .end local v19    # "it$iv":Ljava/lang/Object;
    .local v2, "it$iv":Ljava/lang/Object;
    move-object/from16 v19, v2

    check-cast v19, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v19, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/16 v25, 0x0

    .line 379
    .local v25, "$i$a$-fastFilter-PagerMeasureKt$measurePager$visiblePagesInfo$1":I
    move-object/from16 v26, v4

    .end local v4    # "$this$fastFilter$iv":Ljava/util/List;
    .local v26, "$this$fastFilter$iv":Ljava/util/List;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v4

    invoke-virtual/range {v49 .. v49}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroidx/compose/foundation/pager/MeasuredPage;

    move/from16 v28, v5

    .end local v5    # "currentFirstPage":I
    .local v28, "currentFirstPage":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v5

    if-lt v4, v5, :cond_20

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v4

    invoke-virtual/range {v49 .. v49}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v5

    if-gt v4, v5, :cond_20

    move/from16 v4, v21

    goto :goto_1b

    :cond_20
    const/4 v4, 0x0

    .line 656
    .end local v19    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v25    # "$i$a$-fastFilter-PagerMeasureKt$measurePager$visiblePagesInfo$1":I
    :goto_1b
    if-eqz v4, :cond_21

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_21
    nop

    .line 655
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v22    # "$i$a$-fastForEach-ListUtilsKt$fastFilter$2$iv":I
    nop

    .line 653
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v23

    move-object/from16 v4, v26

    move/from16 v5, v28

    goto :goto_1a

    .end local v26    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v28    # "currentFirstPage":I
    .restart local v4    # "$this$fastFilter$iv":Ljava/util/List;
    .restart local v5    # "currentFirstPage":I
    :cond_22
    move-object/from16 v26, v4

    move/from16 v28, v5

    .line 658
    .end local v3    # "index$iv$iv":I
    .end local v4    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v5    # "currentFirstPage":I
    .restart local v26    # "$this$fastFilter$iv":Ljava/util/List;
    .restart local v28    # "currentFirstPage":I
    nop

    .line 659
    .end local v12    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 378
    .end local v1    # "target$iv":Ljava/util/ArrayList;
    .end local v11    # "$i$f$fastFilter":I
    .end local v26    # "$this$fastFilter$iv":Ljava/util/List;
    :goto_1c
    move-object/from16 v12, p22

    move/from16 v11, v18

    .line 384
    .end local v18    # "pageSizeWithSpacing":I
    .local v2, "visiblePagesInfo":Ljava/util/List;
    .local v11, "pageSizeWithSpacing":I
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v8, v1, :cond_23

    move/from16 v1, v30

    goto :goto_1d

    :cond_23
    move/from16 v1, v29

    .line 385
    :goto_1d
    nop

    .line 386
    nop

    .line 387
    nop

    .line 388
    nop

    .line 389
    nop

    .line 383
    move/from16 v3, p4

    const/4 v8, 0x0

    move/from16 v4, p5

    move/from16 v25, v28

    .end local v28    # "currentFirstPage":I
    .local v25, "currentFirstPage":I
    move v5, v11

    move/from16 v10, p4

    move-object/from16 v26, v6

    move/from16 v9, v24

    .end local v6    # "firstPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v24    # "index":I
    .local v9, "index":I
    .local v26, "firstPage":Landroidx/compose/foundation/pager/MeasuredPage;
    move-object/from16 v6, p20

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/pager/PagerMeasureKt;->calculateNewCurrentPage(ILjava/util/List;IIILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v1

    .line 382
    nop

    .line 392
    .local v1, "newCurrentPage":Landroidx/compose/foundation/pager/MeasuredPage;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/MeasuredPage;->getOffset()I

    move-result v3

    goto :goto_1e

    :cond_24
    move v3, v8

    .line 394
    .local v3, "currentPagePositionOffset":I
    :goto_1e
    if-nez v11, :cond_25

    .line 395
    const/4 v4, 0x0

    move/from16 v20, v4

    goto :goto_1f

    .line 397
    :cond_25
    int-to-float v4, v3

    neg-float v4, v4

    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 398
    nop

    .line 397
    const/high16 v5, -0x41000000    # -0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v4, v5, v6}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v4

    move/from16 v20, v4

    .line 394
    :goto_1f
    nop

    .line 402
    .local v20, "newCurrentPageOffsetFraction":F
    const/4 v4, 0x0

    .line 660
    .local v4, "$i$f$debugLog":I
    nop

    .line 663
    nop

    .line 407
    .end local v4    # "$i$f$debugLog":I
    nop

    .line 408
    nop

    .line 409
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$9;

    move/from16 v27, v3

    move-object/from16 v3, p21

    .end local v3    # "currentPagePositionOffset":I
    .local v27, "currentPagePositionOffset":I
    invoke-direct {v6, v13, v3}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$9;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v12, v4, v5, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, Landroidx/compose/ui/layout/MeasureResult;

    .line 416
    neg-int v4, v10

    .line 417
    add-int v5, v14, p5

    .line 425
    if-lt v9, v0, :cond_27

    if-le v7, v14, :cond_26

    goto :goto_20

    :cond_26
    move/from16 v22, v8

    goto :goto_21

    :cond_27
    :goto_20
    move/from16 v22, v21

    .line 428
    :goto_21
    nop

    .line 406
    new-instance v6, Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-object v8, v6

    .line 418
    nop

    .line 421
    nop

    .line 422
    nop

    .line 423
    nop

    .line 420
    nop

    .line 416
    nop

    .line 417
    nop

    .line 419
    nop

    .line 424
    nop

    .line 407
    nop

    .line 426
    nop

    .line 427
    nop

    .line 408
    nop

    .line 425
    nop

    .line 409
    nop

    .line 428
    nop

    .line 406
    move/from16 v28, v9

    .end local v9    # "index":I
    .local v28, "index":I
    move-object v9, v2

    move/from16 v10, p17

    move/from16 v31, v11

    .end local v11    # "pageSizeWithSpacing":I
    .local v31, "pageSizeWithSpacing":I
    move/from16 v11, p6

    move/from16 v12, p5

    move-object/from16 v32, v13

    .end local v13    # "positionedPages":Ljava/util/List;
    .local v32, "positionedPages":Ljava/util/List;
    move-object/from16 v13, p11

    move/from16 v33, v14

    .end local v14    # "maxOffset":I
    .local v33, "maxOffset":I
    move v14, v4

    move v4, v15

    .end local v15    # "maxCrossAxis":I
    .local v4, "maxCrossAxis":I
    move v15, v5

    move/from16 v16, p14

    move/from16 v17, p18

    move-object/from16 v18, v26

    move-object/from16 v19, v1

    move/from16 v21, v47

    move/from16 v24, v44

    invoke-direct/range {v8 .. v24}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/ui/layout/MeasureResult;Z)V

    return-object v6

    .line 632
    .end local v4    # "maxCrossAxis":I
    .end local v20    # "newCurrentPageOffsetFraction":F
    .end local v25    # "currentFirstPage":I
    .end local v27    # "currentPagePositionOffset":I
    .end local v28    # "index":I
    .end local v29    # "layoutWidth":I
    .end local v30    # "layoutHeight":I
    .end local v31    # "pageSizeWithSpacing":I
    .end local v32    # "positionedPages":Ljava/util/List;
    .end local v33    # "maxOffset":I
    .end local v47    # "currentFirstPageScrollOffset":I
    .end local v48    # "visiblePagesScrollOffset":I
    .end local v49    # "visiblePages":Lkotlin/collections/ArrayDeque;
    .end local v50    # "minOffset":I
    .end local v51    # "extraPagesBefore":Ljava/util/List;
    .end local v52    # "extraPagesAfter":Ljava/util/List;
    .end local v53    # "noExtraPages":Z
    .local v1, "visiblePages":Lkotlin/collections/ArrayDeque;
    .local v2, "pageSizeWithSpacing":I
    .local v3, "minOffset":I
    .local v5, "maxCrossAxis":I
    .local v8, "currentFirstPageScrollOffset":I
    .local v15, "currentFirstPage":I
    .restart local v24    # "index":I
    .local v26, "maxOffset":I
    :cond_28
    move-object/from16 v49, v1

    move/from16 v31, v2

    .end local v1    # "visiblePages":Lkotlin/collections/ArrayDeque;
    .end local v2    # "pageSizeWithSpacing":I
    .restart local v31    # "pageSizeWithSpacing":I
    .restart local v49    # "visiblePages":Lkotlin/collections/ArrayDeque;
    const/4 v1, 0x0

    .line 271
    .local v1, "$i$a$-require-PagerMeasureKt$measurePager$5":I
    nop

    .end local v1    # "$i$a$-require-PagerMeasureKt$measurePager$5":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid currentFirstPageScrollOffset"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    .end local v3    # "minOffset":I
    .end local v5    # "maxCrossAxis":I
    .end local v7    # "currentMainAxisOffset":I
    .end local v8    # "currentFirstPageScrollOffset":I
    .end local v15    # "currentFirstPage":I
    .end local v24    # "index":I
    .end local v26    # "maxOffset":I
    .end local v31    # "pageSizeWithSpacing":I
    .end local v39    # "childConstraints":J
    .end local v41    # "firstVisiblePage":I
    .end local v42    # "firstVisiblePageOffset":I
    .end local v43    # "firstVisiblePageScrollOffset":I
    .end local v44    # "remeasureNeeded":Z
    .end local v45    # "indexInVisibleItems":I
    .end local v46    # "maxMainAxis":I
    .end local v49    # "visiblePages":Lkotlin/collections/ArrayDeque;
    :cond_29
    move-object/from16 v3, p21

    const/4 v1, 0x0

    .line 64
    .local v1, "$i$a$-require-PagerMeasureKt$measurePager$2":I
    nop

    .end local v1    # "$i$a$-require-PagerMeasureKt$measurePager$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "negative afterContentPadding"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    :cond_2a
    move-object/from16 v3, p21

    const/4 v1, 0x0

    .line 63
    .local v1, "$i$a$-require-PagerMeasureKt$measurePager$1":I
    nop

    .end local v1    # "$i$a$-require-PagerMeasureKt$measurePager$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "negative beforeContentPadding"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
