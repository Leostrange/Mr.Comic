.class public final Landroidx/hilt/navigation/HiltViewModelFactory;
.super Ljava/lang/Object;
.source "HiltNavBackStackEntry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0008\u0005\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "HiltViewModelFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "context",
        "Landroid/content/Context;",
        "delegateFactory",
        "create",
        "navBackStackEntry",
        "Landroidx/navigation/NavBackStackEntry;",
        "hilt-navigation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final create(Landroid/content/Context;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delegateFactory"    # Landroidx/lifecycle/ViewModelProvider$Factory;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    move-object v0, p0

    .local v0, "it":Landroid/content/Context;
    const/4 v1, 0x0

    .line 62
    .local v1, "$i$a$-let-HiltViewModelFactory$HiltViewModelFactory$activity$1":I
    move-object v2, v0

    .line 63
    .local v2, "ctx":Landroid/content/Context;
    :goto_0
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    .line 65
    instance-of v3, v2, Landroidx/activity/ComponentActivity;

    if-eqz v3, :cond_0

    .line 66
    move-object v3, v2

    check-cast v3, Landroidx/activity/ComponentActivity;

    .line 61
    .end local v0    # "it":Landroid/content/Context;
    .end local v1    # "$i$a$-let-HiltViewModelFactory$HiltViewModelFactory$activity$1":I
    .end local v2    # "ctx":Landroid/content/Context;
    move-object v0, v3

    .line 76
    .local v0, "activity":Landroidx/activity/ComponentActivity;
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 77
    nop

    .line 75
    invoke-static {v1, p1}, Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;->createInternal(Landroid/app/Activity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    const-string v2, "createInternal(\n        \u2026 */ delegateFactory\n    )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 68
    .local v0, "it":Landroid/content/Context;
    .restart local v1    # "$i$a$-let-HiltViewModelFactory$HiltViewModelFactory$activity$1":I
    .restart local v2    # "ctx":Landroid/content/Context;
    :cond_0
    move-object v3, v2

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ctx.baseContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0

    .line 70
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected an activity context for creating a HiltViewModelFactory but instead found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    nop

    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final create(Landroid/content/Context;Landroidx/navigation/NavBackStackEntry;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "navBackStackEntry"    # Landroidx/navigation/NavBackStackEntry;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "navBackStackEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/hilt/navigation/HiltViewModelFactory;->create(Landroid/content/Context;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method
