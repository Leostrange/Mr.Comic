.class public Lkotlinx/coroutines/sync/SemaphoreImpl;
.super Ljava/lang/Object;
.source "Semaphore.kt"

# interfaces
.implements Lkotlinx/coroutines/sync/Semaphore;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 5 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,392:1\n200#1,10:406\n200#1,10:416\n1#2:393\n336#3,12:394\n68#4,3:426\n42#4,8:429\n68#4,3:440\n42#4,8:443\n370#5:437\n370#5:438\n362#5:439\n373#5:451\n362#5:452\n370#5:453\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n*L\n192#1:406,10\n216#1:416,10\n182#1:394,12\n284#1:426,3\n284#1:429,8\n317#1:440,3\n317#1:443,8\n288#1:437\n294#1:438\n308#1:439\n323#1:451\n329#1:452\n332#1:453\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0010\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u0016\u001a\u00020\u0014H\u0096@\u00a2\u0006\u0002\u0010\u0017Jb\u0010\u0016\u001a\u00020\u0014\"\u0004\u0008\u0000\u0010\u00182\u0006\u0010\u0019\u001a\u0002H\u00182!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u0011H\u0018\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u001d0\u00122!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u0011H\u0018\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u00140\u0012H\u0083\u0008\u00a2\u0006\u0002\u0010\u001fJ\u0016\u0010\u0016\u001a\u00020\u00142\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140 H\u0005J\u000e\u0010!\u001a\u00020\u0014H\u0082@\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020#H\u0002J\u0008\u0010$\u001a\u00020\u0014H\u0002J\u0008\u0010%\u001a\u00020\u0003H\u0002J\u001e\u0010&\u001a\u00020\u00142\n\u0010\'\u001a\u0006\u0012\u0002\u0008\u00030(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0004J\u0008\u0010+\u001a\u00020\u0014H\u0016J\u0008\u0010,\u001a\u00020\u001dH\u0016J\u0008\u0010-\u001a\u00020\u001dH\u0002J\u000c\u0010.\u001a\u00020\u001d*\u00020*H\u0002R\t\u0010\u0006\u001a\u00020\u0007X\u0082\u0004R\u0014\u0010\u0008\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\t\u0010\u000b\u001a\u00020\u000cX\u0082\u0004R\t\u0010\r\u001a\u00020\u000cX\u0082\u0004R\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a8\u0006/"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/SemaphoreImpl;",
        "Lkotlinx/coroutines/sync/Semaphore;",
        "permits",
        "",
        "acquiredPermits",
        "(II)V",
        "_availablePermits",
        "Lkotlinx/atomicfu/AtomicInt;",
        "availablePermits",
        "getAvailablePermits",
        "()I",
        "deqIdx",
        "Lkotlinx/atomicfu/AtomicLong;",
        "enqIdx",
        "head",
        "Lkotlinx/atomicfu/AtomicRef;",
        "Lkotlinx/coroutines/sync/SemaphoreSegment;",
        "onCancellationRelease",
        "Lkotlin/Function1;",
        "",
        "",
        "tail",
        "acquire",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "W",
        "waiter",
        "suspend",
        "Lkotlin/ParameterName;",
        "name",
        "",
        "onAcquired",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "acquireSlowPath",
        "addAcquireToQueue",
        "Lkotlinx/coroutines/Waiter;",
        "coerceAvailablePermitsAtMaximum",
        "decPermits",
        "onAcquireRegFunction",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "ignoredParam",
        "",
        "release",
        "tryAcquire",
        "tryResumeNextFromQueue",
        "tryResumeAcquire",
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
.field private static final synthetic _availablePermits$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic deqIdx$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic enqIdx$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic head$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic tail$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _availablePermits$volatile:I

.field private volatile synthetic deqIdx$volatile:J

.field private volatile synthetic enqIdx$volatile:J

.field private volatile synthetic head$volatile:Ljava/lang/Object;

.field private final onCancellationRelease:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final permits:I

