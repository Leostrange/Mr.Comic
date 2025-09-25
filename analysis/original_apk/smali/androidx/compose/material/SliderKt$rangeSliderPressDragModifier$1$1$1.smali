.class final Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1"
    f = "Slider.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x3dd,
        0x3e7,
        0x3fa
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitEachGesture",
        "$this$awaitEachGesture",
        "event",
        "interaction",
        "posX",
        "draggingStart",
        "interaction",
        "draggingStart"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $gestureEndAction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $isRtl:Z

.field final synthetic $maxPx:F

.field final synthetic $onDrag:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

.field final synthetic $rawOffsetEnd:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rawOffsetStart:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZFLandroidx/compose/material/RangeSliderLogic;Landroidx/compose/runtime/State;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Landroidx/compose/material/RangeSliderLogic;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$isRtl:Z

    iput p2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$maxPx:F

    iput-object p3, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    iput-object p4, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/State;

    iput-object p8, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$onDrag:Landroidx/compose/runtime/State;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p9}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v10, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;

    iget-boolean v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$isRtl:Z

    iget v2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$maxPx:F

    iget-object v3, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    iget-object v4, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    iget-object v5, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    iget-object v7, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/State;

    iget-object v8, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$onDrag:Landroidx/compose/runtime/State;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;-><init>(ZFLandroidx/compose/material/RangeSliderLogic;Landroidx/compose/runtime/State;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v10, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlin/coroutines/Continuation;

    return-object v10
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 988
    move-object/from16 v1, p0

    iget v2, v1, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->label:I

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    iget-object v0, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v5, "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v0, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .local v6, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto/16 :goto_7

    .line 1027
    :catch_0
    move-exception v0

    goto/16 :goto_9

    .line 988
    .end local v2    # "this":Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v6    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;
    move-object/from16 v6, p1

    .local v6, "$result":Ljava/lang/Object;
    iget-object v7, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v7, "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v8, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$FloatRef;

    .local v8, "posX":Lkotlin/jvm/internal/Ref$FloatRef;
    iget-object v9, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .local v9, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    iget-object v10, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v10, "event":Landroidx/compose/ui/input/pointer/PointerInputChange;
    iget-object v11, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v11, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v6

    goto/16 :goto_3

    .end local v2    # "this":Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v8    # "posX":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v9    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .end local v10    # "event":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v11    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    iget-object v7, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v7, "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v7

    move-object v7, v6

    goto :goto_0

    .end local v2    # "this":Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    iget-object v7, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 989
    .restart local v7    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v2

    check-cast v11, Lkotlin/coroutines/Continuation;

    const/4 v12, 0x2

    const/4 v13, 0x0

    iput-object v7, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    iput v5, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->label:I

    move-object v8, v7

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_0

    .line 988
    return-object v0

    .line 989
    :cond_0
    move-object v11, v7

    move-object v7, v6

    move-object v6, v8

    .line 988
    .end local v6    # "$result":Ljava/lang/Object;
    .local v7, "$result":Ljava/lang/Object;
    .restart local v11    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_0
    move-object v10, v6

    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 990
    .restart local v10    # "event":Landroidx/compose/ui/input/pointer/PointerInputChange;
    new-instance v6, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-direct {v6}, Landroidx/compose/foundation/interaction/DragInteraction$Start;-><init>()V

    .line 991
    .local v6, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .restart local v8    # "posX":Lkotlin/jvm/internal/Ref$FloatRef;
    iget-boolean v9, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$isRtl:Z

    if-eqz v9, :cond_1

    iget v9, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$maxPx:F

    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v12

    sub-float/2addr v9, v12

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    :goto_1
    iput v9, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 992
    iget-object v9, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    iget v12, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v9, v12}, Landroidx/compose/material/RangeSliderLogic;->compareOffsets(F)I

    move-result v9

    .line 993
    .local v9, "compare":I
    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .local v12, "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    if-eqz v9, :cond_3

    .line 994
    if-gez v9, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .end local v9    # "compare":I
    goto :goto_2

    .line 996
    :cond_3
    iget-object v9, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    iget v13, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpl-float v9, v9, v13

    if-lez v9, :cond_4

    move v9, v5

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 993
    :goto_2
    iput-boolean v9, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 999
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v13

    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v9

    move-object v15, v2

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v11, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$2:Ljava/lang/Object;

    iput-object v8, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$3:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$4:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->label:I

    invoke-static {v11, v13, v14, v9, v15}, Landroidx/compose/material/SliderKt;->access$awaitSlop-8vUncbI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_5

    .line 988
    return-object v0

    .line 999
    :cond_5
    move-object v9, v6

    move-object v6, v4

    move-object v4, v7

    move-object v7, v12

    .end local v6    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .end local v12    # "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v4    # "$result":Ljava/lang/Object;
    .local v7, "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v9, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    :goto_3
    check-cast v6, Lkotlin/Pair;

    if-eqz v6, :cond_a

    iget-object v12, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/State;

    iget-object v13, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    iget-boolean v14, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$isRtl:Z

    .local v6, "it":Lkotlin/Pair;
    const/4 v15, 0x0

    .line 1000
    .local v15, "$i$a$-let-SliderKt$rangeSliderPressDragModifier$1$1$1$1":I
    invoke-interface {v11}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v3

    invoke-static {v5, v3}, Landroidx/compose/material/DragGestureDetectorCopyKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v3

    .line 1001
    .local v3, "slop":F
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iget v12, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v5, v12

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v3

    if-gez v5, :cond_6

    .line 1002
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iget v12, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v5, v12

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v3

    if-gez v5, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    .end local v3    # "slop":F
    :cond_6
    const/4 v3, 0x0

    .line 1001
    :goto_4
    nop

    .line 1003
    .local v3, "shouldUpdateCapturedThumb":Z
    if-eqz v3, :cond_9

    .line 1004
    .end local v3    # "shouldUpdateCapturedThumb":Z
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 1005
    .local v3, "dir":F
    const/4 v5, 0x0

    if-eqz v14, :cond_7

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_8

    goto :goto_5

    :cond_7
    cmpg-float v5, v3, v5

    if-gez v5, :cond_8

    :goto_5
    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    .end local v3    # "dir":F
    :goto_6
    iput-boolean v3, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1006
    iget v3, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v5

    add-float/2addr v3, v5

    iput v3, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1008
    .end local v6    # "it":Lkotlin/Pair;
    :cond_9
    nop

    .line 999
    .end local v15    # "$i$a$-let-SliderKt$rangeSliderPressDragModifier$1$1$1$1":I
    nop

    .line 1010
    :cond_a
    iget-object v3, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 1011
    iget-boolean v5, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1012
    iget v6, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1013
    .end local v8    # "posX":Lkotlin/jvm/internal/Ref$FloatRef;
    move-object v8, v9

    check-cast v8, Landroidx/compose/foundation/interaction/Interaction;

    .line 1014
    iget-object v12, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 1010
    invoke-virtual {v3, v5, v6, v8, v12}, Landroidx/compose/material/RangeSliderLogic;->captureThumb(ZFLandroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/CoroutineScope;)V

    .line 1017
    nop

    .line 1018
    :try_start_1
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v5

    new-instance v3, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$finishInteraction$success$1;

    iget-object v8, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$onDrag:Landroidx/compose/runtime/State;

    iget-boolean v12, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$isRtl:Z

    invoke-direct {v3, v8, v7, v12}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$finishInteraction$success$1;-><init>(Landroidx/compose/runtime/State;Lkotlin/jvm/internal/Ref$BooleanRef;Z)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v9, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    const/4 v12, 0x0

    iput-object v12, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$3:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$4:Ljava/lang/Object;

    const/4 v12, 0x3

    iput v12, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->label:I

    invoke-static {v11, v5, v6, v3, v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->horizontalDrag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v10    # "event":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v11    # "$this$awaitEachGesture":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    if-ne v3, v0, :cond_b

    .line 988
    return-object v0

    .line 1018
    :cond_b
    move-object v5, v7

    move-object v6, v9

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .end local v4    # "$result":Ljava/lang/Object;
    .end local v7    # "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v9    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .local v3, "$result":Ljava/lang/Object;
    .restart local v5    # "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v6, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    :goto_7
    :try_start_2
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1022
    .local v0, "success":Z
    nop

    .end local v0    # "success":Z
    if-eqz v0, :cond_c

    .line 1023
    new-instance v0, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    invoke-direct {v0, v6}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v0, Landroidx/compose/foundation/interaction/DragInteraction;

    goto :goto_8

    .line 1025
    :cond_c
    new-instance v0, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v0, v6}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v0, Landroidx/compose/foundation/interaction/DragInteraction;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_8
    nop

    .end local v6    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    goto :goto_a

    .line 1027
    .restart local v6    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    :catch_1
    move-exception v0

    move-object v4, v3

    goto :goto_9

    .end local v3    # "$result":Ljava/lang/Object;
    .end local v5    # "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v6    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v7    # "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v9    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    :catch_2
    move-exception v0

    move-object v5, v7

    move-object v6, v9

    .line 1028
    .end local v7    # "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v9    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .restart local v5    # "draggingStart":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v6    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    :goto_9
    new-instance v0, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v0, v6}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v0, Landroidx/compose/foundation/interaction/DragInteraction;

    move-object v3, v4

    .line 1017
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v6    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_a
    nop

    .line 1031
    .local v0, "finishInteraction":Landroidx/compose/foundation/interaction/DragInteraction;
    iget-object v4, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iget-boolean v6, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    iget-object v7, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v4, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$2;

    iget-object v6, v2, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    const/4 v10, 0x0

    invoke-direct {v4, v6, v5, v0, v10}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$2;-><init>(Landroidx/compose/material/RangeSliderLogic;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/foundation/interaction/DragInteraction;Lkotlin/coroutines/Continuation;)V

    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1037
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
