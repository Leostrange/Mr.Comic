.class final Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Clickable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt;->handlePressInteraction-EPk0efs(Landroidx/compose/foundation/gestures/PressGestureScope;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "androidx.compose.foundation.ClickableKt$handlePressInteraction$2"
    f = "Clickable.kt"
    i = {
        0x0,
        0x1,
        0x2
    }
    l = {
        0x133,
        0x135,
        0x13c,
        0x13d,
        0x146
    }
    m = "invokeSuspend"
    n = {
        "delayJob",
        "success",
        "release"
    }
    s = {
        "L$0",
        "Z$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $delayPressInteraction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $pressPoint:J

.field final synthetic $this_handlePressInteraction:Landroidx/compose/foundation/gestures/PressGestureScope;

.field private synthetic L$0:Ljava/lang/Object;

.field Z$0:Z

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/PressGestureScope;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/PressGestureScope;",
            "J",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/AbstractClickableNode$InteractionData;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$this_handlePressInteraction:Landroidx/compose/foundation/gestures/PressGestureScope;

    iput-wide p2, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressPoint:J

    iput-object p4, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p5, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    iput-object p6, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$delayPressInteraction:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;

    iget-object v1, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$this_handlePressInteraction:Landroidx/compose/foundation/gestures/PressGestureScope;

    iget-wide v2, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressPoint:J

    iget-object v4, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v5, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    iget-object v6, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$delayPressInteraction:Lkotlin/jvm/functions/Function0;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;-><init>(Landroidx/compose/foundation/gestures/PressGestureScope;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/coroutines/Continuation;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 298
    move-object/from16 v1, p0

    iget v2, v1, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "$i$a$-let-ClickableKt$handlePressInteraction$2$1":I
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v0    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ClickableKt$handlePressInteraction$2$1":I
    :pswitch_1
    move-object/from16 v0, p0

    .restart local v0    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    move-object/from16 v2, p1

    .restart local v2    # "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v0    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    iget-object v5, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .local v5, "release":Landroidx/compose/foundation/interaction/PressInteraction$Release;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v2    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "release":Landroidx/compose/foundation/interaction/PressInteraction$Release;
    :pswitch_3
    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-boolean v5, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->Z$0:Z

    .local v5, "success":Z
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "success":Z
    :pswitch_4
    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/Job;

    .local v5, "delayJob":Lkotlinx/coroutines/Job;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v4

    goto :goto_0

    .end local v2    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "delayJob":Lkotlinx/coroutines/Job;
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 299
    .local v5, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v6, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;

    iget-object v10, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$delayPressInteraction:Lkotlin/jvm/functions/Function0;

    iget-wide v11, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressPoint:J

    iget-object v13, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v14, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    const/4 v15, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v15}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;-><init>(Lkotlin/jvm/functions/Function0;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/coroutines/Continuation;)V

    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, v5

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v5

    .line 307
    .local v5, "delayJob":Lkotlinx/coroutines/Job;
    iget-object v6, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$this_handlePressInteraction:Landroidx/compose/foundation/gestures/PressGestureScope;

    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v5, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->label:I

    invoke-interface {v6, v7}, Landroidx/compose/foundation/gestures/PressGestureScope;->tryAwaitRelease(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_0

    .line 298
    return-object v0

    .line 307
    :cond_0
    :goto_0
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 308
    .local v6, "success":Z
    invoke-interface {v5}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 309
    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v3, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    iput-boolean v6, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->Z$0:Z

    const/4 v8, 0x2

    iput v8, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->label:I

    invoke-static {v5, v7}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "delayJob":Lkotlinx/coroutines/Job;
    if-ne v5, v0, :cond_1

    .line 298
    return-object v0

    .line 309
    :cond_1
    move v5, v6

    .line 313
    .end local v6    # "success":Z
    .local v5, "success":Z
    :goto_1
    if-eqz v5, :cond_7

    .line 314
    .end local v5    # "success":Z
    new-instance v5, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-wide v6, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressPoint:J

    invoke-direct {v5, v6, v7, v3}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 315
    .local v5, "press":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    new-instance v6, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    invoke-direct {v6, v5}, Landroidx/compose/foundation/interaction/PressInteraction$Release;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 316
    .local v6, "release":Landroidx/compose/foundation/interaction/PressInteraction$Release;
    iget-object v7, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v8, v5

    check-cast v8, Landroidx/compose/foundation/interaction/Interaction;

    move-object v9, v2

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v6, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    const/4 v10, 0x3

    iput v10, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->label:I

    invoke-interface {v7, v8, v9}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "press":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    if-ne v5, v0, :cond_2

    .line 298
    return-object v0

    .line 316
    :cond_2
    move-object v5, v6

    .line 317
    .end local v6    # "release":Landroidx/compose/foundation/interaction/PressInteraction$Release;
    .local v5, "release":Landroidx/compose/foundation/interaction/PressInteraction$Release;
    :goto_2
    iget-object v6, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v7, v5

    check-cast v7, Landroidx/compose/foundation/interaction/Interaction;

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v3, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->label:I

    invoke-interface {v6, v7, v8}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "release":Landroidx/compose/foundation/interaction/PressInteraction$Release;
    if-ne v5, v0, :cond_3

    .line 298
    return-object v0

    .line 317
    :cond_3
    move-object v0, v2

    move-object v2, v4

    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    .local v2, "$result":Ljava/lang/Object;
    :goto_3
    move-object v4, v2

    move-object v2, v0

    goto :goto_6

    .line 320
    .end local v0    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    .local v2, "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    .restart local v4    # "$result":Ljava/lang/Object;
    .local v6, "success":Z
    :cond_4
    iget-object v5, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    invoke-virtual {v5}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->getPressInteraction()Landroidx/compose/foundation/interaction/PressInteraction$Press;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v7, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .local v5, "pressInteraction":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    const/4 v8, 0x0

    .line 321
    .local v8, "$i$a$-let-ClickableKt$handlePressInteraction$2$1":I
    nop

    .end local v6    # "success":Z
    if-eqz v6, :cond_5

    .line 322
    new-instance v6, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    invoke-direct {v6, v5}, Landroidx/compose/foundation/interaction/PressInteraction$Release;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    check-cast v6, Landroidx/compose/foundation/interaction/PressInteraction;

    goto :goto_4

    .line 324
    :cond_5
    new-instance v6, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-direct {v6, v5}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    check-cast v6, Landroidx/compose/foundation/interaction/PressInteraction;

    .line 321
    .end local v5    # "pressInteraction":Landroidx/compose/foundation/interaction/PressInteraction$Press;
    :goto_4
    move-object v5, v6

    .line 326
    .local v5, "endInteraction":Landroidx/compose/foundation/interaction/PressInteraction;
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    iput-object v3, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    const/4 v9, 0x5

    iput v9, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->label:I

    invoke-interface {v7, v6, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "endInteraction":Landroidx/compose/foundation/interaction/PressInteraction;
    if-ne v5, v0, :cond_6

    .line 298
    return-object v0

    .line 326
    :cond_6
    move-object v0, v2

    move-object v2, v4

    move v4, v8

    .line 327
    .end local v8    # "$i$a$-let-ClickableKt$handlePressInteraction$2$1":I
    .restart local v0    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    .local v2, "$result":Ljava/lang/Object;
    .local v4, "$i$a$-let-ClickableKt$handlePressInteraction$2$1":I
    :goto_5
    nop

    .line 320
    .end local v4    # "$i$a$-let-ClickableKt$handlePressInteraction$2$1":I
    move-object v4, v2

    move-object v2, v0

    nop

    .line 329
    .end local v0    # "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    .local v2, "this":Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
    .local v4, "$result":Ljava/lang/Object;
    :cond_7
    :goto_6
    iget-object v0, v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    invoke-virtual {v0, v3}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->setPressInteraction(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 330
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
