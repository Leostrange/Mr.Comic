.class public final Landroidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1;
.super Ljava/lang/Object;
.source "Draggable.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/AbstractDragScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableNode;-><init>(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1",
        "Landroidx/compose/foundation/gestures/AbstractDragScope;",
        "dragBy",
        "",
        "pixels",
        "Landroidx/compose/ui/geometry/Offset;",
        "dragBy-k-4lQ0M",
        "(J)V",
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


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/gestures/DraggableNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/DraggableNode;)V
    .locals 0
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/DraggableNode;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragBy-k-4lQ0M(J)V
    .locals 2
    .param p1, "pixels"    # J

    .line 315
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DraggableNode;->getDragScope()Landroidx/compose/foundation/gestures/DragScope;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$abstractDragScope$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {v1}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getOrientation$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroidx/compose/foundation/gestures/DraggableKt;->access$toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/foundation/gestures/DragScope;->dragBy(F)V

    .line 316
    return-void
.end method
