.class final Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/MainActivityKt;->ReaderScreen(JLkotlin/jvm/functions/Function0;Lcom/example/mrcomic/ComicViewModel;Landroidx/compose/runtime/Composer;II)V
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
    c = "com.example.mrcomic.MainActivityKt$ReaderScreen$2"
    f = "MainActivity.kt"
    i = {
        0x0
    }
    l = {
        0x413
    }
    m = "invokeSuspend"
    n = {
        "comicData"
    }
    s = {
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $comic$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/example/mrcomic/Comic;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentPage$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentPageBitmap$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pages$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/example/mrcomic/ComicViewModel;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/example/mrcomic/ComicViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/example/mrcomic/Comic;",
            ">;",
            "Lcom/example/mrcomic/ComicViewModel;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$comic$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iput-object p3, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$pages$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$currentPageBitmap$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;

    iget-object v1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$comic$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iget-object v3, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$pages$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$currentPageBitmap$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;-><init>(Landroidx/compose/runtime/MutableState;Lcom/example/mrcomic/ComicViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1040
    iget v1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-let-MainActivityKt$ReaderScreen$2$1":I
    iget-object v2, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->L$3:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/MutableState;

    iget-object v3, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/example/mrcomic/Comic;

    .local v3, "comicData":Lcom/example/mrcomic/Comic;
    iget-object v4, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->L$1:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/MutableState;

    iget-object v5, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/example/mrcomic/ComicViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .end local v0    # "this":Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;
    .end local v1    # "$i$a$-let-MainActivityKt$ReaderScreen$2$1":I
    .end local v3    # "comicData":Lcom/example/mrcomic/Comic;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 1041
    .local v1, "this":Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$comic$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$47(Landroidx/compose/runtime/MutableState;)Lcom/example/mrcomic/Comic;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v5, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iget-object v3, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$pages$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->$currentPageBitmap$delegate:Landroidx/compose/runtime/MutableState;

    .local v2, "comicData":Lcom/example/mrcomic/Comic;
    const/4 v7, 0x0

    .line 1042
    .local v7, "$i$a$-let-MainActivityKt$ReaderScreen$2$1":I
    invoke-static {v3}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$53(Landroidx/compose/runtime/MutableState;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v8, 0x1

    xor-int/2addr v3, v8

    if-eqz v3, :cond_1

    .line 1043
    invoke-static {v4}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result v3

    iput-object v5, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->L$1:Ljava/lang/Object;

    iput-object v2, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->L$2:Ljava/lang/Object;

    iput-object v6, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->L$3:Ljava/lang/Object;

    iput v8, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$2;->label:I

    invoke-virtual {v5, v2, v3, v1}, Lcom/example/mrcomic/ComicViewModel;->loadComicPage(Lcom/example/mrcomic/Comic;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 1040
    return-object v0

    .line 1043
    :cond_0
    move-object v0, p1

    move-object p1, v3

    move-object v3, v2

    move-object v2, v6

    .end local v2    # "comicData":Lcom/example/mrcomic/Comic;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v3    # "comicData":Lcom/example/mrcomic/Comic;
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v2, p1}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$57(Landroidx/compose/runtime/MutableState;Landroid/graphics/Bitmap;)V

    .line 1046
    invoke-static {v4}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result p1

    invoke-virtual {v5, v3, p1}, Lcom/example/mrcomic/ComicViewModel;->preloadComicPages(Lcom/example/mrcomic/Comic;I)V

    move-object p1, v0

    .line 1048
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v3    # "comicData":Lcom/example/mrcomic/Comic;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_1
    nop

    .line 1041
    .end local v7    # "$i$a$-let-MainActivityKt$ReaderScreen$2$1":I
    nop

    .line 1049
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
