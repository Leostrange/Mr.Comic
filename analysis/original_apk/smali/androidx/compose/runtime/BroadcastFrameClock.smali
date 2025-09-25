.class public final Landroidx/compose/runtime/BroadcastFrameClock;
.super Ljava/lang/Object;
.source "BroadcastFrameClock.kt"

# interfaces
.implements Landroidx/compose/runtime/MonotonicFrameClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcastFrameClock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastFrameClock.kt\nandroidx/compose/runtime/BroadcastFrameClock\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,132:1\n82#2:133\n82#2:134\n82#2:144\n82#2:147\n314#3,9:135\n323#3,2:145\n33#4,6:148\n*S KotlinDebug\n*F\n+ 1 BroadcastFrameClock.kt\nandroidx/compose/runtime/BroadcastFrameClock\n*L\n54#1:133\n62#1:134\n81#1:144\n112#1:147\n79#1:135,9\n79#1:145,2\n115#1:148,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0001 B\u0017\u0012\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010\u0012\u001a\u00020\u00042\u000c\u0008\u0002\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\nH\u0002J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aJ(\u0010\u001b\u001a\u0002H\u001c\"\u0004\u0008\u0000\u0010\u001c2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u0002H\u001c0\u001eH\u0096@\u00a2\u0006\u0002\u0010\u001fR\u0018\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/runtime/BroadcastFrameClock;",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
        "onNewAwaiters",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;)V",
        "awaiters",
        "",
        "Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;",
        "failureCause",
        "",
        "hasAwaiters",
        "",
        "getHasAwaiters",
        "()Z",
        "lock",
        "",
        "spareList",
        "cancel",
        "cancellationException",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "fail",
        "cause",
        "sendFrame",
        "timeNanos",
        "",
        "withFrameNanos",
        "R",
        "onFrame",
        "Lkotlin/Function1;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "FrameAwaiter",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private awaiters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private failureCause:Ljava/lang/Throwable;

.field private final lock:Ljava/lang/Object;

.field private final onNewAwaiters:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private spareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/BroadcastFrameClock;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/runtime/BroadcastFrameClock;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "onNewAwaiters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->onNewAwaiters:Lkotlin/jvm/functions/Function0;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->spareList:Ljava/util/List;

    .line 36
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 36
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 37
    const/4 p1, 0x0

    .line 36
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/BroadcastFrameClock;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 131
    return-void
.end method

