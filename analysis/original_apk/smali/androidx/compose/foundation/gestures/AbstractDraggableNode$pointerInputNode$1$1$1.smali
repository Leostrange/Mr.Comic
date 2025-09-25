.class final Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"
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
    c = "androidx.compose.foundation.gestures.AbstractDraggableNode$pointerInputNode$1$1$1"
    f = "Draggable.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0x1cc,
        0x1db
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitPointerEventScope",
        "$this$awaitPointerEventScope",
        "isDragSuccessful"
    }
    s = {
        "L$0",
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/AbstractDraggableNode;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/AbstractDraggableNode;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/foundation/gestures/AbstractDraggableNode;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/AbstractDraggableNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 458
    move-object/from16 v2, p0

    iget v0, v2, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->label:I

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v6, p0

    .local v6, "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    move-object/from16 v7, p1

    .local v7, "$result":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "$i$a$-let-AbstractDraggableNode$pointerInputNode$1$1$1$1":I
    iget v9, v6, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->I$0:I

    .local v9, "isDragSuccessful":Z
    iget-object v0, v6, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->L$2:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v6, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->L$1:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    iget-object v0, v6, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v12, "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :try_start_0
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move v10, v9

    move v9, v8

    move-object v8, v7

    goto/16 :goto_2

    .line 490
    .end local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 486
    .restart local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 458
    .end local v6    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-AbstractDraggableNode$pointerInputNode$1$1$1$1":I
    .end local v9    # "isDragSuccessful":Z
    .end local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_1
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    move-object/from16 v6, p1

    .local v6, "$result":Ljava/lang/Object;
    iget-object v7, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v7, "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v6

    move-object v13, v7

    move-object v6, v1

    move-object v7, v8

    move-object v1, v0

    goto :goto_1

    .end local v0    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    .restart local v0    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    iget-object v7, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    move-object v13, v7

    .line 459
    .local v13, "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_0
    iget-object v7, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v7}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 465
    nop

    .line 460
    nop

    .line 461
    iget-object v7, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    invoke-static {v7}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$get_canDrag$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Lkotlin/jvm/functions/Function1;

    move-result-object v8

    .line 462
    iget-object v7, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    invoke-static {v7}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$get_startDragImmediately$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Lkotlin/jvm/functions/Function0;

    move-result-object v9

    .line 463
    iget-object v7, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    invoke-static {v7}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v10

    .line 464
    iget-object v7, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->getPointerDirectionConfig()Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    move-result-object v11

    move-object v12, v0

    check-cast v12, Lkotlin/coroutines/Continuation;

    .line 460
    iput-object v13, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->label:I

    move-object v7, v13

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/gestures/DraggableKt;->access$awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/PointerDirectionConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_0

    .line 458
    return-object v1

    .line 460
    :cond_0
    move-object v8, v6

    move-object v6, v1

    move-object v1, v0

    .line 458
    .end local v0    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .local v1, "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .local v8, "$result":Ljava/lang/Object;
    :goto_1
    check-cast v7, Lkotlin/Pair;

    .line 465
    if-eqz v7, :cond_8

    .line 460
    nop

    .line 465
    iget-object v11, v1, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->this$0:Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    iget-object v10, v1, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object v0, v7

    .local v0, "it":Lkotlin/Pair;
    const/4 v7, 0x0

    .line 470
    .local v7, "$i$a$-let-AbstractDraggableNode$pointerInputNode$1$1$1$1":I
    invoke-static {v11}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$isListeningForEvents$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 471
    invoke-static {v11}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$startListeningForEvents(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)V

    .line 473
    :cond_1
    const/4 v9, 0x0

    .line 474
    .restart local v9    # "isDragSuccessful":Z
    nop

    .line 475
    nop

    .line 476
    :try_start_1
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 477
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v16

    .line 478
    .end local v0    # "it":Lkotlin/Pair;
    invoke-static {v11}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v18

    .line 479
    invoke-static {v11}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lkotlinx/coroutines/channels/SendChannel;

    .line 480
    invoke-virtual {v11}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->getReverseDirection()Z

    move-result v20

    .line 475
    new-instance v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1$1$1;

    invoke-direct {v0, v11}, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1$1$1;-><init>(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)V

    move-object/from16 v21, v0

    check-cast v21, Lkotlin/jvm/functions/Function1;

    iput-object v13, v1, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->L$2:Ljava/lang/Object;

    iput v9, v1, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->I$0:I

    const/4 v0, 0x2

    iput v0, v1, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;->label:I

    move-object v14, v13

    move-object/from16 v22, v1

    invoke-static/range {v14 .. v22}, Landroidx/compose/foundation/gestures/DraggableKt;->access$awaitDrag-Su4bsnU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v0, v6, :cond_2

    .line 458
    return-object v6

    .line 475
    :cond_2
    move-object v12, v11

    move-object v11, v10

    move v10, v9

    move v9, v7

    move-object v7, v0

    move-object/from16 v23, v6

    move-object v6, v1

    move-object/from16 v1, v23

    .end local v1    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .end local v7    # "$i$a$-let-AbstractDraggableNode$pointerInputNode$1$1$1$1":I
    .local v6, "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .local v9, "$i$a$-let-AbstractDraggableNode$pointerInputNode$1$1$1$1":I
    .local v10, "isDragSuccessful":Z
    :goto_2
    :try_start_2
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 490
    .end local v10    # "isDragSuccessful":Z
    .local v0, "isDragSuccessful":Z
    move-object v7, v12

    check-cast v7, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v7, v10}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 491
    invoke-interface {v7}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    move-result v7

    .line 490
    nop

    .line 492
    .local v7, "maximumVelocity":F
    if-eqz v0, :cond_4

    .line 493
    .end local v0    # "isDragSuccessful":Z
    invoke-static {v12}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v0

    .line 494
    invoke-static {v7, v7}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v10

    .line 493
    .end local v7    # "maximumVelocity":F
    invoke-virtual {v0, v10, v11}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-AH228Gc(J)J

    move-result-wide v10

    .line 496
    .local v10, "velocity":J
    invoke-static {v12}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 497
    new-instance v0, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    invoke-virtual {v12}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->getReverseDirection()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v3

    goto :goto_3

    :cond_3
    move v7, v4

    .end local v10    # "velocity":J
    :goto_3
    invoke-static {v10, v11, v7}, Landroidx/compose/ui/unit/Velocity;->times-adjELrA(JF)J

    move-result-wide v10

    invoke-direct {v0, v10, v11, v5}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/foundation/gestures/DragEvent;

    goto :goto_4

    .line 499
    :cond_4
    sget-object v0, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    check-cast v0, Landroidx/compose/foundation/gestures/DragEvent;

    .line 492
    :goto_4
    nop

    .line 501
    .local v0, "event":Landroidx/compose/foundation/gestures/DragEvent;
    invoke-static {v12}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v7

    invoke-interface {v7, v0}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .end local v0    # "event":Landroidx/compose/foundation/gestures/DragEvent;
    move-object v0, v6

    move-object v6, v8

    goto/16 :goto_6

    .line 490
    .end local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v10, "isDragSuccessful":Z
    :catchall_1
    move-exception v0

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object v11, v12

    goto :goto_7

    .line 486
    .restart local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :catch_1
    move-exception v0

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    goto :goto_5

    .line 490
    .end local v6    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .end local v10    # "isDragSuccessful":Z
    .end local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v1    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .local v7, "$i$a$-let-AbstractDraggableNode$pointerInputNode$1$1$1$1":I
    .local v9, "isDragSuccessful":Z
    :catchall_2
    move-exception v0

    move-object v6, v1

    move-object/from16 v23, v8

    move v8, v7

    move-object/from16 v7, v23

    goto :goto_7

    .line 486
    .restart local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :catch_2
    move-exception v0

    move-object v12, v13

    move-object/from16 v23, v6

    move-object v6, v1

    move-object/from16 v1, v23

    move-object/from16 v24, v8

    move v8, v7

    move-object/from16 v7, v24

    .line 487
    .end local v1    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .end local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v0, "cancellation":Ljava/util/concurrent/CancellationException;
    .restart local v6    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .local v7, "$result":Ljava/lang/Object;
    .local v8, "$i$a$-let-AbstractDraggableNode$pointerInputNode$1$1$1$1":I
    .restart local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_5
    const/4 v9, 0x0

    .line 488
    :try_start_3
    invoke-static {v10}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_5

    .line 490
    .end local v0    # "cancellation":Ljava/util/concurrent/CancellationException;
    move-object v0, v11

    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v0, v10}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 491
    invoke-interface {v0}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    move-result v0

    .line 490
    nop

    .line 492
    .local v0, "maximumVelocity":F
    nop

    .line 499
    .end local v0    # "maximumVelocity":F
    .end local v9    # "isDragSuccessful":Z
    sget-object v0, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    check-cast v0, Landroidx/compose/foundation/gestures/DragEvent;

    .line 492
    nop

    .line 501
    .local v0, "event":Landroidx/compose/foundation/gestures/DragEvent;
    invoke-static {v11}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v9

    invoke-interface {v9, v0}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .end local v0    # "event":Landroidx/compose/foundation/gestures/DragEvent;
    move-object v0, v6

    move-object v6, v7

    move v9, v8

    move-object v13, v12

    .line 503
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-AbstractDraggableNode$pointerInputNode$1$1$1$1":I
    .end local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v0, "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .local v6, "$result":Ljava/lang/Object;
    .local v9, "$i$a$-let-AbstractDraggableNode$pointerInputNode$1$1$1$1":I
    .restart local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_6
    nop

    .line 465
    .end local v9    # "$i$a$-let-AbstractDraggableNode$pointerInputNode$1$1$1$1":I
    goto/16 :goto_0

    .line 488
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v0, "cancellation":Ljava/util/concurrent/CancellationException;
    .restart local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_5
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 490
    .end local v0    # "cancellation":Ljava/util/concurrent/CancellationException;
    .end local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v6, "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local v8    # "$i$a$-let-AbstractDraggableNode$pointerInputNode$1$1$1$1":I
    .local v9, "isDragSuccessful":Z
    :goto_7
    move-object v1, v11

    check-cast v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v1, v10}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 491
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    move-result v1

    .line 490
    nop

    .line 492
    .local v1, "maximumVelocity":F
    if-eqz v9, :cond_7

    .line 493
    .end local v9    # "isDragSuccessful":Z
    invoke-static {v11}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v9

    .line 494
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v12

    .line 493
    .end local v1    # "maximumVelocity":F
    invoke-virtual {v9, v12, v13}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-AH228Gc(J)J

    move-result-wide v9

    .line 496
    .local v9, "velocity":J
    invoke-static {v11}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 497
    new-instance v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    invoke-virtual {v11}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->getReverseDirection()Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_8

    :cond_6
    move v3, v4

    .end local v9    # "velocity":J
    :goto_8
    invoke-static {v9, v10, v3}, Landroidx/compose/ui/unit/Velocity;->times-adjELrA(JF)J

    move-result-wide v3

    invoke-direct {v1, v3, v4, v5}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent;

    goto :goto_9

    .line 499
    :cond_7
    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent;

    .line 492
    :goto_9
    nop

    .line 501
    .local v1, "event":Landroidx/compose/foundation/gestures/DragEvent;
    invoke-static {v11}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v3

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "event":Landroidx/compose/foundation/gestures/DragEvent;
    throw v0

    .line 465
    .end local v6    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .local v1, "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .local v8, "$result":Ljava/lang/Object;
    .restart local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_8
    move-object v0, v1

    move-object v1, v6

    move-object v6, v8

    goto/16 :goto_0

    .line 505
    .end local v1    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .end local v8    # "$result":Ljava/lang/Object;
    .local v0, "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1$1$1;
    .local v6, "$result":Ljava/lang/Object;
    :cond_9
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