.field private volatile synthetic tail$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "head$volatile"

    const-class v2, Lkotlinx/coroutines/sync/SemaphoreImpl;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "deqIdx$volatile"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v1, "tail$volatile"

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "enqIdx$volatile"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availablePermits$volatile"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5
    .param p1, "permits"    # I
    .param p2, "acquiredPermits"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    .line 131
    nop

    .line 132
    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 133
    if-ltz p2, :cond_1

    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-gt p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 134
    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlinx/coroutines/sync/SemaphoreSegment;-><init>(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V

    .line 135
    .local v0, "s":Lkotlinx/coroutines/sync/SemaphoreSegment;
    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head$volatile:Ljava/lang/Object;

    .line 136
    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail$volatile:Ljava/lang/Object;

    .line 137
    .end local v0    # "s":Lkotlinx/coroutines/sync/SemaphoreSegment;
    nop

    .line 146
    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    sub-int/2addr v0, p2

    iput v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$volatile:I

    .line 149
    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreImpl$onCancellationRelease$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/sync/SemaphoreImpl$onCancellationRelease$1;-><init>(Lkotlinx/coroutines/sync/SemaphoreImpl;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    .line 90
    return-void

    .line 393
    :cond_2
    const/4 v0, 0x0

    .line 133
    .local v0, "$i$a$-require-SemaphoreImpl$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of acquired permits should be in 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SemaphoreImpl$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_3
    const/4 v0, 0x0

    .line 132
    .local v0, "$i$a$-require-SemaphoreImpl$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Semaphore should have at least 1 permit, but had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SemaphoreImpl$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic access$acquireSlowPath(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/sync/SemaphoreImpl;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 89
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->acquireSlowPath(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$addAcquireToQueue(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlinx/coroutines/Waiter;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/sync/SemaphoreImpl;
    .param p1, "waiter"    # Lkotlinx/coroutines/Waiter;

    .line 89
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z

    move-result v0

    return v0
.end method

.method private final acquire(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1, "waiter"    # Ljava/lang/Object;
    .param p2, "suspend"    # Lkotlin/jvm/functions/Function1;
    .param p3, "onAcquired"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Ljava/lang/Object;",
            ">(TW;",
            "Lkotlin/jvm/functions/Function1<",
            "-TW;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TW;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    .local v0, "$i$f$acquire":I
    :cond_0
    nop

    .line 202
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->decPermits()I

    move-result v1

    .line 204
    .local v1, "p":I
    if-lez v1, :cond_1

    .line 205
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void

    .line 209
    :cond_1
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void
.end method

.method static synthetic acquire$suspendImpl(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lkotlinx/coroutines/sync/SemaphoreImpl;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/sync/SemaphoreImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->decPermits()I

    move-result v0

    .line 174
    .local v0, "p":I
    if-lez v0, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 179
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->acquireSlowPath(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 180
    return-object v1
.end method

.method private final acquireSlowPath(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    .line 394
    .local v0, "$i$f$suspendCancellableCoroutineReusable":I
    move-object v1, p1

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 395
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v3

    .line 396
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    nop

    .line 397
    move-object v4, v3

    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v5, 0x0

    .line 184
    .local v5, "$i$a$-suspendCancellableCoroutineReusable-SemaphoreImpl$acquireSlowPath$2":I
    :try_start_0
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/Waiter;

    invoke-static {p0, v6}, Lkotlinx/coroutines/sync/SemaphoreImpl;->access$addAcquireToQueue(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlinx/coroutines/Waiter;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/CancellableContinuation;

    invoke-virtual {p0, v6}, Lkotlinx/coroutines/sync/SemaphoreImpl;->acquire(Lkotlinx/coroutines/CancellableContinuation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    nop

    .line 397
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v5    # "$i$a$-suspendCancellableCoroutineReusable-SemaphoreImpl$acquireSlowPath$2":I
    :cond_0
    nop

    .line 404
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 394
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    return-object v1

    .line 405
    :cond_2
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 189
    return-object v0

    .line 398
    .restart local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :catchall_0
    move-exception v4

    .line 401
    .local v4, "e$iv":Ljava/lang/Throwable;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 402
    throw v4
.end method

.method private final addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z
    .locals 17
    .param p1, "waiter"    # Lkotlinx/coroutines/Waiter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->getTail$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    .line 281
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .local v2, "curTail":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->getEnqIdx$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    .line 282
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    .line 283
    .local v3, "enqIdx":J
    sget-object v5, Lkotlinx/coroutines/sync/SemaphoreImpl$addAcquireToQueue$createNewSegment$1;->INSTANCE:Lkotlinx/coroutines/sync/SemaphoreImpl$addAcquireToQueue$createNewSegment$1;

    check-cast v5, Lkotlin/reflect/KFunction;

    .local v5, "createNewSegment":Lkotlin/reflect/KFunction;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->getTail$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    .line 284
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v7

    int-to-long v7, v7

    div-long v7, v3, v7

    .line 426
    .local v6, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .local v7, "id$iv":J
    :goto_0
    move-object v9, v2

    check-cast v9, Lkotlinx/coroutines/internal/Segment;

    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 427
    invoke-static {v9, v7, v8, v10}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v9

    .line 428
    .local v9, "s$iv":Ljava/lang/Object;
    invoke-static {v9}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v9}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v10

    .local v10, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :goto_1
    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/coroutines/internal/Segment;

    .local v13, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v14, 0x0

    .line 429
    .local v14, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    iget-wide v11, v13, Lkotlinx/coroutines/internal/Segment;->id:J

    move-wide v15, v7

    .end local v7    # "id$iv":J
    .local v15, "id$iv":J
    iget-wide v7, v10, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v7, v11, v7

    if-ltz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    .line 430
    :cond_0
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    .line 431
    :cond_1
    invoke-static {v6, v0, v13, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 432
    invoke-virtual {v13}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 433
    :cond_2
    const/4 v7, 0x1

    .line 428
    .end local v10    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v13    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v14    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    :goto_2
    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move-wide v7, v15

    goto :goto_0

    .line 435
    .restart local v10    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v13    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v14    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    :cond_4
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 436
    :cond_5
    move-wide v7, v15

    .end local v13    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v14    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    goto :goto_1

    .line 428
    .end local v10    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v15    # "id$iv":J
    .restart local v7    # "id$iv":J
    :cond_6
    move-wide v15, v7

    .line 285
    .end local v6    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v7    # "id$iv":J
    .end local v9    # "s$iv":Ljava/lang/Object;
    :goto_3
    invoke-static {v9}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 284
    nop

    .line 286
    .local v6, "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v7

    int-to-long v7, v7

    rem-long v7, v3, v7

    long-to-int v7, v7

    .line 288
    .local v7, "i":I
    const/4 v8, 0x0

    .local v8, "expected$iv":Ljava/lang/Object;
    move-object v9, v6

    .local v9, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v10, 0x0

    .line 437
    .local v10, "$i$f$cas":I
    invoke-virtual {v9}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v11

    invoke-static {v11, v7, v8, v1}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 288
    .end local v8    # "expected$iv":Ljava/lang/Object;
    .end local v9    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v10    # "$i$f$cas":I
    if-eqz v8, :cond_7

    .line 289
    move-object v8, v6

    check-cast v8, Lkotlinx/coroutines/internal/Segment;

    invoke-interface {v1, v8, v7}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    .line 290
    const/4 v8, 0x1

    return v8

    .line 294
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getPERMIT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    .restart local v8    # "expected$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getTAKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v9

    .local v9, "value$iv":Ljava/lang/Object;
    move-object v10, v6

    .local v10, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v11, 0x0

    .line 438
    .local v11, "$i$f$cas":I
    invoke-virtual {v10}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v12

    invoke-static {v12, v7, v8, v9}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 294
    .end local v8    # "expected$iv":Ljava/lang/Object;
    .end local v9    # "value$iv":Ljava/lang/Object;
    .end local v10    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v11    # "$i$f$cas":I
    if-eqz v8, :cond_a

    .line 296
    nop

    .line 297
    instance-of v8, v1, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v8, :cond_8

    .line 298
    const-string v8, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Lkotlinx/coroutines/CancellableContinuation;

    .line 299
    move-object v8, v1

    check-cast v8, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v10, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v9, v10}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    goto :goto_4

    .line 301
    :cond_8
    instance-of v8, v1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v8, :cond_9

    .line 302
    move-object v8, v1

    check-cast v8, Lkotlinx/coroutines/selects/SelectInstance;

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v8, v9}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 306
    :goto_4
    const/4 v8, 0x1

    return v8

    .line 302
    :cond_9
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 304
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 308
    :cond_a
    const/4 v8, 0x1

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 393
    const/4 v9, 0x0

    .line 308
    .local v9, "$i$a$-assert-SemaphoreImpl$addAcquireToQueue$1":I
    move-object v10, v6

    .restart local v10    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v11, 0x0

    .line 439
    .local v11, "$i$f$get":I
    invoke-virtual {v10}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 308
    .end local v10    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v11    # "$i$f$get":I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getBROKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v11

    if-ne v10, v11, :cond_b

    move v12, v8

    goto :goto_5

    :cond_b
    const/4 v12, 0x0

    .end local v9    # "$i$a$-assert-SemaphoreImpl$addAcquireToQueue$1":I
    :goto_5
    if-eqz v12, :cond_c

    goto :goto_6

    :cond_c
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 309
    :cond_d
    :goto_6
    const/4 v8, 0x0

    return v8
.end method

.method private final coerceAvailablePermitsAtMaximum()V
    .locals 3

    .line 270
    nop

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->get_availablePermits$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 272
    .local v0, "cur":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-le v0, v1, :cond_1

    .line 273
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->get_availablePermits$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    .end local v0    # "cur":I
    :cond_1
    return-void
.end method

.method private final decPermits()I
    .locals 2

    .line 230
    nop

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->get_availablePermits$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 232
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v0

    .line 236
    .local v0, "p":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-gt v0, v1, :cond_0

    .line 238
    return v0
.end method

.method private final synthetic getDeqIdx$volatile()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx$volatile:J

    return-wide v0
.end method

.method private static final synthetic getDeqIdx$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final synthetic getEnqIdx$volatile()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx$volatile:J

    return-wide v0
.end method

.method private static final synthetic getEnqIdx$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final synthetic getHead$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic getHead$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic getTail$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic getTail$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic get_availablePermits$volatile()I
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$volatile:I

    return v0
.end method

.method private static final synthetic get_availablePermits$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final synthetic setDeqIdx$volatile(J)V
    .locals 0

    iput-wide p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx$volatile:J

    return-void
.end method

.method private final synthetic setEnqIdx$volatile(J)V
    .locals 0

    iput-wide p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx$volatile:J

    return-void
.end method

.method private final synthetic setHead$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic setTail$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic set_availablePermits$volatile(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$volatile:I

    return-void
.end method

.method private final tryResumeAcquire(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "$this$tryResumeAcquire"    # Ljava/lang/Object;

    .line 339
    nop

    .line 340
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v0, :cond_1

    .line 341
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    .line 342
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    iget-object v3, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2, v3}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    .local v0, "token":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 344
    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    .line 345
    const/4 v1, 0x1

    goto :goto_0

    .line 346
    :cond_0
    nop

    .end local v0    # "token":Ljava/lang/Object;
    const/4 v1, 0x0

    goto :goto_0

    .line 348
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v0, :cond_2

    .line 349
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectInstance;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, p0, v1}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 352
    :goto_0
    return v1

    .line 349
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final tryResumeNextFromQueue()Z
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->getHead$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 314
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .local v1, "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->getDeqIdx$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    .line 315
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    .line 316
    .local v2, "deqIdx":J
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v4

    int-to-long v4, v4

    div-long v4, v2, v4

    .line 317
    .local v4, "id":J
    sget-object v6, Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;->INSTANCE:Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;

    check-cast v6, Lkotlin/reflect/KFunction;

    .local v6, "createNewSegment":Lkotlin/reflect/KFunction;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->getHead$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    .line 440
    .local v7, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    :cond_0
    move-object v8, v1

    check-cast v8, Lkotlinx/coroutines/internal/Segment;

    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 441
    invoke-static {v8, v4, v5, v9}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v8

    .line 442
    .local v8, "s$iv":Ljava/lang/Object;
    invoke-static {v8}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v8}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v9

    .local v9, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :goto_0
    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlinx/coroutines/internal/Segment;

    .local v12, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v13, 0x0

    .line 443
    .local v13, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    iget-wide v14, v12, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v10, v9, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v10, v14, v10

    if-ltz v10, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    .line 444
    :cond_1
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    .line 445
    :cond_2
    invoke-static {v7, v0, v12, v9}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 446
    invoke-virtual {v12}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 447
    :cond_3
    const/4 v9, 0x1

    .line 442
    .end local v9    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v13    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    :goto_1
    if-eqz v9, :cond_0

    goto :goto_2

    .line 449
    .restart local v9    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v12    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v13    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    :cond_4
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 450
    :cond_5
    nop

    .end local v12    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v13    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    goto :goto_0

    .line 319
    .end local v7    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v8    # "s$iv":Ljava/lang/Object;
    .end local v9    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :cond_6
    :goto_2
    invoke-static {v8}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v7

    check-cast v7, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 318
    nop

    .line 320
    .local v7, "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-virtual {v7}, Lkotlinx/coroutines/sync/SemaphoreSegment;->cleanPrev()V

    .line 321
    iget-wide v8, v7, Lkotlinx/coroutines/sync/SemaphoreSegment;->id:J

    cmp-long v8, v8, v4

    if-lez v8, :cond_7

    const/4 v8, 0x0

    return v8

    .line 322
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v8

    int-to-long v8, v8

    rem-long v8, v2, v8

    long-to-int v8, v8

    .line 323
    .local v8, "i":I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getPERMIT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v9

    .local v9, "value$iv":Ljava/lang/Object;
    move-object v10, v7

    .local v10, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v11, 0x0

    .line 451
    .local v11, "$i$f$getAndSet":I
    invoke-virtual {v10}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 323
    .end local v9    # "value$iv":Ljava/lang/Object;
    .end local v10    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v11    # "$i$f$getAndSet":I
    nop

    .line 324
    .local v9, "cellState":Ljava/lang/Object;
    nop

    .line 325
    if-nez v9, :cond_a

    .line 328
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getMAX_SPIN_CYCLES$p()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_9

    move v12, v11

    .local v12, "it":I
    const/4 v13, 0x0

    .line 329
    .local v13, "$i$a$-repeat-SemaphoreImpl$tryResumeNextFromQueue$1":I
    move-object v14, v7

    .local v14, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v15, 0x0

    .line 452
    .local v15, "$i$f$get":I
    move-object/from16 v16, v1

    .end local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .local v16, "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-virtual {v14}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 329
    .end local v14    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v15    # "$i$f$get":I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getTAKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v14

    if-ne v1, v14, :cond_8

    const/4 v1, 0x1

    return v1

    .line 330
    :cond_8
    nop

    .line 328
    .end local v12    # "it":I
    .end local v13    # "$i$a$-repeat-SemaphoreImpl$tryResumeNextFromQueue$1":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v16

    goto :goto_3

    .line 332
    .end local v16    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    :cond_9
    move-object/from16 v16, v1

    .end local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v16    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getPERMIT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    .local v1, "expected$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getBROKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    .local v10, "value$iv":Ljava/lang/Object;
    move-object v11, v7

    .local v11, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v12, 0x0

    .line 453
    .local v12, "$i$f$cas":I
    invoke-virtual {v11}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v13

    invoke-static {v13, v8, v1, v10}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .end local v1    # "expected$iv":Ljava/lang/Object;
    .end local v10    # "value$iv":Ljava/lang/Object;
    .end local v11    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v12    # "$i$f$cas":I
    const/4 v10, 0x1

    .line 332
    xor-int/2addr v1, v10

    return v1

    .line 334
    .end local v16    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .local v1, "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    :cond_a
    move-object/from16 v16, v1

    .end local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v16    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getCANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v9, v1, :cond_b

    const/4 v1, 0x0

    return v1

    .line 335
    :cond_b
    invoke-direct {v0, v9}, Lkotlinx/coroutines/sync/SemaphoreImpl;->tryResumeAcquire(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public acquire(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->acquire$suspendImpl(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final acquire(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 7
    .param p1, "waiter"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 192
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v1, 0x0

    .line 406
    .local v1, "$i$f$acquire":I
    :cond_0
    nop

    .line 408
    invoke-direct {v0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->decPermits()I

    move-result v2

    .line 410
    .local v2, "p$iv":I
    if-lez v2, :cond_1

    .line 411
    move-object v3, p1

    .local v3, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v4, 0x0

    .line 195
    .local v4, "$i$a$-acquire-SemaphoreImpl$acquire$3":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v6, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v5, v6}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 411
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v4    # "$i$a$-acquire-SemaphoreImpl$acquire$3":I
    nop

    .line 412
    goto :goto_0

    .line 415
    :cond_1
    move-object v3, p1

    .restart local v3    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v4, 0x0

    .line 194
    .local v4, "$i$a$-acquire-SemaphoreImpl$acquire$2":I
    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.Waiter"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/Waiter;

    invoke-direct {p0, v5}, Lkotlinx/coroutines/sync/SemaphoreImpl;->addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z

    move-result v3

    .line 415
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v4    # "$i$a$-acquire-SemaphoreImpl$acquire$2":I
    if-eqz v3, :cond_0

    .line 196
    .end local v0    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v1    # "$i$f$acquire":I
    .end local v2    # "p$iv":I
    :goto_0
    return-void
.end method

.method public getAvailablePermits()I
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->get_availablePermits$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final onAcquireRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 6
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 216
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v1, 0x0

    .line 416
    .local v1, "$i$f$acquire":I
    :cond_0
    nop

    .line 418
    invoke-direct {v0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->decPermits()I

    move-result v2

    .line 420
    .local v2, "p$iv":I
    if-lez v2, :cond_1

    .line 421
    move-object v3, p1

    .local v3, "s":Lkotlinx/coroutines/selects/SelectInstance;
    const/4 v4, 0x0

    .line 219
    .local v4, "$i$a$-acquire-SemaphoreImpl$onAcquireRegFunction$2":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v3, v5}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 421
    .end local v3    # "s":Lkotlinx/coroutines/selects/SelectInstance;
    .end local v4    # "$i$a$-acquire-SemaphoreImpl$onAcquireRegFunction$2":I
    nop

    .line 422
    goto :goto_0

    .line 425
    :cond_1
    move-object v3, p1

    .restart local v3    # "s":Lkotlinx/coroutines/selects/SelectInstance;
    const/4 v4, 0x0

    .line 218
    .local v4, "$i$a$-acquire-SemaphoreImpl$onAcquireRegFunction$1":I
    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.Waiter"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/Waiter;

    invoke-direct {p0, v5}, Lkotlinx/coroutines/sync/SemaphoreImpl;->addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z

    move-result v3

    .line 425
    .end local v3    # "s":Lkotlinx/coroutines/selects/SelectInstance;
    .end local v4    # "$i$a$-acquire-SemaphoreImpl$onAcquireRegFunction$1":I
    if-eqz v3, :cond_0

    .line 220
    .end local v0    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v1    # "$i$f$acquire":I
    .end local v2    # "p$iv":I
    :goto_0
    return-void
.end method

.method public release()V
    .locals 4

    .line 243
    nop

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->get_availablePermits$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    .line 248
    .local v0, "p":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-ge v0, v1, :cond_2

    .line 255
    if-ltz v0, :cond_1

    return-void

    .line 260
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->tryResumeNextFromQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 251
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->coerceAvailablePermitsAtMaximum()V

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of released permits cannot be greater than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public tryAcquire()Z
    .locals 3

    .line 152
    nop

    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->get_availablePermits$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 159
    .local v0, "p":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-le v0, v1, :cond_1

    .line 160
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->coerceAvailablePermitsAtMaximum()V

    .line 161
    goto :goto_0

    .line 165
    :cond_1
    if-gtz v0, :cond_2

    const/4 v1, 0x0

    return v1

    .line 166
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreImpl;->get_availablePermits$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1
.end method
