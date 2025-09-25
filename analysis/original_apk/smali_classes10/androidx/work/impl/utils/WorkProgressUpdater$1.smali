.class Landroidx/work/impl/utils/WorkProgressUpdater$1;
.super Ljava/lang/Object;
.source "WorkProgressUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/WorkProgressUpdater;->updateProgress(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

.field final synthetic val$data:Landroidx/work/Data;

.field final synthetic val$future:Landroidx/work/impl/utils/futures/SettableFuture;

.field final synthetic val$id:Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/WorkProgressUpdater;Ljava/util/UUID;Landroidx/work/Data;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/work/impl/utils/WorkProgressUpdater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$id",
            "val$data",
            "val$future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    iput-object p2, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/util/UUID;

    iput-object p3, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Landroidx/work/Data;

    iput-object p4, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 74
    iget-object v0, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "workSpecId":Ljava/lang/String;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/utils/WorkProgressUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating progress for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Landroidx/work/Data;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 78
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 79
    .local v1, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    invoke-interface {v1, v0}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v2

    .line 80
    .local v2, "workSpec":Landroidx/work/impl/model/WorkSpec;
    if-eqz v2, :cond_1

    .line 81
    iget-object v3, v2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 83
    .local v3, "state":Landroidx/work/WorkInfo$State;
    sget-object v4, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v3, v4, :cond_0

    .line 84
    new-instance v4, Landroidx/work/impl/model/WorkProgress;

    iget-object v5, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Landroidx/work/Data;

    invoke-direct {v4, v0, v5}, Landroidx/work/impl/model/WorkProgress;-><init>(Ljava/lang/String;Landroidx/work/Data;)V

    .line 85
    .local v4, "progress":Landroidx/work/impl/model/WorkProgress;
    iget-object v5, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    iget-object v5, v5, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/impl/model/WorkProgressDao;

    move-result-object v5

    invoke-interface {v5, v4}, Landroidx/work/impl/model/WorkProgressDao;->insert(Landroidx/work/impl/model/WorkProgress;)V

    .line 86
    .end local v4    # "progress":Landroidx/work/impl/model/WorkProgress;
    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/WorkProgressUpdater;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring setProgressAsync(...). WorkSpec ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is not in a RUNNING state."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v3    # "state":Landroidx/work/WorkInfo$State;
    :goto_0
    nop

    .line 99
    iget-object v3, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 100
    iget-object v3, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    iget-object v3, v3, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V

    .line 105
    .end local v1    # "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    .end local v2    # "workSpec":Landroidx/work/impl/model/WorkSpec;
    goto :goto_1

    .line 93
    .restart local v1    # "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    .restart local v2    # "workSpec":Landroidx/work/impl/model/WorkSpec;
    :cond_1
    const-string v3, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 97
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "workSpecId":Ljava/lang/String;
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v1    # "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    .end local v2    # "workSpec":Landroidx/work/impl/model/WorkSpec;
    .end local v3    # "message":Ljava/lang/String;
    .restart local v0    # "workSpecId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 102
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/utils/WorkProgressUpdater;->TAG:Ljava/lang/String;

    const-string v4, "Error updating Worker progress"

    invoke-virtual {v2, v3, v4, v1}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    iget-object v2, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v2, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    nop

    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_1
    iget-object v1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 106
    nop

    .line 107
    return-void

    .line 105
    :catchall_1
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Landroidx/work/impl/utils/WorkProgressUpdater;

    iget-object v2, v2, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 106
    throw v1
.end method
