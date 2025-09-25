.class public final Landroidx/compose/material3/SnapFlingBehavior;
.super Ljava/lang/Object;
.source "SnapFlingBehavior.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/FlingBehavior;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapFlingBehavior.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapFlingBehavior.kt\nandroidx/compose/material3/SnapFlingBehavior\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,356:1\n1#2:357\n154#3:358\n132#4,3:359\n33#4,4:362\n135#4,2:366\n38#4:368\n137#4:369\n33#4,6:370\n*S KotlinDebug\n*F\n+ 1 SnapFlingBehavior.kt\nandroidx/compose/material3/SnapFlingBehavior\n*L\n346#1:358\n71#1:359,3\n71#1:362,4\n71#1:366,2\n71#1:368\n71#1:369\n199#1:370,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0081\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000c*\u0001\u0014\u0008\u0001\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u0019H\u0002J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0096\u0002J\u0018\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0008\u0010*\u001a\u00020\u001dH\u0016JH\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020-0,*\u00020.2\u0006\u0010/\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020-012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0082@\u00a2\u0006\u0002\u00102JP\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020-0,*\u00020.2\u0006\u0010/\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020-012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0082@\u00a2\u0006\u0002\u00105J\u0014\u00106\u001a\u00020\u0006*\u00020\u00062\u0006\u00107\u001a\u00020\u0006H\u0002J(\u00108\u001a\u0002H9\"\u000e\u0008\u0000\u00109*\u0008\u0012\u0004\u0012\u0002H90:*\u0008\u0012\u0004\u0012\u0002H90;H\u0082\u0002\u00a2\u0006\u0002\u0010<J(\u0010=\u001a\u0002H9\"\u000e\u0008\u0000\u00109*\u0008\u0012\u0004\u0012\u0002H90:*\u0008\u0012\u0004\u0012\u0002H90;H\u0082\u0002\u00a2\u0006\u0002\u0010<J&\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020-0,*\u00020.2\u0006\u0010?\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0002\u0010@J&\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020-0,*\u00020.2\u0006\u0010?\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0002\u0010@J\u001a\u0010B\u001a\u00020\u0006*\u00020.2\u0006\u0010?\u001a\u00020\u0006H\u0096@\u00a2\u0006\u0002\u0010@J.\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020-0,*\u00020.2\u0006\u0010D\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0002\u0010EJ&\u0010F\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020-0,*\u00020.2\u0006\u0010)\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0002\u0010@R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001c\u001a\u00020\u001d*\u00020\u001e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006G"
    }
    d2 = {
        "Landroidx/compose/material3/SnapFlingBehavior;",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "lazyListState",
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "decayAnimationSpec",
        "Landroidx/compose/animation/core/DecayAnimationSpec;",
        "",
        "snapAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/ui/unit/Density;)V",
        "DefaultScrollMotionDurationScaleFactor",
        "MinFlingVelocityDp",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "itemSize",
        "getItemSize",
        "()F",
        "motionScaleDuration",
        "androidx/compose/material3/SnapFlingBehavior$motionScaleDuration$1",
        "Landroidx/compose/material3/SnapFlingBehavior$motionScaleDuration$1;",
        "velocityThreshold",
        "visibleItemsInfo",
        "",
        "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
        "getVisibleItemsInfo",
        "()Ljava/util/List;",
        "singleAxisViewportSize",
        "",
        "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "getSingleAxisViewportSize",
        "(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I",
        "calculateDistanceToDesiredSnapPosition",
        "layoutInfo",
        "item",
        "equals",
        "",
        "other",
        "",
        "findClosestOffset",
        "velocity",
        "hashCode",
        "animateDecay",
        "Landroidx/compose/material3/AnimationResult;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "targetOffset",
        "animationState",
        "Landroidx/compose/animation/core/AnimationState;",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "animateSnap",
        "cancelOffset",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "coerceToTarget",
        "target",
        "component1",
        "T",
        "",
        "Lkotlin/ranges/ClosedFloatingPointRange;",
        "(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;",
        "component2",
        "fling",
        "initialVelocity",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "longSnap",
        "performFling",
        "runApproach",
        "initialTargetOffset",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shortSnap",
        "material3_release"
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
.field private final DefaultScrollMotionDurationScaleFactor:F

.field private final MinFlingVelocityDp:F

.field private final decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final density:Landroidx/compose/ui/unit/Density;

.field private final lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

.field private motionScaleDuration:Landroidx/compose/material3/SnapFlingBehavior$motionScaleDuration$1;

.field private final snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final velocityThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/ui/unit/Density;)V
    .locals 3
    .param p1, "lazyListState"    # Landroidx/compose/foundation/lazy/LazyListState;
    .param p2, "decayAnimationSpec"    # Landroidx/compose/animation/core/DecayAnimationSpec;
    .param p3, "snapAnimationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p4, "density"    # Landroidx/compose/ui/unit/Density;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroidx/compose/material3/SnapFlingBehavior;->lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    .line 61
    iput-object p2, p0, Landroidx/compose/material3/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 62
    iput-object p3, p0, Landroidx/compose/material3/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 63
    iput-object p4, p0, Landroidx/compose/material3/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    .line 76
    iget-object v0, p0, Landroidx/compose/material3/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    .line 357
    nop

    .local v0, "$this$velocityThreshold_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 76
    .local v1, "$i$a$-with-SnapFlingBehavior$velocityThreshold$1":I
    iget v2, p0, Landroidx/compose/material3/SnapFlingBehavior;->MinFlingVelocityDp:F

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    .end local v0    # "$this$velocityThreshold_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-SnapFlingBehavior$velocityThreshold$1":I
    iput v0, p0, Landroidx/compose/material3/SnapFlingBehavior;->velocityThreshold:F

    .line 77
    new-instance v0, Landroidx/compose/material3/SnapFlingBehavior$motionScaleDuration$1;

    invoke-direct {v0, p0}, Landroidx/compose/material3/SnapFlingBehavior$motionScaleDuration$1;-><init>(Landroidx/compose/material3/SnapFlingBehavior;)V

    iput-object v0, p0, Landroidx/compose/material3/SnapFlingBehavior;->motionScaleDuration:Landroidx/compose/material3/SnapFlingBehavior$motionScaleDuration$1;

    .line 344
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/material3/SnapFlingBehavior;->DefaultScrollMotionDurationScaleFactor:F

    .line 346
    const/16 v0, 0x190

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 358
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 346
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    iput v0, p0, Landroidx/compose/material3/SnapFlingBehavior;->MinFlingVelocityDp:F

    .line 59
    return-void
