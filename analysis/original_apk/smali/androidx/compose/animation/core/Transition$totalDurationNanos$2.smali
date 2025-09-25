.class final Landroidx/compose/animation/core/Transition$totalDurationNanos$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Transition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;)V
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
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/Transition$totalDurationNanos$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1382:1\n33#2,6:1383\n33#2,6:1389\n*S KotlinDebug\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/Transition$totalDurationNanos$2\n*L\n469#1:1383,6\n472#1:1389,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "S",
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
.field final synthetic this$0:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;->this$0:Landroidx/compose/animation/core/Transition;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Long;
    .locals 11

    .line 468
    const-wide/16 v0, 0x0

    .line 469
    .local v0, "maxDurationNanos":J
    iget-object v2, p0, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;->this$0:Landroidx/compose/animation/core/Transition;

    invoke-static {v2}, Landroidx/compose/animation/core/Transition;->access$get_animations$p(Landroidx/compose/animation/core/Transition;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1383
    .local v3, "$i$f$fastForEach":I
    nop

    .line 1384
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 1385
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1386
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .local v7, "it":Landroidx/compose/animation/core/Transition$TransitionAnimationState;
    const/4 v8, 0x0

    .line 470
    .local v8, "$i$a$-fastForEach-Transition$totalDurationNanos$2$1":I
    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getDurationNanos$animation_core_release()J

    move-result-wide v9

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 471
    nop

    .line 1386
    .end local v7    # "it":Landroidx/compose/animation/core/Transition$TransitionAnimationState;
    .end local v8    # "$i$a$-fastForEach-Transition$totalDurationNanos$2$1":I
    nop

    .line 1384
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1388
    .end local v4    # "index$iv":I
    :cond_0
    nop

    .line 472
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    iget-object v2, p0, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;->this$0:Landroidx/compose/animation/core/Transition;

    invoke-static {v2}, Landroidx/compose/animation/core/Transition;->access$get_transitions$p(Landroidx/compose/animation/core/Transition;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .restart local v2    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1389
    .restart local v3    # "$i$f$fastForEach":I
    nop

    .line 1390
    const/4 v4, 0x0

    .restart local v4    # "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_1

    .line 1391
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1392
    .restart local v6    # "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/animation/core/Transition;

    .local v7, "it":Landroidx/compose/animation/core/Transition;
    const/4 v8, 0x0

    .line 473
    .local v8, "$i$a$-fastForEach-Transition$totalDurationNanos$2$2":I
    nop

    .line 474
    nop

    .line 475
    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition;->getTotalDurationNanos()J

    move-result-wide v9

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 473
    move-wide v0, v9

    .line 477
    nop

    .line 1392
    .end local v7    # "it":Landroidx/compose/animation/core/Transition;
    .end local v8    # "$i$a$-fastForEach-Transition$totalDurationNanos$2$2":I
    nop

    .line 1390
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1394
    .end local v4    # "index$iv":I
    :cond_1
    nop

    .line 478
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 467
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;->invoke()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
