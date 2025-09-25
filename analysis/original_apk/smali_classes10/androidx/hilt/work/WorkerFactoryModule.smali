.class abstract Landroidx/hilt/work/WorkerFactoryModule;
.super Ljava/lang/Object;
.source "WorkerFactoryModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideFactory(Ljava/util/Map;)Landroidx/hilt/work/HiltWorkerFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider<",
            "Landroidx/hilt/work/WorkerAssistedFactory<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;>;>;)",
            "Landroidx/hilt/work/HiltWorkerFactory;"
        }
    .end annotation

    .line 47
    .local p0, "workerFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/inject/Provider<Landroidx/hilt/work/WorkerAssistedFactory<+Landroidx/work/ListenableWorker;>;>;>;"
    new-instance v0, Landroidx/hilt/work/HiltWorkerFactory;

    invoke-direct {v0, p0}, Landroidx/hilt/work/HiltWorkerFactory;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method abstract workerFactoriesMap()Ljava/util/Map;
    .annotation runtime Ldagger/multibindings/Multibinds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/hilt/work/WorkerAssistedFactory<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;>;"
        }
    .end annotation
.end method
