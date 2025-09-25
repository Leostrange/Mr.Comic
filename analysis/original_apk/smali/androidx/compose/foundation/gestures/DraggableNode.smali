.class public final Landroidx/compose/foundation/gestures/DraggableNode;
.super Landroidx/compose/foundation/gestures/AbstractDraggableNode;
.source "Draggable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008b\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001 \u0008\u0000\u0018\u00002\u00020\u0001B\u00cd\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000e\u0012<\u0010\u000f\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0010\u00a2\u0006\u0002\u0008\u0019\u0012<\u0010\u001a\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u0011\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0010\u00a2\u0006\u0002\u0008\u0019\u0012\u0006\u0010\u001d\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u001eJ7\u0010,\u001a\u00020\u00172\'\u0010-\u001a#\u0008\u0001\u0012\u0004\u0012\u00020/\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00180.\u00a2\u0006\u0002\u0008\u0019H\u0096@\u00a2\u0006\u0002\u00100J\u00d3\u0001\u00101\u001a\u00020\u00172\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000e2<\u0010\u000f\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0010\u00a2\u0006\u0002\u0008\u00192<\u0010\u001a\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u0011\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0010\u00a2\u0006\u0002\u0008\u00192\u0006\u0010\u001d\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u001eJ\u001a\u00102\u001a\u00020\u0017*\u00020/2\u0006\u00103\u001a\u000204H\u0096@\u00a2\u0006\u0002\u00105R\u0010\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010!R\u001a\u0010\"\u001a\u00020#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u00020)X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/DraggableNode;",
        "Landroidx/compose/foundation/gestures/AbstractDraggableNode;",
        "state",
        "Landroidx/compose/foundation/gestures/DraggableState;",
        "canDrag",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "enabled",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "startDragImmediately",
        "Lkotlin/Function0;",
        "onDragStarted",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Lkotlin/ParameterName;",
        "name",
        "startedPosition",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "onDragStopped",
        "Landroidx/compose/ui/unit/Velocity;",
        "velocity",
        "reverseDirection",
        "(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V",
        "abstractDragScope",
        "androidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1",
        "Landroidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1;",
        "dragScope",
        "Landroidx/compose/foundation/gestures/DragScope;",
        "getDragScope",
        "()Landroidx/compose/foundation/gestures/DragScope;",
        "setDragScope",
        "(Landroidx/compose/foundation/gestures/DragScope;)V",
        "pointerDirectionConfig",
        "Landroidx/compose/foundation/gestures/PointerDirectionConfig;",
        "getPointerDirectionConfig",
        "()Landroidx/compose/foundation/gestures/PointerDirectionConfig;",
        "drag",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/gestures/AbstractDragScope;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "update",
        "draggingBy",
        "dragDelta",
        "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;",
        "(Landroidx/compose/foundation/gestures/AbstractDragScope;Landroidx/compose/foundation/gestures/DragEvent$DragDelta;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final abstractDragScope:Landroidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1;

.field private dragScope:Landroidx/compose/foundation/gestures/DragScope;

.field private orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final pointerDirectionConfig:Landroidx/compose/foundation/gestures/PointerDirectionConfig;

