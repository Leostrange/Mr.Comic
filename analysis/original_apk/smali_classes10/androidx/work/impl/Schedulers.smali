.class public Landroidx/work/impl/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field public static final GCM_SCHEDULER:Ljava/lang/String; = "androidx.work.impl.background.gcm.GcmScheduler"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "Schedulers"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method

.method static createBestAvailableBackgroundScheduler(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;)Landroidx/work/impl/Scheduler;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "workDatabase"    # Landroidx/work/impl/WorkDatabase;
    .param p2, "configuration"    # Landroidx/work/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "workDatabase",
            "configuration"
        }
    .end annotation

    .line 156
    nop

    .line 157
    new-instance v0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;

    invoke-direct {v0, p0, p1, p2}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;)V

    .line 158
    .local v0, "scheduler":Landroidx/work/impl/Scheduler;
    const-class v1, Landroidx/work/impl/background/systemjob/SystemJobService;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 159
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    const-string v3, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-object v0
.end method

.method static synthetic lambda$registerRescheduling$0(Ljava/util/List;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V
    .locals 3
    .param p0, "schedulers"    # Ljava/util/List;
    .param p1, "id"    # Landroidx/work/impl/model/WorkGenerationalId;
    .param p2, "configuration"    # Landroidx/work/Configuration;
    .param p3, "workDatabase"    # Landroidx/work/impl/WorkDatabase;

    .line 73
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/Scheduler;

    .line 74
    .local v1, "scheduler":Landroidx/work/impl/Scheduler;
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    .line 75
    .end local v1    # "scheduler":Landroidx/work/impl/Scheduler;
    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p2, p3, p0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 77
    return-void
.end method

.method static synthetic lambda$registerRescheduling$1(Ljava/util/concurrent/Executor;Ljava/util/List;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "schedulers"    # Ljava/util/List;
    .param p2, "configuration"    # Landroidx/work/Configuration;
    .param p3, "workDatabase"    # Landroidx/work/impl/WorkDatabase;
    .param p4, "id"    # Landroidx/work/impl/model/WorkGenerationalId;
    .param p5, "needsReschedule"    # Z

    .line 65
    new-instance v0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p4, p2, p3}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method private static markScheduled(Landroidx/work/impl/model/WorkSpecDao;Landroidx/work/Clock;Ljava/util/List;)V
    .locals 5
    .param p0, "dao"    # Landroidx/work/impl/model/WorkSpecDao;
    .param p1, "clock"    # Landroidx/work/Clock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dao",
            "clock",
            "workSpecs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/model/WorkSpecDao;",
            "Landroidx/work/Clock;",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p2, "workSpecs":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    invoke-interface {p1}, Landroidx/work/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    .local v0, "now":J
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/model/WorkSpec;

    .line 197
    .local v3, "workSpec":Landroidx/work/impl/model/WorkSpec;
    iget-object v4, v3, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {p0, v4, v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 198
    .end local v3    # "workSpec":Landroidx/work/impl/model/WorkSpec;
    goto :goto_0

    .line 200
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method public static registerRescheduling(Ljava/util/List;Landroidx/work/impl/Processor;Ljava/util/concurrent/Executor;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;)V
    .locals 1
    .param p1, "processor"    # Landroidx/work/impl/Processor;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "workDatabase"    # Landroidx/work/impl/WorkDatabase;
    .param p4, "configuration"    # Landroidx/work/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "schedulers",
            "processor",
            "executor",
            "workDatabase",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/impl/Scheduler;",
            ">;",
            "Landroidx/work/impl/Processor;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/work/impl/WorkDatabase;",
            "Landroidx/work/Configuration;",
            ")V"
        }
    .end annotation

    .line 64
    .local p0, "schedulers":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/Scheduler;>;"
    new-instance v0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p0, p4, p3}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V

    invoke-virtual {p1, v0}, Landroidx/work/impl/Processor;->addExecutionListener(Landroidx/work/impl/ExecutionListener;)V

    .line 79
    return-void
.end method

