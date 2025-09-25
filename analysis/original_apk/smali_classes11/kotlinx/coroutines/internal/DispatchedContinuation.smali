.class public final Lkotlinx/coroutines/internal/DispatchedContinuation;
.super Lkotlinx/coroutines/DispatchedTask;
.source "DispatchedContinuation.kt"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DispatchedTask<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,313:1\n239#1,8:377\n251#1:385\n252#1,2:396\n254#1:400\n1#2:314\n1#2:320\n1#2:361\n293#3,5:315\n298#3,12:321\n310#3:355\n293#3,5:356\n298#3,12:362\n310#3:415\n196#4,3:333\n199#4,14:341\n196#4,3:374\n199#4,14:401\n91#5,5:336\n103#5,10:386\n114#5,2:398\n103#5,13:416\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n220#1:377,8\n221#1:385\n221#1:396,2\n221#1:400\n198#1:320\n219#1:361\n198#1:315,5\n198#1:321,12\n198#1:355\n219#1:356,5\n219#1:362,12\n219#1:415\n198#1:333,3\n198#1:341,14\n219#1:374,3\n219#1:401,14\n199#1:336,5\n221#1:386,10\n221#1:398,2\n251#1:416,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u001b\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0002\u0010\tJ\r\u0010\u001f\u001a\u00020 H\u0000\u00a2\u0006\u0002\u0008!J\u001f\u0010\"\u001a\u00020 2\u0008\u0010#\u001a\u0004\u0018\u00010\u000c2\u0006\u0010$\u001a\u00020%H\u0010\u00a2\u0006\u0002\u0008&J\u0015\u0010\'\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001cH\u0000\u00a2\u0006\u0002\u0008(J\u001f\u0010)\u001a\u00020 2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010*\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008+\u0010,J\u0010\u0010-\u001a\n\u0018\u00010.j\u0004\u0018\u0001`/H\u0016J\r\u00100\u001a\u000201H\u0000\u00a2\u0006\u0002\u00082J\u0015\u00103\u001a\u0002012\u0006\u0010$\u001a\u00020%H\u0000\u00a2\u0006\u0002\u00084J\r\u00105\u001a\u00020 H\u0000\u00a2\u0006\u0002\u00086JE\u00107\u001a\u00020 2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00028\u0000092%\u0008\u0008\u0010:\u001a\u001f\u0012\u0013\u0012\u00110%\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020 \u0018\u00010;H\u0080\u0008\u00a2\u0006\u0004\u0008>\u0010?J\u0018\u0010@\u001a\u0002012\u0008\u0010A\u001a\u0004\u0018\u00010\u000cH\u0080\u0008\u00a2\u0006\u0002\u0008BJ\u001e\u0010C\u001a\u00020 2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00028\u000009H\u0080\u0008\u00a2\u0006\u0004\u0008D\u0010EJ\u001b\u0010F\u001a\u00020 2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00028\u000009H\u0016\u00a2\u0006\u0002\u0010EJ\u000f\u0010G\u001a\u0004\u0018\u00010\u000cH\u0010\u00a2\u0006\u0002\u0008HJ\u0008\u0010I\u001a\u00020JH\u0016J\u001b\u0010K\u001a\u0004\u0018\u00010%2\n\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030LH\u0000\u00a2\u0006\u0002\u0008MR\u0011\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bX\u0082\u0004R\u001a\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0014X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u000c8\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u0006\u001a\u00020\u00078\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006N"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/DispatchedContinuation;",
        "T",
        "Lkotlinx/coroutines/DispatchedTask;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "Lkotlin/coroutines/Continuation;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "continuation",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V",
        "_reusableCancellableContinuation",
        "Lkotlinx/atomicfu/AtomicRef;",
        "",
        "_state",
        "get_state$kotlinx_coroutines_core$annotations",
        "()V",
        "callerFrame",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "countOrElement",
        "delegate",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "reusableCancellableContinuation",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "getReusableCancellableContinuation",
        "()Lkotlinx/coroutines/CancellableContinuationImpl;",
        "awaitReusability",
        "",
        "awaitReusability$kotlinx_coroutines_core",
        "cancelCompletedResult",
        "takenState",
        "cause",
        "",
        "cancelCompletedResult$kotlinx_coroutines_core",
        "claimReusableCancellableContinuation",
        "claimReusableCancellableContinuation$kotlinx_coroutines_core",
        "dispatchYield",
        "value",
        "dispatchYield$kotlinx_coroutines_core",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V",
        "getStackTraceElement",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "isReusable",
        "",
        "isReusable$kotlinx_coroutines_core",
        "postponeCancellation",
        "postponeCancellation$kotlinx_coroutines_core",
        "release",
        "release$kotlinx_coroutines_core",
        "resumeCancellableWith",
        "result",
        "Lkotlin/Result;",
        "onCancellation",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "resumeCancellableWith$kotlinx_coroutines_core",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "resumeCancelled",
        "state",
        "resumeCancelled$kotlinx_coroutines_core",
        "resumeUndispatchedWith",
        "resumeUndispatchedWith$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)V",
        "resumeWith",
        "takeState",
        "takeState$kotlinx_coroutines_core",
        "toString",
        "",
        "tryReleaseClaimedContinuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "tryReleaseClaimedContinuation$kotlinx_coroutines_core",
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
.field private static final synthetic _reusableCancellableContinuation$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation$volatile:Ljava/lang/Object;

