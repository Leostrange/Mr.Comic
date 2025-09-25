.class final Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EnhancedImageCache.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrcomic/core/data/cache/EnhancedImageCache;->isInDiskCache(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnhancedImageCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnhancedImageCache.kt\ncom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,323:1\n1#2:324\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.mrcomic.core.data.cache.EnhancedImageCache$isInDiskCache$2"
    f = "EnhancedImageCache.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cacheKey:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;


# direct methods
.method constructor <init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mrcomic/core/data/cache/EnhancedImageCache;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iput-object p2, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;->$cacheKey:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;

    iget-object v1, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iget-object v2, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;->$cacheKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 316
    iget v0, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 317
    .local v0, "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;
    .local p1, "$result":Ljava/lang/Object;
    nop

    .line 318
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    invoke-static {v2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$getDiskCache$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;->$cacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v3, v2

    check-cast v3, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    const/4 v3, 0x0

    .line 318
    .local v3, "$i$a$-use-EnhancedImageCache$isInDiskCache$2$1":I
    nop

    .end local v3    # "$i$a$-use-EnhancedImageCache$isInDiskCache$2$1":I
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    .end local v0    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v0    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 319
    .restart local v0    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$isInDiskCache$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 320
    nop

    :cond_0
    :goto_0
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 321
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
