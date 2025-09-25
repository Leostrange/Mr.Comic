.class public final Landroidx/work/impl/utils/EnqueueUtilsKt;
.super Ljava/lang/Object;
.source "EnqueueUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnqueueUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnqueueUtils.kt\nandroidx/work/impl/utils/EnqueueUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1774#2,4:118\n1747#2,3:123\n1#3:122\n*S KotlinDebug\n*F\n+ 1 EnqueueUtils.kt\nandroidx/work/impl/utils/EnqueueUtilsKt\n*L\n44#1:118,4\n112#1:123,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0000\u001a\u001e\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002\u001a\u001e\u0010\u0012\u001a\u00020\t2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\n\u001a\u00020\tH\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "checkContentUriTriggerWorkerLimits",
        "",
        "workDatabase",
        "Landroidx/work/impl/WorkDatabase;",
        "configuration",
        "Landroidx/work/Configuration;",
        "continuation",
        "Landroidx/work/impl/WorkContinuationImpl;",
        "tryDelegateConstrainedWorkSpec",
        "Landroidx/work/impl/model/WorkSpec;",
        "workSpec",
        "usesScheduler",
        "",
        "schedulers",
        "",
        "Landroidx/work/impl/Scheduler;",
        "className",
        "",
        "wrapInConstraintTrackingWorkerIfNeeded",
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
.method public static final checkContentUriTriggerWorkerLimits(Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 13
    .param p0, "workDatabase"    # Landroidx/work/impl/WorkDatabase;
    .param p1, "configuration"    # Landroidx/work/Configuration;
    .param p2, "continuation"    # Landroidx/work/impl/WorkContinuationImpl;

    const-string/jumbo v0, "workDatabase"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    nop

    .line 40
    const/4 v0, 0x1

    new-array v1, v0, [Landroidx/work/impl/WorkContinuationImpl;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 41
    .local v1, "continuations":Ljava/util/List;
    const/4 v3, 0x0

    .line 42
    .local v3, "newCount":I
    :goto_0
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 43
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/WorkContinuationImpl;

    .line 44
    .local v4, "current":Landroidx/work/impl/WorkContinuationImpl;
    invoke-virtual {v4}, Landroidx/work/impl/WorkContinuationImpl;->getWork()Ljava/util/List;

    move-result-object v5

    const-string v6, "current.work"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 118
    .local v6, "$i$f$count":I
    instance-of v7, v5, Ljava/util/Collection;

    if-eqz v7, :cond_0

    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v2

    goto :goto_2

    .line 119
    :cond_0
    const/4 v7, 0x0

    .line 120
    .local v7, "count$iv":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/work/WorkRequest;

    .local v10, "it":Landroidx/work/WorkRequest;
    const/4 v11, 0x0

    .line 44
    .local v11, "$i$a$-count-EnqueueUtilsKt$checkContentUriTriggerWorkerLimits$1":I
    invoke-virtual {v10}, Landroidx/work/WorkRequest;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object v12

    iget-object v12, v12, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v12}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    move-result v10

    .line 120
    .end local v10    # "it":Landroidx/work/WorkRequest;
    .end local v11    # "$i$a$-count-EnqueueUtilsKt$checkContentUriTriggerWorkerLimits$1":I
    if-eqz v10, :cond_1

    add-int/lit8 v7, v7, 0x1

    if-gez v7, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    .end local v9    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 121
    :cond_2
    nop

    .line 44
    .end local v5    # "$this$count$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$count":I
    .end local v7    # "count$iv":I
    :goto_2
    add-int/2addr v3, v7

    .line 45
    invoke-virtual {v4}, Landroidx/work/impl/WorkContinuationImpl;->getParents()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 122
    .local v5, "it":Ljava/util/List;
    const/4 v6, 0x0

    .line 45
    .local v6, "$i$a$-let-EnqueueUtilsKt$checkContentUriTriggerWorkerLimits$2":I
    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v5    # "it":Ljava/util/List;
    .end local v6    # "$i$a$-let-EnqueueUtilsKt$checkContentUriTriggerWorkerLimits$2":I
    goto :goto_0

    .end local v4    # "current":Landroidx/work/impl/WorkContinuationImpl;
    :cond_3
    goto :goto_0

    .line 47
    :cond_4
    if-nez v3, :cond_5

    return-void

    .line 48
    :cond_5
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/model/WorkSpecDao;->countNonFinishedContentUriTriggerWorkers()I

    move-result v0

    .line 49
    .local v0, "alreadyEnqueuedCount":I
    invoke-virtual {p1}, Landroidx/work/Configuration;->getContentUriTriggerWorkersLimit()I

    move-result v2

    .line 50
    .local v2, "limit":I
    add-int v4, v0, v3

    if-gt v4, v2, :cond_6

    .line 63
    return-void

    .line 51
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 53
    nop

    .line 52
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 53
    nop

    .line 52
    const-string v6, ";\nalready enqueued count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 54
    nop

    .line 52
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 54
    nop

    .line 52
    const-string v6, ";\ncurrent enqueue operation count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 55
    nop

    .line 52
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 55
    nop

    .line 52
    const-string v6, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static final tryDelegateConstrainedWorkSpec(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;
    .locals 37
    .param p0, "workSpec"    # Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v0, p0

    const-string/jumbo v1, "workSpec"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v15, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 69
    .local v15, "constraints":Landroidx/work/Constraints;
    iget-object v14, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 77
    .local v14, "workerClassName":Ljava/lang/String;
    const-class v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v34

    .line 78
    .local v34, "isConstraintTrackingWorker":Z
    if-nez v34, :cond_2

    .line 79
    invoke-virtual {v15}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v15}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v35, v14

    move-object/from16 v36, v15

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    new-instance v1, Landroidx/work/Data$Builder;

    invoke-direct {v1}, Landroidx/work/Data$Builder;-><init>()V

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v1, v2}, Landroidx/work/Data$Builder;->putAll(Landroidx/work/Data;)Landroidx/work/Data$Builder;

    move-result-object v1

    .line 82
    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v1, v2, v14}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v5

    const-string v1, "Builder().putAll(workSpe\u2026ame)\n            .build()"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    nop

    .local v5, "newInputData":Landroidx/work/Data;
    const-class v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 86
    const-string/jumbo v6, "name"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const/4 v4, 0x0

    .line 85
    nop

    .line 84
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v35, v14

    .end local v14    # "workerClassName":Ljava/lang/String;
    .local v35, "workerClassName":Ljava/lang/String;
    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v36, v15

    .end local v15    # "constraints":Landroidx/work/Constraints;
    .local v36, "constraints":Landroidx/work/Constraints;
    move-object/from16 v15, v16

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v32, 0x7fffeb

    const/16 v33, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v33}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIIILjava/lang/Object;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    return-object v0

    .line 78
    .end local v5    # "newInputData":Landroidx/work/Data;
    .end local v35    # "workerClassName":Ljava/lang/String;
    .end local v36    # "constraints":Landroidx/work/Constraints;
    .restart local v14    # "workerClassName":Ljava/lang/String;
    .restart local v15    # "constraints":Landroidx/work/Constraints;
    :cond_2
    move-object/from16 v35, v14

    move-object/from16 v36, v15

    .line 89
    .end local v14    # "workerClassName":Ljava/lang/String;
    .end local v15    # "constraints":Landroidx/work/Constraints;
    .restart local v35    # "workerClassName":Ljava/lang/String;
    .restart local v36    # "constraints":Landroidx/work/Constraints;
    :goto_1
    return-object p0
