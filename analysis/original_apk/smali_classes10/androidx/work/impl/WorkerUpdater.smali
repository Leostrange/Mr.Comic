.class public final Landroidx/work/impl/WorkerUpdater;
.super Ljava/lang/Object;
.source "WorkerUpdater.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkerUpdater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkerUpdater.kt\nandroidx/work/impl/WorkerUpdater\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,171:1\n1855#2,2:172\n*S KotlinDebug\n*F\n+ 1 WorkerUpdater.kt\nandroidx/work/impl/WorkerUpdater\n*L\n55#1:172,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001aD\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u001a\u001c\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007\u001a\u0014\u0010\u0016\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000fH\u0002\u001a\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001a*\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "updateWorkImpl",
        "Landroidx/work/WorkManager$UpdateResult;",
        "processor",
        "Landroidx/work/impl/Processor;",
        "workDatabase",
        "Landroidx/work/impl/WorkDatabase;",
        "configuration",
        "Landroidx/work/Configuration;",
        "schedulers",
        "",
        "Landroidx/work/impl/Scheduler;",
        "newWorkSpec",
        "Landroidx/work/impl/model/WorkSpec;",
        "tags",
        "",
        "",
        "enqueueUniquelyNamedPeriodic",
        "Landroidx/work/Operation;",
        "Landroidx/work/impl/WorkManagerImpl;",
        "name",
        "workRequest",
        "Landroidx/work/WorkRequest;",
        "failWorkTypeChanged",
        "",
        "Landroidx/work/impl/OperationImpl;",
        "message",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "work-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$N89sN1A-Ft8Xw-BLJ76ILDUlQ9k(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/impl/OperationImpl;Lkotlin/jvm/functions/Function0;Landroidx/work/WorkRequest;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/work/impl/WorkerUpdater;->enqueueUniquelyNamedPeriodic$lambda$4(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/impl/OperationImpl;Lkotlin/jvm/functions/Function0;Landroidx/work/WorkRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h_JOXj0UWFYj1IJe7Eauuc0RSNw(Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkRequest;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/WorkerUpdater;->updateWorkImpl$lambda$3(Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rZYaIXP2nyFPAV1cj7a66zI-7Hs(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/work/impl/WorkerUpdater;->updateWorkImpl$lambda$2(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method

