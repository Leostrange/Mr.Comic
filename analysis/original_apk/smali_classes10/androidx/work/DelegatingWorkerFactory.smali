.class public Landroidx/work/DelegatingWorkerFactory;
.super Landroidx/work/WorkerFactory;
.source "DelegatingWorkerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/WorkerFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "DelegatingWkrFctry"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/DelegatingWorkerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/work/WorkerFactory;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/work/DelegatingWorkerFactory;->mFactories:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public final addFactory(Landroidx/work/WorkerFactory;)V
    .locals 1
    .param p1, "workerFactory"    # Landroidx/work/WorkerFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workerFactory"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Landroidx/work/DelegatingWorkerFactory;->mFactories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public final createWorker(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 5
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "workerClassName"    # Ljava/lang/String;
    .param p3, "workerParameters"    # Landroidx/work/WorkerParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appContext",
            "workerClassName",
            "workerParameters"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroidx/work/DelegatingWorkerFactory;->mFactories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/WorkerFactory;

    .line 71
    .local v1, "factory":Landroidx/work/WorkerFactory;
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Landroidx/work/WorkerFactory;->createWorker(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .local v2, "worker":Landroidx/work/ListenableWorker;
    if-eqz v2, :cond_0

    .line 74
    return-object v2

    .line 81
    .end local v2    # "worker":Landroidx/work/ListenableWorker;
    :cond_0
    nop

    .line 82
    .end local v1    # "factory":Landroidx/work/WorkerFactory;
    goto :goto_0

    .line 76
    .restart local v1    # "factory":Landroidx/work/WorkerFactory;
    :catchall_0
    move-exception v0

    .line 77
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate a ListenableWorker ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "message":Ljava/lang/String;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v3

    sget-object v4, Landroidx/work/DelegatingWorkerFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    throw v0

    .line 85
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v1    # "factory":Landroidx/work/WorkerFactory;
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/WorkerFactory;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroidx/work/DelegatingWorkerFactory;->mFactories:Ljava/util/List;

    return-object v0
.end method
