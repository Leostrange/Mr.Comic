.class public final Landroidx/compose/animation/core/SeekableTransitionState;
.super Landroidx/compose/animation/core/TransitionState;
.source "Transition.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/animation/core/TransitionState<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0005J\u001e\u0010\u0016\u001a\u00020\u00172\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0019H\u0086@\u00a2\u0006\u0002\u0010\u001aJ\u001e\u0010\u001b\u001a\u00020\u00172\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0019H\u0086@\u00a2\u0006\u0002\u0010\u001aJ\u0008\u0010\u001c\u001a\u00020\u0017H\u0002J\u0018\u0010\u001d\u001a\u00020\u00172\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\u001eJ\u001b\u0010\u001f\u001a\u00020\u00172\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0015H\u0010\u00a2\u0006\u0002\u0008 R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u00028\u0000X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u000e\u001a\u00020\u00088G\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\u00028\u0000X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u0013\u0010\u000cR\u0016\u0010\u0014\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/animation/core/SeekableTransitionState;",
        "S",
        "Landroidx/compose/animation/core/TransitionState;",
        "initialState",
        "targetState",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "animatedFraction",
        "Landroidx/compose/animation/core/Animatable;",
        "",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "currentState",
        "getCurrentState",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "fraction",
        "getFraction",
        "()F",
        "observer",
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;",
        "getTargetState",
        "transition",
        "Landroidx/compose/animation/core/Transition;",
        "animateToCurrentState",
        "",
        "animationSpec",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "animateToTargetState",
        "seekToFraction",
        "snapToFraction",
        "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "transitionConfigured",
        "transitionConfigured$animation_core_release",
        "animation-core_release"
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
.field private final animatedFraction:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private final currentState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

