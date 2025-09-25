.class public final Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
.super Ljava/lang/Object;
.source "SnapFlingBehavior.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/FlingBehavior;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapFlingBehavior.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapFlingBehavior.kt\nandroidx/compose/foundation/gestures/snapping/SnapFlingBehavior\n+ 2 SnapFlingBehavior.kt\nandroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,538:1\n534#2,4:539\n534#2,4:543\n534#2,4:547\n534#2,4:551\n1#3:555\n*S KotlinDebug\n*F\n+ 1 SnapFlingBehavior.kt\nandroidx/compose/foundation/gestures/snapping/SnapFlingBehavior\n*L\n153#1:539,4\n229#1:543,4\n232#1:547,4\n252#1:551,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001BA\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000bB7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J:\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u001d*\u00020\u001f2\u0006\u0010 \u001a\u00020\u00062\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020#0\"H\u0082@\u00a2\u0006\u0002\u0010$J\u001a\u0010%\u001a\u00020\u0006*\u00020\u001f2\u0006\u0010 \u001a\u00020\u0006H\u0096@\u00a2\u0006\u0002\u0010&J.\u0010%\u001a\u00020\u0006*\u00020\u001f2\u0006\u0010 \u001a\u00020\u00062\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020#0\"H\u0086@\u00a2\u0006\u0002\u0010$JQ\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u001d*\u00020\u001f2\u0006\u0010)\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00062!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008+\u0012\u0008\u0008,\u0012\u0004\u0008\u0008(-\u0012\u0004\u0012\u00020#0\"H\u0082@\u00a2\u0006\u0002\u0010.JB\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e00*\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020#0\"H\u0082@\u00a2\u0006\u0002\u0010.R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "snapLayoutInfoProvider",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "lowVelocityAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "highVelocityAnimationSpec",
        "Landroidx/compose/animation/core/DecayAnimationSpec;",
        "snapAnimationSpec",
        "shortSnapVelocityThreshold",
        "(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;F)V",
        "(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V",
        "motionScaleDuration",
        "Landroidx/compose/ui/MotionDurationScale;",
        "getMotionScaleDuration$foundation_release",
        "()Landroidx/compose/ui/MotionDurationScale;",
        "setMotionScaleDuration$foundation_release",
        "(Landroidx/compose/ui/MotionDurationScale;)V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "isDecayApproachPossible",
        "offset",
        "velocity",
        "fling",
        "Landroidx/compose/foundation/gestures/snapping/AnimationResult;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "initialVelocity",
        "onRemainingScrollOffsetUpdate",
        "Lkotlin/Function1;",
        "",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "performFling",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onSettlingDistanceUpdated",
        "runApproach",
        "initialTargetOffset",
        "onAnimationStep",
        "Lkotlin/ParameterName;",
        "name",
        "delta",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "tryApproach",
        "Landroidx/compose/animation/core/AnimationState;",
        "updateRemainingScrollOffset",
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
.field private final highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private motionScaleDuration:Landroidx/compose/ui/MotionDurationScale;

.field private final snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 1
    .param p1, "snapLayoutInfoProvider"    # Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
    .param p2, "lowVelocityAnimationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "highVelocityAnimationSpec"    # Landroidx/compose/animation/core/DecayAnimationSpec;
    .param p4, "snapAnimationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    .line 74
    iput-object p2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 75
    iput-object p3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 76
    iput-object p4, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 127
    invoke-static {}, Landroidx/compose/foundation/gestures/ScrollableKt;->getDefaultScrollMotionDurationScale()Landroidx/compose/ui/MotionDurationScale;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->motionScaleDuration:Landroidx/compose/ui/MotionDurationScale;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;F)V
    .locals 0
    .param p1, "snapLayoutInfoProvider"    # Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
    .param p2, "lowVelocityAnimationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "highVelocityAnimationSpec"    # Landroidx/compose/animation/core/DecayAnimationSpec;
    .param p4, "snapAnimationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p5, "shortSnapVelocityThreshold"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Please use the constructor without the shortSnapVelocityThreshold. The functionality provided by shortSnapVelocityThreshold can be implemented by SnapLayoutInfoProvider."
    .end annotation

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V

    .line 125
    return-void
.end method