.method public static final enqueueUniquelyNamedPeriodic(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    .locals 10
    .param p0, "$this$enqueueUniquelyNamedPeriodic"    # Landroidx/work/impl/WorkManagerImpl;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workRequest"    # Landroidx/work/WorkRequest;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroidx/work/impl/OperationImpl;

    invoke-direct {v0}, Landroidx/work/impl/OperationImpl;-><init>()V

    .line 118
    .local v0, "operation":Landroidx/work/impl/OperationImpl;
    new-instance v1, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;

    invoke-direct {v1, p2, p0, p1, v0}, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;-><init>(Landroidx/work/WorkRequest;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/impl/OperationImpl;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 123
    .local v7, "enqueueNew":Lkotlin/jvm/functions/Function0;
    invoke-virtual {p0}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v8

    new-instance v9, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/impl/OperationImpl;Lkotlin/jvm/functions/Function0;Landroidx/work/WorkRequest;)V

    invoke-interface {v8, v9}, Landroidx/work/impl/utils/taskexecutor/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 165
    move-object v1, v0

    check-cast v1, Landroidx/work/Operation;

    return-object v1
.end method

.method private static final enqueueUniquelyNamedPeriodic$lambda$4(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/impl/OperationImpl;Lkotlin/jvm/functions/Function0;Landroidx/work/WorkRequest;)V
    .locals 50
    .param p0, "$this_enqueueUniquelyNamedPeriodic"    # Landroidx/work/impl/WorkManagerImpl;
    .param p1, "$name"    # Ljava/lang/String;
    .param p2, "$operation"    # Landroidx/work/impl/OperationImpl;
    .param p3, "$enqueueNew"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$workRequest"    # Landroidx/work/WorkRequest;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "$this_enqueueUniquelyNamedPeriodic"

    move-object/from16 v3, p0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$name"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operation"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$enqueueNew"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$workRequest"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v6

    .line 125
    .local v6, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    invoke-interface {v6, v1}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 126
    .local v7, "idAndStates":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x1

    if-le v0, v8, :cond_0

    .line 127
    const-string v0, "Can\'t apply UPDATE policy to the chains of work."

    invoke-static {v2, v0}, Landroidx/work/impl/WorkerUpdater;->failWorkTypeChanged(Landroidx/work/impl/OperationImpl;Ljava/lang/String;)V

    .line 128
    return-void

    .line 130
    :cond_0
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 131
    .local v8, "current":Landroidx/work/impl/model/WorkSpec$IdAndState;
    if-nez v8, :cond_1

    .line 132
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 133
    return-void

    .line 135
    :cond_1
    iget-object v0, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v9

    .line 136
    .local v9, "spec":Landroidx/work/impl/model/WorkSpec;
    if-nez v9, :cond_2

    .line 137
    nop

    .line 138
    new-instance v0, Landroidx/work/Operation$State$FAILURE;

    .line 139
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WorkSpec with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", that matches a name \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 140
    nop

    .line 139
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 140
    nop

    .line 139
    const-string v12, "\", wasn\'t found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    .line 138
    invoke-direct {v0, v10}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Landroidx/work/Operation$State;

    .line 137
    invoke-virtual {v2, v0}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    .line 143
    return-void

    .line 145
    :cond_2
    invoke-virtual {v9}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    const-string v0, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    invoke-static {v2, v0}, Landroidx/work/impl/WorkerUpdater;->failWorkTypeChanged(Landroidx/work/impl/OperationImpl;Ljava/lang/String;)V

    .line 148
    return-void

    .line 150
    :cond_3
    iget-object v0, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v10, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v0, v10, :cond_4

    .line 151
    iget-object v0, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    .line 152
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 153
    return-void

    .line 155
    :cond_4
    invoke-virtual/range {p4 .. p4}, Landroidx/work/WorkRequest;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object v10

    iget-object v11, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const v42, 0x7ffffe

    const/16 v43, 0x0

    invoke-static/range {v10 .. v43}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIIILjava/lang/Object;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v10

    .line 156
    .local v10, "newWorkSpec":Landroidx/work/impl/model/WorkSpec;
    nop

    .line 158
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object v0

    const-string/jumbo v11, "processor"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v11

    const-string/jumbo v12, "workDatabase"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v12

    const-string v13, "configuration"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v13

    const-string/jumbo v14, "schedulers"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Landroidx/work/WorkRequest;->getTags()Ljava/util/Set;

    move-result-object v49

    .line 157
    move-object/from16 v44, v0

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v47, v13

    move-object/from16 v48, v10

    invoke-static/range {v44 .. v49}, Landroidx/work/impl/WorkerUpdater;->updateWorkImpl(Landroidx/work/impl/Processor;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Ljava/util/List;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)Landroidx/work/WorkManager$UpdateResult;

    .line 160
    sget-object v0, Landroidx/work/Operation;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    check-cast v0, Landroidx/work/Operation$State;

    invoke-virtual {v2, v0}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v11, Landroidx/work/Operation$State$FAILURE;

    invoke-direct {v11, v0}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    check-cast v11, Landroidx/work/Operation$State;

    invoke-virtual {v2, v11}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    .line 164
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static final failWorkTypeChanged(Landroidx/work/impl/OperationImpl;Ljava/lang/String;)V
    .locals 2
    .param p0, "$this$failWorkTypeChanged"    # Landroidx/work/impl/OperationImpl;
    .param p1, "message"    # Ljava/lang/String;

    .line 168
    nop

    .line 169
    new-instance v0, Landroidx/work/Operation$State$FAILURE;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Landroidx/work/Operation$State;

    .line 168
    invoke-virtual {p0, v0}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    .line 170
    return-void
.end method

.method private static final updateWorkImpl(Landroidx/work/impl/Processor;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Ljava/util/List;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)Landroidx/work/WorkManager$UpdateResult;
    .locals 16
    .param p0, "processor"    # Landroidx/work/impl/Processor;
    .param p1, "workDatabase"    # Landroidx/work/impl/WorkDatabase;
    .param p2, "configuration"    # Landroidx/work/Configuration;
    .param p3, "schedulers"    # Ljava/util/List;
    .param p4, "newWorkSpec"    # Landroidx/work/impl/model/WorkSpec;
    .param p5, "tags"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/Processor;",
            "Landroidx/work/impl/WorkDatabase;",
            "Landroidx/work/Configuration;",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/impl/Scheduler;",
            ">;",
            "Landroidx/work/impl/model/WorkSpec;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/work/WorkManager$UpdateResult;"
        }
    .end annotation

    .line 43
    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v11, v10, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 44
    .local v11, "workSpecId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    invoke-interface {v0, v11}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v12, v0

    .line 46
    .local v12, "oldWorkSpec":Landroidx/work/impl/model/WorkSpec;
    iget-object v0, v12, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/work/WorkManager$UpdateResult;->NOT_APPLIED:Landroidx/work/WorkManager$UpdateResult;

    return-object v0

    .line 47
    :cond_0
    invoke-virtual {v12}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    invoke-virtual/range {p4 .. p4}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_5

    .line 54
    move-object/from16 v13, p0

    invoke-virtual {v13, v11}, Landroidx/work/impl/Processor;->isEnqueued(Ljava/lang/String;)Z

    move-result v14

    .line 55
    .local v14, "isEnqueued":Z
    if-nez v14, :cond_2

    move-object v0, v9

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 172
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/work/impl/Scheduler;

    .local v4, "scheduler":Landroidx/work/impl/Scheduler;
    const/4 v5, 0x0

    .line 55
    .local v5, "$i$a$-forEach-WorkerUpdater$updateWorkImpl$1":I
    invoke-interface {v4, v11}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    .line 172
    .end local v4    # "scheduler":Landroidx/work/impl/Scheduler;
    .end local v5    # "$i$a$-forEach-WorkerUpdater$updateWorkImpl$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 173
    :cond_1
    nop

    .line 56
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :cond_2
    new-instance v15, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object v5, v11

    move-object/from16 v6, p5

    move v7, v14

    invoke-direct/range {v0 .. v7}, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    invoke-virtual {v8, v15}, Landroidx/work/impl/WorkDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    .line 86
    if-nez v14, :cond_3

    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p2

    .line 87
    :goto_1
    if-eqz v14, :cond_4

    sget-object v1, Landroidx/work/WorkManager$UpdateResult;->APPLIED_FOR_NEXT_RUN:Landroidx/work/WorkManager$UpdateResult;

    goto :goto_2

    :cond_4
    sget-object v1, Landroidx/work/WorkManager$UpdateResult;->APPLIED_IMMEDIATELY:Landroidx/work/WorkManager$UpdateResult;

    :goto_2
    return-object v1

    .line 48
    .end local v14    # "isEnqueued":Z
    :cond_5
    move-object/from16 v13, p0

    move-object/from16 v0, p2

    sget-object v1, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 49
    .local v1, "type":Lkotlin/jvm/functions/Function1;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Worker to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Worker. Update operation must preserve worker\'s type."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    .end local v1    # "type":Lkotlin/jvm/functions/Function1;
    .end local v12    # "oldWorkSpec":Landroidx/work/impl/model/WorkSpec;
    :cond_6
    move-object/from16 v13, p0

    move-object/from16 v0, p2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Worker with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final updateWorkImpl(Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p0, "$this$updateWorkImpl"    # Landroidx/work/impl/WorkManagerImpl;
    .param p1, "workRequest"    # Landroidx/work/WorkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkManagerImpl;",
            "Landroidx/work/WorkRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/WorkManager$UpdateResult;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    .line 94
    .local v0, "future":Landroidx/work/impl/utils/futures/SettableFuture;
    invoke-virtual {p0}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p0, p1}, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;-><init>(Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkRequest;)V

    invoke-interface {v1, v2}, Landroidx/work/impl/utils/taskexecutor/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 106
    const-string v1, "future"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v1
