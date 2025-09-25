.class public abstract Landroidx/compose/foundation/gestures/AbstractDraggableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Draggable.kt"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008 \u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u00bd\u0001\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000c\u0012<\u0010\r\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u000e\u00a2\u0006\u0002\u0008\u0017\u0012<\u0010\u0018\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u000e\u00a2\u0006\u0002\u0008\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u001cJ\u0006\u0010H\u001a\u00020\u0015J7\u0010I\u001a\u00020\u00152\'\u0010J\u001a#\u0008\u0001\u0012\u0004\u0012\u00020L\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00160K\u00a2\u0006\u0002\u0008\u0017H\u00a6@\u00a2\u0006\u0002\u0010MJ\u0008\u0010N\u001a\u00020\u0015H\u0016J\u0008\u0010O\u001a\u00020\u0015H\u0016J*\u0010P\u001a\u00020\u00152\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020VH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008W\u0010XJ\u0008\u0010Y\u001a\u00020\u0015H\u0002J\u001a\u0010Z\u001a\u00020\u0015*\u00020L2\u0006\u0010[\u001a\u00020\\H\u00a6@\u00a2\u0006\u0002\u0010]J\u0012\u0010^\u001a\u00020\u0015*\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010_J\u001a\u0010`\u001a\u00020\u0015*\u00020\u000f2\u0006\u0010a\u001a\u00020bH\u0082@\u00a2\u0006\u0002\u0010cJ\u001a\u0010d\u001a\u00020\u0015*\u00020\u000f2\u0006\u0010a\u001a\u00020eH\u0082@\u00a2\u0006\u0002\u0010fR\u001a\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u000e\u00100\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000RR\u0010\r\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u000e\u00a2\u0006\u0002\u0008\u0017X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00105\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104RR\u0010\u0018\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u000e\u00a2\u0006\u0002\u0008\u0017X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00105\u001a\u0004\u00086\u00102\"\u0004\u00087\u00104R\u0012\u00108\u001a\u000209X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u0011\u0010<\u001a\u00020=\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010?R\u001a\u0010\u001b\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010)\"\u0004\u0008A\u0010+R \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u000e\u0010F\u001a\u00020GX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006g"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/AbstractDraggableNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/PointerInputModifierNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "canDrag",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "",
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
        "(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V",
        "_canDrag",
        "_startDragImmediately",
        "getCanDrag",
        "()Lkotlin/jvm/functions/Function1;",
        "setCanDrag",
        "(Lkotlin/jvm/functions/Function1;)V",
        "channel",
        "Lkotlinx/coroutines/channels/Channel;",
        "Landroidx/compose/foundation/gestures/DragEvent;",
        "dragInteraction",
        "Landroidx/compose/foundation/interaction/DragInteraction$Start;",
        "getEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
        "getInteractionSource",
        "()Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "setInteractionSource",
        "(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V",
        "isListeningForEvents",
        "getOnDragStarted",
        "()Lkotlin/jvm/functions/Function3;",
        "setOnDragStarted",
        "(Lkotlin/jvm/functions/Function3;)V",
        "Lkotlin/jvm/functions/Function3;",
        "getOnDragStopped",
        "setOnDragStopped",
        "pointerDirectionConfig",
        "Landroidx/compose/foundation/gestures/PointerDirectionConfig;",
        "getPointerDirectionConfig",
        "()Landroidx/compose/foundation/gestures/PointerDirectionConfig;",
        "pointerInputNode",
        "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;",
        "getPointerInputNode",
        "()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;",
        "getReverseDirection",
        "setReverseDirection",
        "getStartDragImmediately",
        "()Lkotlin/jvm/functions/Function0;",
        "setStartDragImmediately",
        "(Lkotlin/jvm/functions/Function0;)V",
        "velocityTracker",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
        "disposeInteractionSource",
        "drag",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/gestures/AbstractDragScope;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onCancelPointerInput",
        "onDetach",
        "onPointerEvent",
        "pointerEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "pass",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "bounds",
        "Landroidx/compose/ui/unit/IntSize;",
        "onPointerEvent-H0pRuoY",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V",
        "startListeningForEvents",
        "draggingBy",
        "dragDelta",
        "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;",
        "(Landroidx/compose/foundation/gestures/AbstractDragScope;Landroidx/compose/foundation/gestures/DragEvent$DragDelta;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processDragCancel",
        "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processDragStart",
        "event",
        "Landroidx/compose/foundation/gestures/DragEvent$DragStarted;",
        "(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processDragStop",
        "Landroidx/compose/foundation/gestures/DragEvent$DragStopped;",
        "(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final _canDrag:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _startDragImmediately:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private canDrag:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final channel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

.field private enabled:Z

.field private interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private isListeningForEvents:Z

