.class public Landroidx/work/impl/background/greedy/DelayedWorkTracker;
.super Ljava/lang/Object;
.source "DelayedWorkTracker.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private final mClock:Landroidx/work/Clock;

.field final mImmediateScheduler:Landroidx/work/impl/Scheduler;

.field private final mRunnableScheduler:Landroidx/work/RunnableScheduler;

.field private final mRunnables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "DelayedWorkTracker"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/Scheduler;Landroidx/work/RunnableScheduler;Landroidx/work/Clock;)V
    .locals 1
    .param p1, "immediateScheduler"    # Landroidx/work/impl/Scheduler;
    .param p2, "runnableScheduler"    # Landroidx/work/RunnableScheduler;
    .param p3, "clock"    # Landroidx/work/Clock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "immediateScheduler",
            "runnableScheduler",
            "clock"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mImmediateScheduler:Landroidx/work/impl/Scheduler;

    .line 56
    iput-object p2, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    .line 57
    iput-object p3, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mClock:Landroidx/work/Clock;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnables:Ljava/util/Map;

    .line 59
    return-void
.end method


# virtual methods
.method public schedule(Landroidx/work/impl/model/WorkSpec;J)V
    .locals 7
    .param p1, "workSpec"    # Landroidx/work/impl/model/WorkSpec;
    .param p2, "nextRunTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "workSpec",
            "nextRunTime"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnables:Ljava/util/Map;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 71
    .local v0, "existing":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    invoke-interface {v1, v0}, Landroidx/work/RunnableScheduler;->cancel(Ljava/lang/Runnable;)V

    .line 75
    :cond_0
    new-instance v1, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;-><init>(Landroidx/work/impl/background/greedy/DelayedWorkTracker;Landroidx/work/impl/model/WorkSpec;)V

    .line 83
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnables:Ljava/util/Map;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v2, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mClock:Landroidx/work/Clock;

    invoke-interface {v2}, Landroidx/work/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 85
    .local v2, "now":J
    sub-long v4, p2, v2

    .line 86
    .local v4, "delay":J
    iget-object v6, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    invoke-interface {v6, v4, v5, v1}, Landroidx/work/RunnableScheduler;->scheduleWithDelay(JLjava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public unschedule(Ljava/lang/String;)V
    .locals 2
    .param p1, "workSpecId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workSpecId"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 96
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    invoke-interface {v1, v0}, Landroidx/work/RunnableScheduler;->cancel(Ljava/lang/Runnable;)V

    .line 99
    :cond_0
    return-void
.end method
