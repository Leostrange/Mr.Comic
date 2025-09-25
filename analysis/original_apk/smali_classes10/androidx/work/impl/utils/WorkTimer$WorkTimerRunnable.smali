.class public Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;
.super Ljava/lang/Object;
.source "WorkTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkTimerRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WrkTimerRunnable"


# instance fields
.field private final mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

.field private final mWorkTimer:Landroidx/work/impl/utils/WorkTimer;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/WorkTimer;Landroidx/work/impl/model/WorkGenerationalId;)V
    .locals 0
    .param p1, "workTimer"    # Landroidx/work/impl/utils/WorkTimer;
    .param p2, "id"    # Landroidx/work/impl/model/WorkGenerationalId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workTimer",
            "id"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/utils/WorkTimer;

    .line 123
    iput-object p2, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 124
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 128
    iget-object v0, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/utils/WorkTimer;

    iget-object v0, v0, Landroidx/work/impl/utils/WorkTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/utils/WorkTimer;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkTimer;->mTimerMap:Ljava/util/Map;

    iget-object v2, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;

    .line 130
    .local v1, "removed":Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;
    if-eqz v1, :cond_1

    .line 132
    iget-object v2, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/utils/WorkTimer;

    iget-object v2, v2, Landroidx/work/impl/utils/WorkTimer;->mListeners:Ljava/util/Map;

    iget-object v3, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 133
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/utils/WorkTimer$TimeLimitExceededListener;

    .line 134
    .local v2, "listener":Landroidx/work/impl/utils/WorkTimer$TimeLimitExceededListener;
    if-eqz v2, :cond_0

    .line 135
    iget-object v3, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    invoke-interface {v2, v3}, Landroidx/work/impl/utils/WorkTimer$TimeLimitExceededListener;->onTimeLimitExceeded(Landroidx/work/impl/model/WorkGenerationalId;)V

    .line 137
    .end local v2    # "listener":Landroidx/work/impl/utils/WorkTimer$TimeLimitExceededListener;
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    const-string v3, "WrkTimerRunnable"

    const-string v4, "Timer with %s is already marked as complete."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v1    # "removed":Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;
    :goto_0
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
