.class final Landroidx/compose/foundation/CombinedClickablePointerInputNode;
.super Landroidx/compose/foundation/AbstractClickablePointerInputNode;
.source "Clickable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClickable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/CombinedClickablePointerInputNode\n+ 2 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n*L\n1#1,1070:1\n157#2:1071\n*S KotlinDebug\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/CombinedClickablePointerInputNode\n*L\n1018#1:1071\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\rJD\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007J\u0012\u0010\u000f\u001a\u00020\u0008*\u00020\u0010H\u0094@\u00a2\u0006\u0002\u0010\u0011R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/foundation/CombinedClickablePointerInputNode;",
        "Landroidx/compose/foundation/AbstractClickablePointerInputNode;",
        "enabled",
        "",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "onClick",
        "Lkotlin/Function0;",
        "",
        "interactionData",
        "Landroidx/compose/foundation/AbstractClickableNode$InteractionData;",
        "onLongClick",
        "onDoubleClick",
        "(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "update",
        "pointerInput",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private onDoubleClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onLongClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p3, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p4, "interactionData"    # Landroidx/compose/foundation/AbstractClickableNode$InteractionData;
    .param p5, "onLongClick"    # Lkotlin/jvm/functions/Function0;
    .param p6, "onDoubleClick"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/AbstractClickableNode$InteractionData;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1011
    nop

    .line 1012
    nop

    .line 1013
    nop

    .line 1014
    nop

    .line 1015
    const/4 v5, 0x0

    .line 1011
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/AbstractClickablePointerInputNode;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1009
    iput-object p5, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onLongClick:Lkotlin/jvm/functions/Function0;

    .line 1010
    iput-object p6, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onDoubleClick:Lkotlin/jvm/functions/Function0;

    .line 1004
    return-void
.end method

.method public static final synthetic access$getOnDoubleClick$p(Landroidx/compose/foundation/CombinedClickablePointerInputNode;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/CombinedClickablePointerInputNode;

    .line 1004
    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onDoubleClick:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$getOnLongClick$p(Landroidx/compose/foundation/CombinedClickablePointerInputNode;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/CombinedClickablePointerInputNode;

    .line 1004
    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onLongClick:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method


# virtual methods
.method protected pointerInput(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "$this$pointerInput"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1018
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->getInteractionData()Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/PointerInputScope;->getSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->getCenter-ozmzZPI(J)J

    move-result-wide v1

    .local v1, "$this$toOffset_u2d_u2dgyyYBs$iv":J
    const/4 v3, 0x0

    .line 1071
    .local v3, "$i$f$toOffset--gyyYBs":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v1

    .line 1018
    .end local v1    # "$this$toOffset_u2d_u2dgyyYBs$iv":J
    .end local v3    # "$i$f$toOffset--gyyYBs":I
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->setCentreOffset-k-4lQ0M(J)V

    .line 1019
    nop

    .line 1020
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onDoubleClick:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    .line 1019
    new-instance v0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$2;-><init>(Landroidx/compose/foundation/CombinedClickablePointerInputNode;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v3, v0

    goto :goto_0

    .line 1022
    :cond_0
    move-object v3, v1

    .line 1023
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onLongClick:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    .line 1019
    new-instance v0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$3;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$3;-><init>(Landroidx/compose/foundation/CombinedClickablePointerInputNode;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v4, v0

    goto :goto_1

    .line 1025
    :cond_1
    move-object v4, v1

    .line 1019
    :goto_1
    new-instance v0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;-><init>(Landroidx/compose/foundation/CombinedClickablePointerInputNode;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function3;

    new-instance v0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$5;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$5;-><init>(Landroidx/compose/foundation/CombinedClickablePointerInputNode;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v2, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->detectTapGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1033
    return-object v0
.end method

.method public final update(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p3, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p4, "onLongClick"    # Lkotlin/jvm/functions/Function0;
    .param p5, "onDoubleClick"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1044
    invoke-virtual {p0, p3}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->setOnClick(Lkotlin/jvm/functions/Function0;)V

    .line 1045
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->setInteractionSource(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 1047
    const/4 v0, 0x0

    .line 1051
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->getEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1052
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->setEnabled(Z)V

    .line 1053
    const/4 v0, 0x1

    .line 1059
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onLongClick:Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-nez p4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-eq v1, v4, :cond_3

    .line 1060
    const/4 v0, 0x1

    .line 1062
    :cond_3
    iput-object p4, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onLongClick:Lkotlin/jvm/functions/Function0;

    .line 1063
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onDoubleClick:Lkotlin/jvm/functions/Function0;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-nez p5, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    if-eq v1, v2, :cond_6

    .line 1064
    const/4 v0, 0x1

    .line 1066
    :cond_6
    iput-object p5, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onDoubleClick:Lkotlin/jvm/functions/Function0;

    .line 1067
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->resetPointerInputHandler()V

    .line 1068
    :cond_7
    return-void
.end method
