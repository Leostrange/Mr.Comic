.class public final Ldagger/hilt/android/internal/managers/SavedStateHandleModule_ProvideSavedStateHandleFactory;
.super Ljava/lang/Object;
.source "SavedStateHandleModule_ProvideSavedStateHandleFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroidx/lifecycle/SavedStateHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private final savedStateHandleHolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedStateHandleHolderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p1, "savedStateHandleHolderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ldagger/hilt/android/internal/managers/SavedStateHandleModule_ProvideSavedStateHandleFactory;->savedStateHandleHolderProvider:Ljavax/inject/Provider;

    .line 27
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/hilt/android/internal/managers/SavedStateHandleModule_ProvideSavedStateHandleFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedStateHandleHolderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;",
            ">;)",
            "Ldagger/hilt/android/internal/managers/SavedStateHandleModule_ProvideSavedStateHandleFactory;"
        }
    .end annotation

    .line 36
    .local p0, "savedStateHandleHolderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;>;"
    new-instance v0, Ldagger/hilt/android/internal/managers/SavedStateHandleModule_ProvideSavedStateHandleFactory;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/SavedStateHandleModule_ProvideSavedStateHandleFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSavedStateHandle(Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;)Landroidx/lifecycle/SavedStateHandle;
    .locals 1
    .param p0, "savedStateHandleHolder"    # Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedStateHandleHolder"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Ldagger/hilt/android/internal/managers/SavedStateHandleModule;->provideSavedStateHandle(Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/SavedStateHandle;

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/lifecycle/SavedStateHandle;
    .locals 1

    .line 31
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/SavedStateHandleModule_ProvideSavedStateHandleFactory;->savedStateHandleHolderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;

    invoke-static {v0}, Ldagger/hilt/android/internal/managers/SavedStateHandleModule_ProvideSavedStateHandleFactory;->provideSavedStateHandle(Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/SavedStateHandleModule_ProvideSavedStateHandleFactory;->get()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    return-object v0
.end method
