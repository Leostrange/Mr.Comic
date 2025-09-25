.class final Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "ShadowViewInfo.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/ShadowViewInfo;-><init>(Landroidx/compose/ui/tooling/ShadowViewInfo;Landroidx/compose/ui/tooling/ViewInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Landroidx/compose/ui/tooling/ShadowViewInfo;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShadowViewInfo.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShadowViewInfo.android.kt\nandroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n1373#2:122\n1461#2,5:123\n1855#2,2:128\n*S KotlinDebug\n*F\n+ 1 ShadowViewInfo.android.kt\nandroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1\n*L\n46#1:122\n46#1:123,5\n46#1:128,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Landroidx/compose/ui/tooling/ShadowViewInfo;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.ui.tooling.ShadowViewInfo$allNodes$1"
    f = "ShadowViewInfo.android.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x2d,
        0x2e
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "$this$sequence"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/ui/tooling/ShadowViewInfo;


# direct methods
.method constructor <init>(Landroidx/compose/ui/tooling/ShadowViewInfo;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/tooling/ShadowViewInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->this$0:Landroidx/compose/ui/tooling/ShadowViewInfo;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;

    iget-object v1, p0, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->this$0:Landroidx/compose/ui/tooling/ShadowViewInfo;

    invoke-direct {v0, v1, p2}, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;-><init>(Landroidx/compose/ui/tooling/ShadowViewInfo;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Landroidx/compose/ui/tooling/ShadowViewInfo;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 44
    iget v1, p0, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "$i$f$forEach":I
    const/4 v3, 0x0

    .local v3, "$i$a$-forEach-ShadowViewInfo$allNodes$1$2":I
    iget-object v4, v1, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, v1, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlin/sequences/SequenceScope;

    .local v5, "$this$sequence":Lkotlin/sequences/SequenceScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v1    # "this":Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "$i$a$-forEach-ShadowViewInfo$allNodes$1$2":I
    .end local v5    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .restart local v1    # "this":Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceScope;

    .local v2, "$this$sequence":Lkotlin/sequences/SequenceScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;
    .end local v2    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceScope;

    .line 45
    .restart local v2    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    iget-object v3, v1, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->this$0:Landroidx/compose/ui/tooling/ShadowViewInfo;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->label:I

    invoke-virtual {v2, v3, v4}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 44
    return-object v0

    .line 46
    :cond_0
    :goto_0
    iget-object v3, v1, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->this$0:Landroidx/compose/ui/tooling/ShadowViewInfo;

    invoke-virtual {v3}, Landroidx/compose/ui/tooling/ShadowViewInfo;->getChildren()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 122
    .local v4, "$i$f$flatMapSequence":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v3, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .local v5, "destination$iv$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 123
    .local v6, "$i$f$flatMapSequenceTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v3    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 124
    .local v3, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v3

    check-cast v8, Landroidx/compose/ui/tooling/ShadowViewInfo;

    .local v8, "it":Landroidx/compose/ui/tooling/ShadowViewInfo;
    const/4 v9, 0x0

    .line 46
    .local v9, "$i$a$-flatMapSequence-ShadowViewInfo$allNodes$1$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/tooling/ShadowViewInfo;->getAllNodes()Lkotlin/sequences/Sequence;

    move-result-object v8

    .line 124
    .end local v8    # "it":Landroidx/compose/ui/tooling/ShadowViewInfo;
    .end local v9    # "$i$a$-flatMapSequence-ShadowViewInfo$allNodes$1$1":I
    nop

    .line 125
    .local v8, "list$iv$iv":Lkotlin/sequences/Sequence;
    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    goto :goto_1

    .line 127
    .end local v3    # "element$iv$iv":Ljava/lang/Object;
    .end local v8    # "list$iv$iv":Lkotlin/sequences/Sequence;
    :cond_1
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$flatMapSequenceTo":I
    move-object v3, v5

    check-cast v3, Ljava/util/List;

    .line 122
    nop

    .end local v4    # "$i$f$flatMapSequence":I
    check-cast v3, Ljava/lang/Iterable;

    .line 46
    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 128
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v10, v5

    move-object v5, v2

    move v2, v4

    move-object v4, v10

    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    .local v2, "$i$f$forEach":I
    .local v5, "$this$sequence":Lkotlin/sequences/SequenceScope;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    check-cast v3, Landroidx/compose/ui/tooling/ShadowViewInfo;

    .local v3, "it":Landroidx/compose/ui/tooling/ShadowViewInfo;
    const/4 v6, 0x0

    .line 46
    .local v6, "$i$a$-forEach-ShadowViewInfo$allNodes$1$2":I
    iput-object v5, v1, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v1, Landroidx/compose/ui/tooling/ShadowViewInfo$allNodes$1;->label:I

    invoke-virtual {v5, v3, v1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "it":Landroidx/compose/ui/tooling/ShadowViewInfo;
    if-ne v3, v0, :cond_2

    .line 44
    return-object v0

    .line 46
    :cond_2
    move v3, v6

    .end local v6    # "$i$a$-forEach-ShadowViewInfo$allNodes$1$2":I
    .local v3, "$i$a$-forEach-ShadowViewInfo$allNodes$1$2":I
    :goto_3
    nop

    .line 128
    .end local v3    # "$i$a$-forEach-ShadowViewInfo$allNodes$1$2":I
    goto :goto_2

    .line 129
    :cond_3
    nop

    .line 47
    .end local v2    # "$i$f$forEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
