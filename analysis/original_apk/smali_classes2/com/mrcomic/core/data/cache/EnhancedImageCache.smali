.class public final Lcom/mrcomic/core/data/cache/EnhancedImageCache;
.super Ljava/lang/Object;
.source "EnhancedImageCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrcomic/core/data/cache/EnhancedImageCache$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnhancedImageCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnhancedImageCache.kt\ncom/mrcomic/core/data/cache/EnhancedImageCache\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,323:1\n120#2,8:324\n129#2:334\n120#2,10:335\n120#2,10:345\n120#2,10:355\n120#2,10:365\n120#2,10:375\n216#3,2:332\n*S KotlinDebug\n*F\n+ 1 EnhancedImageCache.kt\ncom/mrcomic/core/data/cache/EnhancedImageCache\n*L\n102#1:324,8\n102#1:334\n209#1:335,10\n222#1:345,10\n239#1:355,10\n293#1:365,10\n301#1:375,10\n112#1:332,2\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 72\u00020\u0001:\u00017B\u0013\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0016\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001c\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u001dJ \u0010\u001e\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010 J\u0016\u0010!\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u000e\u0010#\u001a\u00020\u0017H\u0086@\u00a2\u0006\u0002\u0010$J\u000e\u0010%\u001a\u00020\u0012H\u0086@\u00a2\u0006\u0002\u0010$J\u000e\u0010&\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u000eJ\u0018\u0010\'\u001a\u00020(2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020\"H\u0002J\u0018\u0010*\u001a\u00020\u00152\u0006\u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u0015H\u0002J\"\u0010-\u001a\u00020\u00172\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120/H\u0082@\u00a2\u0006\u0002\u00100J\u0016\u00101\u001a\u00020\"2\u0006\u00102\u001a\u00020\"H\u0086@\u00a2\u0006\u0002\u00103J\u000e\u00104\u001a\u0002052\u0006\u0010\u001c\u001a\u00020\rJ\u0016\u00106\u001a\u0002052\u0006\u0010\u001c\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/mrcomic/core/data/cache/EnhancedImageCache;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "settings",
        "Lcom/mrcomic/core/data/cache/CacheSettings;",
        "cacheMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "statisticsMutex",
        "memoryCache",
        "Landroid/util/LruCache;",
        "",
        "Landroid/graphics/Bitmap;",
        "diskCache",
        "Lcom/jakewharton/disklrucache/DiskLruCache;",
        "statistics",
        "Lcom/mrcomic/core/data/cache/CacheStatistics;",
        "createMemoryCache",
        "maxSize",
        "",
        "initializeDiskCache",
        "",
        "updateSettings",
        "newSettings",
        "(Lcom/mrcomic/core/data/cache/CacheSettings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getBitmap",
        "cacheKey",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "putBitmap",
        "bitmap",
        "(Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeBitmap",
        "",
        "clearCache",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getStatistics",
        "optimizeBitmap",
        "compressBitmap",
        "",
        "quality",
        "calculateAverageLoadTime",
        "stats",
        "newLoadTime",
        "updateStatistics",
        "update",
        "Lkotlin/Function1;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trimMemoryCache",
        "percentage",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isInMemoryCache",
        "",
        "isInDiskCache",
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
.field private static final BYTES_IN_MEGABYTE:I = 0x100000

.field public static final Companion:Lcom/mrcomic/core/data/cache/EnhancedImageCache$Companion;

.field private static final DISK_CACHE_SUBDIR:Ljava/lang/String; = "comic_image_cache"

.field private static final DISK_CACHE_VALUE_COUNT:I = 0x1

.field private static final DISK_CACHE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EnhancedImageCache"


# instance fields
.field private final cacheMutex:Lkotlinx/coroutines/sync/Mutex;

.field private final context:Landroid/content/Context;

.field private diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

.field private memoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Lcom/mrcomic/core/data/cache/CacheSettings;

.field private statistics:Lcom/mrcomic/core/data/cache/CacheStatistics;

