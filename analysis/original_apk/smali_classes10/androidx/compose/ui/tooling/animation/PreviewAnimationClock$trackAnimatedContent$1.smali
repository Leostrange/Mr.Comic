.class final Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedContent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PreviewAnimationClock.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackAnimatedContent(Landroidx/compose/animation/core/Transition;)V
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

.field final synthetic this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "*>;",
            "Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedContent$1;->$animation:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedContent$1;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 166
    invoke-virtual {p0, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedContent$1;->invoke(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 6
    .param p1, "it"    # Ljava/lang/Object;

    .line 167
    sget-object v0, Landroidx/compose/ui/tooling/animation/AnimatedContentComposeAnimation;->Companion:Landroidx/compose/ui/tooling/animation/AnimatedContentComposeAnimation$Companion;

    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedContent$1;->$animation:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/tooling/animation/AnimatedContentComposeAnimation$Companion;->parseAnimatedContent(Landroidx/compose/animation/core/Transition;)Landroidx/compose/ui/tooling/animation/AnimatedContentComposeAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedContent$1;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    .local v0, "it":Landroidx/compose/ui/tooling/animation/AnimatedContentComposeAnimation;
    const/4 v2, 0x0

    .line 168
    .local v2, "$i$a$-let-PreviewAnimationClock$trackAnimatedContent$1$1":I
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->getAnimatedContentClocks$ui_tooling_release()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/tooling/animation/clock/TransitionClock;

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/tooling/animation/TransitionBasedAnimation;

    invoke-direct {v4, v5}, Landroidx/compose/ui/tooling/animation/clock/TransitionClock;-><init>(Landroidx/compose/ui/tooling/animation/TransitionBasedAnimation;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    move-object v3, v0

    check-cast v3, Landroidx/compose/animation/tooling/ComposeAnimation;

    invoke-virtual {v1, v3}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->notifySubscribe(Landroidx/compose/animation/tooling/ComposeAnimation;)V

    .line 170
    return-void

    .line 173
    .end local v0    # "it":Landroidx/compose/ui/tooling/animation/AnimatedContentComposeAnimation;
    .end local v2    # "$i$a$-let-PreviewAnimationClock$trackAnimatedContent$1$1":I
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedContent$1;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedContent$1;->$animation:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$createUnsupported(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;Ljava/lang/String;)V

    .line 174
    return-void
.end method
