.class public Lnet/lingala/zip4j/progress/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/progress/ProgressMonitor$Task;,
        Lnet/lingala/zip4j/progress/ProgressMonitor$Result;,
        Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    }
.end annotation


# instance fields
.field private cancelAllTasks:Z

.field private currentTask:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

.field private exception:Ljava/lang/Exception;

.field private fileName:Ljava/lang/String;

.field private pause:Z

.field private percentDone:I

.field private result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field private state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

.field private totalWork:J

.field private workCompleted:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 41
    return-void
.end method

.method private reset()V
    .locals 1

    .line 83
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->NONE:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentTask:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 84
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 85
    return-void
.end method


# virtual methods
.method public endProgressMonitor()V
    .locals 1

    .line 63
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 65
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 66
    return-void
.end method

.method public endProgressMonitor(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 69
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 70
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Exception;

    .line 71
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 72
    return-void
.end method

.method public fullReset()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    .line 78
    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 80
    return-void
.end method

.method public getCurrentTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 116
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentTask:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 140
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentDone()I
    .locals 1

    .line 108
    iget v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    return v0
.end method

.method public getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
    .locals 1

    .line 132
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    return-object v0
.end method

.method public getState()Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    .locals 1

    .line 88
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-object v0
.end method

.method public getTotalWork()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    return-wide v0
.end method

.method public getWorkCompleted()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    return-wide v0
.end method

.method public isCancelAllTasks()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->cancelAllTasks:Z

    return v0
.end method

.method public isPause()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    return v0
.end method

.method public setCancelAllTasks(Z)V
    .locals 0
    .param p1, "cancelAllTasks"    # Z

    .line 152
    iput-boolean p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->cancelAllTasks:Z

    .line 153
    return-void
.end method

.method public setCurrentTask(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V
    .locals 0
    .param p1, "currentTask"    # Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 120
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentTask:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 121
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 144
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Exception;

    .line 145
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setPause(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .line 160
    iput-boolean p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    .line 161
    return-void
.end method

.method public setPercentDone(I)V
    .locals 0
    .param p1, "percentDone"    # I

    .line 112
    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 113
    return-void
.end method

.method public setResult(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V
    .locals 0
    .param p1, "result"    # Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 136
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 137
    return-void
.end method

.method public setState(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V
    .locals 0
    .param p1, "state"    # Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 92
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 93
    return-void
.end method

.method public setTotalWork(J)V
    .locals 0
    .param p1, "totalWork"    # J

    .line 100
    iput-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    .line 101
    return-void
.end method

.method public updateWorkCompleted(J)V
    .locals 4
    .param p1, "workCompleted"    # J

    .line 44
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    .line 46
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 47
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 48
    iget v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 49
    iput v1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 53
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    if-eqz v0, :cond_1

    .line 55
    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    goto :goto_1

    .line 60
    :cond_1
    return-void
.end method
