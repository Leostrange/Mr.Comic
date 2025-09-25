.class public Lkotlinx/coroutines/CancellableContinuationImpl;
.super Lkotlinx/coroutines/DispatchedTask;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlinx/coroutines/CancellableContinuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
.implements Lkotlinx/coroutines/Waiter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DispatchedTask<",
        "TT;>;",
        "Lkotlinx/coroutines/CancellableContinuation<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/Waiter;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImplKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,681:1\n226#1,10:685\n226#1,10:695\n226#1,10:706\n1#2:682\n20#3:683\n20#3:684\n18#3:705\n17#3:716\n18#3,3:717\n17#3:720\n18#3,3:721\n18#3:728\n17#3,4:729\n57#4,2:724\n57#4,2:726\n57#4,2:733\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n242#1:685,10\n245#1:695,10\n250#1:706,10\n68#1:683\n154#1:684\n248#1:705\n273#1:716\n274#1:717,3\n283#1:720\n284#1:721,3\n385#1:728\n388#1:729,4\n325#1:724,2\n335#1:726,2\n605#1:733,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d2\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0011\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u00060\u0004j\u0002`\u00052\u00020\u0006B\u001b\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0012\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010\u0012H\u0002J\u0018\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u000103J\u001a\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002042\u0008\u00102\u001a\u0004\u0018\u000103H\u0002J\u0017\u00105\u001a\u00020/2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020/07H\u0082\u0008J1\u00108\u001a\u00020/2!\u00109\u001a\u001d\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/0:2\u0006\u00102\u001a\u000203J\u001e\u0010=\u001a\u00020/2\n\u0010>\u001a\u0006\u0012\u0002\u0008\u00030?2\u0008\u00102\u001a\u0004\u0018\u000103H\u0002J\u0012\u0010@\u001a\u00020\u001d2\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J\u001f\u0010A\u001a\u00020/2\u0008\u0010B\u001a\u0004\u0018\u00010\u00122\u0006\u00102\u001a\u000203H\u0010\u00a2\u0006\u0002\u0008CJ\u0010\u0010D\u001a\u00020\u001d2\u0006\u00102\u001a\u000203H\u0002J\u0010\u0010E\u001a\u00020/2\u0006\u0010F\u001a\u00020\u0012H\u0016J\r\u0010G\u001a\u00020/H\u0000\u00a2\u0006\u0002\u0008HJ\u0008\u0010I\u001a\u00020/H\u0002J\u0010\u0010J\u001a\u00020/2\u0006\u0010K\u001a\u00020\nH\u0002J\u0010\u0010L\u001a\u0002032\u0006\u0010M\u001a\u00020NH\u0016J\u0019\u0010O\u001a\u0004\u0018\u0001032\u0008\u0010$\u001a\u0004\u0018\u00010\u0012H\u0010\u00a2\u0006\u0002\u0008PJ\n\u0010Q\u001a\u0004\u0018\u00010\u0012H\u0001J\u0010\u0010R\u001a\n\u0018\u00010Sj\u0004\u0018\u0001`TH\u0016J\u001f\u0010U\u001a\u0002H\u0001\"\u0004\u0008\u0001\u0010\u00012\u0008\u0010$\u001a\u0004\u0018\u00010\u0012H\u0010\u00a2\u0006\u0004\u0008V\u0010WJ\u0008\u0010X\u001a\u00020/H\u0016J\n\u0010Y\u001a\u0004\u0018\u00010\u0010H\u0002J1\u0010Z\u001a\u00020/2\'\u00100\u001a#\u0012\u0015\u0012\u0013\u0018\u000103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/0:j\u0002`[H\u0016J\u001c\u0010Z\u001a\u00020/2\n\u0010>\u001a\u0006\u0012\u0002\u0008\u00030?2\u0006\u0010\\\u001a\u00020\nH\u0016J\u0010\u0010]\u001a\u00020/2\u0006\u00100\u001a\u00020\u0012H\u0002J\u0015\u0010^\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0000\u00a2\u0006\u0002\u0008_J\u0008\u0010`\u001a\u00020\u001dH\u0002J\u001a\u0010a\u001a\u00020/2\u0006\u00100\u001a\u00020\u00122\u0008\u0010$\u001a\u0004\u0018\u00010\u0012H\u0002J\u0008\u0010b\u001a\u00020(H\u0014J\u0015\u0010c\u001a\u00020/2\u0006\u00102\u001a\u000203H\u0000\u00a2\u0006\u0002\u0008dJ\r\u0010e\u001a\u00020/H\u0000\u00a2\u0006\u0002\u0008fJ\u0008\u0010g\u001a\u00020\u001dH\u0001J:\u0010h\u001a\u00020/2\u0006\u0010i\u001a\u00028\u00002#\u00109\u001a\u001f\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/\u0018\u00010:H\u0016\u00a2\u0006\u0002\u0010jJA\u0010k\u001a\u00020/2\u0008\u0010-\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\n2%\u0008\u0002\u00109\u001a\u001f\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/\u0018\u00010:H\u0002J\u001b\u0010l\u001a\u00020/2\u000c\u0010m\u001a\u0008\u0012\u0004\u0012\u00028\u00000nH\u0016\u00a2\u0006\u0002\u0010oJS\u0010p\u001a\u0004\u0018\u00010\u00122\u0006\u0010$\u001a\u00020q2\u0008\u0010-\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\n2#\u00109\u001a\u001f\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/\u0018\u00010:2\u0008\u0010r\u001a\u0004\u0018\u00010\u0012H\u0002J\u000f\u0010s\u001a\u0004\u0018\u00010\u0012H\u0010\u00a2\u0006\u0002\u0008tJ\u0008\u0010u\u001a\u00020(H\u0016J\u0008\u0010v\u001a\u00020\u001dH\u0002J!\u0010v\u001a\u0004\u0018\u00010\u00122\u0006\u0010i\u001a\u00028\u00002\u0008\u0010r\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010wJF\u0010v\u001a\u0004\u0018\u00010\u00122\u0006\u0010i\u001a\u00028\u00002\u0008\u0010r\u001a\u0004\u0018\u00010\u00122#\u00109\u001a\u001f\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/\u0018\u00010:H\u0016\u00a2\u0006\u0002\u0010xJC\u0010y\u001a\u0004\u0018\u00010z2\u0008\u0010-\u001a\u0004\u0018\u00010\u00122\u0008\u0010r\u001a\u0004\u0018\u00010\u00122#\u00109\u001a\u001f\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020/\u0018\u00010:H\u0002J\u0012\u0010{\u001a\u0004\u0018\u00010\u00122\u0006\u0010|\u001a\u000203H\u0016J\u0008\u0010}\u001a\u00020\u001dH\u0002J\u001a\u0010~\u001a\u00020/*\u00020\u007f2\u0006\u0010i\u001a\u00028\u0000H\u0016\u00a2\u0006\u0003\u0010\u0080\u0001J\u0015\u0010\u0081\u0001\u001a\u00020/*\u00020\u007f2\u0006\u0010|\u001a\u000203H\u0016R\t\u0010\u000c\u001a\u00020\rX\u0082\u0004R\u0011\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0082\u0004R\u0011\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000fX\u0082\u0004R\u001c\u0010\u0013\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001eR\u0014\u0010 \u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001eR\u0016\u0010!\u001a\u0004\u0018\u00010\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0016\u0010$\u001a\u0004\u0018\u00010\u00128@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020(8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*\u00a8\u0006\u0082\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "T",
        "Lkotlinx/coroutines/DispatchedTask;",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/Waiter;",
        "delegate",
        "Lkotlin/coroutines/Continuation;",
        "resumeMode",
        "",
        "(Lkotlin/coroutines/Continuation;I)V",
        "_decisionAndIndex",
        "Lkotlinx/atomicfu/AtomicInt;",
        "_parentHandle",
        "Lkotlinx/atomicfu/AtomicRef;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "_state",
        "",
        "callerFrame",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "isActive",
        "",
        "()Z",
        "isCancelled",
        "isCompleted",
        "parentHandle",
        "getParentHandle",
        "()Lkotlinx/coroutines/DisposableHandle;",
        "state",
        "getState$kotlinx_coroutines_core",
        "()Ljava/lang/Object;",
        "stateDebugRepresentation",
        "",
        "getStateDebugRepresentation",
        "()Ljava/lang/String;",
        "alreadyResumedError",
        "",
        "proposedUpdate",
        "callCancelHandler",
        "",
        "handler",
        "Lkotlinx/coroutines/CancelHandler;",
        "cause",
        "",
        "Lkotlinx/coroutines/InternalCompletionHandler;",
        "callCancelHandlerSafely",
        "block",
        "Lkotlin/Function0;",
        "callOnCancellation",
        "onCancellation",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "callSegmentOnCancellation",
        "segment",
        "Lkotlinx/coroutines/internal/Segment;",
        "cancel",
        "cancelCompletedResult",
        "takenState",
        "cancelCompletedResult$kotlinx_coroutines_core",
        "cancelLater",
        "completeResume",
        "token",
        "detachChild",
        "detachChild$kotlinx_coroutines_core",
        "detachChildIfNonResuable",
        "dispatchResume",
        "mode",
        "getContinuationCancellationCause",
        "parent",
        "Lkotlinx/coroutines/Job;",
        "getExceptionalResult",
        "getExceptionalResult$kotlinx_coroutines_core",
        "getResult",
        "getStackTraceElement",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "getSuccessfulResult",
        "getSuccessfulResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "initCancellability",
        "installParentHandle",
        "invokeOnCancellation",
        "Lkotlinx/coroutines/CompletionHandler;",
        "index",
        "invokeOnCancellationImpl",
        "invokeOnCancellationInternal",
        "invokeOnCancellationInternal$kotlinx_coroutines_core",
        "isReusable",
        "multipleHandlersError",
        "nameString",
        "parentCancelled",
        "parentCancelled$kotlinx_coroutines_core",
        "releaseClaimedReusableContinuation",
        "releaseClaimedReusableContinuation$kotlinx_coroutines_core",
        "resetStateReusable",
        "resume",
        "value",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "resumeImpl",
        "resumeWith",
        "result",
        "Lkotlin/Result;",
        "(Ljava/lang/Object;)V",
        "resumedState",
        "Lkotlinx/coroutines/NotCompleted;",
        "idempotent",
        "takeState",
        "takeState$kotlinx_coroutines_core",
        "toString",
        "tryResume",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "tryResumeImpl",
        "Lkotlinx/coroutines/internal/Symbol;",
        "tryResumeWithException",
        "exception",
        "trySuspend",
        "resumeUndispatched",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V",
        "resumeUndispatchedWithException",
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
.field private static final synthetic _decisionAndIndex$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic _parentHandle$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decisionAndIndex$volatile:I

