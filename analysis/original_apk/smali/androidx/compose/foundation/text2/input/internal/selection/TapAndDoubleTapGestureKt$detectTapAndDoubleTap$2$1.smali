.class final Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "TapAndDoubleTapGesture.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.text2.input.internal.selection.TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1"
    f = "TapAndDoubleTapGesture.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x4
    }
    l = {
        0x2c,
        0x32,
        0x36,
        0x40,
        0x45,
        0x4d
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitEachGesture",
        "$this$awaitEachGesture",
        "longPressTimeout",
        "$this$awaitEachGesture",
        "longPressTimeout",
        "$this$awaitEachGesture",
        "longPressTimeout",
        "$this$awaitEachGesture"
    }
    s = {
        "L$0",
        "L$0",
        "J$0",
        "L$0",
        "J$0",
        "L$0",
        "J$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $onDoubleTap:Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;

.field final synthetic $onTap:Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;",
            "Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->$onTap:Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;

    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->$onDoubleTap:Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;

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

    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->$onTap:Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;

    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->$onDoubleTap:Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 43
    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    .end local v0    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v3, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 76
    :catch_0
    move-exception v4

    move-object v5, v1

    goto/16 :goto_7

    .line 43
    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .end local v3    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v1, p0

    .restart local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-wide v3, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->J$0:J

    .local v3, "longPressTimeout":J
    iget-object v5, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v5, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v6, v3

    move-object v3, v5

    move-object v5, v1

    move-object v1, p1

    goto/16 :goto_5

    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .end local v3    # "longPressTimeout":J
    .end local v5    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    move-object v1, p0

    .restart local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-wide v3, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->J$0:J

    .restart local v3    # "longPressTimeout":J
    const/4 v5, 0x0

    .local v5, "upOrCancel":Landroidx/compose/ui/input/pointer/PointerInputChange;
    iget-object v6, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v6, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .end local v3    # "longPressTimeout":J
    .end local v5    # "upOrCancel":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v6    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_4
    move-object v1, p0

    .restart local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-wide v3, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->J$0:J

    .restart local v3    # "longPressTimeout":J
    iget-object v5, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v5, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v6, v3

    move-object v3, p1

    move-object v4, v1

    move-object v1, v2

    goto/16 :goto_1

    .line 53
    :catch_1
    move-exception v6

    move-object v6, v2

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    .local v6, "upOrCancel":Landroidx/compose/ui/input/pointer/PointerInputChange;
    goto/16 :goto_2

    .line 43
    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .end local v3    # "longPressTimeout":J
    .end local v5    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v6    # "upOrCancel":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_5
    move-object v1, p0

    .restart local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v3, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v3, v1

    move-object v1, p1

    goto :goto_0

    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .end local v3    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 44
    .restart local v3    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v8, 0x3

    const/4 v9, 0x0

    iput-object v3, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->label:I

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 43
    return-object v0

    .line 44
    :cond_0
    move-object v5, v3

    move-object v3, v1

    move-object v1, p1

    move-object p1, v4

    .line 43
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .restart local v5    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_0
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 45
    .local p1, "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 46
    .end local p1    # "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-interface {v5}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/platform/ViewConfiguration;->getLongPressTimeoutMillis()J

    move-result-wide v6

    .line 47
    .local v6, "longPressTimeout":J
    const/4 p1, 0x0

    .line 48
    .local p1, "upOrCancel":Landroidx/compose/ui/input/pointer/PointerInputChange;
    nop

    .line 50
    :try_start_2
    new-instance v4, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1$1;

    invoke-direct {v4, v2}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v8, v3

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v5, v3, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

    iput-wide v6, v3, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->J$0:J

    const/4 v9, 0x2

    iput v9, v3, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->label:I

    invoke-interface {v5, v6, v7, v4, v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_3

    if-ne v4, v0, :cond_1

    .line 43
    return-object v0

    .line 50
    :cond_1
    move-object v10, v1

    move-object v1, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v10

    .end local v1    # "$result":Ljava/lang/Object;
    .end local p1    # "upOrCancel":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .local v3, "$result":Ljava/lang/Object;
    .local v4, "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    :goto_1
    :try_start_3
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;
    :try_end_3
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v3

    move-object v10, v5

    move-object v5, v4

    move-wide v3, v6

    move-object v6, v10

    .restart local p1    # "upOrCancel":Landroidx/compose/ui/input/pointer/PointerInputChange;
    goto :goto_4

    .line 53
    .end local p1    # "upOrCancel":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :catch_2
    move-exception p1

    move-object p1, v1

    move-object v1, v4

    move-object v10, v5

    move-object v5, p1

    move-object p1, v3

    move-wide v3, v6

    move-object v6, v10

    .restart local p1    # "upOrCancel":Landroidx/compose/ui/input/pointer/PointerInputChange;
    goto :goto_2

    .end local v4    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v3, "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    :catch_3
    move-exception v4

    move-object v10, v5

    move-object v5, p1

    move-object p1, v1

    move-object v1, v3

    move-wide v3, v6

    move-object v6, v10

    .line 54
    .local v1, "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .local v3, "longPressTimeout":J
    .local v5, "upOrCancel":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .local v6, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local p1, "$result":Ljava/lang/Object;
    :goto_2
    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

    iput-wide v3, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->J$0:J

    const/4 v8, 0x3

    iput v8, v1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->label:I

    invoke-static {v6, v7}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt;->access$consumeUntilUp(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_2

    .line 43
    return-object v0

    .line 57
    :cond_2
    :goto_3
    move-object v10, v1

    move-object v1, p1

    move-object p1, v5

    move-object v5, v10

    .local v1, "$result":Ljava/lang/Object;
    .local v5, "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .local p1, "upOrCancel":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :goto_4
    if-eqz p1, :cond_7

    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 61
    iget-object v7, v5, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->$onTap:Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;->onEvent-k-4lQ0M(J)V

    .line 62
    :cond_3
    iget-object v7, v5, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->$onDoubleTap:Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;

    if-eqz v7, :cond_7

    .line 64
    move-object v7, v5

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v5, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

    iput-wide v3, v5, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->J$0:J

    const/4 v8, 0x4

    iput v8, v5, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->label:I

    invoke-static {v6, p1, v7}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt;->access$awaitSecondDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "upOrCancel":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-ne p1, v0, :cond_4

    .line 43
    return-object v0

    .line 64
    :cond_4
    move-wide v10, v3

    move-object v3, v6

    move-wide v6, v10

    .line 43
    .local v3, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v6, "longPressTimeout":J
    :goto_5
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 66
    .local p1, "secondDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-eqz p1, :cond_7

    .line 67
    .end local p1    # "secondDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    nop

    .line 69
    :try_start_4
    new-instance p1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1$2;

    iget-object v4, v5, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->$onDoubleTap:Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;

    invoke-direct {p1, v4, v2}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    move-object v4, v5

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v3, v5, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x5

    iput v8, v5, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->label:I

    invoke-interface {v3, v6, v7, p1, v4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v6    # "longPressTimeout":J
    if-ne p1, v0, :cond_5

    .line 43
    return-object v0

    .line 69
    :cond_5
    move-object p1, v1

    move-object v1, v5

    .end local v5    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .local v1, "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .local p1, "$result":Ljava/lang/Object;
    :goto_6
    move-object v5, v1

    move-object v1, p1

    goto :goto_9

    .line 76
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v5    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    :catch_4
    move-exception p1

    move-object p1, v1

    .line 77
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_7
    move-object v1, v5

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object v2, v5, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v5, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;->label:I

    invoke-static {v3, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt;->access$consumeUntilUp(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v3    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    if-ne v1, v0, :cond_6

    .line 43
    return-object v0

    .line 77
    :cond_6
    move-object v0, v5

    .line 82
    .end local v5    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .restart local v0    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    :goto_8
    move-object v1, p1

    move-object v5, v0

    .end local v0    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v5    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2$1;
    :cond_7
    :goto_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