.method public static final synthetic access$fail(Landroidx/compose/runtime/BroadcastFrameClock;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/BroadcastFrameClock;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 36
    invoke-direct {p0, p1}, Landroidx/compose/runtime/BroadcastFrameClock;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$getAwaiters$p(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/BroadcastFrameClock;

    .line 36
    iget-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getFailureCause$p(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/BroadcastFrameClock;

    .line 36
    iget-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->failureCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static final synthetic access$getLock$p(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/BroadcastFrameClock;

    .line 36
    iget-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getOnNewAwaiters$p(Landroidx/compose/runtime/BroadcastFrameClock;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/BroadcastFrameClock;

    .line 36
    iget-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->onNewAwaiters:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static synthetic cancel$default(Landroidx/compose/runtime/BroadcastFrameClock;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    .line 126
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 127
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string/jumbo p2, "clock cancelled"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/BroadcastFrameClock;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method private final fail(Ljava/lang/Throwable;)V
    .locals 12
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 112
    iget-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 147
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 113
    .local v2, "$i$a$-synchronized-BroadcastFrameClock$fail$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/BroadcastFrameClock;->failureCause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local v2    # "$i$a$-synchronized-BroadcastFrameClock$fail$1":I
    monitor-exit v0

    return-void

    .line 114
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-BroadcastFrameClock$fail$1":I
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->failureCause:Ljava/lang/Throwable;

    .line 115
    iget-object v3, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 148
    .local v4, "$i$f$fastForEach":I
    nop

    .line 149
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_1

    .line 150
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 151
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    .local v8, "awaiter":Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;
    const/4 v9, 0x0

    .line 116
    .local v9, "$i$a$-fastForEach-BroadcastFrameClock$fail$1$1":I
    invoke-virtual {v8}, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->getContinuation()Lkotlin/coroutines/Continuation;

    move-result-object v10

    sget-object v11, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 117
    nop

    .line 151
    .end local v8    # "awaiter":Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;
    .end local v9    # "$i$a$-fastForEach-BroadcastFrameClock$fail$1$1":I
    nop

    .line 149
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 153
    .end local v5    # "index$iv":I
    :cond_1
    nop

    .line 118
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    iget-object v3, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 119
    nop

    .end local v2    # "$i$a$-synchronized-BroadcastFrameClock$fail$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    monitor-exit v0

    .line 120
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 147
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method


# virtual methods
.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p1, "cancellationException"    # Ljava/util/concurrent/CancellationException;

    .line 129
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/BroadcastFrameClock;->fail(Ljava/lang/Throwable;)V

    .line 130
    return-void
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->fold(Landroidx/compose/runtime/MonotonicFrameClock;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1
    .param p1, "key"    # Lkotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->get(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    return-object v0
.end method

.method public final getHasAwaiters()Z
    .locals 4

    .line 54
    iget-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 133
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 54
    .local v2, "$i$a$-synchronized-BroadcastFrameClock$hasAwaiters$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v3, v3, 0x1

    .line 133
    .end local v2    # "$i$a$-synchronized-BroadcastFrameClock$hasAwaiters$1":I
    monitor-exit v0

    .line 54
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return v3

    .line 133
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .param p1, "key"    # Lkotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->minusKey(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;

    .line 36
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->plus(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final sendFrame(J)V
    .locals 7
    .param p1, "timeNanos"    # J

    .line 62
    iget-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 134
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 66
    .local v2, "$i$a$-synchronized-BroadcastFrameClock$sendFrame$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    .line 67
    .local v3, "toResume":Ljava/util/List;
    iget-object v4, p0, Landroidx/compose/runtime/BroadcastFrameClock;->spareList:Ljava/util/List;

    iput-object v4, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    .line 68
    iput-object v3, p0, Landroidx/compose/runtime/BroadcastFrameClock;->spareList:Ljava/util/List;

    .line 70
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 71
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    invoke-virtual {v6, p1, p2}, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->resume(J)V

    .line 70
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v4    # "i":I
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 74
    nop

    .end local v2    # "$i$a$-synchronized-BroadcastFrameClock$sendFrame$1":I
    .end local v3    # "toResume":Ljava/util/List;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit v0

    .line 75
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 134
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .param p1, "onFrame"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 79
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 135
    .local v2, "$i$f$suspendCancellableCoroutine":I
    move-object/from16 v3, p2

    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .line 136
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v5, v0

    .line 142
    .local v5, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 143
    move-object v7, v5

    check-cast v7, Lkotlinx/coroutines/CancellableContinuation;

    .local v7, "co":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v8, 0x0

    .line 80
    .local v8, "$i$a$-suspendCancellableCoroutine-BroadcastFrameClock$withFrameNanos$2":I
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v9, v0

    .line 81
    .local v9, "awaiter":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/BroadcastFrameClock;->access$getLock$p(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/lang/Object;

    move-result-object v10

    .local v10, "lock$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 144
    .local v11, "$i$f$synchronized":I
    monitor-enter v10

    const/4 v0, 0x0

    .line 82
    .local v0, "$i$a$-synchronized-BroadcastFrameClock$withFrameNanos$2$hasNewAwaiters$1":I
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/BroadcastFrameClock;->access$getFailureCause$p(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/lang/Throwable;

    move-result-object v12

    .line 83
    .local v12, "cause":Ljava/lang/Throwable;
    if-eqz v12, :cond_0

    .line 84
    move-object v6, v7

    check-cast v6, Lkotlin/coroutines/Continuation;

    sget-object v13, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v12}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 85
    nop

    .end local v0    # "$i$a$-synchronized-BroadcastFrameClock$withFrameNanos$2$hasNewAwaiters$1":I
    .end local v10    # "lock$iv":Ljava/lang/Object;
    .end local v11    # "$i$f$synchronized":I
    .end local v12    # "cause":Ljava/lang/Throwable;
    monitor-exit v10

    move-object/from16 v15, p1

    goto :goto_4

    .line 87
    .restart local v0    # "$i$a$-synchronized-BroadcastFrameClock$withFrameNanos$2$hasNewAwaiters$1":I
    .restart local v10    # "lock$iv":Ljava/lang/Object;
    .restart local v11    # "$i$f$synchronized":I
    .restart local v12    # "cause":Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    new-instance v13, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    move-object v14, v7

    check-cast v14, Lkotlin/coroutines/Continuation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v15, p1

    :try_start_2
    invoke-direct {v13, v15, v14}, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object v13, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 88
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/BroadcastFrameClock;->access$getAwaiters$p(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    move v13, v6

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 89
    .local v13, "hadAwaiters":Z
    :goto_0
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/BroadcastFrameClock;->access$getAwaiters$p(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/util/List;

    move-result-object v6

    iget-object v14, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v14, :cond_2

    const-string/jumbo v14, "awaiter"

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_1

    :cond_2
    iget-object v14, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    :goto_1
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    if-nez v13, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 144
    .end local v0    # "$i$a$-synchronized-BroadcastFrameClock$withFrameNanos$2$hasNewAwaiters$1":I
    .end local v12    # "cause":Ljava/lang/Throwable;
    .end local v13    # "hadAwaiters":Z
    :goto_2
    monitor-exit v10

    .line 81
    .end local v10    # "lock$iv":Ljava/lang/Object;
    .end local v11    # "$i$f$synchronized":I
    nop

    .line 93
    .local v6, "hasNewAwaiters":Z
    new-instance v0, Landroidx/compose/runtime/BroadcastFrameClock$withFrameNanos$2$1;

    invoke-direct {v0, v1, v9}, Landroidx/compose/runtime/BroadcastFrameClock$withFrameNanos$2$1;-><init>(Landroidx/compose/runtime/BroadcastFrameClock;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 100
    if-eqz v6, :cond_4

    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/BroadcastFrameClock;->access$getOnNewAwaiters$p(Landroidx/compose/runtime/BroadcastFrameClock;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 101
    nop

    .line 103
    :try_start_3
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/BroadcastFrameClock;->access$getOnNewAwaiters$p(Landroidx/compose/runtime/BroadcastFrameClock;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 104
    :catchall_0
    move-exception v0

    .line 106
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Landroidx/compose/runtime/BroadcastFrameClock;->access$fail(Landroidx/compose/runtime/BroadcastFrameClock;Ljava/lang/Throwable;)V

    .line 109
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_3
    nop

    .line 143
    .end local v6    # "hasNewAwaiters":Z
    .end local v7    # "co":Lkotlinx/coroutines/CancellableContinuation;
    .end local v8    # "$i$a$-suspendCancellableCoroutine-BroadcastFrameClock$withFrameNanos$2":I
    .end local v9    # "awaiter":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_4
    nop

    .line 145
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 135
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_5

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 146
    :cond_5
    nop

    .line 109
    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    return-object v0

    .line 144
    .restart local v2    # "$i$f$suspendCancellableCoroutine":I
    .restart local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v7    # "co":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v8    # "$i$a$-suspendCancellableCoroutine-BroadcastFrameClock$withFrameNanos$2":I
    .restart local v9    # "awaiter":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v10    # "lock$iv":Ljava/lang/Object;
    .restart local v11    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v15, p1

    :goto_5
    monitor-exit v10

    throw v0
.end method