.end method

.method private static final usesScheduler(Ljava/util/List;Ljava/lang/String;)Z
    .locals 9
    .param p0, "schedulers"    # Ljava/util/List;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/impl/Scheduler;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 110
    nop

    .line 111
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 112
    .local v1, "klass":Ljava/lang/Class;
    move-object v2, p0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 123
    .local v3, "$i$f$any":I
    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/work/impl/Scheduler;

    .local v6, "scheduler":Landroidx/work/impl/Scheduler;
    const/4 v7, 0x0

    .line 112
    .local v7, "$i$a$-any-EnqueueUtilsKt$usesScheduler$1":I
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v6    # "scheduler":Landroidx/work/impl/Scheduler;
    .end local v7    # "$i$a$-any-EnqueueUtilsKt$usesScheduler$1":I
    if-eqz v8, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 125
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 112
    .end local v2    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$any":I
    :goto_0
    return v0

    .line 113
    .end local v1    # "klass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "ignore":Ljava/lang/ClassNotFoundException;
    nop

    .line 110
    .end local v1    # "ignore":Ljava/lang/ClassNotFoundException;
    return v0
.end method

.method public static final wrapInConstraintTrackingWorkerIfNeeded(Ljava/util/List;Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;
    .locals 2
    .param p0, "schedulers"    # Ljava/util/List;
    .param p1, "workSpec"    # Landroidx/work/impl/model/WorkSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/impl/Scheduler;",
            ">;",
            "Landroidx/work/impl/model/WorkSpec;",
            ")",
            "Landroidx/work/impl/model/WorkSpec;"
        }
    .end annotation

    const-string/jumbo v0, "schedulers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    nop

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 98
    invoke-static {p1}, Landroidx/work/impl/utils/EnqueueUtilsKt;->tryDelegateConstrainedWorkSpec(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    goto :goto_1

    .line 99
    :cond_1
    nop

    .line 102
    move-object v0, p1

    .line 96
    :goto_1
    return-object v0
.end method