.field private onDragStarted:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
            ">;"
        }
    .end annotation
.end field

.field private onDragStopped:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
            ">;"
        }
    .end annotation
.end field

.field private final pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

.field private reverseDirection:Z

.field private startDragImmediately:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->$stable:I

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
    .locals 3
    .param p1, "canDrag"    # Lkotlin/jvm/functions/Function1;
    .param p2, "enabled"    # Z
    .param p3, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p4, "startDragImmediately"    # Lkotlin/jvm/functions/Function0;
    .param p5, "onDragStarted"    # Lkotlin/jvm/functions/Function3;
    .param p6, "onDragStopped"    # Lkotlin/jvm/functions/Function3;
    .param p7, "reverseDirection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;Z",
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

    .line 393
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 386
    iput-object p1, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 387
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->enabled:Z

    .line 388
    iput-object p3, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 389
    iput-object p4, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    .line 390
    iput-object p5, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 391
    iput-object p6, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 392
    iput-boolean p7, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->reverseDirection:Z

    .line 397
    new-instance v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$_canDrag$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/AbstractDraggableNode$_canDrag$1;-><init>(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->_canDrag:Lkotlin/jvm/functions/Function1;

    .line 398
    new-instance v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$_startDragImmediately$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/AbstractDraggableNode$_startDragImmediately$1;-><init>(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->_startDragImmediately:Lkotlin/jvm/functions/Function0;

    .line 399
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 453
    new-instance v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/AbstractDraggableNode$pointerInputNode$1;-><init>(Landroidx/compose/foundation/gestures/AbstractDraggableNode;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->SuspendingPointerInputModifierNode(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 514
    const v0, 0x7fffffff

    const/4 v2, 0x6

    invoke-static {v0, v1, v1, v2, v1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->channel:Lkotlinx/coroutines/channels/Channel;

    .line 385
    return-void
.end method

.method public static final synthetic access$getChannel$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Lkotlinx/coroutines/channels/Channel;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    .line 385
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->channel:Lkotlinx/coroutines/channels/Channel;

    return-object v0
.end method

.method public static final synthetic access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    .line 385
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    return-object v0
.end method

.method public static final synthetic access$get_canDrag$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    .line 385
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->_canDrag:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$get_startDragImmediately$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    .line 385
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->_startDragImmediately:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$isListeningForEvents$p(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    .line 385
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->isListeningForEvents:Z

    return v0
.end method

.method public static final synthetic access$processDragCancel(Landroidx/compose/foundation/gestures/AbstractDraggableNode;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    .param p1, "$receiver"    # Lkotlinx/coroutines/CoroutineScope;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 385
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->processDragCancel(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processDragStart(Landroidx/compose/foundation/gestures/AbstractDraggableNode;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    .param p1, "$receiver"    # Lkotlinx/coroutines/CoroutineScope;
    .param p2, "event"    # Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 385
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->processDragStart(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processDragStop(Landroidx/compose/foundation/gestures/AbstractDraggableNode;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    .param p1, "$receiver"    # Lkotlinx/coroutines/CoroutineScope;
    .param p2, "event"    # Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 385
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->processDragStop(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$startListeningForEvents(Landroidx/compose/foundation/gestures/AbstractDraggableNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    .line 385
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->startListeningForEvents()V

    return-void
.end method

.method private final processDragCancel(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
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

    instance-of v0, p2, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/AbstractDraggableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 552
    iget v2, p2, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    const/4 p1, 0x0

    .local p1, "$i$a$-let-AbstractDraggableNode$processDragCancel$2":I
    iget-object v2, p2, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .local v2, "$this$processDragCancel":Lkotlinx/coroutines/CoroutineScope;
    iget-object v4, p2, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    .local v4, "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "$this$processDragCancel":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    .end local p1    # "$i$a$-let-AbstractDraggableNode$processDragCancel$2":I
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    .restart local v4    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    move-object v2, p1

    .line 553
    .restart local v2    # "$this$processDragCancel":Lkotlinx/coroutines/CoroutineScope;
    iget-object p1, v4, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p1, :cond_3

    .local p1, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    const/4 v5, 0x0

    .line 554
    .local v5, "$i$a$-let-AbstractDraggableNode$processDragCancel$2":I
    iget-object v6, v4, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v6, :cond_2

    new-instance v7, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v7, p1}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v7, Landroidx/compose/foundation/interaction/Interaction;

    iput-object v4, p2, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, p2, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->label:I

    invoke-interface {v6, v7, p2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    if-ne p1, v1, :cond_1

    .line 552
    return-object v1

    .line 554
    :cond_1
    move p1, v5

    .end local v5    # "$i$a$-let-AbstractDraggableNode$processDragCancel$2":I
    .local p1, "$i$a$-let-AbstractDraggableNode$processDragCancel$2":I
    :goto_1
    move v5, p1

    nop

    .line 555
    .end local p1    # "$i$a$-let-AbstractDraggableNode$processDragCancel$2":I
    .restart local v5    # "$i$a$-let-AbstractDraggableNode$processDragCancel$2":I
    :cond_2
    iput-object v3, v4, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 556
    nop

    .line 553
    .end local v5    # "$i$a$-let-AbstractDraggableNode$processDragCancel$2":I
    nop

    .line 557
    :cond_3
    iget-object p1, v4, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    sget-object v5, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v5

    iput-object v3, p2, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p2, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragCancel$1;->label:I

    invoke-interface {p1, v2, v5, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "$this$processDragCancel":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    if-ne p1, v1, :cond_4

    .line 552
    return-object v1

    .line 558
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final processDragStart(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/foundation/gestures/DragEvent$DragStarted;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/AbstractDraggableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 534
    iget v2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object p1, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$3:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .local p1, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    iget-object p2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .local p2, "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    iget-object v2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .local v2, "$this$processDragStart":Lkotlinx/coroutines/CoroutineScope;
    iget-object v3, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    .local v3, "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "$this$processDragStart":Lkotlinx/coroutines/CoroutineScope;
    .end local v3    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    .end local p1    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .end local p2    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    :pswitch_2
    const/4 p1, 0x0

    .local p1, "$i$a$-let-AbstractDraggableNode$processDragStart$2":I
    iget-object p2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .restart local p2    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    iget-object v2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .restart local v2    # "$this$processDragStart":Lkotlinx/coroutines/CoroutineScope;
    iget-object v3, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    .restart local v3    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "$this$processDragStart":Lkotlinx/coroutines/CoroutineScope;
    .end local v3    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    .end local p1    # "$i$a$-let-AbstractDraggableNode$processDragStart$2":I
    .end local p2    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .restart local v3    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    .restart local p2    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    move-object v2, p1

    .line 535
    .restart local v2    # "$this$processDragStart":Lkotlinx/coroutines/CoroutineScope;
    iget-object p1, v3, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p1, :cond_2

    .local p1, "oldInteraction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    const/4 v4, 0x0

    .line 536
    .local v4, "$i$a$-let-AbstractDraggableNode$processDragStart$2":I
    iget-object v5, v3, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v5, :cond_2

    new-instance v6, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v6, p1}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    iput-object v3, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object v2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput-object p2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->label:I

    invoke-interface {v5, v6, p3}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "oldInteraction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    if-ne p1, v1, :cond_1

    .line 534
    return-object v1

    .line 536
    :cond_1
    move p1, v4

    .end local v4    # "$i$a$-let-AbstractDraggableNode$processDragStart$2":I
    .local p1, "$i$a$-let-AbstractDraggableNode$processDragStart$2":I
    :goto_1
    nop

    .line 535
    .end local p1    # "$i$a$-let-AbstractDraggableNode$processDragStart$2":I
    :cond_2
    nop

    .line 538
    new-instance p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-direct {p1}, Landroidx/compose/foundation/interaction/DragInteraction$Start;-><init>()V

    .line 539
    .local p1, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    iget-object v4, v3, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v4, :cond_3

    move-object v5, p1

    check-cast v5, Landroidx/compose/foundation/interaction/Interaction;

    iput-object v3, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object v2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput-object p2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    iput-object p1, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->label:I

    invoke-interface {v4, v5, p3}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    .line 534
    return-object v1

    .line 539
    :cond_3
    :goto_2
    nop

    .line 540
    iput-object p1, v3, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 541
    .end local p1    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    iget-object p1, v3, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p2}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;->getStartPoint-F1C5BW0()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object v5, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput-object v5, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    iput-object v5, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->L$3:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStart$1;->label:I

    invoke-interface {p1, v2, v4, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "$this$processDragStart":Lkotlinx/coroutines/CoroutineScope;
    .end local v3    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    .end local p2    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    if-ne p1, v1, :cond_4

    .line 534
    return-object v1

    .line 542
    :cond_4
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final processDragStop(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/foundation/gestures/DragEvent$DragStopped;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/AbstractDraggableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 544
    iget v2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    const/4 p1, 0x0

    .local p1, "$i$a$-let-AbstractDraggableNode$processDragStop$2":I
    iget-object p2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->L$2:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .local p2, "event":Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
    iget-object v2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .local v2, "$this$processDragStop":Lkotlinx/coroutines/CoroutineScope;
    iget-object v4, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/AbstractDraggableNode;

    .local v4, "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "$this$processDragStop":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    .end local p1    # "$i$a$-let-AbstractDraggableNode$processDragStop$2":I
    .end local p2    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    .restart local v4    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    .restart local p2    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
    move-object v2, p1

    .line 545
    .restart local v2    # "$this$processDragStop":Lkotlinx/coroutines/CoroutineScope;
    iget-object p1, v4, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p1, :cond_3

    .local p1, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    const/4 v5, 0x0

    .line 546
    .local v5, "$i$a$-let-AbstractDraggableNode$processDragStop$2":I
    iget-object v6, v4, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v6, :cond_2

    new-instance v7, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    invoke-direct {v7, p1}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v7, Landroidx/compose/foundation/interaction/Interaction;

    iput-object v4, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->L$0:Ljava/lang/Object;

    iput-object v2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->L$1:Ljava/lang/Object;

    iput-object p2, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->L$2:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->label:I

    invoke-interface {v6, v7, p3}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    if-ne p1, v1, :cond_1

    .line 544
    return-object v1

    .line 546
    :cond_1
    move p1, v5

    .end local v5    # "$i$a$-let-AbstractDraggableNode$processDragStop$2":I
    .local p1, "$i$a$-let-AbstractDraggableNode$processDragStop$2":I
    :goto_1
    move v5, p1

    nop

    .line 547
    .end local p1    # "$i$a$-let-AbstractDraggableNode$processDragStop$2":I
    .restart local v5    # "$i$a$-let-AbstractDraggableNode$processDragStop$2":I
    :cond_2
    iput-object v3, v4, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 548
    nop

    .line 545
    .end local v5    # "$i$a$-let-AbstractDraggableNode$processDragStop$2":I
    nop

    .line 549
    :cond_3
    iget-object p1, v4, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p2}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->getVelocity-9UxMQ8M()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v5

    iput-object v3, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->L$0:Ljava/lang/Object;

    iput-object v3, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->L$1:Ljava/lang/Object;

    iput-object v3, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->L$2:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p3, Landroidx/compose/foundation/gestures/AbstractDraggableNode$processDragStop$1;->label:I

    invoke-interface {p1, v2, v5, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "$this$processDragStop":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "this":Landroidx/compose/foundation/gestures/AbstractDraggableNode;
    .end local p2    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
    if-ne p1, v1, :cond_4

    .line 544
    return-object v1

    .line 550
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final startListeningForEvents()V
    .locals 7

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->isListeningForEvents:Z

    .line 429
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroidx/compose/foundation/gestures/AbstractDraggableNode$startListeningForEvents$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroidx/compose/foundation/gestures/AbstractDraggableNode$startListeningForEvents$1;-><init>(Landroidx/compose/foundation/gestures/AbstractDraggableNode;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 451
    return-void
.end method


# virtual methods
.method public final disposeInteractionSource()V
    .locals 4

    .line 561
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v0, :cond_1

    .local v0, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    const/4 v1, 0x0

    .line 562
    .local v1, "$i$a$-let-AbstractDraggableNode$disposeInteractionSource$1":I
    iget-object v2, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_0

    new-instance v3, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v3, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v2, v3}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 563
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 564
    nop

    .line 561
    .end local v0    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .end local v1    # "$i$a$-let-AbstractDraggableNode$disposeInteractionSource$1":I
    nop

    .line 565
    :cond_1
    return-void
.end method

.method public abstract drag(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract draggingBy(Landroidx/compose/foundation/gestures/AbstractDragScope;Landroidx/compose/foundation/gestures/DragEvent$DragDelta;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public final getCanDrag()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->enabled:Z

    return v0
.end method

.method public final getInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1

    .line 388
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object v0
.end method

.method public final getOnDragStarted()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getOnDragStopped()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/unit/Velocity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public abstract getPointerDirectionConfig()Landroidx/compose/foundation/gestures/PointerDirectionConfig;
.end method

.method public final getPointerInputNode()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;
    .locals 1

    .line 453
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    return-object v0
.end method

.method public final getReverseDirection()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->reverseDirection:Z

    return v0
.end method

.method public final getStartDragImmediately()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public onCancelPointerInput()V
    .locals 1

    .line 531
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->onCancelPointerInput()V

    .line 532
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->isListeningForEvents:Z

    .line 519
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->disposeInteractionSource()V

    .line 520
    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "bounds"    # J

    .line 527
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 528
    return-void
.end method

.method public final setCanDrag(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 386
    iput-object p1, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 387
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->enabled:Z

    return-void
.end method

.method public final setInteractionSource(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 388
    iput-object p1, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-void
.end method

.method public final setOnDragStarted(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    .line 390
    iput-object p1, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final setOnDragStopped(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    .line 391
    iput-object p1, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final setReverseDirection(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 392
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->reverseDirection:Z

    return-void
.end method

.method public final setStartDragImmediately(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Landroidx/compose/foundation/gestures/AbstractDraggableNode;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    return-void
.end method
