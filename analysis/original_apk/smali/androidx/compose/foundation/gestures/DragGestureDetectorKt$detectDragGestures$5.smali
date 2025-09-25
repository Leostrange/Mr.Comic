.class final Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "DragGestureDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nDragGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5\n+ 2 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,875:1\n659#2,10:876\n669#2,4:895\n673#2,38:906\n116#3,2:886\n33#3,6:888\n118#3:894\n33#3,6:899\n118#3:905\n*S KotlinDebug\n*F\n+ 1 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5\n*L\n179#1:876,10\n179#1:895,4\n179#1:906,38\n179#1:886,2\n179#1:888,6\n179#1:894\n179#1:899,6\n179#1:905\n*E\n"
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
    c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$5"
    f = "DragGestureDetector.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xaf,
        0x374,
        0x39e,
        0xc0
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitEachGesture",
        "$this$awaitEachGesture",
        "down",
        "overSlop",
        "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv",
        "pointerDirectionConfig$iv",
        "pointer$iv",
        "touchSlop$iv",
        "totalPositionChange$iv",
        "$this$awaitEachGesture",
        "down",
        "overSlop",
        "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv",
        "pointerDirectionConfig$iv",
        "pointer$iv",
        "dragEvent$iv",
        "touchSlop$iv",
        "totalPositionChange$iv"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "F$0",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "F$0",
        "J$0"
    }
.end annotation