.field public _state:Ljava/lang/Object;

.field public final continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final countOrElement:Ljava/lang/Object;

.field public final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation$volatile"

    const-class v2, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .param p1, "dispatcher"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .param p2, "continuation"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .line 17
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    .line 14
    iput-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    iput-object p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .line 20
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .line 13
    return-void
.end method

.method private final getReusableCancellableContinuation()Lkotlinx/coroutines/CancellableContinuationImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CancellableContinuationImpl<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final synthetic get_reusableCancellableContinuation$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static synthetic get_state$kotlinx_coroutines_core$annotations()V
    .locals 0

    return-void
.end method

.method private final synthetic loop$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final synthetic set_reusableCancellableContinuation$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final awaitReusability$kotlinx_coroutines_core()V
    .locals 5

    .line 73
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "it":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 75
    .local v3, "$i$a$-loop$atomicfu-DispatchedContinuation$awaitReusability$1":I
    sget-object v4, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v4, :cond_0

    return-void

    .line 76
    :cond_0
    nop

    .end local v2    # "it":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop$atomicfu-DispatchedContinuation$awaitReusability$1":I
    goto :goto_0
.end method

.method public cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "takenState"    # Ljava/lang/Object;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 231
    instance-of v0, p1, Lkotlinx/coroutines/CompletedWithCancellation;

    if-eqz v0, :cond_0

    .line 232
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CompletedWithCancellation;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedWithCancellation;->onCancellation:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    return-void
.end method

.method public final claimReusableCancellableContinuation$kotlinx_coroutines_core()Lkotlinx/coroutines/CancellableContinuationImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CancellableContinuationImpl<",
            "TT;>;"
        }
    .end annotation

    .line 93
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 101
    .local v3, "$i$a$-loop$atomicfu-DispatchedContinuation$claimReusableCancellableContinuation$1":I
    nop

    .line 102
    if-nez v2, :cond_0

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    .line 107
    sget-object v5, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v4, p0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    const/4 v4, 0x0

    return-object v4

    .line 111
    :cond_0
    instance-of v4, v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz v4, :cond_1

    .line 112
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v4, p0, v2, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 113
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    return-object v4

    .line 116
    :cond_1
    sget-object v4, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v4, :cond_3

    .line 120
    instance-of v4, v2, Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    :cond_3
    :goto_1
    nop

    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop$atomicfu-DispatchedContinuation$claimReusableCancellableContinuation$1":I
    goto :goto_0
.end method

.method public final dispatchYield$kotlinx_coroutines_core(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "TT;)V"
        }
    .end annotation

    .line 258
    iput-object p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 260
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2

    .line 21
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 188
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isReusable$kotlinx_coroutines_core()Z
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final postponeCancellation$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 163
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 165
    .local v3, "$i$a$-loop$atomicfu-DispatchedContinuation$postponeCancellation$1":I
    nop

    .line 166
    sget-object v4, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 167
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    sget-object v6, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v4, p0, v6, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    return v5

    .line 170
    :cond_0
    instance-of v4, v2, Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    return v5

    .line 173
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p0, v2, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    const/4 v4, 0x0

    return v4

    .line 177
    :cond_2
    nop

    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop$atomicfu-DispatchedContinuation$postponeCancellation$1":I
    goto :goto_0
