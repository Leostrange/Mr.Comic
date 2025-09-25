.class final Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PreloadManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrcomic/core/data/cache/PreloadManager;->preloadAroundCurrentPage(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.mrcomic.core.data.cache.PreloadManager$preloadAroundCurrentPage$2$1$job$1"
    f = "PreloadManager.kt"
    i = {}
    l = {
        0x8f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $comicId:Ljava/lang/String;

.field final synthetic $loader:Lcom/mrcomic/core/data/cache/PageLoader;

.field final synthetic $pageIndex:I

.field label:I

.field final synthetic this$0:Lcom/mrcomic/core/data/cache/PreloadManager;


# direct methods
.method constructor <init>(Lcom/mrcomic/core/data/cache/PreloadManager;Ljava/lang/String;ILcom/mrcomic/core/data/cache/PageLoader;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mrcomic/core/data/cache/PreloadManager;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mrcomic/core/data/cache/PageLoader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->this$0:Lcom/mrcomic/core/data/cache/PreloadManager;

    iput-object p2, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->$comicId:Ljava/lang/String;

    iput p3, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->$pageIndex:I

    iput-object p4, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->$loader:Lcom/mrcomic/core/data/cache/PageLoader;

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

    new-instance v6, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;

    iget-object v1, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->this$0:Lcom/mrcomic/core/data/cache/PreloadManager;

    iget-object v2, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->$comicId:Ljava/lang/String;

    iget v3, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->$pageIndex:I

    iget-object v4, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->$loader:Lcom/mrcomic/core/data/cache/PageLoader;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;-><init>(Lcom/mrcomic/core/data/cache/PreloadManager;Ljava/lang/String;ILcom/mrcomic/core/data/cache/PageLoader;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 142
    iget v1, p0, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 143
    .local v1, "this":Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->this$0:Lcom/mrcomic/core/data/cache/PreloadManager;

    iget-object v3, v1, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->$comicId:Ljava/lang/String;

    iget v4, v1, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->$pageIndex:I

    iget-object v5, v1, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->$loader:Lcom/mrcomic/core/data/cache/PageLoader;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x1

    iput v7, v1, Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;->label:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/mrcomic/core/data/cache/PreloadManager;->access$preloadPage(Lcom/mrcomic/core/data/cache/PreloadManager;Ljava/lang/String;ILcom/mrcomic/core/data/cache/PageLoader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 142
    return-object v0

    .line 143
    :cond_0
    move-object v0, v1

    .line 144
    .end local v1    # "this":Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;
    .restart local v0    # "this":Lcom/mrcomic/core/data/cache/PreloadManager$preloadAroundCurrentPage$2$1$job$1;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