# instance fields
.field final synthetic $onDrag:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragCancel:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragEnd:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragStart:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field F$0:F

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragStart:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDrag:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragStart:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDrag:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 174
    move-object/from16 v1, p0

    iget v2, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    goto/16 :goto_b

    .end local v0    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    iget-wide v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->J$0:J

    .local v7, "totalPositionChange$iv":J
    iget v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$0:F

    .local v9, "touchSlop$iv":F
    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$6:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v10, "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    iget-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$5:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$LongRef;

    .local v11, "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$4:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    .local v12, "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    iget-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$3:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v13, "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    iget-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$2:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$LongRef;

    .local v14, "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$1:Ljava/lang/Object;

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v15, "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v4, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v10

    move/from16 v28, v6

    move-object v6, v4

    move-object v4, v15

    move-object/from16 v29, v13

    move/from16 v13, v28

    move-object/from16 v30, v11

    move v11, v9

    move-wide v9, v7

    move-object/from16 v8, v29

    move-object v7, v14

    move-object/from16 v14, v30

    goto/16 :goto_8

    .end local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    .end local v4    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    .end local v7    # "totalPositionChange$iv":J
    .end local v9    # "touchSlop$iv":F
    .end local v10    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v11    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v12    # "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v13    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v14    # "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v15    # "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    iget-wide v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->J$0:J

    .local v6, "totalPositionChange$iv":J
    iget v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$0:F

    .local v8, "touchSlop$iv":F
    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$LongRef;

    .local v9, "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$4:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    .local v10, "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    iget-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$3:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v11, "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    iget-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$LongRef;

    .local v12, "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$1:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v13, "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    iget-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v14, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v1, v3

    move v3, v5

    move-object v5, v4

    move-object/from16 v28, v11

    move v11, v8

    move-object/from16 v8, v28

    move-object/from16 v29, v14

    move-object v14, v9

    move-object/from16 v30, v12

    move-object v12, v10

    move-wide v9, v6

    move-object/from16 v7, v30

    move-object/from16 v6, v29

    goto/16 :goto_3

    .end local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    .end local v6    # "totalPositionChange$iv":J
    .end local v8    # "touchSlop$iv":F
    .end local v9    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v10    # "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v11    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v12    # "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v13    # "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v14    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_3
    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v5, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    goto :goto_0

    .end local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 175
    .restart local v5    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v2

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/4 v10, 0x2

    const/4 v11, 0x0

    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    iput v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->label:I

    move-object v6, v5

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_0

    .line 174
    return-object v0

    .line 175
    :cond_0
    move-object/from16 v28, v5

    move-object v5, v4

    move-object v4, v6

    move-object/from16 v6, v28

    .line 174
    .end local v4    # "$result":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_0
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 176
    .local v4, "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    nop

    .line 177
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local v7, "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v8, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v8

    iput-wide v8, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 179
    :goto_1
    move-object v8, v6

    .line 180
    .local v8, "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v9

    .line 181
    .local v9, "pointerId$iv":J
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v11

    .line 182
    .local v11, "pointerType$iv":I
    invoke-static {}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->getBidirectionalPointerDirectionConfig()Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    move-result-object v12

    .line 179
    .local v12, "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    const/4 v13, 0x0

    .line 876
    .local v13, "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    invoke-interface {v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v14

    invoke-static {v14, v9, v10}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 877
    .end local v8    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v9    # "pointerId$iv":J
    .end local v11    # "pointerType$iv":I
    .end local v12    # "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 879
    .restart local v8    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v9    # "pointerId$iv":J
    .restart local v11    # "pointerType$iv":I
    .restart local v12    # "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    :cond_1
    invoke-interface {v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v14

    invoke-static {v14, v11}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v11

    .line 880
    .local v11, "touchSlop$iv":F
    new-instance v14, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local v14, "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    iput-wide v9, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 881
    .end local v9    # "pointerId$iv":J
    sget-object v9, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v9

    .line 883
    .local v9, "totalPositionChange$iv":J
    :goto_2
    nop

    .line 884
    move-object v15, v2

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$2:Ljava/lang/Object;

    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$3:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$4:Ljava/lang/Object;

    iput-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$5:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$6:Ljava/lang/Object;

    iput v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$0:F

    iput-wide v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->J$0:J

    const/4 v1, 0x2

    iput v1, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->label:I

    const/4 v1, 0x1

    invoke-static {v8, v3, v15, v1, v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v0, :cond_2

    .line 174
    return-object v0

    .line 884
    :cond_2
    move v3, v13

    move-object v13, v4

    move-object v4, v15

    .line 174
    .end local v4    # "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .local v3, "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    .local v13, "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :goto_3
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 885
    .local v4, "event$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v15

    .local v15, "$this$fastFirstOrNull$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 886
    .local v16, "$i$f$fastFirstOrNull":I
    nop

    .line 887
    nop

    .local v15, "$this$fastForEach$iv$iv$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 888
    .local v17, "$i$f$fastForEach":I
    nop

    .line 889
    const/16 v18, 0x0

    .local v18, "index$iv$iv$iv":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v19, v3

    move/from16 v3, v18

    .end local v18    # "index$iv$iv$iv":I
    .local v3, "index$iv$iv$iv":I
    .local v19, "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    :goto_4
    if-ge v3, v1, :cond_4

    .line 890
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 891
    .local v18, "item$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v18

    .local v20, "it$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 887
    .local v21, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv$iv":I
    move-object/from16 v22, v20

    check-cast v22, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v22, "it$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v23, 0x0

    .line 885
    .local v23, "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitPointerSlopOrCancellation$dragEvent$1$iv":I
    move-object/from16 v24, v0

    move/from16 v25, v1

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v0

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .end local v7    # "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v8    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v26, "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .local v27, "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    iget-wide v7, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v0, v1, v7, v8}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v0

    .line 887
    .end local v22    # "it$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v23    # "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitPointerSlopOrCancellation$dragEvent$1$iv":I
    if-eqz v0, :cond_3

    move-object/from16 v3, v20

    goto :goto_5

    .line 891
    .end local v20    # "it$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv$iv":I
    :cond_3
    nop

    .line 889
    .end local v18    # "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    goto :goto_4

    .end local v26    # "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v27    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v7    # "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v8    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_4
    move-object/from16 v24, v0

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 893
    .end local v3    # "index$iv$iv$iv":I
    .end local v7    # "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v8    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v26    # "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v27    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    nop

    .line 894
    .end local v15    # "$this$fastForEach$iv$iv$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastForEach":I
    const/4 v3, 0x0

    .line 885
    .end local v16    # "$i$f$fastFirstOrNull":I
    :goto_5
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v3, :cond_5

    move-object v4, v13

    move-object/from16 v0, v24

    move-object/from16 v7, v26

    const/4 v3, 0x0

    .end local v4    # "event$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local v9    # "totalPositionChange$iv":J
    .end local v11    # "touchSlop$iv":F
    .end local v12    # "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v27    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    goto/16 :goto_9

    .restart local v4    # "event$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .restart local v9    # "totalPositionChange$iv":J
    .restart local v11    # "touchSlop$iv":F
    .restart local v12    # "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .restart local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v27    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_5
    move-object v0, v3

    .line 895
    .local v0, "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 896
    .end local v0    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v4    # "event$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local v9    # "totalPositionChange$iv":J
    .end local v11    # "touchSlop$iv":F
    .end local v12    # "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v27    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    move-object v4, v13

    move-object/from16 v0, v24

    move-object/from16 v7, v26

    const/4 v3, 0x0

    goto/16 :goto_9

    .line 897
    .restart local v0    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .restart local v4    # "event$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .restart local v9    # "totalPositionChange$iv":J
    .restart local v11    # "touchSlop$iv":F
    .restart local v12    # "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .restart local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v27    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_6
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 898
    .end local v0    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .end local v4    # "event$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .local v0, "$this$fastFirstOrNull$iv$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 886
    .local v1, "$i$f$fastFirstOrNull":I
    nop

    .line 887
    nop

    .local v0, "$this$fastForEach$iv$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 899
    .local v3, "$i$f$fastForEach":I
    nop

    .line 900
    const/4 v4, 0x0

    .local v4, "index$iv$iv$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    :goto_6
    if-ge v4, v7, :cond_8

    .line 901
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 902
    .local v8, "item$iv$iv$iv":Ljava/lang/Object;
    move-object v15, v8

    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 887
    .local v16, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv$iv":I
    move-object/from16 v17, v15

    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v17, "it$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v18, 0x0

    .line 898
    .local v18, "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitPointerSlopOrCancellation$otherDown$1$iv":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v17

    .line 887
    .end local v17    # "it$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v18    # "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitPointerSlopOrCancellation$otherDown$1$iv":I
    if-eqz v17, :cond_7

    move-object v3, v15

    goto :goto_7

    .line 902
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv$iv":I
    :cond_7
    nop

    .line 900
    .end local v8    # "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 904
    .end local v4    # "index$iv$iv$iv":I
    :cond_8
    nop

    .line 905
    .end local v0    # "$this$fastForEach$iv$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    const/4 v3, 0x0

    .line 898
    .end local v1    # "$i$f$fastFirstOrNull":I
    :goto_7
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 906
    .local v0, "otherDown$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-nez v0, :cond_9

    .line 908
    move-object v4, v13

    move-object/from16 v0, v24

    move-object/from16 v7, v26

    const/4 v3, 0x0

    goto/16 :goto_9

    .line 910
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v3

    iput-wide v3, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v1, p0

    move-object v4, v13

    move/from16 v13, v19

    move-object/from16 v0, v24

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    const/4 v3, 0x1

    .end local v0    # "otherDown$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    goto/16 :goto_2

    .line 913
    .local v0, "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v3

    .line 914
    .local v3, "currentPosition$iv":J
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v7

    .line 916
    .local v7, "previousPosition$iv":J
    invoke-static {v3, v4, v7, v8}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v3

    .line 918
    .end local v7    # "previousPosition$iv":J
    .local v3, "positionChange$iv":J
    invoke-static {v9, v10, v3, v4}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v7

    .line 920
    .end local v3    # "positionChange$iv":J
    .end local v9    # "totalPositionChange$iv":J
    .local v7, "totalPositionChange$iv":J
    nop

    .line 921
    nop

    .line 920
    invoke-interface {v12, v7, v8}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->calculateDeltaChange-k-4lQ0M(J)F

    move-result v1

    .line 924
    .local v1, "inDirection$iv":F
    cmpg-float v3, v1, v11

    if-gez v3, :cond_d

    .line 926
    .end local v1    # "inDirection$iv":F
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    move-object v3, v2

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$1:Ljava/lang/Object;

    move-object/from16 v4, v26

    .end local v26    # "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .local v4, "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$2:Ljava/lang/Object;

    move-object/from16 v9, v27

    .end local v27    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v9, "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$3:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$4:Ljava/lang/Object;

    iput-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$5:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$6:Ljava/lang/Object;

    iput v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$0:F

    iput-wide v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->J$0:J

    const/4 v10, 0x3

    iput v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->label:I

    invoke-interface {v9, v1, v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v3, v24

    if-ne v1, v3, :cond_b

    .line 174
    return-object v3

    .line 926
    :cond_b
    move-object v1, v0

    move-object v0, v3

    move-wide/from16 v28, v7

    move-object v7, v4

    move-object v8, v9

    move-object v4, v13

    move/from16 v13, v19

    move-wide/from16 v9, v28

    .line 927
    .end local v0    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v19    # "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    .local v1, "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .local v4, "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .local v7, "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .local v8, "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v9, "totalPositionChange$iv":J
    .local v13, "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    :goto_8
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 928
    .end local v8    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v9    # "totalPositionChange$iv":J
    .end local v11    # "touchSlop$iv":F
    .end local v12    # "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    const/4 v3, 0x0

    goto :goto_9

    .line 927
    .restart local v8    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v9    # "totalPositionChange$iv":J
    .restart local v11    # "touchSlop$iv":F
    .restart local v12    # "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .restart local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_c
    move-object/from16 v1, p0

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 924
    .end local v4    # "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v8    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v9    # "totalPositionChange$iv":J
    .restart local v0    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .local v1, "inDirection$iv":F
    .local v7, "totalPositionChange$iv":J
    .local v13, "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .restart local v19    # "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    .restart local v26    # "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v27    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_d
    move-object/from16 v3, v24

    move-object/from16 v4, v26

    move-object/from16 v9, v27

    .line 931
    .end local v1    # "inDirection$iv":F
    .end local v26    # "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v27    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v4, "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .local v9, "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    nop

    .line 932
    nop

    .line 933
    .end local v7    # "totalPositionChange$iv":J
    nop

    .line 931
    invoke-interface {v12, v7, v8, v11}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->calculatePostSlopOffset-8S9VItk(JF)J

    move-result-wide v7

    .line 936
    .local v7, "postSlopOffset$iv":J
    nop

    .line 937
    nop

    .line 938
    nop

    .line 936
    move-object v1, v0

    .local v1, "change":Landroidx/compose/ui/input/pointer/PointerInputChange;
    move-wide/from16 v16, v7

    .local v16, "over":J
    const/4 v10, 0x0

    .line 184
    .local v10, "$i$a$-awaitPointerSlopOrCancellation-pn7EDYM-DragGestureDetectorKt$detectDragGestures$5$1":I
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 185
    move-object/from16 v18, v1

    move-object v15, v2

    move-wide/from16 v1, v16

    .end local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    .end local v16    # "over":J
    .local v1, "over":J
    .local v15, "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    .local v18, "change":Landroidx/compose/ui/input/pointer/PointerInputChange;
    iput-wide v1, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 186
    nop

    .line 936
    .end local v1    # "over":J
    .end local v10    # "$i$a$-awaitPointerSlopOrCancellation-pn7EDYM-DragGestureDetectorKt$detectDragGestures$5$1":I
    .end local v18    # "change":Landroidx/compose/ui/input/pointer/PointerInputChange;
    nop

    .line 940
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 941
    .end local v9    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v11    # "touchSlop$iv":F
    .end local v12    # "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    move-object v7, v4

    move-object v4, v13

    move-object v2, v15

    move-object/from16 v28, v3

    move-object v3, v0

    move-object/from16 v0, v28

    .line 179
    .end local v0    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v13    # "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v15    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    .end local v19    # "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    .restart local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    .local v4, "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .local v7, "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    :goto_9
    move-object v1, v3

    .line 187
    .local v1, "drag":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_a

    :cond_e
    move-object/from16 v1, p0

    const/4 v3, 0x1

    goto/16 :goto_1

    .line 188
    .end local v4    # "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_f
    :goto_a
    if-eqz v1, :cond_12

    .line 189
    iget-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragStart:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDrag:Lkotlin/jvm/functions/Function2;

    iget-wide v8, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v7    # "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    nop

    .line 192
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v3

    new-instance v7, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$2;

    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDrag:Lkotlin/jvm/functions/Function2;

    invoke-direct {v7, v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v10, 0x0

    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$3:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$4:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$5:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$6:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->label:I

    invoke-static {v6, v3, v4, v7, v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->drag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "drag":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v6    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    if-ne v1, v0, :cond_10

    .line 174
    return-object v0

    .line 192
    :cond_10
    move-object v0, v2

    move-object v2, v1

    .end local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    .local v0, "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    :goto_b
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_11

    .line 197
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_c

    .line 199
    :cond_11
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 202
    :goto_c
    move-object v2, v0

    .end local v0    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    .restart local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    :cond_12
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 943
    .end local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    .local v0, "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .local v4, "overSlop":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v6    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v7, "postSlopOffset$iv":J
    .restart local v9    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v11    # "touchSlop$iv":F
    .restart local v12    # "pointerDirectionConfig$iv":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .restart local v13    # "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .restart local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v15    # "this":Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
    .restart local v19    # "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    :cond_13
    const/4 v10, 0x0

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    move-object v7, v4

    move-object v8, v9

    move-object v4, v13

    move-object v2, v15

    move/from16 v13, v19

    move-wide v9, v0

    move-object v0, v3

    const/4 v3, 0x1

    move-object/from16 v1, p0

    .end local v7    # "postSlopOffset$iv":J
    .local v0, "totalPositionChange$iv":J
    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
