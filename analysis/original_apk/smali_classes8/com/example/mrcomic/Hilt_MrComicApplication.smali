.class public abstract Lcom/example/mrcomic/Hilt_MrComicApplication;
.super Landroid/app/Application;
.source "Hilt_MrComicApplication.java"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field private final componentManager:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

.field private injected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/mrcomic/Hilt_MrComicApplication;->injected:Z

    .line 21
    new-instance v0, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    new-instance v1, Lcom/example/mrcomic/Hilt_MrComicApplication$1;

    invoke-direct {v1, p0}, Lcom/example/mrcomic/Hilt_MrComicApplication$1;-><init>(Lcom/example/mrcomic/Hilt_MrComicApplication;)V

    invoke-direct {v0, v1}, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;-><init>(Ldagger/hilt/android/internal/managers/ComponentSupplier;)V

    iput-object v0, p0, Lcom/example/mrcomic/Hilt_MrComicApplication;->componentManager:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/example/mrcomic/Hilt_MrComicApplication;->componentManager:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    return-object v0
.end method

.method public bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/example/mrcomic/Hilt_MrComicApplication;->componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/example/mrcomic/Hilt_MrComicApplication;->componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hiltInternalInject()V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/example/mrcomic/Hilt_MrComicApplication;->injected:Z

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/mrcomic/Hilt_MrComicApplication;->injected:Z

    .line 52
    invoke-virtual {p0}, Lcom/example/mrcomic/Hilt_MrComicApplication;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/MrComicApplication_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/mrcomic/MrComicApplication;

    invoke-interface {v0, v1}, Lcom/example/mrcomic/MrComicApplication_GeneratedInjector;->injectMrComicApplication(Lcom/example/mrcomic/MrComicApplication;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/example/mrcomic/Hilt_MrComicApplication;->hiltInternalInject()V

    .line 44
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 45
    return-void
.end method
