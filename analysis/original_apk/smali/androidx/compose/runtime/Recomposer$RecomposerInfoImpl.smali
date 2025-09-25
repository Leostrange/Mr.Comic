.class final Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
.super Ljava/lang/Object;
.source "Recomposer.kt"

# interfaces
.implements Landroidx/compose/runtime/RecomposerInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/Recomposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecomposerInfoImpl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$RecomposerInfoImpl\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1564:1\n82#2:1565\n82#2:1566\n82#2:1585\n211#3,3:1567\n33#3,4:1570\n214#3:1574\n215#3:1576\n38#3:1577\n216#3:1578\n33#3,6:1579\n211#3,3:1586\n33#3,4:1589\n214#3:1593\n215#3:1595\n38#3:1596\n216#3:1597\n82#3,3:1598\n33#3,4:1601\n85#3:1605\n86#3:1607\n38#3:1608\n87#3:1609\n1#4:1575\n1#4:1594\n1#4:1606\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$RecomposerInfoImpl\n*L\n368#1:1565\n373#1:1566\n381#1:1585\n377#1:1567,3\n377#1:1570,4\n377#1:1574\n377#1:1576\n377#1:1577\n377#1:1578\n378#1:1579,6\n385#1:1586,3\n385#1:1589,4\n385#1:1593\n385#1:1595\n385#1:1596\n385#1:1597\n386#1:1598,3\n386#1:1601,4\n386#1:1605\n386#1:1607\n386#1:1608\n386#1:1609\n377#1:1575\n385#1:1594\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0006\u0010\u001a\u001a\u00020\u0015J\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cR\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;",
        "Landroidx/compose/runtime/RecomposerInfo;",
        "(Landroidx/compose/runtime/Recomposer;)V",
        "changeCount",
        "",
        "getChangeCount",
        "()J",
        "currentError",
        "Landroidx/compose/runtime/RecomposerErrorInfo;",
        "getCurrentError",
        "()Landroidx/compose/runtime/RecomposerErrorInfo;",
        "hasPendingWork",
        "",
        "getHasPendingWork",
        "()Z",
        "state",
        "Lkotlinx/coroutines/flow/Flow;",
        "Landroidx/compose/runtime/Recomposer$State;",
        "getState",
        "()Lkotlinx/coroutines/flow/Flow;",
        "invalidateGroupsWithKey",
        "",
        "key",
        "",
        "resetErrorState",
        "Landroidx/compose/runtime/Recomposer$RecomposerErrorState;",
        "retryFailedCompositions",
        "saveStateAndDisposeForHotReload",
        "",
        "Landroidx/compose/runtime/Recomposer$HotReloadable;",
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


# instance fields
.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Recomposer;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/compose/runtime/Recomposer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 360
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeCount()J
    .locals 2

    .line 366
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->getChangeCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentError()Landroidx/compose/runtime/RecomposerErrorInfo;
    .locals 4

    .line 368
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "lock$iv":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v2, 0x0

    .line 1565
    .local v2, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v3, 0x0

    .line 369
    .local v3, "$i$a$-synchronized-Recomposer$RecomposerInfoImpl$currentError$1":I
    :try_start_0
    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->access$getErrorState$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    .end local v3    # "$i$a$-synchronized-Recomposer$RecomposerInfoImpl$currentError$1":I
    monitor-exit v0

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    check-cast v1, Landroidx/compose/runtime/RecomposerErrorInfo;

    .line 370
    return-object v1

    .line 1565
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getHasPendingWork()Z
    .locals 1

    .line 364
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->getHasPendingWork()Z

    move-result v0

    return v0
.end method

