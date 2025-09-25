.class public final Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion;
.super Ljava/lang/Object;
.source "PullToRefresh.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion;",
        "",
        "()V",
        "Saver",
        "Landroidx/compose/runtime/saveable/Saver;",
        "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
        "",
        "positionalThreshold",
        "",
        "enabled",
        "Lkotlin/Function0;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final Saver(FLkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/Saver;
    .locals 2
    .param p1, "positionalThreshold"    # F
    .param p2, "enabled"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 409
    sget-object v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion$Saver$1;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion$Saver$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    new-instance v1, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion$Saver$2;

    invoke-direct {v1, p1, p2}, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion$Saver$2;-><init>(FLkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    .line 414
    return-object v0
.end method
