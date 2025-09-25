.class public final synthetic Landroidx/lifecycle/Lifecycle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/Lifecycle$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/Lifecycle$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0, p1, p2}, Landroidx/lifecycle/Lifecycle;->$r8$lambda$BUbamYd8Zk_zsr9y2zTpEqpcQsE(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
