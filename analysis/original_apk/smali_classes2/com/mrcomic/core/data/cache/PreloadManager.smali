.class public final Lcom/mrcomic/core/data/cache/PreloadManager;
.super Ljava/lang/Object;
.source "PreloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrcomic/core/data/cache/PreloadManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreloadManager.kt\ncom/mrcomic/core/data/cache/PreloadManager\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,368:1\n120#2,8:369\n129#2:379\n1863#3,2:377\n1557#3:380\n1628#3,3:381\n774#3:384\n865#3,2:385\n1863#3,2:387\n1863#3,2:389\n1863#3,2:391\n*S KotlinDebug\n*F\n+ 1 PreloadManager.kt\ncom/mrcomic/core/data/cache/PreloadManager\n*L\n119#1:369,8\n119#1:379\n132#1:377,2\n263#1:380\n263#1:381,3\n264#1:384\n264#1:385,2\n266#1:387,2\n282#1:389,2\n298#1:391,2\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 92\u00020\u0001:\u00019B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020\u001dJ\u000e\u0010&\u001a\u00020\"2\u0006\u0010\'\u001a\u00020\u0012J\u000e\u0010(\u001a\u00020\"H\u0082@\u00a2\u0006\u0002\u0010)J\u0016\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u001d0+2\u0006\u0010\'\u001a\u00020\u0012H\u0002J\u001c\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0-2\u0006\u0010\'\u001a\u00020\u0012H\u0002J&\u0010.\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010/\u001a\u00020 H\u0082@\u00a2\u0006\u0002\u00100J\u0010\u00101\u001a\u0002022\u0006\u0010%\u001a\u00020\u001dH\u0002J\u0016\u00103\u001a\u00020\"2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u001d0+H\u0002J\u0008\u00105\u001a\u00020\"H\u0002J\u0008\u00106\u001a\u00020\"H\u0002J\u0006\u00107\u001a\u00020\"J\u0006\u00108\u001a\u00020\"R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/mrcomic/core/data/cache/PreloadManager;",
        "",
        "enhancedImageCache",
        "Lcom/mrcomic/core/data/cache/EnhancedImageCache;",
        "memoryManager",
        "Lcom/mrcomic/core/data/cache/MemoryManager;",
        "<init>",
        "(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/MemoryManager;)V",
        "preloadScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "preloadMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "activePreloadJobs",
        "",
        "",
        "Lkotlinx/coroutines/Job;",
        "_preloadSettings",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/mrcomic/core/data/cache/PreloadSettings;",
        "preloadSettings",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getPreloadSettings",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_preloadStatus",
        "Lcom/mrcomic/core/data/cache/PreloadStatus;",
        "preloadStatus",
        "getPreloadStatus",
        "currentComicId",
        "currentPageIndex",
        "",
        "totalPages",
        "pageLoader",
        "Lcom/mrcomic/core/data/cache/PageLoader;",
        "setComicContext",
        "",
        "comicId",
        "updateCurrentPage",
        "pageIndex",
        "updateSettings",
        "settings",
        "preloadAroundCurrentPage",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "calculatePagesToPreload",
        "",
        "getAdjustedPreloadCounts",
        "Lkotlin/Pair;",
        "preloadPage",
        "loader",
        "(Ljava/lang/String;ILcom/mrcomic/core/data/cache/PageLoader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isPageStillNeeded",
        "",
        "cancelUnneededJobs",
        "neededPages",
        "cancelAllPreloadJobs",
        "handleMemoryPressure",
        "clearPreloadedPages",
        "cleanup",
        "Companion",
        "core-data_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/mrcomic/core/data/cache/PreloadManager$Companion;

.field private static final DEFAULT_PRELOAD_AHEAD:I = 0x5

.field private static final DEFAULT_PRELOAD_BEHIND:I = 0x3

.field private static final PRELOAD_DELAY_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "PreloadManager"


# instance fields
.field private final _preloadSettings:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/mrcomic/core/data/cache/PreloadSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final _preloadStatus:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/mrcomic/core/data/cache/PreloadStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final activePreloadJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field

.field private currentComicId:Ljava/lang/String;

.field private currentPageIndex:I

.field private final enhancedImageCache:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

.field private final memoryManager:Lcom/mrcomic/core/data/cache/MemoryManager;

.field private pageLoader:Lcom/mrcomic/core/data/cache/PageLoader;

.field private final preloadMutex:Lkotlinx/coroutines/sync/Mutex;

.field private final preloadScope:Lkotlinx/coroutines/CoroutineScope;

