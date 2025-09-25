.class public final Landroidx/datastore/core/DataStoreImpl;
.super Ljava/lang/Object;
.source "DataStoreImpl.kt"

# interfaces
.implements Landroidx/datastore/core/DataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/DataStoreImpl$Companion;,
        Landroidx/datastore/core/DataStoreImpl$InitDataStore;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/DataStore<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 R*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002RSBn\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012?\u0008\u0002\u0010\u0005\u001a9\u00125\u00123\u0008\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00070\u0006\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013JG\u00100\u001a\u0002H1\"\u0004\u0008\u0001\u001012\u0006\u00102\u001a\u0002032\u001c\u00104\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H10\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e05H\u0082@\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u00a2\u0006\u0002\u00106J\u001c\u00107\u001a\u00020\r2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00028\u00000/H\u0082@\u00a2\u0006\u0002\u00109J\u000e\u0010:\u001a\u00020\rH\u0082@\u00a2\u0006\u0002\u0010;J\u001c\u0010<\u001a\u0008\u0012\u0004\u0012\u00028\u00000=2\u0006\u0010>\u001a\u000203H\u0082@\u00a2\u0006\u0002\u0010?J\u000e\u0010@\u001a\u00028\u0000H\u0082@\u00a2\u0006\u0002\u0010;J\u001c\u0010A\u001a\u0008\u0012\u0004\u0012\u00028\u00000B2\u0006\u00102\u001a\u000203H\u0082@\u00a2\u0006\u0002\u0010?J\u001c\u0010C\u001a\u0008\u0012\u0004\u0012\u00028\u00000=2\u0006\u0010>\u001a\u000203H\u0082@\u00a2\u0006\u0002\u0010?JI\u0010D\u001a\u00028\u000021\u0010E\u001a-\u0008\u0001\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(F\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00072\u0006\u0010G\u001a\u00020HH\u0082@\u00a2\u0006\u0002\u0010IJA\u0010J\u001a\u00028\u000021\u0010E\u001a-\u0008\u0001\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(F\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0007H\u0096@\u00a2\u0006\u0002\u0010KJ \u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00028\u00002\u0006\u0010O\u001a\u000203H\u0080@\u00a2\u0006\u0004\u0008P\u0010QR\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010!\u001a\u000c0\"R\u0008\u0012\u0004\u0012\u00028\u00000\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000$8@X\u0080\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008\'\u0010(*\u0004\u0008%\u0010&R\u001a\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000$0*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\r0,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010-\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000/0.X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "Landroidx/datastore/core/DataStoreImpl;",
        "T",
        "Landroidx/datastore/core/DataStore;",
        "storage",
        "Landroidx/datastore/core/Storage;",
        "initTasksList",
        "",
        "Lkotlin/Function2;",
        "Landroidx/datastore/core/InitializerApi;",
        "Lkotlin/ParameterName;",
        "name",
        "api",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "corruptionHandler",
        "Landroidx/datastore/core/CorruptionHandler;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V",
        "coordinator",
        "Landroidx/datastore/core/InterProcessCoordinator;",
        "getCoordinator",
        "()Landroidx/datastore/core/InterProcessCoordinator;",
        "coordinator$delegate",
        "Lkotlin/Lazy;",
        "data",
        "Lkotlinx/coroutines/flow/Flow;",
        "getData",
        "()Lkotlinx/coroutines/flow/Flow;",
        "inMemoryCache",
        "Landroidx/datastore/core/DataStoreInMemoryCache;",
        "internalDataFlow",
        "readAndInit",
        "Landroidx/datastore/core/DataStoreImpl$InitDataStore;",
        "storageConnection",
        "Landroidx/datastore/core/StorageConnection;",
        "getStorageConnection$datastore_core_release$delegate",
        "(Landroidx/datastore/core/DataStoreImpl;)Ljava/lang/Object;",
        "getStorageConnection$datastore_core_release",
        "()Landroidx/datastore/core/StorageConnection;",
        "storageConnectionDelegate",
        "Lkotlin/Lazy;",
        "updateCollection",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "writeActor",
        "Landroidx/datastore/core/SimpleActor;",
        "Landroidx/datastore/core/Message$Update;",
        "doWithWriteFileLock",
        "R",
        "hasWriteFileLock",
        "",
        "block",
        "Lkotlin/Function1;",
        "(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleUpdate",
        "update",
        "(Landroidx/datastore/core/Message$Update;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readAndInitOrPropagateAndThrowFailure",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readDataAndUpdateCache",
        "Landroidx/datastore/core/State;",
        "requireLock",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readDataFromFileOrDefault",
        "readDataOrHandleCorruption",
        "Landroidx/datastore/core/Data;",
        "readState",
        "transformAndWrite",
        "transform",
        "t",
        "callerContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateData",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeData",
        "",
        "newData",
        "updateCache",
        "writeData$datastore_core_release",
        "(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "InitDataStore",
        "datastore-core_release"
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
.field private static final BUG_MESSAGE:Ljava/lang/String; = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

.field public static final Companion:Landroidx/datastore/core/DataStoreImpl$Companion;


# instance fields
.field private final coordinator$delegate:Lkotlin/Lazy;

