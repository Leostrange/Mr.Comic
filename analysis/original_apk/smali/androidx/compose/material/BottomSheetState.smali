.class public final Landroidx/compose/material/BottomSheetState;
.super Ljava/lang/Object;
.source "BottomSheetScaffold.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/BottomSheetState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u0000 32\u00020\u0001:\u00013B5\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0010\nJ\"\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00032\u0008\u0008\u0002\u0010(\u001a\u00020\u0006H\u0080@\u00a2\u0006\u0004\u0008)\u0010*J\u000e\u0010+\u001a\u00020&H\u0086@\u00a2\u0006\u0002\u0010,J\u000e\u0010-\u001a\u00020&H\u0086@\u00a2\u0006\u0002\u0010,J\u0008\u0010.\u001a\u00020\u0013H\u0002J\u0006\u0010/\u001a\u00020\u0006J\u0018\u00100\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0003H\u0080@\u00a2\u0006\u0004\u00081\u00102R\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0019R\u001a\u0010\u001b\u001a\u00020\u00068FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020\u00068GX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008!\u0010\u001d\u001a\u0004\u0008\"\u0010\u001fR\u0011\u0010#\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0011\u00a8\u00064"
    }
    d2 = {
        "Landroidx/compose/material/BottomSheetState;",
        "",
        "initialValue",
        "Landroidx/compose/material/BottomSheetValue;",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "confirmValueChange",
        "Lkotlin/Function1;",
        "",
        "(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V",
        "anchoredDraggableState",
        "Landroidx/compose/material/AnchoredDraggableState;",
        "getAnchoredDraggableState$material_release",
        "()Landroidx/compose/material/AnchoredDraggableState;",
        "currentValue",
        "getCurrentValue",
        "()Landroidx/compose/material/BottomSheetValue;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "getDensity$material_release",
        "()Landroidx/compose/ui/unit/Density;",
        "setDensity$material_release",
        "(Landroidx/compose/ui/unit/Density;)V",
        "isCollapsed",
        "()Z",
        "isExpanded",
        "offset",
        "getOffset$annotations",
        "()V",
        "getOffset",
        "()F",
        "progress",
        "getProgress$annotations",
        "getProgress",
        "targetValue",
        "getTargetValue",
        "animateTo",
        "",
        "target",
        "velocity",
        "animateTo$material_release",
        "(Landroidx/compose/material/BottomSheetValue;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collapse",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expand",
        "requireDensity",
        "requireOffset",
        "snapTo",
        "snapTo$material_release",
        "(Landroidx/compose/material/BottomSheetValue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field public static final Companion:Landroidx/compose/material/BottomSheetState$Companion;


# instance fields
.field private final anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material/AnchoredDraggableState<",
            "Landroidx/compose/material/BottomSheetValue;",
            ">;"
        }
    .end annotation
.end field