.field private state:Landroidx/compose/foundation/gestures/DraggableState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/DraggableNode;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
    .locals 9
    .param p1, "state"    # Landroidx/compose/foundation/gestures/DraggableState;
    .param p2, "canDrag"    # Lkotlin/jvm/functions/Function1;
    .param p3, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p4, "enabled"    # Z
    .param p5, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p6, "startDragImmediately"    # Lkotlin/jvm/functions/Function0;
    .param p7, "onDragStarted"    # Lkotlin/jvm/functions/Function3;
    .param p8, "onDragStopped"    # Lkotlin/jvm/functions/Function3;
    .param p9, "reverseDirection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
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
            "Landroidx/compose/ui/unit/Velocity;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 302
    move-object v8, p0

    .line 303
    nop

    .line 304
    nop

    .line 305
    nop

    .line 306
    nop

    .line 307
    nop

    .line 308
    nop

    .line 309
    nop

    .line 302
    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;-><init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V

    .line 293
    move-object v0, p1

    iput-object v0, v8, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 295
    move-object v1, p3

    iput-object v1, v8, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 311
    invoke-static {}, Landroidx/compose/foundation/gestures/DraggableKt;->access$getNoOpDragScope$p()Landroidx/compose/foundation/gestures/DragScope;

    move-result-object v2

    iput-object v2, v8, Landroidx/compose/foundation/gestures/DraggableNode;->dragScope:Landroidx/compose/foundation/gestures/DragScope;

    .line 313
    new-instance v2, Landroidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;)V

    iput-object v2, v8, Landroidx/compose/foundation/gestures/DraggableNode;->abstractDragScope:Landroidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1;

    .line 330
    iget-object v2, v8, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-static {v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->toPointerDirectionConfig(Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    move-result-object v2

    iput-object v2, v8, Landroidx/compose/foundation/gestures/DraggableNode;->pointerDirectionConfig:Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    .line 292
    return-void
.end method

.method public static final synthetic access$getAbstractDragScope$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/DraggableNode;

    .line 292
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->abstractDragScope:Landroidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1;

    return-object v0
.end method

.method public static final synthetic access$getOrientation$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/Orientation;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/DraggableNode;

    .line 292
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object v0
.end method


# virtual methods
.method public drag(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/gestures/AbstractDragScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    sget-object v1, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    new-instance v2, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/DraggableState;->drag(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 324
    return-object v0
.end method

.method public draggingBy(Landroidx/compose/foundation/gestures/AbstractDragScope;Landroidx/compose/foundation/gestures/DragEvent$DragDelta;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$draggingBy"    # Landroidx/compose/foundation/gestures/AbstractDragScope;
    .param p2, "dragDelta"    # Landroidx/compose/foundation/gestures/DragEvent$DragDelta;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/AbstractDragScope;",
            "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 327
    invoke-virtual {p2}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->getDelta-F1C5BW0()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Landroidx/compose/foundation/gestures/AbstractDragScope;->dragBy-k-4lQ0M(J)V

    .line 328
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final getDragScope()Landroidx/compose/foundation/gestures/DragScope;
    .locals 1

    .line 311
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragScope:Landroidx/compose/foundation/gestures/DragScope;

    return-object v0
.end method

.method public getPointerDirectionConfig()Landroidx/compose/foundation/gestures/PointerDirectionConfig;
    .locals 1

    .line 330
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->pointerDirectionConfig:Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    return-object v0
.end method

.method public final setDragScope(Landroidx/compose/foundation/gestures/DragScope;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/gestures/DragScope;

    .line 311
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragScope:Landroidx/compose/foundation/gestures/DragScope;

    return-void
.end method

.method public final update(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
    .locals 2
    .param p1, "state"    # Landroidx/compose/foundation/gestures/DraggableState;
    .param p2, "canDrag"    # Lkotlin/jvm/functions/Function1;
    .param p3, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p4, "enabled"    # Z
    .param p5, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p6, "startDragImmediately"    # Lkotlin/jvm/functions/Function0;
    .param p7, "onDragStarted"    # Lkotlin/jvm/functions/Function3;
    .param p8, "onDragStopped"    # Lkotlin/jvm/functions/Function3;
    .param p9, "reverseDirection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
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
            "Landroidx/compose/ui/unit/Velocity;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "resetPointerInputHandling":Z
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 346
    const/4 v0, 0x1

    .line 348
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/gestures/DraggableNode;->setCanDrag(Lkotlin/jvm/functions/Function1;)V

    .line 349
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v1, p3, :cond_1

    .line 350
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 351
    const/4 v0, 0x1

    .line 353
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->getEnabled()Z

    move-result v1

    if-eq v1, p4, :cond_3

    .line 354
    invoke-virtual {p0, p4}, Landroidx/compose/foundation/gestures/DraggableNode;->setEnabled(Z)V

    .line 355
    if-nez p4, :cond_2

    .line 356
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->disposeInteractionSource()V

    .line 358
    :cond_2
    const/4 v0, 0x1

    .line 360
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->getInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    invoke-static {v1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 361
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->disposeInteractionSource()V

    .line 362
    invoke-virtual {p0, p5}, Landroidx/compose/foundation/gestures/DraggableNode;->setInteractionSource(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 364
    :cond_4
    invoke-virtual {p0, p6}, Landroidx/compose/foundation/gestures/DraggableNode;->setStartDragImmediately(Lkotlin/jvm/functions/Function0;)V

    .line 365
    invoke-virtual {p0, p7}, Landroidx/compose/foundation/gestures/DraggableNode;->setOnDragStarted(Lkotlin/jvm/functions/Function3;)V

    .line 366
    invoke-virtual {p0, p8}, Landroidx/compose/foundation/gestures/DraggableNode;->setOnDragStopped(Lkotlin/jvm/functions/Function3;)V

    .line 367
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->getReverseDirection()Z

    move-result v1

    if-eq v1, p9, :cond_5

    .line 368
    invoke-virtual {p0, p9}, Landroidx/compose/foundation/gestures/DraggableNode;->setReverseDirection(Z)V

    .line 369
    const/4 v0, 0x1

    .line 371
    :cond_5
    if-eqz v0, :cond_6

    .line 372
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->getPointerInputNode()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->resetPointerInputHandler()V

    .line 374
    :cond_6
    return-void
.end method
