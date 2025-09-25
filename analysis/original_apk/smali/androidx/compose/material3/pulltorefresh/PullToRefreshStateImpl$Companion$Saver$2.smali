.class final Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion$Saver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PullToRefresh.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion;->Saver(FLkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
        "isRefreshing",
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
.field final synthetic $enabled:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $positionalThreshold:F


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

    iput p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion$Saver$2;->$positionalThreshold:F

    iput-object p2, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion$Saver$2;->$enabled:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Z)Landroidx/compose/material3/pulltorefresh/PullToRefreshState;
    .locals 3
    .param p1, "isRefreshing"    # Z

    .line 412
    new-instance v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    iget v1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion$Saver$2;->$positionalThreshold:F

    iget-object v2, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion$Saver$2;->$enabled:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, p1, v1, v2}, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;-><init>(ZFLkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 409
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion$Saver$2;->invoke(Z)Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    move-result-object v0

    return-object v0
.end method
