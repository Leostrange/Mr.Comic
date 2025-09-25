.class final Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "TransformGestureDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->detectTransformGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nTransformGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformGestureDetector.kt\nandroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,255:1\n101#2,2:256\n33#2,6:258\n103#2:264\n33#2,6:265\n101#2,2:271\n33#2,6:273\n103#2:279\n*S KotlinDebug\n*F\n+ 1 TransformGestureDetector.kt\nandroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2\n*L\n62#1:256,2\n62#1:258,6\n62#1:264\n96#1:265,6\n103#1:271,2\n103#1:273,6\n103#1:279\n*E\n"
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
    c = "androidx.compose.foundation.gestures.TransformGestureDetectorKt$detectTransformGestures$2"
    f = "TransformGestureDetector.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x3b,
        0x3d
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitEachGesture",
        "rotation",
        "zoom",
        "pan",
        "pastTouchSlop",
        "touchSlop",
        "lockedToPanZoom",
        "$this$awaitEachGesture",
        "rotation",
        "zoom",
        "pan",
        "pastTouchSlop",
        "touchSlop",
        "lockedToPanZoom"
    }
    s = {
        "L$0",
        "F$0",
        "F$1",
        "J$0",
        "I$0",
        "F$2",
        "I$1",
        "L$0",
        "F$0",
        "F$1",
        "J$0",
        "I$0",
        "F$2",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $onGesture:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $panZoomLock:Z

.field F$0:F

.field F$1:F

.field F$2:F

.field I$0:I

.field I$1:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->$panZoomLock:Z

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->$onGesture:Lkotlin/jvm/functions/Function4;

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

    new-instance v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;

    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->$panZoomLock:Z

    iget-object v2, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->$onGesture:Lkotlin/jvm/functions/Function4;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;-><init>(ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 51
    move-object/from16 v1, p0

    iget v2, v1, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    iget v5, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$1:I

    .local v5, "lockedToPanZoom":Z
    iget v6, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$2:F

    .local v6, "touchSlop":F
    iget v7, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$0:I

    .local v7, "pastTouchSlop":Z
    iget-wide v8, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->J$0:J

    .local v8, "pan":J
    iget v10, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$1:F

    .local v10, "zoom":F
    iget v11, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$0:F

    .local v11, "rotation":F
    iget-object v12, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->L$0:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v12, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v12

    move v12, v11

    move v11, v10

    move-wide v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v4

    goto/16 :goto_2

    .end local v2    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "lockedToPanZoom":Z
    .end local v6    # "touchSlop":F
    .end local v7    # "pastTouchSlop":Z
    .end local v8    # "pan":J
    .end local v10    # "zoom":F
    .end local v11    # "rotation":F
    .end local v12    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget v5, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$1:I

    .restart local v5    # "lockedToPanZoom":Z
    iget v6, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$2:F

    .restart local v6    # "touchSlop":F
    iget v7, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$0:I

    .restart local v7    # "pastTouchSlop":Z
    iget-wide v8, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->J$0:J

    .restart local v8    # "pan":J
    iget v10, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$1:F

    .restart local v10    # "zoom":F
    iget v11, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$0:F

    .restart local v11    # "rotation":F
    iget-object v12, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->L$0:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .restart local v12    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v2    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "lockedToPanZoom":Z
    .end local v6    # "touchSlop":F
    .end local v7    # "pastTouchSlop":Z
    .end local v8    # "pan":J
    .end local v10    # "zoom":F
    .end local v11    # "rotation":F
    .end local v12    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->L$0:Ljava/lang/Object;

    move-object v12, v5

    check-cast v12, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 52
    .restart local v12    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    const/4 v5, 0x0

    .line 53
    .local v5, "rotation":F
    const/high16 v13, 0x3f800000    # 1.0f

    .line 54
    .local v13, "zoom":F
    sget-object v6, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v14

    .line 55
    .local v14, "pan":J
    const/4 v11, 0x0

    .line 56
    .local v11, "pastTouchSlop":Z
    invoke-interface {v12}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v10

    .line 57
    .local v10, "touchSlop":F
    const/4 v9, 0x0

    .line 59
    .local v9, "lockedToPanZoom":Z
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v16, v2

    check-cast v16, Lkotlin/coroutines/Continuation;

    const/16 v17, 0x2

    const/16 v18, 0x0

    iput-object v12, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->L$0:Ljava/lang/Object;

    iput v5, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$0:F

    iput v13, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$1:F

    iput-wide v14, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->J$0:J

    iput v11, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$0:I

    iput v10, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$2:F

    iput v9, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$1:I

    iput v3, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->label:I

    move-object v6, v12

    move/from16 v19, v9

    .end local v9    # "lockedToPanZoom":Z
    .local v19, "lockedToPanZoom":Z
    move-object/from16 v9, v16

    move/from16 v16, v10

    .end local v10    # "touchSlop":F
    .local v16, "touchSlop":F
    move/from16 v10, v17

    move/from16 v17, v11

    .end local v11    # "pastTouchSlop":Z
    .local v17, "pastTouchSlop":Z
    move-object/from16 v11, v18

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_0

    .line 51
    return-object v0

    .line 59
    :cond_0
    move v11, v5

    move v10, v13

    move-wide v8, v14

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v5, v19

    .line 61
    .end local v13    # "zoom":F
    .end local v14    # "pan":J
    .end local v16    # "touchSlop":F
    .end local v17    # "pastTouchSlop":Z
    .end local v19    # "lockedToPanZoom":Z
    .local v5, "lockedToPanZoom":Z
    .restart local v6    # "touchSlop":F
    .restart local v7    # "pastTouchSlop":Z
    .restart local v8    # "pan":J
    .local v10, "zoom":F
    .local v11, "rotation":F
    :goto_0
    nop

    :goto_1
    move-object v13, v2

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v12, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->L$0:Ljava/lang/Object;

    iput v11, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$0:F

    iput v10, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$1:F

    iput-wide v8, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->J$0:J

    iput v7, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$0:I

    iput v6, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$2:F

    iput v5, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$1:I

    const/4 v14, 0x2

    iput v14, v2, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->label:I

    const/4 v14, 0x0

    invoke-static {v12, v14, v13, v3, v14}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_1

    .line 51
    return-object v0

    .line 61
    :cond_1
    move/from16 v25, v5

    move-object v5, v4

    move-object v4, v13

    move-object v13, v12

    move v12, v11

    move v11, v10

    move-wide v9, v8

    move v8, v7

    move v7, v6

    move/from16 v6, v25

    .line 51
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v10    # "zoom":F
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "lockedToPanZoom":Z
    .local v7, "touchSlop":F
    .local v8, "pastTouchSlop":Z
    .local v9, "pan":J
    .local v11, "zoom":F
    .local v12, "rotation":F
    .local v13, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_2
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 62
    .local v4, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v14

    .local v14, "$this$fastAny$iv":Ljava/util/List;
    const/4 v15, 0x0

    .line 256
    .local v15, "$i$f$fastAny":I
    nop

    .line 257
    nop

    .local v14, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 258
    .local v16, "$i$f$fastForEach":I
    nop

    .line 259
    const/16 v17, 0x0

    .local v17, "index$iv$iv":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 p1, v0

    move/from16 v0, v17

    .end local v17    # "index$iv$iv":I
    .local v0, "index$iv$iv":I
    :goto_3
    if-ge v0, v3, :cond_3

    .line 260
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 261
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v17

    .local v19, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 257
    .local v20, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    move-object/from16 v21, v19

    check-cast v21, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v21, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v22, 0x0

    .line 62
    .local v22, "$i$a$-fastAny-TransformGestureDetectorKt$detectTransformGestures$2$canceled$1":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v21

    .line 257
    .end local v21    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v22    # "$i$a$-fastAny-TransformGestureDetectorKt$detectTransformGestures$2$canceled$1":I
    if-eqz v21, :cond_2

    const/4 v0, 0x1

    goto :goto_4

    .line 261
    .end local v19    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    :cond_2
    nop

    .line 259
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    goto :goto_3

    .line 263
    .end local v0    # "index$iv$iv":I
    :cond_3
    nop

    .line 264
    .end local v14    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    .line 62
    .end local v15    # "$i$f$fastAny":I
    :goto_4
    nop

    .line 63
    .local v0, "canceled":Z
    if-nez v0, :cond_11

    .line 64
    invoke-static {v4}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateZoom(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    move-result v3

    .line 65
    .local v3, "zoomChange":F
    invoke-static {v4}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateRotation(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    move-result v14

    .line 66
    .local v14, "rotationChange":F
    move-object v15, v2

    .end local v2    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .local v15, "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    invoke-static {v4}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculatePan(Landroidx/compose/ui/input/pointer/PointerEvent;)J

    move-result-wide v1

    .line 68
    .local v1, "panChange":J
    if-nez v8, :cond_7

    .line 69
    mul-float/2addr v11, v3

    .line 70
    add-float/2addr v12, v14

    .line 71
    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v9

    .line 73
    move-object/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "$result":Ljava/lang/Object;
    .local v17, "$result":Ljava/lang/Object;
    invoke-static {v4, v5}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    move-result v19

    .line 74
    .local v19, "centroidSize":F
    move/from16 v18, v6

    const/4 v5, 0x1

    .end local v6    # "lockedToPanZoom":Z
    .local v18, "lockedToPanZoom":Z
    int-to-float v6, v5

    sub-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v6, v6, v19

    .line 75
    .local v6, "zoomMotion":F
    const v20, 0x40490fdb    # (float)Math.PI

    mul-float v20, v20, v12

    mul-float v20, v20, v19

    const/high16 v21, 0x43340000    # 180.0f

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 76
    .local v19, "rotationMotion":F
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v20

    .line 78
    .local v20, "panMotion":F
    cmpl-float v21, v6, v7

    if-gtz v21, :cond_5

    .line 79
    .end local v6    # "zoomMotion":F
    cmpl-float v6, v19, v7

    if-gtz v6, :cond_5

    .line 80
    cmpl-float v6, v20, v7

    if-lez v6, :cond_4

    goto :goto_5

    :cond_4
    move-object v6, v15

    goto :goto_7

    .line 82
    .end local v8    # "pastTouchSlop":Z
    .end local v18    # "lockedToPanZoom":Z
    .end local v20    # "panMotion":F
    :cond_5
    :goto_5
    const/4 v8, 0x1

    .line 83
    .restart local v8    # "pastTouchSlop":Z
    move-object v6, v15

    .end local v15    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .local v6, "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    iget-boolean v15, v6, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->$panZoomLock:Z

    if-eqz v15, :cond_6

    cmpg-float v15, v19, v7

    if-gez v15, :cond_6

    move v15, v5

    goto :goto_6

    .end local v19    # "rotationMotion":F
    :cond_6
    const/4 v15, 0x0

    :goto_6
    move/from16 v18, v15

    .local v15, "lockedToPanZoom":Z
    goto :goto_7

    .line 68
    .end local v17    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v6, "lockedToPanZoom":Z
    .local v15, "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    :cond_7
    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object v6, v15

    const/4 v5, 0x1

    .line 87
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v15    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .local v6, "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .restart local v17    # "$result":Ljava/lang/Object;
    .restart local v18    # "lockedToPanZoom":Z
    :goto_7
    if-eqz v8, :cond_10

    .line 88
    const/4 v15, 0x0

    invoke-static {v4, v15}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    move-result-wide v19

    .line 89
    .local v19, "centroid":J
    const/16 v16, 0x0

    if-eqz v18, :cond_8

    move/from16 v14, v16

    .line 90
    .local v14, "effectiveRotation":F
    :cond_8
    cmpg-float v16, v14, v16

    if-nez v16, :cond_9

    move/from16 v16, v5

    goto :goto_8

    :cond_9
    move/from16 v16, v15

    :goto_8
    if-eqz v16, :cond_c

    .line 91
    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v16, v3, v16

    if-nez v16, :cond_a

    move/from16 v16, v5

    goto :goto_9

    :cond_a
    move/from16 v16, v15

    :goto_9
    if-eqz v16, :cond_b

    .line 92
    sget-object v16, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    move-object/from16 v22, v6

    .end local v6    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .local v22, "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_a

    .line 91
    .end local v22    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .restart local v6    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    :cond_b
    move-object/from16 v22, v6

    .end local v6    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .restart local v22    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    goto :goto_a

    .line 90
    .end local v22    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .restart local v6    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    :cond_c
    move-object/from16 v22, v6

    .line 94
    .end local v6    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .restart local v22    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    :goto_a
    move-object/from16 v5, v22

    .end local v22    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .local v5, "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    iget-object v6, v5, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->$onGesture:Lkotlin/jvm/functions/Function4;

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v15

    .end local v5    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .restart local v22    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v5

    move-wide/from16 v23, v1

    .end local v1    # "panChange":J
    .local v23, "panChange":J
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v6, v15, v5, v1, v2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v3    # "zoomChange":F
    .end local v14    # "effectiveRotation":F
    .end local v19    # "centroid":J
    .end local v23    # "panChange":J
    :cond_d
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 265
    .local v2, "$i$f$fastForEach":I
    nop

    .line 266
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_b
    if-ge v3, v5, :cond_f

    .line 267
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 268
    .local v6, "item$iv":Ljava/lang/Object;
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v6, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v14, 0x0

    .line 97
    .local v14, "$i$a$-fastForEach-TransformGestureDetectorKt$detectTransformGestures$2$1":I
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChanged(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 98
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 100
    .end local v6    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_e
    nop

    .line 268
    .end local v14    # "$i$a$-fastForEach-TransformGestureDetectorKt$detectTransformGestures$2$1":I
    nop

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 270
    .end local v3    # "index$iv":I
    :cond_f
    goto :goto_c

    .line 87
    .end local v2    # "$i$f$fastForEach":I
    .end local v22    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .local v1, "panChange":J
    .local v3, "zoomChange":F
    .local v6, "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .local v14, "rotationChange":F
    :cond_10
    move-wide/from16 v23, v1

    move-object/from16 v22, v6

    .line 103
    .end local v1    # "panChange":J
    .end local v3    # "zoomChange":F
    .end local v6    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .end local v14    # "rotationChange":F
    .restart local v22    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    :goto_c
    move/from16 v5, v18

    goto :goto_d

    .line 63
    .end local v17    # "$result":Ljava/lang/Object;
    .end local v18    # "lockedToPanZoom":Z
    .end local v22    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .local v2, "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "lockedToPanZoom":Z
    :cond_11
    move-object/from16 v22, v2

    move-object/from16 v17, v5

    move/from16 v18, v6

    .end local v2    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "lockedToPanZoom":Z
    .restart local v17    # "$result":Ljava/lang/Object;
    .restart local v18    # "lockedToPanZoom":Z
    .restart local v22    # "this":Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
    move/from16 v5, v18

    .line 103
    .end local v18    # "lockedToPanZoom":Z
    .local v5, "lockedToPanZoom":Z
    :goto_d
    if-nez v0, :cond_15

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .end local v4    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .local v0, "$this$fastAny$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 271
    .local v1, "$i$f$fastAny":I
    nop

    .line 272
    nop

    .local v0, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 273
    .local v2, "$i$f$fastForEach":I
    nop

    .line 274
    const/4 v3, 0x0

    .local v3, "index$iv$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :goto_e
    if-ge v3, v4, :cond_13

    .line 275
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 276
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v6

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 272
    .local v15, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    move-object/from16 v18, v14

    check-cast v18, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v18, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v19, 0x0

    .line 103
    .local v19, "$i$a$-fastAny-TransformGestureDetectorKt$detectTransformGestures$2$2":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v18

    .line 272
    .end local v18    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v19    # "$i$a$-fastAny-TransformGestureDetectorKt$detectTransformGestures$2$2":I
    if-eqz v18, :cond_12

    const/4 v1, 0x1

    goto :goto_f

    .line 276
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    :cond_12
    nop

    .line 274
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 278
    .end local v3    # "index$iv$iv":I
    :cond_13
    nop

    .line 279
    .end local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    const/4 v1, 0x0

    .end local v1    # "$i$f$fastAny":I
    :goto_f
    if-nez v1, :cond_14

    goto :goto_10

    :cond_14
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move v6, v7

    move v7, v8

    move-wide v8, v9

    move v10, v11

    move v11, v12

    move-object v12, v13

    move-object/from16 v4, v17

    move-object/from16 v2, v22

    const/4 v3, 0x1

    goto/16 :goto_1

    .line 104
    .end local v5    # "lockedToPanZoom":Z
    .end local v7    # "touchSlop":F
    .end local v8    # "pastTouchSlop":Z
    .end local v9    # "pan":J
    .end local v11    # "zoom":F
    .end local v12    # "rotation":F
    .end local v13    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_15
    :goto_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
