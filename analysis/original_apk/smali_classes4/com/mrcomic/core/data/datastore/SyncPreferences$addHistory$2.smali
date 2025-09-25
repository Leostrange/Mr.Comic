.class final Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncPreferences.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrcomic/core/data/datastore/SyncPreferences;->addHistory(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/datastore/preferences/core/MutablePreferences;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncPreferences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncPreferences.kt\ncom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1611#2,9:87\n1863#2:96\n1864#2:98\n1620#2:99\n1#3:97\n*S KotlinDebug\n*F\n+ 1 SyncPreferences.kt\ncom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2\n*L\n62#1:87,9\n62#1:96\n62#1:98\n62#1:99\n62#1:97\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "prefs",
        "Landroidx/datastore/preferences/core/MutablePreferences;"
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
    c = "com.mrcomic.core.data.datastore.SyncPreferences$addHistory$2"
    f = "SyncPreferences.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $maxItems:I

.field final synthetic $ts:J

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(JILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;->$ts:J

    iput p3, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;->$maxItems:I

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

    new-instance v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;

    iget-wide v1, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;->$ts:J

    iget v3, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;->$maxItems:I

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;-><init>(JILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/datastore/preferences/core/MutablePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/core/MutablePreferences;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;->invoke(Landroidx/datastore/preferences/core/MutablePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 60
    iget v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "this":Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 61
    .local v1, "prefs":Landroidx/datastore/preferences/core/MutablePreferences;
    sget-object v2, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->INSTANCE:Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;

    invoke-virtual {v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->getSYNC_HISTORY()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, "current":Ljava/lang/String;
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    if-eqz v3, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_3

    :cond_2
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    new-array v5, v5, [C

    .end local v2    # "current":Ljava/lang/String;
    const/16 v2, 0x2c

    aput-char v2, v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 87
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v2, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v4, "destination$iv$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 95
    .local v5, "$i$f$mapNotNullTo":I
    nop

    .local v2, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 96
    .local v6, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v2    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 95
    .local v8, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 62
    .local v10, "$i$a$-mapNotNull-SyncPreferences$addHistory$2$list$1":I
    invoke-static {v9}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 95
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-mapNotNull-SyncPreferences$addHistory$2$list$1":I
    if-eqz v9, :cond_3

    .line 97
    .local v9, "it$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 95
    .local v10, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v2    # "element$iv$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_3
    goto :goto_2

    .line 98
    :cond_4
    nop

    .line 99
    .end local v6    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$mapNotNullTo":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .line 87
    move-object v3, v2

    .line 62
    .end local v3    # "$i$f$mapNotNull":I
    :goto_3
    move-object v2, v3

    .line 63
    .local v2, "list":Ljava/util/List;
    iget-wide v3, v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;->$ts:J

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    iget v4, v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;->$maxItems:I

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    .line 64
    .local v3, "updated":Ljava/util/List;
    sget-object v4, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->INSTANCE:Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;

    invoke-virtual {v4}, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->getSYNC_HISTORY()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/lang/Iterable;

    const-string v6, ","

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 65
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
