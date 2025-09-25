.class public final Lcom/mrcomic/core/data/cache/MemoryManager;
.super Ljava/lang/Object;
.source "MemoryManager.kt"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryManager.kt\ncom/mrcomic/core/data/cache/MemoryManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,235:1\n1863#2,2:236\n1863#2,2:238\n1863#2,2:240\n1863#2,2:242\n1863#2,2:244\n1863#2,2:246\n1863#2,2:248\n1863#2,2:250\n*S KotlinDebug\n*F\n+ 1 MemoryManager.kt\ncom/mrcomic/core/data/cache/MemoryManager\n*L\n180#1:236,2\n187#1:238,2\n199#1:240,2\n200#1:242,2\n206#1:244,2\n212#1:246,2\n223#1:248,2\n224#1:250,2\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u001a\u001a\u00020\u0018J\u0006\u0010\u001b\u001a\u00020\u0018J\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u001c\u001a\u00020\u000fJ\u0006\u0010\u001d\u001a\u00020\u0018J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0014\u0010 \u001a\u00020\u000b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ\u0014\u0010\"\u001a\u00020\u000b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ\u0014\u0010#\u001a\u00020\u000b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ\u0014\u0010$\u001a\u00020\u000b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ\u0006\u0010%\u001a\u00020\u000bJ\u0006\u0010&\u001a\u00020\u000bJ\u0010\u0010\'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u0014H\u0016J\u0010\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020+H\u0016J\u0008\u0010,\u001a\u00020\u000bH\u0016J\u0006\u0010-\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0012R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/mrcomic/core/data/cache/MemoryManager;",
        "Landroid/content/ComponentCallbacks2;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "activityManager",
        "Landroid/app/ActivityManager;",
        "memoryPressureCallbacks",
        "",
        "Lkotlin/Function0;",
        "",
        "lowMemoryCallbacks",
        "_isMemoryLow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "isMemoryLow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_memoryPressureLevel",
        "",
        "memoryPressureLevel",
        "getMemoryPressureLevel",
        "lowMemoryThreshold",
        "",
        "criticalMemoryThreshold",
        "getAvailableMemory",
        "getTotalMemory",
        "isMemoryCritical",
        "calculateOptimalCacheSize",
        "getOptimalCacheSettings",
        "Lcom/mrcomic/core/data/cache/CacheSettings;",
        "registerMemoryPressureCallback",
        "callback",
        "registerLowMemoryCallback",
        "unregisterMemoryPressureCallback",
        "unregisterLowMemoryCallback",
        "triggerMemoryPressure",
        "triggerLowMemory",
        "onTrimMemory",
        "level",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onLowMemory",
        "cleanup",
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


# instance fields
.field private final _isMemoryLow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _memoryPressureLevel:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final activityManager:Landroid/app/ActivityManager;

.field private final context:Landroid/content/Context;

.field private final criticalMemoryThreshold:J

.field private final isMemoryLow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final lowMemoryCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lowMemoryThreshold:J

.field private final memoryPressureCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final memoryPressureLevel:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->context:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->activityManager:Landroid/app/ActivityManager;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->memoryPressureCallbacks:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryCallbacks:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->_isMemoryLow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 31
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->_isMemoryLow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->isMemoryLow:Lkotlinx/coroutines/flow/StateFlow;

    .line 33
    const/16 v0, 0x50

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->_memoryPressureLevel:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 34
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->_memoryPressureLevel:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->memoryPressureLevel:Lkotlinx/coroutines/flow/StateFlow;

    .line 37
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryThreshold:J

    .line 38
    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->criticalMemoryThreshold:J

    .line 40
    nop

    .line 42
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->context:Landroid/content/Context;

    move-object v1, p0

    check-cast v1, Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 43
    nop

    .line 19
    return-void
.end method


