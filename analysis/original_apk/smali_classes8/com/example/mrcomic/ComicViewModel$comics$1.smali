.class final Lcom/example/mrcomic/ComicViewModel$comics$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/ComicViewModel;-><init>(Lcom/example/mrcomic/ComicDao;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/mrcomic/ComicViewModel$comics$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/util/List<",
        "+",
        "Lcom/example/mrcomic/Comic;",
        ">;",
        "Lcom/example/mrcomic/SortOrder;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/example/mrcomic/Comic;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/example/mrcomic/ComicViewModel$comics$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1223:1\n1062#2:1224\n1053#2:1225\n1053#2:1226\n1062#2:1227\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/example/mrcomic/ComicViewModel$comics$1\n*L\n302#1:1224\n303#1:1225\n304#1:1226\n305#1:1227\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u001b\u0010\u0003\u001a\u0017\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u00062\u0015\u0010\u0007\u001a\u00110\u0008\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\tH\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/example/mrcomic/Comic;",
        "comicsList",
        "Lkotlin/ParameterName;",
        "name",
        "a",
        "order",
        "Lcom/example/mrcomic/SortOrder;",
        "b"
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
    c = "com.example.mrcomic.ComicViewModel$comics$1"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/mrcomic/ComicViewModel$comics$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/example/mrcomic/SortOrder;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/example/mrcomic/ComicViewModel$comics$1;->invoke(Ljava/util/List;Lcom/example/mrcomic/SortOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/util/List;Lcom/example/mrcomic/SortOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/Comic;",
            ">;",
            "Lcom/example/mrcomic/SortOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/Comic;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/example/mrcomic/ComicViewModel$comics$1;

    invoke-direct {v0, p3}, Lcom/example/mrcomic/ComicViewModel$comics$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/example/mrcomic/ComicViewModel$comics$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/example/mrcomic/ComicViewModel$comics$1;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/mrcomic/ComicViewModel$comics$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 300
    iget v0, p0, Lcom/example/mrcomic/ComicViewModel$comics$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "this":Lcom/example/mrcomic/ComicViewModel$comics$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/example/mrcomic/ComicViewModel$comics$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .local v1, "comicsList":Ljava/util/List;
    iget-object v2, v0, Lcom/example/mrcomic/ComicViewModel$comics$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/example/mrcomic/SortOrder;

    .line 301
    .local v2, "order":Lcom/example/mrcomic/SortOrder;
    nop

    .end local v2    # "order":Lcom/example/mrcomic/SortOrder;
    sget-object v3, Lcom/example/mrcomic/ComicViewModel$comics$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/example/mrcomic/SortOrder;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .end local v1    # "comicsList":Ljava/util/List;
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 305
    .restart local v1    # "comicsList":Ljava/util/List;
    :pswitch_1
    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1227
    .local v2, "$i$f$sortedByDescending":I
    new-instance v3, Lcom/example/mrcomic/ComicViewModel$comics$1$invokeSuspend$$inlined$sortedByDescending$2;

    invoke-direct {v3}, Lcom/example/mrcomic/ComicViewModel$comics$1$invokeSuspend$$inlined$sortedByDescending$2;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .end local v1    # "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedByDescending":I
    goto :goto_0

    .line 304
    .local v1, "comicsList":Ljava/util/List;
    :pswitch_2
    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1226
    .local v2, "$i$f$sortedBy":I
    new-instance v3, Lcom/example/mrcomic/ComicViewModel$comics$1$invokeSuspend$$inlined$sortedBy$2;

    invoke-direct {v3}, Lcom/example/mrcomic/ComicViewModel$comics$1$invokeSuspend$$inlined$sortedBy$2;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .end local v1    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedBy":I
    goto :goto_0

    .line 303
    .local v1, "comicsList":Ljava/util/List;
    :pswitch_3
    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1225
    .restart local v2    # "$i$f$sortedBy":I
    new-instance v3, Lcom/example/mrcomic/ComicViewModel$comics$1$invokeSuspend$$inlined$sortedBy$1;

    invoke-direct {v3}, Lcom/example/mrcomic/ComicViewModel$comics$1$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .end local v1    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedBy":I
    goto :goto_0

    .line 302
    .local v1, "comicsList":Ljava/util/List;
    :pswitch_4
    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1224
    .local v2, "$i$f$sortedByDescending":I
    new-instance v3, Lcom/example/mrcomic/ComicViewModel$comics$1$invokeSuspend$$inlined$sortedByDescending$1;

    invoke-direct {v3}, Lcom/example/mrcomic/ComicViewModel$comics$1$invokeSuspend$$inlined$sortedByDescending$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 306
    .end local v1    # "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedByDescending":I
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
