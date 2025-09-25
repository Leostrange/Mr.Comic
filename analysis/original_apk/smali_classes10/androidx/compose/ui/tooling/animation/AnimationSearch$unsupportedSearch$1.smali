.class final Landroidx/compose/ui/tooling/animation/AnimationSearch$unsupportedSearch$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimationSearch.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/animation/AnimationSearch;->unsupportedSearch()Ljava/util/Collection;
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
.field final synthetic this$0:Landroidx/compose/ui/tooling/animation/AnimationSearch;


# direct methods
.method constructor <init>(Landroidx/compose/ui/tooling/animation/AnimationSearch;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/AnimationSearch$unsupportedSearch$1;->this$0:Landroidx/compose/ui/tooling/animation/AnimationSearch;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, p1}, Landroidx/compose/ui/tooling/animation/AnimationSearch$unsupportedSearch$1;->invoke(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1
    .param p1, "it"    # Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/AnimationSearch$unsupportedSearch$1;->this$0:Landroidx/compose/ui/tooling/animation/AnimationSearch;

    invoke-static {v0}, Landroidx/compose/ui/tooling/animation/AnimationSearch;->access$getClock$p(Landroidx/compose/ui/tooling/animation/AnimationSearch;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackAnimateContentSize(Ljava/lang/Object;)V

    return-void
.end method