.field private final corruptionHandler:Landroidx/datastore/core/CorruptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/CorruptionHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final data:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final inMemoryCache:Landroidx/datastore/core/DataStoreInMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/DataStoreInMemoryCache<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final internalDataFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final readAndInit:Landroidx/datastore/core/DataStoreImpl$InitDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/DataStoreImpl<",
            "TT;>.InitDataStore;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final storage:Landroidx/datastore/core/Storage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/Storage<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final storageConnectionDelegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroidx/datastore/core/StorageConnection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final updateCollection:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final writeActor:Landroidx/datastore/core/SimpleActor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/SimpleActor<",
            "Landroidx/datastore/core/Message$Update<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/core/DataStoreImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/core/DataStoreImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/datastore/core/DataStoreImpl;->Companion:Landroidx/datastore/core/DataStoreImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 8
    .param p1, "storage"    # Landroidx/datastore/core/Storage;
    .param p2, "initTasksList"    # Ljava/util/List;
    .param p3, "corruptionHandler"    # Landroidx/datastore/core/CorruptionHandler;
    .param p4, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/Storage<",
            "TT;>;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/datastore/core/InitializerApi<",
            "TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroidx/datastore/core/CorruptionHandler<",
            "TT;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initTasksList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "corruptionHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->storage:Landroidx/datastore/core/Storage;

    .line 68
    iput-object p3, p0, Landroidx/datastore/core/DataStoreImpl;->corruptionHandler:Landroidx/datastore/core/CorruptionHandler;

    .line 69
    iput-object p4, p0, Landroidx/datastore/core/DataStoreImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 88
    nop

    .line 77
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$updateCollection$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/datastore/core/DataStoreImpl$updateCollection$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 89
    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 90
    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    .line 91
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v4

    .line 92
    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v6}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v6

    .line 90
    invoke-static {v3, v4, v5, v6, v7}, Lkotlinx/coroutines/flow/SharingStartedKt;->WhileSubscribed-5qebJ5I(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJ)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v3

    .line 94
    nop

    .line 88
    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->updateCollection:Lkotlinx/coroutines/flow/SharedFlow;

    .line 101
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$internalDataFlow$1;

    invoke-direct {v0, p0, v1}, Landroidx/datastore/core/DataStoreImpl$internalDataFlow$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->internalDataFlow:Lkotlinx/coroutines/flow/Flow;

    .line 150
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$data$1;

    invoke-direct {v0, p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->channelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->data:Lkotlinx/coroutines/flow/Flow;

    .line 182
    new-instance v0, Landroidx/datastore/core/DataStoreInMemoryCache;

    invoke-direct {v0}, Landroidx/datastore/core/DataStoreInMemoryCache;-><init>()V

    iput-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->inMemoryCache:Landroidx/datastore/core/DataStoreInMemoryCache;

    .line 184
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore;

    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$InitDataStore;-><init>(Landroidx/datastore/core/DataStoreImpl;Ljava/util/List;)V

    iput-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->readAndInit:Landroidx/datastore/core/DataStoreImpl$InitDataStore;

    .line 188
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$storageConnectionDelegate$1;

    invoke-direct {v0, p0}, Landroidx/datastore/core/DataStoreImpl$storageConnectionDelegate$1;-><init>(Landroidx/datastore/core/DataStoreImpl;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->storageConnectionDelegate:Lkotlin/Lazy;

    .line 191
    nop

    .line 192
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$coordinator$2;

    invoke-direct {v0, p0}, Landroidx/datastore/core/DataStoreImpl$coordinator$2;-><init>(Landroidx/datastore/core/DataStoreImpl;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->coordinator$delegate:Lkotlin/Lazy;

    .line 194
    new-instance v0, Landroidx/datastore/core/SimpleActor;

    .line 195
    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 196
    new-instance v3, Landroidx/datastore/core/DataStoreImpl$writeActor$1;

    invoke-direct {v3, p0}, Landroidx/datastore/core/DataStoreImpl$writeActor$1;-><init>(Landroidx/datastore/core/DataStoreImpl;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 207
    sget-object v4, Landroidx/datastore/core/DataStoreImpl$writeActor$2;->INSTANCE:Landroidx/datastore/core/DataStoreImpl$writeActor$2;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 214
    new-instance v5, Landroidx/datastore/core/DataStoreImpl$writeActor$3;

    invoke-direct {v5, p0, v1}, Landroidx/datastore/core/DataStoreImpl$writeActor$3;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 194
    invoke-direct {v0, v2, v3, v4, v5}, Landroidx/datastore/core/SimpleActor;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->writeActor:Landroidx/datastore/core/SimpleActor;

    .line 53
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 53
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 62
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 53
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 68
    new-instance p3, Landroidx/datastore/core/handlers/NoOpCorruptionHandler;

    invoke-direct {p3}, Landroidx/datastore/core/handlers/NoOpCorruptionHandler;-><init>()V

    check-cast p3, Landroidx/datastore/core/CorruptionHandler;

    .line 53
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 69
    invoke-static {}, Landroidx/datastore/core/Actual_jvmKt;->ioDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    const/4 p5, 0x1

    const/4 p6, 0x0

    invoke-static {p6, p5, p6}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p5

    check-cast p5, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p4, p5}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    .line 53
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/datastore/core/DataStoreImpl;-><init>(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V

    .line 488
    return-void
.end method

.method public static final synthetic access$doWithWriteFileLock(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;
    .param p1, "hasWriteFileLock"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/core/DataStoreImpl;->doWithWriteFileLock(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCoordinator(Landroidx/datastore/core/DataStoreImpl;)Landroidx/datastore/core/InterProcessCoordinator;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;

    .line 53
    invoke-direct {p0}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getInMemoryCache$p(Landroidx/datastore/core/DataStoreImpl;)Landroidx/datastore/core/DataStoreInMemoryCache;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;

    .line 53
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->inMemoryCache:Landroidx/datastore/core/DataStoreInMemoryCache;

    return-object v0
.end method

.method public static final synthetic access$getInternalDataFlow$p(Landroidx/datastore/core/DataStoreImpl;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;

    .line 53
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->internalDataFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public static final synthetic access$getReadAndInit$p(Landroidx/datastore/core/DataStoreImpl;)Landroidx/datastore/core/DataStoreImpl$InitDataStore;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;

    .line 53
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->readAndInit:Landroidx/datastore/core/DataStoreImpl$InitDataStore;

    return-object v0
.end method

.method public static final synthetic access$getStorage$p(Landroidx/datastore/core/DataStoreImpl;)Landroidx/datastore/core/Storage;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;

    .line 53
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->storage:Landroidx/datastore/core/Storage;

    return-object v0
.end method

.method public static final synthetic access$getStorageConnectionDelegate$p(Landroidx/datastore/core/DataStoreImpl;)Lkotlin/Lazy;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;

    .line 53
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->storageConnectionDelegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getUpdateCollection$p(Landroidx/datastore/core/DataStoreImpl;)Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;

    .line 53
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->updateCollection:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public static final synthetic access$getWriteActor$p(Landroidx/datastore/core/DataStoreImpl;)Landroidx/datastore/core/SimpleActor;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;

    .line 53
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->writeActor:Landroidx/datastore/core/SimpleActor;

    return-object v0
.end method

.method public static final synthetic access$handleUpdate(Landroidx/datastore/core/DataStoreImpl;Landroidx/datastore/core/Message$Update;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;
    .param p1, "update"    # Landroidx/datastore/core/Message$Update;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl;->handleUpdate(Landroidx/datastore/core/Message$Update;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readAndInitOrPropagateAndThrowFailure(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-direct {p0, p1}, Landroidx/datastore/core/DataStoreImpl;->readAndInitOrPropagateAndThrowFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readDataAndUpdateCache(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;
    .param p1, "requireLock"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl;->readDataAndUpdateCache(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readDataFromFileOrDefault(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-direct {p0, p1}, Landroidx/datastore/core/DataStoreImpl;->readDataFromFileOrDefault(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readDataOrHandleCorruption(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;
    .param p1, "hasWriteFileLock"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl;->readDataOrHandleCorruption(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readState(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;
    .param p1, "requireLock"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl;->readState(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$transformAndWrite(Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/DataStoreImpl;
    .param p1, "transform"    # Lkotlin/jvm/functions/Function2;
    .param p2, "callerContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/core/DataStoreImpl;->transformAndWrite(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final doWithWriteFileLock(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "hasWriteFileLock"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 418
    nop

    .line 421
    if-eqz p1, :cond_0

    .line 422
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    .line 424
    :cond_0
    invoke-direct {p0}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object v0

    new-instance v1, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, p3}, Landroidx/datastore/core/InterProcessCoordinator;->lock(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private final getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;
    .locals 1

    .line 192
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->coordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/InterProcessCoordinator;

    return-object v0
.end method

.method private static getStorageConnection$datastore_core_release$delegate(Landroidx/datastore/core/DataStoreImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "<this>"    # Landroidx/datastore/core/DataStoreImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStoreImpl<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->storageConnectionDelegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final handleUpdate(Landroidx/datastore/core/Message$Update;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/Message$Update<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;

    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;

    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 238
    iget v2, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    iget-object v1, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CompletableDeferred;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v0

    goto/16 :goto_4

    .end local p1    # "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    :pswitch_1
    const/4 p1, 0x0

    .restart local p1    # "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    iget-object v2, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v3, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/datastore/core/DataStoreImpl;

    .local v3, "$this$handleUpdate_u24lambda_u240":Landroidx/datastore/core/DataStoreImpl;
    iget-object v4, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/datastore/core/Message$Update;

    .local v4, "update":Landroidx/datastore/core/Message$Update;
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 240
    .end local v3    # "$this$handleUpdate_u24lambda_u240":Landroidx/datastore/core/DataStoreImpl;
    .end local v4    # "update":Landroidx/datastore/core/Message$Update;
    .end local p1    # "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    :catchall_0
    move-exception p1

    move-object v1, v2

    goto/16 :goto_7

    .line 238
    :pswitch_2
    const/4 p1, 0x0

    .restart local p1    # "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    iget-object v1, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CompletableDeferred;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v0

    goto :goto_1

    .line 240
    .end local p1    # "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    :catchall_1
    move-exception p1

    goto/16 :goto_7

    .line 238
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .local v2, "this":Landroidx/datastore/core/DataStoreImpl;
    move-object v4, p1

    .line 239
    .restart local v4    # "update":Landroidx/datastore/core/Message$Update;
    invoke-virtual {v4}, Landroidx/datastore/core/Message$Update;->getAck()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    .line 240
    nop

    .end local v2    # "this":Landroidx/datastore/core/DataStoreImpl;
    :try_start_3
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v2, Landroidx/datastore/core/DataStoreImpl;

    move-object v3, v2

    .restart local v3    # "$this$handleUpdate_u24lambda_u240":Landroidx/datastore/core/DataStoreImpl;
    const/4 v2, 0x0

    .line 241
    .local v2, "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    nop

    .line 242
    iget-object v5, v3, Landroidx/datastore/core/DataStoreImpl;->inMemoryCache:Landroidx/datastore/core/DataStoreInMemoryCache;

    invoke-virtual {v5}, Landroidx/datastore/core/DataStoreInMemoryCache;->getCurrentState()Landroidx/datastore/core/State;

    move-result-object v5

    .line 243
    .local v5, "currentState":Landroidx/datastore/core/State;
    instance-of v6, v5, Landroidx/datastore/core/Data;

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 245
    .end local v5    # "currentState":Landroidx/datastore/core/State;
    invoke-virtual {v4}, Landroidx/datastore/core/Message$Update;->getTransform()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/datastore/core/Message$Update;->getCallerContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    iput-object p1, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$0:Ljava/lang/Object;

    iput v7, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    invoke-direct {v3, v5, v6, p2}, Landroidx/datastore/core/DataStoreImpl;->transformAndWrite(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v3    # "$this$handleUpdate_u24lambda_u240":Landroidx/datastore/core/DataStoreImpl;
    .end local v4    # "update":Landroidx/datastore/core/Message$Update;
    if-ne v5, v1, :cond_1

    .line 238
    return-object v1

    .line 245
    :cond_1
    move-object v1, p1

    move p1, v2

    .end local v2    # "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    .restart local p1    # "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    :goto_1
    move-object v2, v5

    .local v2, "result":Ljava/lang/Object;
    goto :goto_5

    .line 248
    .end local p1    # "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    .local v2, "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    .restart local v3    # "$this$handleUpdate_u24lambda_u240":Landroidx/datastore/core/DataStoreImpl;
    .restart local v4    # "update":Landroidx/datastore/core/Message$Update;
    .restart local v5    # "currentState":Landroidx/datastore/core/State;
    :cond_2
    instance-of v6, v5, Landroidx/datastore/core/ReadException;

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    instance-of v7, v5, Landroidx/datastore/core/UnInitialized;

    :goto_2
    if-eqz v7, :cond_7

    .line 249
    invoke-virtual {v4}, Landroidx/datastore/core/Message$Update;->getLastState()Landroidx/datastore/core/State;

    move-result-object v6

    if-ne v5, v6, :cond_6

    .line 251
    .end local v5    # "currentState":Landroidx/datastore/core/State;
    iput-object v4, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$1:Ljava/lang/Object;

    iput-object p1, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    invoke-direct {v3, p2}, Landroidx/datastore/core/DataStoreImpl;->readAndInitOrPropagateAndThrowFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v5, v1, :cond_4

    .line 238
    return-object v1

    .line 251
    :cond_4
    move v8, v2

    move-object v2, p1

    move p1, v8

    .line 254
    .end local v2    # "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    .restart local p1    # "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Landroidx/datastore/core/Message$Update;->getTransform()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/datastore/core/Message$Update;->getCallerContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    iput-object v2, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$1:Ljava/lang/Object;

    iput-object v7, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    invoke-direct {v3, v5, v6, p2}, Landroidx/datastore/core/DataStoreImpl;->transformAndWrite(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "$this$handleUpdate_u24lambda_u240":Landroidx/datastore/core/DataStoreImpl;
    .end local v4    # "update":Landroidx/datastore/core/Message$Update;
    if-ne v5, v1, :cond_5

    .line 238
    return-object v1

    .line 254
    :cond_5
    move-object v1, v2

    :goto_4
    move-object v2, v5

    .line 266
    .local v2, "result":Ljava/lang/Object;
    :goto_5
    nop

    .line 240
    .end local v2    # "result":Ljava/lang/Object;
    .end local p1    # "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    :try_start_5
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    .line 260
    .local v2, "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    .restart local v5    # "currentState":Landroidx/datastore/core/State;
    :cond_6
    :try_start_6
    const-string/jumbo v1, "null cannot be cast to non-null type androidx.datastore.core.ReadException<T of androidx.datastore.core.DataStoreImpl.handleUpdate$lambda$0>"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v5

    check-cast v1, Landroidx/datastore/core/ReadException;

    invoke-virtual {v1}, Landroidx/datastore/core/ReadException;->getReadException()Ljava/lang/Throwable;

    move-result-object v1

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v1

    .line 264
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_7
    instance-of v1, v5, Landroidx/datastore/core/Final;

    if-eqz v1, :cond_8

    move-object v1, v5

    check-cast v1, Landroidx/datastore/core/Final;

    invoke-virtual {v1}, Landroidx/datastore/core/Final;->getFinalException()Ljava/lang/Throwable;

    move-result-object v1

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :goto_6
    throw v1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_8
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    .line 240
    .end local v2    # "$i$a$-runCatching-DataStoreImpl$handleUpdate$2":I
    .end local v5    # "currentState":Landroidx/datastore/core/State;
    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_7
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 239
    :goto_8
    invoke-static {v1, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->completeWith(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Object;)Z

    .line 269
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readAndInitOrPropagateAndThrowFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;

    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 271
    iget v2, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget v1, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->I$0:I

    .local v1, "preReadVersion":I
    iget-object v2, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/core/DataStoreImpl;

    .local v2, "this":Landroidx/datastore/core/DataStoreImpl;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 275
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 271
    .end local v1    # "preReadVersion":I
    .end local v2    # "this":Landroidx/datastore/core/DataStoreImpl;
    :pswitch_1
    iget-object v2, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/core/DataStoreImpl;

    .restart local v2    # "this":Landroidx/datastore/core/DataStoreImpl;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_1

    .end local v2    # "this":Landroidx/datastore/core/DataStoreImpl;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 272
    .restart local v2    # "this":Landroidx/datastore/core/DataStoreImpl;
    invoke-direct {v2}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object v3

    iput-object v2, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->label:I

    invoke-interface {v3, p1}, Landroidx/datastore/core/InterProcessCoordinator;->getVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 271
    return-object v1

    .line 272
    :cond_1
    :goto_1
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 273
    .local v3, "preReadVersion":I
    nop

    .line 274
    :try_start_1
    iget-object v4, v2, Landroidx/datastore/core/DataStoreImpl;->readAndInit:Landroidx/datastore/core/DataStoreImpl$InitDataStore;

    iput-object v2, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->I$0:I

    const/4 v5, 0x2

    iput v5, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->label:I

    invoke-virtual {v4, p1}, Landroidx/datastore/core/DataStoreImpl$InitDataStore;->runIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v1, :cond_2

    .line 271
    return-object v1

    .line 274
    :cond_2
    move v1, v3

    .end local v3    # "preReadVersion":I
    .restart local v1    # "preReadVersion":I
    :goto_2
    nop

    .line 279
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 275
    .end local v1    # "preReadVersion":I
    .restart local v3    # "preReadVersion":I
    :catchall_1
    move-exception v1

    move v6, v3

    move-object v3, v1

    move v1, v6

    .line 276
    .restart local v1    # "preReadVersion":I
    .local v3, "throwable":Ljava/lang/Throwable;
    :goto_3
    iget-object v4, v2, Landroidx/datastore/core/DataStoreImpl;->inMemoryCache:Landroidx/datastore/core/DataStoreInMemoryCache;

    new-instance v5, Landroidx/datastore/core/ReadException;

    invoke-direct {v5, v3, v1}, Landroidx/datastore/core/ReadException;-><init>(Ljava/lang/Throwable;I)V

    check-cast v5, Landroidx/datastore/core/State;

    invoke-virtual {v4, v5}, Landroidx/datastore/core/DataStoreInMemoryCache;->tryUpdate(Landroidx/datastore/core/State;)Landroidx/datastore/core/State;

    .line 277
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readDataAndUpdateCache(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/datastore/core/State<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;

    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;

    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 288
    iget v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/datastore/core/DataStoreImpl;

    .local p1, "this":Landroidx/datastore/core/DataStoreImpl;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    goto/16 :goto_4

    .end local p1    # "this":Landroidx/datastore/core/DataStoreImpl;
    :pswitch_1
    iget-object p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/datastore/core/DataStoreImpl;

    .restart local p1    # "this":Landroidx/datastore/core/DataStoreImpl;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    goto/16 :goto_3

    .end local p1    # "this":Landroidx/datastore/core/DataStoreImpl;
    :pswitch_2
    iget-boolean p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->Z$0:Z

    .local p1, "requireLock":Z
    iget-object v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/core/State;

    .local v2, "currentState":Landroidx/datastore/core/State;
    iget-object v3, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/datastore/core/DataStoreImpl;

    .local v3, "this":Landroidx/datastore/core/DataStoreImpl;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v0

    move-object v7, v2

    move v2, p1

    move-object p1, v3

    move-object v3, v7

    goto :goto_1

    .end local v2    # "currentState":Landroidx/datastore/core/State;
    .end local v3    # "this":Landroidx/datastore/core/DataStoreImpl;
    .end local p1    # "requireLock":Z
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 290
    .local v2, "this":Landroidx/datastore/core/DataStoreImpl;
    .restart local p1    # "requireLock":Z
    iget-object v3, v2, Landroidx/datastore/core/DataStoreImpl;->inMemoryCache:Landroidx/datastore/core/DataStoreInMemoryCache;

    invoke-virtual {v3}, Landroidx/datastore/core/DataStoreInMemoryCache;->getCurrentState()Landroidx/datastore/core/State;

    move-result-object v3

    .line 292
    .local v3, "currentState":Landroidx/datastore/core/State;
    instance-of v4, v3, Landroidx/datastore/core/UnInitialized;

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_8

    .line 295
    invoke-direct {v2}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object v4

    iput-object v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->Z$0:Z

    iput v5, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    invoke-interface {v4, p2}, Landroidx/datastore/core/InterProcessCoordinator;->getVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 288
    return-object v1

    .line 295
    :cond_1
    move-object v7, v2

    move v2, p1

    move-object p1, v7

    .local v2, "requireLock":Z
    .local p1, "this":Landroidx/datastore/core/DataStoreImpl;
    :goto_1
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 296
    .local v4, "latestVersion":I
    instance-of v5, v3, Landroidx/datastore/core/Data;

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroidx/datastore/core/State;->getVersion()I

    move-result v5

    goto :goto_2

    :cond_2
    const/4 v5, -0x1

    .line 299
    .local v5, "cachedVersion":I
    :goto_2
    instance-of v6, v3, Landroidx/datastore/core/Data;

    if-eqz v6, :cond_3

    if-ne v4, v5, :cond_3

    .line 300
    .end local v2    # "requireLock":Z
    .end local v4    # "latestVersion":I
    .end local v5    # "cachedVersion":I
    .end local p1    # "this":Landroidx/datastore/core/DataStoreImpl;
    return-object v3

    .line 303
    .end local v3    # "currentState":Landroidx/datastore/core/State;
    .restart local v2    # "requireLock":Z
    .restart local v5    # "cachedVersion":I
    .restart local p1    # "this":Landroidx/datastore/core/DataStoreImpl;
    :cond_3
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 304
    .end local v2    # "requireLock":Z
    .end local v5    # "cachedVersion":I
    invoke-direct {p1}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object v2

    new-instance v4, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$3;

    invoke-direct {v4, p1, v3}, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$3;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iput-object p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    invoke-interface {v2, v4, p2}, Landroidx/datastore/core/InterProcessCoordinator;->lock(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    .line 288
    return-object v1

    .line 304
    :cond_4
    :goto_3
    check-cast v2, Lkotlin/Pair;

    goto :goto_5

    .line 312
    .restart local v5    # "cachedVersion":I
    :cond_5
    invoke-direct {p1}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object v2

    new-instance v4, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$4;

    invoke-direct {v4, p1, v5, v3}, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$4;-><init>(Landroidx/datastore/core/DataStoreImpl;ILkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    invoke-interface {v2, v4, p2}, Landroidx/datastore/core/InterProcessCoordinator;->tryLock(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v5    # "cachedVersion":I
    if-ne v2, v1, :cond_6

    .line 288
    return-object v1

    :cond_6
    :goto_4
    check-cast v2, Lkotlin/Pair;

    .line 303
    :goto_5
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/core/State;

    .line 302
    nop

    .local v1, "newState":Landroidx/datastore/core/State;
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 322
    .local v2, "acquiredLock":Z
    if-eqz v2, :cond_7

    .line 323
    .end local v2    # "acquiredLock":Z
    iget-object v2, p1, Landroidx/datastore/core/DataStoreImpl;->inMemoryCache:Landroidx/datastore/core/DataStoreInMemoryCache;

    invoke-virtual {v2, v1}, Landroidx/datastore/core/DataStoreInMemoryCache;->tryUpdate(Landroidx/datastore/core/State;)Landroidx/datastore/core/State;

    .line 325
    .end local p1    # "this":Landroidx/datastore/core/DataStoreImpl;
    :cond_7
    return-object v1

    .line 292
    .end local v1    # "newState":Landroidx/datastore/core/State;
    .local v2, "this":Landroidx/datastore/core/DataStoreImpl;
    .restart local v3    # "currentState":Landroidx/datastore/core/State;
    .local p1, "requireLock":Z
    :cond_8
    const/4 v1, 0x0

    .line 293
    .local v1, "$i$a$-check-DataStoreImpl$readDataAndUpdateCache$2":I
    nop

    .line 292
    .end local v1    # "$i$a$-check-DataStoreImpl$readDataAndUpdateCache$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readDataFromFileOrDefault(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Landroidx/datastore/core/DataStoreImpl;->getStorageConnection$datastore_core_release()Landroidx/datastore/core/StorageConnection;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/datastore/core/StorageConnectionKt;->readData(Landroidx/datastore/core/StorageConnection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final readDataOrHandleCorruption(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/datastore/core/Data<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;

    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;

    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 370
    iget v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$IntRef;

    .local p1, "version":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v1, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v1, "newData":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/core/CorruptionException;

    .local v2, "ex":Landroidx/datastore/core/CorruptionException;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_a

    .line 401
    .end local v1    # "newData":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "version":Lkotlin/jvm/internal/Ref$IntRef;
    :catchall_0
    move-exception p1

    goto/16 :goto_b

    .line 370
    .end local v2    # "ex":Landroidx/datastore/core/CorruptionException;
    :pswitch_1
    iget-boolean p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .local p1, "hasWriteFileLock":Z
    iget-object v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v6, "newData":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v7, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    check-cast v7, Landroidx/datastore/core/CorruptionException;

    .local v7, "ex":Landroidx/datastore/core/CorruptionException;
    iget-object v8, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/datastore/core/DataStoreImpl;

    .local v8, "this":Landroidx/datastore/core/DataStoreImpl;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v8

    move-object v8, v0

    goto/16 :goto_8

    .end local v6    # "newData":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "ex":Landroidx/datastore/core/CorruptionException;
    .end local v8    # "this":Landroidx/datastore/core/DataStoreImpl;
    .end local p1    # "hasWriteFileLock":Z
    :pswitch_2
    iget-boolean p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .restart local p1    # "hasWriteFileLock":Z
    iget-object v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/core/DataStoreImpl;

    .local v2, "this":Landroidx/datastore/core/DataStoreImpl;
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v0

    goto/16 :goto_5

    .end local v2    # "this":Landroidx/datastore/core/DataStoreImpl;
    .end local p1    # "hasWriteFileLock":Z
    :pswitch_3
    iget-boolean p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .restart local p1    # "hasWriteFileLock":Z
    iget-object v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/core/DataStoreImpl;

    .restart local v2    # "this":Landroidx/datastore/core/DataStoreImpl;
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v0

    goto/16 :goto_4

    .end local v2    # "this":Landroidx/datastore/core/DataStoreImpl;
    .end local p1    # "hasWriteFileLock":Z
    :pswitch_4
    iget p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->I$0:I

    iget-boolean v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .local v2, "hasWriteFileLock":Z
    iget-object v6, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    iget-object v7, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/datastore/core/DataStoreImpl;

    .local v7, "this":Landroidx/datastore/core/DataStoreImpl;
    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v8, v0

    goto :goto_3

    .line 387
    :catch_0
    move-exception v6

    move p1, v2

    move-object v8, v7

    goto/16 :goto_7

    .line 370
    .end local v2    # "hasWriteFileLock":Z
    .end local v7    # "this":Landroidx/datastore/core/DataStoreImpl;
    :pswitch_5
    iget-boolean p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .restart local p1    # "hasWriteFileLock":Z
    iget-object v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/core/DataStoreImpl;

    .local v2, "this":Landroidx/datastore/core/DataStoreImpl;
    :try_start_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v6, v0

    move-object v7, v2

    move v2, p1

    goto :goto_1

    .line 387
    :catch_1
    move-exception v6

    move-object v8, v2

    goto/16 :goto_7

    .line 370
    .end local v2    # "this":Landroidx/datastore/core/DataStoreImpl;
    .end local p1    # "hasWriteFileLock":Z
    :pswitch_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 371
    .restart local v2    # "this":Landroidx/datastore/core/DataStoreImpl;
    .restart local p1    # "hasWriteFileLock":Z
    nop

    .line 372
    if-eqz p1, :cond_4

    .line 373
    :try_start_5
    iput-object v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    iput v3, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    invoke-direct {v2, p2}, Landroidx/datastore/core/DataStoreImpl;->readDataFromFileOrDefault(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_5 .. :try_end_5} :catch_1

    if-ne v6, v1, :cond_1

    .line 370
    return-object v1

    .line 373
    :cond_1
    move-object v7, v2

    move v2, p1

    .line 370
    .end local p1    # "hasWriteFileLock":Z
    .local v2, "hasWriteFileLock":Z
    .restart local v7    # "this":Landroidx/datastore/core/DataStoreImpl;
    :goto_1
    nop

    .line 374
    .local v6, "data":Ljava/lang/Object;
    if-eqz v6, :cond_2

    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_2

    .end local v6    # "data":Ljava/lang/Object;
    :cond_2
    move p1, v5

    :goto_2
    invoke-direct {v7}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object v8

    iput-object v7, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    iput-object v6, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    iput-boolean v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    iput p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->I$0:I

    const/4 v9, 0x2

    iput v9, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    invoke-interface {v8, p2}, Landroidx/datastore/core/InterProcessCoordinator;->getVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_3

    .line 370
    return-object v1

    .line 374
    :cond_3
    :goto_3
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    new-instance v9, Landroidx/datastore/core/Data;

    invoke-direct {v9, v6, p1, v8}, Landroidx/datastore/core/Data;-><init>(Ljava/lang/Object;II)V
    :try_end_6
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    .line 376
    .end local v7    # "this":Landroidx/datastore/core/DataStoreImpl;
    .local v2, "this":Landroidx/datastore/core/DataStoreImpl;
    .restart local p1    # "hasWriteFileLock":Z
    :cond_4
    :try_start_7
    invoke-direct {v2}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object v6

    iput-object v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    const/4 v7, 0x3

    iput v7, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    invoke-interface {v6, p2}, Landroidx/datastore/core/InterProcessCoordinator;->getVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_5

    .line 370
    return-object v1

    .line 376
    :cond_5
    :goto_4
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 377
    .local v6, "preLockVersion":I
    invoke-direct {v2}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object v7

    new-instance v8, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$2;

    invoke-direct {v8, v2, v6, v4}, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$2;-><init>(Landroidx/datastore/core/DataStoreImpl;ILkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iput-object v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    const/4 v9, 0x4

    iput v9, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    invoke-interface {v7, v8, p2}, Landroidx/datastore/core/InterProcessCoordinator;->tryLock(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v6    # "preLockVersion":I
    if-ne v7, v1, :cond_6

    .line 370
    return-object v1

    .line 372
    :cond_6
    :goto_5
    move-object v9, v7

    check-cast v9, Landroidx/datastore/core/Data;
    :try_end_7
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v7, v2

    move v2, p1

    .end local p1    # "hasWriteFileLock":Z
    .local v2, "hasWriteFileLock":Z
    .restart local v7    # "this":Landroidx/datastore/core/DataStoreImpl;
    :goto_6
    return-object v9

    .line 387
    .end local v2    # "hasWriteFileLock":Z
    .end local v7    # "this":Landroidx/datastore/core/DataStoreImpl;
    .restart local v8    # "this":Landroidx/datastore/core/DataStoreImpl;
    .restart local p1    # "hasWriteFileLock":Z
    :goto_7
    move-object v2, v6

    .line 388
    .local v2, "ex":Landroidx/datastore/core/CorruptionException;
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v6, "newData":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v7, v8, Landroidx/datastore/core/DataStoreImpl;->corruptionHandler:Landroidx/datastore/core/CorruptionHandler;

    iput-object v8, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    iput-object v6, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$2:Ljava/lang/Object;

    iput-object v6, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$3:Ljava/lang/Object;

    iput-boolean p1, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    const/4 v9, 0x5

    iput v9, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    invoke-interface {v7, v2, p2}, Landroidx/datastore/core/CorruptionHandler;->handleCorruption(Landroidx/datastore/core/CorruptionException;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_7

    .line 370
    return-object v1

    .line 388
    :cond_7
    move-object v9, v8

    move-object v8, v7

    move-object v7, v2

    move-object v2, v6

    .line 370
    .end local v2    # "ex":Landroidx/datastore/core/CorruptionException;
    .end local v8    # "this":Landroidx/datastore/core/DataStoreImpl;
    .local v7, "ex":Landroidx/datastore/core/CorruptionException;
    .local v9, "this":Landroidx/datastore/core/DataStoreImpl;
    :goto_8
    iput-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 389
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 391
    .local v2, "version":Lkotlin/jvm/internal/Ref$IntRef;
    nop

    .line 392
    if-eqz p1, :cond_8

    goto :goto_9

    .end local p1    # "hasWriteFileLock":Z
    :cond_8
    move v3, v5

    :goto_9
    :try_start_8
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;

    invoke-direct {p1, v6, v9, v2, v4}, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object v7, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    iput-object v6, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    iput-object v2, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$2:Ljava/lang/Object;

    iput-object v4, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$3:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    invoke-direct {v9, v3, p1, p2}, Landroidx/datastore/core/DataStoreImpl;->doWithWriteFileLock(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v9    # "this":Landroidx/datastore/core/DataStoreImpl;
    if-ne p1, v1, :cond_9

    .line 370
    return-object v1

    .line 392
    :cond_9
    move-object p1, v2

    move-object v1, v6

    move-object v2, v7

    .end local v6    # "newData":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "ex":Landroidx/datastore/core/CorruptionException;
    .restart local v1    # "newData":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "ex":Landroidx/datastore/core/CorruptionException;
    .local p1, "version":Lkotlin/jvm/internal/Ref$IntRef;
    :goto_a
    nop

    .line 409
    .end local v2    # "ex":Landroidx/datastore/core/CorruptionException;
    new-instance v2, Landroidx/datastore/core/Data;

    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    nop

    .end local v1    # "newData":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_a
    iget v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v2, v3, v5, v1}, Landroidx/datastore/core/Data;-><init>(Ljava/lang/Object;II)V

    return-object v2

    .line 401
    .end local p1    # "version":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v7    # "ex":Landroidx/datastore/core/CorruptionException;
    :catchall_1
    move-exception p1

    move-object v2, v7

    .line 404
    .end local v7    # "ex":Landroidx/datastore/core/CorruptionException;
    .restart local v2    # "ex":Landroidx/datastore/core/CorruptionException;
    .local p1, "writeEx":Ljava/lang/Throwable;
    :goto_b
    move-object v1, v2

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 405
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readState(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "requireLock"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/datastore/core/State<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Landroidx/datastore/core/DataStoreImpl$readState$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/datastore/core/DataStoreImpl$readState$2;-><init>(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    return-object v0
.end method

.method private final transformAndWrite(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "transform"    # Lkotlin/jvm/functions/Function2;
    .param p2, "callerContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 337
    invoke-direct {p0}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object v0

    new-instance v1, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, p3}, Landroidx/datastore/core/InterProcessCoordinator;->lock(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 348
    return-object v0
.end method


# virtual methods
.method public getData()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->data:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getStorageConnection$datastore_core_release()Landroidx/datastore/core/StorageConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/core/StorageConnection<",
            "TT;>;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->storageConnectionDelegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/StorageConnection;

    return-object v0
.end method

.method public updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "transform"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 165
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Landroidx/datastore/core/UpdatingDataContextElement$Companion$Key;->INSTANCE:Landroidx/datastore/core/UpdatingDataContextElement$Companion$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/UpdatingDataContextElement;

    .line 166
    .local v0, "parentContextElement":Landroidx/datastore/core/UpdatingDataContextElement;
    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroidx/datastore/core/DataStore;

    invoke-virtual {v0, v1}, Landroidx/datastore/core/UpdatingDataContextElement;->checkNotUpdating(Landroidx/datastore/core/DataStore;)V

    .line 167
    :cond_0
    new-instance v1, Landroidx/datastore/core/UpdatingDataContextElement;

    .line 168
    nop

    .line 169
    nop

    .line 167
    invoke-direct {v1, v0, p0}, Landroidx/datastore/core/UpdatingDataContextElement;-><init>(Landroidx/datastore/core/UpdatingDataContextElement;Landroidx/datastore/core/DataStoreImpl;)V

    .line 171
    .local v1, "childContextElement":Landroidx/datastore/core/UpdatingDataContextElement;
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Landroidx/datastore/core/DataStoreImpl$updateData$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Landroidx/datastore/core/DataStoreImpl$updateData$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final writeData$datastore_core_release(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/datastore/core/DataStoreImpl$writeData$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;

    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;

    invoke-direct {v0, p0, p3}, Landroidx/datastore/core/DataStoreImpl$writeData$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Landroidx/datastore/core/DataStoreImpl$writeData$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 351
    iget v2, p3, Landroidx/datastore/core/DataStoreImpl$writeData$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p3, Landroidx/datastore/core/DataStoreImpl$writeData$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$IntRef;

    .local p1, "newVersion":Lkotlin/jvm/internal/Ref$IntRef;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p1    # "newVersion":Lkotlin/jvm/internal/Ref$IntRef;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    .local v4, "this":Landroidx/datastore/core/DataStoreImpl;
    .local p2, "updateCache":Z
    move-object v5, p1

    .line 352
    .local v5, "newData":Ljava/lang/Object;
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 356
    .restart local p1    # "newVersion":Lkotlin/jvm/internal/Ref$IntRef;
    invoke-virtual {v4}, Landroidx/datastore/core/DataStoreImpl;->getStorageConnection$datastore_core_release()Landroidx/datastore/core/StorageConnection;

    move-result-object v8

    new-instance v9, Landroidx/datastore/core/DataStoreImpl$writeData$2;

    const/4 v10, 0x1

    if-eqz p2, :cond_1

    move v6, v10

    goto :goto_1

    .end local v4    # "this":Landroidx/datastore/core/DataStoreImpl;
    .end local v5    # "newData":Ljava/lang/Object;
    .end local p2    # "updateCache":Z
    :cond_1
    const/4 p2, 0x0

    move v6, p2

    :goto_1
    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroidx/datastore/core/DataStoreImpl$writeData$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/datastore/core/DataStoreImpl;Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object p1, p3, Landroidx/datastore/core/DataStoreImpl$writeData$1;->L$0:Ljava/lang/Object;

    iput v10, p3, Landroidx/datastore/core/DataStoreImpl$writeData$1;->label:I

    invoke-interface {v8, v9, p3}, Landroidx/datastore/core/StorageConnection;->writeScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_2

    .line 351
    return-object v1

    .line 367
    :cond_2
    :goto_2
    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p2

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
