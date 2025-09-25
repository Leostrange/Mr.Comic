.class final Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EnhancedImageCache.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrcomic/core/data/cache/EnhancedImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.mrcomic.core.data.cache.EnhancedImageCache$putBitmap$2"
    f = "EnhancedImageCache.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $cacheKey:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;


# direct methods
.method constructor <init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mrcomic/core/data/cache/EnhancedImageCache;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iput-object p2, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->$bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;

    iget-object v1, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iget-object v2, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->$cacheKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "EnhancedImageCache"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 182
    iget v1, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 183
    .local v1, "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;
    .local p1, "$result":Ljava/lang/Object;
    nop

    .line 185
    :try_start_0
    iget-object v2, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    invoke-static {v2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$getMemoryCache$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->$cacheKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v2, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    invoke-static {v2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$getDiskCache$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->$cacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iget-object v4, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v5, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->$cacheKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    const/4 v6, 0x0

    .line 189
    .local v6, "$i$a$-let-EnhancedImageCache$putBitmap$2$1":I
    nop

    .line 190
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v2, v7}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v7

    .line 191
    .local v7, "outputStream":Ljava/io/OutputStream;
    invoke-static {v3}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$getSettings$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Lcom/mrcomic/core/data/cache/CacheSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mrcomic/core/data/cache/CacheSettings;->getCompressionQuality()I

    move-result v8

    invoke-static {v3, v4, v8}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$compressBitmap(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Landroid/graphics/Bitmap;I)[B

    move-result-object v3

    .line 192
    .local v3, "compressed":[B
    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    .line 193
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 194
    invoke-virtual {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cached to disk: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .end local v3    # "compressed":[B
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v3

    .line 197
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error writing to disk cache: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v0, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    invoke-virtual {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 199
    .end local v2    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 188
    .end local v6    # "$i$a$-let-EnhancedImageCache$putBitmap$2$1":I
    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 201
    :catch_1
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$putBitmap$2;->$cacheKey:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error putting bitmap in cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 203
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
