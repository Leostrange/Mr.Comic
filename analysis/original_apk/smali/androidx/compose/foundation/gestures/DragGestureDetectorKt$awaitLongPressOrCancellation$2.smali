.class final Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "DragGestureDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->awaitLongPressOrCancellation-rnUCldI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,875:1\n86#2,2:876\n33#2,6:878\n88#2:884\n101#2,2:885\n33#2,6:887\n103#2:893\n101#2,2:894\n33#2,6:896\n103#2:902\n116#2,2:903\n33#2,6:905\n118#2:911\n116#2,2:912\n33#2,6:914\n118#2:920\n*S KotlinDebug\n*F\n+ 1 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2\n*L\n813#1:876,2\n813#1:878,6\n813#1:884\n819#1:885,2\n819#1:887,6\n819#1:893\n830#1:894,2\n830#1:896,6\n830#1:902\n834#1:903,2\n834#1:905,6\n834#1:911\n844#1:912,2\n844#1:914,6\n844#1:920\n*E\n"
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
    c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2"
    f = "DragGestureDetector.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x32c,
        0x33d
    }
    m = "invokeSuspend"
    n = {
        "$this$withTimeout",
        "finished",
        "$this$withTimeout",
        "event",
        "finished"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $longPress:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->$currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->$longPress:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->$currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->$longPress:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 809
    move-object/from16 v1, p0

    iget v2, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    move-object/from16 v6, p1

    .local v6, "$result":Ljava/lang/Object;
    iget v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->I$0:I

    .local v7, "finished":Z
    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->L$1:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/input/pointer/PointerEvent;

    .local v8, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->L$0:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v9, "$this$withTimeout":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v3, v7

    move-object v7, v6

    goto/16 :goto_9

    .end local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "finished":Z
    .end local v8    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local v9    # "$this$withTimeout":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    iget v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->I$0:I

    .restart local v7    # "finished":Z
    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v8, "$this$withTimeout":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v8

    move v8, v7

    move-object v7, v6

    goto :goto_1

    .end local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "finished":Z
    .end local v8    # "$this$withTimeout":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 810
    .local v7, "$this$withTimeout":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    const/4 v8, 0x0

    move/from16 v22, v8

    move-object v8, v7

    move/from16 v7, v22

    .line 811
    .local v7, "finished":Z
    .restart local v8    # "$this$withTimeout":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_0
    if-nez v7, :cond_13

    .line 812
    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->L$1:Ljava/lang/Object;

    iput v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->I$0:I

    iput v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->label:I

    invoke-interface {v8, v9, v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_0

    .line 809
    return-object v0

    .line 812
    :cond_0
    move/from16 v22, v7

    move-object v7, v6

    move-object v6, v9

    move-object v9, v8

    move/from16 v8, v22

    .line 809
    .end local v6    # "$result":Ljava/lang/Object;
    .local v7, "$result":Ljava/lang/Object;
    .local v8, "finished":Z
    .restart local v9    # "$this$withTimeout":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_1
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 813
    .local v6, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v10

    .local v10, "$this$fastAll$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 876
    .local v11, "$i$f$fastAll":I
    nop

    .line 877
    nop

    .local v10, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 878
    .local v12, "$i$f$fastForEach":I
    nop

    .line 879
    const/4 v13, 0x0

    .local v13, "index$iv$iv":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    :goto_2
    if-ge v13, v14, :cond_2

    .line 880
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 881
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 877
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastAll$2$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v18, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v19, 0x0

    .line 813
    .local v19, "$i$a$-fastAll-DragGestureDetectorKt$awaitLongPressOrCancellation$2$1":I
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v18

    .line 877
    .end local v18    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v19    # "$i$a$-fastAll-DragGestureDetectorKt$awaitLongPressOrCancellation$2$1":I
    if-nez v18, :cond_1

    const/4 v10, 0x0

    goto :goto_3

    .line 881
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastAll$2$iv":I
    :cond_1
    nop

    .line 879
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 883
    .end local v13    # "index$iv$iv":I
    :cond_2
    nop

    .line 884
    .end local v10    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    move v10, v5

    .line 813
    .end local v11    # "$i$f$fastAll":I
    :goto_3
    if-eqz v10, :cond_3

    .line 815
    .end local v8    # "finished":Z
    const/4 v8, 0x1

    .line 818
    .restart local v8    # "finished":Z
    :cond_3
    nop

    .line 819
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v10

    .local v10, "$this$fastAny$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 885
    .local v11, "$i$f$fastAny":I
    nop

    .line 886
    nop

    .local v10, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 887
    .restart local v12    # "$i$f$fastForEach":I
    nop

    .line 888
    const/4 v13, 0x0

    .restart local v13    # "index$iv$iv":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    :goto_4
    if-ge v13, v14, :cond_7

    .line 889
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 890
    .restart local v15    # "item$iv$iv":Ljava/lang/Object;
    nop

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 886
    .local v16, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v15, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v17, 0x0

    .line 820
    .local v17, "$i$a$-fastAny-DragGestureDetectorKt$awaitLongPressOrCancellation$2$2":I
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-interface {v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getSize-YbymL2g()J

    move-result-wide v3

    move-object/from16 p1, v6

    .end local v6    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .local p1, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-interface {v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getExtendedTouchPadding-NH-jbRc()J

    move-result-wide v5

    invoke-static {v15, v3, v4, v5, v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->isOutOfBounds-jwHxaWs(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    .end local v15    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    goto :goto_6

    .end local p1    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .restart local v6    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .restart local v15    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_5
    move-object/from16 p1, v6

    .end local v6    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local v15    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .restart local p1    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    :goto_5
    const/4 v3, 0x1

    .line 886
    .end local v17    # "$i$a$-fastAny-DragGestureDetectorKt$awaitLongPressOrCancellation$2$2":I
    :goto_6
    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_7

    .line 890
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    :cond_6
    nop

    .line 888
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, p1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_4

    .end local p1    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .restart local v6    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    :cond_7
    move-object/from16 p1, v6

    .line 892
    .end local v6    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local v13    # "index$iv$iv":I
    .restart local p1    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    nop

    .line 893
    .end local v10    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    const/4 v3, 0x0

    .line 819
    .end local v11    # "$i$f$fastAny":I
    :goto_7
    if-eqz v3, :cond_8

    .line 823
    .end local v8    # "finished":Z
    const/4 v3, 0x1

    .local v3, "finished":Z
    goto :goto_8

    .line 819
    .end local v3    # "finished":Z
    .restart local v8    # "finished":Z
    :cond_8
    move v3, v8

    .line 829
    .end local v8    # "finished":Z
    .restart local v3    # "finished":Z
    :goto_8
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->L$0:Ljava/lang/Object;

    move-object/from16 v6, p1

    .end local p1    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .restart local v6    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->L$1:Ljava/lang/Object;

    iput v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->I$0:I

    const/4 v8, 0x2

    iput v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->label:I

    invoke-interface {v9, v4, v5}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_9

    .line 809
    return-object v0

    .line 829
    :cond_9
    move-object v8, v6

    move-object v6, v4

    .line 809
    .end local v6    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .local v8, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    :goto_9
    move-object v4, v6

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 830
    .local v4, "consumeCheck":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v4

    .local v4, "$this$fastAny$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 894
    .local v5, "$i$f$fastAny":I
    nop

    .line 895
    nop

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 896
    .local v6, "$i$f$fastForEach":I
    nop

    .line 897
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    :goto_a
    if-ge v10, v11, :cond_b

    .line 898
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 899
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 895
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .restart local v15    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v16, 0x0

    .line 830
    .local v16, "$i$a$-fastAny-DragGestureDetectorKt$awaitLongPressOrCancellation$2$3":I
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v15

    .line 895
    .end local v15    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v16    # "$i$a$-fastAny-DragGestureDetectorKt$awaitLongPressOrCancellation$2$3":I
    if-eqz v15, :cond_a

    const/4 v4, 0x1

    goto :goto_b

    .line 899
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    :cond_a
    nop

    .line 897
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 901
    .end local v10    # "index$iv$iv":I
    :cond_b
    nop

    .line 902
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v4, 0x0

    .line 830
    .end local v5    # "$i$f$fastAny":I
    :goto_b
    if-eqz v4, :cond_c

    .line 831
    .end local v3    # "finished":Z
    const/4 v3, 0x1

    .line 833
    .restart local v3    # "finished":Z
    :cond_c
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->$currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v4

    invoke-static {v8, v4, v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 834
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v4

    .end local v8    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .local v4, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 903
    .local v5, "$i$f$fastFirstOrNull":I
    nop

    .line 904
    nop

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 905
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 906
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    :goto_c
    if-ge v8, v10, :cond_e

    .line 907
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 908
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 904
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v14, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v15, 0x0

    .line 834
    .local v15, "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitLongPressOrCancellation$2$newPressed$1":I
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v14

    .line 904
    .end local v14    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v15    # "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitLongPressOrCancellation$2$newPressed$1":I
    if-eqz v14, :cond_d

    goto :goto_d

    .line 908
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_d
    nop

    .line 906
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 910
    .end local v8    # "index$iv$iv":I
    :cond_e
    nop

    .line 911
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 834
    .end local v5    # "$i$f$fastFirstOrNull":I
    :goto_d
    move-object v4, v12

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 835
    .local v4, "newPressed":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-eqz v4, :cond_f

    .line 836
    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->$currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 837
    .end local v4    # "newPressed":Landroidx/compose/ui/input/pointer/PointerInputChange;
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->$longPress:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->$currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 p1, v0

    move-object/from16 v20, v2

    move/from16 v21, v3

    goto :goto_10

    .line 840
    .end local v3    # "finished":Z
    :cond_f
    const/4 v3, 0x1

    move-object v6, v7

    move-object v8, v9

    const/4 v5, 0x1

    move v7, v3

    const/4 v3, 0x0

    .restart local v3    # "finished":Z
    goto/16 :goto_0

    .line 844
    .local v8, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    :cond_10
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->$longPress:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v5

    .local v5, "$this$fastFirstOrNull$iv":Ljava/util/List;
    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->$currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;

    .end local v8    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    const/4 v8, 0x0

    .line 912
    .local v8, "$i$f$fastFirstOrNull":I
    nop

    .line 913
    nop

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 914
    .local v10, "$i$f$fastForEach":I
    nop

    .line 915
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    :goto_e
    if-ge v11, v12, :cond_12

    .line 916
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 917
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 913
    .local v15, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v16, v14

    check-cast v16, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v16, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v17, 0x0

    .line 844
    .local v17, "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitLongPressOrCancellation$2$4":I
    move-object/from16 p1, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v0

    move-object/from16 v20, v2

    .end local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    .local v20, "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move/from16 v21, v3

    .end local v3    # "finished":Z
    .local v21, "finished":Z
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v0

    .line 913
    .end local v16    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v17    # "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitLongPressOrCancellation$2$4":I
    if-eqz v0, :cond_11

    goto :goto_f

    .line 917
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_11
    nop

    .line 915
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    goto :goto_e

    .end local v20    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    .end local v21    # "finished":Z
    .restart local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    .restart local v3    # "finished":Z
    :cond_12
    move-object/from16 p1, v0

    move-object/from16 v20, v2

    move/from16 v21, v3

    .line 919
    .end local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    .end local v3    # "finished":Z
    .end local v11    # "index$iv$iv":I
    .restart local v20    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    .restart local v21    # "finished":Z
    nop

    .line 920
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    const/4 v14, 0x0

    .line 844
    .end local v8    # "$i$f$fastFirstOrNull":I
    :goto_f
    iput-object v14, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 811
    :goto_10
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object v6, v7

    move-object v8, v9

    move-object/from16 v2, v20

    move/from16 v7, v21

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 847
    .end local v9    # "$this$withTimeout":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v20    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    .end local v21    # "finished":Z
    .restart local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;
    .local v6, "$result":Ljava/lang/Object;
    .local v7, "finished":Z
    .local v8, "$this$withTimeout":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
