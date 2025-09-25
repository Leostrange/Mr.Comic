.class public abstract Landroidx/work/impl/utils/futures/AbstractFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;,
        Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;,
        Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;,
        Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;,
        Landroidx/work/impl/utils/futures/AbstractFuture$Failure;,
        Landroidx/work/impl/utils/futures/AbstractFuture$Listener;,
        Landroidx/work/impl/utils/futures/AbstractFuture$SafeAtomicHelper;,
        Landroidx/work/impl/utils/futures/AbstractFuture$SynchronizedHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

.field static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field volatile listeners:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

.field volatile value:Ljava/lang/Object;

.field volatile waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 69
    nop

    .line 71
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroidx/work/impl/utils/futures/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 74
    const-class v0, Landroidx/work/impl/utils/futures/AbstractFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Landroidx/work/impl/utils/futures/AbstractFuture;->log:Ljava/util/logging/Logger;

    .line 85
    const/4 v1, 0x0

    .line 90
    .local v1, "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    :try_start_0
    new-instance v8, Landroidx/work/impl/utils/futures/AbstractFuture$SafeAtomicHelper;

    const-class v2, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    const-class v3, Ljava/lang/Thread;

    const-string/jumbo v4, "thread"

    .line 92
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v2, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    const-class v4, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    const-string/jumbo v5, "next"

    .line 93
    invoke-static {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v2, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    const-string/jumbo v5, "waiters"

    .line 94
    invoke-static {v0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v2, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    const-string v6, "listeners"

    .line 95
    invoke-static {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v2, Ljava/lang/Object;

    const-string/jumbo v7, "value"

    .line 96
    invoke-static {v0, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/utils/futures/AbstractFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v8

    .line 104
    .local v0, "helper":Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;
    goto :goto_0

    .line 97
    .end local v0    # "helper":Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;
    :catchall_0
    move-exception v0

    .line 102
    .local v0, "atomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    move-object v1, v0

    .line 103
    new-instance v2, Landroidx/work/impl/utils/futures/AbstractFuture$SynchronizedHelper;

    invoke-direct {v2}, Landroidx/work/impl/utils/futures/AbstractFuture$SynchronizedHelper;-><init>()V

    move-object v0, v2

    .line 106
    .local v0, "helper":Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;
    :goto_0
    sput-object v0, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    .line 111
    const-class v2, Ljava/util/concurrent/locks/LockSupport;

    .line 115
    .local v2, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 116
    sget-object v3, Landroidx/work/impl/utils/futures/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "SafeAtomicHelper is broken!"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .end local v0    # "helper":Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;
    .end local v1    # "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    .end local v2    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/futures/AbstractFuture;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 318
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    return-void
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 1020
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    const-string v0, "]"

    :try_start_0
    invoke-static {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 1021
    .local v1, "value":Ljava/lang/Object;, "TV;"
    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Landroidx/work/impl/utils/futures/AbstractFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    nop

    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " thrown from get()]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1024
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1025
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    const-string v1, "CANCELLED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0

    .line 1022
    :catch_2
    move-exception v1

    .line 1023
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_0
    nop

    .line 1029
    :goto_1
    return-void
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    .line 1183
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v0, "exception":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1185
    return-object v0
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1191
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1194
    return-object p0

    .line 1192
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearListeners(Landroidx/work/impl/utils/futures/AbstractFuture$Listener;)Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    .locals 3
    .param p1, "onto"    # Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onto"
        }
    .end annotation

    .line 957
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    nop

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->listeners:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    .line 958
    .local v0, "head":Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    sget-object v1, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    sget-object v2, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casListeners(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Listener;Landroidx/work/impl/utils/futures/AbstractFuture$Listener;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    move-object v1, p1

    .line 960
    .local v1, "reversedList":Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    :goto_0
    if-eqz v0, :cond_1

    .line 961
    move-object v2, v0

    .line 962
    .local v2, "tmp":Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    .line 963
    iput-object v1, v2, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    .line 964
    move-object v1, v2

    .line 965
    .end local v2    # "tmp":Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    goto :goto_0

    .line 966
    :cond_1
    return-object v1
.end method

.method static complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/AbstractFuture<",
            "*>;)V"
        }
    .end annotation

    .line 865
    .local p0, "future":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<*>;"
    const/4 v0, 0x0

    .line 868
    .local v0, "next":Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    :goto_0
    invoke-direct {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->releaseWaiters()V

    .line 874
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->afterDone()V

    .line 876
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->clearListeners(Landroidx/work/impl/utils/futures/AbstractFuture$Listener;)Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    move-result-object v0

    .line 877
    const/4 p0, 0x0

    .line 878
    :goto_1
    if-eqz v0, :cond_2

    .line 879
    move-object v1, v0

    .line 880
    .local v1, "curr":Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    .line 881
    iget-object v2, v1, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    .line 882
    .local v2, "task":Ljava/lang/Runnable;
    instance-of v3, v2, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    if-eqz v3, :cond_1

    .line 883
    move-object v3, v2

    check-cast v3, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    .line 890
    .local v3, "setFuture":Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture<*>;"
    iget-object p0, v3, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Landroidx/work/impl/utils/futures/AbstractFuture;

    .line 891
    iget-object v4, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    if-ne v4, v3, :cond_0

    .line 892
    iget-object v4, v3, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v4}, Landroidx/work/impl/utils/futures/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v4

    .line 893
    .local v4, "valueToSet":Ljava/lang/Object;
    sget-object v5, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v3, v4}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 894
    goto :goto_0

    .line 898
    .end local v3    # "setFuture":Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture<*>;"
    .end local v4    # "valueToSet":Ljava/lang/Object;
    :cond_0
    goto :goto_2

    .line 899
    :cond_1
    iget-object v3, v1, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3}, Landroidx/work/impl/utils/futures/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 901
    .end local v1    # "curr":Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    .end local v2    # "task":Ljava/lang/Runnable;
    :goto_2
    goto :goto_1

    .line 904
    :cond_2
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "executor"
        }
    .end annotation

    .line 1050
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    goto :goto_0

    .line 1051
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Landroidx/work/impl/utils/futures/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with executor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1061
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 512
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    instance-of v0, p1, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-nez v0, :cond_2

    .line 514
    instance-of v0, p1, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    if-nez v0, :cond_1

    .line 516
    sget-object v0, Landroidx/work/impl/utils/futures/AbstractFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 517
    const/4 v0, 0x0

    return-object v0

    .line 520
    :cond_0
    move-object v0, p1

    .line 521
    .local v0, "asV":Ljava/lang/Object;, "TV;"
    return-object v0

    .line 515
    .end local v0    # "asV":Ljava/lang/Object;, "TV;"
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    move-object v1, p1

    check-cast v1, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    iget-object v1, v1, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 513
    :cond_2
    move-object v0, p1

    check-cast v0, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    const-string v1, "Task was cancelled."

    invoke-static {v1, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0
.end method

.method static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 797
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 803
    move-object v0, p0

    check-cast v0, Landroidx/work/impl/utils/futures/AbstractFuture;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 804
    .local v0, "v":Ljava/lang/Object;
    instance-of v2, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v2, :cond_1

    .line 808
    move-object v2, v0

    check-cast v2, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    .line 809
    .local v2, "c":Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;
    iget-boolean v3, v2, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v3, :cond_1

    .line 810
    iget-object v3, v2, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    iget-object v4, v2, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-direct {v3, v1, v4}, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 811
    :cond_0
    sget-object v3, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    :goto_0
    move-object v0, v3

    .line 814
    .end local v2    # "c":Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;
    :cond_1
    return-object v0

    .line 816
    .end local v0    # "v":Ljava/lang/Object;
    :cond_2
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    .line 818
    .local v0, "wasCancelled":Z
    sget-boolean v2, Landroidx/work/impl/utils/futures/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    .line 819
    sget-object v1, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    return-object v1

    .line 823
    :cond_3
    :try_start_0
    invoke-static {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    .line 824
    .local v2, "v":Ljava/lang/Object;
    if-nez v2, :cond_4

    sget-object v1, Landroidx/work/impl/utils/futures/AbstractFuture;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    return-object v1

    .line 837
    .end local v2    # "v":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 838
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    invoke-direct {v2, v1}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    .line 827
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 828
    .local v2, "cancellation":Ljava/util/concurrent/CancellationException;
    if-nez v0, :cond_5

    .line 829
    new-instance v1, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v3}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 836
    :cond_5
    new-instance v3, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    invoke-direct {v3, v1, v2}, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    .line 825
    .end local v2    # "cancellation":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v1

    .line 826
    .local v1, "exception":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 846
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    const/4 v0, 0x0

    .line 850
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    if-eqz v0, :cond_0

    .line 857
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 850
    :cond_0
    return-object v1

    .line 856
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 857
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 859
    :cond_1
    throw v1

    .line 851
    :catch_0
    move-exception v1

    .line 852
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 853
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private releaseWaiters()V
    .locals 3

    .line 936
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    nop

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 937
    .local v0, "head":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    sget-object v1, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    sget-object v2, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casWaiters(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    move-object v1, v0

    .local v1, "currentWaiter":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    :goto_0
    if-eqz v1, :cond_1

    .line 940
    invoke-virtual {v1}, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->unpark()V

    .line 939
    iget-object v1, v1, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    goto :goto_0

    .line 942
    .end local v1    # "currentWaiter":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    :cond_1
    return-void
.end method

.method private removeWaiter(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V
    .locals 4
    .param p1, "node"    # Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 173
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 176
    :goto_0
    const/4 v0, 0x0

    .line 177
    .local v0, "pred":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    iget-object v1, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 178
    .local v1, "curr":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    sget-object v2, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    if-ne v1, v2, :cond_0

    .line 179
    return-void

    .line 182
    :cond_0
    :goto_1
    if-eqz v1, :cond_4

    .line 183
    iget-object v2, v1, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 184
    .local v2, "succ":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    iget-object v3, v1, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 185
    move-object v0, v1

    goto :goto_2

    .line 186
    :cond_1
    if-eqz v0, :cond_2

    .line 187
    iput-object v2, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 188
    iget-object v3, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_3

    .line 190
    goto :goto_0

    .line 192
    :cond_2
    sget-object v3, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, v1, v2}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casWaiters(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 193
    goto :goto_0

    .line 195
    :cond_3
    :goto_2
    move-object v1, v2

    goto :goto_1

    .line 199
    .end local v0    # "pred":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    .end local v1    # "curr":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    .end local v2    # "succ":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    :cond_4
    return-void
.end method

.method private userObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1038
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    if-ne p1, p0, :cond_0

    .line 1039
    const-string/jumbo v0, "this future"

    return-object v0

    .line 1041
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "executor"
        }
    .end annotation

    .line 650
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    invoke-static {p1}, Landroidx/work/impl/utils/futures/AbstractFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    invoke-static {p2}, Landroidx/work/impl/utils/futures/AbstractFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->listeners:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    .line 653
    .local v0, "oldHead":Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    sget-object v1, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    if-eq v0, v1, :cond_2

    .line 654
    new-instance v1, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    invoke-direct {v1, p1, p2}, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 656
    .local v1, "newNode":Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    :cond_0
    iput-object v0, v1, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    .line 657
    sget-object v2, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    invoke-virtual {v2, p0, v0, v1}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casListeners(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Listener;Landroidx/work/impl/utils/futures/AbstractFuture$Listener;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->listeners:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    .line 661
    sget-object v2, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    if-ne v0, v2, :cond_0

    .line 665
    .end local v1    # "newNode":Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    :cond_2
    invoke-static {p1, p2}, Landroidx/work/impl/utils/futures/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 666
    return-void
.end method

.method protected afterDone()V
    .locals 0

    .line 919
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    return-void
.end method

.method public final cancel(Z)Z
    .locals 10
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mayInterruptIfRunning"
        }
    .end annotation

    .line 552
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 553
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 554
    .local v1, "rValue":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    instance-of v5, v0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    or-int/2addr v4, v5

    if-eqz v4, :cond_9

    .line 558
    sget-boolean v4, Landroidx/work/impl/utils/futures/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v4, :cond_1

    .line 559
    new-instance v4, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    new-instance v5, Ljava/util/concurrent/CancellationException;

    const-string v6, "Future.cancel() was called."

    invoke-direct {v5, v6}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, p1, v5}, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    .line 562
    :cond_1
    if-eqz p1, :cond_2

    .line 563
    sget-object v4, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    goto :goto_1

    .line 564
    :cond_2
    sget-object v4, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    :goto_1
    nop

    .line 565
    .local v4, "valueToSet":Ljava/lang/Object;
    move-object v5, p0

    .line 567
    .local v5, "abstractFuture":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<*>;"
    :cond_3
    :goto_2
    sget-object v6, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    invoke-virtual {v6, v5, v0, v4}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 568
    const/4 v1, 0x1

    .line 571
    if-eqz p1, :cond_4

    .line 572
    invoke-virtual {v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->interruptTask()V

    .line 574
    :cond_4
    invoke-static {v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V

    .line 575
    instance-of v6, v0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    if-eqz v6, :cond_9

    .line 579
    move-object v6, v0

    check-cast v6, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    iget-object v6, v6, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 580
    .local v6, "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v7, v6, Landroidx/work/impl/utils/futures/AbstractFuture;

    if-eqz v7, :cond_7

    .line 590
    move-object v7, v6

    check-cast v7, Landroidx/work/impl/utils/futures/AbstractFuture;

    .line 591
    .local v7, "trusted":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<*>;"
    iget-object v0, v7, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 592
    if-nez v0, :cond_5

    move v8, v2

    goto :goto_3

    :cond_5
    move v8, v3

    :goto_3
    instance-of v9, v0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    or-int/2addr v8, v9

    if-eqz v8, :cond_6

    .line 593
    move-object v5, v7

    .line 594
    goto :goto_2

    .line 596
    .end local v7    # "trusted":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<*>;"
    :cond_6
    goto :goto_4

    .line 598
    :cond_7
    invoke-interface {v6, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 600
    .end local v6    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    :goto_4
    goto :goto_5

    .line 604
    :cond_8
    iget-object v0, v5, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 605
    instance-of v6, v0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    if-nez v6, :cond_3

    .line 610
    nop

    .line 614
    .end local v4    # "valueToSet":Ljava/lang/Object;
    .end local v5    # "abstractFuture":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<*>;"
    :cond_9
    :goto_5
    return v1
.end method

.method public final get()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 469
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 472
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 473
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    instance-of v4, v0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 474
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 476
    :cond_1
    iget-object v3, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 477
    .local v3, "oldHead":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    sget-object v4, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    if-eq v3, v4, :cond_7

    .line 478
    new-instance v4, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    invoke-direct {v4}, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;-><init>()V

    .line 480
    .local v4, "node":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    :cond_2
    invoke-virtual {v4, v3}, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->setNext(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V

    .line 481
    sget-object v5, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v3, v4}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casWaiters(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 484
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 487
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_5

    .line 494
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 495
    if-eqz v0, :cond_4

    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    instance-of v6, v0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    xor-int/2addr v6, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 496
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 488
    :cond_5
    invoke-direct {p0, v4}, Landroidx/work/impl/utils/futures/AbstractFuture;->removeWaiter(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V

    .line 489
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 500
    :cond_6
    iget-object v3, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 501
    sget-object v5, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    if-ne v3, v5, :cond_2

    .line 505
    .end local v4    # "node":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    :cond_7
    iget-object v1, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 470
    .end local v0    # "localValue":Ljava/lang/Object;
    .end local v3    # "oldHead":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 28
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 359
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 360
    .local v4, "timeoutNanos":J
    move-wide v6, v4

    .line 361
    .local v6, "remainingNanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-nez v8, :cond_16

    .line 364
    iget-object v8, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 365
    .local v8, "localValue":Ljava/lang/Object;
    const/4 v10, 0x1

    if-eqz v8, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    instance-of v12, v8, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    xor-int/2addr v12, v10

    and-int/2addr v11, v12

    if-eqz v11, :cond_1

    .line 366
    invoke-direct {v0, v8}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 369
    :cond_1
    const-wide/16 v11, 0x0

    cmp-long v13, v6, v11

    if-lez v13, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    add-long/2addr v13, v6

    goto :goto_1

    :cond_2
    move-wide v13, v11

    .line 371
    .local v13, "endNanos":J
    :goto_1
    const-wide/16 v15, 0x3e8

    cmp-long v17, v6, v15

    if-ltz v17, :cond_a

    .line 372
    iget-object v9, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 373
    .local v9, "oldHead":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    sget-object v11, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    if-eq v9, v11, :cond_9

    .line 374
    new-instance v11, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    invoke-direct {v11}, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;-><init>()V

    .line 376
    .local v11, "node":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    :goto_2
    invoke-virtual {v11, v9}, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->setNext(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V

    .line 377
    sget-object v12, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    invoke-virtual {v12, v0, v9, v11}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casWaiters(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 379
    :goto_3
    invoke-static {v0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 382
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v12

    if-nez v12, :cond_6

    .line 389
    iget-object v8, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 390
    if-eqz v8, :cond_3

    move v12, v10

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    :goto_4
    instance-of v15, v8, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    xor-int/2addr v15, v10

    and-int/2addr v12, v15

    if-eqz v12, :cond_4

    .line 391
    invoke-direct {v0, v8}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 395
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long v6, v13, v15

    .line 396
    const-wide/16 v15, 0x3e8

    cmp-long v12, v6, v15

    if-gez v12, :cond_5

    .line 399
    invoke-direct {v0, v11}, Landroidx/work/impl/utils/futures/AbstractFuture;->removeWaiter(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V

    .line 400
    goto :goto_6

    .line 396
    :cond_5
    const-wide/16 v15, 0x3e8

    goto :goto_3

    .line 383
    :cond_6
    invoke-direct {v0, v11}, Landroidx/work/impl/utils/futures/AbstractFuture;->removeWaiter(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V

    .line 384
    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 404
    :cond_7
    iget-object v9, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 405
    sget-object v12, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    if-ne v9, v12, :cond_8

    goto :goto_5

    :cond_8
    const-wide/16 v15, 0x3e8

    goto :goto_2

    .line 409
    .end local v11    # "node":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    :cond_9
    :goto_5
    iget-object v10, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {v0, v10}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 413
    .end local v9    # "oldHead":Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    :cond_a
    :goto_6
    const-wide/16 v11, 0x0

    cmp-long v9, v6, v11

    if-lez v9, :cond_e

    .line 414
    iget-object v8, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 415
    if-eqz v8, :cond_b

    move v9, v10

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    :goto_7
    instance-of v11, v8, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    xor-int/2addr v11, v10

    and-int/2addr v9, v11

    if-eqz v9, :cond_c

    .line 416
    invoke-direct {v0, v8}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 418
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-nez v9, :cond_d

    .line 421
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long v6, v13, v11

    goto :goto_6

    .line 419
    :cond_d
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9

    .line 424
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->toString()Ljava/lang/String;

    move-result-object v9

    .line 425
    .local v9, "futureToString":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 426
    .local v11, "unitString":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Waited "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "message":Ljava/lang/String;
    const-wide/16 v20, 0x3e8

    add-long v22, v6, v20

    const-wide/16 v18, 0x0

    cmp-long v10, v22, v18

    if-gez v10, :cond_14

    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " (plus "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    neg-long v1, v6

    .line 433
    .local v1, "overWaitNanos":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v22, v4

    .end local v4    # "timeoutNanos":J
    .local v22, "timeoutNanos":J
    invoke-virtual {v3, v1, v2, v10}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 434
    .local v4, "overWaitUnits":J
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v24

    move-wide/from16 v26, v6

    .end local v6    # "remainingNanos":J
    .local v26, "remainingNanos":J
    sub-long v6, v1, v24

    .line 435
    .local v6, "overWaitLeftoverNanos":J
    const-wide/16 v18, 0x0

    cmp-long v10, v4, v18

    if-eqz v10, :cond_10

    const-wide/16 v20, 0x3e8

    cmp-long v10, v6, v20

    if-lez v10, :cond_f

    goto :goto_8

    :cond_f
    const/16 v16, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const/16 v16, 0x1

    :goto_9
    move/from16 v10, v16

    .line 437
    .local v10, "shouldShowExtraNanos":Z
    const-wide/16 v16, 0x0

    cmp-long v12, v4, v16

    if-lez v12, :cond_12

    .line 438
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    if-eqz v10, :cond_11

    .line 440
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v16, v0

    .end local v0    # "message":Ljava/lang/String;
    .local v16, "message":Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v16    # "message":Ljava/lang/String;
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_a

    .line 439
    :cond_11
    move-object/from16 v16, v0

    .line 442
    :goto_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_12
    if-eqz v10, :cond_13

    .line 445
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " nanoseconds "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    :cond_13
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "delay)"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 429
    .end local v1    # "overWaitNanos":J
    .end local v10    # "shouldShowExtraNanos":Z
    .end local v22    # "timeoutNanos":J
    .end local v26    # "remainingNanos":J
    .local v4, "timeoutNanos":J
    .local v6, "remainingNanos":J
    :cond_14
    move-wide/from16 v22, v4

    move-wide/from16 v26, v6

    .line 453
    .end local v4    # "timeoutNanos":J
    .end local v6    # "remainingNanos":J
    .restart local v22    # "timeoutNanos":J
    .restart local v26    # "remainingNanos":J
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 454
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " but future completed as timeout expired"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    .end local v0    # "message":Ljava/lang/String;
    .end local v8    # "localValue":Ljava/lang/Object;
    .end local v9    # "futureToString":Ljava/lang/String;
    .end local v11    # "unitString":Ljava/lang/String;
    .end local v13    # "endNanos":J
    .end local v22    # "timeoutNanos":J
    .end local v26    # "remainingNanos":J
    .restart local v4    # "timeoutNanos":J
    .restart local v6    # "remainingNanos":J
    :cond_16
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method protected interruptTask()V
    .locals 0

    .line 630
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    return-void
.end method

.method public final isCancelled()Z
    .locals 2

    .line 533
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 534
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    return v1
.end method

.method public final isDone()Z
    .locals 4

    .line 527
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 528
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    instance-of v3, v0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    xor-int/2addr v1, v3

    and-int/2addr v1, v2

    return v1
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "related"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 927
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    .local p1, "related":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 930
    :cond_1
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 4

    .line 1007
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 1008
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    if-eqz v1, :cond_0

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFuture=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    iget-object v2, v2, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v2}, Landroidx/work/impl/utils/futures/AbstractFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1010
    :cond_0
    instance-of v1, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remaining delay=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/util/concurrent/ScheduledFuture;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1012
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1011
    return-object v1

    .line 1015
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 682
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    sget-object v0, Landroidx/work/impl/utils/futures/AbstractFuture;->NULL:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 683
    .local v0, "valueToSet":Ljava/lang/Object;
    :goto_0
    sget-object v1, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    invoke-static {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V

    .line 685
    const/4 v1, 0x1

    return v1

    .line 687
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 707
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    new-instance v0, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    invoke-static {p1}, Landroidx/work/impl/utils/futures/AbstractFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 708
    .local v0, "valueToSet":Ljava/lang/Object;
    sget-object v1, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    invoke-static {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V

    .line 710
    const/4 v1, 0x1

    return v1

    .line 712
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 743
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-static {p1}, Landroidx/work/impl/utils/futures/AbstractFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 745
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 746
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 747
    invoke-static {p1}, Landroidx/work/impl/utils/futures/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v2

    .line 748
    .local v2, "value":Ljava/lang/Object;
    sget-object v5, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v4, v2}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 749
    invoke-static {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V

    .line 750
    return v3

    .line 752
    :cond_0
    return v1

    .line 754
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v2, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    invoke-direct {v2, p0, p1}, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;-><init>(Landroidx/work/impl/utils/futures/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 755
    .local v2, "valueToSet":Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;
    sget-object v5, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v4, v2}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 760
    :try_start_0
    sget-object v1, Landroidx/work/impl/utils/futures/DirectExecutor;->INSTANCE:Landroidx/work/impl/utils/futures/DirectExecutor;

    invoke-interface {p1, v2, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    goto :goto_1

    .line 761
    :catchall_0
    move-exception v1

    .line 768
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    new-instance v4, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    invoke-direct {v4, v1}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 771
    .local v4, "failure":Landroidx/work/impl/utils/futures/AbstractFuture$Failure;
    goto :goto_0

    .line 769
    .end local v4    # "failure":Landroidx/work/impl/utils/futures/AbstractFuture$Failure;
    :catchall_1
    move-exception v4

    .line 770
    .local v4, "oomMostLikely":Ljava/lang/Throwable;
    sget-object v5, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;->FALLBACK_INSTANCE:Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    move-object v4, v5

    .line 774
    .local v4, "failure":Landroidx/work/impl/utils/futures/AbstractFuture$Failure;
    :goto_0
    sget-object v5, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v2, v4}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 776
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v4    # "failure":Landroidx/work/impl/utils/futures/AbstractFuture$Failure;
    :goto_1
    return v3

    .line 778
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 782
    .end local v2    # "valueToSet":Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;
    :cond_3
    instance-of v2, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v2, :cond_4

    .line 784
    move-object v2, v0

    check-cast v2, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    iget-boolean v2, v2, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {p1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 786
    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 972
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 973
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    .line 974
    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 975
    :cond_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 976
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 980
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->pendingToString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    .local v1, "pendingDescription":Ljava/lang/String;
    goto :goto_0

    .line 981
    .end local v1    # "pendingDescription":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 984
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown from implementation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 988
    .local v1, "pendingDescription":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 989
    const-string v3, "PENDING, info=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 990
    :cond_2
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 991
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 993
    :cond_3
    const-string v3, "PENDING"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .end local v1    # "pendingDescription":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final wasInterrupted()Z
    .locals 2

    .line 639
    .local p0, "this":Landroidx/work/impl/utils/futures/AbstractFuture;, "Landroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 640
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    iget-boolean v1, v1, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
