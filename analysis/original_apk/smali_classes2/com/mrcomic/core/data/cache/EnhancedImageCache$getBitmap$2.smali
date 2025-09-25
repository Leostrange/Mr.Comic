.class final Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EnhancedImageCache.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrcomic/core/data/cache/EnhancedImageCache;->getBitmap(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
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
    c = "com.mrcomic.core.data.cache.EnhancedImageCache$getBitmap$2"
    f = "EnhancedImageCache.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0x84,
        0x98,
        0xa8,
        0xae
    }
    m = "invokeSuspend"
    n = {
        "bitmap",
        "snapshot",
        "bitmap"
    }
    s = {
        "L$1",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $cacheKey:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;


# direct methods
.method public static synthetic $r8$lambda$0jSdci37FOjUt0HU3AC91htM9Vw(Lcom/mrcomic/core/data/cache/EnhancedImageCache;JLcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->invokeSuspend$lambda$1$lambda$0(Lcom/mrcomic/core/data/cache/EnhancedImageCache;JLcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6tVwz_5f51hZMDZVR06qHS0bXnc(Lcom/mrcomic/core/data/cache/EnhancedImageCache;JLcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->invokeSuspend$lambda$3$lambda$2(Lcom/mrcomic/core/data/cache/EnhancedImageCache;JLcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HKcJ7nlzdX-fDTg9lGVX3ktr3MU(Lcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;
    .locals 0

    invoke-static {p0}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->invokeSuspend$lambda$4(Lcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gIrdN4t69Y863Y3GOA6IrbOZGVc(Lcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;
    .locals 0

    invoke-static {p0}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->invokeSuspend$lambda$5(Lcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mrcomic/core/data/cache/EnhancedImageCache;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iput-object p2, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->$cacheKey:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1$lambda$0(Lcom/mrcomic/core/data/cache/EnhancedImageCache;JLcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;
    .locals 18
    .param p0, "this$0"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .param p1, "$startTime"    # J
    .param p3, "it"    # Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-object/from16 v0, p3

    .line 134
    invoke-virtual/range {p3 .. p3}, Lcom/mrcomic/core/data/cache/CacheStatistics;->getTotalHits()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long v8, v1, v3

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, p1

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    invoke-static {v14, v15, v1, v2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$calculateAverageLoadTime(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/CacheStatistics;J)J

    move-result-wide v6

    .line 133
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 135
    nop

    .line 134
    nop

    .line 133
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    const/16 v16, 0xe7

    const/16 v17, 0x0

    invoke-static/range {v0 .. v17}, Lcom/mrcomic/core/data/cache/CacheStatistics;->copy$default(Lcom/mrcomic/core/data/cache/CacheStatistics;JJFJJJJJILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method private static final invokeSuspend$lambda$3$lambda$2(Lcom/mrcomic/core/data/cache/EnhancedImageCache;JLcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;
    .locals 18
    .param p0, "this$0"    # Lcom/mrcomic/core/data/cache/EnhancedImageCache;
    .param p1, "$startTime"    # J
    .param p3, "it"    # Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-object/from16 v0, p3

    .line 154
    invoke-virtual/range {p3 .. p3}, Lcom/mrcomic/core/data/cache/CacheStatistics;->getTotalHits()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long v8, v1, v3

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, p1

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    invoke-static {v14, v15, v1, v2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$calculateAverageLoadTime(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lcom/mrcomic/core/data/cache/CacheStatistics;J)J

    move-result-wide v6

    .line 153
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 155
    nop

    .line 154
    nop

    .line 153
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    const/16 v16, 0xe7

    const/16 v17, 0x0

    invoke-static/range {v0 .. v17}, Lcom/mrcomic/core/data/cache/CacheStatistics;->copy$default(Lcom/mrcomic/core/data/cache/CacheStatistics;JJFJJJJJILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object v0

    .line 156
    return-object v0
.end method

.method private static final invokeSuspend$lambda$4(Lcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;
    .locals 18
    .param p0, "it"    # Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-object/from16 v0, p0

    .line 168
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mrcomic/core/data/cache/CacheStatistics;->getTotalMisses()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0xdf

    const/16 v17, 0x0

    invoke-static/range {v0 .. v17}, Lcom/mrcomic/core/data/cache/CacheStatistics;->copy$default(Lcom/mrcomic/core/data/cache/CacheStatistics;JJFJJJJJILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object v0

    return-object v0
.end method

.method private static final invokeSuspend$lambda$5(Lcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;
    .locals 18
    .param p0, "it"    # Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-object/from16 v0, p0

    .line 174
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mrcomic/core/data/cache/CacheStatistics;->getTotalMisses()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0xdf

    const/16 v17, 0x0

    invoke-static/range {v0 .. v17}, Lcom/mrcomic/core/data/cache/CacheStatistics;->copy$default(Lcom/mrcomic/core/data/cache/CacheStatistics;JJFJJJJJILjava/lang/Object;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object v0

    return-object v0
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

    new-instance v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;

    iget-object v1, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iget-object v2, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->$cacheKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 126
    iget v1, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->label:I

    const-string v2, "EnhancedImageCache"

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v0    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 172
    :catch_0
    move-exception v4

    goto/16 :goto_4

    .line 126
    .end local v1    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v1, p0

    .restart local v1    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "$i$a$-let-EnhancedImageCache$getBitmap$2$2":I
    iget-object v5, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$2:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    .local v5, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    .local v6, "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    iget-object v7, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 161
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v5

    goto/16 :goto_2

    .line 126
    .end local v1    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;
    .end local v4    # "$i$a$-let-EnhancedImageCache$getBitmap$2$2":I
    .end local v6    # "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    move-object v1, p0

    .restart local v1    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "$i$a$-let-EnhancedImageCache$getBitmap$2$1":I
    iget-object v5, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$1:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v1    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;
    .end local v4    # "$i$a$-let-EnhancedImageCache$getBitmap$2$1":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 127
    .restart local v1    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 129
    .local v4, "startTime":J
    nop

    .line 131
    :try_start_3
    iget-object v6, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    invoke-static {v6}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$getMemoryCache$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Landroid/util/LruCache;

    move-result-object v6

    iget-object v7, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->$cacheKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    iget-object v7, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iget-object v8, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->$cacheKey:Ljava/lang/String;

    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 132
    .local v9, "$i$a$-let-EnhancedImageCache$getBitmap$2$1":I
    new-instance v10, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda0;

    invoke-direct {v10, v7, v4, v5}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda0;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;J)V

    iput-object v8, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$1:Ljava/lang/Object;

    const/4 v11, 0x1

    iput v11, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->label:I

    invoke-static {v7, v10, v1}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$updateStatistics(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v4    # "startTime":J
    if-ne v7, v0, :cond_0

    .line 126
    return-object v0

    .line 132
    :cond_0
    move-object v5, v6

    move-object v6, v8

    move v4, v9

    .line 138
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "$i$a$-let-EnhancedImageCache$getBitmap$2$1":I
    .local v4, "$i$a$-let-EnhancedImageCache$getBitmap$2$1":I
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Memory cache hit: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v5

    .line 143
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .local v4, "startTime":J
    :cond_1
    iget-object v6, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    invoke-static {v6}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$getDiskCache$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->$cacheKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iget-object v8, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->$cacheKey:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .local v6, "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    const/4 v9, 0x0

    .line 144
    .local v9, "$i$a$-let-EnhancedImageCache$getBitmap$2$2":I
    nop

    .line 145
    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {v6, v10}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v10

    .line 146
    .local v10, "inputStream":Ljava/io/InputStream;
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v10, v11

    .line 147
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 149
    if-eqz v10, :cond_3

    .line 151
    invoke-static {v7}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$getMemoryCache$p(Lcom/mrcomic/core/data/cache/EnhancedImageCache;)Landroid/util/LruCache;

    move-result-object v11

    invoke-virtual {v11, v8, v10}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v11, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda1;

    invoke-direct {v11, v7, v4, v5}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda1;-><init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;J)V

    iput-object v8, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$2:Ljava/lang/Object;

    const/4 v12, 0x2

    iput v12, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->label:I

    invoke-static {v7, v11, v1}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$updateStatistics(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .end local v4    # "startTime":J
    if-ne v7, v0, :cond_2

    .line 126
    return-object v0

    .line 152
    :cond_2
    move-object v7, v8

    move v4, v9

    move-object v5, v10

    .line 158
    .end local v9    # "$i$a$-let-EnhancedImageCache$getBitmap$2$2":I
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .local v4, "$i$a$-let-EnhancedImageCache$getBitmap$2$2":I
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Disk cache hit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 159
    return-object v5

    .line 161
    .end local v4    # "$i$a$-let-EnhancedImageCache$getBitmap$2$2":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "$i$a$-let-EnhancedImageCache$getBitmap$2$2":I
    :catch_2
    move-exception v5

    move-object v7, v8

    move v4, v9

    .line 162
    .end local v9    # "$i$a$-let-EnhancedImageCache$getBitmap$2$2":I
    .restart local v4    # "$i$a$-let-EnhancedImageCache$getBitmap$2$2":I
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading from disk cache: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v2, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    invoke-virtual {v6}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    move v9, v4

    .line 165
    .end local v4    # "$i$a$-let-EnhancedImageCache$getBitmap$2$2":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    .restart local v9    # "$i$a$-let-EnhancedImageCache$getBitmap$2$2":I
    :cond_3
    nop

    .line 143
    .end local v9    # "$i$a$-let-EnhancedImageCache$getBitmap$2$2":I
    :cond_4
    nop

    .line 168
    iget-object v4, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    new-instance v5, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda2;-><init>()V

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$2:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->label:I

    invoke-static {v4, v5, v6}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$updateStatistics(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_5

    .line 126
    return-object v0

    .line 169
    :cond_5
    :goto_3
    iget-object v4, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->$cacheKey:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache miss: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 170
    return-object v3

    .line 173
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    iget-object v5, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->$cacheKey:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting bitmap from cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v2, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v4    # "e":Ljava/lang/Exception;
    iget-object v2, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->this$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    new-instance v4, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda3;-><init>()V

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->L$2:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, v1, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->label:I

    invoke-static {v2, v4, v5}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->access$updateStatistics(Lcom/mrcomic/core/data/cache/EnhancedImageCache;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_6

    .line 126
    return-object v0

    .line 174
    :cond_6
    move-object v0, v1

    .line 175
    .end local v1    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;
    .restart local v0    # "this":Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;
    :goto_5
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