.field private final targetState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private transition:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/animation/core/SeekableTransitionState;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "initialState"    # Ljava/lang/Object;
    .param p2, "targetState"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)V"
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/TransitionState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 190
    iput-object p2, p0, Landroidx/compose/animation/core/SeekableTransitionState;->targetState:Ljava/lang/Object;

    .line 198
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v2, v1, v0}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    move-object v1, v0

    .local v1, "it":Landroidx/compose/animation/core/Animatable;
    const/4 v3, 0x0

    .line 199
    .local v3, "$i$a$-also-SeekableTransitionState$animatedFraction$1":I
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroidx/compose/animation/core/Animatable;->updateBounds(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    nop

    .line 198
    .end local v1    # "it":Landroidx/compose/animation/core/Animatable;
    .end local v3    # "$i$a$-also-SeekableTransitionState$animatedFraction$1":I
    iput-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->animatedFraction:Landroidx/compose/animation/core/Animatable;

    .line 202
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    sget-object v1, Landroidx/compose/animation/core/SeekableTransitionState$observer$1;->INSTANCE:Landroidx/compose/animation/core/SeekableTransitionState$observer$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 204
    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentState:Ljava/lang/Object;

    .line 188
    return-void
.end method

.method public static final synthetic access$seekToFraction(Landroidx/compose/animation/core/SeekableTransitionState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/animation/core/SeekableTransitionState;

    .line 187
    invoke-direct {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->seekToFraction()V

    return-void
.end method

.method public static synthetic animateToCurrentState$default(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 254
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 255
    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->animatedFraction:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getDefaultSpringSpec$animation_core_release()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 254
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/SeekableTransitionState;->animateToCurrentState(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic animateToTargetState$default(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 237
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 238
    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->animatedFraction:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getDefaultSpringSpec$animation_core_release()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 237
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/SeekableTransitionState;->animateToTargetState(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final seekToFraction()V
    .locals 7

    .line 276
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-nez v0, :cond_0

    return-void

    .line 277
    .local v0, "transition":Landroidx/compose/animation/core/Transition;
    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 278
    .local v1, "duration":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v4, Landroidx/compose/animation/core/SeekableTransitionState$seekToFraction$1;

    invoke-direct {v4, p0}, Landroidx/compose/animation/core/SeekableTransitionState$seekToFraction$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    new-instance v5, Landroidx/compose/animation/core/SeekableTransitionState$seekToFraction$2;

    invoke-direct {v5, v1, v0}, Landroidx/compose/animation/core/SeekableTransitionState$seekToFraction$2;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/animation/core/Transition;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 281
    iget-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState;->animatedFraction:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 282
    .local v2, "fraction":F
    iget-wide v3, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    long-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToLong(F)J

    move-result-wide v3

    .line 283
    .local v3, "playTimeNanos":J
    nop

    .line 284
    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v5

    .line 285
    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v6

    .line 286
    nop

    .line 283
    invoke-virtual {v0, v5, v6, v3, v4}, Landroidx/compose/animation/core/Transition;->seek(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 288
    return-void
.end method


# virtual methods
.method public final animateToCurrentState(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/FiniteAnimationSpec;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->animatedFraction:Landroidx/compose/animation/core/Animatable;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v4, 0x0

    new-instance v0, Landroidx/compose/animation/core/SeekableTransitionState$animateToCurrentState$2;

    invoke-direct {v0, p0}, Landroidx/compose/animation/core/SeekableTransitionState$animateToCurrentState$2;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    .line 264
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 258
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final animateToTargetState(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/FiniteAnimationSpec;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    iget-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->animatedFraction:Landroidx/compose/animation/core/Animatable;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v4, 0x0

    new-instance v0, Landroidx/compose/animation/core/SeekableTransitionState$animateToTargetState$2;

    invoke-direct {v0, p0}, Landroidx/compose/animation/core/SeekableTransitionState$animateToTargetState$2;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    .line 247
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 241
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public getCurrentState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentState:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFraction()F
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->animatedFraction:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getTargetState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->targetState:Ljava/lang/Object;

    return-object v0
.end method

.method public final snapToFraction(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/animation/core/SeekableTransitionState$snapToFraction$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/animation/core/SeekableTransitionState$snapToFraction$1;

    iget v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$snapToFraction$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/animation/core/SeekableTransitionState$snapToFraction$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/animation/core/SeekableTransitionState$snapToFraction$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/animation/core/SeekableTransitionState$snapToFraction$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/animation/core/SeekableTransitionState$snapToFraction$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Landroidx/compose/animation/core/SeekableTransitionState$snapToFraction$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 221
    iget v2, p2, Landroidx/compose/animation/core/SeekableTransitionState$snapToFraction$1;->label:I

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
    iget-object p1, p2, Landroidx/compose/animation/core/SeekableTransitionState$snapToFraction$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/animation/core/SeekableTransitionState;

    .local p1, "this":Landroidx/compose/animation/core/SeekableTransitionState;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p1    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 222
    .local v2, "this":Landroidx/compose/animation/core/SeekableTransitionState;
    .local p1, "fraction":F
    const/4 v3, 0x0

    cmpg-float v3, v3, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gtz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    move v5, v4

    :cond_1
    if-eqz v5, :cond_4

    .line 225
    invoke-virtual {v2}, Landroidx/compose/animation/core/SeekableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/animation/core/SeekableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    .end local p1    # "fraction":F
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 228
    .restart local p1    # "fraction":F
    :cond_2
    iget-object v3, v2, Landroidx/compose/animation/core/SeekableTransitionState;->animatedFraction:Landroidx/compose/animation/core/Animatable;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v2, p2, Landroidx/compose/animation/core/SeekableTransitionState$snapToFraction$1;->L$0:Ljava/lang/Object;

    iput v4, p2, Landroidx/compose/animation/core/SeekableTransitionState$snapToFraction$1;->label:I

    invoke-virtual {v3, v5, p2}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "fraction":F
    if-ne p1, v1, :cond_3

    .line 221
    return-object v1

    .line 228
    :cond_3
    move-object p1, v2

    .line 229
    .end local v2    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    .local p1, "this":Landroidx/compose/animation/core/SeekableTransitionState;
    :goto_1
    invoke-direct {p1}, Landroidx/compose/animation/core/SeekableTransitionState;->seekToFraction()V

    .line 230
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 222
    .restart local v2    # "this":Landroidx/compose/animation/core/SeekableTransitionState;
    .local p1, "fraction":F
    :cond_4
    const/4 v1, 0x0

    .line 223
    .local v1, "$i$a$-require-SeekableTransitionState$snapToFraction$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting fraction between 0 and 1. Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    .end local v1    # "$i$a$-require-SeekableTransitionState$snapToFraction$2":I
    .end local p1    # "fraction":F
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transitionConfigured$animation_core_release(Landroidx/compose/animation/core/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 271
    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    .line 272
    invoke-direct {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->seekToFraction()V

    .line 273
    return-void

    .line 267
    :cond_2
    const/4 v0, 0x0

    .line 268
    .local v0, "$i$a$-check-SeekableTransitionState$transitionConfigured$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An instance of SeekableTransitionState has been used in different Transitions. Previous instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    iget-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    nop

    .line 268
    const-string v2, ", new instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    nop

    .line 268
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .end local v0    # "$i$a$-check-SeekableTransitionState$transitionConfigured$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
