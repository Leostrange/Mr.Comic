.class public final Landroidx/compose/material/SnackbarHostState;
.super Ljava/lang/Object;
.source "SnackbarHost.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/SnackbarHostState$SnackbarDataImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnackbarHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnackbarHost.kt\nandroidx/compose/material/SnackbarHostState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,381:1\n81#2:382\n107#2,2:383\n120#3,8:385\n129#3:404\n314#4,11:393\n*S KotlinDebug\n*F\n+ 1 SnackbarHost.kt\nandroidx/compose/material/SnackbarHostState\n*L\n75#1:382\n75#1:383,2\n105#1:385,8\n105#1:404\n107#1:393,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J,\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0002\u0010\u0015R/\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00048F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/material/SnackbarHostState;",
        "",
        "()V",
        "<set-?>",
        "Landroidx/compose/material/SnackbarData;",
        "currentSnackbarData",
        "getCurrentSnackbarData",
        "()Landroidx/compose/material/SnackbarData;",
        "setCurrentSnackbarData",
        "(Landroidx/compose/material/SnackbarData;)V",
        "currentSnackbarData$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "showSnackbar",
        "Landroidx/compose/material/SnackbarResult;",
        "message",
        "",
        "actionLabel",
        "duration",
        "Landroidx/compose/material/SnackbarDuration;",
        "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/material/SnackbarDuration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "SnackbarDataImpl",
        "material_release"
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
.field private final currentSnackbarData$delegate:Landroidx/compose/runtime/MutableState;

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/SnackbarHostState;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 75
    const/4 v0, 0x2

    invoke-static {v2, v2, v0, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/SnackbarHostState;->currentSnackbarData$delegate:Landroidx/compose/runtime/MutableState;

    .line 63
    return-void
.end method

.method public static final synthetic access$setCurrentSnackbarData(Landroidx/compose/material/SnackbarHostState;Landroidx/compose/material/SnackbarData;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/material/SnackbarHostState;
    .param p1, "<set-?>"    # Landroidx/compose/material/SnackbarData;

    .line 62
    invoke-direct {p0, p1}, Landroidx/compose/material/SnackbarHostState;->setCurrentSnackbarData(Landroidx/compose/material/SnackbarData;)V

    return-void
.end method

.method private final setCurrentSnackbarData(Landroidx/compose/material/SnackbarData;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/material/SnackbarData;

    .line 75
    iget-object v0, p0, Landroidx/compose/material/SnackbarHostState;->currentSnackbarData$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 383
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 384
    nop

    .line 75
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public static synthetic showSnackbar$default(Landroidx/compose/material/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/material/SnackbarDuration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 103
    const/4 p2, 0x0

    .line 101
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 104
    sget-object p3, Landroidx/compose/material/SnackbarDuration;->Short:Landroidx/compose/material/SnackbarDuration;

    .line 101
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material/SnackbarHostState;->showSnackbar(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/material/SnackbarDuration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCurrentSnackbarData()Landroidx/compose/material/SnackbarData;
    .locals 3

    .line 75
    iget-object v0, p0, Landroidx/compose/material/SnackbarHostState;->currentSnackbarData$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 382
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/material/SnackbarData;

    .line 75
    return-object v0
.end method

.method public final showSnackbar(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/material/SnackbarDuration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/compose/material/SnackbarDuration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material/SnackbarResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;

    iget v2, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;-><init>(Landroidx/compose/material/SnackbarHostState;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 101
    iget v4, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    move-object/from16 v18, v1

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v4, 0x0

    .local v4, "$i$f$withLock":I
    const/4 v5, 0x0

    .local v5, "$i$a$-withLock$default-SnackbarHostState$showSnackbar$2":I
    const/4 v0, 0x0

    .local v0, "$i$f$suspendCancellableCoroutine":I
    iget-object v7, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$5:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;

    iget-object v7, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$3:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/material/SnackbarDuration;

    iget-object v8, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v8, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v8, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/material/SnackbarHostState;

    .local v8, "this":Landroidx/compose/material/SnackbarHostState;
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v1

    move-object v2, v3

    move-object/from16 v17, v2

    move-object v10, v6

    goto/16 :goto_2

    .line 111
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    :catchall_0
    move-exception v0

    move-object v9, v6

    .local v9, "owner$iv":Ljava/lang/Object;
    move-object/from16 v18, v1

    move-object/from16 v17, v3

    .local v7, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    goto/16 :goto_3

    .line 101
    .end local v4    # "$i$f$withLock":I
    .end local v5    # "$i$a$-withLock$default-SnackbarHostState$showSnackbar$2":I
    .end local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v8    # "this":Landroidx/compose/material/SnackbarHostState;
    .end local v9    # "owner$iv":Ljava/lang/Object;
    :pswitch_1
    const/4 v4, 0x0

    .restart local v4    # "$i$f$withLock":I
    const/4 v7, 0x0

    .local v7, "owner$iv":Ljava/lang/Object;
    iget-object v8, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    .local v8, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v9, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$3:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/material/SnackbarDuration;

    .local v9, "duration":Landroidx/compose/material/SnackbarDuration;
    iget-object v10, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .local v10, "actionLabel":Ljava/lang/String;
    iget-object v11, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .local v11, "message":Ljava/lang/String;
    iget-object v12, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$0:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/material/SnackbarHostState;

    .local v12, "this":Landroidx/compose/material/SnackbarHostState;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v19, v10

    move-object v10, v7

    move-object v7, v8

    move-object v8, v12

    move-object v12, v11

    move-object/from16 v11, v19

    goto :goto_1

    .end local v4    # "$i$f$withLock":I
    .end local v7    # "owner$iv":Ljava/lang/Object;
    .end local v8    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v9    # "duration":Landroidx/compose/material/SnackbarDuration;
    .end local v10    # "actionLabel":Ljava/lang/String;
    .end local v11    # "message":Ljava/lang/String;
    .end local v12    # "this":Landroidx/compose/material/SnackbarHostState;
    :pswitch_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Landroidx/compose/material/SnackbarHostState;
    move-object/from16 v10, p2

    .restart local v10    # "actionLabel":Ljava/lang/String;
    move-object/from16 v11, p1

    .restart local v11    # "message":Ljava/lang/String;
    move-object/from16 v9, p3

    .line 105
    .restart local v9    # "duration":Landroidx/compose/material/SnackbarDuration;
    iget-object v7, v4, Landroidx/compose/material/SnackbarHostState;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 385
    .local v7, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    const/4 v8, 0x0

    .local v8, "owner$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 386
    .local v12, "$i$f$withLock":I
    nop

    .line 390
    iput-object v4, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$3:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$4:Ljava/lang/Object;

    iput v5, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->label:I

    invoke-interface {v7, v8, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_1

    .line 101
    return-object v0

    .line 390
    :cond_1
    move-object/from16 v19, v8

    move-object v8, v4

    move v4, v12

    move-object v12, v11

    move-object v11, v10

    move-object/from16 v10, v19

    .line 391
    .local v4, "$i$f$withLock":I
    .local v8, "this":Landroidx/compose/material/SnackbarHostState;
    .local v10, "owner$iv":Ljava/lang/Object;
    .local v11, "actionLabel":Ljava/lang/String;
    .local v12, "message":Ljava/lang/String;
    :goto_1
    nop

    .line 392
    const/4 v13, 0x0

    .line 106
    .local v13, "$i$a$-withLock$default-SnackbarHostState$showSnackbar$2":I
    move-object v14, v1

    .line 107
    .local v14, "$completion$iv":Lkotlin/coroutines/Continuation;
    const/4 v15, 0x0

    .line 393
    .local v15, "$i$f$suspendCancellableCoroutine":I
    :try_start_1
    iput-object v8, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$3:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$4:Ljava/lang/Object;

    iput-object v14, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$5:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->label:I

    move-object v6, v14

    check-cast v6, Lkotlin/coroutines/Continuation;

    .local v6, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/16 v16, 0x0

    .line 394
    .local v16, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v5, Lkotlinx/coroutines/CancellableContinuationImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v18, v1

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v18, "$continuation":Lkotlin/coroutines/Continuation;
    :try_start_2
    invoke-static {v6}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v5, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v1, v5

    .line 400
    .local v1, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 401
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .local v2, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 108
    .local v5, "$i$a$-suspendCancellableCoroutine-SnackbarHostState$showSnackbar$2$1":I
    move-object/from16 v17, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .local v17, "$result":Ljava/lang/Object;
    :try_start_3
    new-instance v3, Landroidx/compose/material/SnackbarHostState$SnackbarDataImpl;

    invoke-direct {v3, v12, v11, v9, v2}, Landroidx/compose/material/SnackbarHostState$SnackbarDataImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/material/SnackbarDuration;Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v3, Landroidx/compose/material/SnackbarData;

    invoke-static {v8, v3}, Landroidx/compose/material/SnackbarHostState;->access$setCurrentSnackbarData(Landroidx/compose/material/SnackbarHostState;Landroidx/compose/material/SnackbarData;)V

    .line 109
    .end local v9    # "duration":Landroidx/compose/material/SnackbarDuration;
    .end local v11    # "actionLabel":Ljava/lang/String;
    .end local v12    # "message":Ljava/lang/String;
    nop

    .line 401
    .end local v2    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-SnackbarHostState$showSnackbar$2$1":I
    nop

    .line 402
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 393
    .end local v1    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v6    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v16    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_2

    move-object v1, v14

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v14    # "$completion$iv":Lkotlin/coroutines/Continuation;
    :cond_2
    if-ne v2, v0, :cond_3

    .line 101
    return-object v0

    .line 393
    :cond_3
    move v5, v13

    move v0, v15

    .line 403
    .end local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v10    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-withLock$default-SnackbarHostState$showSnackbar$2":I
    .end local v15    # "$i$f$suspendCancellableCoroutine":I
    .restart local v0    # "$i$f$suspendCancellableCoroutine":I
    .local v5, "$i$a$-withLock$default-SnackbarHostState$showSnackbar$2":I
    :goto_2
    nop

    .line 111
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {v8, v1}, Landroidx/compose/material/SnackbarHostState;->setCurrentSnackbarData(Landroidx/compose/material/SnackbarData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    .end local v4    # "$i$f$withLock":I
    .end local v5    # "$i$a$-withLock$default-SnackbarHostState$showSnackbar$2":I
    .end local v8    # "this":Landroidx/compose/material/SnackbarHostState;
    nop

    .line 404
    invoke-interface {v7, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v2

    .restart local v4    # "$i$f$withLock":I
    :catchall_1
    move-exception v0

    move-object v1, v10

    .local v1, "owner$iv":Ljava/lang/Object;
    move-object v2, v7

    .local v2, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    goto :goto_4

    .line 111
    .end local v1    # "owner$iv":Ljava/lang/Object;
    .end local v2    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v8    # "this":Landroidx/compose/material/SnackbarHostState;
    .restart local v10    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$i$a$-withLock$default-SnackbarHostState$showSnackbar$2":I
    :catchall_2
    move-exception v0

    move-object v9, v10

    move v5, v13

    goto :goto_3

    .end local v17    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v3

    move-object v9, v10

    move v5, v13

    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v17    # "$result":Ljava/lang/Object;
    goto :goto_3

    .end local v17    # "$result":Ljava/lang/Object;
    .end local v18    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v17, v3

    move-object v9, v10

    move v5, v13

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v10    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-withLock$default-SnackbarHostState$showSnackbar$2":I
    .restart local v5    # "$i$a$-withLock$default-SnackbarHostState$showSnackbar$2":I
    .local v9, "owner$iv":Ljava/lang/Object;
    .restart local v17    # "$result":Ljava/lang/Object;
    .restart local v18    # "$continuation":Lkotlin/coroutines/Continuation;
    :goto_3
    const/4 v1, 0x0

    :try_start_5
    invoke-direct {v8, v1}, Landroidx/compose/material/SnackbarHostState;->setCurrentSnackbarData(Landroidx/compose/material/SnackbarData;)V

    .end local v4    # "$i$f$withLock":I
    .end local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v8    # "this":Landroidx/compose/material/SnackbarHostState;
    .end local v9    # "owner$iv":Ljava/lang/Object;
    .end local v17    # "$result":Ljava/lang/Object;
    .end local v18    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 404
    .end local v5    # "$i$a$-withLock$default-SnackbarHostState$showSnackbar$2":I
    .restart local v4    # "$i$f$withLock":I
    .restart local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v9    # "owner$iv":Ljava/lang/Object;
    .restart local v17    # "$result":Ljava/lang/Object;
    .restart local v18    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_5
    move-exception v0

    move-object v2, v7

    move-object v1, v9

    .end local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v9    # "owner$iv":Ljava/lang/Object;
    .local v1, "owner$iv":Ljava/lang/Object;
    .restart local v2    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :goto_4
    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