.end method

.method public final release$kotlinx_coroutines_core()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->awaitReusability$kotlinx_coroutines_core()V

    .line 86
    invoke-direct {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getReusableCancellableContinuation()Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    .line 87
    :cond_0
    return-void
.end method

.method public final resumeCancellableWith$kotlinx_coroutines_core(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 22
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 213
    .local v2, "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    invoke-static/range {p1 .. p2}, Lkotlinx/coroutines/CompletionStateKt;->toState(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    .line 214
    .local v3, "state":Ljava/lang/Object;
    iget-object v0, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 215
    iput-object v3, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 216
    iput v4, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 217
    iget-object v0, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v5}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    move/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v3, p1

    goto/16 :goto_7

    .line 219
    :cond_0
    const/4 v5, 0x1

    .local v5, "mode$iv":I
    move-object/from16 v6, p0

    .line 356
    .local v6, "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    nop

    .line 357
    const/4 v7, 0x0

    .line 356
    .local v7, "doYield$iv":Z
    const/4 v8, 0x0

    .line 360
    .local v8, "$i$f$executeUnconfined":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const/4 v0, 0x0

    .line 360
    .local v0, "$i$a$-assert-DispatchedContinuationKt$executeUnconfined$1$iv":I
    nop

    .line 362
    .end local v0    # "$i$a$-assert-DispatchedContinuationKt$executeUnconfined$1$iv":I
    :cond_1
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    move-result-object v9

    .line 364
    .local v9, "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    nop

    .line 365
    invoke-virtual {v9}, Lkotlinx/coroutines/EventLoop;->isUnconfinedLoopActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    iput-object v3, v6, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 368
    iput v5, v6, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 369
    move-object v0, v6

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    invoke-virtual {v9, v0}, Lkotlinx/coroutines/EventLoop;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    .line 370
    move/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v3, p1

    goto/16 :goto_6

    .line 373
    :cond_2
    move-object v10, v6

    check-cast v10, Lkotlinx/coroutines/DispatchedTask;

    .local v10, "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    const/4 v11, 0x0

    .line 374
    .local v11, "$i$f$runUnconfinedEventLoop":I
    invoke-virtual {v9, v4}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    .line 375
    nop

    .line 376
    const/4 v12, 0x0

    .line 220
    .local v12, "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeCancellableWith$1":I
    move-object/from16 v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    const/4 v13, 0x0

    .line 377
    .local v13, "$i$f$resumeCancelled$kotlinx_coroutines_core":I
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v15

    sget-object v16, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    move-object/from16 v14, v16

    check-cast v14, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v15, v14}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v14

    check-cast v14, Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 378
    .local v14, "job$iv":Lkotlinx/coroutines/Job;
    if-eqz v14, :cond_3

    :try_start_1
    invoke-interface {v14}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v15

    if-nez v15, :cond_3

    .line 379
    invoke-interface {v14}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v15

    .line 380
    .local v15, "cause$iv":Ljava/util/concurrent/CancellationException;
    move-object v4, v15

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4}, Lkotlinx/coroutines/internal/DispatchedContinuation;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 381
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    sget-object v17, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v17, v15

    check-cast v17, Ljava/lang/Throwable;

    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .local v18, "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    invoke-static/range {v17 .. v17}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    const/4 v0, 0x1

    goto :goto_0

    .line 405
    .end local v12    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeCancellableWith$1":I
    .end local v13    # "$i$f$resumeCancelled$kotlinx_coroutines_core":I
    .end local v14    # "job$iv":Lkotlinx/coroutines/Job;
    .end local v15    # "cause$iv":Ljava/util/concurrent/CancellationException;
    .end local v18    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :catchall_0
    move-exception v0

    move/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 378
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v12    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeCancellableWith$1":I
    .restart local v13    # "$i$f$resumeCancelled$kotlinx_coroutines_core":I
    .restart local v14    # "job$iv":Lkotlinx/coroutines/Job;
    :cond_3
    move-object/from16 v18, v0

    .line 384
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v18    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    const/4 v0, 0x0

    .line 220
    .end local v13    # "$i$f$resumeCancelled$kotlinx_coroutines_core":I
    .end local v14    # "job$iv":Lkotlinx/coroutines/Job;
    .end local v18    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_0
    if-nez v0, :cond_9

    .line 221
    move-object/from16 v4, p0

    .local v4, "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    const/4 v13, 0x0

    .line 385
    .local v13, "$i$f$resumeUndispatchedWith$kotlinx_coroutines_core":I
    :try_start_2
    iget-object v0, v4, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    iget-object v14, v4, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .local v14, "countOrElement$iv$iv":Ljava/lang/Object;
    move-object v15, v0

    .local v15, "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    const/16 v17, 0x0

    .line 386
    .local v17, "$i$f$withContinuationContext":I
    invoke-interface {v15}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    move-object/from16 v18, v0

    .line 387
    .local v18, "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    move-object/from16 v1, v18

    .end local v18    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .local v1, "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    invoke-static {v1, v14}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    .line 388
    .local v18, "oldValue$iv$iv":Ljava/lang/Object;
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move/from16 v19, v2

    move-object/from16 v2, v18

    .end local v18    # "oldValue$iv$iv":Ljava/lang/Object;
    .local v2, "oldValue$iv$iv":Ljava/lang/Object;
    .local v19, "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    if-eq v2, v0, :cond_4

    .line 390
    :try_start_3
    invoke-static {v15, v1, v2}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 405
    .end local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    .end local v4    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .end local v12    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeCancellableWith$1":I
    .end local v13    # "$i$f$resumeUndispatchedWith$kotlinx_coroutines_core":I
    .end local v14    # "countOrElement$iv$iv":Ljava/lang/Object;
    .end local v15    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v17    # "$i$f$withContinuationContext":I
    :catchall_1
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 392
    .restart local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    .restart local v4    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v12    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeCancellableWith$1":I
    .restart local v13    # "$i$f$resumeUndispatchedWith$kotlinx_coroutines_core":I
    .restart local v14    # "countOrElement$iv$iv":Ljava/lang/Object;
    .restart local v15    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .restart local v17    # "$i$f$withContinuationContext":I
    :cond_4
    const/4 v0, 0x0

    .line 388
    :goto_1
    move-object/from16 v18, v0

    .line 394
    .local v18, "undispatchedCompletion$iv$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    nop

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "$i$a$-withContinuationContext-DispatchedContinuation$resumeUndispatchedWith$1$iv":I
    move/from16 v20, v0

    .end local v0    # "$i$a$-withContinuationContext-DispatchedContinuation$resumeUndispatchedWith$1$iv":I
    .local v20, "$i$a$-withContinuationContext-DispatchedContinuation$resumeUndispatchedWith$1$iv":I
    :try_start_4
    iget-object v0, v4, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v21, v3

    move-object/from16 v3, p1

    .end local v3    # "state":Ljava/lang/Object;
    .local v21, "state":Ljava/lang/Object;
    :try_start_5
    invoke-interface {v0, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 397
    nop

    .end local v20    # "$i$a$-withContinuationContext-DispatchedContinuation$resumeUndispatchedWith$1$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 395
    const/16 v16, 0x1

    :try_start_6
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 398
    if-eqz v18, :cond_5

    invoke-virtual/range {v18 .. v18}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 399
    :cond_5
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_6
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 395
    nop

    .line 400
    .end local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    .end local v14    # "countOrElement$iv$iv":Ljava/lang/Object;
    .end local v15    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v17    # "$i$f$withContinuationContext":I
    .end local v18    # "undispatchedCompletion$iv$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    goto :goto_3

    .line 398
    .restart local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    .restart local v14    # "countOrElement$iv$iv":Ljava/lang/Object;
    .restart local v15    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .restart local v17    # "$i$f$withContinuationContext":I
    .restart local v18    # "undispatchedCompletion$iv$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    :catchall_2
    move-exception v0

    goto :goto_2

    .end local v21    # "state":Ljava/lang/Object;
    .restart local v3    # "state":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v3, p1

    .end local v3    # "state":Ljava/lang/Object;
    .restart local v21    # "state":Ljava/lang/Object;
    :goto_2
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 399
    :cond_7
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_8
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v5    # "mode$iv":I
    .end local v6    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .end local v7    # "doYield$iv":Z
    .end local v8    # "$i$f$executeUnconfined":I
    .end local v9    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .end local v10    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v11    # "$i$f$runUnconfinedEventLoop":I
    .end local v19    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .end local v21    # "state":Ljava/lang/Object;
    .end local p1    # "result":Ljava/lang/Object;
    .end local p2    # "onCancellation":Lkotlin/jvm/functions/Function1;
    throw v0

    .line 220
    .end local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v4    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .end local v13    # "$i$f$resumeUndispatchedWith$kotlinx_coroutines_core":I
    .end local v14    # "countOrElement$iv$iv":Ljava/lang/Object;
    .end local v15    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v17    # "$i$f$withContinuationContext":I
    .end local v18    # "undispatchedCompletion$iv$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    .local v2, "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .restart local v3    # "state":Ljava/lang/Object;
    .restart local v5    # "mode$iv":I
    .restart local v6    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v7    # "doYield$iv":Z
    .restart local v8    # "$i$f$executeUnconfined":I
    .restart local v9    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v10    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v11    # "$i$f$runUnconfinedEventLoop":I
    .restart local p1    # "result":Ljava/lang/Object;
    .restart local p2    # "onCancellation":Lkotlin/jvm/functions/Function1;
    :cond_9
    move/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v3, p1

    .line 223
    .end local v2    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .end local v3    # "state":Ljava/lang/Object;
    .restart local v19    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .restart local v21    # "state":Ljava/lang/Object;
    :goto_3
    nop

    .line 376
    .end local v12    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeCancellableWith$1":I
    nop

    .line 401
    :cond_a
    nop

    .line 403
    invoke-virtual {v9}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v0, :cond_a

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    goto :goto_5

    .line 405
    :catchall_4
    move-exception v0

    goto :goto_4

    .end local v19    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .end local v21    # "state":Ljava/lang/Object;
    .restart local v2    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .restart local v3    # "state":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v3, p1

    .line 410
    .end local v2    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .end local v3    # "state":Ljava/lang/Object;
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    .restart local v19    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .restart local v21    # "state":Ljava/lang/Object;
    :goto_4
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v10, v0, v1}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    const/4 v1, 0x1

    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 412
    :goto_5
    invoke-virtual {v9, v1}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 413
    nop

    .line 414
    nop

    .line 415
    .end local v10    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v11    # "$i$f$runUnconfinedEventLoop":I
    nop

    .line 365
    :goto_6
    nop

    .line 225
    .end local v5    # "mode$iv":I
    .end local v6    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .end local v7    # "doYield$iv":Z
    .end local v8    # "$i$f$executeUnconfined":I
    .end local v9    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    :goto_7
    return-void

    .line 412
    .restart local v5    # "mode$iv":I
    .restart local v6    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v7    # "doYield$iv":Z
    .restart local v8    # "$i$f$executeUnconfined":I
    .restart local v9    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v10    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v11    # "$i$f$runUnconfinedEventLoop":I
    :catchall_6
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v9, v2}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1
.end method

