.class final Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer;->runRecomposeConcurrentlyAndApplyChanges(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2\n+ 2 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 4 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n*L\n1#1,1564:1\n477#2,3:1565\n480#2,2:1572\n482#2,3:1575\n485#2,5:1579\n33#3,4:1568\n38#3:1574\n82#4:1578\n82#4:1584\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2\n*L\n843#1:1565,3\n843#1:1572,2\n843#1:1575,3\n843#1:1579,5\n843#1:1568,4\n843#1:1574\n844#1:1578\n856#1:1584\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "parentFrameClock",
        "Landroidx/compose/runtime/MonotonicFrameClock;"
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
    c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2"
    f = "Recomposer.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1
    }
    l = {
        0x348,
        0x35c,
        0x35d
    }
    m = "invokeSuspend"
    n = {
        "recomposeCoroutineScope",
        "frameSignal",
        "frameLoop",
        "frameLoop"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Landroidx/compose/runtime/Recomposer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Landroidx/compose/runtime/MonotonicFrameClock;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {v0, v1, v2, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 829
    move-object/from16 v1, p0

    iget v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    .end local v0    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v5, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/Job;

    .local v5, "frameLoop":Lkotlinx/coroutines/Job;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v4

    move-object/from16 v23, v2

    move-object v2, v0

    move-object/from16 v0, v23

    goto/16 :goto_6

    .end local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v5    # "frameLoop":Lkotlinx/coroutines/Job;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    iget-object v6, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/Job;

    .local v6, "frameLoop":Lkotlinx/coroutines/Job;
    iget-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/runtime/ProduceFrameSignal;

    .local v7, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    iget-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    .local v8, "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v8

    move-object/from16 v23, v6

    move-object v6, v5

    move-object/from16 v5, v23

    goto/16 :goto_2

    .end local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "frameLoop":Lkotlinx/coroutines/Job;
    .end local v7    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .end local v8    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v6, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .local v6, "$this$recompositionRunner":Lkotlinx/coroutines/CoroutineScope;
    iget-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    move-object v13, v7

    check-cast v13, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 830
    .local v13, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    iget-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    sget-object v8, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v8, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v7, v8}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v7

    if-nez v7, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    if-eqz v7, :cond_b

    .line 835
    invoke-interface {v6}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    iget-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v7, v8}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    invoke-interface {v6}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v8

    check-cast v8, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v7, v8}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    .line 834
    invoke-static {v7}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v14

    .line 837
    .local v14, "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    new-instance v7, Landroidx/compose/runtime/ProduceFrameSignal;

    invoke-direct {v7}, Landroidx/compose/runtime/ProduceFrameSignal;-><init>()V

    move-object v15, v7

    .line 838
    .local v15, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v7, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;

    iget-object v10, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {v7, v10, v13, v15, v4}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)V

    move-object v10, v7

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, v6

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v7

    move-object v6, v5

    move-object v5, v7

    move-object v8, v14

    move-object v7, v15

    .line 839
    .end local v13    # "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    .end local v14    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v15    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .local v5, "frameLoop":Lkotlinx/coroutines/Job;
    .local v6, "$result":Ljava/lang/Object;
    .restart local v7    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .restart local v8    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :goto_1
    iget-object v9, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v9}, Landroidx/compose/runtime/Recomposer;->access$getShouldKeepRecomposing(Landroidx/compose/runtime/Recomposer;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 840
    iget-object v9, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    iput v3, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    invoke-static {v9, v10}, Landroidx/compose/runtime/Recomposer;->access$awaitWorkAvailable(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_1

    .line 829
    return-object v0

    .line 840
    :cond_1
    move-object v14, v8

    .line 843
    .end local v8    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v14    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :goto_2
    iget-object v15, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .local v15, "this_$iv":Landroidx/compose/runtime/Recomposer;
    iget-object v13, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/16 v16, 0x0

    .line 1565
    .local v16, "$i$f$recordComposerModifications":I
    invoke-static {v15}, Landroidx/compose/runtime/Recomposer;->access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v8

    .line 1566
    .local v8, "changes$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->isNotEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1567
    invoke-static {v15}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v9

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 1568
    .local v10, "$i$f$fastForEach":I
    nop

    .line 1569
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    :goto_3
    if-ge v11, v12, :cond_2

    .line 1570
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1571
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v4, v17

    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    .local v4, "composition$iv":Landroidx/compose/runtime/ControlledComposition;
    const/16 v18, 0x0

    .line 1572
    .local v18, "$i$a$-fastForEach-Recomposer$recordComposerModifications$4$iv":I
    move-object v3, v8

    check-cast v3, Ljava/util/Set;

    invoke-interface {v4, v3}, Landroidx/compose/runtime/ControlledComposition;->recordModificationsOf(Ljava/util/Set;)V

    .line 1573
    nop

    .line 1571
    .end local v4    # "composition$iv":Landroidx/compose/runtime/ControlledComposition;
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-Recomposer$recordComposerModifications$4$iv":I
    nop

    .line 1569
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_3

    .line 1574
    .end local v8    # "changes$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v11    # "index$iv$iv":I
    :cond_2
    nop

    .line 1575
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    new-instance v3, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v3}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    invoke-static {v15, v3}, Landroidx/compose/runtime/Recomposer;->access$setSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/collection/IdentityArraySet;)V

    .line 1577
    :cond_3
    invoke-static {v15}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1568
    .local v4, "$i$f$fastForEach":I
    nop

    .line 1569
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    move v11, v8

    .end local v8    # "index$iv$iv":I
    .restart local v11    # "index$iv$iv":I
    :goto_4
    if-ge v11, v12, :cond_4

    .line 1570
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1571
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v8

    check-cast v10, Landroidx/compose/runtime/ControlledComposition;

    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    .local v10, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/16 v17, 0x0

    .line 844
    .local v17, "$i$a$-recordComposerModifications-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2":I
    invoke-static {v13}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v8

    .local v8, "lock$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1578
    .local v9, "$i$f$synchronized":I
    monitor-enter v8

    .end local v8    # "lock$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 845
    .local v18, "$i$a$-synchronized-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$1":I
    :try_start_0
    invoke-static {v13}, Landroidx/compose/runtime/Recomposer;->access$getConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;)I

    move-result v20

    move-object/from16 p1, v0

    const/16 v19, 0x1

    add-int/lit8 v0, v20, 0x1

    invoke-static {v13, v0}, Landroidx/compose/runtime/Recomposer;->access$setConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1578
    .end local v18    # "$i$a$-synchronized-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$1":I
    monitor-exit v8

    .line 847
    .end local v9    # "$i$f$synchronized":I
    invoke-static {v10}, Landroidx/compose/runtime/CompositionKt;->getRecomposeCoroutineContext(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    new-instance v8, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2;

    const/4 v0, 0x0

    invoke-direct {v8, v13, v10, v0}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Lkotlin/coroutines/Continuation;)V

    move-object v0, v8

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-object v8, v14

    move-object/from16 v18, v10

    const/4 v10, 0x0

    .end local v10    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .local v18, "composition":Landroidx/compose/runtime/ControlledComposition;
    move/from16 v22, v11

    .end local v11    # "index$iv$iv":I
    .local v22, "index$iv$iv":I
    move-object v11, v0

    move v0, v12

    move/from16 v12, v20

    move-object/from16 v20, v13

    move-object/from16 v13, v21

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 855
    nop

    .line 1571
    .end local v17    # "$i$a$-recordComposerModifications-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2":I
    .end local v18    # "composition":Landroidx/compose/runtime/ControlledComposition;
    nop

    .line 1569
    add-int/lit8 v11, v22, 0x1

    move v12, v0

    move-object/from16 v13, v20

    move-object/from16 v0, p1

    .end local v22    # "index$iv$iv":I
    .restart local v11    # "index$iv$iv":I
    goto :goto_4

    .line 1578
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "frameLoop":Lkotlinx/coroutines/Job;
    .end local v7    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .end local v11    # "index$iv$iv":I
    .end local v14    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v15    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v9    # "$i$f$synchronized":I
    .restart local v17    # "$i$a$-recordComposerModifications-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2":I
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 1569
    .end local v9    # "$i$f$synchronized":I
    .end local v17    # "$i$a$-recordComposerModifications-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2":I
    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v5    # "frameLoop":Lkotlinx/coroutines/Job;
    .restart local v7    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .restart local v11    # "index$iv$iv":I
    .restart local v14    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v15    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    :cond_4
    move-object/from16 p1, v0

    move/from16 v22, v11

    const/16 v19, 0x1

    .line 1574
    .end local v11    # "index$iv$iv":I
    nop

    .line 1579
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    invoke-static {v15}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1580
    invoke-static {v15}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1583
    nop

    .line 858
    .end local v15    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v16    # "$i$f$recordComposerModifications":I
    nop

    .line 856
    iget-object v0, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "lock$iv":Ljava/lang/Object;
    iget-object v0, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v4, 0x0

    .line 1584
    .local v4, "$i$f$synchronized":I
    monitor-enter v3

    .end local v3    # "lock$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 857
    .local v8, "$i$a$-synchronized-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$3":I
    :try_start_1
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getHasConcurrentFrameWorkLocked(Landroidx/compose/runtime/Recomposer;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v7}, Landroidx/compose/runtime/ProduceFrameSignal;->requestFrameLocked()Lkotlin/coroutines/Continuation;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 1584
    .end local v8    # "$i$a$-synchronized-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$3":I
    :goto_5
    monitor-exit v3

    .line 856
    .end local v4    # "$i$f$synchronized":I
    nop

    .line 858
    if-eqz v0, :cond_6

    .line 856
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 858
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 839
    :cond_6
    move-object/from16 v0, p1

    move-object v8, v14

    move/from16 v3, v19

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1584
    .end local v5    # "frameLoop":Lkotlinx/coroutines/Job;
    .end local v7    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .end local v14    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v4    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 1580
    .end local v4    # "$i$f$synchronized":I
    .restart local v5    # "frameLoop":Lkotlinx/coroutines/Job;
    .restart local v7    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .restart local v14    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v15    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v16    # "$i$f$recordComposerModifications":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1581
    .end local v5    # "frameLoop":Lkotlinx/coroutines/Job;
    .end local v7    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .end local v14    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    const-string/jumbo v3, "called outside of runRecomposeAndApplyChanges"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    .end local v15    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v16    # "$i$f$recordComposerModifications":I
    .restart local v5    # "frameLoop":Lkotlinx/coroutines/Job;
    .local v8, "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :cond_8
    invoke-interface {v8}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v5, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    invoke-static {v3, v4}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v8    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    if-ne v3, v0, :cond_9

    .line 829
    return-object v0

    .line 860
    :cond_9
    move-object v3, v6

    move-object/from16 v23, v2

    move-object v2, v0

    move-object/from16 v0, v23

    .line 861
    .end local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .local v3, "$result":Ljava/lang/Object;
    :goto_6
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    invoke-static {v5, v4}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v5    # "frameLoop":Lkotlinx/coroutines/Job;
    if-ne v4, v2, :cond_a

    .line 829
    return-object v2

    .line 861
    :cond_a
    move-object v2, v3

    .line 862
    .end local v3    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    :goto_7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 830
    .end local v0    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .local v2, "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .local v5, "$result":Ljava/lang/Object;
    :cond_b
    const/4 v0, 0x0

    .line 831
    .local v0, "$i$a$-require-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recomposeCoroutineContext may not contain a Job; found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 832
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v4, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v8, v4}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v4

    .line 831
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    .end local v0    # "$i$a$-require-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