.field private final preloadSettings:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/mrcomic/core/data/cache/PreloadSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final preloadStatus:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/mrcomic/core/data/cache/PreloadStatus;",
            ">;"
        }
    .end annotation
.end field

.field private totalPages:I


# direct methods
.method public static synthetic $r8$lambda$-XTYsTQXRR53N42FKXNXar9fzD4(Lcom/mrcomic/core/data/cache/PreloadManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/mrcomic/core/data/cache/PreloadManager;->cleanup$lambda$8(Lcom/mrcomic/core/data/cache/PreloadManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HPNx8u7OwZ_bhgqUGkhRXIYIfMg(Lcom/mrcomic/core/data/cache/PreloadManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/mrcomic/core/data/cache/PreloadManager;->_init_$lambda$0(Lcom/mrcomic/core/data/cache/PreloadManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mrcomic/core/data/cache/PreloadManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mrcomic/core/data/cache/PreloadManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mrcomic/core/data/cache/PreloadManager;->Companion:Lcom/mrcomic/core/data/cache/PreloadManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/MemoryManager;)V
    .locals 8
    .param p1, "enhancedImageCache"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .param p2, "memoryManager"    # Lcom/mrcomic/core/data/cache/MemoryManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "enhancedImageCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memoryManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->enhancedImageCache:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .line 21
    iput-object p2, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->memoryManager:Lcom/mrcomic/core/data/cache/MemoryManager;

    .line 30
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadScope:Lkotlinx/coroutines/CoroutineScope;

    .line 31
    const/4 v0, 0x0

    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    .line 37
    new-instance v0, Lcom/mrcomic/core/data/cache/PreloadSettings;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/mrcomic/core/data/cache/PreloadSettings;-><init>(ZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadSettings:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 38
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadSettings:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadSettings:Lkotlinx/coroutines/flow/StateFlow;

    .line 41
    sget-object v0, Lcom/mrcomic/core/data/cache/PreloadStatus$Idle;->INSTANCE:Lcom/mrcomic/core/data/cache/PreloadStatus$Idle;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 42
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadStatus:Lkotlinx/coroutines/flow/StateFlow;

    .line 50
    nop

    .line 52
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->memoryManager:Lcom/mrcomic/core/data/cache/MemoryManager;

    new-instance v1, Lcom/mrcomic/core/data/cache/PreloadManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mrcomic/core/data/cache/PreloadManager$$ExternalSyntheticLambda0;-><init>(Lcom/mrcomic/core/data/cache/PreloadManager;)V

    invoke-virtual {v0, v1}, Lcom/mrcomic/core/data/cache/MemoryManager;->registerMemoryPressureCallback(Lkotlin/jvm/functions/Function0;)V

    .line 55
    nop

    .line 19
    return-void
.end method

.method private static final _init_$lambda$0(Lcom/mrcomic/core/data/cache/PreloadManager;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/mrcomic/core/data/cache/PreloadManager;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/mrcomic/core/data/cache/PreloadManager;->handleMemoryPressure()V

    .line 54
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final synthetic access$getEnhancedImageCache$p(Lcom/mrcomic/core/data/cache/PreloadManager;)Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .locals 1
    .param p0, "$this"    # Lcom/mrcomic/core/data/cache/PreloadManager;

    .line 18
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->enhancedImageCache:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    return-object v0
.end method

.method public static final synthetic access$getTotalPages$p(Lcom/mrcomic/core/data/cache/PreloadManager;)I
    .locals 1
    .param p0, "$this"    # Lcom/mrcomic/core/data/cache/PreloadManager;

    .line 18
    iget v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->totalPages:I

    return v0
.end method

.method public static final synthetic access$preloadAroundCurrentPage(Lcom/mrcomic/core/data/cache/PreloadManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/mrcomic/core/data/cache/PreloadManager;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1}, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadAroundCurrentPage(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$preloadPage(Lcom/mrcomic/core/data/cache/PreloadManager;Ljava/lang/String;ILcom/mrcomic/core/data/cache/PageLoader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/mrcomic/core/data/cache/PreloadManager;
    .param p1, "comicId"    # Ljava/lang/String;
    .param p2, "pageIndex"    # I
    .param p3, "loader"    # Lcom/mrcomic/core/data/cache/PageLoader;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadPage(Ljava/lang/String;ILcom/mrcomic/core/data/cache/PageLoader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final calculatePagesToPreload(Lcom/mrcomic/core/data/cache/PreloadSettings;)Ljava/util/List;
    .locals 6
    .param p1, "settings"    # Lcom/mrcomic/core/data/cache/PreloadSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mrcomic/core/data/cache/PreloadSettings;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 165
    .local v0, "pages":Ljava/util/List;
    invoke-direct {p0, p1}, Lcom/mrcomic/core/data/cache/PreloadManager;->getAdjustedPreloadCounts(Lcom/mrcomic/core/data/cache/PreloadSettings;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "aheadCount":I
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 168
    .local v1, "behindCount":I
    const/4 v3, 0x1

    .local v3, "i":I
    if-gt v3, v1, :cond_1

    .line 169
    :goto_0
    iget v4, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->currentPageIndex:I

    sub-int/2addr v4, v3

    .line 170
    .local v4, "pageIndex":I
    if-ltz v4, :cond_0

    .line 171
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v4    # "pageIndex":I
    :cond_0
    if-eq v3, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "i":I
    if-gt v3, v2, :cond_3

    .line 177
    :goto_1
    iget v4, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->currentPageIndex:I

    add-int/2addr v4, v3

    .line 178
    .restart local v4    # "pageIndex":I
    iget v5, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->totalPages:I

    if-ge v4, v5, :cond_2

    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v4    # "pageIndex":I
    :cond_2
    if-eq v3, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 183
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method private final cancelAllPreloadJobs()V
    .locals 8

    .line 280
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling all preload jobs ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 389
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/Job;

    .local v4, "job":Lkotlinx/coroutines/Job;
    const/4 v5, 0x0

    .line 283
    .local v5, "$i$a$-forEach-PreloadManager$cancelAllPreloadJobs$1":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 284
    nop

    .line 389
    .end local v4    # "job":Lkotlinx/coroutines/Job;
    .end local v5    # "$i$a$-forEach-PreloadManager$cancelAllPreloadJobs$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 390
    :cond_0
    nop

    .line 285
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 287
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/mrcomic/core/data/cache/PreloadStatus$Idle;->INSTANCE:Lcom/mrcomic/core/data/cache/PreloadStatus$Idle;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method private final cancelUnneededJobs(Ljava/util/List;)V
    .locals 13
    .param p1, "neededPages"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->currentComicId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 263
    .local v0, "comicId":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 380
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 381
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 382
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .local v8, "it":I
    const/4 v9, 0x0

    .line 263
    .local v9, "$i$a$-map-PreloadManager$cancelUnneededJobs$neededKeys$1":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 382
    .end local v8    # "it":I
    .end local v9    # "$i$a$-map-PreloadManager$cancelUnneededJobs$neededKeys$1":I
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 380
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    check-cast v3, Ljava/lang/Iterable;

    .line 263
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 264
    .local v1, "neededKeys":Ljava/util/Set;
    iget-object v2, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 384
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 385
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 264
    .local v11, "$i$a$-filter-PreloadManager$cancelUnneededJobs$jobsToCancel$1":I
    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 385
    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-filter-PreloadManager$cancelUnneededJobs$jobsToCancel$1":I
    xor-int/2addr v9, v12

    if-eqz v9, :cond_2

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 384
    nop

    .line 264
    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    move-object v2, v4

    .line 266
    .local v2, "jobsToCancel":Ljava/util/List;
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 387
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .local v7, "pageKey":Ljava/lang/String;
    const/4 v8, 0x0

    .line 267
    .local v8, "$i$a$-forEach-PreloadManager$cancelUnneededJobs$1":I
    iget-object v10, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlinx/coroutines/Job;

    if-eqz v10, :cond_4

    const/4 v11, 0x0

    invoke-static {v10, v11, v9, v11}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 268
    :cond_4
    iget-object v10, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    nop

    .line 387
    .end local v7    # "pageKey":Ljava/lang/String;
    .end local v8    # "$i$a$-forEach-PreloadManager$cancelUnneededJobs$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 388
    :cond_5
    nop

    .line 271
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v9

    if-eqz v3, :cond_6

    .line 272
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " unneeded preload jobs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreloadManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_6
    return-void
.end method

.method private static final cleanup$lambda$8(Lcom/mrcomic/core/data/cache/PreloadManager;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/mrcomic/core/data/cache/PreloadManager;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/mrcomic/core/data/cache/PreloadManager;->handleMemoryPressure()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final getAdjustedPreloadCounts(Lcom/mrcomic/core/data/cache/PreloadSettings;)Lkotlin/Pair;
    .locals 3
    .param p1, "settings"    # Lcom/mrcomic/core/data/cache/PreloadSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mrcomic/core/data/cache/PreloadSettings;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 190
    nop

    .line 191
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->memoryManager:Lcom/mrcomic/core/data/cache/MemoryManager;

    invoke-virtual {v0}, Lcom/mrcomic/core/data/cache/MemoryManager;->isMemoryCritical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->memoryManager:Lcom/mrcomic/core/data/cache/MemoryManager;

    invoke-virtual {v0}, Lcom/mrcomic/core/data/cache/MemoryManager;->isMemoryLow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/mrcomic/core/data/cache/PreloadSettings;->getPreloadAhead()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mrcomic/core/data/cache/PreloadSettings;->getPreloadBehind()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/mrcomic/core/data/cache/PreloadSettings;->getPreloadAhead()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mrcomic/core/data/cache/PreloadSettings;->getPreloadBehind()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    :goto_0
    return-object v0
.end method

.method private final handleMemoryPressure()V
    .locals 11

    .line 294
    const-string v0, "Handling memory pressure - reducing preloading"

    const-string v1, "PreloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 298
    .local v0, "jobsToCancel":Ljava/util/List;
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 391
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/util/Map$Entry;

    const/4 v7, 0x0

    .line 298
    .local v7, "$i$a$-forEach-PreloadManager$handleMemoryPressure$1":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/Job;

    .line 299
    .local v6, "job":Lkotlinx/coroutines/Job;
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v6, v10, v9, v10}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 300
    iget-object v9, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    nop

    .line 391
    .end local v6    # "job":Lkotlinx/coroutines/Job;
    .end local v7    # "$i$a$-forEach-PreloadManager$handleMemoryPressure$1":I
    .end local v8    # "key":Ljava/lang/String;
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 392
    :cond_0
    nop

    .line 304
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    iget-object v2, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->memoryManager:Lcom/mrcomic/core/data/cache/MemoryManager;

    invoke-virtual {v2}, Lcom/mrcomic/core/data/cache/MemoryManager;->isMemoryCritical()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadSettings:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadSettings:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/mrcomic/core/data/cache/PreloadSettings;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/mrcomic/core/data/cache/PreloadSettings;->copy$default(Lcom/mrcomic/core/data/cache/PreloadSettings;ZIIZILjava/lang/Object;)Lcom/mrcomic/core/data/cache/PreloadSettings;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 306
    const-string v2, "Temporarily disabled preloading due to critical memory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    return-void
.end method

.method private final isPageStillNeeded(I)Z
    .locals 4
    .param p1, "pageIndex"    # I

    .line 249
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadSettings:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mrcomic/core/data/cache/PreloadSettings;

    .line 250
    .local v0, "settings":Lcom/mrcomic/core/data/cache/PreloadSettings;
    invoke-direct {p0, v0}, Lcom/mrcomic/core/data/cache/PreloadManager;->getAdjustedPreloadCounts(Lcom/mrcomic/core/data/cache/PreloadSettings;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "aheadCount":I
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 252
    .local v1, "behindCount":I
    iget v3, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->currentPageIndex:I

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    .line 253
    iget v3, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->currentPageIndex:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_0

    .line 254
    iget v3, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->currentPageIndex:I

    if-eq p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 252
    :goto_0
    return v3
.end method

.method private final preloadAroundCurrentPage(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 28
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

    move-object/from16 v1, p1

    const-string v2, "PreloadManager"

    instance-of v0, v1, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;

    iget v3, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;

    move-object/from16 v3, p0

    invoke-direct {v0, v3, v1}, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;-><init>(Lcom/mrcomic/core/data/cache/PreloadManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v4, v0

    .local v4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v5, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->result:Ljava/lang/Object;

    .local v5, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 112
    iget v6, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->label:I

    packed-switch v6, :pswitch_data_0

    .end local v4    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v5    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v4    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v5    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$f$withLock":I
    const/4 v6, 0x0

    .local v6, "owner$iv":Ljava/lang/Object;
    iget-object v7, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    .local v7, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v8, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lcom/mrcomic/core/data/cache/PreloadSettings;

    .local v8, "settings":Lcom/mrcomic/core/data/cache/PreloadSettings;
    iget-object v9, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lcom/mrcomic/core/data/cache/PageLoader;

    .local v9, "loader":Lcom/mrcomic/core/data/cache/PageLoader;
    iget-object v10, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .local v10, "comicId":Ljava/lang/String;
    iget-object v11, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/mrcomic/core/data/cache/PreloadManager;

    .local v11, "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v12, v0

    goto :goto_1

    .end local v0    # "$i$f$withLock":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v8    # "settings":Lcom/mrcomic/core/data/cache/PreloadSettings;
    .end local v9    # "loader":Lcom/mrcomic/core/data/cache/PageLoader;
    .end local v10    # "comicId":Ljava/lang/String;
    .end local v11    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    :pswitch_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v11, p0

    .line 113
    .restart local v11    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    iget-object v6, v11, Lcom/mrcomic/core/data/cache/PreloadManager;->currentComicId:Ljava/lang/String;

    if-nez v6, :cond_1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_1
    move-object v10, v6

    .line 114
    .restart local v10    # "comicId":Ljava/lang/String;
    iget-object v6, v11, Lcom/mrcomic/core/data/cache/PreloadManager;->pageLoader:Lcom/mrcomic/core/data/cache/PageLoader;

    if-nez v6, :cond_2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_2
    move-object v9, v6

    .line 115
    .restart local v9    # "loader":Lcom/mrcomic/core/data/cache/PageLoader;
    iget-object v6, v11, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadSettings:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/mrcomic/core/data/cache/PreloadSettings;

    .line 117
    .restart local v8    # "settings":Lcom/mrcomic/core/data/cache/PreloadSettings;
    invoke-virtual {v8}, Lcom/mrcomic/core/data/cache/PreloadSettings;->getEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 119
    :cond_3
    iget-object v7, v11, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 369
    .restart local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    const/4 v6, 0x0

    .restart local v6    # "owner$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 370
    .local v12, "$i$f$withLock":I
    nop

    .line 374
    iput-object v11, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->L$0:Ljava/lang/Object;

    iput-object v10, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->L$1:Ljava/lang/Object;

    iput-object v9, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->L$2:Ljava/lang/Object;

    iput-object v8, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->L$3:Ljava/lang/Object;

    iput-object v7, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->L$4:Ljava/lang/Object;

    const/4 v13, 0x1

    iput v13, v4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$1;->label:I

    invoke-interface {v7, v6, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_4

    .line 112
    return-object v0

    .line 375
    :cond_4
    :goto_1
    nop

    .line 376
    const/16 v19, 0x0

    .line 120
    .local v19, "$i$a$-withLock$default-PreloadManager$preloadAroundCurrentPage$2":I
    :try_start_0
    iget-object v0, v11, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v13, Lcom/mrcomic/core/data/cache/PreloadStatus$Loading;->INSTANCE:Lcom/mrcomic/core/data/cache/PreloadStatus$Loading;

    invoke-interface {v0, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    nop

    .line 124
    :try_start_1
    invoke-direct {v11, v8}, Lcom/mrcomic/core/data/cache/PreloadManager;->calculatePagesToPreload(Lcom/mrcomic/core/data/cache/PreloadSettings;)Ljava/util/List;

    move-result-object v0

    .line 126
    .end local v8    # "settings":Lcom/mrcomic/core/data/cache/PreloadSettings;
    .local v0, "pagesToPreload":Ljava/util/List;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Preloading pages: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {v11, v0}, Lcom/mrcomic/core/data/cache/PreloadManager;->cancelUnneededJobs(Ljava/util/List;)V

    .line 132
    move-object v8, v0

    check-cast v8, Ljava/lang/Iterable;

    move-object v0, v8

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 377
    .local v8, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv":Ljava/lang/Object;
    move-object v13, v0

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    move v0, v13

    .local v0, "pageIndex":I
    const/16 v21, 0x0

    .line 133
    .local v21, "$i$a$-forEach-PreloadManager$preloadAroundCurrentPage$2$1":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v15, v13

    .line 136
    .local v15, "pageKey":Ljava/lang/String;
    iget-object v13, v11, Lcom/mrcomic/core/data/cache/PreloadManager;->enhancedImageCache:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    invoke-virtual {v13, v15}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->isInMemoryCache(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 137
    iget-object v13, v11, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v13, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_3

    .line 142
    :cond_5
    iget-object v14, v11, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadScope:Lkotlinx/coroutines/CoroutineScope;

    const/16 v23, 0x0

    const/16 v24, 0x0

    new-instance v22, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;

    const/16 v18, 0x0

    move-object/from16 v13, v22

    move-object/from16 v25, v14

    move-object v14, v11

    move-object v1, v15

    .end local v15    # "pageKey":Ljava/lang/String;
    .local v1, "pageKey":Ljava/lang/String;
    move-object v15, v10

    move/from16 v16, v0

    move-object/from16 v17, v9

    invoke-direct/range {v13 .. v18}, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;-><init>(Lcom/mrcomic/core/data/cache/PreloadManager;Ljava/lang/String;ILcom/mrcomic/core/data/cache/PageLoader;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v13, v22

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/16 v26, 0x3

    const/16 v27, 0x0

    move-object/from16 v22, v25

    move-object/from16 v25, v13

    invoke-static/range {v22 .. v27}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v13

    .line 146
    .local v13, "job":Lkotlinx/coroutines/Job;
    iget-object v14, v11, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v14, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    goto :goto_4

    .line 136
    .end local v1    # "pageKey":Ljava/lang/String;
    .end local v13    # "job":Lkotlinx/coroutines/Job;
    .restart local v15    # "pageKey":Ljava/lang/String;
    :cond_6
    move-object v1, v15

    .line 138
    .end local v0    # "pageIndex":I
    .end local v15    # "pageKey":Ljava/lang/String;
    :goto_3
    nop

    .line 377
    .end local v21    # "$i$a$-forEach-PreloadManager$preloadAroundCurrentPage$2$1":I
    :goto_4
    move-object/from16 v1, p1

    goto :goto_2

    .line 378
    .end local v9    # "loader":Lcom/mrcomic/core/data/cache/PageLoader;
    .end local v10    # "comicId":Ljava/lang/String;
    :cond_7
    nop

    .line 149
    .end local v8    # "$i$f$forEach":I
    iget-object v0, v11, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/mrcomic/core/data/cache/PreloadStatus$Completed;->INSTANCE:Lcom/mrcomic/core/data/cache/PreloadStatus$Completed;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v11    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    goto :goto_5

    .line 151
    .restart local v11    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "Error during preloading"

    move-object v8, v0

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v2, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    iget-object v1, v11, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Lcom/mrcomic/core/data/cache/PreloadStatus$Error;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    const-string v8, "Unknown error"

    :cond_8
    invoke-direct {v2, v8}, Lcom/mrcomic/core/data/cache/PreloadStatus$Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 155
    :goto_5
    nop

    .end local v19    # "$i$a$-withLock$default-PreloadManager$preloadAroundCurrentPage$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    nop

    .line 379
    invoke-interface {v7, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 376
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 156
    .end local v12    # "$i$f$withLock":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 379
    .restart local v6    # "owner$iv":Ljava/lang/Object;
    .restart local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v12    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-interface {v7, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final preloadPage(Ljava/lang/String;ILcom/mrcomic/core/data/cache/PageLoader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/mrcomic/core/data/cache/PageLoader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;

    iget v1, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;

    invoke-direct {v0, p0, p4}, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;-><init>(Lcom/mrcomic/core/data/cache/PreloadManager;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 209
    iget v3, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->label:I

    const-string v4, "PreloadManager"

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget p1, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->I$0:I

    .local p1, "pageIndex":I
    iget-object p2, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .local p2, "pageKey":Ljava/lang/String;
    iget-object p3, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lcom/mrcomic/core/data/cache/PreloadManager;

    .local p3, "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .end local p1    # "pageIndex":I
    .end local p2    # "pageKey":Ljava/lang/String;
    .end local p3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    :pswitch_1
    iget p1, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->I$0:I

    .restart local p1    # "pageIndex":I
    iget-object p2, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .restart local p2    # "pageKey":Ljava/lang/String;
    iget-object p3, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lcom/mrcomic/core/data/cache/PreloadManager;

    .restart local p3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v1

    goto/16 :goto_2

    .line 241
    .end local p1    # "pageIndex":I
    :catchall_0
    move-exception p1

    goto/16 :goto_8

    .line 238
    .restart local p1    # "pageIndex":I
    :catch_0
    move-exception v2

    goto/16 :goto_5

    .line 235
    :catch_1
    move-exception v2

    goto/16 :goto_7

    .line 209
    .end local p1    # "pageIndex":I
    .end local p2    # "pageKey":Ljava/lang/String;
    .end local p3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    :pswitch_2
    iget p1, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->I$0:I

    .restart local p1    # "pageIndex":I
    iget-object p2, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .restart local p2    # "pageKey":Ljava/lang/String;
    iget-object p3, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$1:Ljava/lang/Object;

    check-cast p3, Lcom/mrcomic/core/data/cache/PageLoader;

    .local p3, "loader":Lcom/mrcomic/core/data/cache/PageLoader;
    iget-object v3, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/mrcomic/core/data/cache/PreloadManager;

    .local v3, "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v3

    move-object v3, p3

    move-object p3, v8

    goto :goto_1

    .line 241
    .end local p1    # "pageIndex":I
    .end local p3    # "loader":Lcom/mrcomic/core/data/cache/PageLoader;
    :catchall_1
    move-exception p1

    move-object p3, v3

    goto/16 :goto_8

    .line 238
    .restart local p1    # "pageIndex":I
    :catch_2
    move-exception v2

    move-object p3, v3

    goto/16 :goto_5

    .line 235
    :catch_3
    move-exception v2

    move-object p3, v3

    goto/16 :goto_7

    .line 209
    .end local v3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    .end local p1    # "pageIndex":I
    .end local p2    # "pageKey":Ljava/lang/String;
    :pswitch_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 210
    .restart local v3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    .local p1, "comicId":Ljava/lang/String;
    .local p2, "pageIndex":I
    .restart local p3    # "loader":Lcom/mrcomic/core/data/cache/PageLoader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    .end local p1    # "comicId":Ljava/lang/String;
    .local v5, "pageKey":Ljava/lang/String;
    nop

    .line 213
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preloading page: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-object v3, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$2:Ljava/lang/Object;

    iput p2, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->I$0:I

    const/4 p1, 0x1

    iput p1, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->label:I

    const-wide/16 v6, 0x64

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v2, :cond_1

    .line 209
    return-object v2

    .line 216
    :cond_1
    move p1, p2

    move-object p2, v5

    move-object v8, v3

    move-object v3, p3

    move-object p3, v8

    .line 219
    .end local v5    # "pageKey":Ljava/lang/String;
    .local v3, "loader":Lcom/mrcomic/core/data/cache/PageLoader;
    .local p1, "pageIndex":I
    .local p2, "pageKey":Ljava/lang/String;
    .local p3, "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    :goto_1
    :try_start_4
    invoke-direct {p3, p1}, Lcom/mrcomic/core/data/cache/PreloadManager;->isPageStillNeeded(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 220
    .end local v3    # "loader":Lcom/mrcomic/core/data/cache/PageLoader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no longer needed, cancelling preload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 241
    iget-object v3, p3, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-object v2

    .line 225
    .restart local v3    # "loader":Lcom/mrcomic/core/data/cache/PageLoader;
    :cond_2
    :try_start_5
    iput-object p3, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$2:Ljava/lang/Object;

    iput p1, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->I$0:I

    const/4 v5, 0x2

    iput v5, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->label:I

    invoke-interface {v3, p1, v0}, Lcom/mrcomic/core/data/cache/PageLoader;->loadPage(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v3    # "loader":Lcom/mrcomic/core/data/cache/PageLoader;
    if-ne v5, v2, :cond_3

    .line 209
    return-object v2

    :cond_3
    :goto_2
    check-cast v5, Landroid/graphics/Bitmap;

    move-object v3, v5

    .line 227
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_5

    .line 229
    iget-object v5, p3, Lcom/mrcomic/core/data/cache/PreloadManager;->enhancedImageCache:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iput-object p3, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->I$0:I

    const/4 v6, 0x3

    iput v6, v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadPage$1;->label:I

    invoke-virtual {v5, p2, v3, v0}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    if-ne v5, v2, :cond_4

    .line 209
    return-object v2

    .line 230
    :cond_4
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully preloaded page: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 232
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load page: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 241
    :goto_4
    nop

    .end local p1    # "pageIndex":I
    goto :goto_6

    .end local p2    # "pageKey":Ljava/lang/String;
    .end local p3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    .local v3, "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    .restart local v5    # "pageKey":Ljava/lang/String;
    :catchall_2
    move-exception p1

    move-object p3, v3

    move-object p2, v5

    goto :goto_8

    .line 238
    .local p2, "pageIndex":I
    :catch_4
    move-exception v2

    move p1, p2

    move-object p3, v3

    move-object p2, v5

    .line 239
    .end local v3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    .end local v5    # "pageKey":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    .restart local p1    # "pageIndex":I
    .local p2, "pageKey":Ljava/lang/String;
    .restart local p3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    :goto_5
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error preloading page "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v4, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 241
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    .end local p1    # "pageIndex":I
    :goto_6
    iget-object p1, p3, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .end local p2    # "pageKey":Ljava/lang/String;
    .end local p3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    nop

    .line 243
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 235
    .restart local v3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    .restart local v5    # "pageKey":Ljava/lang/String;
    .local p2, "pageIndex":I
    :catch_5
    move-exception v2

    move p1, p2

    move-object p3, v3

    move-object p2, v5

    .line 236
    .end local v3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    .end local v5    # "pageKey":Ljava/lang/String;
    .local v2, "e":Ljava/util/concurrent/CancellationException;
    .restart local p1    # "pageIndex":I
    .local p2, "pageKey":Ljava/lang/String;
    .restart local p3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    :goto_7
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preload cancelled for page: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local p1    # "pageIndex":I
    .end local p2    # "pageKey":Ljava/lang/String;
    .end local p3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    .end local p4    # "$completion":Lkotlin/coroutines/Continuation;
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 241
    .end local v2    # "e":Ljava/util/concurrent/CancellationException;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local p2    # "pageKey":Ljava/lang/String;
    .restart local p3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    .restart local p4    # "$completion":Lkotlin/coroutines/Continuation;
    :goto_8
    iget-object v2, p3, Lcom/mrcomic/core/data/cache/PreloadManager;->activePreloadJobs:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local p2    # "pageKey":Ljava/lang/String;
    .end local p3    # "this":Lcom/mrcomic/core/data/cache/PreloadManager;
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final cleanup()V
    .locals 3

    .line 333
    const-string v0, "PreloadManager"

    const-string v1, "Cleaning up PreloadManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0}, Lcom/mrcomic/core/data/cache/PreloadManager;->cancelAllPreloadJobs()V

    .line 336
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->memoryManager:Lcom/mrcomic/core/data/cache/MemoryManager;

    new-instance v1, Lcom/mrcomic/core/data/cache/PreloadManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mrcomic/core/data/cache/PreloadManager$$ExternalSyntheticLambda1;-><init>(Lcom/mrcomic/core/data/cache/PreloadManager;)V

    invoke-virtual {v0, v1}, Lcom/mrcomic/core/data/cache/MemoryManager;->unregisterMemoryPressureCallback(Lkotlin/jvm/functions/Function0;)V

    .line 340
    return-void
.end method

.method public final clearPreloadedPages()V
    .locals 9

    .line 314
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->currentComicId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 316
    .local v0, "comicId":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing preloaded pages for comic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreloadManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/mrcomic/core/data/cache/PreloadManager;->cancelAllPreloadJobs()V

    .line 321
    iget-object v3, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v1, Lcom/mrcomic/core/data/cache/PreloadManager$clearPreloadedPages$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/mrcomic/core/data/cache/PreloadManager$clearPreloadedPages$1;-><init>(Lcom/mrcomic/core/data/cache/PreloadManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 327
    return-void
.end method

.method public final getPreloadSettings()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/mrcomic/core/data/cache/PreloadSettings;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadSettings:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getPreloadStatus()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/mrcomic/core/data/cache/PreloadStatus;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadStatus:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final setComicContext(Ljava/lang/String;ILcom/mrcomic/core/data/cache/PageLoader;)V
    .locals 2
    .param p1, "comicId"    # Ljava/lang/String;
    .param p2, "totalPages"    # I
    .param p3, "pageLoader"    # Lcom/mrcomic/core/data/cache/PageLoader;

    const-string v0, "comicId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageLoader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting comic context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/mrcomic/core/data/cache/PreloadManager;->cancelAllPreloadJobs()V

    .line 70
    iput-object p1, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->currentComicId:Ljava/lang/String;

    .line 71
    iput p2, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->totalPages:I

    .line 72
    iput-object p3, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->pageLoader:Lcom/mrcomic/core/data/cache/PageLoader;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->currentPageIndex:I

    .line 74
    return-void
.end method

.method public final updateCurrentPage(I)V
    .locals 7
    .param p1, "pageIndex"    # I

    .line 80
    iget v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->currentPageIndex:I

    if-ne p1, v0, :cond_0

    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating current page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput p1, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->currentPageIndex:I

    .line 85
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadSettings:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mrcomic/core/data/cache/PreloadSettings;

    invoke-virtual {v0}, Lcom/mrcomic/core/data/cache/PreloadSettings;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/mrcomic/core/data/cache/PreloadManager$updateCurrentPage$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/mrcomic/core/data/cache/PreloadManager$updateCurrentPage$1;-><init>(Lcom/mrcomic/core/data/cache/PreloadManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 90
    :cond_1
    return-void
.end method

.method public final updateSettings(Lcom/mrcomic/core/data/cache/PreloadSettings;)V
    .locals 7
    .param p1, "settings"    # Lcom/mrcomic/core/data/cache/PreloadSettings;

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating preload settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->_preloadSettings:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p1}, Lcom/mrcomic/core/data/cache/PreloadSettings;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/mrcomic/core/data/cache/PreloadManager;->cancelAllPreloadJobs()V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/mrcomic/core/data/cache/PreloadManager;->preloadScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/mrcomic/core/data/cache/PreloadManager$updateSettings$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/mrcomic/core/data/cache/PreloadManager$updateSettings$1;-><init>(Lcom/mrcomic/core/data/cache/PreloadManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 107
    :goto_0
    return-void
.end method
