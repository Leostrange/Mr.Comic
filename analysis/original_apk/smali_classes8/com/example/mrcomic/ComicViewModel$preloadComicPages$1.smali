.class final Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/ComicViewModel;->preloadComicPages(Lcom/example/mrcomic/Comic;I)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.example.mrcomic.ComicViewModel$preloadComicPages$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x19c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $comic:Lcom/example/mrcomic/Comic;

.field final synthetic $currentPage:I

.field label:I

.field final synthetic this$0:Lcom/example/mrcomic/ComicViewModel;


# direct methods
.method constructor <init>(Lcom/example/mrcomic/Comic;Lcom/example/mrcomic/ComicViewModel;ILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mrcomic/Comic;",
            "Lcom/example/mrcomic/ComicViewModel;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->$comic:Lcom/example/mrcomic/Comic;

    iput-object p2, p0, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    iput p3, p0, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->$currentPage:I

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

    new-instance v0, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;

    iget-object v1, p0, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->$comic:Lcom/example/mrcomic/Comic;

    iget-object v2, p0, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    iget v3, p0, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->$currentPage:I

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;-><init>(Lcom/example/mrcomic/Comic;Lcom/example/mrcomic/ComicViewModel;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 409
    iget v1, p0, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v1

    goto :goto_1

    .line 409
    .end local v0    # "this":Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 410
    .local v1, "this":Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 411
    :try_start_1
    iget-object v2, v1, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->$comic:Lcom/example/mrcomic/Comic;

    invoke-virtual {v2}, Lcom/example/mrcomic/Comic;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 412
    .local v4, "uri":Landroid/net/Uri;
    iget-object v2, v1, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    invoke-static {v2}, Lcom/example/mrcomic/ComicViewModel;->access$getArchiveReader(Lcom/example/mrcomic/ComicViewModel;)Lcom/example/mrcomic/ComicArchiveReader;

    move-result-object v3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->$comic:Lcom/example/mrcomic/Comic;

    invoke-virtual {v2}, Lcom/example/mrcomic/Comic;->getType()Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->$currentPage:I

    iget-object v2, v1, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->$comic:Lcom/example/mrcomic/Comic;

    invoke-virtual {v2}, Lcom/example/mrcomic/Comic;->getTotalPages()I

    move-result v7

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x1

    iput v2, v1, Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;->label:I

    invoke-virtual/range {v3 .. v8}, Lcom/example/mrcomic/ComicArchiveReader;->preloadPages(Landroid/net/Uri;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "uri":Landroid/net/Uri;
    if-ne v2, v0, :cond_0

    .line 409
    return-object v0

    .line 412
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;
    .restart local v0    # "this":Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;
    :goto_0
    goto :goto_2

    .line 413
    .end local v0    # "this":Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;
    .restart local v1    # "this":Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;
    :catch_1
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 414
    .restart local v0    # "this":Lcom/example/mrcomic/ComicViewModel$preloadComicPages$1;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 416
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
