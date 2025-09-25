.class final Landroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "Landroidx/compose/runtime/snapshots/Snapshot;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySetKt\n+ 4 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySet\n+ 5 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/ReaderKind$Companion\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1564:1\n82#2:1565\n396#3,2:1566\n399#3:1575\n401#3:1578\n108#4,5:1568\n114#4:1574\n50#5:1573\n1855#6,2:1576\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1\n*L\n977#1:1565\n979#1:1566,2\n979#1:1575\n979#1:1578\n979#1:1568,5\n979#1:1574\n982#1:1573\n979#1:1576,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "changed",
        "",
        "",
        "<anonymous parameter 1>",
        "Landroidx/compose/runtime/snapshots/Snapshot;",
        "invoke"
    }
    k = 0x3
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
.method constructor <init>(Landroidx/compose/runtime/Recomposer;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 976
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/snapshots/Snapshot;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1;->invoke(Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 18
    .param p1, "changed"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")V"
        }
    .end annotation

    .line 991
    move-object/from16 v1, p0

    .line 977
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "lock$iv":Ljava/lang/Object;
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v3, 0x0

    .line 1565
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 978
    .local v4, "$i$a$-synchronized-Recomposer$recompositionRunner$2$unregisterApplyObserver$1$1":I
    :try_start_0
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$get_state$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/Recomposer$State;

    sget-object v6, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/Recomposer$State;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_6

    .line 979
    move-object/from16 v5, p1

    .local v5, "$this$fastForEach$iv":Ljava/util/Set;
    const/4 v6, 0x0

    .line 1566
    .local v6, "$i$f$fastForEach":I
    instance-of v7, v5, Landroidx/compose/runtime/collection/IdentityArraySet;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    .line 1567
    move-object v7, v5

    check-cast v7, Landroidx/compose/runtime/collection/IdentityArraySet;

    .local v7, "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    const/4 v9, 0x0

    .line 1568
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1569
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v10

    .line 1570
    .local v10, "values$iv$iv":[Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "i$iv$iv":I
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v12

    :goto_0
    if-ge v11, v12, :cond_1

    .line 1572
    aget-object v13, v10, v11

    const-string/jumbo v14, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v13, "it":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 980
    .local v14, "$i$a$-fastForEach-Recomposer$recompositionRunner$2$unregisterApplyObserver$1$1$1":I
    nop

    .line 981
    instance-of v15, v13, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v15, :cond_0

    .line 982
    move-object v15, v13

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    sget-object v16, Landroidx/compose/runtime/snapshots/ReaderKind;->Companion:Landroidx/compose/runtime/snapshots/ReaderKind$Companion;

    .local v16, "this_$iv":Landroidx/compose/runtime/snapshots/ReaderKind$Companion;
    const/16 v17, 0x0

    .line 1573
    .local v17, "$i$f$getComposition-6f8NoZ8":I
    invoke-static {v8}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v1

    .line 982
    .end local v16    # "this_$iv":Landroidx/compose/runtime/snapshots/ReaderKind$Companion;
    .end local v17    # "$i$f$getComposition-6f8NoZ8":I
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 985
    goto :goto_1

    .line 987
    :cond_0
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    .line 988
    nop

    .line 1572
    .end local v13    # "it":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-Recomposer$recompositionRunner$2$unregisterApplyObserver$1$1$1":I
    :goto_1
    nop

    .line 1570
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    goto :goto_0

    .line 1574
    .end local v11    # "i$iv$iv":I
    :cond_1
    nop

    .end local v7    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v9    # "$i$f$fastForEach":I
    .end local v10    # "values$iv$iv":[Ljava/lang/Object;
    goto :goto_4

    .line 1575
    :cond_2
    move-object v1, v5

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 1576
    .local v7, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 980
    .local v12, "$i$a$-fastForEach-Recomposer$recompositionRunner$2$unregisterApplyObserver$1$1$1":I
    nop

    .line 981
    instance-of v13, v11, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v13, :cond_3

    .line 982
    move-object v13, v11

    check-cast v13, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    sget-object v14, Landroidx/compose/runtime/snapshots/ReaderKind;->Companion:Landroidx/compose/runtime/snapshots/ReaderKind$Companion;

    .local v14, "this_$iv":Landroidx/compose/runtime/snapshots/ReaderKind$Companion;
    const/4 v15, 0x0

    .line 1573
    .local v15, "$i$f$getComposition-6f8NoZ8":I
    move-object/from16 p2, v1

    .end local v1    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .local p2, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    invoke-static {v8}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v1

    .line 982
    .end local v14    # "this_$iv":Landroidx/compose/runtime/snapshots/ReaderKind$Companion;
    .end local v15    # "$i$f$getComposition-6f8NoZ8":I
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 985
    goto :goto_3

    .line 981
    .end local p2    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .restart local v1    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    :cond_3
    move-object/from16 p2, v1

    .line 987
    .end local v1    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .restart local p2    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    :cond_4
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    .line 988
    nop

    .line 1576
    .end local v11    # "it":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-Recomposer$recompositionRunner$2$unregisterApplyObserver$1$1$1":I
    :goto_3
    move-object/from16 v1, p2

    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 1577
    .end local p2    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .restart local v1    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    :cond_5
    move-object/from16 p2, v1

    .line 1578
    .end local v1    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    :goto_4
    nop

    .line 989
    .end local v5    # "$this$fastForEach$iv":Ljava/util/Set;
    .end local v6    # "$i$f$fastForEach":I
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 990
    :cond_6
    const/4 v0, 0x0

    .line 978
    :goto_5
    nop

    .line 1565
    .end local v4    # "$i$a$-synchronized-Recomposer$recompositionRunner$2$unregisterApplyObserver$1$1":I
    monitor-exit v2

    .line 977
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    nop

    .line 991
    if-eqz v0, :cond_7

    .line 977
    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 991
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 992
    :cond_7
    return-void

    .line 1565
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
