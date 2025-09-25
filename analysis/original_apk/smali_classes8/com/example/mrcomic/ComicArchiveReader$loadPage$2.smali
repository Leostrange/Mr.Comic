.class final Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ComicArchiveReader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/ComicArchiveReader;->loadPage(Landroid/net/Uri;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComicArchiveReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComicArchiveReader.kt\ncom/example/mrcomic/ComicArchiveReader$loadPage$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,388:1\n1#2:389\n*E\n"
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
    c = "com.example.mrcomic.ComicArchiveReader$loadPage$2"
    f = "ComicArchiveReader.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x3,
        0x4
    }
    l = {
        0x62,
        0x6b,
        0x6c,
        0x6d,
        0x76
    }
    m = "invokeSuspend"
    n = {
        "cacheKey",
        "cacheKey",
        "cacheKey",
        "cacheKey",
        "optimizedBitmap"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $comicType:Ljava/lang/String;

.field final synthetic $pageNumber:I

.field final synthetic $uri:Landroid/net/Uri;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/example/mrcomic/ComicArchiveReader;


# direct methods
.method constructor <init>(Landroid/net/Uri;ILcom/example/mrcomic/ComicArchiveReader;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Lcom/example/mrcomic/ComicArchiveReader;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$uri:Landroid/net/Uri;

    iput p2, p0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$pageNumber:I

    iput-object p3, p0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    iput-object p4, p0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$comicType:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;

    iget-object v1, p0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$uri:Landroid/net/Uri;

    iget v2, p0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$pageNumber:I

    iget-object v3, p0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    iget-object v4, p0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$comicType:Ljava/lang/String;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;-><init>(Landroid/net/Uri;ILcom/example/mrcomic/ComicArchiveReader;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 94
    iget v1, p0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->label:I

    const/4 v2, 0x0

    const-string v3, "ComicArchiveReader"

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-let-ComicArchiveReader$loadPage$2$2":I
    iget v4, v0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->I$0:I

    iget-object v5, v0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->L$0:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    .local v5, "optimizedBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .line 123
    .end local v1    # "$i$a$-let-ComicArchiveReader$loadPage$2$2":I
    .end local v5    # "optimizedBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    goto/16 :goto_a

    .line 94
    .end local v0    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .local v4, "cacheKey":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v4

    move-object v4, v1

    move-object v1, p1

    goto/16 :goto_2

    .end local v1    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .end local v4    # "cacheKey":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v1, p0

    .restart local v1    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "cacheKey":Ljava/lang/String;
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v5, v4

    move-object v4, v1

    move-object v1, p1

    goto/16 :goto_4

    .end local v1    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .end local v4    # "cacheKey":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    move-object v1, p0

    .restart local v1    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "cacheKey":Ljava/lang/String;
    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v4

    move-object v4, v1

    move-object v1, p1

    goto/16 :goto_3

    .line 123
    .end local v4    # "cacheKey":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_a

    .line 94
    .end local v1    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_4
    move-object v1, p0

    .restart local v1    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "cacheKey":Ljava/lang/String;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, v1

    move-object v1, p1

    goto :goto_0

    .end local v1    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .end local v4    # "cacheKey":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 95
    .restart local v1    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->hashCode()I

    move-result v4

    iget v5, v1, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$pageNumber:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .restart local v4    # "cacheKey":Ljava/lang/String;
    iget-object v5, v1, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    invoke-static {v5}, Lcom/example/mrcomic/ComicArchiveReader;->access$getEnhancedImageCache$p(Lcom/example/mrcomic/ComicArchiveReader;)Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v1, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->label:I

    invoke-virtual {v5, v4, v6}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->getBitmap(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 94
    return-object v0

    .line 98
    :cond_0
    move-object v11, v1

    move-object v1, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v11

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v4, "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .local v5, "cacheKey":Ljava/lang/String;
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget v0, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$pageNumber:I

    .end local v5    # "cacheKey":Ljava/lang/String;
    .local p1, "it":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 99
    .local v2, "$i$a$-let-ComicArchiveReader$loadPage$2$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache hit for page "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object p1

    .line 103
    .end local v2    # "$i$a$-let-ComicArchiveReader$loadPage$2$1":I
    .end local p1    # "it":Landroid/graphics/Bitmap;
    .restart local v5    # "cacheKey":Ljava/lang/String;
    :cond_1
    iget p1, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$pageNumber:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cache miss for page "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, ", loading from archive"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    nop

    .line 106
    :try_start_4
    iget-object p1, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$comicType:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "toUpperCase(...)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    :goto_1
    goto/16 :goto_5

    :sswitch_0
    const-string v6, "ZIP"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :sswitch_1
    const-string v6, "PDF"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 109
    :cond_3
    iget-object p1, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    iget-object v6, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$uri:Landroid/net/Uri;

    iget v7, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$pageNumber:I

    move-object v8, v4

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v5, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->L$0:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->label:I

    invoke-static {p1, v6, v7, v8}, Lcom/example/mrcomic/ComicArchiveReader;->access$loadPdfPage(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    .line 94
    return-object v0

    .line 109
    :cond_4
    :goto_2
    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_6

    .line 106
    :sswitch_2
    const-string v6, "CBZ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    :cond_5
    iget-object p1, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    iget-object v6, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$uri:Landroid/net/Uri;

    iget v7, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$pageNumber:I

    move-object v8, v4

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v5, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->L$0:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->label:I

    invoke-static {p1, v6, v7, v8}, Lcom/example/mrcomic/ComicArchiveReader;->access$loadZipPage(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    .line 94
    return-object v0

    .line 107
    :cond_6
    :goto_3
    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_6

    .line 106
    :sswitch_3
    const-string v6, "CBR"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 108
    :cond_7
    iget-object p1, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    iget-object v6, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$uri:Landroid/net/Uri;

    iget v7, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$pageNumber:I

    move-object v8, v4

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v5, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->L$0:Ljava/lang/Object;

    const/4 v9, 0x3

    iput v9, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->label:I

    invoke-static {p1, v6, v7, v8}, Lcom/example/mrcomic/ComicArchiveReader;->access$loadRarPage(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    .line 94
    return-object v0

    .line 108
    :cond_8
    :goto_4
    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_6

    .line 110
    :goto_5
    move-object p1, v2

    .line 106
    :goto_6
    nop

    .line 114
    .local p1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_9

    iget-object v6, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    .line 389
    .local p1, "it":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 114
    .local v7, "$i$a$-let-ComicArchiveReader$loadPage$2$optimizedBitmap$1":I
    invoke-static {v6, p1}, Lcom/example/mrcomic/ComicArchiveReader;->access$optimizeBitmap(Lcom/example/mrcomic/ComicArchiveReader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .end local v7    # "$i$a$-let-ComicArchiveReader$loadPage$2$optimizedBitmap$1":I
    .end local p1    # "it":Landroid/graphics/Bitmap;
    goto :goto_7

    .local p1, "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    move-object v6, v2

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_7
    move-object p1, v6

    .line 117
    .local p1, "optimizedBitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_b

    iget-object v6, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    iget v7, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$pageNumber:I

    move-object v8, p1

    .local v8, "it":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 118
    .local v9, "$i$a$-let-ComicArchiveReader$loadPage$2$2":I
    invoke-static {v6}, Lcom/example/mrcomic/ComicArchiveReader;->access$getEnhancedImageCache$p(Lcom/example/mrcomic/ComicArchiveReader;)Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    move-result-object v6

    iput-object p1, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->L$0:Ljava/lang/Object;

    iput v7, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->I$0:I

    const/4 v10, 0x5

    iput v10, v4, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->label:I

    invoke-virtual {v6, v5, v8, v4}, Lcom/mrcomic/core/data/cache/EnhancedImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .end local v5    # "cacheKey":Ljava/lang/String;
    .end local v8    # "it":Landroid/graphics/Bitmap;
    if-ne v6, v0, :cond_a

    .line 94
    return-object v0

    .line 118
    :cond_a
    move-object v5, p1

    move-object p1, v1

    move-object v0, v4

    move v4, v7

    move v1, v9

    .line 119
    .end local v4    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .end local v9    # "$i$a$-let-ComicArchiveReader$loadPage$2$2":I
    .restart local v0    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .local v1, "$i$a$-let-ComicArchiveReader$loadPage$2$2":I
    .local v5, "optimizedBitmap":Landroid/graphics/Bitmap;
    .local p1, "$result":Ljava/lang/Object;
    :goto_8
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cached page "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .end local v1    # "$i$a$-let-ComicArchiveReader$loadPage$2$2":I
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 117
    move-object v1, p1

    move-object v4, v0

    move-object v2, v5

    goto :goto_9

    .end local v0    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v4    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .local v5, "cacheKey":Ljava/lang/String;
    .local p1, "optimizedBitmap":Landroid/graphics/Bitmap;
    :cond_b
    move-object v2, p1

    .line 122
    .end local v5    # "cacheKey":Ljava/lang/String;
    .end local p1    # "optimizedBitmap":Landroid/graphics/Bitmap;
    .local v2, "optimizedBitmap":Landroid/graphics/Bitmap;
    :goto_9
    nop

    .end local v2    # "optimizedBitmap":Landroid/graphics/Bitmap;
    goto :goto_b

    .line 123
    :catch_2
    move-exception p1

    move-object v0, v4

    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    .line 124
    .end local v4    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .restart local v0    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .local v1, "e":Ljava/lang/Exception;
    .local p1, "$result":Ljava/lang/Object;
    :goto_a
    iget v4, v0, Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;->$pageNumber:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading page "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    move-object v1, p1

    move-object v4, v0

    .line 126
    .end local v0    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v4    # "this":Lcom/example/mrcomic/ComicArchiveReader$loadPage$2;
    :goto_b
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x103d3 -> :sswitch_3
        0x103db -> :sswitch_2
        0x134d2 -> :sswitch_1
        0x15b01 -> :sswitch_0
    .end sparse-switch
.end method
