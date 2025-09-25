.class public final Landroidx/compose/foundation/gestures/Draggable2DNode$abstractDragScope$1;
.super Ljava/lang/Object;
.source "Draggable2D.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/AbstractDragScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/Draggable2DNode;-><init>(Landroidx/compose/foundation/gestures/Draggable2DState;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
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
        "androidx/compose/foundation/gestures/Draggable2DNode$abstractDragScope$1",
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
.field final synthetic this$0:Landroidx/compose/foundation/gestures/Draggable2DNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/Draggable2DNode;)V
    .locals 0
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/Draggable2DNode;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/Draggable2DNode$abstractDragScope$1;->this$0:Landroidx/compose/foundation/gestures/Draggable2DNode;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragBy-k-4lQ0M(J)V
    .locals 1
    .param p1, "pixels"    # J

    .line 281
    iget-object v0, p0, Landroidx/compose/foundation/gestures/Draggable2DNode$abstractDragScope$1;->this$0:Landroidx/compose/foundation/gestures/Draggable2DNode;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/Draggable2DNode;->getDrag2DScope()Landroidx/compose/foundation/gestures/Drag2DScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/compose/foundation/gestures/Drag2DScope;->dragBy-k-4lQ0M(J)V

    .line 282
    return-void
.end method
