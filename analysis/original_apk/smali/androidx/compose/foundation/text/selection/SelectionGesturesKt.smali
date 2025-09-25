.class public final Landroidx/compose/foundation/text/selection/SelectionGesturesKt;
.super Ljava/lang/Object;
.source "SelectionGestures.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionGestures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionGestures.kt\nandroidx/compose/foundation/text/selection/SelectionGesturesKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,238:1\n33#2,6:239\n33#2,6:245\n33#2,6:251\n86#2,2:257\n33#2,6:259\n88#2:265\n86#2,2:266\n33#2,6:268\n88#2:274\n*S KotlinDebug\n*F\n+ 1 SelectionGestures.kt\nandroidx/compose/foundation/text/selection/SelectionGesturesKt\n*L\n129#1:239,6\n160#1:245,6\n183#1:251,6\n226#1:257,2\n226#1:259,6\n226#1:265\n237#1:266,2\n237#1:268,6\n237#1:274\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0008\u001a\u00020\u0006*\u00020\tH\u0082@\u00a2\u0006\u0002\u0010\n\u001a&\u0010\u000b\u001a\u00020\u0005*\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a*\u0010\u0011\u001a\u00020\u0012*\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0002\u0010\u0018\u001a\u001c\u0010\u0019\u001a\u00020\u001a*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH\u0000\u001a\"\u0010\u001e\u001a\u00020\u0012*\u00020\t2\u0006\u0010\u0013\u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0002\u0010\u001f\u001a \u0010 \u001a\u00020\u001a*\u00020\u001a2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00120\"H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0018\u0010\u0004\u001a\u00020\u0005*\u00020\u00068@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0007\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006#"
    }
    d2 = {
        "ClicksSlop",
        "",
        "STATIC_KEY",
        "",
        "isPrecisePointer",
        "",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;)Z",
        "awaitDown",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "distanceIsTolerable",
        "offset1",
        "Landroidx/compose/ui/geometry/Offset;",
        "offset2",
        "distanceIsTolerable-2x9bVx0",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JJ)Z",
        "mouseSelection",
        "",
        "observer",
        "Landroidx/compose/foundation/text/selection/MouseSelectionObserver;",
        "clicksCounter",
        "Landroidx/compose/foundation/text/selection/ClicksCounter;",
        "down",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/ClicksCounter;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "selectionGestureInput",
        "Landroidx/compose/ui/Modifier;",
        "mouseSelectionObserver",
        "textDragObserver",
        "Landroidx/compose/foundation/text/TextDragObserver;",
        "touchSelection",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateSelectionTouchMode",
        "updateTouchMode",
        "Lkotlin/Function1;",
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
.field public static final ClicksSlop:D = 100.0

.field private static final STATIC_KEY:I = 0x845fed


