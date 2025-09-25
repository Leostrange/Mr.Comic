.class public final Landroidx/work/PeriodicWorkRequest$Builder;
.super Landroidx/work/WorkRequest$Builder;
.source "PeriodicWorkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/PeriodicWorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/WorkRequest$Builder<",
        "Landroidx/work/PeriodicWorkRequest$Builder;",
        "Landroidx/work/PeriodicWorkRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeriodicWorkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeriodicWorkRequest.kt\nandroidx/work/PeriodicWorkRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,324:1\n1#2:325\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001B)\u0008\u0016\u0012\u0010\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nB\u001f\u0008\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cB9\u0008\u0016\u0012\u0010\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000fB)\u0008\u0017\u0012\u0010\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u0010J\r\u0010\u0014\u001a\u00020\u0002H\u0010\u00a2\u0006\u0002\u0008\u0015J\u0006\u0010\u0016\u001a\u00020\u0000J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0007R\u0014\u0010\u0011\u001a\u00020\u00008PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/work/PeriodicWorkRequest$Builder;",
        "Landroidx/work/WorkRequest$Builder;",
        "Landroidx/work/PeriodicWorkRequest;",
        "workerClass",
        "Ljava/lang/Class;",
        "Landroidx/work/ListenableWorker;",
        "repeatInterval",
        "",
        "repeatIntervalTimeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V",
        "Ljava/time/Duration;",
        "(Ljava/lang/Class;Ljava/time/Duration;)V",
        "flexInterval",
        "flexIntervalTimeUnit",
        "(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V",
        "(Ljava/lang/Class;Ljava/time/Duration;Ljava/time/Duration;)V",
        "thisObject",
        "getThisObject$work_runtime_release",
        "()Landroidx/work/PeriodicWorkRequest$Builder;",
        "buildInternal",
        "buildInternal$work_runtime_release",
        "clearNextScheduleTimeOverride",
        "setNextScheduleTimeOverride",
        "nextScheduleTimeOverrideMillis",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "workerClass"    # Ljava/lang/Class;
    .param p2, "repeatInterval"    # J
    .param p4, "repeatIntervalTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "workerClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "repeatIntervalTimeUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 80
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getWorkSpec$work_runtime_release()Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(J)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "workerClass"    # Ljava/lang/Class;
    .param p2, "repeatInterval"    # J
    .param p4, "repeatIntervalTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "flexInterval"    # J
    .param p7, "flexIntervalTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "workerClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "repeatIntervalTimeUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexIntervalTimeUnit"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 132
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getWorkSpec$work_runtime_release()Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    .line 133
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 134
    invoke-virtual {p7, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 132
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/time/Duration;)V
    .locals 3
    .param p1, "workerClass"    # Ljava/lang/Class;
    .param p2, "repeatInterval"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "workerClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "repeatInterval"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 101
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getWorkSpec$work_runtime_release()Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    invoke-static {p2}, Landroidx/work/impl/utils/DurationApi26Impl;->toMillisCompat(Ljava/time/Duration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(J)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 5
    .param p1, "workerClass"    # Ljava/lang/Class;
    .param p2, "repeatInterval"    # Ljava/time/Duration;
    .param p3, "flexInterval"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Ljava/time/Duration;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "workerClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "repeatInterval"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexInterval"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 164
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getWorkSpec$work_runtime_release()Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    invoke-static {p2}, Landroidx/work/impl/utils/DurationApi26Impl;->toMillisCompat(Ljava/time/Duration;)J

    move-result-wide v1

    invoke-static {p3}, Landroidx/work/impl/utils/DurationApi26Impl;->toMillisCompat(Ljava/time/Duration;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    .line 165
    return-void
.end method


# virtual methods
.method public buildInternal$work_runtime_release()Landroidx/work/PeriodicWorkRequest;
    .locals 2

    .line 236
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getBackoffCriteriaSet$work_runtime_release()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getWorkSpec$work_runtime_release()Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v0}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 235
    :goto_1
    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getWorkSpec$work_runtime_release()Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 240
    new-instance v0, Landroidx/work/PeriodicWorkRequest;

    invoke-direct {v0, p0}, Landroidx/work/PeriodicWorkRequest;-><init>(Landroidx/work/PeriodicWorkRequest$Builder;)V

    return-object v0

    .line 325
    :cond_2
    const/4 v0, 0x0

    .line 239
    .local v0, "$i$a$-require-PeriodicWorkRequest$Builder$buildInternal$2":I
    nop

    .end local v0    # "$i$a$-require-PeriodicWorkRequest$Builder$buildInternal$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PeriodicWorkRequests cannot be expedited"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_3
    const/4 v0, 0x0

    .line 238
    .local v0, "$i$a$-require-PeriodicWorkRequest$Builder$buildInternal$1":I
    nop

    .line 235
    .end local v0    # "$i$a$-require-PeriodicWorkRequest$Builder$buildInternal$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic buildInternal$work_runtime_release()Landroidx/work/WorkRequest;
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->buildInternal$work_runtime_release()Landroidx/work/PeriodicWorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/WorkRequest;

    return-object v0
.end method

.method public final clearNextScheduleTimeOverride()Landroidx/work/PeriodicWorkRequest$Builder;
    .locals 3

    .line 228
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getWorkSpec$work_runtime_release()Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/model/WorkSpec;->setNextScheduleTimeOverride(J)V

    .line 230
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getWorkSpec$work_runtime_release()Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/work/impl/model/WorkSpec;->setNextScheduleTimeOverrideGeneration(I)V

    .line 231
    return-object p0
.end method

.method public getThisObject$work_runtime_release()Landroidx/work/PeriodicWorkRequest$Builder;
    .locals 0

    .line 244
    return-object p0
.end method

.method public bridge synthetic getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/PeriodicWorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/WorkRequest$Builder;

    return-object v0
.end method

.method public final setNextScheduleTimeOverride(J)Landroidx/work/PeriodicWorkRequest$Builder;
    .locals 2
    .param p1, "nextScheduleTimeOverrideMillis"    # J

    .line 206
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getWorkSpec$work_runtime_release()Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/work/impl/model/WorkSpec;->setNextScheduleTimeOverride(J)V

    .line 211
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getWorkSpec$work_runtime_release()Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/work/impl/model/WorkSpec;->setNextScheduleTimeOverrideGeneration(I)V

    .line 212
    return-object p0

    .line 206
    :cond_1
    const/4 v0, 0x0

    .line 207
    .local v0, "$i$a$-require-PeriodicWorkRequest$Builder$setNextScheduleTimeOverride$1":I
    nop

    .line 206
    .end local v0    # "$i$a$-require-PeriodicWorkRequest$Builder$setNextScheduleTimeOverride$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set Long.MAX_VALUE as the schedule override time"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
