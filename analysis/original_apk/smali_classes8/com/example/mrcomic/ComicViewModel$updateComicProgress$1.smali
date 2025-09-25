.class final Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/ComicViewModel;->updateComicProgress(Lcom/example/mrcomic/Comic;I)V
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
    c = "com.example.mrcomic.ComicViewModel$updateComicProgress$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x180
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
.method constructor <init>(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;ILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mrcomic/ComicViewModel;",
            "Lcom/example/mrcomic/Comic;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    iput-object p2, p0, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->$comic:Lcom/example/mrcomic/Comic;

    iput p3, p0, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->$currentPage:I

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

    new-instance v0, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;

    iget-object v1, p0, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    iget-object v2, p0, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->$comic:Lcom/example/mrcomic/Comic;

    iget v3, p0, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->$currentPage:I

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;-><init>(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 383
    move-object/from16 v1, p0

    iget v2, v1, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;
    move-object/from16 v3, p1

    .line 384
    .local v3, "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    invoke-static {v4}, Lcom/example/mrcomic/ComicViewModel;->access$getComicDao$p(Lcom/example/mrcomic/ComicViewModel;)Lcom/example/mrcomic/ComicDao;

    move-result-object v4

    iget-object v5, v2, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->$comic:Lcom/example/mrcomic/Comic;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    iget v13, v2, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->$currentPage:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xdf

    const/16 v17, 0x0

    invoke-static/range {v5 .. v17}, Lcom/example/mrcomic/Comic;->copy$default(Lcom/example/mrcomic/Comic;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;ILjava/lang/Object;)Lcom/example/mrcomic/Comic;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x1

    iput v7, v2, Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;->label:I

    invoke-interface {v4, v5, v6}, Lcom/example/mrcomic/ComicDao;->updateComic(Lcom/example/mrcomic/Comic;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 383
    return-object v0

    .line 384
    :cond_0
    move-object v0, v2

    move-object v2, v3

    .line 385
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/example/mrcomic/ComicViewModel$updateComicProgress$1;
    .local v2, "$result":Ljava/lang/Object;
    :goto_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