.method public getState()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->getCurrentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final invalidateGroupsWithKey(I)V
    .locals 14
    .param p1, "key"    # I

    .line 373
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "lock$iv":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v2, 0x0

    .line 1566
    .local v2, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v3, 0x0

    .line 374
    .local v3, "$i$a$-synchronized-Recomposer$RecomposerInfoImpl$invalidateGroupsWithKey$compositions$1":I
    :try_start_0
    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    .end local v3    # "$i$a$-synchronized-Recomposer$RecomposerInfoImpl$invalidateGroupsWithKey$compositions$1":I
    monitor-exit v0

    .line 373
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    move-object v0, v1

    .line 376
    .local v0, "compositions":Ljava/util/List;
    nop

    .line 377
    nop

    .local v1, "$this$fastMapNotNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1567
    .local v2, "$i$f$fastMapNotNull":I
    nop

    .line 1568
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1569
    .local v3, "target$iv":Ljava/util/ArrayList;
    move-object v4, v1

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1570
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1571
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_2

    .line 1572
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1573
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "e$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1574
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastMapNotNull$2$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/runtime/ControlledComposition;

    .local v11, "it":Landroidx/compose/runtime/ControlledComposition;
    const/4 v12, 0x0

    .line 377
    .local v12, "$i$a$-fastMapNotNull-Recomposer$RecomposerInfoImpl$invalidateGroupsWithKey$1":I
    instance-of v13, v11, Landroidx/compose/runtime/CompositionImpl;

    if-eqz v13, :cond_0

    move-object v13, v11

    check-cast v13, Landroidx/compose/runtime/CompositionImpl;

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    .line 1574
    .end local v11    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v12    # "$i$a$-fastMapNotNull-Recomposer$RecomposerInfoImpl$invalidateGroupsWithKey$1":I
    :goto_1
    if-eqz v13, :cond_1

    move-object v11, v13

    .line 1575
    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1574
    .local v12, "$i$a$-let-ListUtilsKt$fastMapNotNull$2$1$iv":I
    move-object v13, v3

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1576
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ListUtilsKt$fastMapNotNull$2$1$iv":I
    :cond_1
    nop

    .line 1573
    .end local v9    # "e$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastMapNotNull$2$iv":I
    nop

    .line 1571
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1577
    .end local v6    # "index$iv$iv":I
    :cond_2
    nop

    .line 1578
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 378
    .end local v1    # "$this$fastMapNotNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMapNotNull":I
    .end local v3    # "target$iv":Ljava/util/ArrayList;
    nop

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1579
    .local v2, "$i$f$fastForEach":I
    nop

    .line 1580
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_3

    .line 1581
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1582
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/runtime/CompositionImpl;

    .local v6, "it":Landroidx/compose/runtime/CompositionImpl;
    const/4 v7, 0x0

    .line 378
    .local v7, "$i$a$-fastForEach-Recomposer$RecomposerInfoImpl$invalidateGroupsWithKey$2":I
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/CompositionImpl;->invalidateGroupsWithKey(I)V

    .line 1582
    .end local v6    # "it":Landroidx/compose/runtime/CompositionImpl;
    .end local v7    # "$i$a$-fastForEach-Recomposer$RecomposerInfoImpl$invalidateGroupsWithKey$2":I
    nop

    .line 1580
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1584
    .end local v3    # "index$iv":I
    :cond_3
    nop

    .line 379
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    return-void

    .line 1566
    .local v0, "lock$iv":Ljava/lang/Object;
    .local v2, "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final resetErrorState()Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .locals 1

    .line 390
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$resetErrorState(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    move-result-object v0

    return-object v0
.end method

.method public final retryFailedCompositions()V
    .locals 1

    .line 393
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$retryFailedCompositions(Landroidx/compose/runtime/Recomposer;)V

    return-void
.end method

.method public final saveStateAndDisposeForHotReload()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Recomposer$HotReloadable;",
            ">;"
        }
    .end annotation

    .line 381
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "lock$iv":Ljava/lang/Object;
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v3, 0x0

    .line 1585
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 382
    .local v4, "$i$a$-synchronized-Recomposer$RecomposerInfoImpl$saveStateAndDisposeForHotReload$compositions$1":I
    :try_start_0
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1585
    .end local v4    # "$i$a$-synchronized-Recomposer$RecomposerInfoImpl$saveStateAndDisposeForHotReload$compositions$1":I
    monitor-exit v2

    .line 381
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    nop

    .line 384
    .local v0, "compositions":Ljava/util/List;
    nop

    .line 385
    move-object v2, v0

    .local v2, "$this$fastMapNotNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1586
    .local v3, "$i$f$fastMapNotNull":I
    nop

    .line 1587
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1589
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1590
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_2

    .line 1591
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1592
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "e$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1593
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastMapNotNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/runtime/ControlledComposition;

    .local v12, "it":Landroidx/compose/runtime/ControlledComposition;
    const/4 v13, 0x0

    .line 385
    .local v13, "$i$a$-fastMapNotNull-Recomposer$RecomposerInfoImpl$saveStateAndDisposeForHotReload$1":I
    instance-of v14, v12, Landroidx/compose/runtime/CompositionImpl;

    if-eqz v14, :cond_0

    move-object v14, v12

    check-cast v14, Landroidx/compose/runtime/CompositionImpl;

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    .line 1593
    .end local v12    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v13    # "$i$a$-fastMapNotNull-Recomposer$RecomposerInfoImpl$saveStateAndDisposeForHotReload$1":I
    :goto_1
    if-eqz v14, :cond_1

    move-object v12, v14

    .line 1594
    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1593
    .local v13, "$i$a$-let-ListUtilsKt$fastMapNotNull$2$1$iv":I
    move-object v14, v4

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1595
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ListUtilsKt$fastMapNotNull$2$1$iv":I
    :cond_1
    nop

    .line 1592
    .end local v10    # "e$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastMapNotNull$2$iv":I
    nop

    .line 1590
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1596
    .end local v7    # "index$iv$iv":I
    :cond_2
    nop

    .line 1597
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .line 386
    .end local v2    # "$this$fastMapNotNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastMapNotNull":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    nop

    .local v2, "$this$fastMap$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1598
    .local v3, "$i$f$fastMap":I
    nop

    .line 1599
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1600
    .restart local v4    # "target$iv":Ljava/util/ArrayList;
    move-object v5, v2

    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1601
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 1602
    const/4 v7, 0x0

    .restart local v7    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_3

    .line 1603
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1604
    .restart local v9    # "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1605
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v12, v4

    check-cast v12, Ljava/util/Collection;

    move-object v13, v10

    check-cast v13, Landroidx/compose/runtime/CompositionImpl;

    .local v13, "it":Landroidx/compose/runtime/CompositionImpl;
    const/4 v14, 0x0

    .line 386
    .local v14, "$i$a$-fastMap-Recomposer$RecomposerInfoImpl$saveStateAndDisposeForHotReload$2":I
    new-instance v15, Landroidx/compose/runtime/Recomposer$HotReloadable;

    invoke-direct {v15, v13}, Landroidx/compose/runtime/Recomposer$HotReloadable;-><init>(Landroidx/compose/runtime/CompositionImpl;)V

    move-object/from16 v16, v15

    .line 1606
    .local v16, "$this$saveStateAndDisposeForHotReload_u24lambda_u247_u24lambda_u246":Landroidx/compose/runtime/Recomposer$HotReloadable;
    const/16 v17, 0x0

    .line 386
    .local v17, "$i$a$-apply-Recomposer$RecomposerInfoImpl$saveStateAndDisposeForHotReload$2$1":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Recomposer$HotReloadable;->clearContent()V

    .line 1605
    .end local v13    # "it":Landroidx/compose/runtime/CompositionImpl;
    .end local v14    # "$i$a$-fastMap-Recomposer$RecomposerInfoImpl$saveStateAndDisposeForHotReload$2":I
    .end local v16    # "$this$saveStateAndDisposeForHotReload_u24lambda_u247_u24lambda_u246":Landroidx/compose/runtime/Recomposer$HotReloadable;
    .end local v17    # "$i$a$-apply-Recomposer$RecomposerInfoImpl$saveStateAndDisposeForHotReload$2$1":I
    invoke-interface {v12, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1607
    nop

    .line 1604
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1602
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1608
    .end local v7    # "index$iv$iv":I
    :cond_3
    nop

    .line 1609
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .line 384
    .end local v2    # "$this$fastMap$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastMap":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    return-object v2

    .line 1585
    .end local v0    # "compositions":Ljava/util/List;
    .local v2, "lock$iv":Ljava/lang/Object;
    .local v3, "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    move-object v4, v0

    monitor-exit v2

    throw v4
.end method
