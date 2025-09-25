.class final Lkotlinx/coroutines/InvokeOnCancelling;
.super Lkotlinx/coroutines/JobCancellingNode;
.source "JobSupport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\t\u0010\u0005\u001a\u00020\u0006X\u0082\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/coroutines/InvokeOnCancelling;",
        "Lkotlinx/coroutines/JobCancellingNode;",
        "handler",
        "Lkotlinx/coroutines/InternalCompletionHandler;",
        "(Lkotlinx/coroutines/InternalCompletionHandler;)V",
        "_invoked",
        "Lkotlinx/atomicfu/AtomicInt;",
        "invoke",
        "",
        "cause",
        "",
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
.field private static final synthetic _invoked$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _invoked$volatile:I

.field private final handler:Lkotlinx/coroutines/InternalCompletionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/InvokeOnCancelling;

    const-string v1, "_invoked$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/InvokeOnCancelling;->_invoked$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/InternalCompletionHandler;)V
    .locals 0
    .param p1, "handler"    # Lkotlinx/coroutines/InternalCompletionHandler;

    .line 1434
    invoke-direct {p0}, Lkotlinx/coroutines/JobCancellingNode;-><init>()V

    .line 1433
    iput-object p1, p0, Lkotlinx/coroutines/InvokeOnCancelling;->handler:Lkotlinx/coroutines/InternalCompletionHandler;

    .line 1432
    return-void
.end method

.method private final synthetic get_invoked$volatile()I
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/InvokeOnCancelling;->_invoked$volatile:I

    return v0
.end method

.method private static final synthetic get_invoked$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/InvokeOnCancelling;->_invoked$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final synthetic set_invoked$volatile(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/InvokeOnCancelling;->_invoked$volatile:I

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1438
    invoke-static {}, Lkotlinx/coroutines/InvokeOnCancelling;->get_invoked$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/InvokeOnCancelling;->handler:Lkotlinx/coroutines/InternalCompletionHandler;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/InternalCompletionHandler;->invoke(Ljava/lang/Throwable;)V

    .line 1439
    :cond_0
    return-void
.end method