.method public final resumeCancelled$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "state"    # Ljava/lang/Object;

    const/4 v0, 0x0

    .line 239
    .local v0, "$i$f$resumeCancelled$kotlinx_coroutines_core":I
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    .line 240
    .local v1, "job":Lkotlinx/coroutines/Job;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v2

    .line 242
    .local v2, "cause":Ljava/util/concurrent/CancellationException;
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/internal/DispatchedContinuation;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 243
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 244
    const/4 v3, 0x1

    return v3

    .line 246
    .end local v2    # "cause":Ljava/util/concurrent/CancellationException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public final resumeUndispatchedWith$kotlinx_coroutines_core(Ljava/lang/Object;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Object;

    const/4 v0, 0x0

    .line 251
    .local v0, "$i$f$resumeUndispatchedWith$kotlinx_coroutines_core":I
    iget-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .local v1, "continuation$iv":Lkotlin/coroutines/Continuation;
    iget-object v2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .local v2, "countOrElement$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 416
    .local v3, "$i$f$withContinuationContext":I
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 417
    .local v4, "context$iv":Lkotlin/coroutines/CoroutineContext;
    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 418
    .local v5, "oldValue$iv":Ljava/lang/Object;
    sget-object v6, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    if-eq v5, v6, :cond_0

    .line 420
    invoke-static {v1, v4, v5}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object v6

    goto :goto_0

    .line 422
    :cond_0
    const/4 v6, 0x0

    .line 418
    :goto_0
    nop

    .line 424
    .local v6, "undispatchedCompletion$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    nop

    .line 425
    const/4 v7, 0x0

    .line 252
    .local v7, "$i$a$-withContinuationContext-DispatchedContinuation$resumeUndispatchedWith$1":I
    const/4 v8, 0x1

    :try_start_0
    iget-object v9, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v9, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 253
    nop

    .end local v7    # "$i$a$-withContinuationContext-DispatchedContinuation$resumeUndispatchedWith$1":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 427
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 428
    :cond_1
    invoke-static {v4, v5}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_2
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 425
    nop

    .line 254
    .end local v1    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "countOrElement$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$withContinuationContext":I
    .end local v4    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v5    # "oldValue$iv":Ljava/lang/Object;
    .end local v6    # "undispatchedCompletion$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    return-void

    .line 427
    .restart local v1    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .restart local v2    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$withContinuationContext":I
    .restart local v4    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v5    # "oldValue$iv":Ljava/lang/Object;
    .restart local v6    # "undispatchedCompletion$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    :catchall_0
    move-exception v7

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 428
    :cond_3
    invoke-static {v4, v5}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_4
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v7
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 18
    .param p1, "result"    # Ljava/lang/Object;

    .line 191
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 192
    .local v3, "context":Lkotlin/coroutines/CoroutineContext;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v4}, Lkotlinx/coroutines/CompletionStateKt;->toState$default(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 193
    .local v6, "state":Ljava/lang/Object;
    iget-object v0, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iput-object v6, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 195
    const/4 v0, 0x0

    iput v0, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 196
    iget-object v0, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v4, v1

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v4}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 198
    :cond_0
    const/4 v0, 0x0

    .local v0, "mode$iv":I
    move-object/from16 v7, p0

    .local v7, "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    move v8, v0

    .line 315
    .end local v0    # "mode$iv":I
    .local v8, "mode$iv":I
    nop

    .line 316
    const/4 v9, 0x0

    .line 315
    .local v9, "doYield$iv":Z
    const/4 v10, 0x0

    .line 319
    .local v10, "$i$f$executeUnconfined":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const/4 v0, 0x0

    .line 319
    .local v0, "$i$a$-assert-DispatchedContinuationKt$executeUnconfined$1$iv":I
    nop

    .line 321
    .end local v0    # "$i$a$-assert-DispatchedContinuationKt$executeUnconfined$1$iv":I
    :cond_1
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    move-result-object v11

    .line 323
    .local v11, "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    nop

    .line 324
    invoke-virtual {v11}, Lkotlinx/coroutines/EventLoop;->isUnconfinedLoopActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iput-object v6, v7, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 327
    iput v8, v7, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 328
    move-object v0, v7

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    invoke-virtual {v11, v0}, Lkotlinx/coroutines/EventLoop;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    .line 329
    goto :goto_1

    .line 332
    :cond_2
    move-object v12, v7

    check-cast v12, Lkotlinx/coroutines/DispatchedTask;

    .local v12, "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    const/4 v13, 0x0

    .line 333
    .local v13, "$i$f$runUnconfinedEventLoop":I
    invoke-virtual {v11, v5}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    .line 334
    nop

    .line 335
    const/4 v14, 0x0

    .line 199
    .local v14, "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeWith$1":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v15, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .local v15, "countOrElement$iv":Ljava/lang/Object;
    move-object/from16 v16, v0

    .local v16, "context$iv":Lkotlin/coroutines/CoroutineContext;
    const/16 v17, 0x0

    .line 336
    .local v17, "$i$f$withCoroutineContext":I
    move-object/from16 v4, v16

    .end local v16    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .local v4, "context$iv":Lkotlin/coroutines/CoroutineContext;
    invoke-static {v4, v15}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v0

    .line 337
    .local v16, "oldValue$iv":Ljava/lang/Object;
    nop

    .line 338
    const/4 v0, 0x0

    .line 200
    .local v0, "$i$a$-withCoroutineContext-DispatchedContinuation$resumeWith$1$1":I
    :try_start_1
    iget-object v5, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v5, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 201
    nop

    .end local v0    # "$i$a$-withCoroutineContext-DispatchedContinuation$resumeWith$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    nop

    .line 340
    move-object/from16 v5, v16

    .end local v16    # "oldValue$iv":Ljava/lang/Object;
    .local v5, "oldValue$iv":Ljava/lang/Object;
    :try_start_2
    invoke-static {v4, v5}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 338
    nop

    .line 202
    .end local v4    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v5    # "oldValue$iv":Ljava/lang/Object;
    .end local v15    # "countOrElement$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$withCoroutineContext":I
    nop

    .line 335
    .end local v14    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeWith$1":I
    nop

    .line 341
    :cond_3
    nop

    .line 343
    invoke-virtual {v11}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 340
    .restart local v4    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v14    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeWith$1":I
    .restart local v15    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v16    # "oldValue$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$withCoroutineContext":I
    :catchall_0
    move-exception v0

    move-object/from16 v5, v16

    .end local v16    # "oldValue$iv":Ljava/lang/Object;
    .restart local v5    # "oldValue$iv":Ljava/lang/Object;
    invoke-static {v4, v5}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .end local v3    # "context":Lkotlin/coroutines/CoroutineContext;
    .end local v6    # "state":Ljava/lang/Object;
    .end local v7    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .end local v8    # "mode$iv":I
    .end local v9    # "doYield$iv":Z
    .end local v10    # "$i$f$executeUnconfined":I
    .end local v11    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .end local v12    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v13    # "$i$f$runUnconfinedEventLoop":I
    .end local p1    # "result":Ljava/lang/Object;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 345
    .end local v4    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v5    # "oldValue$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeWith$1":I
    .end local v15    # "countOrElement$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$withCoroutineContext":I
    .restart local v3    # "context":Lkotlin/coroutines/CoroutineContext;
    .restart local v6    # "state":Ljava/lang/Object;
    .restart local v7    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v8    # "mode$iv":I
    .restart local v9    # "doYield$iv":Z
    .restart local v10    # "$i$f$executeUnconfined":I
    .restart local v11    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v12    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v13    # "$i$f$runUnconfinedEventLoop":I
    .restart local p1    # "result":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .line 350
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v12, v0, v4}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 352
    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    .line 353
    nop

    .line 354
    nop

    .line 355
    .end local v12    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v13    # "$i$f$runUnconfinedEventLoop":I
    nop

    .line 324
    :goto_1
    nop

    .line 204
    .end local v7    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .end local v8    # "mode$iv":I
    .end local v9    # "doYield$iv":Z
    .end local v10    # "$i$f$executeUnconfined":I
    .end local v11    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    :goto_2
    return-void

    .line 352
    .restart local v7    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v8    # "mode$iv":I
    .restart local v9    # "doYield$iv":Z
    .restart local v10    # "$i$f$executeUnconfined":I
    .restart local v11    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v12    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v13    # "$i$f$runUnconfinedEventLoop":I
    :catchall_2
    move-exception v0

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    throw v4
.end method

.method public takeState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 3

    .line 181
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 182
    .local v0, "state":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    const/4 v1, 0x0

    .line 182
    .local v1, "$i$a$-assert-DispatchedContinuation$takeState$1":I
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .end local v1    # "$i$a$-assert-DispatchedContinuation$takeState$1":I
    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 183
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 184
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->toDebugString(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryReleaseClaimedContinuation$kotlinx_coroutines_core(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;
    .locals 7
    .param p1, "continuation"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 143
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 146
    .local v3, "$i$a$-loop$atomicfu-DispatchedContinuation$tryReleaseClaimedContinuation$1":I
    nop

    .line 147
    sget-object v4, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 148
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    sget-object v6, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v4, p0, v6, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v5

    .line 156
    :cond_0
    nop

    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop$atomicfu-DispatchedContinuation$tryReleaseClaimedContinuation$1":I
    goto :goto_0

    .line 150
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop$atomicfu-DispatchedContinuation$tryReleaseClaimedContinuation$1":I
    :cond_1
    instance-of v4, v2, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    .line 151
    invoke-static {v4, p0, v2, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    return-object v4

    .line 151
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Failed requirement."

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
