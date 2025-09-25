.class final Landroidx/compose/foundation/gestures/ScrollDraggableState;
.super Ljava/lang/Object;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/DraggableState;
.implements Landroidx/compose/foundation/gestures/DragScope;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScrollable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scrollable.kt\nandroidx/compose/foundation/gestures/ScrollDraggableState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1021:1\n1#2:1022\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J?\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\'\u0010\u0016\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0017\u00a2\u0006\u0002\u0008\u001aH\u0096@\u00a2\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u0012H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u0005\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/ScrollDraggableState;",
        "Landroidx/compose/foundation/gestures/DraggableState;",
        "Landroidx/compose/foundation/gestures/DragScope;",
        "scrollLogic",
        "Landroidx/compose/foundation/gestures/ScrollingLogic;",
        "(Landroidx/compose/foundation/gestures/ScrollingLogic;)V",
        "latestScrollScope",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "getLatestScrollScope",
        "()Landroidx/compose/foundation/gestures/ScrollScope;",
        "setLatestScrollScope",
        "(Landroidx/compose/foundation/gestures/ScrollScope;)V",
        "getScrollLogic",
        "()Landroidx/compose/foundation/gestures/ScrollingLogic;",
        "setScrollLogic",
        "dispatchRawDelta",
        "",
        "delta",
        "",
        "drag",
        "dragPriority",
        "Landroidx/compose/foundation/MutatePriority;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dragBy",
        "pixels",
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
.field private latestScrollScope:Landroidx/compose/foundation/gestures/ScrollScope;

.field private scrollLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;)V
    .locals 1
    .param p1, "scrollLogic"    # Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollDraggableState;->scrollLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 881
    invoke-static {}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$getNoOpScrollScope$p()Landroidx/compose/foundation/gestures/ScrollScope;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollDraggableState;->latestScrollScope:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 878
    return-void
.end method


# virtual methods
.method public dispatchRawDelta(F)V
    .locals 4
    .param p1, "delta"    # F

    .line 899
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollDraggableState;->scrollLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1022
    .local v0, "$this$dispatchRawDelta_u24lambda_u242":Landroidx/compose/foundation/gestures/ScrollingLogic;
    const/4 v1, 0x0

    .line 899
    .local v1, "$i$a$-with-ScrollDraggableState$dispatchRawDelta$1":I
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->performRawScroll-MK-Hz9U(J)J

    .line 900
    .end local v0    # "$this$dispatchRawDelta_u24lambda_u242":Landroidx/compose/foundation/gestures/ScrollingLogic;
    .end local v1    # "$i$a$-with-ScrollDraggableState$dispatchRawDelta$1":I
    return-void
.end method

.method public drag(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "dragPriority"    # Landroidx/compose/foundation/MutatePriority;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/gestures/DragScope;",
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

    .line 892
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollDraggableState;->scrollLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->getScrollableState()Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/gestures/ScrollDraggableState$drag$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroidx/compose/foundation/gestures/ScrollDraggableState$drag$2;-><init>(Landroidx/compose/foundation/gestures/ScrollDraggableState;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, v1, p3}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 896
    return-object v0
.end method

.method public dragBy(F)V
    .locals 7
    .param p1, "pixels"    # F

    .line 884
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollDraggableState;->scrollLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .local v0, "$this$dragBy_u24lambda_u241":Landroidx/compose/foundation/gestures/ScrollingLogic;
    const/4 v1, 0x0

    .line 885
    .local v1, "$i$a$-with-ScrollDraggableState$dragBy$1":I
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollDraggableState;->latestScrollScope:Landroidx/compose/foundation/gestures/ScrollScope;

    .local v2, "$this$dragBy_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/gestures/ScrollScope;
    const/4 v3, 0x0

    .line 886
    .local v3, "$i$a$-with-ScrollDraggableState$dragBy$1$1":I
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide v4

    sget-object v6, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getDrag-WNlRxjI()I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroidx/compose/foundation/gestures/ScrollingLogic;->dispatchScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    .line 885
    .end local v2    # "$this$dragBy_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/gestures/ScrollScope;
    .end local v3    # "$i$a$-with-ScrollDraggableState$dragBy$1$1":I
    nop

    .line 884
    .end local v0    # "$this$dragBy_u24lambda_u241":Landroidx/compose/foundation/gestures/ScrollingLogic;
    .end local v1    # "$i$a$-with-ScrollDraggableState$dragBy$1":I
    nop

    .line 889
    return-void
.end method

.method public final getLatestScrollScope()Landroidx/compose/foundation/gestures/ScrollScope;
    .locals 1

    .line 881
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollDraggableState;->latestScrollScope:Landroidx/compose/foundation/gestures/ScrollScope;

    return-object v0
.end method

.method public final getScrollLogic()Landroidx/compose/foundation/gestures/ScrollingLogic;
    .locals 1

    .line 879
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollDraggableState;->scrollLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    return-object v0
.end method

.method public final setLatestScrollScope(Landroidx/compose/foundation/gestures/ScrollScope;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/gestures/ScrollScope;

    .line 881
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollDraggableState;->latestScrollScope:Landroidx/compose/foundation/gestures/ScrollScope;

    return-void
.end method

.method public final setScrollLogic(Landroidx/compose/foundation/gestures/ScrollingLogic;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 879
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollDraggableState;->scrollLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    return-void
.end method