.end method

.method private static final updateWorkImpl$lambda$2(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 40
    .param p0, "$workDatabase"    # Landroidx/work/impl/WorkDatabase;
    .param p1, "$oldWorkSpec"    # Landroidx/work/impl/model/WorkSpec;
    .param p2, "$newWorkSpec"    # Landroidx/work/impl/model/WorkSpec;
    .param p3, "$schedulers"    # Ljava/util/List;
    .param p4, "$workSpecId"    # Ljava/lang/String;
    .param p5, "$tags"    # Ljava/util/Set;
    .param p6, "$isEnqueued"    # Z

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    const-string v5, "$workDatabase"

    move-object/from16 v15, p0

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$oldWorkSpec"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$newWorkSpec"

    move-object/from16 v13, p2

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$schedulers"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$workSpecId"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$tags"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v14

    .line 58
    .local v14, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao;

    move-result-object v11

    .line 63
    .local v11, "workTagDao":Landroidx/work/impl/model/WorkTagDao;
    iget-object v6, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 64
    iget v5, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v18, v5

    .line 65
    iget-wide v7, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    move-wide/from16 v22, v7

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/WorkSpec;->getGeneration()I

    move-result v5

    const/4 v12, 0x1

    add-int/lit8 v31, v5, 0x1

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/WorkSpec;->getPeriodCount()I

    move-result v30

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverride()J

    move-result-wide v32

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v34

    .line 62
    const/4 v5, 0x0

    .line 63
    nop

    .line 62
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v38, v11

    .end local v11    # "workTagDao":Landroidx/work/impl/model/WorkTagDao;
    .local v38, "workTagDao":Landroidx/work/impl/model/WorkTagDao;
    move-wide/from16 v11, v16

    move-object/from16 v39, v14

    .end local v14    # "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    .local v39, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    move-wide/from16 v13, v16

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    .line 64
    nop

    .line 62
    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    .line 65
    nop

    .line 62
    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 67
    nop

    .line 66
    nop

    .line 68
    nop

    .line 69
    nop

    .line 62
    const/16 v35, 0x0

    const v36, 0x43dbfd

    const/16 v37, 0x0

    invoke-static/range {v4 .. v37}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIIILjava/lang/Object;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v4

    .line 70
    move-object v5, v4

    .local v5, "$this$updateWorkImpl_u24lambda_u242_u24lambda_u241":Landroidx/work/impl/model/WorkSpec;
    const/4 v6, 0x0

    .line 71
    .local v6, "$i$a$-apply-WorkerUpdater$updateWorkImpl$2$updatedSpec$1":I
    invoke-virtual/range {p2 .. p2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverride()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Landroidx/work/impl/model/WorkSpec;->setNextScheduleTimeOverride(J)V

    .line 73
    invoke-virtual {v5}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v5, v7}, Landroidx/work/impl/model/WorkSpec;->setNextScheduleTimeOverrideGeneration(I)V

    .line 76
    :cond_0
    nop

    .line 70
    .end local v5    # "$this$updateWorkImpl_u24lambda_u242_u24lambda_u241":Landroidx/work/impl/model/WorkSpec;
    .end local v6    # "$i$a$-apply-WorkerUpdater$updateWorkImpl$2$updatedSpec$1":I
    nop

    .line 62
    nop

    .line 78
    .local v4, "updatedSpec":Landroidx/work/impl/model/WorkSpec;
    invoke-static {v1, v4}, Landroidx/work/impl/utils/EnqueueUtilsKt;->wrapInConstraintTrackingWorkerIfNeeded(Ljava/util/List;Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v5

    move-object/from16 v6, v39

    .end local v39    # "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    .local v6, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    invoke-interface {v6, v5}, Landroidx/work/impl/model/WorkSpecDao;->updateWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    .line 79
    move-object/from16 v5, v38

    .end local v38    # "workTagDao":Landroidx/work/impl/model/WorkTagDao;
    .local v5, "workTagDao":Landroidx/work/impl/model/WorkTagDao;
    invoke-interface {v5, v2}, Landroidx/work/impl/model/WorkTagDao;->deleteByWorkSpecId(Ljava/lang/String;)V

    .line 80
    invoke-interface {v5, v2, v3}, Landroidx/work/impl/model/WorkTagDao;->insertTags(Ljava/lang/String;Ljava/util/Set;)V

    .line 81
    if-nez p6, :cond_1

    .line 82
    const-wide/16 v7, -0x1

    invoke-interface {v6, v2, v7, v8}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/impl/model/WorkProgressDao;

    move-result-object v7

    invoke-interface {v7, v2}, Landroidx/work/impl/model/WorkProgressDao;->delete(Ljava/lang/String;)V

    .line 85
    :cond_1
    return-void
.end method

.method private static final updateWorkImpl$lambda$3(Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkRequest;)V
    .locals 7
    .param p0, "$future"    # Landroidx/work/impl/utils/futures/SettableFuture;
    .param p1, "$this_updateWorkImpl"    # Landroidx/work/impl/WorkManagerImpl;
    .param p2, "$workRequest"    # Landroidx/work/WorkRequest;

    const-string v0, "$this_updateWorkImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$workRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 96
    :cond_0
    nop

    .line 98
    :try_start_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object v1

    const-string/jumbo v0, "processor"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    const-string/jumbo v0, "workDatabase"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v3

    const-string v0, "configuration"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v4

    const-string/jumbo v0, "schedulers"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/work/WorkRequest;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object v5

    invoke-virtual {p2}, Landroidx/work/WorkRequest;->getTags()Ljava/util/Set;

    move-result-object v6

    .line 97
    invoke-static/range {v1 .. v6}, Landroidx/work/impl/WorkerUpdater;->updateWorkImpl(Landroidx/work/impl/Processor;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Ljava/util/List;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)Landroidx/work/WorkManager$UpdateResult;

    move-result-object v0

    .line 101
    .local v0, "result":Landroidx/work/WorkManager$UpdateResult;
    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    .end local v0    # "result":Landroidx/work/WorkManager$UpdateResult;
    :catchall_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 105
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