# direct methods
.method public static final synthetic access$awaitDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->awaitDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$mouseSelection(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/ClicksCounter;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "observer"    # Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    .param p2, "clicksCounter"    # Landroidx/compose/foundation/text/selection/ClicksCounter;
    .param p3, "down"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->mouseSelection(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/ClicksCounter;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$touchSelection(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "observer"    # Landroidx/compose/foundation/text/TextDragObserver;
    .param p2, "down"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->touchSelection(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final awaitDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitDown$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitDown$1;

    iget v2, v1, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitDown$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitDown$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitDown$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitDown$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitDown$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitDown$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 222
    iget v3, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitDown$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitDown$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v3, "$this$awaitDown":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_2

    .end local v3    # "$this$awaitDown":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .line 223
    .restart local v3    # "$this$awaitDown":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    nop

    .line 225
    :goto_1
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v3, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitDown$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitDown$1;->label:I

    invoke-interface {v3, v5, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    .line 222
    return-object v2

    .line 225
    :cond_1
    move-object/from16 v16, v2

    move-object v2, v1

    move-object v1, v5

    move-object v5, v3

    move-object/from16 v3, v16

    .line 222
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "$this$awaitDown":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v2, "$result":Ljava/lang/Object;
    .local v5, "$this$awaitDown":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_2
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 226
    .local v1, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v6

    .local v6, "$this$fastAll$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 257
    .local v7, "$i$f$fastAll":I
    nop

    .line 258
    nop

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 259
    .local v8, "$i$f$fastForEach":I
    nop

    .line 260
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    :goto_3
    if-ge v9, v10, :cond_3

    .line 261
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 262
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 258
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastAll$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v14, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v15, 0x0

    .line 226
    .local v15, "$i$a$-fastAll-SelectionGesturesKt$awaitDown$2":I
    invoke-static {v14}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v14

    .line 258
    .end local v14    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v15    # "$i$a$-fastAll-SelectionGesturesKt$awaitDown$2":I
    if-nez v14, :cond_2

    const/4 v10, 0x0

    goto :goto_4

    .line 262
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastAll$2$iv":I
    :cond_2
    nop

    .line 260
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 264
    .end local v9    # "index$iv$iv":I
    :cond_3
    nop

    .line 265
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    move v10, v4

    .end local v7    # "$i$f$fastAll":I
    :goto_4
    if-eqz v10, :cond_4

    .line 227
    return-object v1

    .line 265
    :cond_4
    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final distanceIsTolerable-2x9bVx0(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JJ)Z
    .locals 2
    .param p0, "$this$distanceIsTolerable_u2d2x9bVx0"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "offset1"    # J
    .param p3, "offset2"    # J

    .line 231
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isPrecisePointer(Landroidx/compose/ui/input/pointer/PointerEvent;)Z
    .locals 13
    .param p0, "$this$isPrecisePointer"    # Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 237
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastAll$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 266
    .local v1, "$i$f$fastAll":I
    nop

    .line 267
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 268
    .local v3, "$i$f$fastForEach":I
    nop

    .line 269
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_1

    .line 270
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 271
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 267
    .local v8, "$i$a$-fastForEach-ListUtilsKt$fastAll$2$iv":I
    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v9, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v10, 0x0

    .line 237
    .local v10, "$i$a$-fastAll-SelectionGesturesKt$isPrecisePointer$1":I
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v11

    sget-object v12, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getMouse-T8wyACA()I

    move-result v12

    invoke-static {v11, v12}, Landroidx/compose/ui/input/pointer/PointerType;->equals-impl0(II)Z

    move-result v9

    .line 267
    .end local v9    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v10    # "$i$a$-fastAll-SelectionGesturesKt$isPrecisePointer$1":I
    if-nez v9, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    .line 271
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-fastForEach-ListUtilsKt$fastAll$2$iv":I
    :cond_0
    nop

    .line 269
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 273
    .end local v4    # "index$iv$iv":I
    :cond_1
    nop

    .line 274
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    const/4 v5, 0x1

    .line 237
    .end local v0    # "$this$fastAll$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastAll":I
    :goto_1
    return v5
.end method

.method private static final mouseSelection(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/ClicksCounter;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Landroidx/compose/foundation/text/selection/MouseSelectionObserver;",
            "Landroidx/compose/foundation/text/selection/ClicksCounter;",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;

    iget v1, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;

    invoke-direct {v0, p4}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 143
    iget v2, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    .local p0, "observer":Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    iget-object p1, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local p1, "$this$mouseSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v0

    goto/16 :goto_4

    .end local p0    # "observer":Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    .end local p1    # "$this$mouseSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_1
    iget-object p0, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    .restart local p0    # "observer":Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    iget-object p1, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .restart local p1    # "$this$mouseSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_1

    .end local p0    # "observer":Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    .end local p1    # "$this$mouseSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 148
    .local p0, "$this$mouseSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local p1, "observer":Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    .local p2, "clicksCounter":Landroidx/compose/foundation/text/selection/ClicksCounter;
    .local p3, "down":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {p2, p3}, Landroidx/compose/foundation/text/selection/ClicksCounter;->update(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .line 149
    invoke-virtual {p3}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 150
    .local v2, "downChange":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-static {p3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->isShiftPressed(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 151
    .end local p2    # "clicksCounter":Landroidx/compose/foundation/text/selection/ClicksCounter;
    .end local p3    # "down":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;->onExtend-k-4lQ0M(J)Z

    move-result p2

    .line 152
    .local p2, "started":Z
    if-eqz p2, :cond_a

    .line 153
    .end local p2    # "started":Z
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide p2

    new-instance v3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$shouldConsumeUp$1;

    invoke-direct {v3, p1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$shouldConsumeUp$1;-><init>(Landroidx/compose/foundation/text/selection/MouseSelectionObserver;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iput-object p0, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->L$0:Ljava/lang/Object;

    iput-object p1, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->label:I

    invoke-static {p0, p2, p3, v3, p4}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->drag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local v2    # "downChange":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-ne p2, v1, :cond_1

    .line 143
    return-object v1

    .line 153
    :cond_1
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .local p0, "observer":Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    .local p1, "$this$mouseSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 159
    .local p2, "shouldConsumeUp":Z
    if-eqz p2, :cond_4

    .line 160
    .end local p2    # "shouldConsumeUp":Z
    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    .local p1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 p2, 0x0

    .line 245
    .local p2, "$i$f$fastForEach":I
    nop

    .line 246
    const/4 p3, 0x0

    .local p3, "index$iv":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge p3, v1, :cond_3

    .line 247
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 248
    .local v2, "item$iv":Ljava/lang/Object;
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v2, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v3, 0x0

    .line 161
    .local v3, "$i$a$-fastForEach-SelectionGesturesKt$mouseSelection$2":I
    invoke-static {v2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUp(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 162
    .end local v2    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_2
    nop

    .line 248
    .end local v3    # "$i$a$-fastForEach-SelectionGesturesKt$mouseSelection$2":I
    nop

    .line 246
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 250
    .end local p3    # "index$iv":I
    :cond_3
    nop

    .line 165
    .end local p1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local p2    # "$i$f$fastForEach":I
    :cond_4
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;->onDragDone()V

    .end local p0    # "observer":Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    goto/16 :goto_6

    .line 168
    .local v2, "downChange":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .local p0, "$this$mouseSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local p1, "observer":Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    .local p2, "clicksCounter":Landroidx/compose/foundation/text/selection/ClicksCounter;
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/ClicksCounter;->getClicks()I

    move-result p2

    .end local p2    # "clicksCounter":Landroidx/compose/foundation/text/selection/ClicksCounter;
    packed-switch p2, :pswitch_data_1

    .line 171
    sget-object p2, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getParagraph()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object p2

    goto :goto_3

    .line 170
    :pswitch_3
    sget-object p2, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getWord()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object p2

    goto :goto_3

    .line 169
    :pswitch_4
    sget-object p2, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getNone()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object p2

    .line 168
    :goto_3
    nop

    .line 174
    .local p2, "selectionAdjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v3

    invoke-interface {p1, v3, v4, p2}, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;->onStart-3MmeM6k(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    move-result p3

    .line 175
    .local p3, "started":Z
    if-eqz p3, :cond_a

    .line 176
    .end local p3    # "started":Z
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v3

    new-instance p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$shouldConsumeUp$2;

    invoke-direct {p3, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$shouldConsumeUp$2;-><init>(Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    iput-object p0, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->L$0:Ljava/lang/Object;

    iput-object p1, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p4, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$mouseSelection$1;->label:I

    invoke-static {p0, v3, v4, p3, p4}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->drag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local v2    # "downChange":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local p2    # "selectionAdjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    if-ne p2, v1, :cond_6

    .line 143
    return-object v1

    .line 176
    :cond_6
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .local p0, "observer":Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    .local p1, "$this$mouseSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 182
    .local p2, "shouldConsumeUp":Z
    if-eqz p2, :cond_9

    .line 183
    .end local p2    # "shouldConsumeUp":Z
    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    .local p1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 p2, 0x0

    .line 251
    .local p2, "$i$f$fastForEach":I
    nop

    .line 252
    const/4 p3, 0x0

    .local p3, "index$iv":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_5
    if-ge p3, v1, :cond_8

    .line 253
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 254
    .local v2, "item$iv":Ljava/lang/Object;
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v2, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v3, 0x0

    .line 184
    .local v3, "$i$a$-fastForEach-SelectionGesturesKt$mouseSelection$3":I
    invoke-static {v2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUp(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 185
    .end local v2    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_7
    nop

    .line 254
    .end local v3    # "$i$a$-fastForEach-SelectionGesturesKt$mouseSelection$3":I
    nop

    .line 252
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 256
    .end local p3    # "index$iv":I
    :cond_8
    nop

    .line 188
    .end local p1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local p2    # "$i$f$fastForEach":I
    :cond_9
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;->onDragDone()V

    .line 191
    .end local p0    # "observer":Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    :cond_a
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static final selectionGestureInput(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0, "$this$selectionGestureInput"    # Landroidx/compose/ui/Modifier;
    .param p1, "mouseSelectionObserver"    # Landroidx/compose/foundation/text/selection/MouseSelectionObserver;
    .param p2, "textDragObserver"    # Landroidx/compose/foundation/text/TextDragObserver;

    .line 97
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGestureInput$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGestureInput$1;-><init>(Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, p2, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method private static final touchSelection(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Landroidx/compose/foundation/text/TextDragObserver;",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;

    iget v1, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;

    invoke-direct {v0, p3}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 113
    iget v2, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/text/TextDragObserver;

    .local p0, "observer":Landroidx/compose/foundation/text/TextDragObserver;
    iget-object p1, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local p1, "$this$touchSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    move-object p1, p0

    move-object p0, v0

    goto/16 :goto_2

    .line 137
    .end local p1    # "$this$touchSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 113
    .end local p0    # "observer":Landroidx/compose/foundation/text/TextDragObserver;
    :pswitch_1
    iget-object p0, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->L$2:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local p0, "firstDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    iget-object p1, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/text/TextDragObserver;

    .local p1, "observer":Landroidx/compose/foundation/text/TextDragObserver;
    iget-object p2, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local p2, "$this$touchSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    goto :goto_1

    .end local p0    # "firstDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local p1    # "observer":Landroidx/compose/foundation/text/TextDragObserver;
    .end local p2    # "$this$touchSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    .local p0, "$this$touchSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local p1    # "observer":Landroidx/compose/foundation/text/TextDragObserver;
    .local p2, "down":Landroidx/compose/ui/input/pointer/PointerEvent;
    nop

    .line 118
    :try_start_2
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object p2, v2

    .line 119
    .local p2, "firstDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v2

    iput-object p0, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->L$0:Ljava/lang/Object;

    iput-object p1, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->L$1:Ljava/lang/Object;

    iput-object p2, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->label:I

    invoke-static {p0, v2, v3, p3}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->awaitLongPressOrCancellation-rnUCldI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 113
    return-object v1

    .line 119
    :cond_1
    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    .line 113
    .local p0, "firstDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .local p2, "$this$touchSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_1
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 120
    .local v2, "drag":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v3

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v5

    invoke-static {p2, v3, v4, v5, v6}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->distanceIsTolerable-2x9bVx0(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JJ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 121
    .end local p0    # "firstDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Landroidx/compose/foundation/text/TextDragObserver;->onStart-k-4lQ0M(J)V

    .line 122
    nop

    .line 123
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v3

    new-instance p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$2;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$2;-><init>(Landroidx/compose/foundation/text/TextDragObserver;)V

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iput-object p2, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->L$0:Ljava/lang/Object;

    iput-object p1, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p3, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$touchSelection$1;->label:I

    invoke-static {p2, v3, v4, p0, p3}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->drag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local v2    # "drag":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-ne p0, v1, :cond_2

    .line 113
    return-object v1

    .line 123
    :cond_2
    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 129
    invoke-interface {p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p0

    .end local p2    # "$this$touchSelection":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local p0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 p2, 0x0

    .line 239
    .local p2, "$i$f$fastForEach":I
    nop

    .line 240
    const/4 v1, 0x0

    .local v1, "index$iv":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    .line 241
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 242
    .local v3, "item$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object v3, v4

    .local v3, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v4, 0x0

    .line 130
    .local v4, "$i$a$-fastForEach-SelectionGesturesKt$touchSelection$3":I
    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUp(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 131
    .end local v3    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_3
    nop

    .line 242
    .end local v4    # "$i$a$-fastForEach-SelectionGesturesKt$touchSelection$3":I
    nop

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 244
    .end local v1    # "index$iv":I
    :cond_4
    nop

    .line 132
    .end local p0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local p2    # "$i$f$fastForEach":I
    invoke-interface {p1}, Landroidx/compose/foundation/text/TextDragObserver;->onStop()V

    goto :goto_4

    .line 134
    :cond_5
    invoke-interface {p1}, Landroidx/compose/foundation/text/TextDragObserver;->onCancel()V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    :cond_6
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 137
    :catch_1
    move-exception p0

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    .line 138
    .local p0, "observer":Landroidx/compose/foundation/text/TextDragObserver;
    .local p1, "c":Ljava/util/concurrent/CancellationException;
    :goto_5
    invoke-interface {p0}, Landroidx/compose/foundation/text/TextDragObserver;->onCancel()V

    .line 139
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final updateSelectionTouchMode(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 3
    .param p0, "$this$updateSelectionTouchMode"    # Landroidx/compose/ui/Modifier;
    .param p1, "updateTouchMode"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 85
    const v0, 0x845fed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$updateSelectionTouchMode$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$updateSelectionTouchMode$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 92
    return-object v0
.end method
