.class public final Landroidx/compose/material/DrawerState;
.super Ljava/lang/Object;
.source "Drawer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/DrawerState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 /2\u00020\u0001:\u0001/B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J$\u0010\"\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u00032\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001a0%H\u0087@\u00a2\u0006\u0002\u0010&J\u000e\u0010\'\u001a\u00020#H\u0086@\u00a2\u0006\u0002\u0010(J\u000e\u0010)\u001a\u00020#H\u0086@\u00a2\u0006\u0002\u0010(J\u0008\u0010*\u001a\u00020\u0010H\u0002J\r\u0010+\u001a\u00020\u001aH\u0000\u00a2\u0006\u0002\u0008,J\u0016\u0010-\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u0003H\u0086@\u00a2\u0006\u0002\u0010.R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0016R\u0011\u0010\u0018\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0016R\u001a\u0010\u0019\u001a\u00020\u001a8GX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u00038GX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008 \u0010\u001c\u001a\u0004\u0008!\u0010\u000e\u00a8\u00060"
    }
    d2 = {
        "Landroidx/compose/material/DrawerState;",
        "",
        "initialValue",
        "Landroidx/compose/material/DrawerValue;",
        "confirmStateChange",
        "Lkotlin/Function1;",
        "",
        "(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;)V",
        "anchoredDraggableState",
        "Landroidx/compose/material/AnchoredDraggableState;",
        "getAnchoredDraggableState$material_release",
        "()Landroidx/compose/material/AnchoredDraggableState;",
        "currentValue",
        "getCurrentValue",
        "()Landroidx/compose/material/DrawerValue;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "getDensity$material_release",
        "()Landroidx/compose/ui/unit/Density;",
        "setDensity$material_release",
        "(Landroidx/compose/ui/unit/Density;)V",
        "isAnimationRunning",
        "()Z",
        "isClosed",
        "isOpen",
        "offset",
        "",
        "getOffset$annotations",
        "()V",
        "getOffset",
        "()F",
        "targetValue",
        "getTargetValue$annotations",
        "getTargetValue",
        "animateTo",
        "",
        "anim",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "(Landroidx/compose/material/DrawerValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "close",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "open",
        "requireDensity",
        "requireOffset",
        "requireOffset$material_release",
        "snapTo",
        "(Landroidx/compose/material/DrawerValue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "material_release"
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

.field public static final Companion:Landroidx/compose/material/DrawerState$Companion;


# instance fields
.field private final anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material/AnchoredDraggableState<",
            "Landroidx/compose/material/DrawerValue;",
            ">;"
        }
    .end annotation
.end field

.field private density:Landroidx/compose/ui/unit/Density;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material/DrawerState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material/DrawerState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/DrawerState;->Companion:Landroidx/compose/material/DrawerState$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "initialValue"    # Landroidx/compose/material/DrawerValue;
    .param p2, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DrawerValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/DrawerValue;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    nop

    .line 125
    invoke-static {}, Landroidx/compose/material/DrawerKt;->access$getAnimationSpec$p()Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    .line 123
    new-instance v7, Landroidx/compose/material/AnchoredDraggableState;

    .line 124
    nop

    .line 127
    new-instance v1, Landroidx/compose/material/DrawerState$anchoredDraggableState$1;

    invoke-direct {v1, p0}, Landroidx/compose/material/DrawerState$anchoredDraggableState$1;-><init>(Landroidx/compose/material/DrawerState;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 128
    new-instance v1, Landroidx/compose/material/DrawerState$anchoredDraggableState$2;

    invoke-direct {v1, p0}, Landroidx/compose/material/DrawerState$anchoredDraggableState$2;-><init>(Landroidx/compose/material/DrawerState;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 125
    move-object v5, v0

    check-cast v5, Landroidx/compose/animation/core/AnimationSpec;

    .line 126
    nop

    .line 123
    move-object v1, v7

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/AnchoredDraggableState;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    iput-object v7, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    .line 118
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 118
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 120
    sget-object p2, Landroidx/compose/material/DrawerState$1;->INSTANCE:Landroidx/compose/material/DrawerState$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 118
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/material/DrawerState;-><init>(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;)V

    .line 251
    return-void
.end method

.method public static final synthetic access$requireDensity(Landroidx/compose/material/DrawerState;)Landroidx/compose/ui/unit/Density;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/DrawerState;

    .line 115
    invoke-direct {p0}, Landroidx/compose/material/DrawerState;->requireDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getOffset$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTargetValue$annotations()V
    .locals 0

    return-void
.end method

.method private final requireDensity()Landroidx/compose/ui/unit/Density;
    .locals 3

    .line 236
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->density:Landroidx/compose/ui/unit/Density;

    if-eqz v0, :cond_0

    .line 239
    return-object v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 237
    .local v0, "$i$a$-requireNotNull-DrawerState$requireDensity$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The density on DrawerState ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") was not set. Did you use DrawerState with the Drawer composable?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .end local v0    # "$i$a$-requireNotNull-DrawerState$requireDensity$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final animateTo(Landroidx/compose/material/DrawerValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "targetValue"    # Landroidx/compose/material/DrawerValue;
    .param p2, "anim"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DrawerValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This method has been replaced by the open and close methods. The animation spec is now an implementation detail of ModalDrawer."
    .end annotation

    .line 197
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroidx/compose/material/AnchoredDraggableKt;->animateTo$default(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;FLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 198
    return-object v0
.end method

.method public final close(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    sget-object v1, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/material/AnchoredDraggableKt;->animateTo$default(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;FLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/material/AnchoredDraggableState<",
            "Landroidx/compose/material/DrawerValue;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    return-object v0
.end method

.method public final getCurrentValue()Landroidx/compose/material/DrawerValue;
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/DrawerValue;

    return-object v0
.end method

.method public final getDensity$material_release()Landroidx/compose/ui/unit/Density;
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public final getOffset()F
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getOffset()F

    move-result v0

    return v0
.end method

.method public final getTargetValue()Landroidx/compose/material/DrawerValue;
    .locals 1

    .line 220
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getTargetValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/DrawerValue;

    return-object v0
.end method

.method public final isAnimationRunning()Z
    .locals 1

    .line 160
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->isAnimationRunning()Z

    move-result v0

    return v0
.end method

.method public final isClosed()Z
    .locals 2

    .line 141
    invoke-virtual {p0}, Landroidx/compose/material/DrawerState;->getCurrentValue()Landroidx/compose/material/DrawerValue;

    move-result-object v0

    sget-object v1, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isOpen()Z
    .locals 2

    .line 135
    invoke-virtual {p0}, Landroidx/compose/material/DrawerState;->getCurrentValue()Landroidx/compose/material/DrawerValue;

    move-result-object v0

    sget-object v1, Landroidx/compose/material/DrawerValue;->Open:Landroidx/compose/material/DrawerValue;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final open(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    sget-object v1, Landroidx/compose/material/DrawerValue;->Open:Landroidx/compose/material/DrawerValue;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/material/AnchoredDraggableKt;->animateTo$default(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;FLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final requireOffset$material_release()F
    .locals 1

    .line 233
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->requireOffset()F

    move-result v0

    return v0
.end method

.method public final setDensity$material_release(Landroidx/compose/ui/unit/Density;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/unit/Density;

    .line 235
    iput-object p1, p0, Landroidx/compose/material/DrawerState;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public final snapTo(Landroidx/compose/material/DrawerValue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "targetValue"    # Landroidx/compose/material/DrawerValue;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DrawerValue;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-static {v0, p1, p2}, Landroidx/compose/material/AnchoredDraggableKt;->snapTo(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 207
    return-object v0
.end method
