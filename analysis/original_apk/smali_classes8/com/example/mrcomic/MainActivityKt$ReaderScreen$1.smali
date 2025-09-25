.class final Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/example/mrcomic/MainActivityKt$ReaderScreen$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1223:1\n1#2:1224\n*E\n"
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
    c = "com.example.mrcomic.MainActivityKt$ReaderScreen$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x40a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
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

.field final synthetic $comicId:J

.field final synthetic $comics$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/Comic;",
            ">;>;"
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

.field final synthetic $isLoading$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
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

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;JLandroidx/compose/runtime/MutableState;Lcom/example/mrcomic/ComicViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/Comic;",
            ">;>;J",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/example/mrcomic/Comic;",
            ">;",
            "Lcom/example/mrcomic/ComicViewModel;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$comics$delegate:Landroidx/compose/runtime/State;

    iput-wide p2, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$comicId:J

    iput-object p4, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$comic$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iput-object p6, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$isLoading$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$pages$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v10, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;

    iget-object v1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$comics$delegate:Landroidx/compose/runtime/State;

    iget-wide v2, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$comicId:J

    iget-object v4, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$comic$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iget-object v6, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$isLoading$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$pages$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;-><init>(Landroidx/compose/runtime/State;JLandroidx/compose/runtime/MutableState;Lcom/example/mrcomic/ComicViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/coroutines/Continuation;

    return-object v10
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1029
    iget v1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-let-MainActivityKt$ReaderScreen$1$2":I
    iget-object v3, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    iget-object v4, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v9, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_2

    .end local v0    # "this":Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;
    .end local v1    # "$i$a$-let-MainActivityKt$ReaderScreen$1$2":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 1030
    .local v1, "this":Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$comic$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$comics$delegate:Landroidx/compose/runtime/State;

    invoke-static {v4}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$67(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    iget-wide v5, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$comicId:J

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/example/mrcomic/Comic;

    .line 1224
    .local v9, "it":Lcom/example/mrcomic/Comic;
    const/4 v10, 0x0

    .line 1030
    .local v10, "$i$a$-find-MainActivityKt$ReaderScreen$1$1":I
    invoke-virtual {v9}, Lcom/example/mrcomic/Comic;->getId()J

    move-result-wide v11

    cmp-long v11, v11, v5

    if-nez v11, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    move v9, v2

    .end local v9    # "it":Lcom/example/mrcomic/Comic;
    .end local v10    # "$i$a$-find-MainActivityKt$ReaderScreen$1$1":I
    :goto_0
    if-eqz v9, :cond_0

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    check-cast v7, Lcom/example/mrcomic/Comic;

    invoke-static {v3, v7}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$48(Landroidx/compose/runtime/MutableState;Lcom/example/mrcomic/Comic;)V

    .line 1031
    iget-object v3, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$comic$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$47(Landroidx/compose/runtime/MutableState;)Lcom/example/mrcomic/Comic;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iget-object v5, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$isLoading$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->$pages$delegate:Landroidx/compose/runtime/MutableState;

    .local v3, "comicData":Lcom/example/mrcomic/Comic;
    const/4 v9, 0x0

    .line 1032
    .local v9, "$i$a$-let-MainActivityKt$ReaderScreen$1$2":I
    invoke-virtual {v3}, Lcom/example/mrcomic/Comic;->getLastReadPage()I

    move-result v10

    invoke-static {v5, v10}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$51(Landroidx/compose/runtime/MutableState;I)V

    .line 1033
    invoke-static {v6, v8}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$60(Landroidx/compose/runtime/MutableState;Z)V

    .line 1034
    iput-object v6, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->L$1:Ljava/lang/Object;

    iput v8, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$1;->label:I

    invoke-virtual {v4, v3, v1}, Lcom/example/mrcomic/ComicViewModel;->getComicPages(Lcom/example/mrcomic/Comic;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "comicData":Lcom/example/mrcomic/Comic;
    if-ne v3, v0, :cond_3

    .line 1029
    return-object v0

    .line 1034
    :cond_3
    move-object v0, p1

    move-object p1, v3

    move-object v4, v6

    move-object v3, v7

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_2
    check-cast p1, Ljava/util/List;

    invoke-static {v3, p1}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$54(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    .line 1035
    invoke-static {v4, v2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$60(Landroidx/compose/runtime/MutableState;Z)V

    .line 1036
    nop

    .line 1031
    .end local v9    # "$i$a$-let-MainActivityKt$ReaderScreen$1$2":I
    move-object p1, v0

    .line 1037
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
