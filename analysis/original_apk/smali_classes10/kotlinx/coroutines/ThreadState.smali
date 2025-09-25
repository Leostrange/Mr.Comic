.class final Lkotlinx/coroutines/ThreadState;
.super Ljava/lang/Object;
.source "Interruptible.kt"

# interfaces
.implements Lkotlinx/coroutines/InternalCompletionHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0006\u0010\u0015\u001a\u00020\rR\t\u0010\u0005\u001a\u00020\u0006X\u0082\u0004R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/coroutines/ThreadState;",
        "Lkotlinx/coroutines/InternalCompletionHandler;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "(Lkotlinx/coroutines/Job;)V",
        "_state",
        "Lkotlinx/atomicfu/AtomicInt;",
        "cancelHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "targetThread",
        "Ljava/lang/Thread;",
        "kotlin.jvm.PlatformType",
        "clearInterrupt",
        "",
        "invalidState",
        "",
        "state",
        "",
        "invoke",
        "cause",
        "",
        "setup",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic _state$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _state$volatile:I

.field private cancelHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final job:Lkotlinx/coroutines/Job;

.field private final targetThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/ThreadState;

    const-string v1, "_state$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/ThreadState;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1
    .param p1, "job"    # Lkotlinx/coroutines/Job;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/ThreadState;->job:Lkotlinx/coroutines/Job;

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/ThreadState;->targetThread:Ljava/lang/Thread;

    .line 62
    return-void
.end method

.method private final synthetic get_state$volatile()I
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/ThreadState;->_state$volatile:I

    return v0
.end method

.method private static final synthetic get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/ThreadState;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final invalidState(I)Ljava/lang/Void;
    .locals 3
    .param p1, "state"    # I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final synthetic loop$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final synthetic set_state$volatile(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/ThreadState;->_state$volatile:I

    return-void
.end method


# virtual methods
.method public final clearInterrupt()V
    .locals 6

    .line 112
    invoke-static {}, Lkotlinx/coroutines/ThreadState;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/ThreadState;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    .local v2, "state":I
    const/4 v3, 0x0

    .line 117
    .local v3, "$i$a$-loop$atomicfu-ThreadState$clearInterrupt$1":I
    packed-switch v2, :pswitch_data_0

    .line 133
    :pswitch_0
    invoke-direct {p0, v2}, Lkotlinx/coroutines/ThreadState;->invalidState(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 130
    :pswitch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 131
    return-void

    .line 120
    :pswitch_2
    goto :goto_1

    .line 118
    :pswitch_3
    invoke-static {}, Lkotlinx/coroutines/ThreadState;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    iget-object v4, p0, Lkotlinx/coroutines/ThreadState;->cancelHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 120
    :cond_0
    return-void

    .line 135
    :cond_1
    :goto_1
    nop

    .end local v2    # "state":I
    .end local v3    # "$i$a$-loop$atomicfu-ThreadState$clearInterrupt$1":I
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 139
    invoke-static {}, Lkotlinx/coroutines/ThreadState;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/ThreadState;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    .local v2, "state":I
    const/4 v3, 0x0

    .line 141
    .local v3, "$i$a$-loop$atomicfu-ThreadState$invoke$1":I
    packed-switch v2, :pswitch_data_0

    .line 152
    invoke-direct {p0, v2}, Lkotlinx/coroutines/ThreadState;->invalidState(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 151
    :pswitch_0
    return-void

    .line 144
    :pswitch_1
    invoke-static {}, Lkotlinx/coroutines/ThreadState;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Lkotlinx/coroutines/ThreadState;->targetThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lkotlinx/coroutines/ThreadState;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    .line 146
    const/4 v5, 0x3

    invoke-virtual {v4, p0, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 147
    return-void

    .line 154
    :cond_0
    nop

    .end local v2    # "state":I
    .end local v3    # "$i$a$-loop$atomicfu-ThreadState$invoke$1":I
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setup()V
    .locals 6

    .line 99
    iget-object v0, p0, Lkotlinx/coroutines/ThreadState;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/InternalCompletionHandler;

    invoke-static {v0, v1, v1, v2}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/InternalCompletionHandler;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/ThreadState;->cancelHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 98
    invoke-static {}, Lkotlinx/coroutines/ThreadState;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/ThreadState;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    .local v2, "state":I
    const/4 v3, 0x0

    .line 102
    .local v3, "$i$a$-loop$atomicfu-ThreadState$setup$1":I
    packed-switch v2, :pswitch_data_0

    .line 107
    :pswitch_0
    invoke-direct {p0, v2}, Lkotlinx/coroutines/ThreadState;->invalidState(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 106
    :pswitch_1
    return-void

    .line 104
    :pswitch_2
    invoke-static {}, Lkotlinx/coroutines/ThreadState;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 109
    :cond_0
    nop

    .end local v2    # "state":I
    .end local v3    # "$i$a$-loop$atomicfu-ThreadState$setup$1":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
