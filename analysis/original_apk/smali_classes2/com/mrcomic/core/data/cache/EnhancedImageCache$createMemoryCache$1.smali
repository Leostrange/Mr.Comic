.class public final Lcom/mrcomic/core/data/cache/EnhancedImageCache$createMemoryCache$1;
.super Landroid/util/LruCache;
.source "EnhancedImageCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrcomic/core/data/cache/EnhancedImageCache;->createMemoryCache(J)Landroid/util/LruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0003H\u0014J*\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "com/mrcomic/core/data/cache/EnhancedImageCache$createMemoryCache$1",
        "Landroid/util/LruCache;",
        "",
        "Landroid/graphics/Bitmap;",
        "sizeOf",
        "",
        "key",
        "bitmap",
        "entryRemoved",
        "",
        "evicted",
        "",
        "oldValue",
        "newValue",
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
.field final synthetic this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;


# direct methods
.method constructor <init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;I)V
    .locals 0
    .param p1, "$receiver"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .param p2, "$super_call_param$1"    # I

    iput-object p1, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$createMemoryCache$1;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    .line 60
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "p0"    # Z
    .param p2, "p1"    # Ljava/lang/Object;
    .param p3, "p2"    # Ljava/lang/Object;
    .param p4, "p3"    # Ljava/lang/Object;

    .line 60
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, p3

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v2, p4

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$createMemoryCache$1;->entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 23
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Landroid/graphics/Bitmap;
    .param p4, "newValue"    # Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "oldValue"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    if-eqz p1, :cond_0

    .line 74
    iget-object v2, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$createMemoryCache$1;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iget-object v4, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$createMemoryCache$1;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    invoke-static {v4}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$getStatistics$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    iget-object v4, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$createMemoryCache$1;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    invoke-static {v4}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$getStatistics$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mrcomic/core/data/cache/CacheStatistics;->getMemoryEvictions()J

    move-result-wide v17

    const-wide/16 v19, 0x1

    add-long v17, v17, v19

    const-wide/16 v19, 0x0

    const/16 v21, 0xbf

    const/16 v22, 0x0

    invoke-static/range {v5 .. v22}, Lcom/mrcomic/core/data/cache/CacheStatistics;->copy$default(Lcom/mrcomic/core/data/cache/CacheStatistics;JJFJJJJJILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$setStatistics$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/CacheStatistics;)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Memory cache evicted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EnhancedImageCache"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 60
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$createMemoryCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    return v0
.end method
