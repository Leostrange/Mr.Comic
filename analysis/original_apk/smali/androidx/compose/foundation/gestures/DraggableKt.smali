.class public final Landroidx/compose/foundation/gestures/DraggableKt;
.super Ljava/lang/Object;
.source "Draggable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraggable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,680:1\n25#2:681\n1116#3,6:682\n659#4,10:688\n669#4,4:707\n673#4,38:718\n579#4,6:756\n613#4,4:762\n617#4,2:775\n619#4,8:784\n586#4,10:792\n116#5,2:698\n33#5,6:700\n118#5:706\n33#5,6:711\n118#5:717\n116#5,2:766\n33#5,6:768\n118#5:774\n33#5,6:777\n118#5:783\n*S KotlinDebug\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt\n*L\n144#1:681\n144#1:682,6\n593#1:688,10\n593#1:707,4\n593#1:718,38\n640#1:756,6\n640#1:762,4\n640#1:775,2\n640#1:784,8\n640#1:792,10\n593#1:698,2\n593#1:700,6\n593#1:706\n593#1:711,6\n593#1:717\n640#1:766,2\n640#1:768,6\n640#1:774\n640#1:777,6\n640#1:783\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001a\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u001a!\u0010\u0008\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0007\u00a2\u0006\u0002\u0010\t\u001aR\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b*\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00100\u00052\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0082@\u00a2\u0006\u0002\u0010\u0017\u001aY\u0010\u0018\u001a\u00020\u0010*\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u00102\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00100\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!\u001a\u00c9\u0001\u0010\"\u001a\u00020#*\u00020#2\u0006\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020&2\u0008\u0008\u0002\u0010\'\u001a\u00020\u00102\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102>\u0008\u0002\u0010*\u001a8\u0008\u0001\u0012\u0004\u0012\u00020,\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000700\u0012\u0006\u0012\u0004\u0018\u0001010+\u00a2\u0006\u0002\u000822>\u0008\u0002\u00103\u001a8\u0008\u0001\u0012\u0004\u0012\u00020,\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(4\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000700\u0012\u0006\u0012\u0004\u0018\u0001010+\u00a2\u0006\u0002\u000822\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0010\u00a2\u0006\u0002\u00105\u001aG\u00106\u001a\u00020\u0010*\u00020\u000e2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00100\u00052\u0006\u00107\u001a\u0002082\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00070\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008:\u0010;\u001a\u001e\u0010<\u001a\u00020\u0006*\u00020\r2\u0006\u0010%\u001a\u00020&H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>\u001a\u001e\u0010<\u001a\u00020\u0006*\u00020?2\u0006\u0010%\u001a\u00020&H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010>\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006A"
    }
    d2 = {
        "NoOpDragScope",
        "Landroidx/compose/foundation/gestures/DragScope;",
        "DraggableState",
        "Landroidx/compose/foundation/gestures/DraggableState;",
        "onDelta",
        "Lkotlin/Function1;",
        "",
        "",
        "rememberDraggableState",
        "(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/DraggableState;",
        "awaitDownAndSlop",
        "Lkotlin/Pair;",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "canDrag",
        "",
        "startDragImmediately",
        "Lkotlin/Function0;",
        "velocityTracker",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
        "pointerDirectionConfig",
        "Landroidx/compose/foundation/gestures/PointerDirectionConfig;",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/PointerDirectionConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitDrag",
        "startEvent",
        "initialDelta",
        "channel",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "Landroidx/compose/foundation/gestures/DragEvent;",
        "reverseDirection",
        "hasDragged",
        "awaitDrag-Su4bsnU",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "draggable",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "enabled",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "onDragStarted",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/ParameterName;",
        "name",
        "startedPosition",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "onDragStopped",
        "velocity",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)Landroidx/compose/ui/Modifier;",
        "onDragOrUp",
        "pointerId",
        "Landroidx/compose/ui/input/pointer/PointerId;",
        "onDrag",
        "onDragOrUp-Axegvzg",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toFloat",
        "toFloat-3MmeM6k",
        "(JLandroidx/compose/foundation/gestures/Orientation;)F",
        "Landroidx/compose/ui/unit/Velocity;",
        "toFloat-sF-c-tU",
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
.field private static final NoOpDragScope:Landroidx/compose/foundation/gestures/DragScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 377
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpDragScope$1;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpDragScope$1;-><init>()V

    check-cast v0, Landroidx/compose/foundation/gestures/DragScope;

    sput-object v0, Landroidx/compose/foundation/gestures/DraggableKt;->NoOpDragScope:Landroidx/compose/foundation/gestures/DragScope;

    return-void
.end method

.method public static final DraggableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/DraggableState;
    .locals 1
    .param p0, "onDelta"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/gestures/DraggableState;"
        }
    .end annotation

    .line 128
    new-instance v0, Landroidx/compose/foundation/gestures/DefaultDraggableState;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/DefaultDraggableState;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/foundation/gestures/DraggableState;

    return-object v0
.end method