# virtual methods
.method public final calculateOptimalCacheSize()J
    .locals 8

    .line 85
    invoke-virtual {p0}, Lcom/mrcomic/core/data/cache/MemoryManager;->getAvailableMemory()J

    move-result-wide v0

    .line 86
    .local v0, "availableMemory":J
    invoke-virtual {p0}, Lcom/mrcomic/core/data/cache/MemoryManager;->getTotalMemory()J

    move-result-wide v2

    .line 88
    .local v2, "totalMemory":J
    nop

    .line 90
    iget-wide v4, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->criticalMemoryThreshold:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 91
    long-to-double v4, v2

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v4, v6

    double-to-long v4, v4

    goto :goto_0

    .line 94
    :cond_0
    iget-wide v4, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryThreshold:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 95
    long-to-double v4, v2

    const-wide v6, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v4, v6

    double-to-long v4, v4

    goto :goto_0

    .line 98
    :cond_1
    iget-wide v4, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryThreshold:J

    const/4 v6, 0x3

    int-to-long v6, v6

    mul-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 99
    long-to-double v4, v2

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    double-to-long v4, v4

    goto :goto_0

    .line 103
    :cond_2
    long-to-double v4, v2

    const-wide v6, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v4, v6

    double-to-long v4, v4

    .line 105
    :goto_0
    const-wide/32 v6, 0xa00000

    invoke-static {v4, v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    .line 106
    const-wide/32 v6, 0xc800000

    invoke-static {v4, v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v4

    .line 88
    return-wide v4
.end method

.method public final cleanup()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->context:Landroid/content/Context;

    move-object v1, p0

    check-cast v1, Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 232
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->memoryPressureCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    return-void
.end method

.method public final getAvailableMemory()J
    .locals 3

    .line 49
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 50
    .local v0, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v1, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 51
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v1
.end method

.method public final getMemoryPressureLevel()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->memoryPressureLevel:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getOptimalCacheSettings()Lcom/mrcomic/core/data/cache/CacheSettings;
    .locals 18

    .line 113
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mrcomic/core/data/cache/MemoryManager;->calculateOptimalCacheSize()J

    move-result-wide v14

    .line 114
    .local v14, "optimalCacheSize":J
    invoke-virtual/range {p0 .. p0}, Lcom/mrcomic/core/data/cache/MemoryManager;->getAvailableMemory()J

    move-result-wide v16

    .line 116
    .local v16, "availableMemory":J
    nop

    .line 117
    iget-wide v1, v0, Lcom/mrcomic/core/data/cache/MemoryManager;->criticalMemoryThreshold:J

    cmp-long v1, v16, v1

    if-gez v1, :cond_0

    .line 118
    sget-object v1, Lcom/mrcomic/core/data/cache/CacheSettings;->Companion:Lcom/mrcomic/core/data/cache/CacheSettings$Companion;

    invoke-virtual {v1}, Lcom/mrcomic/core/data/cache/CacheSettings$Companion;->getSMALL()Lcom/mrcomic/core/data/cache/CacheSettings;

    move-result-object v1

    .line 120
    const/4 v2, 0x5

    .line 121
    const/4 v3, 0x2

    .line 122
    const/4 v4, 0x1

    .line 123
    const/16 v5, 0x46

    .line 124
    const/4 v6, 0x1

    .line 119
    nop

    .line 118
    const-wide/16 v9, 0x0

    .line 125
    const/4 v11, 0x1

    .line 118
    const/16 v12, 0x40

    const/4 v13, 0x0

    move-wide v7, v14

    invoke-static/range {v1 .. v13}, Lcom/mrcomic/core/data/cache/CacheSettings;->copy$default(Lcom/mrcomic/core/data/cache/CacheSettings;IIIIZJJZILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CacheSettings;

    move-result-object v1

    goto :goto_0

    .line 128
    :cond_0
    iget-wide v1, v0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryThreshold:J

    cmp-long v1, v16, v1

    if-gez v1, :cond_1

    .line 129
    sget-object v1, Lcom/mrcomic/core/data/cache/CacheSettings;->Companion:Lcom/mrcomic/core/data/cache/CacheSettings$Companion;

    invoke-virtual {v1}, Lcom/mrcomic/core/data/cache/CacheSettings$Companion;->getSMALL()Lcom/mrcomic/core/data/cache/CacheSettings;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 131
    const/16 v5, 0x4b

    .line 132
    const/4 v6, 0x1

    .line 130
    nop

    .line 129
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc7

    const/4 v13, 0x0

    move-wide v7, v14

    invoke-static/range {v1 .. v13}, Lcom/mrcomic/core/data/cache/CacheSettings;->copy$default(Lcom/mrcomic/core/data/cache/CacheSettings;IIIIZJJZILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CacheSettings;

    move-result-object v1

    goto :goto_0

    .line 135
    :cond_1
    iget-wide v1, v0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryThreshold:J

    const/4 v3, 0x3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    cmp-long v1, v16, v1

    if-gez v1, :cond_2

    .line 136
    sget-object v1, Lcom/mrcomic/core/data/cache/CacheSettings;->Companion:Lcom/mrcomic/core/data/cache/CacheSettings$Companion;

    invoke-virtual {v1}, Lcom/mrcomic/core/data/cache/CacheSettings$Companion;->getMEDIUM()Lcom/mrcomic/core/data/cache/CacheSettings;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 137
    nop

    .line 136
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xdf

    const/4 v13, 0x0

    move-wide v7, v14

    invoke-static/range {v1 .. v13}, Lcom/mrcomic/core/data/cache/CacheSettings;->copy$default(Lcom/mrcomic/core/data/cache/CacheSettings;IIIIZJJZILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CacheSettings;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_2
    sget-object v1, Lcom/mrcomic/core/data/cache/CacheSettings;->Companion:Lcom/mrcomic/core/data/cache/CacheSettings$Companion;

    invoke-virtual {v1}, Lcom/mrcomic/core/data/cache/CacheSettings$Companion;->getLARGE()Lcom/mrcomic/core/data/cache/CacheSettings;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 142
    nop

    .line 141
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xdf

    const/4 v13, 0x0

    move-wide v7, v14

    invoke-static/range {v1 .. v13}, Lcom/mrcomic/core/data/cache/CacheSettings;->copy$default(Lcom/mrcomic/core/data/cache/CacheSettings;IIIIZJJZILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CacheSettings;

    move-result-object v1

    .line 116
    :goto_0
    return-object v1
.end method

.method public final getTotalMemory()J
    .locals 3

    .line 58
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 59
    .local v0, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v1, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 60
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v1
.end method

.method public final isMemoryCritical()Z
    .locals 4

    .line 77
    invoke-virtual {p0}, Lcom/mrcomic/core/data/cache/MemoryManager;->getAvailableMemory()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->criticalMemoryThreshold:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isMemoryLow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->isMemoryLow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isMemoryLow()Z
    .locals 5

    .line 67
    invoke-virtual {p0}, Lcom/mrcomic/core/data/cache/MemoryManager;->getAvailableMemory()J

    move-result-wide v0

    .line 68
    .local v0, "availableMemory":J
    iget-wide v2, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 69
    .local v2, "isLow":Z
    :goto_0
    iget-object v3, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->_isMemoryLow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 70
    return v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onLowMemory()V
    .locals 6

    .line 222
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->_isMemoryLow:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryCallbacks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 248
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

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "it":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 223
    .local v5, "$i$a$-forEach-MemoryManager$onLowMemory$1":I
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 248
    .end local v4    # "it":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$a$-forEach-MemoryManager$onLowMemory$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 249
    :cond_0
    nop

    .line 224
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->memoryPressureCallbacks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 250
    .restart local v1    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .restart local v4    # "it":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 224
    .local v5, "$i$a$-forEach-MemoryManager$onLowMemory$2":I
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 250
    .end local v4    # "it":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$a$-forEach-MemoryManager$onLowMemory$2":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 251
    :cond_1
    nop

    .line 225
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 6
    .param p1, "level"    # I

    .line 192
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->_memoryPressureLevel:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 194
    const/4 v0, 0x1

    .line 205
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 194
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 212
    :sswitch_0
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->memoryPressureCallbacks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 246
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

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "it":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 212
    .local v5, "$i$a$-forEach-MemoryManager$onTrimMemory$4":I
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 246
    .end local v4    # "it":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$a$-forEach-MemoryManager$onTrimMemory$4":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 247
    :cond_0
    goto :goto_4

    .line 198
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :sswitch_1
    iget-object v1, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->_isMemoryLow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->memoryPressureCallbacks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 240
    .restart local v1    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .restart local v4    # "it":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 199
    .local v5, "$i$a$-forEach-MemoryManager$onTrimMemory$1":I
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 240
    .end local v4    # "it":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$a$-forEach-MemoryManager$onTrimMemory$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 241
    :cond_1
    nop

    .line 200
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryCallbacks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 242
    .restart local v1    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .restart local v4    # "it":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 200
    .local v5, "$i$a$-forEach-MemoryManager$onTrimMemory$2":I
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 242
    .end local v4    # "it":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$a$-forEach-MemoryManager$onTrimMemory$2":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 243
    :cond_2
    nop

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    goto :goto_4

    .line 205
    :sswitch_2
    iget-object v1, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->_isMemoryLow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->memoryPressureCallbacks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 244
    .restart local v1    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .restart local v4    # "it":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 206
    .local v5, "$i$a$-forEach-MemoryManager$onTrimMemory$3":I
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 244
    .end local v4    # "it":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$a$-forEach-MemoryManager$onTrimMemory$3":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 245
    :cond_3
    nop

    .line 215
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0xa -> :sswitch_2
        0xf -> :sswitch_1
        0x14 -> :sswitch_0
        0x28 -> :sswitch_0
        0x3c -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public final registerLowMemoryCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "callback"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public final registerMemoryPressureCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "callback"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->memoryPressureCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public final triggerLowMemory()V
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryCallbacks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 238
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

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "it":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 187
    .local v5, "$i$a$-forEach-MemoryManager$triggerLowMemory$1":I
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 238
    .end local v4    # "it":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$a$-forEach-MemoryManager$triggerLowMemory$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 239
    :cond_0
    nop

    .line 188
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final triggerMemoryPressure()V
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->memoryPressureCallbacks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 236
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

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "it":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 180
    .local v5, "$i$a$-forEach-MemoryManager$triggerMemoryPressure$1":I
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 236
    .end local v4    # "it":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$a$-forEach-MemoryManager$triggerMemoryPressure$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 237
    :cond_0
    nop

    .line 181
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final unregisterLowMemoryCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "callback"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->lowMemoryCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public final unregisterMemoryPressureCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "callback"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/MemoryManager;->memoryPressureCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method
