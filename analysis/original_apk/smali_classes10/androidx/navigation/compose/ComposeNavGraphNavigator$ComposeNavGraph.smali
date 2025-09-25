.class public final Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;
.super Landroidx/navigation/NavGraph;
.source "ComposeNavGraphNavigator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/compose/ComposeNavGraphNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComposeNavGraph"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R:\u0010\u0005\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\n\u00a2\u0006\u0002\u0008\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR:\u0010\u0010\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\n\u00a2\u0006\u0002\u0008\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000fR:\u0010\u0014\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\n\u00a2\u0006\u0002\u0008\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\r\"\u0004\u0008\u0016\u0010\u000fR:\u0010\u0017\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\n\u00a2\u0006\u0002\u0008\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\r\"\u0004\u0008\u0019\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;",
        "Landroidx/navigation/NavGraph;",
        "navGraphNavigator",
        "Landroidx/navigation/Navigator;",
        "(Landroidx/navigation/Navigator;)V",
        "enterTransition",
        "Lkotlin/Function1;",
        "Landroidx/compose/animation/AnimatedContentTransitionScope;",
        "Landroidx/navigation/NavBackStackEntry;",
        "Landroidx/compose/animation/EnterTransition;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "Lkotlin/ExtensionFunctionType;",
        "getEnterTransition$navigation_compose_release",
        "()Lkotlin/jvm/functions/Function1;",
        "setEnterTransition$navigation_compose_release",
        "(Lkotlin/jvm/functions/Function1;)V",
        "exitTransition",
        "Landroidx/compose/animation/ExitTransition;",
        "getExitTransition$navigation_compose_release",
        "setExitTransition$navigation_compose_release",
        "popEnterTransition",
        "getPopEnterTransition$navigation_compose_release",
        "setPopEnterTransition$navigation_compose_release",
        "popExitTransition",
        "getPopExitTransition$navigation_compose_release",
        "setPopExitTransition$navigation_compose_release",
        "navigation-compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private enterTransition:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;"
        }
    .end annotation
.end field

.field private exitTransition:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;"
        }
    .end annotation
.end field

.field private popEnterTransition:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;"
        }
    .end annotation
.end field

.field private popExitTransition:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/navigation/Navigator;)V
    .locals 0
    .param p1, "navGraphNavigator"    # Landroidx/navigation/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavGraph;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Landroidx/navigation/NavGraph;-><init>(Landroidx/navigation/Navigator;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final getEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->enterTransition:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->exitTransition:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getPopEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->popEnterTransition:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getPopExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->popExitTransition:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setEnterTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->enterTransition:Lkotlin/jvm/functions/Function1;

    .line 44
    return-void
.end method

.method public final setExitTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->exitTransition:Lkotlin/jvm/functions/Function1;

    .line 47
    return-void
.end method

.method public final setPopEnterTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->popEnterTransition:Lkotlin/jvm/functions/Function1;

    .line 50
    return-void
.end method

.method public final setPopExitTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->popExitTransition:Lkotlin/jvm/functions/Function1;

    .line 53
    return-void
.end method
