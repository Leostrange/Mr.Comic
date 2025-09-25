.class public final Lkotlinx/coroutines/intrinsics/UndispatchedKt;
.super Ljava/lang/Object;
.source "Undispatched.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUndispatched.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/intrinsics/UndispatchedKt\n+ 2 ProbesSupport.kt\nkotlinx/coroutines/internal/ProbesSupportKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,110:1\n38#1:111\n39#1,11:113\n38#1:124\n39#1,2:126\n41#1,9:133\n80#1,4:143\n97#1,6:147\n103#1,5:155\n80#1,4:160\n97#1,6:164\n103#1,5:172\n8#2:112\n8#2:125\n8#2:142\n91#3,5:128\n57#4,2:153\n57#4,2:170\n57#4,2:177\n57#4,2:179\n*S KotlinDebug\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/intrinsics/UndispatchedKt\n*L\n14#1:111\n14#1:113,11\n25#1:124\n25#1:126,2\n25#1:133,9\n60#1:143,4\n60#1:147,6\n60#1:155,5\n71#1:160,4\n71#1:164,6\n71#1:172,5\n14#1:112\n25#1:125\n38#1:142\n26#1:128,5\n60#1:153,2\n71#1:170,2\n102#1:177,2\n103#1:179,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a9\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u001a\u0010\u0005\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0082\u0008\u001aO\u0010\u0008\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\t\"\u0004\u0008\u0001\u0010\u0002*\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\n2\u0006\u0010\u000b\u001a\u0002H\t2\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u0000\u00a2\u0006\u0002\u0010\u000c\u001a;\u0010\r\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u0000\u00a2\u0006\u0002\u0010\u000e\u001aV\u0010\u000f\u001a\u0004\u0018\u00010\u0007\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\t*\u0008\u0012\u0004\u0012\u0002H\u00020\u00102\u0006\u0010\u000b\u001a\u0002H\t2\'\u0010\u0005\u001a#\u0008\u0001\u0012\u0004\u0012\u0002H\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\n\u00a2\u0006\u0002\u0008\u0011H\u0000\u00a2\u0006\u0002\u0010\u0012\u001aV\u0010\u0013\u001a\u0004\u0018\u00010\u0007\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\t*\u0008\u0012\u0004\u0012\u0002H\u00020\u00102\u0006\u0010\u000b\u001a\u0002H\t2\'\u0010\u0005\u001a#\u0008\u0001\u0012\u0004\u0012\u0002H\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\n\u00a2\u0006\u0002\u0008\u0011H\u0000\u00a2\u0006\u0002\u0010\u0012\u001a?\u0010\u0014\u001a\u0004\u0018\u00010\u0007\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00102\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00062\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0019H\u0082\u0008\u00a8\u0006\u001a"
    }
    d2 = {
        "startDirect",
        "",
        "T",
        "completion",
        "Lkotlin/coroutines/Continuation;",
        "block",
        "Lkotlin/Function1;",
        "",
        "startCoroutineUndispatched",
        "R",
        "Lkotlin/Function2;",
        "receiver",
        "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V",
        "startCoroutineUnintercepted",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V",
        "startUndispatchedOrReturn",
        "Lkotlinx/coroutines/internal/ScopeCoroutine;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlinx/coroutines/internal/ScopeCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "startUndispatchedOrReturnIgnoreTimeout",
        "undispatchedResult",
        "shouldThrow",
        "",
        "",
        "startBlock",
        "Lkotlin/Function0;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final startCoroutineUndispatched(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 10
    .param p0, "$this$startCoroutineUndispatched"    # Lkotlin/jvm/functions/Function2;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    .line 124
    .local v0, "$i$f$startDirect":I
    const/4 v1, 0x0

    .line 125
    .local v1, "$i$f$probeCoroutineCreated":I
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineCreated(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    .line 124
    .end local v1    # "$i$f$probeCoroutineCreated":I
    nop

    .line 126
    .local v1, "actualCompletion$iv":Lkotlin/coroutines/Continuation;
    nop

    .line 127
    move-object v2, v1

    .local v2, "actualCompletion":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 26
    .local v3, "$i$a$-startDirect-UndispatchedKt$startCoroutineUndispatched$1":I
    :try_start_0
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    const/4 v5, 0x0

    .local v4, "context$iv":Lkotlin/coroutines/CoroutineContext;
    .local v5, "countOrElement$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 128
    .local v6, "$i$f$withCoroutineContext":I
    invoke-static {v4, v5}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    .local v7, "oldValue$iv":Ljava/lang/Object;
    nop

    .line 130
    const/4 v8, 0x0

    .line 27
    .local v8, "$i$a$-withCoroutineContext-UndispatchedKt$startCoroutineUndispatched$1$1":I
    :try_start_1
    instance-of v9, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    if-nez v9, :cond_0

    invoke-static {p0, p1, v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->wrapWithContinuationImpl(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x2

    invoke-static {p0, v9}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .end local v8    # "$i$a$-withCoroutineContext-UndispatchedKt$startCoroutineUndispatched$1$1":I
    :goto_0
    nop

    .line 132
    :try_start_2
    invoke-static {v4, v7}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    nop

    .line 26
    .end local v4    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v5    # "countOrElement$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$withCoroutineContext":I
    .end local v7    # "oldValue$iv":Ljava/lang/Object;
    nop

    .line 127
    .end local v2    # "actualCompletion":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-startDirect-UndispatchedKt$startCoroutineUndispatched$1":I
    nop

    .line 126
    move-object v2, v9

    .line 137
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 139
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 141
    :cond_1
    goto :goto_1

    .line 132
    .local v2, "actualCompletion":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$i$a$-startDirect-UndispatchedKt$startCoroutineUndispatched$1":I
    .restart local v4    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v5    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v6    # "$i$f$withCoroutineContext":I
    .restart local v7    # "oldValue$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    :try_start_3
    invoke-static {v4, v7}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .end local v0    # "$i$f$startDirect":I
    .end local v1    # "actualCompletion$iv":Lkotlin/coroutines/Continuation;
    .end local p0    # "$this$startCoroutineUndispatched":Lkotlin/jvm/functions/Function2;
    .end local p1    # "receiver":Ljava/lang/Object;
    .end local p2    # "completion":Lkotlin/coroutines/Continuation;
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    .end local v2    # "actualCompletion":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-startDirect-UndispatchedKt$startCoroutineUndispatched$1":I
    .end local v4    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v5    # "countOrElement$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$withCoroutineContext":I
    .end local v7    # "oldValue$iv":Ljava/lang/Object;
    .restart local v0    # "$i$f$startDirect":I
    .restart local v1    # "actualCompletion$iv":Lkotlin/coroutines/Continuation;
    .restart local p0    # "$this$startCoroutineUndispatched":Lkotlin/jvm/functions/Function2;
    .restart local p1    # "receiver":Ljava/lang/Object;
    .restart local p2    # "completion":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v2

    .line 134
    .local v2, "e$iv":Ljava/lang/Throwable;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 135
    nop

    .line 30
    .end local v0    # "$i$f$startDirect":I
    .end local v1    # "actualCompletion$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public static final startCoroutineUnintercepted(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 5
    .param p0, "$this$startCoroutineUnintercepted"    # Lkotlin/jvm/functions/Function1;
    .param p1, "completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    .line 111
    .local v0, "$i$f$startDirect":I
    const/4 v1, 0x0

    .line 112
    .local v1, "$i$f$probeCoroutineCreated":I
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineCreated(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    .line 111
    .end local v1    # "$i$f$probeCoroutineCreated":I
    nop

    .line 113
    .local v1, "actualCompletion$iv":Lkotlin/coroutines/Continuation;
    nop

    .line 114
    move-object v2, v1

    .local v2, "actualCompletion":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 15
    .local v3, "$i$a$-startDirect-UndispatchedKt$startCoroutineUnintercepted$1":I
    :try_start_0
    instance-of v4, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    if-nez v4, :cond_0

    invoke-static {p0, v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->wrapWithContinuationImpl(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v2    # "actualCompletion":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-startDirect-UndispatchedKt$startCoroutineUnintercepted$1":I
    :goto_0
    nop

    .line 113
    move-object v2, v4

    .line 119
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 121
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 123
    :cond_1
    goto :goto_1

    .line 115
    .end local v2    # "value$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .line 116
    .local v2, "e$iv":Ljava/lang/Throwable;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 117
    nop

    .line 17
    .end local v0    # "$i$f$startDirect":I
    .end local v1    # "actualCompletion$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private static final startDirect(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "completion"    # Lkotlin/coroutines/Continuation;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    .local v0, "$i$f$startDirect":I
    const/4 v1, 0x0

    .line 142
    .local v1, "$i$f$probeCoroutineCreated":I
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineCreated(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    .line 38
    .end local v1    # "$i$f$probeCoroutineCreated":I
    nop

    .line 39
    .local v1, "actualCompletion":Lkotlin/coroutines/Continuation;
    nop

    .line 40
    :try_start_0
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    nop

    .line 45
    .local v2, "value":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 47
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-void

    .line 41
    .end local v2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static final startUndispatchedOrReturn(Lkotlinx/coroutines/internal/ScopeCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$startUndispatchedOrReturn"    # Lkotlinx/coroutines/internal/ScopeCoroutine;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/internal/ScopeCoroutine<",
            "-TT;>;TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    move-object v0, p0

    .local v0, "$this$undispatchedResult$iv":Lkotlinx/coroutines/internal/ScopeCoroutine;
    const/4 v1, 0x0

    .line 143
    .local v1, "$i$f$undispatchedResult":I
    nop

    .line 144
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$-undispatchedResult-UndispatchedKt$startUndispatchedOrReturn$2":I
    const/4 v3, 0x2

    :try_start_0
    instance-of v4, p2, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    if-nez v4, :cond_0

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {p2, p1, v4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->wrapWithContinuationImpl(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {p2, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-interface {v4, p1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v2    # "$i$a$-undispatchedResult-UndispatchedKt$startUndispatchedOrReturn$2":I
    :goto_0
    goto :goto_1

    .line 145
    :catchall_0
    move-exception v2

    .line 146
    .local v2, "e$iv":Ljava/lang/Throwable;
    new-instance v4, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v2, v5, v3, v6}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v4

    .line 143
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_1
    move-object v2, v3

    .line 147
    .local v2, "result$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 148
    :cond_1
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/internal/ScopeCoroutine;->makeCompletingOnce$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 149
    .local v3, "state$iv":Ljava/lang/Object;
    sget-object v4, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v3, v4, :cond_2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    goto :goto_3

    .line 150
    :cond_2
    instance-of v4, v3, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v4, :cond_5

    .line 151
    nop

    .line 152
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v4, v4, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .local v4, "it":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 60
    .local v5, "$i$a$-undispatchedResult-UndispatchedKt$startUndispatchedOrReturn$1":I
    nop

    .line 152
    .end local v4    # "it":Ljava/lang/Throwable;
    .end local v5    # "$i$a$-undispatchedResult-UndispatchedKt$startUndispatchedOrReturn$1":I
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v4, v4, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .local v4, "exception$iv$iv":Ljava/lang/Throwable;
    iget-object v5, v0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    .local v5, "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    const/4 v6, 0x0

    .line 153
    .local v6, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v7

    if-eqz v7, :cond_4

    instance-of v7, v5, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v7, :cond_3

    goto :goto_2

    .line 154
    :cond_3
    move-object v7, v5

    check-cast v7, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v4, v7}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v7

    move-object v4, v7

    .end local v4    # "exception$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v6    # "$i$f$recoverStackTrace":I
    :cond_4
    :goto_2
    throw v4

    .line 159
    :cond_5
    invoke-static {v3}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 150
    move-object v3, v4

    .line 60
    .end local v0    # "$this$undispatchedResult$iv":Lkotlinx/coroutines/internal/ScopeCoroutine;
    .end local v1    # "$i$f$undispatchedResult":I
    .end local v2    # "result$iv":Ljava/lang/Object;
    .end local v3    # "state$iv":Ljava/lang/Object;
    :goto_3
    return-object v3
.end method

.method public static final startUndispatchedOrReturnIgnoreTimeout(Lkotlinx/coroutines/internal/ScopeCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$startUndispatchedOrReturnIgnoreTimeout"    # Lkotlinx/coroutines/internal/ScopeCoroutine;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/internal/ScopeCoroutine<",
            "-TT;>;TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 71
    move-object v0, p0

    .local v0, "$this$undispatchedResult$iv":Lkotlinx/coroutines/internal/ScopeCoroutine;
    const/4 v1, 0x0

    .line 160
    .local v1, "$i$f$undispatchedResult":I
    nop

    .line 161
    const/4 v2, 0x0

    .line 72
    .local v2, "$i$a$-undispatchedResult-UndispatchedKt$startUndispatchedOrReturnIgnoreTimeout$2":I
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    instance-of v5, p2, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    if-nez v5, :cond_0

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {p2, p1, v5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->wrapWithContinuationImpl(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {p2, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-interface {v5, p1, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v2    # "$i$a$-undispatchedResult-UndispatchedKt$startUndispatchedOrReturnIgnoreTimeout$2":I
    :goto_0
    goto :goto_1

    .line 162
    :catchall_0
    move-exception v2

    .line 163
    .local v2, "e$iv":Ljava/lang/Throwable;
    new-instance v5, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v4, v3, v6}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v5

    .line 160
    .end local v2    # "e$iv":Ljava/lang/Throwable;
    :goto_1
    move-object v2, v3

    .line 164
    .local v2, "result$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_5

    .line 165
    :cond_1
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/internal/ScopeCoroutine;->makeCompletingOnce$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 166
    .local v3, "state$iv":Ljava/lang/Object;
    sget-object v5, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v3, v5, :cond_2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    goto :goto_5

    .line 167
    :cond_2
    instance-of v5, v3, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v5, :cond_b

    .line 168
    nop

    .line 169
    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v5, v5, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .local v5, "e":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 71
    .local v6, "$i$a$-undispatchedResult-UndispatchedKt$startUndispatchedOrReturnIgnoreTimeout$1":I
    instance-of v7, v5, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v7, :cond_3

    move-object v7, v5

    check-cast v7, Lkotlinx/coroutines/TimeoutCancellationException;

    iget-object v7, v7, Lkotlinx/coroutines/TimeoutCancellationException;->coroutine:Lkotlinx/coroutines/Job;

    if-eq v7, p0, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 169
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v6    # "$i$a$-undispatchedResult-UndispatchedKt$startUndispatchedOrReturnIgnoreTimeout$1":I
    :cond_4
    if-eqz v4, :cond_7

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v4, v4, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .local v4, "exception$iv$iv":Ljava/lang/Throwable;
    iget-object v5, v0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    .local v5, "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    const/4 v6, 0x0

    .line 170
    .local v6, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v7

    if-eqz v7, :cond_6

    instance-of v7, v5, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v7, :cond_5

    goto :goto_2

    .line 171
    :cond_5
    move-object v7, v5

    check-cast v7, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v4, v7}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v7

    move-object v4, v7

    .end local v4    # "exception$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v6    # "$i$f$recoverStackTrace":I
    :cond_6
    :goto_2
    throw v4

    .line 172
    :cond_7
    instance-of v4, v2, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v4, :cond_a

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v4, v4, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .restart local v4    # "exception$iv$iv":Ljava/lang/Throwable;
    iget-object v5, v0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    .restart local v5    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    const/4 v6, 0x0

    .line 170
    .restart local v6    # "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v7

    if-eqz v7, :cond_9

    instance-of v7, v5, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v7, :cond_8

    goto :goto_3

    .line 171
    :cond_8
    move-object v7, v5

    check-cast v7, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v4, v7}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v7

    move-object v4, v7

    .end local v4    # "exception$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v6    # "$i$f$recoverStackTrace":I
    :cond_9
    :goto_3
    throw v4

    .line 173
    :cond_a
    move-object v4, v2

    goto :goto_4

    .line 176
    :cond_b
    invoke-static {v3}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 167
    :goto_4
    move-object v3, v4

    .line 71
    .end local v0    # "$this$undispatchedResult$iv":Lkotlinx/coroutines/internal/ScopeCoroutine;
    .end local v1    # "$i$f$undispatchedResult":I
    .end local v2    # "result$iv":Ljava/lang/Object;
    .end local v3    # "state$iv":Ljava/lang/Object;
    :goto_5
    return-object v3
.end method

.method private static final undispatchedResult(Lkotlinx/coroutines/internal/ScopeCoroutine;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$undispatchedResult"    # Lkotlinx/coroutines/internal/ScopeCoroutine;
    .param p1, "shouldThrow"    # Lkotlin/jvm/functions/Function1;
    .param p2, "startBlock"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/internal/ScopeCoroutine<",
            "-TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    .local v0, "$i$f$undispatchedResult":I
    nop

    .line 81
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v1, v5, v3, v4}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v2

    .line 80
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 97
    .local v1, "result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 98
    :cond_0
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/ScopeCoroutine;->makeCompletingOnce$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 99
    .local v2, "state":Ljava/lang/Object;
    sget-object v3, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 100
    :cond_1
    instance-of v3, v2, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v3, :cond_8

    .line 101
    nop

    .line 102
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v3, v3, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v3, v3, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .local v3, "exception$iv":Ljava/lang/Throwable;
    iget-object v4, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    .local v4, "continuation$iv":Lkotlin/coroutines/Continuation;
    const/4 v5, 0x0

    .line 177
    .local v5, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v6, :cond_2

    goto :goto_1

    .line 178
    :cond_2
    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v3, v6}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v6

    move-object v3, v6

    .end local v3    # "exception$iv":Ljava/lang/Throwable;
    .end local v4    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .end local v5    # "$i$f$recoverStackTrace":I
    :cond_3
    :goto_1
    throw v3

    .line 103
    :cond_4
    instance-of v3, v1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v3, :cond_7

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v3, v3, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .restart local v3    # "exception$iv":Ljava/lang/Throwable;
    iget-object v4, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    .restart local v4    # "continuation$iv":Lkotlin/coroutines/Continuation;
    const/4 v5, 0x0

    .line 179
    .restart local v5    # "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v6

    if-eqz v6, :cond_6

    instance-of v6, v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v6, :cond_5

    goto :goto_2

    .line 180
    :cond_5
    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v3, v6}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v6

    move-object v3, v6

    .end local v3    # "exception$iv":Ljava/lang/Throwable;
    .end local v4    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .end local v5    # "$i$f$recoverStackTrace":I
    :cond_6
    :goto_2
    throw v3

    .line 104
    :cond_7
    move-object v3, v1

    goto :goto_3

    .line 107
    :cond_8
    invoke-static {v2}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 100
    :goto_3
    return-object v3
.end method
