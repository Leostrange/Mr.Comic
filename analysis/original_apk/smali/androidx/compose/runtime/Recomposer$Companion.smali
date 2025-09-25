.class public final Landroidx/compose/runtime/Recomposer$Companion;
.super Ljava/lang/Object;
.source "Recomposer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/Recomposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1564:1\n1360#2:1565\n1446#2,5:1566\n1855#2,2:1571\n1855#2,2:1585\n1855#2,2:1587\n1603#2,9:1589\n1855#2:1598\n1856#2:1600\n1612#2:1601\n1603#2,9:1602\n1855#2:1611\n1856#2:1613\n1612#2:1614\n33#3,6:1573\n33#3,6:1579\n1#4:1599\n1#4:1612\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$Companion\n*L\n1440#1:1565\n1440#1:1566,5\n1448#1:1571,2\n1457#1:1585,2\n1464#1:1587,2\n1478#1:1589,9\n1478#1:1598\n1478#1:1600\n1478#1:1601\n1483#1:1602,9\n1483#1:1611\n1483#1:1613\n1483#1:1614\n1454#1:1573,6\n1455#1:1579,6\n1478#1:1599\n1483#1:1612\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0013\u001a\u00020\u00142\n\u0010\u0015\u001a\u00060\u000bR\u00020\u000cH\u0002J\r\u0010\u0016\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008\u0017J\u0013\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0000\u00a2\u0006\u0002\u0008\u001bJ\u0015\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0000\u00a2\u0006\u0002\u0008\u001fJ\u0015\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0001H\u0000\u00a2\u0006\u0002\u0008\"J\u0014\u0010#\u001a\u00020\u00142\n\u0010\u0015\u001a\u00060\u000bR\u00020\u000cH\u0002J\r\u0010$\u001a\u00020\u0001H\u0000\u00a2\u0006\u0002\u0008%J\u0015\u0010&\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008(R.\u0010\u0003\u001a\"\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u00050\u0004j\u0010\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u00060\u000bR\u00020\u000c0\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006)"
    }
    d2 = {
        "Landroidx/compose/runtime/Recomposer$Companion;",
        "",
        "()V",
        "_hotReloadEnabled",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "",
        "kotlin.jvm.PlatformType",
        "Landroidx/compose/runtime/AtomicReference;",
        "_runningRecomposers",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;",
        "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;",
        "Landroidx/compose/runtime/Recomposer;",
        "runningRecomposers",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Landroidx/compose/runtime/RecomposerInfo;",
        "getRunningRecomposers",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "addRunning",
        "",
        "info",
        "clearErrors",
        "clearErrors$runtime_release",
        "getCurrentErrors",
        "",
        "Landroidx/compose/runtime/RecomposerErrorInfo;",
        "getCurrentErrors$runtime_release",
        "invalidateGroupsWithKey",
        "key",
        "",
        "invalidateGroupsWithKey$runtime_release",
        "loadStateAndComposeForHotReload",
        "token",
        "loadStateAndComposeForHotReload$runtime_release",
        "removeRunning",
        "saveStateAndDisposeForHotReload",
        "saveStateAndDisposeForHotReload$runtime_release",
        "setHotReloadEnabled",
        "value",
        "setHotReloadEnabled$runtime_release",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$addRunning(Landroidx/compose/runtime/Recomposer$Companion;Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer$Companion;
    .param p1, "info"    # Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 1400
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer$Companion;->addRunning(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V

    return-void
.end method

.method public static final synthetic access$removeRunning(Landroidx/compose/runtime/Recomposer$Companion;Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer$Companion;
    .param p1, "info"    # Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 1400
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer$Companion;->removeRunning(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V

    return-void
.end method

.method private final addRunning(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V
    .locals 3
    .param p1, "info"    # Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 1421
    nop

    :cond_0
    nop

    .line 1422
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 1423
    .local v0, "old":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;->add(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object v1

    .line 1424
    .local v1, "new":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    if-eq v0, v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1426
    .end local v0    # "old":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    .end local v1    # "new":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    :cond_1
    return-void
.end method

.method private final removeRunning(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V
    .locals 3
    .param p1, "info"    # Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 1429
    nop

    :cond_0
    nop

    .line 1430
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 1431
    .local v0, "old":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;->remove(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object v1

    .line 1432
    .local v1, "new":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    if-eq v0, v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1434
    .end local v0    # "old":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    .end local v1    # "new":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    :cond_1
    return-void
.end method


# virtual methods
.method public final clearErrors$runtime_release()V
    .locals 13

    .line 1483
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1602
    .local v1, "$i$f$mapNotNull":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1610
    .local v4, "$i$f$mapNotNullTo":I
    move-object v5, v3

    .local v5, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 1611
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "element$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1610
    .local v10, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .local v11, "it":Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    const/4 v12, 0x0

    .line 1484
    .local v12, "$i$a$-mapNotNull-Recomposer$Companion$clearErrors$1":I
    invoke-virtual {v11}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->resetErrorState()Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    move-result-object v11

    .line 1610
    .end local v11    # "it":Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    .end local v12    # "$i$a$-mapNotNull-Recomposer$Companion$clearErrors$1":I
    if-eqz v11, :cond_0

    .line 1612
    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1610
    .local v12, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1611
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v8    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1613
    :cond_1
    nop

    .line 1614
    .end local v5    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapNotNullTo":I
    check-cast v2, Ljava/util/List;

    .line 1602
    nop

    .line 1486
    .end local v0    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$mapNotNull":I
    return-void
.end method

.method public final getCurrentErrors$runtime_release()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposerErrorInfo;",
            ">;"
        }
    .end annotation

    .line 1478
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1589
    .local v1, "$i$f$mapNotNull":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1597
    .local v4, "$i$f$mapNotNullTo":I
    move-object v5, v3

    .local v5, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 1598
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "element$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1597
    .local v10, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .local v11, "it":Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    const/4 v12, 0x0

    .line 1479
    .local v12, "$i$a$-mapNotNull-Recomposer$Companion$getCurrentErrors$1":I
    invoke-virtual {v11}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->getCurrentError()Landroidx/compose/runtime/RecomposerErrorInfo;

    move-result-object v11

    .line 1597
    .end local v11    # "it":Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    .end local v12    # "$i$a$-mapNotNull-Recomposer$Companion$getCurrentErrors$1":I
    if-eqz v11, :cond_0

    .line 1599
    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1597
    .local v12, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1598
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v8    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1600
    :cond_1
    nop

    .line 1601
    .end local v5    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapNotNullTo":I
    check-cast v2, Ljava/util/List;

    .line 1589
    nop

    .line 1480
    .end local v0    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$mapNotNull":I
    return-object v2
.end method

.method public final getRunningRecomposers()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RecomposerInfo;",
            ">;>;"
        }
    .end annotation

    .line 1414
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final invalidateGroupsWithKey$runtime_release(I)V
    .locals 9
    .param p1, "key"    # I

    .line 1463
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_hotReloadEnabled$cp()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1464
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1587
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .local v5, "it":Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    const/4 v6, 0x0

    .line 1465
    .local v6, "$i$a$-forEach-Recomposer$Companion$invalidateGroupsWithKey$1":I
    invoke-virtual {v5}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->getCurrentError()Landroidx/compose/runtime/RecomposerErrorInfo;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroidx/compose/runtime/RecomposerErrorInfo;->getRecoverable()Z

    move-result v7

    if-nez v7, :cond_0

    move v8, v1

    :cond_0
    if-eqz v8, :cond_1

    .line 1466
    goto :goto_1

    .line 1469
    :cond_1
    invoke-virtual {v5}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->resetErrorState()Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 1471
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->invalidateGroupsWithKey(I)V

    .line 1473
    invoke-virtual {v5}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->retryFailedCompositions()V

    .line 1474
    nop

    .line 1587
    .end local v5    # "it":Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    .end local v6    # "$i$a$-forEach-Recomposer$Companion$invalidateGroupsWithKey$1":I
    :goto_1
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1588
    :cond_2
    nop

    .line 1475
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method

.method public final loadStateAndComposeForHotReload$runtime_release(Ljava/lang/Object;)V
    .locals 8
    .param p1, "token"    # Ljava/lang/Object;

    .line 1446
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_hotReloadEnabled$cp()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1448
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1571
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .local v4, "it":Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    const/4 v5, 0x0

    .line 1449
    .local v5, "$i$a$-forEach-Recomposer$Companion$loadStateAndComposeForHotReload$1":I
    invoke-virtual {v4}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->resetErrorState()Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 1450
    nop

    .line 1571
    .end local v4    # "it":Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    .end local v5    # "$i$a$-forEach-Recomposer$Companion$loadStateAndComposeForHotReload$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1572
    :cond_0
    nop

    .line 1453
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.runtime.Recomposer.HotReloadable>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 1454
    .local v0, "holders":Ljava/util/List;
    move-object v1, v0

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1573
    .local v2, "$i$f$fastForEach":I
    nop

    .line 1574
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_1

    .line 1575
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1576
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/runtime/Recomposer$HotReloadable;

    .local v6, "it":Landroidx/compose/runtime/Recomposer$HotReloadable;
    const/4 v7, 0x0

    .line 1454
    .local v7, "$i$a$-fastForEach-Recomposer$Companion$loadStateAndComposeForHotReload$2":I
    invoke-virtual {v6}, Landroidx/compose/runtime/Recomposer$HotReloadable;->resetContent()V

    .line 1576
    .end local v6    # "it":Landroidx/compose/runtime/Recomposer$HotReloadable;
    .end local v7    # "$i$a$-fastForEach-Recomposer$Companion$loadStateAndComposeForHotReload$2":I
    nop

    .line 1574
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1578
    .end local v3    # "index$iv":I
    :cond_1
    nop

    .line 1455
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    move-object v1, v0

    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1579
    .restart local v2    # "$i$f$fastForEach":I
    nop

    .line 1580
    const/4 v3, 0x0

    .restart local v3    # "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_2

    .line 1581
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1582
    .restart local v5    # "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/runtime/Recomposer$HotReloadable;

    .restart local v6    # "it":Landroidx/compose/runtime/Recomposer$HotReloadable;
    const/4 v7, 0x0

    .line 1455
    .local v7, "$i$a$-fastForEach-Recomposer$Companion$loadStateAndComposeForHotReload$3":I
    invoke-virtual {v6}, Landroidx/compose/runtime/Recomposer$HotReloadable;->recompose()V

    .line 1582
    .end local v6    # "it":Landroidx/compose/runtime/Recomposer$HotReloadable;
    .end local v7    # "$i$a$-fastForEach-Recomposer$Companion$loadStateAndComposeForHotReload$3":I
    nop

    .line 1580
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1584
    .end local v3    # "index$iv":I
    :cond_2
    nop

    .line 1457
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1585
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .local v5, "it":Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    const/4 v6, 0x0

    .line 1458
    .local v6, "$i$a$-forEach-Recomposer$Companion$loadStateAndComposeForHotReload$4":I
    invoke-virtual {v5}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->retryFailedCompositions()V

    .line 1459
    nop

    .line 1585
    .end local v5    # "it":Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    .end local v6    # "$i$a$-forEach-Recomposer$Companion$loadStateAndComposeForHotReload$4":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 1586
    :cond_3
    nop

    .line 1460
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method

.method public final saveStateAndDisposeForHotReload$runtime_release()Ljava/lang/Object;
    .locals 9

    .line 1439
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_hotReloadEnabled$cp()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1440
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1565
    .local v1, "$i$f$flatMap":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1566
    .local v4, "$i$f$flatMapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1567
    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .local v7, "it":Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    const/4 v8, 0x0

    .line 1440
    .local v8, "$i$a$-flatMap-Recomposer$Companion$saveStateAndDisposeForHotReload$1":I
    invoke-virtual {v7}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->saveStateAndDisposeForHotReload()Ljava/util/List;

    move-result-object v7

    .line 1567
    .end local v7    # "it":Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    .end local v8    # "$i$a$-flatMap-Recomposer$Companion$saveStateAndDisposeForHotReload$1":I
    check-cast v7, Ljava/lang/Iterable;

    .line 1568
    .local v7, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 1570
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    .end local v7    # "list$iv$iv":Ljava/lang/Iterable;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$flatMapTo":I
    check-cast v2, Ljava/util/List;

    .line 1565
    nop

    .line 1440
    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$flatMap":I
    return-object v2
.end method

.method public final setHotReloadEnabled$runtime_release(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 1417
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->access$get_hotReloadEnabled$cp()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1418
    return-void
.end method
