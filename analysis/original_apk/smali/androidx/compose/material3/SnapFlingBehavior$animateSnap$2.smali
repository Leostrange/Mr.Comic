.class final Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SnapFlingBehavior.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SnapFlingBehavior;->animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/animation/core/AnimationScope<",
        "Ljava/lang/Float;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/animation/core/AnimationScope;",
        "",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cancelOffset:F

.field final synthetic $consumedUpToNow:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $this_animateSnap:Landroidx/compose/foundation/gestures/ScrollScope;

.field final synthetic this$0:Landroidx/compose/material3/SnapFlingBehavior;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SnapFlingBehavior;FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;->this$0:Landroidx/compose/material3/SnapFlingBehavior;

    iput p2, p0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;->$cancelOffset:F

    iput-object p3, p0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;->$consumedUpToNow:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;->$this_animateSnap:Landroidx/compose/foundation/gestures/ScrollScope;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 299
    move-object v0, p1

    check-cast v0, Landroidx/compose/animation/core/AnimationScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;->invoke(Landroidx/compose/animation/core/AnimationScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/animation/core/AnimationScope;)V
    .locals 5
    .param p1, "$this$animateTo"    # Landroidx/compose/animation/core/AnimationScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationScope<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;->this$0:Landroidx/compose/material3/SnapFlingBehavior;

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget v2, p0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;->$cancelOffset:F

    invoke-static {v0, v1, v2}, Landroidx/compose/material3/SnapFlingBehavior;->access$coerceToTarget(Landroidx/compose/material3/SnapFlingBehavior;FF)F

    move-result v0

    .line 305
    .local v0, "realValue":F
    iget-object v1, p0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;->$consumedUpToNow:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float v1, v0, v1

    .line 306
    .local v1, "delta":F
    iget-object v2, p0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;->$this_animateSnap:Landroidx/compose/foundation/gestures/ScrollScope;

    invoke-interface {v2, v1}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    move-result v2

    .line 308
    .local v2, "consumed":F
    sub-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpg-float v3, v0, v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 309
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 311
    :cond_2
    iget-object v3, p0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;->$consumedUpToNow:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v4, p0, Landroidx/compose/material3/SnapFlingBehavior$animateSnap$2;->$consumedUpToNow:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v4, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    add-float/2addr v4, v2

    iput v4, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 312
    return-void
.end method
