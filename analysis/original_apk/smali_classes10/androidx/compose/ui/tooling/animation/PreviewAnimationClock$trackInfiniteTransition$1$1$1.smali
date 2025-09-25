.class final Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackInfiniteTransition$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PreviewAnimationClock.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackInfiniteTransition$1;->invoke(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreviewAnimationClock.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreviewAnimationClock.android.kt\nandroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackInfiniteTransition$1$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,353:1\n1#2:354\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Long;"
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
.field final synthetic this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;


# direct methods
.method constructor <init>(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackInfiniteTransition$1$1$1;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Long;
    .locals 8

    .line 183
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackInfiniteTransition$1$1$1;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    invoke-static {v0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$getAllClocksExceptInfinite(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/tooling/animation/clock/ComposeAnimationClock;

    .line 354
    .local v1, "clock":Landroidx/compose/ui/tooling/animation/clock/ComposeAnimationClock;
    const/4 v3, 0x0

    .line 183
    .local v3, "$i$a$-maxOfOrNull-PreviewAnimationClock$trackInfiniteTransition$1$1$1$otherClockMaxDuration$1":I
    invoke-interface {v1}, Landroidx/compose/ui/tooling/animation/clock/ComposeAnimationClock;->getMaxDuration()J

    move-result-wide v3

    .end local v1    # "clock":Landroidx/compose/ui/tooling/animation/clock/ComposeAnimationClock;
    .end local v3    # "$i$a$-maxOfOrNull-PreviewAnimationClock$trackInfiniteTransition$1$1$1$otherClockMaxDuration$1":I
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/tooling/animation/clock/ComposeAnimationClock;

    .line 354
    .local v3, "clock":Landroidx/compose/ui/tooling/animation/clock/ComposeAnimationClock;
    const/4 v4, 0x0

    .line 183
    .local v4, "$i$a$-maxOfOrNull-PreviewAnimationClock$trackInfiniteTransition$1$1$1$otherClockMaxDuration$1":I
    invoke-interface {v3}, Landroidx/compose/ui/tooling/animation/clock/ComposeAnimationClock;->getMaxDuration()J

    move-result-wide v3

    .end local v3    # "clock":Landroidx/compose/ui/tooling/animation/clock/ComposeAnimationClock;
    .end local v4    # "$i$a$-maxOfOrNull-PreviewAnimationClock$trackInfiniteTransition$1$1$1$otherClockMaxDuration$1":I
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    check-cast v1, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    move-wide v0, v3

    .line 182
    :goto_2
    nop

    .line 185
    .local v0, "otherClockMaxDuration":J
    iget-object v5, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackInfiniteTransition$1$1$1;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    invoke-virtual {v5}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->getInfiniteTransitionClocks$ui_tooling_release()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    goto :goto_4

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/tooling/animation/clock/InfiniteTransitionClock;

    .local v2, "clock":Landroidx/compose/ui/tooling/animation/clock/InfiniteTransitionClock;
    const/4 v6, 0x0

    .line 186
    .local v6, "$i$a$-maxOfOrNull-PreviewAnimationClock$trackInfiniteTransition$1$1$1$infiniteMaxDurationPerIteration$1":I
    invoke-virtual {v2}, Landroidx/compose/ui/tooling/animation/clock/InfiniteTransitionClock;->getMaxDurationPerIteration()J

    move-result-wide v6

    .end local v2    # "clock":Landroidx/compose/ui/tooling/animation/clock/InfiniteTransitionClock;
    .end local v6    # "$i$a$-maxOfOrNull-PreviewAnimationClock$trackInfiniteTransition$1$1$1$infiniteMaxDurationPerIteration$1":I
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 185
    check-cast v2, Ljava/lang/Comparable;

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/tooling/animation/clock/InfiniteTransitionClock;

    .local v6, "clock":Landroidx/compose/ui/tooling/animation/clock/InfiniteTransitionClock;
    const/4 v7, 0x0

    .line 186
    .local v7, "$i$a$-maxOfOrNull-PreviewAnimationClock$trackInfiniteTransition$1$1$1$infiniteMaxDurationPerIteration$1":I
    invoke-virtual {v6}, Landroidx/compose/ui/tooling/animation/clock/InfiniteTransitionClock;->getMaxDurationPerIteration()J

    move-result-wide v6

    .end local v6    # "clock":Landroidx/compose/ui/tooling/animation/clock/InfiniteTransitionClock;
    .end local v7    # "$i$a$-maxOfOrNull-PreviewAnimationClock$trackInfiniteTransition$1$1$1$infiniteMaxDurationPerIteration$1":I
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 185
    check-cast v6, Ljava/lang/Comparable;

    invoke-interface {v2, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_6

    move-object v2, v6

    goto :goto_3

    :goto_4
    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_5

    .line 187
    :cond_7
    nop

    .line 185
    :goto_5
    nop

    .line 184
    move-wide v2, v3

    .line 188
    .local v2, "infiniteMaxDurationPerIteration":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 180
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackInfiniteTransition$1$1$1;->invoke()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