.method public static final synthetic access$awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/PointerDirectionConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "canDrag"    # Lkotlin/jvm/functions/Function1;
    .param p2, "startDragImmediately"    # Lkotlin/jvm/functions/Function0;
    .param p3, "velocityTracker"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p4, "pointerDirectionConfig"    # Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/DraggableKt;->awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/PointerDirectionConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$awaitDrag-Su4bsnU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "startEvent"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p2, "initialDelta"    # J
    .param p4, "velocityTracker"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p5, "channel"    # Lkotlinx/coroutines/channels/SendChannel;
    .param p6, "reverseDirection"    # Z
    .param p7, "hasDragged"    # Lkotlin/jvm/functions/Function1;
    .param p8, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/foundation/gestures/DraggableKt;->awaitDrag-Su4bsnU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getNoOpDragScope$p()Landroidx/compose/foundation/gestures/DragScope;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/DraggableKt;->NoOpDragScope:Landroidx/compose/foundation/gestures/DragScope;

    return-object v0
.end method

.method public static final synthetic access$onDragOrUp-Axegvzg(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "hasDragged"    # Lkotlin/jvm/functions/Function1;
    .param p2, "pointerId"    # J
    .param p4, "onDrag"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/DraggableKt;->onDragOrUp-Axegvzg(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 1
    .param p0, "$receiver"    # J
    .param p2, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt;->toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$toFloat-sF-c-tU(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 1
    .param p0, "$receiver"    # J
    .param p2, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt;->toFloat-sF-c-tU(JLandroidx/compose/foundation/gestures/Orientation;)F

    move-result v0

    return v0
.end method

.method private static final awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/PointerDirectionConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
            "Landroidx/compose/foundation/gestures/PointerDirectionConfig;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;

    iget v2, v1, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 568
    iget v3, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

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
    const/4 v3, 0x0

    .local v3, "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    iget-wide v6, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->J$0:J

    .local v6, "totalPositionChange$iv":J
    iget v8, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$0:F

    .local v8, "touchSlop$iv":F
    iget-object v9, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$5:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v9, "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    iget-object v10, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$LongRef;

    .local v10, "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v11, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v11, "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    iget-object v12, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    .local v12, "postPointerSlop":Lkotlin/jvm/functions/Function2;
    iget-object v13, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$LongRef;

    .local v13, "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v14, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    .local v14, "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v4, v6

    move v7, v8

    move-object v6, v12

    move-object v8, v13

    move v12, v3

    move-object v13, v10

    move-object v10, v11

    move-object v3, v14

    goto/16 :goto_9

    .end local v3    # "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    .end local v6    # "totalPositionChange$iv":J
    .end local v8    # "touchSlop$iv":F
    .end local v9    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v10    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v11    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v12    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    .end local v13    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v14    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    :pswitch_1
    const/4 v3, 0x0

    .restart local v3    # "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    iget-wide v6, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->J$0:J

    .restart local v6    # "totalPositionChange$iv":J
    iget v8, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$0:F

    .restart local v8    # "touchSlop$iv":F
    iget-object v9, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$LongRef;

    .local v9, "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v10, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v10, "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    iget-object v11, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    .local v11, "postPointerSlop":Lkotlin/jvm/functions/Function2;
    iget-object v12, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$LongRef;

    .local v12, "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v13, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    .local v13, "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v9

    move-object v9, v10

    move-object/from16 v23, v2

    move-object v2, v1

    move/from16 v24, v3

    move-object/from16 v3, v23

    move-object/from16 v25, v12

    move/from16 v12, v24

    move-wide/from16 v26, v6

    move v7, v8

    move-object v6, v11

    move-object/from16 v8, v25

    move-wide/from16 v10, v26

    goto/16 :goto_4

    .end local v3    # "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    .end local v6    # "totalPositionChange$iv":J
    .end local v8    # "touchSlop$iv":F
    .end local v9    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v10    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v11    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    .end local v12    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v13    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    :pswitch_2
    iget-object v3, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    .local v3, "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    iget-object v6, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .local v6, "velocityTracker":Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v7, "$this$awaitDownAndSlop":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v7

    move-object v7, v1

    goto/16 :goto_2

    .end local v3    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v6    # "velocityTracker":Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .end local v7    # "$this$awaitDownAndSlop":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_3
    iget-object v3, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    .restart local v3    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    iget-object v6, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .restart local v6    # "velocityTracker":Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "startDragImmediately":Lkotlin/jvm/functions/Function0;
    iget-object v8, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .local v8, "canDrag":Lkotlin/jvm/functions/Function1;
    iget-object v9, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v9, "$this$awaitDownAndSlop":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v1

    goto :goto_1

    .end local v3    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v6    # "velocityTracker":Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .end local v7    # "startDragImmediately":Lkotlin/jvm/functions/Function0;
    .end local v8    # "canDrag":Lkotlin/jvm/functions/Function1;
    .end local v9    # "$this$awaitDownAndSlop":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "$this$awaitDownAndSlop":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    move-object/from16 v7, p2

    .restart local v7    # "startDragImmediately":Lkotlin/jvm/functions/Function0;
    move-object/from16 v6, p4

    .local v6, "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    move-object/from16 v8, p1

    .restart local v8    # "canDrag":Lkotlin/jvm/functions/Function1;
    move-object/from16 v9, p3

    .line 575
    .local v9, "velocityTracker":Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    sget-object v10, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v3, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    const/4 v11, 0x0

    invoke-static {v3, v11, v10, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_1

    .line 568
    return-object v2

    .line 575
    :cond_1
    move-object/from16 v23, v9

    move-object v9, v3

    move-object v3, v6

    move-object/from16 v6, v23

    .line 568
    .local v3, "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .local v6, "velocityTracker":Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .local v9, "$this$awaitDownAndSlop":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_1
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 574
    nop

    .line 576
    .local v10, "initialDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-interface {v8, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_2

    .line 577
    .end local v7    # "startDragImmediately":Lkotlin/jvm/functions/Function0;
    .end local v8    # "canDrag":Lkotlin/jvm/functions/Function1;
    .end local v10    # "initialDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    goto/16 :goto_b

    .line 578
    .restart local v7    # "startDragImmediately":Lkotlin/jvm/functions/Function0;
    .restart local v10    # "initialDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_2
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 579
    .end local v7    # "startDragImmediately":Lkotlin/jvm/functions/Function0;
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 580
    invoke-static {v6, v10}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 582
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    goto/16 :goto_b

    .line 584
    .end local v10    # "initialDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    const/4 v12, 0x2

    iput v12, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    move-object/from16 p0, v9

    move/from16 p1, v7

    move-object/from16 p2, v8

    move-object/from16 p3, v0

    move/from16 p4, v10

    move-object/from16 p5, v11

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_4

    .line 568
    return-object v2

    :cond_4
    :goto_2
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 585
    .local v7, "down":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-static {v6, v7}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 586
    new-instance v8, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local v8, "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v10, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v10

    iput-wide v10, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 587
    new-instance v10, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;

    invoke-direct {v10, v6, v8}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;-><init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlin/jvm/internal/Ref$LongRef;)V

    move-object v6, v10

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 593
    .local v6, "postPointerSlop":Lkotlin/jvm/functions/Function2;
    nop

    .line 594
    .local v9, "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v10

    .line 595
    .local v10, "pointerId$iv":J
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v7

    .line 593
    .local v7, "pointerType$iv":I
    const/4 v12, 0x0

    .line 688
    .local v12, "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    invoke-interface {v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v13

    invoke-static {v13, v10, v11}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 689
    .end local v3    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v6    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    .end local v7    # "pointerType$iv":I
    .end local v9    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v10    # "pointerId$iv":J
    move-object v9, v5

    goto/16 :goto_a

    .line 691
    .restart local v3    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .restart local v6    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "pointerType$iv":I
    .restart local v9    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v10    # "pointerId$iv":J
    :cond_5
    invoke-interface {v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v13

    invoke-static {v13, v7}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v7

    .line 692
    .local v7, "touchSlop$iv":F
    new-instance v13, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local v13, "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    iput-wide v10, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 693
    .end local v10    # "pointerId$iv":J
    sget-object v10, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v10

    .line 695
    .local v10, "totalPositionChange$iv":J
    :goto_3
    nop

    .line 696
    iput-object v3, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    iput-object v13, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$5:Ljava/lang/Object;

    iput v7, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$0:F

    iput-wide v10, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->J$0:J

    const/4 v14, 0x3

    iput v14, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    invoke-static {v9, v5, v0, v4, v5}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v2, :cond_6

    .line 568
    return-object v2

    .line 696
    :cond_6
    move-object/from16 v23, v2

    move-object v2, v1

    move-object v1, v14

    move-object v14, v13

    move-object v13, v3

    move-object/from16 v3, v23

    .line 568
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .local v2, "$result":Ljava/lang/Object;
    .local v13, "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .local v14, "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    :goto_4
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 697
    .local v1, "event$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v15

    .local v15, "$this$fastFirstOrNull$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 698
    .local v16, "$i$f$fastFirstOrNull":I
    nop

    .line 699
    nop

    .local v15, "$this$fastForEach$iv$iv$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 700
    .local v17, "$i$f$fastForEach":I
    nop

    .line 701
    const/16 v18, 0x0

    .local v18, "index$iv$iv$iv":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v5, v18

    .end local v18    # "index$iv$iv$iv":I
    .local v5, "index$iv$iv$iv":I
    :goto_5
    if-ge v5, v4, :cond_8

    .line 702
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 703
    .local v18, "item$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v18

    .local v19, "it$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 699
    .local v20, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv$iv":I
    move-object/from16 v21, v19

    check-cast v21, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v21, "it$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v22, 0x0

    .line 697
    .local v22, "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitPointerSlopOrCancellation$dragEvent$1$iv":I
    move-object/from16 p0, v2

    move-object/from16 p1, v3

    .end local v2    # "$result":Ljava/lang/Object;
    .local p0, "$result":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v2

    move-object/from16 p2, v8

    move-object/from16 p3, v9

    .end local v8    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v9    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local p2, "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .local p3, "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    iget-wide v8, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v2, v3, v8, v9}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v2

    .line 699
    .end local v21    # "it$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v22    # "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitPointerSlopOrCancellation$dragEvent$1$iv":I
    if-eqz v2, :cond_7

    goto :goto_6

    .line 703
    .end local v19    # "it$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv$iv":I
    :cond_7
    nop

    .line 701
    .end local v18    # "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    goto :goto_5

    .end local p0    # "$result":Ljava/lang/Object;
    .end local p2    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .end local p3    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v2    # "$result":Ljava/lang/Object;
    .restart local v8    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v9    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_8
    move-object/from16 p0, v2

    move-object/from16 p1, v3

    move-object/from16 p2, v8

    move-object/from16 p3, v9

    .line 705
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v5    # "index$iv$iv$iv":I
    .end local v8    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v9    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local p0    # "$result":Ljava/lang/Object;
    .restart local p2    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local p3    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    nop

    .line 706
    .end local v15    # "$this$fastForEach$iv$iv$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastForEach":I
    const/16 v19, 0x0

    .line 697
    .end local v16    # "$i$f$fastFirstOrNull":I
    :goto_6
    check-cast v19, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v19, :cond_9

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    const/4 v9, 0x0

    .end local v1    # "event$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local v6    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    .end local v7    # "touchSlop$iv":F
    .end local v10    # "totalPositionChange$iv":J
    .end local v13    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local p3    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    goto/16 :goto_a

    .restart local v1    # "event$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .restart local v6    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "touchSlop$iv":F
    .restart local v10    # "totalPositionChange$iv":J
    .restart local v13    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .restart local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local p3    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_9
    move-object/from16 v9, v19

    .line 707
    .local v9, "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 708
    .end local v1    # "event$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local v6    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    .end local v7    # "touchSlop$iv":F
    .end local v9    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v10    # "totalPositionChange$iv":J
    .end local v13    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local p3    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    const/4 v9, 0x0

    goto/16 :goto_a

    .line 709
    .restart local v1    # "event$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .restart local v6    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "touchSlop$iv":F
    .restart local v9    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .restart local v10    # "totalPositionChange$iv":J
    .restart local v13    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .restart local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local p3    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_a
    invoke-static {v9}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 710
    .end local v9    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastFirstOrNull$iv$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 698
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 699
    nop

    .local v1, "$this$fastForEach$iv$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 711
    .local v3, "$i$f$fastForEach":I
    nop

    .line 712
    const/4 v4, 0x0

    .local v4, "index$iv$iv$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_7
    if-ge v4, v5, :cond_c

    .line 713
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 714
    .local v8, "item$iv$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 699
    .local v15, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv$iv":I
    move-object/from16 v16, v9

    check-cast v16, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v16, "it$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v17, 0x0

    .line 710
    .local v17, "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitPointerSlopOrCancellation$otherDown$1$iv":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v16

    .line 699
    .end local v16    # "it$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v17    # "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitPointerSlopOrCancellation$otherDown$1$iv":I
    if-eqz v16, :cond_b

    goto :goto_8

    .line 714
    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv$iv":I
    :cond_b
    nop

    .line 712
    .end local v8    # "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 716
    .end local v4    # "index$iv$iv$iv":I
    :cond_c
    nop

    .line 717
    .end local v1    # "$this$fastForEach$iv$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 710
    .end local v2    # "$i$f$fastFirstOrNull":I
    :goto_8
    move-object v1, v9

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 718
    .local v1, "otherDown$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-nez v1, :cond_d

    .line 720
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    const/4 v9, 0x0

    goto/16 :goto_a

    .line 722
    :cond_d
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v2

    iput-wide v2, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object v3, v13

    move-object v13, v14

    const/4 v4, 0x1

    const/4 v5, 0x0

    .end local v1    # "otherDown$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    goto/16 :goto_3

    .line 725
    .local v9, "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_e
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v1

    .line 726
    .local v1, "currentPosition$iv":J
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v3

    .line 728
    .local v3, "previousPosition$iv":J
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v1

    .line 730
    .end local v3    # "previousPosition$iv":J
    .local v1, "positionChange$iv":J
    invoke-static {v10, v11, v1, v2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v1

    .line 732
    .end local v10    # "totalPositionChange$iv":J
    .local v1, "totalPositionChange$iv":J
    nop

    .line 733
    nop

    .line 732
    invoke-interface {v13, v1, v2}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->calculateDeltaChange-k-4lQ0M(J)F

    move-result v3

    .line 736
    .local v3, "inDirection$iv":F
    cmpg-float v4, v3, v7

    if-gez v4, :cond_11

    .line 738
    .end local v3    # "inDirection$iv":F
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v13, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    move-object/from16 v8, p2

    .end local p2    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .local v8, "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    iput-object v8, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    move-object/from16 v10, p3

    .end local p3    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v10, "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    iput-object v10, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    iput-object v14, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$5:Ljava/lang/Object;

    iput v7, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$0:F

    iput-wide v1, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->J$0:J

    const/4 v4, 0x4

    iput v4, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    invoke-interface {v10, v3, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, p1

    if-ne v3, v4, :cond_f

    .line 568
    return-object v4

    .line 738
    :cond_f
    move-object v3, v13

    move-object v13, v14

    move-wide/from16 v23, v1

    move-object/from16 v1, p0

    move-object v2, v4

    move-wide/from16 v4, v23

    .line 739
    .end local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local p0    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .local v4, "totalPositionChange$iv":J
    .local v13, "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    :goto_9
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 740
    .end local v3    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v4    # "totalPositionChange$iv":J
    .end local v6    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    .end local v7    # "touchSlop$iv":F
    .end local v10    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v13    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    const/4 v9, 0x0

    goto :goto_a

    .line 739
    .restart local v3    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .restart local v4    # "totalPositionChange$iv":J
    .restart local v6    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "touchSlop$iv":F
    .restart local v10    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v13    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_10
    move-object v9, v10

    move-wide v10, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    .line 736
    .end local v4    # "totalPositionChange$iv":J
    .end local v8    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v10    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v1, "totalPositionChange$iv":J
    .local v3, "inDirection$iv":F
    .local v13, "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .restart local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local p0    # "$result":Ljava/lang/Object;
    .restart local p2    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local p3    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_11
    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    .line 743
    .end local v3    # "inDirection$iv":F
    .end local p2    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .end local p3    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v8    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v10    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    nop

    .line 744
    nop

    .line 745
    .end local v1    # "totalPositionChange$iv":J
    nop

    .line 743
    invoke-interface {v13, v1, v2, v7}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->calculatePostSlopOffset-8S9VItk(JF)J

    move-result-wide v1

    .line 748
    .local v1, "postSlopOffset$iv":J
    nop

    .line 749
    nop

    .line 750
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v3

    .line 748
    invoke-interface {v6, v9, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 753
    .end local v6    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    .end local v7    # "touchSlop$iv":F
    .end local v10    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v13    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .end local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    move-object/from16 v1, p0

    .line 593
    .end local v9    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v12    # "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    .end local p0    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_a
    move-object v2, v9

    .line 600
    .local v2, "afterSlopResult":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-eqz v2, :cond_12

    iget-wide v3, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    goto :goto_b

    :cond_12
    const/4 v5, 0x0

    .line 576
    .end local v2    # "afterSlopResult":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v8    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    :goto_b
    return-object v5

    .line 755
    .local v1, "postSlopOffset$iv":J
    .restart local v6    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "touchSlop$iv":F
    .restart local v8    # "initialDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v9    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .restart local v10    # "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v12    # "$i$f$awaitPointerSlopOrCancellation-pn7EDYM":I
    .restart local v13    # "pointerDirectionConfig":Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .restart local v14    # "pointer$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local p0    # "$result":Ljava/lang/Object;
    :cond_13
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    move-object v9, v10

    move-object v3, v13

    move-object v13, v14

    const/4 v5, 0x0

    move-wide v10, v1

    move-object v2, v4

    const/4 v4, 0x1

    move-object/from16 v1, p0

    .end local v9    # "dragEvent$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .local v1, "totalPositionChange$iv":J
    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final awaitDrag-Su4bsnU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .param p0, "$this$awaitDrag_u2dSu4bsnU"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "startEvent"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p2, "initialDelta"    # J
    .param p4, "velocityTracker"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p5, "channel"    # Lkotlinx/coroutines/channels/SendChannel;
    .param p6, "reverseDirection"    # Z
    .param p7, "hasDragged"    # Lkotlin/jvm/functions/Function1;
    .param p8, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "J",
            "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 613
    move-object/from16 v0, p5

    move/from16 v1, p6

    move-wide/from16 v2, p2

    .line 614
    .local v2, "overSlopOffset":J
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    .line 615
    .local v4, "xSign":F
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    .line 616
    .local v5, "ySign":F
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v6

    .line 617
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    mul-float/2addr v8, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v9

    mul-float/2addr v9, v5

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v8

    .line 616
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v6

    .line 618
    .local v6, "adjustedStart":J
    new-instance v8, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v7, v9}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v8}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    new-instance v8, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    if-eqz v1, :cond_0

    const/high16 v10, -0x40800000    # -1.0f

    move-wide/from16 v11, p2

    invoke-static {v11, v12, v10}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    move-result-wide v13

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p2

    move-wide v13, v11

    :goto_0
    invoke-direct {v8, v13, v14, v9}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v8}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v17

    new-instance v8, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$2;

    move-object/from16 v9, p4

    invoke-direct {v8, v9, v0, v1}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$2;-><init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;Z)V

    move-object/from16 v19, v8

    check-cast v19, Lkotlin/jvm/functions/Function1;

    move-object/from16 v15, p0

    move-object/from16 v16, p7

    move-object/from16 v20, p8

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/gestures/DraggableKt;->onDragOrUp-Axegvzg(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    return-object v8
.end method

.method public static final draggable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)Landroidx/compose/ui/Modifier;
    .locals 14
    .param p0, "$this$draggable"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/gestures/DraggableState;
    .param p2, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p3, "enabled"    # Z
    .param p4, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p5, "startDragImmediately"    # Z
    .param p6, "onDragStarted"    # Lkotlin/jvm/functions/Function3;
    .param p7, "onDragStopped"    # Lkotlin/jvm/functions/Function3;
    .param p8, "reverseDirection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 196
    new-instance v10, Landroidx/compose/foundation/gestures/DraggableElement;

    .line 197
    nop

    .line 196
    sget-object v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$3;->INSTANCE:Landroidx/compose/foundation/gestures/DraggableKt$draggable$3;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 198
    nop

    .line 199
    nop

    .line 200
    nop

    .line 196
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$4;

    move/from16 v11, p5

    invoke-direct {v0, v11}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$4;-><init>(Z)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 202
    nop

    .line 196
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$5;

    const/4 v1, 0x0

    move-object/from16 v12, p2

    move-object/from16 v13, p7

    invoke-direct {v0, v13, v12, v1}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$5;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function3;

    .line 204
    nop

    .line 196
    move-object v0, v10

    move-object v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/gestures/DraggableElement;-><init>(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V

    check-cast v10, Landroidx/compose/ui/Modifier;

    move-object v0, p0

    invoke-interface {p0, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 206
    return-object v1
.end method

.method public static synthetic draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 11

    .line 187
    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 190
    const/4 v1, 0x1

    move v5, v1

    goto :goto_0

    .line 187
    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 191
    move-object v6, v2

    goto :goto_1

    .line 187
    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 192
    move v7, v3

    goto :goto_2

    .line 187
    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 193
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$1;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v8, v1

    goto :goto_3

    .line 187
    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 194
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$2;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v9, v1

    goto :goto_4

    .line 187
    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 195
    move v10, v3

    goto :goto_5

    .line 187
    :cond_5
    move/from16 v10, p8

    :goto_5
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method private static final onDragOrUp-Axegvzg(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;

    iget v2, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 635
    iget v3, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

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
    const/4 v3, 0x0

    .local v3, "$i$f$drag-VnAYq1g":I
    const/4 v6, 0x0

    .local v6, "$i$f$awaitDragOrUp-jO51t88":I
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$LongRef;

    .local v7, "pointer$iv$iv":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v8, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$3:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v8, "$this$awaitDragOrUp_u2djO51t88$iv$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    iget-object v9, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$2:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v9, "$this$drag_u2dVnAYq1g$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    iget-object v10, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .local v10, "onDrag":Lkotlin/jvm/functions/Function1;
    iget-object v11, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .local v11, "hasDragged":Lkotlin/jvm/functions/Function1;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move v7, v6

    move v6, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_3

    .end local v3    # "$i$f$drag-VnAYq1g":I
    .end local v6    # "$i$f$awaitDragOrUp-jO51t88":I
    .end local v7    # "pointer$iv$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v8    # "$this$awaitDragOrUp_u2djO51t88$iv$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v9    # "$this$drag_u2dVnAYq1g$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v10    # "onDrag":Lkotlin/jvm/functions/Function1;
    .end local v11    # "hasDragged":Lkotlin/jvm/functions/Function1;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "$this$onDragOrUp_u2dAxegvzg":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    move-wide/from16 v6, p2

    .local v6, "pointerId":J
    move-object/from16 v8, p4

    .local v8, "onDrag":Lkotlin/jvm/functions/Function1;
    move-object/from16 v9, p1

    .line 645
    .local v9, "hasDragged":Lkotlin/jvm/functions/Function1;
    nop

    .line 640
    nop

    .local v3, "$this$drag_u2dVnAYq1g$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    const/4 v10, 0x0

    .line 756
    .local v10, "$i$f$drag-VnAYq1g":I
    invoke-interface {v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v11

    invoke-static {v11, v6, v7}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 757
    .end local v3    # "$this$drag_u2dVnAYq1g$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v6    # "pointerId":J
    .end local v9    # "hasDragged":Lkotlin/jvm/functions/Function1;
    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_9

    .line 759
    .restart local v3    # "$this$drag_u2dVnAYq1g$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v6    # "pointerId":J
    .restart local v9    # "hasDragged":Lkotlin/jvm/functions/Function1;
    :cond_1
    move-wide v11, v6

    .line 760
    .end local v6    # "pointerId":J
    .local v11, "pointer$iv":J
    :goto_1
    nop

    .line 761
    move-object v6, v3

    .local v6, "$this$awaitDragOrUp_u2djO51t88$iv$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    const/4 v7, 0x0

    .line 762
    .local v7, "$i$f$awaitDragOrUp-jO51t88":I
    new-instance v13, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local v13, "pointer$iv$iv":Lkotlin/jvm/internal/Ref$LongRef;
    iput-wide v11, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v11, v9

    move-object v9, v3

    move v3, v10

    move-object v10, v8

    move-object v8, v6

    move v6, v7

    move-object v7, v13

    .line 763
    .end local v13    # "pointer$iv$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .local v3, "$i$f$drag-VnAYq1g":I
    .local v6, "$i$f$awaitDragOrUp-jO51t88":I
    .local v7, "pointer$iv$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .local v8, "$this$awaitDragOrUp_u2djO51t88$iv$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v9, "$this$drag_u2dVnAYq1g$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v10, "onDrag":Lkotlin/jvm/functions/Function1;
    .local v11, "hasDragged":Lkotlin/jvm/functions/Function1;
    :goto_2
    nop

    .line 764
    iput-object v11, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$2:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->label:I

    invoke-static {v8, v5, v0, v4, v5}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_2

    .line 635
    return-object v2

    .line 764
    :cond_2
    move-object/from16 v21, v2

    move-object v2, v1

    move-object v1, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move v7, v6

    move v6, v3

    move-object/from16 v3, v21

    .line 635
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "$i$f$drag-VnAYq1g":I
    .local v2, "$result":Ljava/lang/Object;
    .local v6, "$i$f$drag-VnAYq1g":I
    .local v7, "$i$f$awaitDragOrUp-jO51t88":I
    .local v8, "pointer$iv$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .local v9, "$this$awaitDragOrUp_u2djO51t88$iv$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v10, "$this$drag_u2dVnAYq1g$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v11, "onDrag":Lkotlin/jvm/functions/Function1;
    .local v12, "hasDragged":Lkotlin/jvm/functions/Function1;
    :goto_3
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 765
    .local v1, "event$iv$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v13

    .local v13, "$this$fastFirstOrNull$iv$iv$iv":Ljava/util/List;
    const/4 v14, 0x0

    .line 766
    .local v14, "$i$f$fastFirstOrNull":I
    nop

    .line 767
    nop

    .local v13, "$this$fastForEach$iv$iv$iv$iv":Ljava/util/List;
    const/4 v15, 0x0

    .line 768
    .local v15, "$i$f$fastForEach":I
    nop

    .line 769
    const/16 v16, 0x0

    .local v16, "index$iv$iv$iv$iv":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v5, v16

    .end local v16    # "index$iv$iv$iv$iv":I
    .local v5, "index$iv$iv$iv$iv":I
    :goto_4
    if-ge v5, v4, :cond_4

    .line 770
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 771
    .local v16, "item$iv$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 767
    .local v18, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv$iv$iv":I
    move-object/from16 v19, v17

    check-cast v19, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v19, "it$iv$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v20, 0x0

    .line 765
    .local v20, "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitDragOrUp$dragEvent$1$iv$iv":I
    move-object/from16 p0, v2

    move-object/from16 p1, v3

    .end local v2    # "$result":Ljava/lang/Object;
    .local p0, "$result":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v2

    move/from16 p2, v6

    move/from16 p3, v7

    .end local v6    # "$i$f$drag-VnAYq1g":I
    .end local v7    # "$i$f$awaitDragOrUp-jO51t88":I
    .local p2, "$i$f$drag-VnAYq1g":I
    .local p3, "$i$f$awaitDragOrUp-jO51t88":I
    iget-wide v6, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v2, v3, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v2

    .line 767
    .end local v19    # "it$iv$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v20    # "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitDragOrUp$dragEvent$1$iv$iv":I
    if-eqz v2, :cond_3

    goto :goto_5

    .line 771
    .end local v17    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv$iv$iv":I
    :cond_3
    nop

    .line 769
    .end local v16    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p2

    move/from16 v7, p3

    goto :goto_4

    .end local p0    # "$result":Ljava/lang/Object;
    .end local p2    # "$i$f$drag-VnAYq1g":I
    .end local p3    # "$i$f$awaitDragOrUp-jO51t88":I
    .restart local v2    # "$result":Ljava/lang/Object;
    .restart local v6    # "$i$f$drag-VnAYq1g":I
    .restart local v7    # "$i$f$awaitDragOrUp-jO51t88":I
    :cond_4
    move-object/from16 p0, v2

    move-object/from16 p1, v3

    move/from16 p2, v6

    move/from16 p3, v7

    .line 773
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v5    # "index$iv$iv$iv$iv":I
    .end local v6    # "$i$f$drag-VnAYq1g":I
    .end local v7    # "$i$f$awaitDragOrUp-jO51t88":I
    .restart local p0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$i$f$drag-VnAYq1g":I
    .restart local p3    # "$i$f$awaitDragOrUp-jO51t88":I
    nop

    .line 774
    .end local v13    # "$this$fastForEach$iv$iv$iv$iv":Ljava/util/List;
    .end local v15    # "$i$f$fastForEach":I
    const/16 v17, 0x0

    .line 765
    .end local v14    # "$i$f$fastFirstOrNull":I
    :goto_5
    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v17, :cond_5

    const/4 v2, 0x0

    .end local v1    # "event$iv$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local v8    # "pointer$iv$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v9    # "$this$awaitDragOrUp_u2djO51t88$iv$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    goto :goto_8

    .restart local v1    # "event$iv$iv":Landroidx/compose/ui/input/pointer/PointerEvent;
    .restart local v8    # "pointer$iv$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v9    # "$this$awaitDragOrUp_u2djO51t88$iv$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_5
    move-object/from16 v2, v17

    .line 775
    .local v2, "dragEvent$iv$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-static {v2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 776
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastFirstOrNull$iv$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 766
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 767
    nop

    .local v1, "$this$fastForEach$iv$iv$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 777
    .local v4, "$i$f$fastForEach":I
    nop

    .line 778
    const/4 v5, 0x0

    .restart local v5    # "index$iv$iv$iv$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    :goto_6
    if-ge v5, v6, :cond_7

    .line 779
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 780
    .local v7, "item$iv$iv$iv$iv":Ljava/lang/Object;
    move-object v13, v7

    .local v13, "it$iv$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 767
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv$iv$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v15, "it$iv$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v16, 0x0

    .line 776
    .local v16, "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitDragOrUp$otherDown$1$iv$iv":I
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v15

    .line 767
    .end local v15    # "it$iv$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v16    # "$i$a$-fastFirstOrNull-DragGestureDetectorKt$awaitDragOrUp$otherDown$1$iv$iv":I
    if-eqz v15, :cond_6

    goto :goto_7

    .line 780
    .end local v13    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv$iv$iv":I
    :cond_6
    nop

    .line 778
    .end local v7    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 782
    .end local v5    # "index$iv$iv$iv$iv":I
    :cond_7
    nop

    .line 783
    .end local v1    # "$this$fastForEach$iv$iv$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    const/4 v13, 0x0

    .line 776
    .end local v3    # "$i$f$fastFirstOrNull":I
    :goto_7
    move-object v1, v13

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 784
    .local v1, "otherDown$iv$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-nez v1, :cond_8

    .line 786
    .end local v8    # "pointer$iv$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v9    # "$this$awaitDragOrUp_u2djO51t88$iv$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    goto :goto_8

    .line 788
    .restart local v8    # "pointer$iv$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v9    # "$this$awaitDragOrUp_u2djO51t88$iv$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v3

    iput-wide v3, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .end local v1    # "otherDown$iv$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    goto :goto_c

    .line 790
    :cond_9
    invoke-interface {v12, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 791
    .end local v8    # "pointer$iv$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v9    # "$this$awaitDragOrUp_u2djO51t88$iv$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    nop

    .line 761
    .end local v2    # "dragEvent$iv$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local p3    # "$i$f$awaitDragOrUp-jO51t88":I
    :goto_8
    if-nez v2, :cond_a

    move-object/from16 v2, p0

    move-object v8, v11

    const/4 v1, 0x0

    .end local v12    # "hasDragged":Lkotlin/jvm/functions/Function1;
    goto :goto_9

    .restart local v12    # "hasDragged":Lkotlin/jvm/functions/Function1;
    :cond_a
    move-object v1, v2

    .line 792
    .local v1, "change$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    nop

    .local v2, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v3, 0x0

    .line 644
    .local v3, "$i$a$-drag-VnAYq1g-DraggableKt$onDragOrUp$2":I
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v2

    .line 792
    .end local v2    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v3    # "$i$a$-drag-VnAYq1g-DraggableKt$onDragOrUp$2":I
    if-eqz v2, :cond_b

    .line 793
    .end local v12    # "hasDragged":Lkotlin/jvm/functions/Function1;
    move-object/from16 v2, p0

    move-object v8, v11

    const/4 v1, 0x0

    goto :goto_9

    .line 796
    .restart local v12    # "hasDragged":Lkotlin/jvm/functions/Function1;
    :cond_b
    invoke-static {v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 797
    .end local v12    # "hasDragged":Lkotlin/jvm/functions/Function1;
    move-object/from16 v2, p0

    move-object v8, v11

    .line 640
    .end local v1    # "change$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v10    # "$this$drag_u2dVnAYq1g$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v11    # "onDrag":Lkotlin/jvm/functions/Function1;
    .end local p0    # "$result":Ljava/lang/Object;
    .end local p2    # "$i$f$drag-VnAYq1g":I
    .local v2, "$result":Ljava/lang/Object;
    .local v8, "onDrag":Lkotlin/jvm/functions/Function1;
    :goto_9
    nop

    .line 645
    if-eqz v1, :cond_c

    .line 640
    nop

    .line 645
    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v8    # "onDrag":Lkotlin/jvm/functions/Function1;
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_a

    .restart local v8    # "onDrag":Lkotlin/jvm/functions/Function1;
    :cond_c
    const/4 v5, 0x0

    .end local v8    # "onDrag":Lkotlin/jvm/functions/Function1;
    :goto_a
    if-eqz v5, :cond_d

    const/4 v4, 0x1

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    :goto_b
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 640
    return-object v1

    .line 800
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v1    # "change$iv":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .restart local v10    # "$this$drag_u2dVnAYq1g$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v11    # "onDrag":Lkotlin/jvm/functions/Function1;
    .restart local v12    # "hasDragged":Lkotlin/jvm/functions/Function1;
    .restart local p0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$i$f$drag-VnAYq1g":I
    :cond_e
    invoke-interface {v11, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v1

    move-object v3, v10

    move-object v8, v11

    move-object v9, v12

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v10, p2

    move-wide v11, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .local v1, "pointer$iv":J
    goto/16 :goto_1

    .line 763
    .end local v1    # "pointer$iv":J
    .local v8, "pointer$iv$iv":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v9    # "$this$awaitDragOrUp_u2djO51t88$iv$iv":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local p3    # "$i$f$awaitDragOrUp-jO51t88":I
    :cond_f
    :goto_c
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v6, p3

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final rememberDraggableState(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/DraggableState;
    .locals 10
    .param p0, "onDelta"    # Lkotlin/jvm/functions/Function1;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/foundation/gestures/DraggableState;"
        }
    .end annotation

    const v0, -0xaec199d

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberDraggableState)142@6209L29,143@6250L61:Draggable.kt#8bwon0"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.gestures.rememberDraggableState (Draggable.kt:141)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 143
    :cond_0
    and-int/lit8 v0, p2, 0xe

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 144
    .local v0, "onDeltaState":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, -0x1d58f75c

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 681
    const/4 v3, 0x0

    .local v3, "invalid$iv$iv":Z
    move-object v4, p1

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 682
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 683
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_1

    .line 684
    const/4 v8, 0x0

    .line 144
    .local v8, "$i$a$-remember-DraggableKt$rememberDraggableState$1":I
    new-instance v9, Landroidx/compose/foundation/gestures/DraggableKt$rememberDraggableState$1$1;

    invoke-direct {v9, v0}, Landroidx/compose/foundation/gestures/DraggableKt$rememberDraggableState$1$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v9}, Landroidx/compose/foundation/gestures/DraggableKt;->DraggableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v8

    .line 684
    .end local v8    # "$i$a$-remember-DraggableKt$rememberDraggableState$1":I
    nop

    .line 685
    .local v8, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 686
    nop

    .end local v8    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 687
    :cond_1
    move-object v8, v6

    .line 683
    :goto_0
    nop

    .line 682
    .end local v6    # "it$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 681
    .end local v3    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 144
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$remember":I
    check-cast v8, Landroidx/compose/foundation/gestures/DraggableState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v8
.end method

.method private static final toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 1
    .param p0, "$this$toFloat_u2d3MmeM6k"    # J
    .param p2, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;

    .line 676
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    :goto_0
    return v0
.end method

.method private static final toFloat-sF-c-tU(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 1
    .param p0, "$this$toFloat_u2dsF_u2dc_u2dtU"    # J
    .param p2, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;

    .line 679
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v0

    :goto_0
    return v0
.end method
