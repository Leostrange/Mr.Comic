.class public final Landroidx/hilt/work/HiltWorkerFactory;
.super Landroidx/work/WorkerFactory;
.source "HiltWorkerFactory.java"


# instance fields
.field private final mWorkerFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider<",
            "Landroidx/hilt/work/WorkerAssistedFactory<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider<",
            "Landroidx/hilt/work/WorkerAssistedFactory<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;>;>;)V"
        }
    .end annotation

    .line 44
    .local p1, "workerFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/inject/Provider<Landroidx/hilt/work/WorkerAssistedFactory<+Landroidx/work/ListenableWorker;>;>;>;"
    invoke-direct {p0}, Landroidx/work/WorkerFactory;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/hilt/work/HiltWorkerFactory;->mWorkerFactories:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public createWorker(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "workerClassName"    # Ljava/lang/String;
    .param p3, "workerParameters"    # Landroidx/work/WorkerParameters;

    .line 52
    iget-object v0, p0, Landroidx/hilt/work/HiltWorkerFactory;->mWorkerFactories:Ljava/util/Map;

    .line 53
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    .line 54
    .local v0, "factoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroidx/hilt/work/WorkerAssistedFactory<+Landroidx/work/ListenableWorker;>;>;"
    if-nez v0, :cond_0

    .line 55
    const/4 v1, 0x0

    return-object v1

    .line 57
    :cond_0
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/hilt/work/WorkerAssistedFactory;

    invoke-interface {v1, p1, p3}, Landroidx/hilt/work/WorkerAssistedFactory;->create(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v1

    return-object v1
.end method
