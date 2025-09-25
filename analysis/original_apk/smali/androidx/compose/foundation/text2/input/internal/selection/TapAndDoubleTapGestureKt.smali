.class public final Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt;
.super Ljava/lang/Object;
.source "TapAndDoubleTapGesture.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapAndDoubleTapGesture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapAndDoubleTapGesture.kt\nandroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,116:1\n33#2,6:117\n101#2,2:123\n33#2,6:125\n103#2:131\n*S KotlinDebug\n*F\n+ 1 TapAndDoubleTapGesture.kt\nandroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt\n*L\n109#1:117,6\n110#1:123,2\n110#1:125,6\n110#1:131\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001c\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0082@\u00a2\u0006\u0002\u0010\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0082@\u00a2\u0006\u0002\u0010\u0007\u001a*\u0010\u0008\u001a\u00020\u0006*\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0080@\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "awaitSecondDown",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "firstUp",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "consumeUntilUp",
        "",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "detectTapAndDoubleTap",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "onTap",
        "Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;",
        "onDoubleTap",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final synthetic access$awaitSecondDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "firstUp"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt;->awaitSecondDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$consumeUntilUp(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt;->consumeUntilUp(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final awaitSecondDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$awaitSecondDown"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "firstUp"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 92
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/platform/ViewConfiguration;->getDoubleTapTimeoutMillis()J

    move-result-wide v0

    new-instance v2, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$awaitSecondDown$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$awaitSecondDown$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1, v2, p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method private static final consumeUntilUp(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
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

    instance-of v0, p1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$consumeUntilUp$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$consumeUntilUp$1;

    iget v1, v0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$consumeUntilUp$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$consumeUntilUp$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$consumeUntilUp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$consumeUntilUp$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$consumeUntilUp$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$consumeUntilUp$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 106
    iget v2, p1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$consumeUntilUp$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$consumeUntilUp$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local p0, "$this$consumeUntilUp":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .end local p0    # "$this$consumeUntilUp":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    .restart local p0    # "$this$consumeUntilUp":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_1
    iput-object p0, p1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$consumeUntilUp$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$consumeUntilUp$1;->label:I

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v3, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 106
    return-object v1

    .line 108
    :cond_1
    move-object v13, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v13

    .line 106
    .end local v0    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_2
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 109
    .local v0, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v4

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 117
    .local v5, "$i$f$fastForEach":I
    nop

    .line 118
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_3
    if-ge v6, v7, :cond_2

    .line 119
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 120
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v9, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v10, 0x0

    .line 109
    .local v10, "$i$a$-fastForEach-TapAndDoubleTapGestureKt$consumeUntilUp$2":I
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 120
    .end local v8    # "item$iv":Ljava/lang/Object;
    .end local v9    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v10    # "$i$a$-fastForEach-TapAndDoubleTapGestureKt$consumeUntilUp$2":I
    nop

    .line 118
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 122
    .end local v6    # "index$iv":I
    :cond_2
    nop

    .line 110
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastAny$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 123
    .local v4, "$i$f$fastAny":I
    nop

    .line 124
    nop

    .local v0, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 125
    .restart local v5    # "$i$f$fastForEach":I
    nop

    .line 126
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    :goto_4
    if-ge v6, v7, :cond_4

    .line 127
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 128
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 124
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v11, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v12, 0x0

    .line 110
    .local v12, "$i$a$-fastAny-TapAndDoubleTapGestureKt$consumeUntilUp$3":I
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v11

    .line 124
    .end local v11    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v12    # "$i$a$-fastAny-TapAndDoubleTapGestureKt$consumeUntilUp$3":I
    if-eqz v11, :cond_3

    move v0, v3

    goto :goto_5

    .line 128
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    :cond_3
    nop

    .line 126
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 130
    .end local v6    # "index$iv$iv":I
    :cond_4
    nop

    .line 131
    .end local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    .end local v4    # "$i$f$fastAny":I
    :goto_5
    if-nez v0, :cond_5

    .line 111
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 131
    :cond_5
    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final detectTapAndDoubleTap(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$detectTapAndDoubleTap"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p1, "onTap"    # Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;
    .param p2, "onDoubleTap"    # Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;",
            "Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt$detectTapAndDoubleTap$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 83
    return-object v0
.end method

.method public static synthetic detectTapAndDoubleTap$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 39
    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 40
    move-object p1, v0

    .line 39
    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 41
    move-object p2, v0

    .line 39
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt;->detectTapAndDoubleTap(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
