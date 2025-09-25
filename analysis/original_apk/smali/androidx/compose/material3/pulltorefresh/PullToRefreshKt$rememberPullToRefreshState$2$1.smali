.class final Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$rememberPullToRefreshState$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PullToRefresh.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->rememberPullToRefreshState--orJrPs(FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/pulltorefresh/PullToRefreshState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
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
.field final synthetic $enabled:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $positionalThresholdPx:F


# direct methods
.method constructor <init>(FLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$rememberPullToRefreshState$2$1;->$positionalThresholdPx:F

    iput-object p2, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$rememberPullToRefreshState$2$1;->$enabled:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/material3/pulltorefresh/PullToRefreshState;
    .locals 4

    .line 263
    new-instance v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 264
    nop

    .line 265
    iget v1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$rememberPullToRefreshState$2$1;->$positionalThresholdPx:F

    .line 266
    iget-object v2, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$rememberPullToRefreshState$2$1;->$enabled:Lkotlin/jvm/functions/Function0;

    .line 263
    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;-><init>(ZFLkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 262
    invoke-virtual {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$rememberPullToRefreshState$2$1;->invoke()Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    move-result-object v0

    return-object v0
.end method
