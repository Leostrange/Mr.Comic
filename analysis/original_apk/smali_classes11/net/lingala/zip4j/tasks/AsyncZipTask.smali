.class public abstract Lnet/lingala/zip4j/tasks/AsyncZipTask;
.super Ljava/lang/Object;
.source "AsyncZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private final runInThread:Z


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 1
    .param p1, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .line 15
    .local p0, "this":Lnet/lingala/zip4j/tasks/AsyncZipTask;, "Lnet/lingala/zip4j/tasks/AsyncZipTask<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 17
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;->access$100(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->runInThread:Z

    .line 18
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;->access$200(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 19
    return-void
.end method

.method static synthetic access$300(Lnet/lingala/zip4j/tasks/AsyncZipTask;)Lnet/lingala/zip4j/progress/ProgressMonitor;
    .locals 1
    .param p0, "x0"    # Lnet/lingala/zip4j/tasks/AsyncZipTask;

    .line 9
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-object v0
.end method

.method static synthetic access$400(Lnet/lingala/zip4j/tasks/AsyncZipTask;Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .param p0, "x0"    # Lnet/lingala/zip4j/tasks/AsyncZipTask;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->performTaskWithErrorHandling(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method static synthetic access$500(Lnet/lingala/zip4j/tasks/AsyncZipTask;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lnet/lingala/zip4j/tasks/AsyncZipTask;

    .line 9
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private initProgressMonitor()V
    .locals 2

    .line 73
    .local p0, "this":Lnet/lingala/zip4j/tasks/AsyncZipTask;, "Lnet/lingala/zip4j/tasks/AsyncZipTask<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->fullReset()V

    .line 74
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V

    .line 75
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentTask(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V

    .line 76
    return-void
.end method

.method private performTaskWithErrorHandling(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 2
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/lingala/zip4j/progress/ProgressMonitor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 51
    .local p0, "this":Lnet/lingala/zip4j/tasks/AsyncZipTask;, "Lnet/lingala/zip4j/tasks/AsyncZipTask<TT;>;"
    .local p1, "taskParameters":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 52
    invoke-virtual {p2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitor()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    nop

    .line 60
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitor(Ljava/lang/Exception;)V

    .line 58
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitor(Ljava/lang/Exception;)V

    .line 55
    throw v0
.end method


# virtual methods
.method protected abstract calculateTotalWork(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 22
    .local p0, "this":Lnet/lingala/zip4j/tasks/AsyncZipTask;, "Lnet/lingala/zip4j/tasks/AsyncZipTask<TT;>;"
    .local p1, "taskParameters":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->runInThread:Z

    if-eqz v0, :cond_1

    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getState()Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid operation - Zip4j is in busy state"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    :goto_0
    invoke-direct {p0}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->initProgressMonitor()V

    .line 28
    iget-boolean v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->runInThread:Z

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->calculateTotalWork(Ljava/lang/Object;)J

    move-result-wide v0

    .line 30
    .local v0, "totalWorkToBeDone":J
    iget-object v2, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 32
    iget-object v2, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;

    invoke-direct {v3, p0, p1}, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 44
    .end local v0    # "totalWorkToBeDone":J
    goto :goto_1

    .line 45
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->performTaskWithErrorHandling(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 47
    :goto_1
    return-void
.end method

.method protected abstract executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/lingala/zip4j/progress/ProgressMonitor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
.end method

.method protected verifyIfTaskIsCancelled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 63
    .local p0, "this":Lnet/lingala/zip4j/tasks/AsyncZipTask;, "Lnet/lingala/zip4j/tasks/AsyncZipTask<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V

    .line 68
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V

    .line 69
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Task cancelled"

    sget-object v2, Lnet/lingala/zip4j/exception/ZipException$Type;->TASK_CANCELLED_EXCEPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v0
.end method
