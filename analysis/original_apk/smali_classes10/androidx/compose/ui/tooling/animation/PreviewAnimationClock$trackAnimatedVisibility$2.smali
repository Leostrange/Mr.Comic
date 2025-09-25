.class final Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedVisibility$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PreviewAnimationClock.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackAnimatedVisibility(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic $animation:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic $onSeek:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "*>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedVisibility$2;->$animation:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedVisibility$2;->$onSeek:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedVisibility$2;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedVisibility$2;->invoke(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 7
    .param p1, "it"    # Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedVisibility$2;->$animation:Landroidx/compose/animation/core/Transition;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.animation.core.Transition<kotlin.Boolean>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedVisibility$2;->$animation:Landroidx/compose/animation/core/Transition;

    invoke-static {v0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation_androidKt;->parseAnimatedVisibility(Landroidx/compose/animation/core/Transition;)Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;

    move-result-object v0

    .line 131
    .local v0, "composeAnimation":Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedVisibility$2;->$onSeek:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedVisibility$2;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    invoke-virtual {v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->getAnimatedVisibilityClocks$ui_tooling_release()Ljava/util/Map;

    move-result-object v1

    .line 133
    new-instance v2, Landroidx/compose/ui/tooling/animation/clock/AnimatedVisibilityClock;

    invoke-direct {v2, v0}, Landroidx/compose/ui/tooling/animation/clock/AnimatedVisibilityClock;-><init>(Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;)V

    move-object v3, v2

    .local v3, "$this$invoke_u24lambda_u240":Landroidx/compose/ui/tooling/animation/clock/AnimatedVisibilityClock;
    const/4 v4, 0x0

    .line 134
    .local v4, "$i$a$-apply-PreviewAnimationClock$trackAnimatedVisibility$2$1":I
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/tooling/animation/clock/AnimatedVisibilityClock;->setClockTime(J)V

    .line 135
    nop

    .line 133
    .end local v3    # "$this$invoke_u24lambda_u240":Landroidx/compose/ui/tooling/animation/clock/AnimatedVisibilityClock;
    .end local v4    # "$i$a$-apply-PreviewAnimationClock$trackAnimatedVisibility$2$1":I
    nop

    .line 132
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedVisibility$2;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    move-object v2, v0

    check-cast v2, Landroidx/compose/animation/tooling/ComposeAnimation;

    invoke-virtual {v1, v2}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->notifySubscribe(Landroidx/compose/animation/tooling/ComposeAnimation;)V

    .line 137
    return-void
.end method
