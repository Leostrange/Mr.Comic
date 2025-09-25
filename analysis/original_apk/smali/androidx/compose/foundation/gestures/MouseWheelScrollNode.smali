.class final Landroidx/compose/foundation/gestures/MouseWheelScrollNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\rH\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/MouseWheelScrollNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "scrollingLogic",
        "Landroidx/compose/foundation/gestures/ScrollingLogic;",
        "(Landroidx/compose/foundation/gestures/ScrollingLogic;)V",
        "scrollConfig",
        "Landroidx/compose/foundation/gestures/ScrollConfig;",
        "getScrollConfig",
        "()Landroidx/compose/foundation/gestures/ScrollConfig;",
        "setScrollConfig",
        "(Landroidx/compose/foundation/gestures/ScrollConfig;)V",
        "onAttach",
        "",
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
.field private scrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

.field private final scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;)V
    .locals 2
    .param p1, "scrollingLogic"    # Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 658
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 657
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 667
    nop

    .line 668
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollNode$1;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollNode;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->SuspendingPointerInputModifierNode(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 695
    nop

    .line 656
    return-void
.end method

.method public static final synthetic access$getScrollingLogic$p(Landroidx/compose/foundation/gestures/MouseWheelScrollNode;)Landroidx/compose/foundation/gestures/ScrollingLogic;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/MouseWheelScrollNode;

    .line 656
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    return-object v0
.end method


# virtual methods
.method public final getScrollConfig()Landroidx/compose/foundation/gestures/ScrollConfig;
    .locals 1

    .line 661
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->scrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    return-object v0
.end method

.method public onAttach()V
    .locals 1

    .line 664
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/AndroidScrollable_androidKt;->platformScrollConfig(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;)Landroidx/compose/foundation/gestures/ScrollConfig;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->scrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    .line 665
    return-void
.end method

.method public final setScrollConfig(Landroidx/compose/foundation/gestures/ScrollConfig;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/gestures/ScrollConfig;

    .line 661
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollNode;->scrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    return-void
.end method