.end method

.method public static final synthetic access$animateDecay(Landroidx/compose/material3/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/SnapFlingBehavior;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "targetOffset"    # F
    .param p3, "animationState"    # Landroidx/compose/animation/core/AnimationState;
    .param p4, "decayAnimationSpec"    # Landroidx/compose/animation/core/DecayAnimationSpec;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 58
    invoke-direct/range {p0 .. p5}, Landroidx/compose/material3/SnapFlingBehavior;->animateDecay(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$animateDecay$consumeDelta(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/foundation/gestures/ScrollScope;F)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/animation/core/AnimationScope;
    .param p1, "$this_animateDecay"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "delta"    # F

    .line 58
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/SnapFlingBehavior;->animateDecay$consumeDelta(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/foundation/gestures/ScrollScope;F)V

    return-void
.end method

.method public static final synthetic access$animateSnap(Landroidx/compose/material3/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/SnapFlingBehavior;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "targetOffset"    # F
    .param p3, "cancelOffset"    # F
    .param p4, "animationState"    # Landroidx/compose/animation/core/AnimationState;
    .param p5, "snapAnimationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 58
    invoke-direct/range {p0 .. p6}, Landroidx/compose/material3/SnapFlingBehavior;->animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$coerceToTarget(Landroidx/compose/material3/SnapFlingBehavior;FF)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/SnapFlingBehavior;
    .param p1, "$receiver"    # F
    .param p2, "target"    # F

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/SnapFlingBehavior;->coerceToTarget(FF)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$fling(Landroidx/compose/material3/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/SnapFlingBehavior;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "initialVelocity"    # F
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/SnapFlingBehavior;->fling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getDefaultScrollMotionDurationScaleFactor$p(Landroidx/compose/material3/SnapFlingBehavior;)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/SnapFlingBehavior;

    .line 58
    iget v0, p0, Landroidx/compose/material3/SnapFlingBehavior;->DefaultScrollMotionDurationScaleFactor:F

    return v0
.end method

.method public static final synthetic access$getVelocityThreshold$p(Landroidx/compose/material3/SnapFlingBehavior;)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/SnapFlingBehavior;

    .line 58
    iget v0, p0, Landroidx/compose/material3/SnapFlingBehavior;->velocityThreshold:F

    return v0
.end method

.method public static final synthetic access$longSnap(Landroidx/compose/material3/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/SnapFlingBehavior;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "initialVelocity"    # F
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/SnapFlingBehavior;->longSnap(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$runApproach(Landroidx/compose/material3/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/SnapFlingBehavior;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "initialTargetOffset"    # F
    .param p3, "initialVelocity"    # F
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material3/SnapFlingBehavior;->runApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$shortSnap(Landroidx/compose/material3/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/SnapFlingBehavior;
    .param p1, "$receiver"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "velocity"    # F
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/SnapFlingBehavior;->shortSnap(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final animateDecay(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/AnimationResult<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;

    iget v1, v0, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;

    invoke-direct {v0, p0, p5}, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;-><init>(Landroidx/compose/material3/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p5, v0

    .local p5, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p5, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 249
    iget v2, p5, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p5    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p5    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p1, p5, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->F$0:F

    .local p1, "targetOffset":F
    iget-object p2, p5, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Ref$FloatRef;

    .local p2, "previousValue":Lkotlin/jvm/internal/Ref$FloatRef;
    iget-object p3, p5, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->L$0:Ljava/lang/Object;

    check-cast p3, Landroidx/compose/animation/core/AnimationState;

    .local p3, "animationState":Landroidx/compose/animation/core/AnimationState;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p1    # "targetOffset":F
    .end local p2    # "previousValue":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local p3    # "animationState":Landroidx/compose/animation/core/AnimationState;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 254
    .local v2, "this":Landroidx/compose/material3/SnapFlingBehavior;
    .local p1, "$this$animateDecay":Landroidx/compose/foundation/gestures/ScrollScope;
    .local p2, "targetOffset":F
    .restart local p3    # "animationState":Landroidx/compose/animation/core/AnimationState;
    .local p4, "decayAnimationSpec":Landroidx/compose/animation/core/DecayAnimationSpec;
    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 261
    .local v3, "previousValue":Lkotlin/jvm/internal/Ref$FloatRef;
    nop

    .line 262
    nop

    .line 263
    .end local p4    # "decayAnimationSpec":Landroidx/compose/animation/core/DecayAnimationSpec;
    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    const/4 v5, 0x1

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 261
    :goto_1
    xor-int/2addr v4, v5

    new-instance v6, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$2;

    invoke-direct {v6, p2, v2, v3, p1}, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$2;-><init>(FLandroidx/compose/material3/SnapFlingBehavior;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    iput-object p3, p5, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->L$0:Ljava/lang/Object;

    iput-object v3, p5, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->L$1:Ljava/lang/Object;

    iput p2, p5, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->F$0:F

    iput v5, p5, Landroidx/compose/material3/SnapFlingBehavior$animateDecay$1;->label:I

    invoke-static {p3, p4, v4, v6, p5}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateDecay(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Landroidx/compose/material3/SnapFlingBehavior;
    .end local p1    # "$this$animateDecay":Landroidx/compose/foundation/gestures/ScrollScope;
    if-ne p1, v1, :cond_2

    .line 249
    return-object v1

    .line 261
    :cond_2
    move p1, p2

    move-object p2, v3

    .line 276
    .end local v3    # "previousValue":Lkotlin/jvm/internal/Ref$FloatRef;
    .local p1, "targetOffset":F
    .local p2, "previousValue":Lkotlin/jvm/internal/Ref$FloatRef;
    :goto_2
    new-instance p4, Landroidx/compose/material3/AnimationResult;

    .line 277
    iget v1, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float v1, p1, v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v1

    .line 278
    nop

    .line 276
    invoke-direct {p4, v1, p3}, Landroidx/compose/material3/AnimationResult;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationState;)V

    return-object p4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final animateDecay$consumeDelta(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/foundation/gestures/ScrollScope;F)V
    .locals 3
    .param p0, "$this$animateDecay_u24consumeDelta"    # Landroidx/compose/animation/core/AnimationScope;
    .param p1, "$this_animateDecay"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "delta"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationScope<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F)V"
        }
    .end annotation

    .line 257
    invoke-interface {p1, p2}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    move-result v0

    .line 258
    .local v0, "consumed":F
    sub-float v1, p2, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 259
    :cond_0
    return-void
.end method

.method private final animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "FF",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/AnimationResult<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;

    iget v2, v1, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;-><init>(Landroidx/compose/material3/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 291
    iget v4, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->label:I

    packed-switch v4, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v3, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->F$1:F

    .local v3, "initialVelocity":F
    iget v4, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->F$0:F

    .local v4, "targetOffset":F
    iget-object v5, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$FloatRef;

    .local v5, "consumedUpToNow":Lkotlin/jvm/internal/Ref$FloatRef;
    iget-object v6, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/animation/core/AnimationState;

    .local v6, "animationState":Landroidx/compose/animation/core/AnimationState;
    iget-object v7, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/material3/SnapFlingBehavior;

    .local v7, "this":Landroidx/compose/material3/SnapFlingBehavior;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v6

    move-object v15, v7

    goto :goto_2

    .end local v3    # "initialVelocity":F
    .end local v4    # "targetOffset":F
    .end local v5    # "consumedUpToNow":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v6    # "animationState":Landroidx/compose/animation/core/AnimationState;
    .end local v7    # "this":Landroidx/compose/material3/SnapFlingBehavior;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p0

    .restart local v7    # "this":Landroidx/compose/material3/SnapFlingBehavior;
    move/from16 v4, p2

    .restart local v4    # "targetOffset":F
    move-object/from16 v6, p4

    .restart local v6    # "animationState":Landroidx/compose/animation/core/AnimationState;
    move-object/from16 v5, p1

    .local v5, "$this$animateSnap":Landroidx/compose/foundation/gestures/ScrollScope;
    move/from16 v8, p3

    .local v8, "cancelOffset":F
    move-object/from16 p3, p5

    .line 297
    .local p3, "snapAnimationSpec":Landroidx/compose/animation/core/AnimationSpec;
    new-instance v9, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 298
    .local v9, "consumedUpToNow":Lkotlin/jvm/internal/Ref$FloatRef;
    invoke-virtual {v6}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    .line 299
    .local v10, "initialVelocity":F
    nop

    .line 300
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v11

    .line 301
    nop

    .line 302
    .end local p3    # "snapAnimationSpec":Landroidx/compose/animation/core/AnimationSpec;
    invoke-virtual {v6}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    const/4 v13, 0x1

    if-nez v12, :cond_1

    move v12, v13

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 299
    :goto_1
    xor-int/2addr v12, v13

    new-instance v14, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;

    invoke-direct {v14, v7, v8, v9, v5}, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;-><init>(Landroidx/compose/material3/SnapFlingBehavior;FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;)V

    check-cast v14, Lkotlin/jvm/functions/Function1;

    iput-object v7, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->F$0:F

    iput v10, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->F$1:F

    iput v13, v0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$1;->label:I

    move-object/from16 p1, v6

    move-object/from16 p2, v11

    move/from16 p4, v12

    move-object/from16 p5, v14

    move-object/from16 p6, v0

    invoke-static/range {p1 .. p6}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "$this$animateSnap":Landroidx/compose/foundation/gestures/ScrollScope;
    .end local v8    # "cancelOffset":F
    if-ne v5, v3, :cond_2

    .line 291
    return-object v3

    .line 299
    :cond_2
    move-object/from16 v16, v6

    move-object v15, v7

    move-object v5, v9

    move v3, v10

    .line 315
    .end local v6    # "animationState":Landroidx/compose/animation/core/AnimationState;
    .end local v7    # "this":Landroidx/compose/material3/SnapFlingBehavior;
    .end local v9    # "consumedUpToNow":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v10    # "initialVelocity":F
    .restart local v3    # "initialVelocity":F
    .local v5, "consumedUpToNow":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v15, "this":Landroidx/compose/material3/SnapFlingBehavior;
    .local v16, "animationState":Landroidx/compose/animation/core/AnimationState;
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-direct {v15, v6, v3}, Landroidx/compose/material3/SnapFlingBehavior;->coerceToTarget(FF)F

    move-result v17

    .line 316
    .local v17, "finalVelocity":F
    new-instance v14, Landroidx/compose/material3/AnimationResult;

    .line 317
    iget v6, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float v6, v4, v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v13

    .line 318
    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1d

    const/16 v20, 0x0

    move-object/from16 v6, v16

    move/from16 v8, v17

    move-object/from16 v21, v13

    move/from16 v13, v18

    move-object/from16 v22, v14

    move/from16 v14, v19

    move-object/from16 v18, v15

    .end local v15    # "this":Landroidx/compose/material3/SnapFlingBehavior;
    .local v18, "this":Landroidx/compose/material3/SnapFlingBehavior;
    move-object/from16 v15, v20

    invoke-static/range {v6 .. v15}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v6

    .line 316
    move-object/from16 v8, v21

    move-object/from16 v7, v22

    invoke-direct {v7, v8, v6}, Landroidx/compose/material3/AnimationResult;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationState;)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final calculateDistanceToDesiredSnapPosition(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;Landroidx/compose/foundation/lazy/LazyListItemInfo;)F
    .locals 4
    .param p1, "layoutInfo"    # Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .param p2, "item"    # Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 332
    move-object v0, p1

    .line 357
    .local v0, "$this$calculateDistanceToDesiredSnapPosition_u24lambda_u249":Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    const/4 v1, 0x0

    .line 332
    .local v1, "$i$a$-with-SnapFlingBehavior$calculateDistanceToDesiredSnapPosition$containerSize$1":I
    invoke-direct {p0, v0}, Landroidx/compose/material3/SnapFlingBehavior;->getSingleAxisViewportSize(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I

    move-result v2

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getBeforeContentPadding()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getAfterContentPadding()I

    move-result v3

    sub-int/2addr v2, v3

    .line 331
    .end local v0    # "$this$calculateDistanceToDesiredSnapPosition_u24lambda_u249":Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .end local v1    # "$i$a$-with-SnapFlingBehavior$calculateDistanceToDesiredSnapPosition$containerSize$1":I
    move v0, v2

    .line 335
    .local v0, "containerSize":I
    int-to-float v1, v0

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 334
    nop

    .line 337
    .local v1, "desiredDistance":F
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v2

    .line 338
    .local v2, "itemCurrentPosition":I
    int-to-float v3, v2

    sub-float/2addr v3, v1

    return v3
.end method

.method private final coerceToTarget(FF)F
    .locals 2
    .param p1, "$this$coerceToTarget"    # F
    .param p2, "target"    # F

    .line 323
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return v0

    .line 324
    :cond_1
    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    :goto_1
    return v0
.end method

.method private final component1(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "$this$component1"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 180
    invoke-interface {p1}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method private final component2(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "$this$component2"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 183
    invoke-interface {p1}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method private final findClosestOffset(FLandroidx/compose/foundation/lazy/LazyListState;)F
    .locals 7
    .param p1, "velocity"    # F
    .param p2, "lazyListState"    # Landroidx/compose/foundation/lazy/LazyListState;

    .line 218
    invoke-static {p2, p0}, Landroidx/compose/material3/SnapFlingBehavior;->findClosestOffset$calculateSnappingOffsetBounds(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/material3/SnapFlingBehavior;)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/material3/SnapFlingBehavior;->component1(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .local v1, "lowerBound":F
    invoke-direct {p0, v0}, Landroidx/compose/material3/SnapFlingBehavior;->component2(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 220
    .local v0, "upperBound":F
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 221
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-eqz v4, :cond_2

    .line 222
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_1

    .line 223
    goto :goto_2

    .line 225
    :cond_1
    goto :goto_4

    .line 229
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v4

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    if-eqz v4, :cond_4

    .line 220
    :goto_2
    move v2, v0

    goto :goto_5

    .line 230
    :cond_4
    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v2, v2, v4

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move v5, v6

    :goto_3
    if-eqz v5, :cond_6

    .line 220
    :goto_4
    move v2, v1

    goto :goto_5

    .line 231
    :cond_6
    move v2, v3

    .line 220
    :goto_5
    nop

    .line 234
    .local v2, "finalDistance":F
    invoke-static {v2}, Landroidx/compose/material3/SnapFlingBehavior;->findClosestOffset$isValidDistance(F)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 235
    move v3, v2

    goto :goto_6

    .line 237
    :cond_7
    nop

    .line 234
    :goto_6
    return v3
.end method

.method private static final findClosestOffset$calculateSnappingOffsetBounds(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/material3/SnapFlingBehavior;)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 14
    .param p0, "$lazyListState"    # Landroidx/compose/foundation/lazy/LazyListState;
    .param p1, "this$0"    # Landroidx/compose/material3/SnapFlingBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/material3/SnapFlingBehavior;",
            ")",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    .local v0, "lowerBoundOffset":F
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 196
    const/4 v1, 0x0

    .local v1, "upperBoundOffset":F
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 198
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v2

    .local v2, "$this$findClosestOffset_u24calculateSnappingOffsetBounds_u24lambda_u248":Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    const/4 v3, 0x0

    .line 199
    .local v3, "$i$a$-with-SnapFlingBehavior$findClosestOffset$calculateSnappingOffsetBounds$1":I
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 370
    .local v5, "$i$f$fastForEach":I
    nop

    .line 371
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_2

    .line 372
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 373
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .local v9, "item":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    const/4 v10, 0x0

    .line 201
    .local v10, "$i$a$-fastForEach-SnapFlingBehavior$findClosestOffset$calculateSnappingOffsetBounds$1$1":I
    invoke-direct {p1, v2, v9}, Landroidx/compose/material3/SnapFlingBehavior;->calculateDistanceToDesiredSnapPosition(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;Landroidx/compose/foundation/lazy/LazyListItemInfo;)F

    move-result v11

    .line 200
    nop

    .line 204
    .local v11, "offset":F
    const/4 v12, 0x0

    cmpg-float v13, v11, v12

    if-gtz v13, :cond_0

    cmpl-float v13, v11, v0

    if-lez v13, :cond_0

    .line 205
    move v0, v11

    .line 209
    :cond_0
    cmpl-float v12, v11, v12

    if-ltz v12, :cond_1

    cmpg-float v12, v11, v1

    if-gez v12, :cond_1

    .line 210
    move v1, v11

    .line 212
    :cond_1
    nop

    .line 373
    .end local v9    # "item":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .end local v10    # "$i$a$-fastForEach-SnapFlingBehavior$findClosestOffset$calculateSnappingOffsetBounds$1$1":I
    .end local v11    # "offset":F
    nop

    .line 371
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 375
    .end local v6    # "index$iv":I
    :cond_2
    nop

    .line 213
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    nop

    .line 198
    .end local v2    # "$this$findClosestOffset_u24calculateSnappingOffsetBounds_u24lambda_u248":Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .end local v3    # "$i$a$-with-SnapFlingBehavior$findClosestOffset$calculateSnappingOffsetBounds$1":I
    nop

    .line 215
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v2

    return-object v2
.end method

.method private static final findClosestOffset$isValidDistance(F)Z
    .locals 3
    .param p0, "$this$findClosestOffset_u24isValidDistance"    # F

    .line 191
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float v0, p0, v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private final fling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/AnimationResult<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/material3/SnapFlingBehavior$fling$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/material3/SnapFlingBehavior$fling$1;

    iget v1, v0, Landroidx/compose/material3/SnapFlingBehavior$fling$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/material3/SnapFlingBehavior$fling$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/material3/SnapFlingBehavior$fling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/SnapFlingBehavior$fling$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/material3/SnapFlingBehavior$fling$1;-><init>(Landroidx/compose/material3/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Landroidx/compose/material3/SnapFlingBehavior$fling$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 91
    iget v2, p3, Landroidx/compose/material3/SnapFlingBehavior$fling$1;->label:I

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

    move-object p1, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 95
    .local v2, "this":Landroidx/compose/material3/SnapFlingBehavior;
    .local p1, "$this$fling":Landroidx/compose/foundation/gestures/ScrollScope;
    .local p2, "initialVelocity":F
    iget-object v3, v2, Landroidx/compose/material3/SnapFlingBehavior;->motionScaleDuration:Landroidx/compose/material3/SnapFlingBehavior$motionScaleDuration$1;

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Landroidx/compose/material3/SnapFlingBehavior$fling$result$1;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v2, p1, v5}, Landroidx/compose/material3/SnapFlingBehavior$fling$result$1;-><init>(FLandroidx/compose/material3/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    iput v5, p3, Landroidx/compose/material3/SnapFlingBehavior$fling$1;->label:I

    invoke-static {v3, v4, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Landroidx/compose/material3/SnapFlingBehavior;
    .end local p1    # "$this$fling":Landroidx/compose/foundation/gestures/ScrollScope;
    .end local p2    # "initialVelocity":F
    if-ne p1, v1, :cond_1

    .line 91
    return-object v1

    :cond_1
    :goto_1
    check-cast p1, Landroidx/compose/material3/AnimationResult;

    .line 103
    .local p1, "result":Landroidx/compose/material3/AnimationResult;
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getItemSize()F
    .locals 12

    .line 70
    invoke-direct {p0}, Landroidx/compose/material3/SnapFlingBehavior;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 71
    invoke-direct {p0}, Landroidx/compose/material3/SnapFlingBehavior;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastSumBy$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 359
    .local v1, "$i$f$fastSumBy":I
    nop

    .line 360
    const/4 v2, 0x0

    .line 361
    .local v2, "sum$iv":I
    move-object v3, v0

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 362
    .local v4, "$i$f$fastForEach":I
    nop

    .line 363
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_0

    .line 364
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 365
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "element$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 366
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastSumBy$2$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .local v10, "it":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    const/4 v11, 0x0

    .line 71
    .local v11, "$i$a$-fastSumBy-SnapFlingBehavior$itemSize$1":I
    invoke-interface {v10}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v10

    .line 366
    .end local v10    # "it":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .end local v11    # "$i$a$-fastSumBy-SnapFlingBehavior$itemSize$1":I
    add-int/2addr v2, v10

    .line 367
    nop

    .line 365
    .end local v8    # "element$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastSumBy$2$iv":I
    nop

    .line 363
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 368
    .end local v5    # "index$iv$iv":I
    :cond_0
    nop

    .line 369
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    nop

    .end local v0    # "$this$fastSumBy$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastSumBy":I
    .end local v2    # "sum$iv":I
    int-to-float v0, v2

    .line 71
    invoke-direct {p0}, Landroidx/compose/material3/SnapFlingBehavior;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    :goto_1
    return v0
.end method

.method private final getSingleAxisViewportSize(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I
    .locals 2
    .param p1, "$this$singleAxisViewportSize"    # Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 342
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    :goto_0
    return v0
.end method

.method private final getVisibleItemsInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/compose/material3/SnapFlingBehavior;->lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final longSnap(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/AnimationResult<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;

    iget v2, v1, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;-><init>(Landroidx/compose/material3/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 121
    iget v3, v0, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->label:I

    packed-switch v3, :pswitch_data_0

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

    move-object v3, v1

    goto/16 :goto_4

    :pswitch_1
    iget-object v3, v0, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/ScrollScope;

    .local v3, "$this$longSnap":Landroidx/compose/foundation/gestures/ScrollScope;
    iget-object v4, v0, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/material3/SnapFlingBehavior;

    .local v4, "this":Landroidx/compose/material3/SnapFlingBehavior;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v3, v4

    move-object v4, v1

    goto :goto_3

    .end local v3    # "$this$longSnap":Landroidx/compose/foundation/gestures/ScrollScope;
    .end local v4    # "this":Landroidx/compose/material3/SnapFlingBehavior;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "this":Landroidx/compose/material3/SnapFlingBehavior;
    move/from16 v4, p2

    .local v4, "initialVelocity":F
    move-object/from16 v5, p1

    .line 126
    .local v5, "$this$longSnap":Landroidx/compose/foundation/gestures/ScrollScope;
    iget-object v6, v3, Landroidx/compose/material3/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->calculateTargetValue(Landroidx/compose/animation/core/DecayAnimationSpec;FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 125
    nop

    .line 128
    .local v6, "offset":F
    invoke-direct {v3}, Landroidx/compose/material3/SnapFlingBehavior;->getItemSize()F

    move-result v8

    sub-float v8, v6, v8

    invoke-static {v8, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v6

    .line 129
    .local v6, "finalDecayOffset":F
    cmpg-float v7, v6, v7

    const/4 v8, 0x1

    if-nez v7, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    .line 130
    goto :goto_2

    .line 132
    :cond_2
    nop

    .end local v6    # "finalDecayOffset":F
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v7

    mul-float/2addr v6, v7

    .line 129
    :goto_2
    nop

    .line 135
    .local v6, "initialOffset":F
    nop

    .line 136
    nop

    .line 137
    .end local v6    # "initialOffset":F
    nop

    .line 135
    .end local v4    # "initialVelocity":F
    iput-object v3, v0, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->L$1:Ljava/lang/Object;

    iput v8, v0, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->label:I

    invoke-direct {v3, v5, v6, v4, v0}, Landroidx/compose/material3/SnapFlingBehavior;->runApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_3

    .line 121
    return-object v10

    .line 135
    :cond_3
    :goto_3
    check-cast v4, Landroidx/compose/material3/AnimationResult;

    invoke-virtual {v4}, Landroidx/compose/material3/AnimationResult;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .local v6, "remainingOffset":F
    invoke-virtual {v4}, Landroidx/compose/material3/AnimationResult;->component2()Landroidx/compose/animation/core/AnimationState;

    move-result-object v4

    .line 140
    .local v4, "animationState":Landroidx/compose/animation/core/AnimationState;
    nop

    .line 141
    .end local v5    # "$this$longSnap":Landroidx/compose/foundation/gestures/ScrollScope;
    nop

    .line 142
    nop

    .line 143
    .end local v6    # "remainingOffset":F
    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1e

    const/16 v20, 0x0

    move-object v11, v4

    invoke-static/range {v11 .. v20}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v7

    .line 144
    .end local v4    # "animationState":Landroidx/compose/animation/core/AnimationState;
    iget-object v8, v3, Landroidx/compose/material3/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 140
    .end local v3    # "this":Landroidx/compose/material3/SnapFlingBehavior;
    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v0, Landroidx/compose/material3/SnapFlingBehavior$longSnap$1;->label:I

    move-object v4, v5

    move v5, v6

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Landroidx/compose/material3/SnapFlingBehavior;->animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_4

    .line 121
    return-object v10

    .line 140
    :cond_4
    :goto_4
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final runApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "FF",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/AnimationResult<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;

    iget v2, v1, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;-><init>(Landroidx/compose/material3/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 148
    iget v3, v0, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v3, 0x0

    .local v3, "$i$a$-with-SnapFlingBehavior$runApproach$2":I
    iget-object v4, v0, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/material3/SnapFlingBehavior;

    .local v4, "this":Landroidx/compose/material3/SnapFlingBehavior;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v4

    move-object v4, v1

    goto :goto_1

    .end local v3    # "$i$a$-with-SnapFlingBehavior$runApproach$2":I
    .end local v4    # "this":Landroidx/compose/material3/SnapFlingBehavior;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p0

    .local v10, "this":Landroidx/compose/material3/SnapFlingBehavior;
    move/from16 v5, p2

    .local v5, "initialTargetOffset":F
    move-object/from16 v4, p1

    .local v4, "$this$runApproach":Landroidx/compose/foundation/gestures/ScrollScope;
    move/from16 v12, p3

    .line 152
    .local v12, "initialVelocity":F
    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1c

    const/16 v19, 0x0

    invoke-static/range {v11 .. v19}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v11

    .line 153
    .end local v12    # "initialVelocity":F
    .local v11, "animationState":Landroidx/compose/animation/core/AnimationState;
    nop

    .local v4, "$this$runApproach_u24lambda_u242":Landroidx/compose/foundation/gestures/ScrollScope;
    const/4 v12, 0x0

    .line 154
    .local v12, "$i$a$-with-SnapFlingBehavior$runApproach$2":I
    iget-object v7, v10, Landroidx/compose/material3/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    iput-object v10, v0, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->label:I

    move-object v3, v10

    move-object v6, v11

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Landroidx/compose/material3/SnapFlingBehavior;->animateDecay(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v4    # "$this$runApproach_u24lambda_u242":Landroidx/compose/foundation/gestures/ScrollScope;
    .end local v5    # "initialTargetOffset":F
    .end local v11    # "animationState":Landroidx/compose/animation/core/AnimationState;
    if-ne v3, v9, :cond_1

    .line 148
    return-object v9

    .line 154
    :cond_1
    move-object v4, v3

    move v3, v12

    .end local v12    # "$i$a$-with-SnapFlingBehavior$runApproach$2":I
    .restart local v3    # "$i$a$-with-SnapFlingBehavior$runApproach$2":I
    :goto_1
    check-cast v4, Landroidx/compose/material3/AnimationResult;

    .line 153
    .end local v3    # "$i$a$-with-SnapFlingBehavior$runApproach$2":I
    invoke-virtual {v4}, Landroidx/compose/material3/AnimationResult;->component2()Landroidx/compose/animation/core/AnimationState;

    move-result-object v3

    .line 157
    .local v3, "currentAnimationState":Landroidx/compose/animation/core/AnimationState;
    invoke-virtual {v3}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget-object v5, v10, Landroidx/compose/material3/SnapFlingBehavior;->lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-direct {v10, v4, v5}, Landroidx/compose/material3/SnapFlingBehavior;->findClosestOffset(FLandroidx/compose/foundation/lazy/LazyListState;)F

    move-result v4

    .line 156
    nop

    .line 159
    .local v4, "remainingOffset":F
    new-instance v5, Landroidx/compose/material3/AnimationResult;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Landroidx/compose/material3/AnimationResult;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationState;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final shortSnap(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "$this$shortSnap"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "velocity"    # F
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/AnimationResult<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/material3/SnapFlingBehavior;->lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-direct {p0, v0, v1}, Landroidx/compose/material3/SnapFlingBehavior;->findClosestOffset(FLandroidx/compose/foundation/lazy/LazyListState;)F

    move-result v0

    .line 112
    .local v0, "closestOffset":F
    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move v2, p2

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v1

    .line 113
    .local v1, "animationState":Landroidx/compose/animation/core/AnimationState;
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    iget-object v7, p0, Landroidx/compose/material3/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 113
    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move v5, v0

    move-object v6, v1

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Landroidx/compose/material3/SnapFlingBehavior;->animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 163
    instance-of v0, p1, Landroidx/compose/material3/SnapFlingBehavior;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 164
    move-object v0, p1

    check-cast v0, Landroidx/compose/material3/SnapFlingBehavior;

    iget-object v0, v0, Landroidx/compose/material3/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v2, p0, Landroidx/compose/material3/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    move-object v0, p1

    check-cast v0, Landroidx/compose/material3/SnapFlingBehavior;

    iget-object v0, v0, Landroidx/compose/material3/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    iget-object v2, p0, Landroidx/compose/material3/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    move-object v0, p1

    check-cast v0, Landroidx/compose/material3/SnapFlingBehavior;

    iget-object v0, v0, Landroidx/compose/material3/SnapFlingBehavior;->lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v2, p0, Landroidx/compose/material3/SnapFlingBehavior;->lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    move-object v0, p1

    check-cast v0, Landroidx/compose/material3/SnapFlingBehavior;

    iget-object v0, v0, Landroidx/compose/material3/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    iget-object v2, p0, Landroidx/compose/material3/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_0

    .line 169
    :cond_1
    nop

    .line 163
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 173
    nop

    .line 174
    const/4 v0, 0x0

    .line 357
    .local v0, "it":I
    const/4 v1, 0x0

    .line 174
    .local v1, "$i$a$-let-SnapFlingBehavior$hashCode$1":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroidx/compose/material3/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 175
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-SnapFlingBehavior$hashCode$1":I
    move v0, v2

    .line 357
    .restart local v0    # "it":I
    const/4 v1, 0x0

    .line 175
    .local v1, "$i$a$-let-SnapFlingBehavior$hashCode$2":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroidx/compose/material3/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 176
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-SnapFlingBehavior$hashCode$2":I
    move v0, v2

    .line 357
    .restart local v0    # "it":I
    const/4 v1, 0x0

    .line 176
    .local v1, "$i$a$-let-SnapFlingBehavior$hashCode$3":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroidx/compose/material3/SnapFlingBehavior;->lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 177
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-SnapFlingBehavior$hashCode$3":I
    move v0, v2

    .line 357
    .restart local v0    # "it":I
    const/4 v1, 0x0

    .line 177
    .local v1, "$i$a$-let-SnapFlingBehavior$hashCode$4":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroidx/compose/material3/SnapFlingBehavior;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-SnapFlingBehavior$hashCode$4":I
    return v2
.end method

.method public performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p3, Landroidx/compose/material3/SnapFlingBehavior$performFling$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/material3/SnapFlingBehavior$performFling$1;

    iget v1, v0, Landroidx/compose/material3/SnapFlingBehavior$performFling$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/material3/SnapFlingBehavior$performFling$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/material3/SnapFlingBehavior$performFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/SnapFlingBehavior$performFling$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/material3/SnapFlingBehavior$performFling$1;-><init>(Landroidx/compose/material3/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Landroidx/compose/material3/SnapFlingBehavior$performFling$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 82
    iget v2, p3, Landroidx/compose/material3/SnapFlingBehavior$performFling$1;->label:I

    const/4 v3, 0x1

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

    move-object p1, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 83
    .local v2, "this":Landroidx/compose/material3/SnapFlingBehavior;
    .local p1, "$this$performFling":Landroidx/compose/foundation/gestures/ScrollScope;
    .local p2, "initialVelocity":F
    iput v3, p3, Landroidx/compose/material3/SnapFlingBehavior$performFling$1;->label:I

    invoke-direct {v2, p1, p2, p3}, Landroidx/compose/material3/SnapFlingBehavior;->fling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Landroidx/compose/material3/SnapFlingBehavior;
    .end local p1    # "$this$performFling":Landroidx/compose/foundation/gestures/ScrollScope;
    .end local p2    # "initialVelocity":F
    if-ne p1, v1, :cond_1

    .line 82
    return-object v1

    .line 83
    :cond_1
    :goto_1
    check-cast p1, Landroidx/compose/material3/AnimationResult;

    invoke-virtual {p1}, Landroidx/compose/material3/AnimationResult;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .local p2, "remainingOffset":F
    invoke-virtual {p1}, Landroidx/compose/material3/AnimationResult;->component2()Landroidx/compose/animation/core/AnimationState;

    move-result-object p1

    .line 88
    .local p1, "remainingState":Landroidx/compose/animation/core/AnimationState;
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-nez v2, :cond_2

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

    move-result v1

    .end local p1    # "remainingState":Landroidx/compose/animation/core/AnimationState;
    :goto_3
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
