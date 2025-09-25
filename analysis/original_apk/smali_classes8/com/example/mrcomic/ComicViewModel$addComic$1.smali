.class final Lcom/example/mrcomic/ComicViewModel$addComic$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/ComicViewModel;->addComic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.example.mrcomic.ComicViewModel$addComic$1"
    f = "MainActivity.kt"
    i = {
        0x0,
        0x1,
        0x2
    }
    l = {
        0x144,
        0x145,
        0x149,
        0x153,
        0x15d
    }
    m = "invokeSuspend"
    n = {
        "uri",
        "pages",
        "pages"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $type:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/example/mrcomic/ComicViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/example/mrcomic/ComicViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/example/mrcomic/ComicViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/mrcomic/ComicViewModel$addComic$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    iput-object p3, p0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$type:Ljava/lang/String;

    iput-object p4, p0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$name:Ljava/lang/String;

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

    new-instance v6, Lcom/example/mrcomic/ComicViewModel$addComic$1;

    iget-object v1, p0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    iget-object v3, p0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$type:Ljava/lang/String;

    iget-object v4, p0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$name:Ljava/lang/String;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/example/mrcomic/ComicViewModel$addComic$1;-><init>(Ljava/lang/String;Lcom/example/mrcomic/ComicViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/ComicViewModel$addComic$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/ComicViewModel$addComic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/ComicViewModel$addComic$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/mrcomic/ComicViewModel$addComic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 321
    move-object/from16 v2, p0

    iget v0, v2, Lcom/example/mrcomic/ComicViewModel$addComic$1;->label:I

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    move-object/from16 v1, p1

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v1

    goto/16 :goto_6

    .end local v0    # "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    .end local v1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v4, p0

    .local v4, "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v5

    goto/16 :goto_4

    .line 340
    :catch_0
    move-exception v0

    move-object v6, v5

    move-object/from16 v20, v4

    move-object v4, v0

    move-object/from16 v0, v20

    goto/16 :goto_5

    .line 321
    .end local v4    # "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    .end local v5    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v4, p0

    .restart local v4    # "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "$i$a$-let-ComicViewModel$addComic$1$coverPath$1":I
    iget-object v6, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .local v6, "pages":Ljava/util/List;
    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v6

    move-object v6, v5

    goto/16 :goto_2

    .end local v0    # "$i$a$-let-ComicViewModel$addComic$1$coverPath$1":I
    .end local v4    # "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "pages":Ljava/util/List;
    :pswitch_3
    move-object/from16 v4, p0

    .restart local v4    # "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v0, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "pages":Ljava/util/List;
    :try_start_2
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v5

    goto :goto_1

    .end local v0    # "pages":Ljava/util/List;
    .end local v4    # "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    .end local v5    # "$result":Ljava/lang/Object;
    :pswitch_4
    move-object/from16 v4, p0

    .restart local v4    # "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v0, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    :try_start_3
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v5

    goto :goto_0

    .end local v0    # "uri":Landroid/net/Uri;
    .end local v4    # "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    .end local v5    # "$result":Ljava/lang/Object;
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .restart local v4    # "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    move-object/from16 v5, p1

    .line 322
    .restart local v5    # "$result":Ljava/lang/Object;
    nop

    .line 323
    :try_start_4
    iget-object v0, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$path:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 324
    .restart local v0    # "uri":Landroid/net/Uri;
    iget-object v6, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    invoke-static {v6}, Lcom/example/mrcomic/ComicViewModel;->access$getArchiveReader(Lcom/example/mrcomic/ComicViewModel;)Lcom/example/mrcomic/ComicArchiveReader;

    move-result-object v6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$type:Ljava/lang/String;

    move-object v8, v4

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v0, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->L$0:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->label:I

    invoke-virtual {v6, v0, v7, v8}, Lcom/example/mrcomic/ComicArchiveReader;->getPageList(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-ne v6, v1, :cond_0

    .line 321
    return-object v1

    .line 324
    :cond_0
    move-object/from16 v20, v6

    move-object v6, v5

    move-object/from16 v5, v20

    .line 321
    .end local v5    # "$result":Ljava/lang/Object;
    .local v6, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_5
    check-cast v5, Ljava/util/List;

    .line 325
    .local v5, "pages":Ljava/util/List;
    iget-object v7, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    invoke-static {v7}, Lcom/example/mrcomic/ComicViewModel;->access$getArchiveReader(Lcom/example/mrcomic/ComicViewModel;)Lcom/example/mrcomic/ComicArchiveReader;

    move-result-object v7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$type:Ljava/lang/String;

    move-object v9, v4

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v5, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->L$0:Ljava/lang/Object;

    const/4 v10, 0x2

    iput v10, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->label:I

    invoke-virtual {v7, v0, v8, v9}, Lcom/example/mrcomic/ComicArchiveReader;->getCoverImage(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v0    # "uri":Landroid/net/Uri;
    if-ne v7, v1, :cond_1

    .line 321
    return-object v1

    .line 325
    :cond_1
    move-object v0, v5

    move-object v5, v7

    .line 321
    .end local v5    # "pages":Ljava/util/List;
    .local v0, "pages":Ljava/util/List;
    :goto_1
    check-cast v5, Landroid/graphics/Bitmap;

    .line 328
    .local v5, "coverBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_3

    iget-object v7, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    iget-object v8, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$name:Ljava/lang/String;

    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 329
    .local v9, "$i$a$-let-ComicViewModel$addComic$1$coverPath$1":I
    iput-object v0, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->L$0:Ljava/lang/Object;

    const/4 v10, 0x3

    iput v10, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->label:I

    invoke-static {v7, v8, v5, v4}, Lcom/example/mrcomic/ComicViewModel;->access$saveCoverToCache(Lcom/example/mrcomic/ComicViewModel;Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    if-ne v7, v1, :cond_2

    .line 321
    return-object v1

    .line 329
    :cond_2
    move-object v5, v7

    move-object v7, v0

    move v0, v9

    .end local v9    # "$i$a$-let-ComicViewModel$addComic$1$coverPath$1":I
    .local v0, "$i$a$-let-ComicViewModel$addComic$1$coverPath$1":I
    .local v7, "pages":Ljava/util/List;
    :goto_2
    check-cast v5, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 328
    .end local v0    # "$i$a$-let-ComicViewModel$addComic$1$coverPath$1":I
    move-object v15, v5

    move-object/from16 v18, v6

    move-object v0, v7

    goto :goto_3

    .end local v7    # "pages":Ljava/util/List;
    .local v0, "pages":Ljava/util/List;
    .local v5, "coverBitmap":Landroid/graphics/Bitmap;
    :cond_3
    move-object v15, v3

    move-object/from16 v18, v6

    .line 332
    .end local v5    # "coverBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "$result":Ljava/lang/Object;
    .local v15, "coverPath":Ljava/lang/String;
    .local v18, "$result":Ljava/lang/Object;
    :goto_3
    :try_start_6
    new-instance v19, Lcom/example/mrcomic/Comic;

    const-wide/16 v6, 0x0

    .line 333
    iget-object v8, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$name:Ljava/lang/String;

    .line 334
    iget-object v9, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$path:Ljava/lang/String;

    .line 335
    iget-object v10, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$type:Ljava/lang/String;

    .line 332
    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    .line 336
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    .line 337
    .end local v0    # "pages":Ljava/util/List;
    nop

    .line 332
    .end local v15    # "coverPath":Ljava/lang/String;
    const/16 v16, 0x31

    const/16 v17, 0x0

    move-object/from16 v5, v19

    invoke-direct/range {v5 .. v17}, Lcom/example/mrcomic/Comic;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v19

    .line 339
    .local v0, "comic":Lcom/example/mrcomic/Comic;
    iget-object v5, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    invoke-static {v5}, Lcom/example/mrcomic/ComicViewModel;->access$getComicDao$p(Lcom/example/mrcomic/ComicViewModel;)Lcom/example/mrcomic/ComicDao;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x4

    iput v7, v4, Lcom/example/mrcomic/ComicViewModel$addComic$1;->label:I

    invoke-interface {v5, v0, v6}, Lcom/example/mrcomic/ComicDao;->insertComic(Lcom/example/mrcomic/Comic;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v0    # "comic":Lcom/example/mrcomic/Comic;
    if-ne v5, v1, :cond_4

    .line 321
    return-object v1

    .line 339
    :cond_4
    :goto_4
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7

    .line 340
    :catch_1
    move-exception v0

    move-object/from16 v6, v18

    move-object/from16 v20, v4

    move-object v4, v0

    move-object/from16 v0, v20

    goto :goto_5

    .end local v18    # "$result":Ljava/lang/Object;
    .restart local v6    # "$result":Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object/from16 v20, v4

    move-object v4, v0

    move-object/from16 v0, v20

    .line 341
    .local v0, "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    .end local v4    # "e":Ljava/lang/Exception;
    new-instance v4, Lcom/example/mrcomic/Comic;

    const-wide/16 v8, 0x0

    .line 344
    iget-object v10, v0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$name:Ljava/lang/String;

    .line 345
    iget-object v11, v0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$path:Ljava/lang/String;

    .line 346
    iget-object v12, v0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->$type:Ljava/lang/String;

    .line 343
    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    .line 347
    const/16 v16, 0x0

    .line 343
    const/16 v17, 0x0

    const/16 v18, 0xb1

    const/16 v19, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v19}, Lcom/example/mrcomic/Comic;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 349
    .local v4, "comic":Lcom/example/mrcomic/Comic;
    iget-object v5, v0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->this$0:Lcom/example/mrcomic/ComicViewModel;

    invoke-static {v5}, Lcom/example/mrcomic/ComicViewModel;->access$getComicDao$p(Lcom/example/mrcomic/ComicViewModel;)Lcom/example/mrcomic/ComicDao;

    move-result-object v5

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v3, v0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v0, Lcom/example/mrcomic/ComicViewModel$addComic$1;->label:I

    invoke-interface {v5, v4, v7}, Lcom/example/mrcomic/ComicDao;->insertComic(Lcom/example/mrcomic/Comic;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v4    # "comic":Lcom/example/mrcomic/Comic;
    if-ne v3, v1, :cond_5

    .line 321
    return-object v1

    .line 349
    :cond_5
    move-object v1, v3

    :goto_6
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-object v4, v0

    move-object/from16 v18, v6

    .line 351
    .end local v0    # "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .local v4, "this":Lcom/example/mrcomic/ComicViewModel$addComic$1;
    .restart local v18    # "$result":Ljava/lang/Object;
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

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
.end method