.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private final delegate:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_decisionAndIndex$volatile"

    const-class v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "_state$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "_parentHandle$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;I)V
    .locals 4
    .param p1, "delegate"    # Lkotlin/coroutines/Continuation;
    .param p2, "resumeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p2}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    .line 30
    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 33
    nop

    .line 34
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    const/4 v0, 0x0

    .line 34
    .local v0, "$i$a$-assert-CancellableContinuationImpl$1":I
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-CancellableContinuationImpl$1":I
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_2
    :goto_1
    nop

    .line 37
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 68
    const/4 v0, 0x0

    .local v0, "decision$iv":I
    const v1, 0x1fffffff

    .local v1, "index$iv":I
    const/4 v2, 0x0

    .line 683
    .local v2, "$i$f$decisionAndIndex":I
    shl-int/lit8 v3, v0, 0x1d

    add-int/2addr v3, v1

    .line 68
    .end local v0    # "decision$iv":I
    .end local v1    # "index$iv":I
    .end local v2    # "$i$f$decisionAndIndex":I
    iput v3, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex$volatile:I

    .line 79
    sget-object v0, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$volatile:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private final alreadyResumedError(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3
    .param p1, "proposedUpdate"    # Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already resumed, but proposed with update "

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

.method private final callCancelHandler(Lkotlinx/coroutines/InternalCompletionHandler;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "handler"    # Lkotlinx/coroutines/InternalCompletionHandler;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 242
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 685
    .local v1, "$i$f$callCancelHandlerSafely":I
    nop

    .line 686
    const/4 v2, 0x0

    .line 242
    .local v2, "$i$a$-callCancelHandlerSafely-CancellableContinuationImpl$callCancelHandler$1":I
    :try_start_0
    invoke-interface {p1, p2}, Lkotlinx/coroutines/InternalCompletionHandler;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    .end local v2    # "$i$a$-callCancelHandlerSafely-CancellableContinuationImpl$callCancelHandler$1":I
    goto :goto_0

    .line 687
    :catchall_0
    move-exception v2

    .line 690
    .local v2, "ex$iv":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 691
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 689
    invoke-static {v3, v4}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 694
    .end local v2    # "ex$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 242
    .end local v0    # "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v1    # "$i$f$callCancelHandlerSafely":I
    return-void
.end method

.method private final callCancelHandlerSafely(Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 226
    .local v0, "$i$f$callCancelHandlerSafely":I
    nop

    .line 227
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v1

    .line 231
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 232
    new-instance v3, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 230
    invoke-static {v2, v3}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 235
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private final callSegmentOnCancellation(Lkotlinx/coroutines/internal/Segment;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "segment"    # Lkotlinx/coroutines/internal/Segment;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/Segment<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_decisionAndIndex$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .local v0, "$this$index$iv":I
    const/4 v1, 0x0

    .line 705
    .local v1, "$i$f$getIndex":I
    const v2, 0x1fffffff

    and-int/2addr v0, v2

    .line 248
    .end local v0    # "$this$index$iv":I
    .end local v1    # "$i$f$getIndex":I
    nop

    .line 249
    .local v0, "index":I
    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 250
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v2, 0x0

    .line 706
    .local v2, "$i$f$callCancelHandlerSafely":I
    nop

    .line 707
    const/4 v3, 0x0

    .line 250
    .local v3, "$i$a$-callCancelHandlerSafely-CancellableContinuationImpl$callSegmentOnCancellation$2":I
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {p1, v0, p2, v4}, Lkotlinx/coroutines/internal/Segment;->onCancellation(ILjava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    .end local v3    # "$i$a$-callCancelHandlerSafely-CancellableContinuationImpl$callSegmentOnCancellation$2":I
    goto :goto_1

    .line 708
    :catchall_0
    move-exception v3

    .line 711
    .local v3, "ex$iv":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 712
    new-instance v5, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v5, Ljava/lang/Throwable;

    .line 710
    invoke-static {v4, v5}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 715
    .end local v3    # "ex$iv":Ljava/lang/Throwable;
    :goto_1
    nop

    .line 251
    .end local v1    # "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v2    # "$i$f$callCancelHandlerSafely":I
    return-void

    .line 682
    :cond_1
    const/4 v1, 0x0

    .line 249
    .local v1, "$i$a$-check-CancellableContinuationImpl$callSegmentOnCancellation$1":I
    nop

    .end local v1    # "$i$a$-check-CancellableContinuationImpl$callSegmentOnCancellation$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The index for Segment.onCancellation(..) is broken"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final cancelLater(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 195
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 196
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 197
    .local v0, "dispatched":Lkotlinx/coroutines/internal/DispatchedContinuation;
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->postponeCancellation$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    move-result v1

    return v1
.end method

.method private final detachChildIfNonResuable()V
    .locals 1

    .line 557
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    .line 558
    :cond_0
    return-void
.end method

.method private final dispatchResume(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 464
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResume()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 466
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    invoke-static {v0, p1}, Lkotlinx/coroutines/DispatchedTaskKt;->dispatch(Lkotlinx/coroutines/DispatchedTask;I)V

    .line 467
    return-void
.end method

.method private final getParentHandle()Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_parentHandle$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method private final getStateDebugRepresentation()Ljava/lang/String;
    .locals 2

    .line 113
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 114
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-eqz v1, :cond_0

    const-string v0, "Active"

    goto :goto_0

    .line 115
    :cond_0
    instance-of v0, v0, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v0, :cond_1

    const-string v0, "Cancelled"

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "Completed"

    .line 117
    :goto_0
    return-object v0
.end method

.method private final synthetic get_decisionAndIndex$volatile()I
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex$volatile:I

    return v0
.end method

.method private static final synthetic get_decisionAndIndex$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final synthetic get_parentHandle$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic get_parentHandle$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic get_state$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final installParentHandle()Lkotlinx/coroutines/DisposableHandle;
    .locals 7

    .line 342
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    .line 344
    .local v1, "parent":Lkotlinx/coroutines/Job;
    :cond_0
    nop

    .line 345
    const/4 v2, 0x1

    .line 344
    const/4 v3, 0x0

    .line 346
    new-instance v4, Lkotlinx/coroutines/ChildContinuation;

    invoke-direct {v4, p0}, Lkotlinx/coroutines/ChildContinuation;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    check-cast v4, Lkotlinx/coroutines/InternalCompletionHandler;

    .line 344
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/InternalCompletionHandler;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v2

    .local v2, "handle":Lkotlinx/coroutines/DisposableHandle;
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_parentHandle$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    .line 348
    invoke-static {v3, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 349
    return-object v2
.end method

.method private final invokeOnCancellationImpl(Ljava/lang/Object;)V
    .locals 23
    .param p1, "handler"    # Ljava/lang/Object;

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 682
    const/4 v2, 0x0

    .line 398
    .local v2, "$i$a$-assert-CancellableContinuationImpl$invokeOnCancellationImpl$1":I
    instance-of v4, v1, Lkotlinx/coroutines/CancelHandler;

    if-nez v4, :cond_1

    instance-of v4, v1, Lkotlinx/coroutines/internal/Segment;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .end local v2    # "$i$a$-assert-CancellableContinuationImpl$invokeOnCancellationImpl$1":I
    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 397
    :cond_3
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    .local v2, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object/from16 v4, p0

    .local v4, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :goto_3
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .local v13, "state":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 400
    .local v14, "$i$a$-loop$atomicfu-CancellableContinuationImpl$invokeOnCancellationImpl$2":I
    nop

    .line 401
    instance-of v5, v13, Lkotlinx/coroutines/Active;

    if-eqz v5, :cond_4

    .line 402
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-static {v5, v0, v13, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    return-void

    .line 404
    :cond_4
    instance-of v5, v13, Lkotlinx/coroutines/CancelHandler;

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    instance-of v5, v13, Lkotlinx/coroutines/internal/Segment;

    :goto_4
    if-eqz v5, :cond_6

    invoke-direct {v0, v1, v13}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 405
    :cond_6
    instance-of v5, v13, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v5, :cond_c

    .line 411
    move-object v3, v13

    check-cast v3, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-virtual {v3}, Lkotlinx/coroutines/CompletedExceptionally;->makeHandled()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {v0, v1, v13}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    :cond_7
    instance-of v3, v13, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v3, :cond_b

    .line 418
    instance-of v3, v13, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    move-object v3, v13

    check-cast v3, Lkotlinx/coroutines/CompletedExceptionally;

    goto :goto_5

    :cond_8
    move-object v3, v5

    :goto_5
    if-eqz v3, :cond_9

    iget-object v5, v3, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    :cond_9
    move-object v3, v5

    .line 419
    .local v3, "cause":Ljava/lang/Throwable;
    instance-of v5, v1, Lkotlinx/coroutines/CancelHandler;

    if-eqz v5, :cond_a

    .line 420
    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/CancelHandler;

    invoke-virtual {v0, v5, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 422
    :cond_a
    const-string/jumbo v5, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/internal/Segment;

    .line 423
    .local v5, "segment":Lkotlinx/coroutines/internal/Segment;
    invoke-direct {v0, v5, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->callSegmentOnCancellation(Lkotlinx/coroutines/internal/Segment;Ljava/lang/Throwable;)V

    .line 426
    .end local v3    # "cause":Ljava/lang/Throwable;
    .end local v5    # "segment":Lkotlinx/coroutines/internal/Segment;
    :cond_b
    :goto_6
    return-void

    .line 428
    :cond_c
    instance-of v5, v13, Lkotlinx/coroutines/CompletedContinuation;

    const-string/jumbo v6, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    if-eqz v5, :cond_10

    .line 432
    move-object v5, v13

    check-cast v5, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v5, v5, Lkotlinx/coroutines/CompletedContinuation;->cancelHandler:Lkotlinx/coroutines/CancelHandler;

    if-eqz v5, :cond_d

    invoke-direct {v0, v1, v13}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 434
    :cond_d
    instance-of v5, v1, Lkotlinx/coroutines/internal/Segment;

    if-eqz v5, :cond_e

    return-void

    .line 435
    :cond_e
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/CancelHandler;

    .line 436
    move-object v5, v13

    check-cast v5, Lkotlinx/coroutines/CompletedContinuation;

    invoke-virtual {v5}, Lkotlinx/coroutines/CompletedContinuation;->getCancelled()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 438
    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CancelHandler;

    move-object v5, v13

    check-cast v5, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v5, v5, Lkotlinx/coroutines/CompletedContinuation;->cancelCause:Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V

    .line 439
    return-void

    .line 441
    :cond_f
    move-object v15, v13

    check-cast v15, Lkotlinx/coroutines/CompletedContinuation;

    const/16 v16, 0x0

    move-object/from16 v17, v1

    check-cast v17, Lkotlinx/coroutines/CancelHandler;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1d

    const/16 v22, 0x0

    invoke-static/range {v15 .. v22}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/CompletedContinuation;

    move-result-object v5

    .line 442
    .local v5, "update":Lkotlinx/coroutines/CompletedContinuation;
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    invoke-static {v6, v0, v13, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    return-void

    .line 450
    .end local v5    # "update":Lkotlinx/coroutines/CompletedContinuation;
    :cond_10
    instance-of v5, v1, Lkotlinx/coroutines/internal/Segment;

    if-eqz v5, :cond_11

    return-void

    .line 451
    :cond_11
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/CancelHandler;

    .line 452
    new-instance v15, Lkotlinx/coroutines/CompletedContinuation;

    move-object v7, v1

    check-cast v7, Lkotlinx/coroutines/CancelHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    move-object v5, v15

    move-object v6, v13

    invoke-direct/range {v5 .. v12}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 453
    .restart local v5    # "update":Lkotlinx/coroutines/CompletedContinuation;
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    invoke-static {v6, v0, v13, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    return-void

    .line 456
    .end local v5    # "update":Lkotlinx/coroutines/CompletedContinuation;
    :cond_12
    :goto_7
    nop

    .end local v13    # "state":Ljava/lang/Object;
    .end local v14    # "$i$a$-loop$atomicfu-CancellableContinuationImpl$invokeOnCancellationImpl$2":I
    goto/16 :goto_3
.end method

.method private final isReusable()Z
    .locals 2

    .line 137
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-static {v0}, Lkotlinx/coroutines/DispatchedTaskKt;->isReusableMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->isReusable$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

.method private final multipleHandlersError(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "state"    # Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", already has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p1, "proposedUpdate"    # Ljava/lang/Object;
    .param p2, "resumeMode"    # I
    .param p3, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 489
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 495
    .local v3, "$i$a$-loop$atomicfu-CancellableContinuationImpl$resumeImpl$1":I
    nop

    .line 496
    instance-of v4, v2, Lkotlinx/coroutines/NotCompleted;

    if-eqz v4, :cond_1

    .line 497
    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/NotCompleted;

    const/4 v10, 0x0

    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 498
    .local v4, "update":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-static {v5, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 499
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    .line 500
    invoke-direct {p0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 501
    return-void

    .line 503
    .end local v4    # "update":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v4, :cond_3

    .line 509
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CancelledContinuation;

    invoke-virtual {v4}, Lkotlinx/coroutines/CancelledContinuation;->makeResumed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 511
    if-eqz p3, :cond_2

    move-object v4, p3

    .line 682
    .local v4, "it":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 511
    .local v5, "$i$a$-let-CancellableContinuationImpl$resumeImpl$1$1":I
    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/CancelledContinuation;

    iget-object v6, v6, Lkotlinx/coroutines/CancelledContinuation;->cause:Ljava/lang/Throwable;

    invoke-virtual {p0, v4, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 512
    .end local v4    # "it":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$a$-let-CancellableContinuationImpl$resumeImpl$1$1":I
    :cond_2
    return-void

    .line 516
    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->alreadyResumedError(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method static synthetic resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 489
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 492
    const/4 p3, 0x0

    .line 489
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "state"    # Lkotlinx/coroutines/NotCompleted;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;
    .param p3, "resumeMode"    # I
    .param p4, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .param p5, "idempotent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/NotCompleted;",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 475
    nop

    .line 476
    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_6

    .line 477
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 682
    const/4 v0, 0x0

    .line 477
    .local v0, "$i$a$-assert-CancellableContinuationImpl$resumedState$1":I
    if-nez p5, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .end local v0    # "$i$a$-assert-CancellableContinuationImpl$resumedState$1":I
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 478
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 682
    const/4 v0, 0x0

    .line 478
    .local v0, "$i$a$-assert-CancellableContinuationImpl$resumedState$2":I
    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .end local v0    # "$i$a$-assert-CancellableContinuationImpl$resumedState$2":I
    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 479
    :cond_5
    :goto_3
    goto :goto_4

    .line 481
    :cond_6
    invoke-static {p3}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p5, :cond_7

    goto :goto_4

    .line 482
    :cond_7
    if-nez p4, :cond_9

    instance-of v0, p1, Lkotlinx/coroutines/CancelHandler;

    if-nez v0, :cond_9

    if-eqz p5, :cond_8

    goto :goto_5

    .line 486
    :cond_8
    nop

    .line 487
    :goto_4
    move-object v0, p2

    goto :goto_7

    .line 485
    :cond_9
    :goto_5
    new-instance v0, Lkotlinx/coroutines/CompletedContinuation;

    instance-of v1, p1, Lkotlinx/coroutines/CancelHandler;

    if-eqz v1, :cond_a

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CancelHandler;

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    move-object v3, v1

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v8}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 487
    :goto_7
    return-object v0
.end method

.method private final synthetic set_decisionAndIndex$volatile(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex$volatile:I

    return-void
.end method

.method private final synthetic set_parentHandle$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic set_state$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final tryResume()Z
    .locals 9

    .line 281
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_decisionAndIndex$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    .local v2, "cur":I
    const/4 v3, 0x0

    .line 283
    .local v3, "$i$a$-loop$atomicfu-CancellableContinuationImpl$tryResume$1":I
    move v4, v2

    .local v4, "$this$decision$iv":I
    const/4 v5, 0x0

    .line 720
    .local v5, "$i$f$getDecision":I
    shr-int/lit8 v4, v4, 0x1d

    .line 283
    .end local v4    # "$this$decision$iv":I
    .end local v5    # "$i$f$getDecision":I
    packed-switch v4, :pswitch_data_0

    .line 285
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 286
    const-string v5, "Already resumed"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 285
    :pswitch_0
    const/4 v4, 0x0

    return v4

    .line 284
    :pswitch_1
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_decisionAndIndex$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    move v5, v2

    .local v5, "$this$index$iv":I
    const/4 v6, 0x0

    .line 721
    .local v6, "$i$f$getIndex":I
    const v7, 0x1fffffff

    and-int/2addr v5, v7

    .line 284
    .end local v5    # "$this$index$iv":I
    .end local v6    # "$i$f$getIndex":I
    nop

    .local v5, "index$iv":I
    const/4 v6, 0x2

    .local v6, "decision$iv":I
    const/4 v7, 0x0

    .line 723
    .local v7, "$i$f$decisionAndIndex":I
    shl-int/lit8 v8, v6, 0x1d

    add-int/2addr v8, v5

    .line 284
    .end local v5    # "index$iv":I
    .end local v6    # "decision$iv":I
    .end local v7    # "$i$f$decisionAndIndex":I
    invoke-virtual {v4, p0, v2, v8}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    .line 288
    :cond_0
    nop

    .end local v2    # "cur":I
    .end local v3    # "$i$a$-loop$atomicfu-CancellableContinuationImpl$tryResume$1":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;
    .locals 11
    .param p1, "proposedUpdate"    # Ljava/lang/Object;
    .param p2, "idempotent"    # Ljava/lang/Object;
    .param p3, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/internal/Symbol;"
        }
    .end annotation

    .line 524
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 530
    .local v3, "$i$a$-loop$atomicfu-CancellableContinuationImpl$tryResumeImpl$1":I
    nop

    .line 531
    instance-of v4, v2, Lkotlinx/coroutines/NotCompleted;

    if-eqz v4, :cond_1

    .line 532
    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/NotCompleted;

    iget v8, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    move-object v5, p0

    move-object v7, p1

    move-object v9, p3

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 533
    .local v4, "update":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-static {v5, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 534
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    .line 535
    sget-object v5, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    return-object v5

    .line 537
    .end local v4    # "update":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 538
    if-eqz p2, :cond_4

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v4, v4, Lkotlinx/coroutines/CompletedContinuation;->idempotentResume:Ljava/lang/Object;

    if-ne v4, p2, :cond_4

    .line 539
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 682
    const/4 v4, 0x0

    .line 539
    .local v4, "$i$a$-assert-CancellableContinuationImpl$tryResumeImpl$1$1":I
    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v5, v5, Lkotlinx/coroutines/CompletedContinuation;->result:Ljava/lang/Object;

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .end local v4    # "$i$a$-assert-CancellableContinuationImpl$tryResumeImpl$1$1":I
    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 540
    :cond_3
    :goto_0
    sget-object v5, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_1

    .line 542
    :cond_4
    nop

    .line 538
    :goto_1
    return-object v5

    .line 545
    :cond_5
    return-object v5
.end method

.method private final trySuspend()Z
    .locals 10

    .line 271
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_decisionAndIndex$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    .local v2, "cur":I
    const/4 v3, 0x0

    .line 273
    .local v3, "$i$a$-loop$atomicfu-CancellableContinuationImpl$trySuspend$1":I
    move v4, v2

    .local v4, "$this$decision$iv":I
    const/4 v5, 0x0

    .line 716
    .local v5, "$i$f$getDecision":I
    shr-int/lit8 v4, v4, 0x1d

    .line 273
    .end local v4    # "$this$decision$iv":I
    .end local v5    # "$i$f$getDecision":I
    packed-switch v4, :pswitch_data_0

    .line 275
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 276
    const-string v5, "Already suspended"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 275
    :pswitch_1
    const/4 v4, 0x0

    return v4

    .line 274
    :pswitch_2
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_decisionAndIndex$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    move v5, v2

    .local v5, "$this$index$iv":I
    const/4 v6, 0x0

    .line 717
    .local v6, "$i$f$getIndex":I
    const v7, 0x1fffffff

    and-int/2addr v5, v7

    .line 274
    .end local v5    # "$this$index$iv":I
    .end local v6    # "$i$f$getIndex":I
    nop

    .local v5, "index$iv":I
    const/4 v6, 0x1

    move v7, v6

    .local v7, "decision$iv":I
    const/4 v8, 0x0

    .line 719
    .local v8, "$i$f$decisionAndIndex":I
    shl-int/lit8 v9, v7, 0x1d

    add-int/2addr v9, v5

    .line 274
    .end local v5    # "index$iv":I
    .end local v7    # "decision$iv":I
    .end local v8    # "$i$f$decisionAndIndex":I
    invoke-virtual {v4, p0, v2, v9}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    return v6

    .line 278
    :cond_0
    nop

    .end local v2    # "cur":I
    .end local v3    # "$i$a$-loop$atomicfu-CancellableContinuationImpl$trySuspend$1":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final synthetic update$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method public final callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "handler"    # Lkotlinx/coroutines/CancelHandler;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 245
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 695
    .local v1, "$i$f$callCancelHandlerSafely":I
    nop

    .line 696
    const/4 v2, 0x0

    .line 245
    .local v2, "$i$a$-callCancelHandlerSafely-CancellableContinuationImpl$callCancelHandler$2":I
    :try_start_0
    invoke-interface {p1, p2}, Lkotlinx/coroutines/CancelHandler;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    .end local v2    # "$i$a$-callCancelHandlerSafely-CancellableContinuationImpl$callCancelHandler$2":I
    goto :goto_0

    .line 697
    :catchall_0
    move-exception v2

    .line 700
    .local v2, "ex$iv":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 701
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 699
    invoke-static {v3, v4}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 704
    .end local v2    # "ex$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 245
    .end local v0    # "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v1    # "$i$f$callCancelHandlerSafely":I
    return-void
.end method

.method public final callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 254
    nop

    .line 255
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    .line 259
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 260
    new-instance v2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in resume onCancellation handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    .line 258
    invoke-static {v1, v2}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 263
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 9
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 200
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 202
    .local v3, "$i$a$-loop$atomicfu-CancellableContinuationImpl$cancel$1":I
    instance-of v4, v2, Lkotlinx/coroutines/NotCompleted;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return v5

    .line 204
    :cond_1
    new-instance v4, Lkotlinx/coroutines/CancelledContinuation;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    instance-of v7, v2, Lkotlinx/coroutines/CancelHandler;

    const/4 v8, 0x1

    if-nez v7, :cond_2

    instance-of v7, v2, Lkotlinx/coroutines/internal/Segment;

    if-eqz v7, :cond_3

    :cond_2
    move v5, v8

    :cond_3
    invoke-direct {v4, v6, p1, v5}, Lkotlinx/coroutines/CancelledContinuation;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;Z)V

    .line 205
    .local v4, "update":Lkotlinx/coroutines/CancelledContinuation;
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-static {v5, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/NotCompleted;

    .line 208
    instance-of v6, v5, Lkotlinx/coroutines/CancelHandler;

    if-eqz v6, :cond_4

    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/CancelHandler;

    invoke-virtual {p0, v5, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 209
    :cond_4
    instance-of v5, v5, Lkotlinx/coroutines/internal/Segment;

    if-eqz v5, :cond_5

    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/internal/Segment;

    invoke-direct {p0, v5, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callSegmentOnCancellation(Lkotlinx/coroutines/internal/Segment;Ljava/lang/Throwable;)V

    .line 212
    :cond_5
    :goto_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    .line 213
    iget v5, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-direct {p0, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 214
    return v8
.end method

.method public cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 21
    .param p1, "takenState"    # Ljava/lang/Object;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 168
    move-object/from16 v0, p0

    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .local v1, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object/from16 v2, p0

    .local v2, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .local v11, "state":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 169
    .local v12, "$i$a$-loop$atomicfu-CancellableContinuationImpl$cancelCompletedResult$1":I
    nop

    .line 170
    instance-of v3, v11, Lkotlinx/coroutines/NotCompleted;

    if-nez v3, :cond_5

    .line 171
    instance-of v3, v11, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v3, :cond_0

    return-void

    .line 172
    :cond_0
    instance-of v3, v11, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v3, :cond_3

    .line 173
    move-object v3, v11

    check-cast v3, Lkotlinx/coroutines/CompletedContinuation;

    invoke-virtual {v3}, Lkotlinx/coroutines/CompletedContinuation;->getCancelled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 174
    move-object v13, v11

    check-cast v13, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0xf

    const/16 v20, 0x0

    move-object/from16 v18, p2

    invoke-static/range {v13 .. v20}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/CompletedContinuation;

    move-result-object v3

    .line 175
    .local v3, "update":Lkotlinx/coroutines/CompletedContinuation;
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {v4, v0, v11, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    move-object v4, v11

    check-cast v4, Lkotlinx/coroutines/CompletedContinuation;

    move-object/from16 v13, p2

    invoke-virtual {v4, v0, v13}, Lkotlinx/coroutines/CompletedContinuation;->invokeHandlers(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Throwable;)V

    .line 177
    return-void

    .line 175
    :cond_1
    move-object/from16 v13, p2

    goto :goto_1

    .line 682
    .end local v3    # "update":Lkotlinx/coroutines/CompletedContinuation;
    :cond_2
    move-object/from16 v13, p2

    const/4 v3, 0x0

    .line 173
    .local v3, "$i$a$-check-CancellableContinuationImpl$cancelCompletedResult$1$1":I
    nop

    .end local v3    # "$i$a$-check-CancellableContinuationImpl$cancelCompletedResult$1$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must be called at most once"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_3
    move-object/from16 v13, p2

    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v14

    new-instance v15, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    move-object v3, v15

    move-object v4, v11

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v10}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14, v0, v11, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 184
    return-void

    .line 188
    :cond_4
    :goto_1
    nop

    .end local v11    # "state":Ljava/lang/Object;
    .end local v12    # "$i$a$-loop$atomicfu-CancellableContinuationImpl$cancelCompletedResult$1":I
    goto :goto_0

    .line 170
    .restart local v11    # "state":Ljava/lang/Object;
    .restart local v12    # "$i$a$-loop$atomicfu-CancellableContinuationImpl$cancelCompletedResult$1":I
    :cond_5
    move-object/from16 v13, p2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Not completed"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public completeResume(Ljava/lang/Object;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;

    .line 581
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    const/4 v0, 0x0

    .line 581
    .local v0, "$i$a$-assert-CancellableContinuationImpl$completeResume$1":I
    sget-object v1, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-CancellableContinuationImpl$completeResume$1":I
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 582
    :cond_2
    :goto_1
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 583
    return-void
.end method

.method public final detachChild$kotlinx_coroutines_core()V
    .locals 3

    .line 564
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 565
    .local v0, "handle":Lkotlinx/coroutines/DisposableHandle;
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_parentHandle$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 566
    sget-object v2, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 567
    return-void
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2

    .line 160
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

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

    .line 37
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getContinuationCancellationCause(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "parent"    # Lkotlinx/coroutines/Job;

    .line 269
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 5
    .param p1, "state"    # Ljava/lang/Object;

    .line 605
    invoke-super {p0, p1}, Lkotlinx/coroutines/DispatchedTask;->getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 682
    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 605
    .local v1, "$i$a$-let-CancellableContinuationImpl$getExceptionalResult$1":I
    iget-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .local v2, "continuation$iv":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 733
    .local v3, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v2, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v4, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v0, v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_1

    .line 733
    :cond_1
    :goto_0
    move-object v4, v0

    .line 605
    .end local v2    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$f$recoverStackTrace":I
    :goto_1
    nop

    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-CancellableContinuationImpl$getExceptionalResult$1":I
    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return-object v4
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 7

    .line 293
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v0

    .line 296
    .local v0, "isReusable":Z
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->trySuspend()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 307
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->installParentHandle()Lkotlinx/coroutines/DisposableHandle;

    .line 314
    :cond_0
    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 317
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 320
    :cond_2
    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 324
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v1

    .line 325
    .local v1, "state":Ljava/lang/Object;
    instance-of v2, v1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v2, v2, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .local v2, "exception$iv":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 724
    .local v3, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    instance-of v4, v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v4, :cond_4

    goto :goto_0

    .line 725
    :cond_4
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    check-cast v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v2, v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v4

    move-object v2, v4

    .end local v2    # "exception$iv":Ljava/lang/Throwable;
    .end local v3    # "$i$f$recoverStackTrace":I
    :cond_5
    :goto_0
    throw v2

    .line 330
    :cond_6
    iget v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-static {v2}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 331
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v3, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    .line 332
    .local v2, "job":Lkotlinx/coroutines/Job;
    if-eqz v2, :cond_9

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v3

    if-nez v3, :cond_9

    .line 333
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    .line 334
    .local v3, "cause":Ljava/util/concurrent/CancellationException;
    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 335
    const/4 v4, 0x0

    .line 726
    .local v4, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    instance-of v5, v5, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v5, :cond_7

    goto :goto_1

    .line 727
    :cond_7
    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    check-cast v6, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v5, v6}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_2

    .line 726
    :cond_8
    :goto_1
    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    .line 727
    .end local v4    # "$i$f$recoverStackTrace":I
    :goto_2
    throw v5

    .line 338
    .end local v2    # "job":Lkotlinx/coroutines/Job;
    .end local v3    # "cause":Ljava/util/concurrent/CancellationException;
    :cond_9
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 597
    nop

    .line 598
    instance-of v0, p1, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedContinuation;->result:Ljava/lang/Object;

    goto :goto_0

    .line 599
    :cond_0
    move-object v0, p1

    .line 600
    :goto_0
    return-object v0
.end method

.method public initCancellability()V
    .locals 3

    .line 125
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->installParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 130
    .local v0, "handle":Lkotlinx/coroutines/DisposableHandle;
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_parentHandle$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 133
    sget-object v2, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    :cond_1
    return-void
.end method

.method public invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 393
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    new-instance v1, Lkotlinx/coroutines/CancelHandler$UserSupplied;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/CancelHandler$UserSupplied;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlinx/coroutines/CancelHandler;

    invoke-static {v0, v1}, Lkotlinx/coroutines/CancellableContinuationKt;->invokeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/CancelHandler;)V

    return-void
.end method

.method public invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 8
    .param p1, "segment"    # Lkotlinx/coroutines/internal/Segment;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/Segment<",
            "*>;I)V"
        }
    .end annotation

    .line 383
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_decisionAndIndex$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .local v3, "it":I
    const/4 v4, 0x0

    .line 385
    .local v4, "$i$a$-update$atomicfu-CancellableContinuationImpl$invokeOnCancellation$1":I
    move v5, v3

    .local v5, "$this$index$iv":I
    const/4 v6, 0x0

    .line 728
    .local v6, "$i$f$getIndex":I
    const v7, 0x1fffffff

    and-int/2addr v5, v7

    .line 385
    .end local v5    # "$this$index$iv":I
    .end local v6    # "$i$f$getIndex":I
    if-ne v5, v7, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    .line 388
    move v5, v3

    .local v5, "$this$decision$iv":I
    const/4 v6, 0x0

    .line 729
    .local v6, "$i$f$getDecision":I
    shr-int/lit8 v5, v5, 0x1d

    .line 388
    .end local v5    # "$this$decision$iv":I
    .end local v6    # "$i$f$getDecision":I
    nop

    .local v5, "decision$iv":I
    const/4 v6, 0x0

    .line 732
    .local v6, "$i$f$decisionAndIndex":I
    shl-int/lit8 v7, v5, 0x1d

    add-int/2addr v7, p2

    .line 388
    .end local v5    # "decision$iv":I
    .end local v6    # "$i$f$decisionAndIndex":I
    nop

    .end local v3    # "it":I
    .end local v4    # "$i$a$-update$atomicfu-CancellableContinuationImpl$invokeOnCancellation$1":I
    invoke-virtual {v0, p0, v2, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    .end local v0    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .end local v1    # "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellationImpl(Ljava/lang/Object;)V

    .line 391
    return-void

    .line 385
    .restart local v0    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .restart local v1    # "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v3    # "it":I
    .restart local v4    # "$i$a$-update$atomicfu-CancellableContinuationImpl$invokeOnCancellation$1":I
    :cond_2
    const/4 v2, 0x0

    .line 386
    .local v2, "$i$a$-check-CancellableContinuationImpl$invokeOnCancellation$1$1":I
    nop

    .line 385
    .end local v2    # "$i$a$-check-CancellableContinuationImpl$invokeOnCancellation$1$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "invokeOnCancellation should be called at most once"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final invokeOnCancellationInternal$kotlinx_coroutines_core(Lkotlinx/coroutines/CancelHandler;)V
    .locals 0
    .param p1, "handler"    # Lkotlinx/coroutines/CancelHandler;

    .line 395
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellationImpl(Ljava/lang/Object;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/NotCompleted;

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/CancelledContinuation;

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/NotCompleted;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected nameString()Ljava/lang/String;
    .locals 1

    .line 612
    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final parentCancelled$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 219
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancelLater(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    .line 222
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    .line 223
    return-void
.end method

.method public final releaseClaimedReusableContinuation$kotlinx_coroutines_core()V
    .locals 2

    .line 358
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->tryReleaseClaimedContinuation$kotlinx_coroutines_core(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 359
    .local v0, "cancellationCause":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    .line 360
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    .line 361
    return-void

    .line 358
    .end local v0    # "cancellationCause":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-void
.end method

.method public final resetStateReusable()Z
    .locals 7

    .line 145
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 682
    const/4 v0, 0x0

    .line 145
    .local v0, "$i$a$-assert-CancellableContinuationImpl$resetStateReusable$1":I
    iget v3, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .end local v0    # "$i$a$-assert-CancellableContinuationImpl$resetStateReusable$1":I
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 682
    const/4 v0, 0x0

    .line 146
    .local v0, "$i$a$-assert-CancellableContinuationImpl$resetStateReusable$2":I
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    if-eq v3, v4, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    .end local v0    # "$i$a$-assert-CancellableContinuationImpl$resetStateReusable$2":I
    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "state":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 682
    const/4 v3, 0x0

    .line 148
    .local v3, "$i$a$-assert-CancellableContinuationImpl$resetStateReusable$3":I
    instance-of v4, v0, Lkotlinx/coroutines/NotCompleted;

    .end local v3    # "$i$a$-assert-CancellableContinuationImpl$resetStateReusable$3":I
    xor-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 149
    :cond_7
    :goto_4
    instance-of v3, v0, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v3, :cond_8

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v3, v3, Lkotlinx/coroutines/CompletedContinuation;->idempotentResume:Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 151
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    .line 152
    return v1

    :cond_8
    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_decisionAndIndex$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    .line 154
    const/4 v3, 0x0

    .local v3, "decision$iv":I
    const v4, 0x1fffffff

    .local v4, "index$iv":I
    const/4 v5, 0x0

    .line 684
    .local v5, "$i$f$decisionAndIndex":I
    shl-int/lit8 v6, v3, 0x1d

    add-int/2addr v6, v4

    .end local v3    # "decision$iv":I
    .end local v4    # "index$iv":I
    .end local v5    # "$i$f$decisionAndIndex":I
    invoke-virtual {v1, p0, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    invoke-static {}, Lkotlinx/coroutines/CancellableContinuationImpl;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 155
    sget-object v3, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    invoke-virtual {v1, p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    return v2
.end method

.method public resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 367
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V
    .locals 8
    .param p1, "$this$resumeUndispatched"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "TT;)V"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 587
    .local v0, "dc":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    iget v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    :goto_1
    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 588
    return-void
.end method

.method public resumeUndispatchedWithException(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "$this$resumeUndispatchedWithException"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 591
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 592
    .local v0, "dc":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_0
    new-instance v4, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-direct {v4, p2, v1, v3, v2}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v0, :cond_1

    iget-object v2, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    iget v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    :goto_1
    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 593
    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .line 364
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1, v0}, Lkotlinx/coroutines/CompletionStateKt;->toState(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public takeState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->nameString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->toDebugString(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getStateDebugRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "idempotent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 571
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "idempotent"    # Ljava/lang/Object;
    .param p3, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 574
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 577
    new-instance v0, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0, v3, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    return-object v0
.end method