.field private density:Landroidx/compose/ui/unit/Density;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material/BottomSheetState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material/BottomSheetState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/BottomSheetState;->Companion:Landroidx/compose/material/BottomSheetState$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "initialValue"    # Landroidx/compose/material/BottomSheetValue;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "confirmValueChange"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomSheetValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/BottomSheetValue;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This constructor is deprecated. Density must be provided by the component. Please use the constructor that provides a [Density]."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "\n            BottomSheetState(\n                initialValue = initialValue,\n                density = LocalDensity.current,\n                animationSpec = animationSpec,\n                confirmValueChange = confirmValueChange\n            )\n            "
            imports = {}
        .end subannotation
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v6, Landroidx/compose/material/AnchoredDraggableState;

    .line 146
    nop

    .line 149
    new-instance v0, Landroidx/compose/material/BottomSheetState$anchoredDraggableState$1;

    invoke-direct {v0, p0}, Landroidx/compose/material/BottomSheetState$anchoredDraggableState$1;-><init>(Landroidx/compose/material/BottomSheetState;)V

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 154
    new-instance v0, Landroidx/compose/material/BottomSheetState$anchoredDraggableState$2;

    invoke-direct {v0, p0}, Landroidx/compose/material/BottomSheetState$anchoredDraggableState$2;-><init>(Landroidx/compose/material/BottomSheetState;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 147
    nop

    .line 148
    nop

    .line 145
    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/AnchoredDraggableState;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    iput-object v6, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    .line 139
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 139
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 141
    sget-object p2, Landroidx/compose/material/AnchoredDraggableDefaults;->INSTANCE:Landroidx/compose/material/AnchoredDraggableDefaults;

    invoke-virtual {p2}, Landroidx/compose/material/AnchoredDraggableDefaults;->getAnimationSpec()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/AnimationSpec;

    .line 139
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 142
    sget-object p3, Landroidx/compose/material/BottomSheetState$1;->INSTANCE:Landroidx/compose/material/BottomSheetState$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 139
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/BottomSheetState;-><init>(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    .line 291
    return-void
.end method

.method public static final synthetic access$requireDensity(Landroidx/compose/material/BottomSheetState;)Landroidx/compose/ui/unit/Density;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/BottomSheetState;

    .line 124
    invoke-direct {p0}, Landroidx/compose/material/BottomSheetState;->requireDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic animateTo$material_release$default(Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/BottomSheetValue;FLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 232
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 234
    iget-object p2, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {p2}, Landroidx/compose/material/AnchoredDraggableState;->getLastVelocity()F

    move-result p2

    .line 232
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/BottomSheetState;->animateTo$material_release(Landroidx/compose/material/BottomSheetValue;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getOffset$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use requireOffset() to access the offset."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "requireOffset()"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static synthetic getProgress$annotations()V
    .locals 0

    return-void
.end method

.method private final requireDensity()Landroidx/compose/ui/unit/Density;
    .locals 3

    .line 240
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->density:Landroidx/compose/ui/unit/Density;

    if-eqz v0, :cond_0

    .line 243
    return-object v0

    .line 240
    :cond_0
    const/4 v0, 0x0

    .line 241
    .local v0, "$i$a$-requireNotNull-BottomSheetState$requireDensity$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The density on BottomSheetState ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") was not set. Did you use BottomSheetState with the BottomSheetScaffold composable?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .end local v0    # "$i$a$-requireNotNull-BottomSheetState$requireDensity$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final animateTo$material_release(Landroidx/compose/material/BottomSheetValue;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "target"    # Landroidx/compose/material/BottomSheetValue;
    .param p2, "velocity"    # F
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomSheetValue;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-static {v0, p1, p2, p3}, Landroidx/compose/material/AnchoredDraggableKt;->animateTo(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final collapse(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 217
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    sget-object v1, Landroidx/compose/material/BottomSheetValue;->Collapsed:Landroidx/compose/material/BottomSheetValue;

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

.method public final expand(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    .line 204
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getAnchors()Landroidx/compose/material/DraggableAnchors;

    move-result-object v0

    sget-object v1, Landroidx/compose/material/BottomSheetValue;->Expanded:Landroidx/compose/material/BottomSheetValue;

    invoke-interface {v0, v1}, Landroidx/compose/material/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Landroidx/compose/material/BottomSheetValue;->Expanded:Landroidx/compose/material/BottomSheetValue;

    move-object v2, v0

    goto :goto_0

    .line 207
    :cond_0
    sget-object v0, Landroidx/compose/material/BottomSheetValue;->Collapsed:Landroidx/compose/material/BottomSheetValue;

    move-object v2, v0

    .line 204
    :goto_0
    nop

    .line 209
    .local v2, "target":Landroidx/compose/material/BottomSheetValue;
    iget-object v1, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/material/AnchoredDraggableKt;->animateTo$default(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;FLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 210
    return-object v0
.end method

.method public final getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/material/AnchoredDraggableState<",
            "Landroidx/compose/material/BottomSheetValue;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    return-object v0
.end method

.method public final getCurrentValue()Landroidx/compose/material/BottomSheetValue;
    .locals 1

    .line 165
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/BottomSheetValue;

    return-object v0
.end method

.method public final getDensity$material_release()Landroidx/compose/ui/unit/Density;
    .locals 1

    .line 239
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public final getOffset()F
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 223
    const-string/jumbo v1, "Use requireOffset() to access the offset."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getProgress()F
    .locals 1

    .line 193
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getProgress()F

    move-result v0

    return v0
.end method

.method public final getTargetValue()Landroidx/compose/material/BottomSheetValue;
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getTargetValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/BottomSheetValue;

    return-object v0
.end method

.method public final isCollapsed()Z
    .locals 2

    .line 184
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/material/BottomSheetValue;->Collapsed:Landroidx/compose/material/BottomSheetValue;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isExpanded()Z
    .locals 2

    .line 178
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/material/BottomSheetValue;->Expanded:Landroidx/compose/material/BottomSheetValue;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final requireOffset()F
    .locals 1

    .line 230
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->requireOffset()F

    move-result v0

    return v0
.end method

.method public final setDensity$material_release(Landroidx/compose/ui/unit/Density;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/unit/Density;

    .line 239
    iput-object p1, p0, Landroidx/compose/material/BottomSheetState;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public final snapTo$material_release(Landroidx/compose/material/BottomSheetValue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "target"    # Landroidx/compose/material/BottomSheetValue;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomSheetValue;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Landroidx/compose/material/BottomSheetState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    invoke-static {v0, p1, p2}, Landroidx/compose/material/AnchoredDraggableKt;->snapTo(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
