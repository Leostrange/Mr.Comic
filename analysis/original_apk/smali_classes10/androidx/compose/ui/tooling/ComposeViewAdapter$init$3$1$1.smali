.class final Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ComposeViewAdapter.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic this$0:Landroidx/compose/ui/tooling/ComposeViewAdapter;


# direct methods
.method constructor <init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$1;->this$0:Landroidx/compose/ui/tooling/ComposeViewAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 527
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 531
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$1;->this$0:Landroidx/compose/ui/tooling/ComposeViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type androidx.compose.ui.platform.ComposeView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/platform/ComposeView;

    .line 533
    .local v0, "composeView":Landroidx/compose/ui/platform/ComposeView;
    nop

    .line 532
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/ComposeView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroidx/compose/ui/platform/ViewRootForTest;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/compose/ui/platform/ViewRootForTest;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 533
    :goto_0
    if-eqz v1, :cond_1

    .line 532
    nop

    .line 533
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewRootForTest;->invalidateDescendants()V

    .line 536
    :cond_1
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    .line 537
    return-void
.end method
