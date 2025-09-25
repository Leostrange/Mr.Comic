.class public final Landroidx/work/impl/StartStopTokens;
.super Ljava/lang/Object;
.source "StartStopToken.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartStopToken.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartStopToken.kt\nandroidx/work/impl/StartStopTokens\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n361#2,7:66\n467#2,7:73\n1855#3,2:80\n1#4:82\n*S KotlinDebug\n*F\n+ 1 StartStopToken.kt\nandroidx/work/impl/StartStopTokens\n*L\n40#1:66,7\n52#1:73,7\n53#1:80,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\rJ\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/work/impl/StartStopTokens;",
        "",
        "()V",
        "lock",
        "runs",
        "",
        "Landroidx/work/impl/model/WorkGenerationalId;",
        "Landroidx/work/impl/StartStopToken;",
        "contains",
        "",
        "id",
        "remove",
        "spec",
        "Landroidx/work/impl/model/WorkSpec;",
        "",
        "workSpecId",
        "",
        "tokenFor",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final runs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/work/impl/model/WorkGenerationalId;",
            "Landroidx/work/impl/StartStopToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/util/Map;

    .line 34
    return-void
.end method


# virtual methods
.method public final contains(Landroidx/work/impl/model/WorkGenerationalId;)Z
    .locals 3
    .param p1, "id"    # Landroidx/work/impl/model/WorkGenerationalId;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    const/4 v1, 0x0

    .line 59
    .local v1, "$i$a$-synchronized-StartStopTokens$contains$1":I
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-synchronized-StartStopTokens$contains$1":I
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 3
    .param p1, "id"    # Landroidx/work/impl/model/WorkGenerationalId;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 46
    .local v1, "$i$a$-synchronized-StartStopTokens$remove$1":I
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/StartStopToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v1    # "$i$a$-synchronized-StartStopTokens$remove$1":I
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final remove(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/StartStopToken;
    .locals 1
    .param p1, "spec"    # Landroidx/work/impl/model/WorkSpec;

    const-string/jumbo v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "workSpecId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/StartStopToken;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 52
    .local v1, "$i$a$-synchronized-StartStopTokens$remove$2":I
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/util/Map;

    .local v2, "$this$filterKeys$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 73
    .local v3, "$i$f$filterKeys":I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 74
    .local v4, "result$iv":Ljava/util/LinkedHashMap;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 75
    .local v6, "entry$iv":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/work/impl/model/WorkGenerationalId;

    .local v7, "it":Landroidx/work/impl/model/WorkGenerationalId;
    const/4 v8, 0x0

    .line 52
    .local v8, "$i$a$-filterKeys-StartStopTokens$remove$2$toRemove$1":I
    invoke-virtual {v7}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 75
    .end local v7    # "it":Landroidx/work/impl/model/WorkGenerationalId;
    .end local v8    # "$i$a$-filterKeys-StartStopTokens$remove$2$toRemove$1":I
    if-eqz v9, :cond_0

    .line 76
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    .end local v6    # "entry$iv":Ljava/util/Map$Entry;
    :cond_1
    move-object v5, v4

    check-cast v5, Ljava/util/Map;

    .line 52
    .end local v2    # "$this$filterKeys$iv":Ljava/util/Map;
    .end local v3    # "$i$f$filterKeys":I
    .end local v4    # "result$iv":Ljava/util/LinkedHashMap;
    move-object v2, v5

    .line 53
    .local v2, "toRemove":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 80
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/work/impl/model/WorkGenerationalId;

    .restart local v7    # "it":Landroidx/work/impl/model/WorkGenerationalId;
    const/4 v8, 0x0

    .line 53
    .local v8, "$i$a$-forEach-StartStopTokens$remove$2$1":I
    iget-object v9, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "it":Landroidx/work/impl/model/WorkGenerationalId;
    .end local v8    # "$i$a$-forEach-StartStopTokens$remove$2$1":I
    goto :goto_1

    .line 81
    :cond_2
    nop

    .line 54
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v1    # "$i$a$-synchronized-StartStopTokens$remove$2":I
    .end local v2    # "toRemove":Ljava/util/Map;
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 7
    .param p1, "id"    # Landroidx/work/impl/model/WorkGenerationalId;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 40
    .local v1, "$i$a$-synchronized-StartStopTokens$tokenFor$1":I
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/util/Map;

    .local v2, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 66
    .local v3, "$i$f$getOrPut":I
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 67
    .local v4, "value$iv":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 68
    const/4 v5, 0x0

    .line 40
    .local v5, "$i$a$-getOrPut-StartStopTokens$tokenFor$1$1":I
    new-instance v6, Landroidx/work/impl/StartStopToken;

    invoke-direct {v6, p1}, Landroidx/work/impl/StartStopToken;-><init>(Landroidx/work/impl/model/WorkGenerationalId;)V

    .line 68
    .end local v5    # "$i$a$-getOrPut-StartStopTokens$tokenFor$1$1":I
    move-object v5, v6

    .line 69
    .local v5, "answer$iv":Ljava/lang/Object;
    invoke-interface {v2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    nop

    .end local v5    # "answer$iv":Ljava/lang/Object;
    goto :goto_0

    .line 72
    :cond_0
    move-object v5, v4

    .line 67
    :goto_0
    nop

    .end local v2    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v3    # "$i$f$getOrPut":I
    .end local v4    # "value$iv":Ljava/lang/Object;
    check-cast v5, Landroidx/work/impl/StartStopToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    nop

    .line 39
    .end local v1    # "$i$a$-synchronized-StartStopTokens$tokenFor$1":I
    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final tokenFor(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/StartStopToken;
    .locals 1
    .param p1, "spec"    # Landroidx/work/impl/model/WorkSpec;

    const-string/jumbo v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object v0

    return-object v0
.end method
