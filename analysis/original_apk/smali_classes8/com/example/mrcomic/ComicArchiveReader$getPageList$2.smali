.class final Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ComicArchiveReader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/ComicArchiveReader;->getPageList(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
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
    c = "com.example.mrcomic.ComicArchiveReader$getPageList$2"
    f = "ComicArchiveReader.kt"
    i = {}
    l = {
        0x3b,
        0x3c,
        0x3d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $comicType:Ljava/lang/String;

.field final synthetic $uri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lcom/example/mrcomic/ComicArchiveReader;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/example/mrcomic/ComicArchiveReader;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->$comicType:Ljava/lang/String;

    iput-object p2, p0, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    iput-object p3, p0, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->$uri:Landroid/net/Uri;

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

    new-instance v0, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;

    iget-object v1, p0, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->$comicType:Ljava/lang/String;

    iget-object v2, p0, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    iget-object v3, p0, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->$uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;-><init>(Ljava/lang/String;Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 56
    iget v1, p0, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, p1

    goto :goto_1

    .end local v0    # "this":Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v0, p0

    .restart local v0    # "this":Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_3

    .end local v0    # "this":Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v0, p0

    .restart local v0    # "this":Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, p1

    goto :goto_2

    .line 64
    :catch_0
    move-exception v1

    goto/16 :goto_6

    .line 56
    .end local v0    # "this":Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 57
    .local v1, "this":Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 58
    :try_start_1
    iget-object v2, v1, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->$comicType:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toUpperCase(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    goto/16 :goto_4

    :sswitch_0
    const-string v3, "ZIP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :sswitch_1
    const-string v3, "PDF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v2, v1, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    iget-object v3, v1, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->$uri:Landroid/net/Uri;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x3

    iput v5, v1, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->label:I

    invoke-static {v2, v3, v4}, Lcom/example/mrcomic/ComicArchiveReader;->access$getPdfPageList(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v2, v0, :cond_2

    .line 56
    return-object v0

    .line 61
    :cond_2
    move-object v0, p1

    move-object p1, v2

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_1
    :try_start_2
    check-cast p1, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 58
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :sswitch_2
    :try_start_3
    const-string v3, "CBZ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    :cond_3
    iget-object v2, v1, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    iget-object v3, v1, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->$uri:Landroid/net/Uri;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v1, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->label:I

    invoke-static {v2, v3, v4}, Lcom/example/mrcomic/ComicArchiveReader;->access$getZipPageList(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v2, v0, :cond_4

    .line 56
    return-object v0

    .line 59
    :cond_4
    move-object v0, p1

    move-object p1, v2

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    :goto_2
    :try_start_4
    check-cast p1, Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 64
    :catch_1
    move-exception p1

    move-object v6, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v6

    goto :goto_6

    .line 58
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :sswitch_3
    :try_start_5
    const-string v3, "CBR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 60
    :cond_5
    iget-object v2, v1, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->this$0:Lcom/example/mrcomic/ComicArchiveReader;

    iget-object v3, v1, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->$uri:Landroid/net/Uri;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x2

    iput v5, v1, Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;->label:I

    invoke-static {v2, v3, v4}, Lcom/example/mrcomic/ComicArchiveReader;->access$getRarPageList(Lcom/example/mrcomic/ComicArchiveReader;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-ne v2, v0, :cond_6

    .line 56
    return-object v0

    .line 60
    :cond_6
    move-object v0, p1

    move-object p1, v2

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    :goto_3
    :try_start_6
    check-cast p1, Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .line 62
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_4
    :try_start_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    :goto_5
    goto :goto_7

    .line 64
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 65
    .local v0, "this":Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;
    .local v1, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v1, v0

    move-object v0, p1

    move-object p1, v2

    .line 67
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "this":Lcom/example/mrcomic/ComicArchiveReader$getPageList$2;
    :goto_7
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
