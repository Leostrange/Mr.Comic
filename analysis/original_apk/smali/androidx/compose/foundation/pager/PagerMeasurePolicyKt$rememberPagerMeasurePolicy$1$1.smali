.class final Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PagerMeasurePolicy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerMeasurePolicyKt;->rememberPagerMeasurePolicy-121YqSk(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/foundation/pager/PagerMeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagerMeasurePolicy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagerMeasurePolicy.kt\nandroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,221:1\n1#2:222\n495#3,4:223\n500#3:232\n129#4,5:227\n*S KotlinDebug\n*F\n+ 1 PagerMeasurePolicy.kt\nandroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1\n*L\n149#1:223,4\n149#1:232\n149#1:227,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/pager/PagerMeasureResult;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "containerConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/pager/PagerMeasureResult;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $beyondBoundsPageCount:I

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $pageCount:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pageSize:Landroidx/compose/foundation/pager/PageSize;

.field final synthetic $pageSpacing:F

.field final synthetic $reverseLayout:Z

.field final synthetic $snapPositionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

.field final synthetic $state:Landroidx/compose/foundation/pager/PagerState;

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/pager/PagerState;FLandroidx/compose/foundation/pager/PageSize;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/pager/PagerState;",
            "F",
            "Landroidx/compose/foundation/pager/PageSize;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "I",
            "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p3, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$reverseLayout:Z

    iput-object p4, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iput p5, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSpacing:F

    iput-object p6, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSize:Landroidx/compose/foundation/pager/PageSize;

    iput-object p7, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageCount:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p10, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput p11, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$beyondBoundsPageCount:I

    iput-object p12, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPositionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 69
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/pager/PagerMeasureResult;
    .locals 43
    .param p1, "$this$null"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p2, "containerConstraints"    # J

    .line 70
    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-wide/from16 v12, p2

    iget-object v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v31, v0

    .line 72
    .local v31, "isVertical":Z
    nop

    .line 73
    if-eqz v31, :cond_1

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 71
    :goto_1
    invoke-static {v12, v13, v0}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 78
    if-eqz v31, :cond_2

    .line 79
    iget-object v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    goto :goto_2

    .line 82
    :cond_2
    iget-object v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 78
    :goto_2
    nop

    .line 77
    move v10, v0

    .line 86
    .local v10, "startPadding":I
    if-eqz v31, :cond_3

    .line 87
    iget-object v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    goto :goto_3

    .line 90
    :cond_3
    iget-object v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 86
    :goto_3
    nop

    .line 85
    move/from16 v32, v0

    .line 92
    .local v32, "endPadding":I
    iget-object v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v8

    .line 93
    .local v8, "topPadding":I
    iget-object v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v33

    .line 94
    .local v33, "bottomPadding":I
    add-int v7, v8, v33

    .line 95
    .local v7, "totalVerticalPadding":I
    add-int v6, v10, v32

    .line 96
    .local v6, "totalHorizontalPadding":I
    if-eqz v31, :cond_4

    move v0, v7

    goto :goto_4

    :cond_4
    move v0, v6

    :goto_4
    move/from16 v34, v0

    .line 97
    .local v34, "totalMainAxisPadding":I
    nop

    .line 98
    if-eqz v31, :cond_5

    iget-boolean v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v0, :cond_5

    move v0, v8

    goto :goto_5

    .line 99
    :cond_5
    if-eqz v31, :cond_6

    iget-boolean v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v0, :cond_6

    move/from16 v0, v33

    goto :goto_5

    .line 100
    :cond_6
    if-nez v31, :cond_7

    iget-boolean v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v0, :cond_7

    move v0, v10

    goto :goto_5

    .line 101
    :cond_7
    move/from16 v0, v32

    .line 97
    :goto_5
    move/from16 v35, v0

    .line 103
    .local v35, "beforeContentPadding":I
    sub-int v36, v34, v35

    .line 105
    .local v36, "afterContentPadding":I
    neg-int v0, v6

    neg-int v2, v7

    invoke-static {v12, v13, v0, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v17

    .line 104
    nop

    .line 107
    .local v17, "contentConstraints":J
    iget-object v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    move-object v2, v14

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/pager/PagerState;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    .line 109
    iget v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSpacing:F

    invoke-interface {v14, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v4

    .line 112
    .local v4, "spaceBetweenPages":I
    if-eqz v31, :cond_8

    .line 113
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    sub-int/2addr v0, v7

    goto :goto_6

    .line 115
    :cond_8
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    sub-int/2addr v0, v6

    .line 112
    :goto_6
    move v5, v0

    .line 117
    .local v5, "mainAxisAvailableSize":I
    iget-boolean v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v0, :cond_c

    if-lez v5, :cond_9

    goto :goto_9

    .line 124
    :cond_9
    if-eqz v31, :cond_a

    move v0, v10

    goto :goto_7

    :cond_a
    add-int v0, v10, v5

    .line 125
    :goto_7
    if-eqz v31, :cond_b

    add-int v2, v8, v5

    goto :goto_8

    :cond_b
    move v2, v8

    .line 123
    :goto_8
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v2

    move-wide/from16 v23, v2

    goto :goto_a

    .line 118
    :cond_c
    :goto_9
    invoke-static {v10, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v2

    move-wide/from16 v23, v2

    .line 117
    :goto_a
    nop

    .line 130
    .local v23, "visualItemOffset":J
    iget-object v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSize:Landroidx/compose/foundation/pager/PageSize;

    .line 222
    .local v0, "$this$invoke_0kLqBqw_u24lambda_u240":Landroidx/compose/foundation/pager/PageSize;
    const/4 v2, 0x0

    .line 130
    .local v2, "$i$a$-with-PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$pageAvailableSize$1":I
    move-object v3, v14

    check-cast v3, Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, v3, v5, v4}, Landroidx/compose/foundation/pager/PageSize;->calculateMainAxisPageSize(Landroidx/compose/ui/unit/Density;II)I

    move-result v0

    .line 129
    .end local v0    # "$this$invoke_0kLqBqw_u24lambda_u240":Landroidx/compose/foundation/pager/PageSize;
    .end local v2    # "$i$a$-with-PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$pageAvailableSize$1":I
    move/from16 v37, v0

    .line 132
    .local v37, "pageAvailableSize":I
    iget-object v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    const/16 v25, 0x0

    .line 133
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v2, v3, :cond_d

    .line 134
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    move/from16 v26, v2

    goto :goto_b

    .line 136
    :cond_d
    move/from16 v26, v37

    .line 132
    :goto_b
    const/16 v27, 0x0

    .line 138
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v2, v3, :cond_e

    .line 139
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    move/from16 v28, v2

    goto :goto_c

    .line 141
    :cond_e
    move/from16 v28, v37

    .line 132
    :goto_c
    const/16 v29, 0x5

    const/16 v30, 0x0

    invoke-static/range {v25 .. v30}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/pager/PagerState;->setPremeasureConstraints-BRTryo0$foundation_release(J)V

    .line 144
    iget-object v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    .line 146
    .local v3, "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    const/4 v2, 0x0

    .line 147
    .local v2, "currentPage":I
    const/4 v9, 0x0

    .line 148
    .local v9, "currentPageOffset":I
    add-int v15, v37, v4

    .line 149
    .local v15, "pageSizeWithSpacing":I
    sget-object v19, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v19, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    iget-object v0, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    const/16 v20, 0x0

    .line 223
    .local v20, "$i$f$withoutReadObservation":I
    nop

    .line 224
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v21

    .line 225
    .local v21, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 226
    move-object/from16 v22, v21

    .local v22, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/16 v25, 0x0

    .line 227
    .local v25, "$i$f$enter":I
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v26, v16

    .line 228
    .local v26, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 229
    const/16 v27, 0x0

    .line 150
    .local v27, "$i$a$-withoutReadObservation-PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$1":I
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v11

    invoke-virtual {v0, v3, v11}, Landroidx/compose/foundation/pager/PagerState;->matchScrollPositionWithKey$foundation_release(Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;I)I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move v14, v15

    .end local v15    # "pageSizeWithSpacing":I
    .local v14, "pageSizeWithSpacing":I
    move v15, v11

    .line 151
    .end local v2    # "currentPage":I
    .local v15, "currentPage":I
    :try_start_2
    invoke-static {v0, v14}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt;->calculateCurrentPageLayoutOffset(Landroidx/compose/foundation/pager/PagerState;I)I

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 152
    .end local v9    # "currentPageOffset":I
    .local v16, "currentPageOffset":I
    nop

    .end local v27    # "$i$a$-withoutReadObservation-PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$1":I
    :try_start_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 229
    nop

    .line 231
    move-object/from16 v11, v22

    move-object/from16 v2, v26

    .end local v22    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v26    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v2, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v11, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :try_start_4
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    nop

    .line 232
    .end local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v25    # "$i$f$enter":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 226
    nop

    .line 154
    .end local v19    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v20    # "$i$f$withoutReadObservation":I
    .end local v21    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    move-object v0, v3

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 155
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getPinnedPages$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    move-result-object v2

    .line 156
    iget-object v9, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->getBeyondBoundsInfo$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-result-object v9

    .line 154
    invoke-static {v0, v2, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v0

    .local v0, "pinnedPages":Ljava/util/List;
    move-object/from16 v27, v0

    .line 163
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageCount:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 178
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getPlacementScopeInvalidator-zYiylxw$foundation_release()Landroidx/compose/runtime/MutableState;

    move-result-object v29

    .line 159
    nop

    .line 163
    nop

    .line 174
    nop

    .line 165
    nop

    .line 160
    nop

    .line 161
    nop

    .line 164
    nop

    .line 170
    nop

    .line 171
    nop

    .line 162
    nop

    .line 169
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    move-object/from16 v19, v2

    .line 173
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    move-object/from16 v20, v2

    .line 172
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    move-object/from16 v21, v2

    .line 175
    iget-boolean v2, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$reverseLayout:Z

    move/from16 v22, v2

    .line 166
    nop

    .line 167
    nop

    .line 168
    iget v2, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$beyondBoundsPageCount:I

    move/from16 v26, v2

    .line 176
    nop

    .line 177
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPositionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    move-object/from16 v28, v2

    .line 178
    nop

    .line 159
    new-instance v11, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$2;

    move-object v2, v11

    move-object/from16 v38, v3

    .end local v3    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .local v38, "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    move-object/from16 v3, p1

    move/from16 v39, v4

    move/from16 v40, v5

    .end local v4    # "spaceBetweenPages":I
    .end local v5    # "mainAxisAvailableSize":I
    .local v39, "spaceBetweenPages":I
    .local v40, "mainAxisAvailableSize":I
    move-wide/from16 v4, p2

    move/from16 v41, v6

    .end local v6    # "totalHorizontalPadding":I
    .local v41, "totalHorizontalPadding":I
    move/from16 v42, v7

    .end local v7    # "totalVerticalPadding":I
    .local v42, "totalVerticalPadding":I
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    move-object/from16 v30, v11

    check-cast v30, Lkotlin/jvm/functions/Function3;

    move v3, v8

    .end local v8    # "topPadding":I
    .local v3, "topPadding":I
    move-object/from16 v8, p1

    move v4, v10

    .end local v10    # "startPadding":I
    .local v4, "startPadding":I
    move-object/from16 v10, v38

    const/4 v2, 0x0

    move/from16 v11, v40

    move/from16 v12, v35

    move/from16 v13, v36

    move v5, v14

    .end local v14    # "pageSizeWithSpacing":I
    .local v5, "pageSizeWithSpacing":I
    move/from16 v14, v39

    move/from16 v25, v37

    invoke-static/range {v8 .. v30}, Landroidx/compose/foundation/pager/PagerMeasureKt;->measurePager-_JDW0YA(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;IIIIIIJLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ZJIILjava/util/List;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v6

    .line 187
    iget-object v7, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    move-object v8, v6

    .local v8, "it":Landroidx/compose/foundation/pager/PagerMeasureResult;
    const/4 v9, 0x0

    .line 188
    .local v9, "$i$a$-also-PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$3":I
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v7, v8, v2, v10, v11}, Landroidx/compose/foundation/pager/PagerState;->applyMeasureResult$foundation_release$default(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerMeasureResult;ZILjava/lang/Object;)V

    .line 189
    nop

    .line 187
    .end local v8    # "it":Landroidx/compose/foundation/pager/PagerMeasureResult;
    .end local v9    # "$i$a$-also-PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$3":I
    return-object v6

    .line 232
    .end local v0    # "pinnedPages":Ljava/util/List;
    .end local v38    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .end local v39    # "spaceBetweenPages":I
    .end local v40    # "mainAxisAvailableSize":I
    .end local v41    # "totalHorizontalPadding":I
    .end local v42    # "totalVerticalPadding":I
    .local v3, "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .local v4, "spaceBetweenPages":I
    .local v5, "mainAxisAvailableSize":I
    .restart local v6    # "totalHorizontalPadding":I
    .restart local v7    # "totalVerticalPadding":I
    .local v8, "topPadding":I
    .restart local v10    # "startPadding":I
    .restart local v14    # "pageSizeWithSpacing":I
    .restart local v19    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v20    # "$i$f$withoutReadObservation":I
    .restart local v21    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception v0

    move-object/from16 v38, v3

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v42, v7

    move v3, v8

    move v4, v10

    move v5, v14

    move v2, v15

    move/from16 v9, v16

    .end local v6    # "totalHorizontalPadding":I
    .end local v7    # "totalVerticalPadding":I
    .end local v8    # "topPadding":I
    .end local v10    # "startPadding":I
    .end local v14    # "pageSizeWithSpacing":I
    .local v3, "topPadding":I
    .local v4, "startPadding":I
    .local v5, "pageSizeWithSpacing":I
    .restart local v38    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .restart local v39    # "spaceBetweenPages":I
    .restart local v40    # "mainAxisAvailableSize":I
    .restart local v41    # "totalHorizontalPadding":I
    .restart local v42    # "totalVerticalPadding":I
    goto/16 :goto_e

    .line 231
    .end local v38    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .end local v39    # "spaceBetweenPages":I
    .end local v40    # "mainAxisAvailableSize":I
    .end local v41    # "totalHorizontalPadding":I
    .end local v42    # "totalVerticalPadding":I
    .local v3, "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .local v4, "spaceBetweenPages":I
    .local v5, "mainAxisAvailableSize":I
    .restart local v6    # "totalHorizontalPadding":I
    .restart local v7    # "totalVerticalPadding":I
    .restart local v8    # "topPadding":I
    .restart local v10    # "startPadding":I
    .restart local v14    # "pageSizeWithSpacing":I
    .restart local v22    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v25    # "$i$f$enter":I
    .restart local v26    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_1
    move-exception v0

    move-object/from16 v38, v3

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v42, v7

    move v3, v8

    move v4, v10

    move v5, v14

    move-object/from16 v11, v22

    move-object/from16 v2, v26

    move-object v6, v2

    move v2, v15

    move/from16 v9, v16

    .end local v6    # "totalHorizontalPadding":I
    .end local v7    # "totalVerticalPadding":I
    .end local v8    # "topPadding":I
    .end local v10    # "startPadding":I
    .end local v14    # "pageSizeWithSpacing":I
    .end local v22    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v26    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v3, "topPadding":I
    .local v4, "startPadding":I
    .local v5, "pageSizeWithSpacing":I
    .restart local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v38    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .restart local v39    # "spaceBetweenPages":I
    .restart local v40    # "mainAxisAvailableSize":I
    .restart local v41    # "totalHorizontalPadding":I
    .restart local v42    # "totalVerticalPadding":I
    goto :goto_d

    .end local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v16    # "currentPageOffset":I
    .end local v38    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .end local v39    # "spaceBetweenPages":I
    .end local v40    # "mainAxisAvailableSize":I
    .end local v41    # "totalHorizontalPadding":I
    .end local v42    # "totalVerticalPadding":I
    .local v3, "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .local v4, "spaceBetweenPages":I
    .local v5, "mainAxisAvailableSize":I
    .restart local v6    # "totalHorizontalPadding":I
    .restart local v7    # "totalVerticalPadding":I
    .restart local v8    # "topPadding":I
    .local v9, "currentPageOffset":I
    .restart local v10    # "startPadding":I
    .restart local v14    # "pageSizeWithSpacing":I
    .restart local v22    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v26    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_2
    move-exception v0

    move-object/from16 v38, v3

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v42, v7

    move v3, v8

    move v4, v10

    move v5, v14

    move-object/from16 v11, v22

    move-object/from16 v2, v26

    move-object v6, v2

    move v2, v15

    .end local v6    # "totalHorizontalPadding":I
    .end local v7    # "totalVerticalPadding":I
    .end local v8    # "topPadding":I
    .end local v10    # "startPadding":I
    .end local v14    # "pageSizeWithSpacing":I
    .end local v22    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v26    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v3, "topPadding":I
    .local v4, "startPadding":I
    .local v5, "pageSizeWithSpacing":I
    .restart local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v38    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .restart local v39    # "spaceBetweenPages":I
    .restart local v40    # "mainAxisAvailableSize":I
    .restart local v41    # "totalHorizontalPadding":I
    .restart local v42    # "totalVerticalPadding":I
    goto :goto_d

    .end local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v38    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .end local v39    # "spaceBetweenPages":I
    .end local v40    # "mainAxisAvailableSize":I
    .end local v41    # "totalHorizontalPadding":I
    .end local v42    # "totalVerticalPadding":I
    .local v2, "currentPage":I
    .local v3, "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .local v4, "spaceBetweenPages":I
    .local v5, "mainAxisAvailableSize":I
    .restart local v6    # "totalHorizontalPadding":I
    .restart local v7    # "totalVerticalPadding":I
    .restart local v8    # "topPadding":I
    .restart local v10    # "startPadding":I
    .local v15, "pageSizeWithSpacing":I
    .restart local v22    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v26    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_3
    move-exception v0

    move-object/from16 v38, v3

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v42, v7

    move v3, v8

    move v4, v10

    move v5, v15

    move-object/from16 v11, v22

    move-object/from16 v6, v26

    .end local v7    # "totalVerticalPadding":I
    .end local v8    # "topPadding":I
    .end local v10    # "startPadding":I
    .end local v15    # "pageSizeWithSpacing":I
    .end local v22    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v26    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v3, "topPadding":I
    .local v4, "startPadding":I
    .local v5, "pageSizeWithSpacing":I
    .local v6, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v38    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .restart local v39    # "spaceBetweenPages":I
    .restart local v40    # "mainAxisAvailableSize":I
    .restart local v41    # "totalHorizontalPadding":I
    .restart local v42    # "totalVerticalPadding":I
    :goto_d
    :try_start_5
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v2    # "currentPage":I
    .end local v3    # "topPadding":I
    .end local v4    # "startPadding":I
    .end local v5    # "pageSizeWithSpacing":I
    .end local v9    # "currentPageOffset":I
    .end local v17    # "contentConstraints":J
    .end local v19    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v20    # "$i$f$withoutReadObservation":I
    .end local v21    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v23    # "visualItemOffset":J
    .end local v31    # "isVertical":Z
    .end local v32    # "endPadding":I
    .end local v33    # "bottomPadding":I
    .end local v34    # "totalMainAxisPadding":I
    .end local v35    # "beforeContentPadding":I
    .end local v36    # "afterContentPadding":I
    .end local v37    # "pageAvailableSize":I
    .end local v38    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .end local v39    # "spaceBetweenPages":I
    .end local v40    # "mainAxisAvailableSize":I
    .end local v41    # "totalHorizontalPadding":I
    .end local v42    # "totalVerticalPadding":I
    .end local p1    # "$this$null":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .end local p2    # "containerConstraints":J
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 232
    .end local v6    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v25    # "$i$f$enter":I
    .restart local v2    # "currentPage":I
    .restart local v3    # "topPadding":I
    .restart local v4    # "startPadding":I
    .restart local v5    # "pageSizeWithSpacing":I
    .restart local v9    # "currentPageOffset":I
    .restart local v17    # "contentConstraints":J
    .restart local v19    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v20    # "$i$f$withoutReadObservation":I
    .restart local v21    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v23    # "visualItemOffset":J
    .restart local v31    # "isVertical":Z
    .restart local v32    # "endPadding":I
    .restart local v33    # "bottomPadding":I
    .restart local v34    # "totalMainAxisPadding":I
    .restart local v35    # "beforeContentPadding":I
    .restart local v36    # "afterContentPadding":I
    .restart local v37    # "pageAvailableSize":I
    .restart local v38    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .restart local v39    # "spaceBetweenPages":I
    .restart local v40    # "mainAxisAvailableSize":I
    .restart local v41    # "totalHorizontalPadding":I
    .restart local v42    # "totalVerticalPadding":I
    .restart local p1    # "$this$null":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .restart local p2    # "containerConstraints":J
    :catchall_4
    move-exception v0

    goto :goto_e

    .end local v38    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .end local v39    # "spaceBetweenPages":I
    .end local v40    # "mainAxisAvailableSize":I
    .end local v41    # "totalHorizontalPadding":I
    .end local v42    # "totalVerticalPadding":I
    .local v3, "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .local v4, "spaceBetweenPages":I
    .local v5, "mainAxisAvailableSize":I
    .local v6, "totalHorizontalPadding":I
    .restart local v7    # "totalVerticalPadding":I
    .restart local v8    # "topPadding":I
    .restart local v10    # "startPadding":I
    .restart local v15    # "pageSizeWithSpacing":I
    :catchall_5
    move-exception v0

    move-object/from16 v38, v3

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v42, v7

    move v3, v8

    move v4, v10

    move v5, v15

    .end local v6    # "totalHorizontalPadding":I
    .end local v7    # "totalVerticalPadding":I
    .end local v8    # "topPadding":I
    .end local v10    # "startPadding":I
    .end local v15    # "pageSizeWithSpacing":I
    .local v3, "topPadding":I
    .local v4, "startPadding":I
    .local v5, "pageSizeWithSpacing":I
    .restart local v38    # "itemProvider":Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .restart local v39    # "spaceBetweenPages":I
    .restart local v40    # "mainAxisAvailableSize":I
    .restart local v41    # "totalHorizontalPadding":I
    .restart local v42    # "totalVerticalPadding":I
    :goto_e
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v0
.end method