.method public static final synthetic access$fling(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "initialVelocity"    # F
    .param p3, "onRemainingScrollOffsetUpdate"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->fling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSnapAnimationSpec$p(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 71
    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public static final synthetic access$getSnapLayoutInfoProvider$p(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 71
    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    return-object v0
.end method

.method public static final synthetic access$runApproach(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "initialTargetOffset"    # F
    .param p3, "initialVelocity"    # F
    .param p4, "onAnimationStep"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 71
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->runApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$tryApproach(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "offset"    # F
    .param p3, "velocity"    # F
    .param p4, "updateRemainingScrollOffset"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 71
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->tryApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final fling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/snapping/AnimationResult<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;

    invoke-direct {v0, p0, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 160
    iget v2, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .local p1, "onRemainingScrollOffsetUpdate":Lkotlin/jvm/functions/Function1;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_1

    .end local p1    # "onRemainingScrollOffsetUpdate":Lkotlin/jvm/functions/Function1;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    .local v8, "this":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    move v4, p2

    .local v4, "initialVelocity":F
    move-object v6, p1

    .local v6, "$this$fling":Landroidx/compose/foundation/gestures/ScrollScope;
    move-object p1, p3

    .line 165
    .restart local p1    # "onRemainingScrollOffsetUpdate":Lkotlin/jvm/functions/Function1;
    iget-object p2, v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->motionScaleDuration:Landroidx/compose/ui/MotionDurationScale;

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance p3, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;

    const/4 v7, 0x0

    move-object v2, p3

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;FLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    iput-object p1, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    invoke-static {p2, p3, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local v4    # "initialVelocity":F
    .end local v6    # "$this$fling":Landroidx/compose/foundation/gestures/ScrollScope;
    .end local v8    # "this":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    if-ne p2, v1, :cond_1

    .line 160
    return-object v1

    :cond_1
    :goto_1
    check-cast p2, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    .line 198
    .local p2, "result":Landroidx/compose/foundation/gestures/snapping/AnimationResult;
    const/4 p3, 0x0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final isDecayApproachPossible(FF)Z
    .locals 3
    .param p1, "offset"    # F
    .param p2, "velocity"    # F

    .line 251
    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->calculateTargetValue(Landroidx/compose/animation/core/DecayAnimationSpec;FF)F

    move-result v0

    .line 252
    .local v0, "decayOffset":F
    const/4 v1, 0x0

    .line 551
    .local v1, "$i$f$debugLog":I
    nop

    .line 554
    nop

    .line 256
    .end local v1    # "$i$f$debugLog":I
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final runApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "$this$runApproach"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "initialTargetOffset"    # F
    .param p3, "initialVelocity"    # F
    .param p4, "onAnimationStep"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "FF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/snapping/AnimationResult<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p2, p3}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->isDecayApproachPossible(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 543
    .local v0, "$i$f$debugLog":I
    nop

    .line 546
    nop

    .line 230
    .end local v0    # "$i$f$debugLog":I
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/HighVelocityApproachAnimation;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/snapping/HighVelocityApproachAnimation;-><init>(Landroidx/compose/animation/core/DecayAnimationSpec;)V

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;

    move-object v4, v0

    goto :goto_0

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 547
    .restart local v0    # "$i$f$debugLog":I
    nop

    .line 550
    nop

    .line 233
    .end local v0    # "$i$f$debugLog":I
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;)V

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;

    move-object v4, v0

    .line 228
    :goto_0
    nop

    .line 227
    nop

    .line 236
    .local v4, "animation":Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;
    nop

    .line 237
    nop

    .line 238
    nop

    .line 239
    nop

    .line 240
    nop

    .line 236
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->access$approach(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/ApproachAnimation;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final tryApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "FF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;

    iget v2, v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->label:I

    move-object v0, v1

    move-object/from16 v8, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;

    move-object/from16 v8, p0

    invoke-direct {v1, v8, v0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 202
    iget v2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    goto :goto_2

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    move/from16 v4, p2

    .local v4, "offset":F
    move-object/from16 v6, p4

    .local v6, "updateRemainingScrollOffset":Lkotlin/jvm/functions/Function1;
    move-object/from16 v3, p1

    .local v3, "$this$tryApproach":Landroidx/compose/foundation/gestures/ScrollScope;
    move/from16 v5, p3

    .line 208
    .local v5, "velocity":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/4 v10, 0x0

    cmpg-float v7, v7, v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v7, :cond_1

    move v7, v12

    goto :goto_1

    :cond_1
    move v7, v11

    :goto_1
    if-nez v7, :cond_5

    .line 209
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v10

    if-nez v7, :cond_2

    move v11, v12

    :cond_2
    if-eqz v11, :cond_3

    goto :goto_3

    .line 213
    :cond_3
    nop

    .line 214
    .end local v2    # "this":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .end local v3    # "$this$tryApproach":Landroidx/compose/foundation/gestures/ScrollScope;
    nop

    .line 215
    .end local v4    # "offset":F
    nop

    .line 216
    .end local v5    # "velocity":F
    nop

    .line 213
    .end local v6    # "updateRemainingScrollOffset":Lkotlin/jvm/functions/Function1;
    iput v12, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->label:I

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->runApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_4

    .line 202
    return-object v9

    :cond_4
    :goto_2
    check-cast v2, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    .line 217
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->getCurrentAnimationState()Landroidx/compose/animation/core/AnimationState;

    move-result-object v2

    goto :goto_4

    .line 211
    .restart local v4    # "offset":F
    .restart local v5    # "velocity":F
    :cond_5
    :goto_3
    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1c

    const/16 v17, 0x0

    move v9, v4

    move v10, v5

    invoke-static/range {v9 .. v17}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v2

    .line 208
    .end local v4    # "offset":F
    .end local v5    # "velocity":F
    :goto_4
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 260
    instance-of v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 261
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_0

    .line 266
    :cond_1
    nop

    .line 260
    :goto_0
    return v1
.end method

.method public final getMotionScaleDuration$foundation_release()Landroidx/compose/ui/MotionDurationScale;
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->motionScaleDuration:Landroidx/compose/ui/MotionDurationScale;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 270
    nop

    .line 271
    const/4 v0, 0x0

    .line 555
    .local v0, "it":I
    const/4 v1, 0x0

    .line 271
    .local v1, "$i$a$-let-SnapFlingBehavior$hashCode$1":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 272
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-SnapFlingBehavior$hashCode$1":I
    move v0, v2

    .line 555
    .restart local v0    # "it":I
    const/4 v1, 0x0

    .line 272
    .local v1, "$i$a$-let-SnapFlingBehavior$hashCode$2":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->highVelocityAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 273
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-SnapFlingBehavior$hashCode$2":I
    move v0, v2

    .line 555
    .restart local v0    # "it":I
    const/4 v1, 0x0

    .line 273
    .local v1, "$i$a$-let-SnapFlingBehavior$hashCode$3":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->lowVelocityAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 274
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-SnapFlingBehavior$hashCode$3":I
    move v0, v2

    .line 555
    .restart local v0    # "it":I
    const/4 v1, 0x0

    .line 274
    .local v1, "$i$a$-let-SnapFlingBehavior$hashCode$4":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-SnapFlingBehavior$hashCode$4":I
    return v2
.end method

.method public performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$this$performFling"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "initialVelocity"    # F
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 130
    sget-object v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$2;->INSTANCE:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;

    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;

    invoke-direct {v0, p0, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 147
    iget v2, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 151
    .local v2, "this":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .local p1, "$this$performFling":Landroidx/compose/foundation/gestures/ScrollScope;
    .local p2, "initialVelocity":F
    .local p3, "onSettlingDistanceUpdated":Lkotlin/jvm/functions/Function1;
    iput v3, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$3;->label:I

    invoke-direct {v2, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->fling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .end local p1    # "$this$performFling":Landroidx/compose/foundation/gestures/ScrollScope;
    .end local p2    # "initialVelocity":F
    .end local p3    # "onSettlingDistanceUpdated":Lkotlin/jvm/functions/Function1;
    if-ne p1, v1, :cond_1

    .line 147
    return-object v1

    .line 151
    :cond_1
    :goto_1
    check-cast p1, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .local p2, "remainingOffset":F
    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->component2()Landroidx/compose/animation/core/AnimationState;

    move-result-object p1

    .line 153
    .local p1, "remainingState":Landroidx/compose/animation/core/AnimationState;
    const/4 p3, 0x0

    .line 539
    .local p3, "$i$f$debugLog":I
    nop

    .line 542
    nop

    .line 157
    .end local p3    # "$i$f$debugLog":I
    const/4 p3, 0x0

    cmpg-float v1, p2, p3

    if-nez v1, :cond_2

    goto :goto_2

    .end local p2    # "remainingOffset":F
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p3

    .end local p1    # "remainingState":Landroidx/compose/animation/core/AnimationState;
    :goto_3
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setMotionScaleDuration$foundation_release(Landroidx/compose/ui/MotionDurationScale;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/MotionDurationScale;

    .line 127
    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->motionScaleDuration:Landroidx/compose/ui/MotionDurationScale;

    return-void
.end method