.field private final statisticsMutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->Companion:Lcom/mrcomic/core/data/cache/EnhancedImageCache$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->context:Landroid/content/Context;

    .line 38
    sget-object v2, Lcom/mrcomic/core/data/cache/CacheSettings;->Companion:Lcom/mrcomic/core/data/cache/CacheSettings$Companion;

    invoke-virtual {v2}, Lcom/mrcomic/core/data/cache/CacheSettings$Companion;->getMEDIUM()Lcom/mrcomic/core/data/cache/CacheSettings;

    move-result-object v2

    iput-object v2, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->settings:Lcom/mrcomic/core/data/cache/CacheSettings;

    .line 39
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v5

    iput-object v5, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->cacheMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 40
    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    iput-object v2, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statisticsMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 49
    new-instance v2, Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-object v3, v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0xff

    const/16 v20, 0x0

    invoke-direct/range {v3 .. v20}, Lcom/mrcomic/core/data/cache/CacheStatistics;-><init>(JJFJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statistics:Lcom/mrcomic/core/data/cache/CacheStatistics;

    .line 51
    nop

    .line 52
    iget-object v2, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->settings:Lcom/mrcomic/core/data/cache/CacheSettings;

    invoke-virtual {v2}, Lcom/mrcomic/core/data/cache/CacheSettings;->getMaxMemoryCacheSize()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->createMemoryCache(J)Landroid/util/LruCache;

    move-result-object v2

    iput-object v2, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    .line 53
    invoke-direct/range {p0 .. p0}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->initializeDiskCache()V

    .line 54
    nop

    .line 27
    return-void
.end method

.method public static final synthetic access$calculateAverageLoadTime(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/CacheStatistics;J)J
    .locals 2
    .param p0, "$this"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .param p1, "stats"    # Lcom/mrcomic/core/data/cache/CacheStatistics;
    .param p2, "newLoadTime"    # J

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->calculateAverageLoadTime(Lcom/mrcomic/core/data/cache/CacheStatistics;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$compressBitmap(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Landroid/graphics/Bitmap;I)[B
    .locals 1
    .param p0, "$this"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "quality"    # I

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->compressBitmap(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getDiskCache$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Lcom/jakewharton/disklrucache/DiskLruCache;
    .locals 1
    .param p0, "$this"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .line 26
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    return-object v0
.end method

.method public static final synthetic access$getMemoryCache$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Landroid/util/LruCache;
    .locals 1
    .param p0, "$this"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .line 26
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public static final synthetic access$getSettings$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Lcom/mrcomic/core/data/cache/CacheSettings;
    .locals 1
    .param p0, "$this"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .line 26
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->settings:Lcom/mrcomic/core/data/cache/CacheSettings;

    return-object v0
.end method

.method public static final synthetic access$getStatistics$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Lcom/mrcomic/core/data/cache/CacheStatistics;
    .locals 1
    .param p0, "$this"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .line 26
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statistics:Lcom/mrcomic/core/data/cache/CacheStatistics;

    return-object v0
.end method

.method public static final synthetic access$setStatistics$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/CacheStatistics;)V
    .locals 0
    .param p0, "$this"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .param p1, "<set-?>"    # Lcom/mrcomic/core/data/cache/CacheStatistics;

    .line 26
    iput-object p1, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statistics:Lcom/mrcomic/core/data/cache/CacheStatistics;

    return-void
.end method

.method public static final synthetic access$updateStatistics(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .param p1, "update"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->updateStatistics(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final calculateAverageLoadTime(Lcom/mrcomic/core/data/cache/CacheStatistics;J)J
    .locals 6
    .param p1, "stats"    # Lcom/mrcomic/core/data/cache/CacheStatistics;
    .param p2, "newLoadTime"    # J

    .line 282
    invoke-virtual {p1}, Lcom/mrcomic/core/data/cache/CacheStatistics;->getTotalRequests()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 283
    invoke-virtual {p1}, Lcom/mrcomic/core/data/cache/CacheStatistics;->getAverageLoadTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mrcomic/core/data/cache/CacheStatistics;->getTotalRequests()J

    move-result-wide v2

    mul-long/2addr v0, v2

    add-long/2addr v0, p2

    invoke-virtual {p1}, Lcom/mrcomic/core/data/cache/CacheStatistics;->getTotalRequests()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    div-long/2addr v0, v2

    goto :goto_0

    .line 285
    :cond_0
    move-wide v0, p2

    .line 282
    :goto_0
    return-wide v0
.end method

.method private final compressBitmap(Landroid/graphics/Bitmap;I)[B
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "quality"    # I

    .line 273
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 274
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v2, v0

    check-cast v2, Ljava/io/OutputStream;

    invoke-virtual {p1, v1, p2, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 275
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "toByteArray(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final createMemoryCache(J)Landroid/util/LruCache;
    .locals 2
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 60
    const/16 v0, 0x400

    int-to-long v0, v0

    div-long v0, p1, v0

    long-to-int v0, v0

    new-instance v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$createMemoryCache$1;

    invoke-direct {v1, p0, v0}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$createMemoryCache$1;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;I)V

    check-cast v1, Landroid/util/LruCache;

    return-object v1
.end method

.method private final initializeDiskCache()V
    .locals 5

    .line 85
    const-string v0, "EnhancedImageCache"

    .line 86
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "comic_image_cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .local v1, "cacheDir":Ljava/io/File;
    nop

    .line 88
    nop

    .line 89
    nop

    .line 90
    nop

    .line 91
    iget-object v2, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->settings:Lcom/mrcomic/core/data/cache/CacheSettings;

    invoke-virtual {v2}, Lcom/mrcomic/core/data/cache/CacheSettings;->getMaxDiskCacheSize()J

    move-result-wide v2

    .line 87
    const/4 v4, 0x1

    invoke-static {v1, v4, v4, v2, v3}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disk cache initialized at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cacheDir":Ljava/io/File;
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to initialize disk cache"

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private final updateStatistics(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mrcomic/core/data/cache/CacheStatistics;",
            "Lcom/mrcomic/core/data/cache/CacheStatistics;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;

    iget v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;

    invoke-direct {v0, p0, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 292
    iget v3, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$withLock":I
    const/4 v2, 0x0

    .local v2, "owner$iv":Ljava/lang/Object;
    iget-object v3, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    .local v3, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v4, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "update":Lkotlin/jvm/functions/Function1;
    iget-object v5, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .local v5, "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "owner$iv":Ljava/lang/Object;
    .end local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v4    # "update":Lkotlin/jvm/functions/Function1;
    .end local v5    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .end local p1    # "$i$f$withLock":I
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    .restart local v5    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    move-object v4, p1

    .line 293
    .restart local v4    # "update":Lkotlin/jvm/functions/Function1;
    iget-object v3, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statisticsMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 365
    .restart local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    const/4 p1, 0x0

    .local p1, "owner$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 366
    .local v6, "$i$f$withLock":I
    nop

    .line 370
    iput-object v5, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateStatistics$1;->label:I

    invoke-interface {v3, p1, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_1

    .line 292
    return-object v2

    .line 370
    :cond_1
    move-object v2, p1

    move p1, v6

    .line 371
    .end local v6    # "$i$f$withLock":I
    .restart local v2    # "owner$iv":Ljava/lang/Object;
    .local p1, "$i$f$withLock":I
    :goto_1
    nop

    .line 372
    const/4 v6, 0x0

    .line 294
    .local v6, "$i$a$-withLock$default-EnhancedImageCache$updateStatistics$2":I
    :try_start_0
    iget-object v7, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statistics:Lcom/mrcomic/core/data/cache/CacheStatistics;

    invoke-interface {v4, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mrcomic/core/data/cache/CacheStatistics;

    iput-object v7, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statistics:Lcom/mrcomic/core/data/cache/CacheStatistics;

    .line 295
    .end local v4    # "update":Lkotlin/jvm/functions/Function1;
    .end local v5    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    nop

    .end local v6    # "$i$a$-withLock$default-EnhancedImageCache$updateStatistics$2":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    nop

    .line 374
    invoke-interface {v3, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 372
    .end local v2    # "owner$iv":Ljava/lang/Object;
    .end local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 296
    .end local p1    # "$i$f$withLock":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 374
    .restart local v2    # "owner$iv":Ljava/lang/Object;
    .restart local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p1    # "$i$f$withLock":I
    :catchall_0
    move-exception v4

    invoke-interface {v3, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final clearCache(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 31
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

    const-string v2, "EnhancedImageCache"

    instance-of v0, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;

    iget v3, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;

    move-object/from16 v3, p0

    invoke-direct {v0, v3, v1}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v4, v0

    .local v4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v5, v4, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;->result:Ljava/lang/Object;

    .local v5, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 222
    iget v6, v4, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;->label:I

    packed-switch v6, :pswitch_data_0

    .end local v4    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v5    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v4    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v5    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$f$withLock":I
    const/4 v6, 0x0

    .local v6, "owner$iv":Ljava/lang/Object;
    iget-object v7, v4, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    .local v7, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v8, v4, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .local v8, "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v9, v0

    goto :goto_1

    .end local v0    # "$i$f$withLock":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v8    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    :pswitch_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v8, p0

    .restart local v8    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    iget-object v7, v8, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->cacheMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 345
    .restart local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    const/4 v6, 0x0

    .restart local v6    # "owner$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 346
    .local v9, "$i$f$withLock":I
    nop

    .line 350
    iput-object v8, v4, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;->L$0:Ljava/lang/Object;

    iput-object v7, v4, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;->L$1:Ljava/lang/Object;

    const/4 v10, 0x1

    iput v10, v4, Lcom/mrcomic/core/data/cache/EnhancedImageCache$clearCache$1;->label:I

    invoke-interface {v7, v6, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_1

    .line 222
    return-object v0

    .line 351
    :cond_1
    :goto_1
    nop

    .line 352
    const/4 v10, 0x0

    .line 223
    .local v10, "$i$a$-withLock$default-EnhancedImageCache$clearCache$2":I
    :try_start_0
    iget-object v0, v8, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    nop

    .line 225
    :try_start_1
    iget-object v0, v8, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->delete()V

    .line 226
    :cond_2
    invoke-direct {v8}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->initializeDiskCache()V

    .line 227
    const-string v0, "Cache cleared"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v11, "Error clearing disk cache"

    move-object v12, v0

    check-cast v12, Ljava/lang/Throwable;

    invoke-static {v2, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    new-instance v0, Lcom/mrcomic/core/data/cache/CacheStatistics;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0xff

    const/16 v30, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v30}, Lcom/mrcomic/core/data/cache/CacheStatistics;-><init>(JJFJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v8, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statistics:Lcom/mrcomic/core/data/cache/CacheStatistics;

    .line 234
    .end local v8    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    nop

    .end local v10    # "$i$a$-withLock$default-EnhancedImageCache$clearCache$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    nop

    .line 354
    invoke-interface {v7, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 352
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 234
    .end local v9    # "$i$f$withLock":I
    return-object v0

    .line 354
    .restart local v6    # "owner$iv":Ljava/lang/Object;
    .restart local v7    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v9    # "$i$f$withLock":I
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

.method public final getBitmap(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 126
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    return-object v0
.end method

.method public final getStatistics(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 32
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/mrcomic/core/data/cache/CacheStatistics;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p1

    instance-of v0, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;

    iget v2, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v3, v0

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v4, v3, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 239
    iget v5, v3, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;->label:I

    packed-switch v5, :pswitch_data_0

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$f$withLock":I
    const/4 v5, 0x0

    .local v5, "owner$iv":Ljava/lang/Object;
    iget-object v6, v3, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    .local v6, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v7, v3, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .local v7, "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v8, v0

    goto :goto_1

    .end local v0    # "$i$f$withLock":I
    .end local v5    # "owner$iv":Ljava/lang/Object;
    .end local v6    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v7    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    :pswitch_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p0

    .restart local v7    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    iget-object v6, v7, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statisticsMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 355
    .restart local v6    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    const/4 v5, 0x0

    .restart local v5    # "owner$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 356
    .local v8, "$i$f$withLock":I
    nop

    .line 360
    iput-object v7, v3, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;->L$0:Ljava/lang/Object;

    iput-object v6, v3, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;->L$1:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v3, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getStatistics$1;->label:I

    invoke-interface {v6, v5, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_1

    .line 239
    return-object v0

    .line 361
    :cond_1
    :goto_1
    nop

    .line 362
    const/4 v9, 0x0

    .line 240
    .local v9, "$i$a$-withLock$default-EnhancedImageCache$getStatistics$2":I
    :try_start_0
    iget-object v0, v7, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v10, v0

    const-wide/16 v12, 0x400

    mul-long/2addr v10, v12

    .line 241
    .local v10, "memoryUsed":J
    nop

    .line 242
    const-wide/16 v12, 0x0

    :try_start_1
    iget-object v0, v7, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->size()J

    move-result-wide v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_2
    move-wide v14, v12

    :goto_2
    move-wide/from16 v17, v14

    goto :goto_3

    .line 243
    :catch_0
    move-exception v0

    .line 244
    move-wide/from16 v17, v12

    .line 241
    :goto_3
    nop

    .line 247
    .local v17, "diskUsed":J
    :try_start_2
    iget-object v0, v7, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statistics:Lcom/mrcomic/core/data/cache/CacheStatistics;

    invoke-virtual {v0}, Lcom/mrcomic/core/data/cache/CacheStatistics;->getTotalRequests()J

    move-result-wide v14

    cmp-long v0, v14, v12

    if-lez v0, :cond_3

    .line 248
    iget-object v0, v7, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statistics:Lcom/mrcomic/core/data/cache/CacheStatistics;

    invoke-virtual {v0}, Lcom/mrcomic/core/data/cache/CacheStatistics;->getTotalHits()J

    move-result-wide v12

    long-to-float v0, v12

    iget-object v12, v7, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statistics:Lcom/mrcomic/core/data/cache/CacheStatistics;

    invoke-virtual {v12}, Lcom/mrcomic/core/data/cache/CacheStatistics;->getTotalRequests()J

    move-result-wide v12

    long-to-float v12, v12

    div-float/2addr v0, v12

    move/from16 v19, v0

    goto :goto_4

    .line 249
    :cond_3
    const/4 v0, 0x0

    move/from16 v19, v0

    .line 247
    :goto_4
    nop

    .line 251
    .local v19, "hitRate":F
    iget-object v14, v7, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->statistics:Lcom/mrcomic/core/data/cache/CacheStatistics;

    .line 252
    .end local v7    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    nop

    .line 253
    nop

    .line 254
    nop

    .line 251
    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0xf8

    const/16 v31, 0x0

    move-wide v15, v10

    invoke-static/range {v14 .. v31}, Lcom/mrcomic/core/data/cache/CacheStatistics;->copy$default(Lcom/mrcomic/core/data/cache/CacheStatistics;JJFJJJJJILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    nop

    .line 362
    .end local v9    # "$i$a$-withLock$default-EnhancedImageCache$getStatistics$2":I
    .end local v10    # "memoryUsed":J
    .end local v17    # "diskUsed":J
    .end local v19    # "hitRate":F
    nop

    .line 364
    invoke-interface {v6, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 362
    .end local v5    # "owner$iv":Ljava/lang/Object;
    .end local v6    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 256
    .end local v8    # "$i$f$withLock":I
    return-object v0

    .line 364
    .restart local v5    # "owner$iv":Ljava/lang/Object;
    .restart local v6    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v8    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-interface {v6, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isInDiskCache(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 316
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 322
    return-object v0
.end method

.method public final isInMemoryCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;

    const-string v0, "cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final optimizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->settings:Lcom/mrcomic/core/data/cache/CacheSettings;

    invoke-virtual {v0}, Lcom/mrcomic/core/data/cache/CacheSettings;->getUseRgb565Format()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    .line 263
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 265
    :cond_0
    nop

    .line 262
    :goto_0
    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method public final putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 182
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 204
    return-object v0
.end method

.method public final removeBitmap(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "EnhancedImageCache"

    instance-of v1, p2, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;

    iget v2, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;

    invoke-direct {v1, p0, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v2, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 209
    iget v4, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;->label:I

    packed-switch v4, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$withLock":I
    const/4 v3, 0x0

    .local v3, "owner$iv":Ljava/lang/Object;
    iget-object v4, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    .local v4, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v5, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, "cacheKey":Ljava/lang/String;
    iget-object v6, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .local v6, "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "owner$iv":Ljava/lang/Object;
    .end local v4    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v5    # "cacheKey":Ljava/lang/String;
    .end local v6    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .end local p1    # "$i$f$withLock":I
    :pswitch_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    .restart local v6    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    move-object v5, p1

    .restart local v5    # "cacheKey":Ljava/lang/String;
    iget-object v4, v6, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->cacheMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 335
    .restart local v4    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    const/4 p1, 0x0

    .local p1, "owner$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 336
    .local v7, "$i$f$withLock":I
    nop

    .line 340
    iput-object v6, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;->L$2:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$removeBitmap$1;->label:I

    invoke-interface {v4, p1, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_1

    .line 209
    return-object v3

    .line 340
    :cond_1
    move-object v3, p1

    move p1, v7

    .line 341
    .end local v7    # "$i$f$withLock":I
    .restart local v3    # "owner$iv":Ljava/lang/Object;
    .local p1, "$i$f$withLock":I
    :goto_1
    nop

    .line 342
    const/4 v7, 0x0

    .line 210
    .local v7, "$i$a$-withLock$default-EnhancedImageCache$removeBitmap$2":I
    :try_start_0
    iget-object v8, v6, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    invoke-virtual {v8, v5}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    nop

    .line 212
    :try_start_1
    iget-object v8, v6, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-eqz v8, :cond_2

    invoke-virtual {v8, v5}, Lcom/jakewharton/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    nop

    .line 213
    .end local v6    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed from cache: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 214
    :catch_0
    move-exception v6

    .line 215
    .local v6, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error removing from disk cache: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v6

    check-cast v9, Ljava/lang/Throwable;

    invoke-static {v0, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 216
    .end local v5    # "cacheKey":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .end local v7    # "$i$a$-withLock$default-EnhancedImageCache$removeBitmap$2":I
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    nop

    .line 344
    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 342
    .end local v3    # "owner$iv":Ljava/lang/Object;
    .end local v4    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 217
    .end local p1    # "$i$f$withLock":I
    return-object v0

    .line 344
    .restart local v3    # "owner$iv":Ljava/lang/Object;
    .restart local v4    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p1    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final trimMemoryCache(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;

    iget v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;

    invoke-direct {v0, p0, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 301
    iget v3, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$withLock":I
    iget v2, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;->I$0:I

    .local v2, "percentage":I
    const/4 v3, 0x0

    .local v3, "owner$iv":Ljava/lang/Object;
    iget-object v4, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    .local v4, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v5, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .local v5, "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "percentage":I
    .end local v3    # "owner$iv":Ljava/lang/Object;
    .end local v4    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v5    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .end local p1    # "$i$f$withLock":I
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    .restart local v5    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .local p1, "percentage":I
    iget-object v4, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->cacheMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 375
    .restart local v4    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    const/4 v3, 0x0

    .restart local v3    # "owner$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 376
    .local v6, "$i$f$withLock":I
    nop

    .line 380
    iput-object v5, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;->I$0:I

    const/4 v7, 0x1

    iput v7, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$trimMemoryCache$1;->label:I

    invoke-interface {v4, v3, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_1

    .line 301
    return-object v2

    .line 380
    :cond_1
    move v2, p1

    move p1, v6

    .line 381
    .end local v6    # "$i$f$withLock":I
    .restart local v2    # "percentage":I
    .local p1, "$i$f$withLock":I
    :goto_1
    nop

    .line 382
    const/4 v6, 0x0

    .line 302
    .local v6, "$i$a$-withLock$default-EnhancedImageCache$trimMemoryCache$2":I
    :try_start_0
    iget-object v7, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    iget-object v8, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    invoke-virtual {v8}, Landroid/util/LruCache;->maxSize()I

    move-result v8

    mul-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x64

    invoke-virtual {v7, v8}, Landroid/util/LruCache;->trimToSize(I)V

    .line 303
    .end local v5    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    const-string v5, "EnhancedImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Memory cache trimmed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .end local v2    # "percentage":I
    .end local v6    # "$i$a$-withLock$default-EnhancedImageCache$trimMemoryCache$2":I
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    nop

    .line 384
    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 382
    .end local v3    # "owner$iv":Ljava/lang/Object;
    .end local v4    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 304
    .end local p1    # "$i$f$withLock":I
    return-object v2

    .line 384
    .restart local v3    # "owner$iv":Ljava/lang/Object;
    .restart local v4    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p1    # "$i$f$withLock":I
    :catchall_0
    move-exception v2

    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateSettings(Lcom/mrcomic/core/data/cache/CacheSettings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mrcomic/core/data/cache/CacheSettings;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;

    iget v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;

    invoke-direct {v0, p0, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 102
    iget v3, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$withLock":I
    const/4 v2, 0x0

    .local v2, "owner$iv":Ljava/lang/Object;
    iget-object v3, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    .local v3, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v4, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/mrcomic/core/data/cache/CacheSettings;

    .local v4, "newSettings":Lcom/mrcomic/core/data/cache/CacheSettings;
    iget-object v5, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .local v5, "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "owner$iv":Ljava/lang/Object;
    .end local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v4    # "newSettings":Lcom/mrcomic/core/data/cache/CacheSettings;
    .end local v5    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .end local p1    # "$i$f$withLock":I
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    .restart local v5    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    move-object v4, p1

    .restart local v4    # "newSettings":Lcom/mrcomic/core/data/cache/CacheSettings;
    iget-object v3, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->cacheMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 324
    .restart local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    const/4 p1, 0x0

    .local p1, "owner$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 325
    .local v6, "$i$f$withLock":I
    nop

    .line 329
    iput-object v5, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$updateSettings$1;->label:I

    invoke-interface {v3, p1, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_1

    .line 102
    return-object v2

    .line 329
    :cond_1
    move-object v2, p1

    move p1, v6

    .line 330
    .end local v6    # "$i$f$withLock":I
    .restart local v2    # "owner$iv":Ljava/lang/Object;
    .local p1, "$i$f$withLock":I
    :goto_1
    nop

    .line 331
    const/4 v6, 0x0

    .line 103
    .local v6, "$i$a$-withLock$default-EnhancedImageCache$updateSettings$2":I
    :try_start_0
    iget-object v7, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->settings:Lcom/mrcomic/core/data/cache/CacheSettings;

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 104
    iput-object v4, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->settings:Lcom/mrcomic/core/data/cache/CacheSettings;

    .line 107
    .end local v4    # "newSettings":Lcom/mrcomic/core/data/cache/CacheSettings;
    iget-object v4, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->settings:Lcom/mrcomic/core/data/cache/CacheSettings;

    invoke-virtual {v4}, Lcom/mrcomic/core/data/cache/CacheSettings;->getMaxMemoryCacheSize()J

    move-result-wide v7

    iget-object v4, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->maxSize()I

    move-result v4

    int-to-long v9, v4

    const-wide/16 v11, 0x400

    mul-long/2addr v9, v11

    cmp-long v4, v7, v9

    if-eqz v4, :cond_4

    .line 108
    iget-object v4, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    .line 109
    .local v4, "oldCache":Landroid/util/LruCache;
    iget-object v7, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->settings:Lcom/mrcomic/core/data/cache/CacheSettings;

    invoke-virtual {v7}, Lcom/mrcomic/core/data/cache/CacheSettings;->getMaxMemoryCacheSize()J

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->createMemoryCache(J)Landroid/util/LruCache;

    move-result-object v7

    iput-object v7, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    .line 112
    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v7

    const-string v8, "snapshot(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v7

    .local v4, "$this$forEach$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 332
    .local v7, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v4    # "$this$forEach$iv":Ljava/util/Map;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "element$iv":Ljava/util/Map$Entry;
    const/4 v9, 0x0

    .line 112
    .end local v4    # "element$iv":Ljava/util/Map$Entry;
    .local v9, "$i$a$-forEach-EnhancedImageCache$updateSettings$2$1":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 113
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    iget-object v11, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    invoke-virtual {v11}, Landroid/util/LruCache;->size()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v12

    div-int/lit16 v12, v12, 0x400

    add-int/2addr v11, v12

    iget-object v12, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    invoke-virtual {v12}, Landroid/util/LruCache;->maxSize()I

    move-result v12

    if-gt v11, v12, :cond_2

    .line 114
    iget-object v11, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->memoryCache:Landroid/util/LruCache;

    invoke-virtual {v11, v10, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "key":Ljava/lang/String;
    :cond_2
    nop

    .end local v9    # "$i$a$-forEach-EnhancedImageCache$updateSettings$2$1":I
    goto :goto_2

    .line 333
    :cond_3
    nop

    .line 119
    .end local v7    # "$i$f$forEach":I
    :cond_4
    const-string v4, "EnhancedImageCache"

    iget-object v7, v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->settings:Lcom/mrcomic/core/data/cache/CacheSettings;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cache settings updated: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v5    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    :cond_5
    nop

    .end local v6    # "$i$a$-withLock$default-EnhancedImageCache$updateSettings$2":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    nop

    .line 334
    invoke-interface {v3, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 331
    .end local v2    # "owner$iv":Ljava/lang/Object;
    .end local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 121
    .end local p1    # "$i$f$withLock":I
    return-object v4

    .line 334
    .restart local v2    # "owner$iv":Ljava/lang/Object;
    .restart local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p1    # "$i$f$withLock":I
    :catchall_0
    move-exception v4

    invoke-interface {v3, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
