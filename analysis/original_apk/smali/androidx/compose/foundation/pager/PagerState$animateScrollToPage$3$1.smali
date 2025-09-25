.class final Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PagerState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerState;->animateScrollToPage(IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagerState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagerState.kt\nandroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1\n+ 2 PagerState.kt\nandroidx/compose/foundation/pager/PagerStateKt\n*L\n1#1,787:1\n772#2,4:788\n772#2,4:792\n*S KotlinDebug\n*F\n+ 1 PagerState.kt\nandroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1\n*L\n531#1:788,4\n550#1:792,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/gestures/ScrollScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.pager.PagerState$animateScrollToPage$3$1"
    f = "PagerState.kt"
    i = {}
    l = {
        0x228
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $targetPage:I

.field final synthetic $targetPageOffsetToSnappedPosition:I

.field final synthetic $this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;ILandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "I",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;",
            "I",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    iput p2, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPage:I

    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    iput p4, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPageOffsetToSnappedPosition:I

    iput-object p5, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v7, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    iget v2, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPage:I

    iget-object v3, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    iget v4, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPageOffsetToSnappedPosition:I

    iget-object v5, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;-><init>(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;ILandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->invoke(Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 517
    move-object/from16 v1, p0

    iget v2, v1, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v0    # "this":Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v4, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 518
    .local v4, "$this$scroll":Landroidx/compose/foundation/gestures/ScrollScope;
    iget-object v5, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    iget v6, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPage:I

    invoke-virtual {v5, v4, v6}, Landroidx/compose/foundation/pager/PagerState;->updateTargetPage(Landroidx/compose/foundation/gestures/ScrollScope;I)V

    .line 519
    iget v5, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPage:I

    iget-object v6, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v5, v6, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    .line 520
    .local v5, "forward":Z
    :goto_0
    iget-object v6, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;->getLastVisibleItemIndex()I

    move-result v6

    iget-object v9, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result v9

    sub-int/2addr v6, v9

    add-int/2addr v6, v8

    .line 521
    .local v6, "visiblePages":I
    if-eqz v5, :cond_1

    iget v9, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPage:I

    iget-object v10, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    invoke-interface {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;->getLastVisibleItemIndex()I

    move-result v10

    if-gt v9, v10, :cond_2

    .line 522
    :cond_1
    if-nez v5, :cond_4

    iget v9, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPage:I

    iget-object v10, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    invoke-interface {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 523
    :cond_2
    iget v9, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPage:I

    iget-object v10, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    invoke-interface {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_4

    .line 525
    nop

    .end local v5    # "forward":Z
    if-eqz v5, :cond_3

    .line 526
    iget v5, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPage:I

    sub-int/2addr v5, v6

    iget-object v9, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result v9

    invoke-static {v5, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    goto :goto_1

    .line 528
    :cond_3
    iget v5, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPage:I

    add-int/2addr v5, v6

    iget-object v9, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result v9

    invoke-static {v5, v9}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v5

    .line 525
    .end local v6    # "visiblePages":I
    :goto_1
    nop

    .line 531
    .local v5, "preJumpPosition":I
    const/4 v6, 0x0

    .line 788
    .local v6, "$i$f$debugLog":I
    nop

    .line 791
    nop

    .line 536
    .end local v6    # "$i$f$debugLog":I
    iget-object v6, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    invoke-interface {v6, v4, v5, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;->snapToItem(Landroidx/compose/foundation/gestures/ScrollScope;II)V

    .line 538
    .end local v5    # "preJumpPosition":I
    :cond_4
    iget-object v5, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$this_with:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;->getVisibleItemsAverageSize()I

    move-result v5

    .line 539
    .local v5, "pageAvailableSpace":I
    iget-object v6, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v6

    .line 540
    .local v6, "currentPosition":I
    iget v7, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPage:I

    mul-int/2addr v7, v5

    .line 541
    .local v7, "targetOffset":I
    mul-int/2addr v6, v5

    .line 542
    .local v6, "currentOffset":I
    int-to-float v9, v5

    iget-object v10, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v10}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    move-result v10

    mul-float/2addr v9, v10

    .line 547
    .end local v5    # "pageAvailableSpace":I
    .local v9, "currentOffsetFraction":F
    sub-int/2addr v7, v6

    .line 548
    .end local v6    # "currentOffset":I
    .end local v7    # "targetOffset":I
    iget v5, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$targetPageOffsetToSnappedPosition:I

    .line 547
    add-int/2addr v7, v5

    int-to-float v5, v7

    .line 548
    nop

    .line 547
    .end local v9    # "currentOffsetFraction":F
    sub-float/2addr v5, v9

    .line 550
    .local v5, "displacement":F
    const/4 v6, 0x0

    .line 792
    .local v6, "$i$f$debugLog":I
    nop

    .line 795
    nop

    .line 551
    .end local v6    # "$i$f$debugLog":I
    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 552
    .local v6, "previousValue":Lkotlin/jvm/internal/Ref$FloatRef;
    const/4 v10, 0x0

    const/4 v12, 0x0

    iget-object v13, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    new-instance v7, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1$3;

    invoke-direct {v7, v6, v4}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1$3;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;)V

    move-object v14, v7

    check-cast v14, Lkotlin/jvm/functions/Function2;

    move-object v15, v2

    check-cast v15, Lkotlin/coroutines/Continuation;

    const/16 v16, 0x4

    const/16 v17, 0x0

    iput v8, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;->label:I

    move v11, v5

    invoke-static/range {v10 .. v17}, Landroidx/compose/animation/core/SuspendAnimationKt;->animate$default(FFFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "$this$scroll":Landroidx/compose/foundation/gestures/ScrollScope;
    .end local v5    # "displacement":F
    .end local v6    # "previousValue":Lkotlin/jvm/internal/Ref$FloatRef;
    if-ne v4, v0, :cond_5

    .line 517
    return-object v0

    .line 552
    :cond_5
    move-object v0, v2

    move-object v2, v3

    .line 558
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;
    .local v2, "$result":Ljava/lang/Object;
    :goto_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
