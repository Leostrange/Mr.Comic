.class public final Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;
.super Ljava/lang/Object;
.source "Pager.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerKt;->SnapLayoutInfoProvider(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/DecayAnimationSpec;F)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pager.kt\nandroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1\n+ 2 Pager.kt\nandroidx/compose/foundation/pager/PagerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,970:1\n956#2,4:971\n956#2,4:976\n956#2,4:980\n956#2,4:984\n956#2,4:988\n956#2,4:992\n956#2,4:996\n956#2,4:1000\n956#2,4:1004\n956#2,4:1008\n956#2,4:1012\n956#2,4:1016\n956#2,4:1020\n956#2,4:1024\n956#2,4:1028\n956#2,4:1032\n956#2,4:1036\n1#3:975\n*S KotlinDebug\n*F\n+ 1 Pager.kt\nandroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1\n*L\n602#1:971,4\n617#1:976,4\n627#1:980,4\n635#1:984,4\n639#1:988,4\n654#1:992,4\n664#1:996,4\n677#1:1000,4\n686#1:1004,4\n692#1:1008,4\n703#1:1012,4\n709#1:1016,4\n722#1:1020,4\n727#1:1024,4\n740#1:1028,4\n757#1:1032,4\n790#1:1036,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0014\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u000cH\u0002J\n\u0010\r\u001a\u00020\u000e*\u00020\u0007R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000f"
    }
    d2 = {
        "androidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "layoutInfo",
        "Landroidx/compose/foundation/pager/PagerLayoutInfo;",
        "getLayoutInfo",
        "()Landroidx/compose/foundation/pager/PagerLayoutInfo;",
        "calculateApproachOffset",
        "",
        "initialVelocity",
        "calculateSnappingOffset",
        "currentVelocity",
        "searchForSnappingBounds",
        "Lkotlin/Pair;",
        "isValidDistance",
        "",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pagerSnapDistance:Landroidx/compose/foundation/pager/PagerSnapDistance;

.field final synthetic $pagerState:Landroidx/compose/foundation/pager/PagerState;

.field final synthetic $snapPositionalThreshold:F


# direct methods
.method constructor <init>(Landroidx/compose/foundation/pager/PagerState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/foundation/pager/PagerSnapDistance;)V
    .locals 0
    .param p1, "$pagerState"    # Landroidx/compose/foundation/pager/PagerState;
    .param p2, "$snapPositionalThreshold"    # F
    .param p3, "$decayAnimationSpec"    # Landroidx/compose/animation/core/DecayAnimationSpec;
    .param p4, "$pagerSnapDistance"    # Landroidx/compose/foundation/pager/PagerSnapDistance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "F",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/foundation/pager/PagerSnapDistance;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    iput p2, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$snapPositionalThreshold:F

    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    iput-object p4, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerSnapDistance:Landroidx/compose/foundation/pager/PagerSnapDistance;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final searchForSnappingBounds()Lkotlin/Pair;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 727
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1024
    .local v1, "$i$f$debugLog":I
    nop

    .line 1027
    nop

    .line 728
    .end local v1    # "$i$f$debugLog":I
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 729
    .local v1, "lowerBoundOffset":F
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 730
    .local v2, "upperBoundOffset":F
    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v3

    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getPageSpacing$foundation_release()I

    move-result v4

    add-int/2addr v3, v4

    .line 732
    .local v3, "totalPageSize":I
    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v4

    .line 733
    .local v4, "currentPage":I
    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {v5, v3}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt;->calculateCurrentPageLayoutOffset(Landroidx/compose/foundation/pager/PagerState;I)I

    move-result v5

    .line 737
    .local v5, "currentPageScrollOffset":I
    const/4 v6, 0x0

    .local v6, "page":I
    move v6, v4

    .line 738
    const/4 v7, 0x0

    .local v7, "currentOffset":I
    move v7, v5

    .line 740
    const/4 v8, 0x0

    .line 1028
    .local v8, "$i$f$debugLog":I
    nop

    .line 1031
    nop

    .line 743
    .end local v8    # "$i$f$debugLog":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v8

    invoke-interface {v8}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 746
    .local v8, "maxDistanceFromCurrentPage":I
    :goto_0
    sub-int v9, v4, v8

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v9

    const/16 v16, 0x0

    if-lt v6, v9, :cond_2

    .line 748
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/foundation/pager/PagerLayoutInfoKt;->getMainAxisViewportSize(Landroidx/compose/foundation/pager/PagerLayoutInfo;)I

    move-result v9

    .line 749
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v10

    invoke-interface {v10}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getBeforeContentPadding()I

    move-result v10

    .line 750
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getAfterContentPadding()I

    move-result v11

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v12

    invoke-interface {v12}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getPageSize()I

    move-result v12

    .line 752
    nop

    .line 753
    nop

    .line 754
    invoke-static {}, Landroidx/compose/foundation/pager/PagerStateKt;->getSnapAlignmentStartToStart()Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    move-result-object v15

    .line 747
    move v13, v7

    move v14, v6

    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayoutKt;->calculateDistanceToDesiredSnapPosition(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)F

    move-result v9

    .line 757
    .local v9, "offset":F
    const/4 v10, 0x0

    .line 1032
    .local v10, "$i$f$debugLog":I
    nop

    .line 1035
    nop

    .line 760
    .end local v10    # "$i$f$debugLog":I
    cmpg-float v10, v9, v16

    if-gtz v10, :cond_0

    cmpl-float v10, v9, v1

    if-lez v10, :cond_0

    .line 761
    move v1, v9

    .line 765
    :cond_0
    cmpl-float v10, v9, v16

    if-ltz v10, :cond_1

    cmpg-float v10, v9, v2

    if-gez v10, :cond_1

    .line 766
    move v2, v9

    .line 769
    :cond_1
    sub-int/2addr v7, v3

    .line 770
    add-int/lit8 v6, v6, -0x1

    .end local v9    # "offset":F
    goto :goto_0

    .line 773
    :cond_2
    add-int/lit8 v6, v4, 0x1

    .line 774
    add-int v7, v5, v3

    .line 777
    :goto_1
    add-int v9, v4, v8

    .line 778
    iget-object v11, v0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-static {v9, v11}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v9

    if-gt v6, v9, :cond_5

    .line 781
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/foundation/pager/PagerLayoutInfoKt;->getMainAxisViewportSize(Landroidx/compose/foundation/pager/PagerLayoutInfo;)I

    move-result v17

    .line 782
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getBeforeContentPadding()I

    move-result v18

    .line 783
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getAfterContentPadding()I

    move-result v19

    .line 784
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getPageSize()I

    move-result v20

    .line 785
    nop

    .line 786
    nop

    .line 787
    invoke-static {}, Landroidx/compose/foundation/pager/PagerStateKt;->getSnapAlignmentStartToStart()Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    move-result-object v23

    .line 780
    move/from16 v21, v7

    move/from16 v22, v6

    invoke-static/range {v17 .. v23}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayoutKt;->calculateDistanceToDesiredSnapPosition(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)F

    move-result v9

    .line 790
    .restart local v9    # "offset":F
    const/4 v11, 0x0

    .line 1036
    .local v11, "$i$f$debugLog":I
    nop

    .line 1039
    nop

    .line 795
    .end local v11    # "$i$f$debugLog":I
    cmpl-float v11, v9, v16

    if-ltz v11, :cond_3

    cmpg-float v11, v9, v2

    if-gez v11, :cond_3

    .line 796
    move v2, v9

    .line 800
    :cond_3
    cmpg-float v11, v9, v16

    if-gtz v11, :cond_4

    cmpl-float v11, v9, v1

    if-lez v11, :cond_4

    .line 801
    move v1, v9

    .line 804
    :cond_4
    add-int/2addr v7, v3

    .line 805
    add-int/lit8 v6, v6, 0x1

    .end local v9    # "offset":F
    goto :goto_1

    .line 809
    :cond_5
    const/high16 v9, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float v9, v1, v9

    if-nez v9, :cond_6

    move v9, v12

    goto :goto_2

    :cond_6
    move v9, v10

    :goto_2
    if-eqz v9, :cond_7

    .line 810
    move v1, v2

    .line 813
    :cond_7
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v9, v2, v9

    if-nez v9, :cond_8

    move v10, v12

    :cond_8
    if-eqz v10, :cond_9

    .line 814
    move v2, v1

    .line 817
    :cond_9
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    return-object v9
.end method


# virtual methods
.method public calculateApproachOffset(F)F
    .locals 12
    .param p1, "initialVelocity"    # F

    .line 664
    const/4 v0, 0x0

    .line 996
    .local v0, "$i$f$debugLog":I
    nop

    .line 999
    nop

    .line 665
    .end local v0    # "$i$f$debugLog":I
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getPageSpacing$foundation_release()I

    move-result v1

    add-int/2addr v0, v1

    .line 669
    .local v0, "effectivePageSizePx":I
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->calculateTargetValue(Landroidx/compose/animation/core/DecayAnimationSpec;FF)F

    move-result v1

    .line 668
    nop

    .line 671
    .local v1, "animationOffsetPx":F
    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 672
    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getFirstVisiblePage$foundation_release()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getFirstVisiblePage$foundation_release()I

    move-result v2

    .line 671
    :goto_0
    nop

    .line 677
    .local v2, "startPage":I
    const/4 v3, 0x0

    .line 1000
    .local v3, "$i$f$debugLog":I
    nop

    .line 1003
    nop

    .line 684
    .end local v3    # "$i$f$debugLog":I
    int-to-float v3, v0

    div-float v9, v1, v3

    .line 686
    .local v9, "pagesInAnimationOffset":F
    const/4 v3, 0x0

    .line 1004
    .restart local v3    # "$i$f$debugLog":I
    nop

    .line 1007
    nop

    .line 690
    .end local v3    # "$i$f$debugLog":I
    float-to-int v3, v9

    add-int/2addr v3, v2

    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v4

    const/4 v10, 0x0

    invoke-static {v3, v10, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    .line 689
    nop

    .line 692
    .local v5, "targetPage":I
    const/4 v3, 0x0

    .line 1008
    .restart local v3    # "$i$f$debugLog":I
    nop

    .line 1011
    nop

    .line 695
    .end local v3    # "$i$f$debugLog":I
    iget-object v3, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerSnapDistance:Landroidx/compose/foundation/pager/PagerSnapDistance;

    .line 696
    nop

    .line 697
    nop

    .line 698
    nop

    .line 699
    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v7

    .line 700
    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getPageSpacing$foundation_release()I

    move-result v8

    .line 695
    move v4, v2

    move v6, p1

    invoke-interface/range {v3 .. v8}, Landroidx/compose/foundation/pager/PagerSnapDistance;->calculateTargetPage(IIFII)I

    move-result v3

    .line 701
    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v4

    invoke-static {v3, v10, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    .line 695
    nop

    .line 703
    .local v3, "correctedTargetPage":I
    const/4 v4, 0x0

    .line 1012
    .local v4, "$i$f$debugLog":I
    nop

    .line 1015
    nop

    .line 707
    .end local v4    # "$i$f$debugLog":I
    sub-int v4, v3, v2

    mul-int/2addr v4, v0

    .line 709
    .local v4, "proposedFlingOffset":I
    const/4 v6, 0x0

    .line 1016
    .local v6, "$i$f$debugLog":I
    nop

    .line 1019
    nop

    .line 713
    .end local v6    # "$i$f$debugLog":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v6, v0

    .line 714
    invoke-static {v6, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    .line 713
    nop

    .line 717
    .local v6, "flingApproachOffsetPx":I
    if-nez v6, :cond_1

    .line 718
    int-to-float v7, v6

    goto :goto_1

    .line 720
    :cond_1
    int-to-float v7, v6

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v8

    mul-float/2addr v7, v8

    .line 721
    :goto_1
    move v8, v7

    .local v8, "it":F
    const/4 v10, 0x0

    .line 722
    .local v10, "$i$a$-also-PagerKt$SnapLayoutInfoProvider$1$calculateApproachOffset$7":I
    const/4 v11, 0x0

    .line 1020
    .local v11, "$i$f$debugLog":I
    nop

    .line 1023
    nop

    .line 723
    .end local v11    # "$i$f$debugLog":I
    nop

    .line 721
    .end local v8    # "it":F
    .end local v10    # "$i$a$-also-PagerKt$SnapLayoutInfoProvider$1$calculateApproachOffset$7":I
    nop

    .line 717
    return v7
.end method

.method public calculateSnappingOffset(F)F
    .locals 9
    .param p1, "currentVelocity"    # F

    .line 598
    invoke-direct {p0}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->searchForSnappingBounds()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .local v1, "lowerBoundOffset":F
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 600
    .local v0, "upperBoundOffset":F
    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {v2}, Landroidx/compose/foundation/pager/PagerKt;->access$isScrollingForward(Landroidx/compose/foundation/pager/PagerState;)Z

    move-result v2

    .line 602
    .local v2, "isForward":Z
    const/4 v3, 0x0

    .line 971
    .local v3, "$i$f$debugLog":I
    nop

    .line 974
    nop

    .line 606
    .end local v3    # "$i$f$debugLog":I
    iget-object v3, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {v3}, Landroidx/compose/foundation/pager/PagerKt;->access$dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getPageSize()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 605
    nop

    .line 610
    .local v3, "offsetFromSnappedPosition":F
    float-to-int v4, v3

    int-to-float v4, v4

    sub-float v4, v3, v4

    .line 609
    nop

    .line 615
    .local v4, "offsetFromSnappedPositionOverflow":F
    iget-object v5, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->getDensity$foundation_release()Landroidx/compose/ui/unit/Density;

    move-result-object v5

    .line 975
    .local v5, "$this$calculateSnappingOffset_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    const/4 v6, 0x0

    .line 615
    .local v6, "$i$a$-with-PagerKt$SnapLayoutInfoProvider$1$calculateSnappingOffset$finalSnappingItem$1":I
    invoke-static {v5, p1}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt;->calculateFinalSnappingItem(Landroidx/compose/ui/unit/Density;F)I

    move-result v5

    .line 614
    .end local v5    # "$this$calculateSnappingOffset_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    .end local v6    # "$i$a$-with-PagerKt$SnapLayoutInfoProvider$1$calculateSnappingOffset$finalSnappingItem$1":I
    nop

    .line 617
    .local v5, "finalSnappingItem":I
    const/4 v6, 0x0

    .line 976
    .local v6, "$i$f$debugLog":I
    nop

    .line 979
    nop

    .line 623
    .end local v6    # "$i$f$debugLog":I
    nop

    .line 624
    sget-object v6, Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem;->Companion:Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem$Companion;

    invoke-virtual {v6}, Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem$Companion;->getClosestItem-bbeMdSM()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem;->equals-impl0(II)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 625
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v8, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$snapPositionalThreshold:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    .line 627
    const/4 v6, 0x0

    .line 980
    .restart local v6    # "$i$f$debugLog":I
    nop

    .line 983
    nop

    .line 628
    .end local v6    # "$i$f$debugLog":I
    if-eqz v2, :cond_6

    goto :goto_0

    .line 632
    :cond_0
    iget-object v6, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 633
    iget-object v8, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v8}, Landroidx/compose/foundation/pager/PagerState;->getPositionThresholdFraction$foundation_release()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_1

    .line 635
    const/4 v6, 0x0

    .line 984
    .restart local v6    # "$i$f$debugLog":I
    nop

    .line 987
    nop

    .line 636
    .end local v6    # "$i$f$debugLog":I
    if-eqz v2, :cond_4

    goto :goto_1

    .line 639
    :cond_1
    const/4 v6, 0x0

    .line 988
    .restart local v6    # "$i$f$debugLog":I
    nop

    .line 991
    nop

    .line 640
    .end local v6    # "$i$f$debugLog":I
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_2

    .line 641
    goto :goto_1

    .line 643
    :cond_2
    goto :goto_0

    .line 649
    :cond_3
    sget-object v6, Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem;->Companion:Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem$Companion;

    invoke-virtual {v6}, Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem$Companion;->getNextItem-bbeMdSM()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 623
    :cond_4
    :goto_0
    move v6, v0

    goto :goto_2

    .line 650
    :cond_5
    sget-object v6, Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem;->Companion:Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem$Companion;

    invoke-virtual {v6}, Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem$Companion;->getPreviousItem-bbeMdSM()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 623
    :cond_6
    :goto_1
    move v6, v1

    goto :goto_2

    .line 651
    :cond_7
    move v6, v7

    .line 623
    :goto_2
    nop

    .line 654
    .local v6, "finalDistance":F
    const/4 v8, 0x0

    .line 992
    .local v8, "$i$f$debugLog":I
    nop

    .line 995
    nop

    .line 656
    .end local v8    # "$i$f$debugLog":I
    invoke-virtual {p0, v6}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->isValidDistance(F)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 657
    move v7, v6

    goto :goto_3

    .line 659
    :cond_8
    nop

    .line 656
    :goto_3
    return v7
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;
    .locals 1

    .line 591
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isValidDistance(F)Z
    .locals 3
    .param p1, "$this$isValidDistance"    # F

    .line 594
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float v0, p1, v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method