.method public static schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 7
    .param p0, "configuration"    # Landroidx/work/Configuration;
    .param p1, "workDatabase"    # Landroidx/work/impl/WorkDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "configuration",
            "workDatabase",
            "schedulers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/Configuration;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Landroidx/work/impl/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p2, "schedulers":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/Scheduler;>;"
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 99
    .local v0, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "contentUriWorkSpecs":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    nop

    .line 103
    :try_start_0
    invoke-interface {v0}, Landroidx/work/impl/model/WorkSpecDao;->getEligibleWorkForSchedulingWithContentUris()Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .line 104
    invoke-virtual {p0}, Landroidx/work/Configuration;->getClock()Landroidx/work/Clock;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroidx/work/impl/Schedulers;->markScheduled(Landroidx/work/impl/model/WorkSpecDao;Landroidx/work/Clock;Ljava/util/List;)V

    .line 108
    nop

    .line 109
    invoke-virtual {p0}, Landroidx/work/Configuration;->getMaxSchedulerLimit()I

    move-result v2

    .line 108
    invoke-interface {v0, v2}, Landroidx/work/impl/model/WorkSpecDao;->getEligibleWorkForScheduling(I)Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, "eligibleWorkSpecsForLimitedSlots":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    invoke-virtual {p0}, Landroidx/work/Configuration;->getClock()Landroidx/work/Clock;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroidx/work/impl/Schedulers;->markScheduled(Landroidx/work/impl/model/WorkSpecDao;Landroidx/work/Clock;Ljava/util/List;)V

    .line 111
    if-eqz v1, :cond_1

    .line 112
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    :cond_1
    const/16 v3, 0xc8

    invoke-interface {v0, v3}, Landroidx/work/impl/model/WorkSpecDao;->getAllEligibleWorkSpecsForScheduling(I)Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, "allEligibleWorkSpecs":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local v1    # "contentUriWorkSpecs":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 121
    nop

    .line 123
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 125
    nop

    .line 126
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/work/impl/model/WorkSpec;

    .line 127
    .local v1, "eligibleWorkSpecsArray":[Landroidx/work/impl/model/WorkSpec;
    nop

    .line 128
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, [Landroidx/work/impl/model/WorkSpec;

    .line 131
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/Scheduler;

    .line 132
    .local v5, "scheduler":Landroidx/work/impl/Scheduler;
    invoke-interface {v5}, Landroidx/work/impl/Scheduler;->hasLimitedSchedulingSlots()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    invoke-interface {v5, v1}, Landroidx/work/impl/Scheduler;->schedule([Landroidx/work/impl/model/WorkSpec;)V

    .line 135
    .end local v5    # "scheduler":Landroidx/work/impl/Scheduler;
    :cond_2
    goto :goto_0

    .line 138
    .end local v1    # "eligibleWorkSpecsArray":[Landroidx/work/impl/model/WorkSpec;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 139
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/work/impl/model/WorkSpec;

    .line 140
    .local v1, "enqueuedWorkSpecsArray":[Landroidx/work/impl/model/WorkSpec;
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, [Landroidx/work/impl/model/WorkSpec;

    .line 142
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/Scheduler;

    .line 143
    .restart local v5    # "scheduler":Landroidx/work/impl/Scheduler;
    invoke-interface {v5}, Landroidx/work/impl/Scheduler;->hasLimitedSchedulingSlots()Z

    move-result v6

    if-nez v6, :cond_4

    .line 144
    invoke-interface {v5, v1}, Landroidx/work/impl/Scheduler;->schedule([Landroidx/work/impl/model/WorkSpec;)V

    .line 146
    .end local v5    # "scheduler":Landroidx/work/impl/Scheduler;
    :cond_4
    goto :goto_1

    .line 148
    .end local v1    # "enqueuedWorkSpecsArray":[Landroidx/work/impl/model/WorkSpec;
    :cond_5
    return-void

    .line 120
    .end local v2    # "eligibleWorkSpecsForLimitedSlots":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v3    # "allEligibleWorkSpecs":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 121
    throw v1

    .line 92
    .end local v0    # "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    :cond_6
    :goto_2
    return-void
.end method

.method private static tryCreateGcmBasedScheduler(Landroid/content/Context;Landroidx/work/Clock;)Landroidx/work/impl/Scheduler;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clock"    # Landroidx/work/Clock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "clock"
        }
    .end annotation

    .line 174
    :try_start_0
    const-string v0, "androidx.work.impl.background.gcm.GcmScheduler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 175
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroidx/work/Clock;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/Scheduler;

    .line 178
    .local v1, "scheduler":Landroidx/work/impl/Scheduler;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    const-string v4, "Created androidx.work.impl.background.gcm.GcmScheduler"

    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    return-object v1

    .line 180
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "scheduler":Landroidx/work/impl/Scheduler;
    :catchall_0
    move-exception v0

    .line 181
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create GCM Scheduler"

    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    const/4 v1, 0x0

    return-object v1
.end method
