.class final Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;
.super Landroidx/compose/runtime/snapshots/SnapshotMapSet;
.source "SnapshotStateMap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/snapshots/SnapshotMapSet<",
        "TK;TV;TV;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotStateMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotMapValueSet\n+ 2 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotStateMap\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,360:1\n84#2,2:361\n128#2,5:363\n133#2:369\n121#2:370\n134#2,5:372\n86#2,7:377\n139#2,2:384\n125#2:386\n141#2,6:392\n149#2,3:401\n93#2:404\n84#2,2:405\n128#2,5:407\n133#2:413\n121#2:414\n134#2,5:416\n86#2,7:421\n139#2,2:428\n125#2:430\n141#2,6:436\n149#2,3:445\n93#2:448\n82#3:368\n82#3:412\n2283#4:371\n2176#4,2:387\n1714#4:389\n2178#4,2:390\n2180#4,3:398\n2283#4:415\n2176#4,2:431\n1714#4:433\n2178#4,2:434\n2180#4,3:442\n1726#5,3:449\n*S KotlinDebug\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotMapValueSet\n*L\n250#1:361,2\n250#1:363,5\n250#1:369\n250#1:370\n250#1:372,5\n250#1:377,7\n250#1:384,2\n250#1:386\n250#1:392,6\n250#1:401,3\n250#1:404\n254#1:405,2\n254#1:407,5\n254#1:413\n254#1:414\n254#1:416,5\n254#1:421,7\n254#1:428,2\n254#1:430\n254#1:436,6\n254#1:445,3\n254#1:448\n250#1:368\n254#1:412\n250#1:371\n250#1:387,2\n250#1:389\n250#1:390,2\n250#1:398,3\n254#1:415\n254#1:431,2\n254#1:433\n254#1:434,2\n254#1:442,3\n258#1:449,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020\u0003B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\nJ\u0016\u0010\u000b\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00010\rH\u0016J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00028\u0001H\u0096\u0002\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010\u0011\u001a\u00020\u000f2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00010\rH\u0016J\u0015\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0013H\u0096\u0002J\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010\u0015\u001a\u00020\u000f2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00010\rH\u0016J\u0016\u0010\u0016\u001a\u00020\u000f2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00010\rH\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;",
        "K",
        "V",
        "Landroidx/compose/runtime/snapshots/SnapshotMapSet;",
        "map",
        "Landroidx/compose/runtime/snapshots/SnapshotStateMap;",
        "(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Ljava/lang/Void;",
        "addAll",
        "elements",
        "",
        "contains",
        "",
        "(Ljava/lang/Object;)Z",
        "containsAll",
        "iterator",
        "Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator;",
        "remove",
        "removeAll",
        "retainAll",
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
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V
    .locals 0
    .param p1, "map"    # Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 242
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V

    .line 240
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 243
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 240
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->add(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Ljava/lang/Void;
    .locals 1
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 244
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "elements"    # Ljava/util/Collection;

    .line 240
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->addAll(Ljava/util/Collection;)Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 256
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 8
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 258
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 449
    .local v1, "$i$f$all":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 258
    .local v6, "$i$a$-all-SnapshotMapValueSet$containsAll$1":I
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    .line 450
    .end local v5    # "it":Ljava/lang/Object;
    .end local v6    # "$i$a$-all-SnapshotMapValueSet$containsAll$1":I
    if-nez v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 451
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 258
    .end local v0    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$all":I
    :goto_0
    return v3
.end method

.method public iterator()Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 246
    new-instance v0, Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableSet;

    invoke-interface {v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 240
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->iterator()Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 247
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->removeValue$runtime_release(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 27
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 249
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 250
    .local v1, "set":Ljava/util/Set;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v2

    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v3, 0x0

    .line 361
    .local v3, "$i$f$removeIf$runtime_release":I
    const/4 v0, 0x0

    .line 362
    .local v0, "removed$iv":Z
    move-object v4, v2

    .local v4, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v5, 0x0

    .line 363
    .local v5, "$i$f$mutate":I
    const/4 v6, 0x0

    move-object v7, v6

    move v6, v0

    .line 364
    .end local v0    # "removed$iv":Z
    .local v6, "removed$iv":Z
    .local v7, "result$iv$iv":Ljava/lang/Object;
    :goto_0
    nop

    .line 365
    const/4 v8, 0x0

    .line 366
    .local v8, "oldMap$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 367
    .local v9, "currentModification$iv$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v10

    .local v10, "lock$iv$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 368
    .local v11, "$i$f$synchronized":I
    monitor-enter v10

    const/4 v0, 0x0

    .line 369
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$1$iv$iv":I
    move-object v12, v4

    .local v12, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v13, 0x0

    .line 370
    .local v13, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v14

    const-string/jumbo v15, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    check-cast v14, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v14, "$this$withCurrent$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v15, 0x0

    .line 371
    .local v15, "$i$f$withCurrent":I
    invoke-static {v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v16

    check-cast v16, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .local v16, "$this$mutate_u24lambda_u249_u24lambda_u248$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/16 v17, 0x0

    .line 369
    .local v17, "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1$iv$iv":I
    nop

    .line 371
    .end local v16    # "$this$mutate_u24lambda_u249_u24lambda_u248$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v17    # "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1$iv$iv":I
    nop

    .line 370
    .end local v14    # "$this$withCurrent$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$withCurrent":I
    nop

    .line 369
    .end local v12    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v13    # "$i$f$withCurrent":I
    move-object/from16 v12, v16

    .line 372
    .local v12, "current$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v13

    move-object v8, v13

    .line 373
    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v13

    move v9, v13

    .line 374
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$1$iv$iv":I
    .end local v12    # "current$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 368
    monitor-exit v10

    .line 375
    .end local v10    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$f$synchronized":I
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    move-result-object v10

    .line 376
    .local v10, "builder$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    move-object v0, v10

    check-cast v0, Ljava/util/Map;

    .local v0, "it$iv":Ljava/util/Map;
    const/4 v11, 0x0

    .line 377
    .local v11, "$i$a$-mutate-SnapshotStateMap$removeIf$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 378
    .local v13, "entry$iv":Ljava/util/Map$Entry;
    move-object v14, v13

    .local v14, "it":Ljava/util/Map$Entry;
    const/4 v15, 0x0

    .line 250
    .local v15, "$i$a$-removeIf$runtime_release-SnapshotMapValueSet$removeAll$1":I
    move-object/from16 v16, v2

    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v16, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 378
    .end local v14    # "it":Ljava/util/Map$Entry;
    .end local v15    # "$i$a$-removeIf$runtime_release-SnapshotMapValueSet$removeAll$1":I
    if-eqz v2, :cond_0

    .line 379
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const/4 v6, 0x1

    move-object/from16 v2, v16

    .end local v13    # "entry$iv":Ljava/util/Map$Entry;
    goto :goto_1

    .line 378
    .restart local v13    # "entry$iv":Ljava/util/Map$Entry;
    :cond_0
    move-object/from16 v2, v16

    goto :goto_1

    .line 383
    .end local v13    # "entry$iv":Ljava/util/Map$Entry;
    .end local v16    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :cond_1
    move-object/from16 v16, v2

    .end local v0    # "it$iv":Ljava/util/Map;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v11    # "$i$a$-mutate-SnapshotStateMap$removeIf$1$iv":I
    .restart local v16    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 376
    move-object v7, v0

    .line 384
    invoke-interface {v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v2

    .line 385
    .local v2, "newMap$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v11, v4

    .local v11, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v12, 0x0

    .line 386
    .local v12, "$i$f$writable":I
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v13, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object v13, v0

    check-cast v13, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v13, "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v14, 0x0

    .line 387
    .local v14, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v15

    .line 388
    .end local v0    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v15, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 389
    .local v17, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v18

    .local v18, "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 368
    .local v19, "$i$f$synchronized":I
    monitor-enter v18

    const/16 v20, 0x0

    .line 390
    .local v20, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v15, v0

    .line 391
    move-object v0, v11

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v13, v0, v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object/from16 v21, v0

    .local v21, "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/16 v22, 0x0

    .line 392
    .local v22, "$i$a$-writable-SnapshotStateMap$mutate$2$iv$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    .local v23, "lock$iv$iv$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 368
    .local v24, "$i$f$synchronized":I
    monitor-enter v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    .line 393
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv$iv":I
    move/from16 v25, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv$iv":I
    .local v25, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv$iv":I
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v9, :cond_2

    .line 394
    move-object/from16 v26, v1

    move-object/from16 v1, v21

    .end local v21    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v26, "set":Ljava/util/Set;
    :try_start_3
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setMap$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 395
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v21, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setModification$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    goto :goto_2

    .line 368
    .end local v25    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 397
    .end local v26    # "set":Ljava/util/Set;
    .local v1, "set":Ljava/util/Set;
    .restart local v21    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v25    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv$iv":I
    :cond_2
    move-object/from16 v26, v1

    move-object/from16 v1, v21

    .end local v21    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v26    # "set":Ljava/util/Set;
    const/16 v21, 0x0

    .line 393
    :goto_2
    nop

    .line 368
    .end local v25    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv$iv":I
    :try_start_4
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 392
    .end local v23    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v24    # "$i$f$synchronized":I
    nop

    .line 391
    .end local v1    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v22    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv$iv":I
    nop

    .line 368
    .end local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    monitor-exit v18

    .line 389
    .end local v18    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    nop

    .line 398
    .end local v17    # "$i$f$sync":I
    move/from16 v0, v21

    .local v0, "it$iv$iv$iv$iv":Z
    const/4 v1, 0x0

    .line 399
    .local v1, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv$iv":I
    move/from16 v17, v0

    .end local v0    # "it$iv$iv$iv$iv":Z
    .local v17, "it$iv$iv$iv$iv":Z
    move-object v0, v11

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v15, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 400
    nop

    .line 398
    .end local v1    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv$iv":I
    .end local v17    # "it$iv$iv$iv$iv":Z
    nop

    .line 388
    nop

    .line 386
    .end local v13    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v14    # "$i$f$writable":I
    .end local v15    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 385
    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v12    # "$i$f$writable":I
    if-eqz v21, :cond_3

    goto :goto_5

    :cond_3
    move-object/from16 v2, v16

    move-object/from16 v1, v26

    goto/16 :goto_0

    .line 368
    .end local v26    # "set":Ljava/util/Set;
    .local v1, "set":Ljava/util/Set;
    .restart local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v14    # "$i$f$writable":I
    .restart local v15    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v17, "$i$f$sync":I
    .restart local v18    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    .restart local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    .restart local v21    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v22    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv$iv":I
    .restart local v23    # "lock$iv$iv$iv":Ljava/lang/Object;
    .restart local v24    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move-object/from16 v26, v1

    move-object/from16 v1, v21

    .end local v21    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v26    # "set":Ljava/util/Set;
    :goto_3
    :try_start_5
    monitor-exit v23

    .end local v2    # "newMap$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .end local v3    # "$i$f$removeIf$runtime_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v5    # "$i$f$mutate":I
    .end local v6    # "removed$iv":Z
    .end local v7    # "result$iv$iv":Ljava/lang/Object;
    .end local v8    # "oldMap$iv$iv":Ljava/lang/Object;
    .end local v9    # "currentModification$iv$iv":I
    .end local v10    # "builder$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v14    # "$i$f$writable":I
    .end local v15    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v17    # "$i$f$sync":I
    .end local v18    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    .end local v26    # "set":Ljava/util/Set;
    .end local p1    # "elements":Ljava/util/Collection;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    .end local v22    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv$iv":I
    .end local v23    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v24    # "$i$f$synchronized":I
    .restart local v2    # "newMap$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .restart local v3    # "$i$f$removeIf$runtime_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v5    # "$i$f$mutate":I
    .restart local v6    # "removed$iv":Z
    .restart local v7    # "result$iv$iv":Ljava/lang/Object;
    .restart local v8    # "oldMap$iv$iv":Ljava/lang/Object;
    .restart local v9    # "currentModification$iv$iv":I
    .restart local v10    # "builder$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .restart local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v14    # "$i$f$writable":I
    .restart local v15    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v16    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v17    # "$i$f$sync":I
    .restart local v18    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    .restart local v26    # "set":Ljava/util/Set;
    .restart local p1    # "elements":Ljava/util/Collection;
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v26    # "set":Ljava/util/Set;
    .local v1, "set":Ljava/util/Set;
    :catchall_3
    move-exception v0

    move-object/from16 v26, v1

    .end local v1    # "set":Ljava/util/Set;
    .restart local v26    # "set":Ljava/util/Set;
    :goto_4
    monitor-exit v18

    throw v0

    .line 385
    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v14    # "$i$f$writable":I
    .end local v15    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$sync":I
    .end local v18    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    .end local v26    # "set":Ljava/util/Set;
    .restart local v1    # "set":Ljava/util/Set;
    :cond_4
    move-object/from16 v26, v1

    .line 401
    .end local v1    # "set":Ljava/util/Set;
    .restart local v26    # "set":Ljava/util/Set;
    :goto_5
    nop

    .line 403
    .end local v2    # "newMap$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .end local v8    # "oldMap$iv$iv":Ljava/lang/Object;
    .end local v9    # "currentModification$iv$iv":I
    .end local v10    # "builder$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    nop

    .line 404
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v5    # "$i$f$mutate":I
    .end local v7    # "result$iv$iv":Ljava/lang/Object;
    nop

    .line 250
    .end local v3    # "$i$f$removeIf$runtime_release":I
    .end local v6    # "removed$iv":Z
    .end local v16    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    return v6

    .line 368
    .end local v26    # "set":Ljava/util/Set;
    .restart local v1    # "set":Ljava/util/Set;
    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v3    # "$i$f$removeIf$runtime_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v5    # "$i$f$mutate":I
    .restart local v6    # "removed$iv":Z
    .restart local v7    # "result$iv$iv":Ljava/lang/Object;
    .restart local v8    # "oldMap$iv$iv":Ljava/lang/Object;
    .restart local v9    # "currentModification$iv$iv":I
    .local v10, "lock$iv$iv$iv":Ljava/lang/Object;
    .local v11, "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    move-object/from16 v26, v1

    move-object/from16 v16, v2

    .end local v1    # "set":Ljava/util/Set;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v16    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v26    # "set":Ljava/util/Set;
    monitor-exit v10

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 28
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 253
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 254
    .local v1, "set":Ljava/util/Set;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v2

    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v3, 0x0

    .line 405
    .local v3, "$i$f$removeIf$runtime_release":I
    const/4 v0, 0x0

    .line 406
    .local v0, "removed$iv":Z
    move-object v4, v2

    .local v4, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v5, 0x0

    .line 407
    .local v5, "$i$f$mutate":I
    const/4 v6, 0x0

    move-object v7, v6

    move v6, v0

    .line 408
    .end local v0    # "removed$iv":Z
    .local v6, "removed$iv":Z
    .local v7, "result$iv$iv":Ljava/lang/Object;
    :goto_0
    nop

    .line 409
    const/4 v8, 0x0

    .line 410
    .local v8, "oldMap$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 411
    .local v9, "currentModification$iv$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v10

    .local v10, "lock$iv$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 412
    .local v11, "$i$f$synchronized":I
    monitor-enter v10

    const/4 v0, 0x0

    .line 413
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$1$iv$iv":I
    move-object v12, v4

    .local v12, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v13, 0x0

    .line 414
    .local v13, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v14

    const-string/jumbo v15, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    check-cast v14, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v14, "$this$withCurrent$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v15, 0x0

    .line 415
    .local v15, "$i$f$withCurrent":I
    invoke-static {v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v16

    check-cast v16, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .local v16, "$this$mutate_u24lambda_u249_u24lambda_u248$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/16 v17, 0x0

    .line 413
    .local v17, "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1$iv$iv":I
    nop

    .line 415
    .end local v16    # "$this$mutate_u24lambda_u249_u24lambda_u248$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v17    # "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1$iv$iv":I
    nop

    .line 414
    .end local v14    # "$this$withCurrent$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$withCurrent":I
    nop

    .line 413
    .end local v12    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v13    # "$i$f$withCurrent":I
    move-object/from16 v12, v16

    .line 416
    .local v12, "current$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v13

    move-object v8, v13

    .line 417
    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v13

    move v9, v13

    .line 418
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$1$iv$iv":I
    .end local v12    # "current$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 412
    monitor-exit v10

    .line 419
    .end local v10    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$f$synchronized":I
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    move-result-object v10

    .line 420
    .local v10, "builder$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    move-object v0, v10

    check-cast v0, Ljava/util/Map;

    .local v0, "it$iv":Ljava/util/Map;
    const/4 v11, 0x0

    .line 421
    .local v11, "$i$a$-mutate-SnapshotStateMap$removeIf$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 422
    .local v13, "entry$iv":Ljava/util/Map$Entry;
    move-object v15, v13

    .local v15, "it":Ljava/util/Map$Entry;
    const/16 v16, 0x0

    .line 254
    .local v16, "$i$a$-removeIf$runtime_release-SnapshotMapValueSet$retainAll$1":I
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    .line 422
    .end local v15    # "it":Ljava/util/Map$Entry;
    .end local v16    # "$i$a$-removeIf$runtime_release-SnapshotMapValueSet$retainAll$1":I
    xor-int/2addr v14, v15

    if-eqz v14, :cond_0

    .line 423
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const/4 v6, 0x1

    .end local v13    # "entry$iv":Ljava/util/Map$Entry;
    goto :goto_1

    .line 427
    :cond_1
    nop

    .end local v0    # "it$iv":Ljava/util/Map;
    .end local v11    # "$i$a$-mutate-SnapshotStateMap$removeIf$1$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 420
    move-object v7, v0

    .line 428
    invoke-interface {v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v11

    .line 429
    .local v11, "newMap$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v12, v4

    .local v12, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v13, 0x0

    .line 430
    .local v13, "$i$f$writable":I
    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v14, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object v14, v0

    check-cast v14, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v14, "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v15, 0x0

    .line 431
    .local v15, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v16

    .line 432
    .end local v0    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v16, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 433
    .local v18, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v19

    .local v19, "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 412
    .local v20, "$i$f$synchronized":I
    monitor-enter v19

    const/16 v21, 0x0

    .line 434
    .local v21, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v16, v0

    .line 435
    :try_start_2
    move-object v0, v12

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v22, v1

    move-object/from16 v1, v16

    .end local v16    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v1, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v22, "set":Ljava/util/Set;
    :try_start_3
    invoke-static {v14, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object/from16 v16, v0

    .local v16, "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/16 v23, 0x0

    .line 436
    .local v23, "$i$a$-writable-SnapshotStateMap$mutate$2$iv$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    .local v24, "lock$iv$iv$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 412
    .local v25, "$i$f$synchronized":I
    monitor-enter v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v0, 0x0

    .line 437
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv$iv":I
    move/from16 v26, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv$iv":I
    .local v26, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv$iv":I
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v9, :cond_2

    .line 438
    move-object/from16 v27, v2

    move-object/from16 v2, v16

    .end local v16    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v2, "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v27, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :try_start_5
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setMap$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 439
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setModification$runtime_release(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 440
    move/from16 v0, v16

    goto :goto_2

    .line 412
    .end local v26    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 441
    .end local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v16    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v26    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv$iv":I
    :cond_2
    move-object/from16 v27, v2

    move-object/from16 v2, v16

    .end local v16    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v2, "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v0, 0x0

    .line 437
    :goto_2
    nop

    .line 412
    .end local v26    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv$iv":I
    :try_start_6
    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 436
    .end local v24    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$i$f$synchronized":I
    nop

    .line 435
    .end local v2    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v23    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv$iv":I
    nop

    .line 412
    .end local v21    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    monitor-exit v19

    .line 433
    .end local v19    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$f$synchronized":I
    nop

    .line 442
    .end local v18    # "$i$f$sync":I
    move v2, v0

    .local v2, "it$iv$iv$iv$iv":Z
    const/16 v16, 0x0

    .line 443
    .local v16, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv$iv":I
    move/from16 v17, v2

    .end local v2    # "it$iv$iv$iv$iv":Z
    .local v17, "it$iv$iv$iv$iv":Z
    move-object v2, v12

    check-cast v2, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 444
    nop

    .line 442
    .end local v16    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv$iv":I
    .end local v17    # "it$iv$iv$iv$iv":Z
    nop

    .line 432
    nop

    .line 430
    .end local v1    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    nop

    .line 429
    .end local v12    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v13    # "$i$f$writable":I
    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    move-object/from16 v1, v22

    move-object/from16 v2, v27

    goto/16 :goto_0

    .line 412
    .end local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v1    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v12    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v15    # "$i$f$writable":I
    .local v16, "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v18    # "$i$f$sync":I
    .restart local v19    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$i$f$synchronized":I
    .restart local v21    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    .restart local v23    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv$iv":I
    .restart local v24    # "lock$iv$iv$iv":Ljava/lang/Object;
    .restart local v25    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v2, v16

    .end local v16    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v2, "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_3
    :try_start_7
    monitor-exit v24

    .end local v1    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$removeIf$runtime_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v5    # "$i$f$mutate":I
    .end local v6    # "removed$iv":Z
    .end local v7    # "result$iv$iv":Ljava/lang/Object;
    .end local v8    # "oldMap$iv$iv":Ljava/lang/Object;
    .end local v9    # "currentModification$iv$iv":I
    .end local v10    # "builder$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v11    # "newMap$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .end local v12    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    .end local v18    # "$i$f$sync":I
    .end local v19    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$f$synchronized":I
    .end local v22    # "set":Ljava/util/Set;
    .end local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local p1    # "elements":Ljava/util/Collection;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v2    # "$this$mutate_u24lambda_u2411$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v21    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    .end local v23    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv$iv":I
    .end local v24    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$i$f$synchronized":I
    .restart local v1    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$removeIf$runtime_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v5    # "$i$f$mutate":I
    .restart local v6    # "removed$iv":Z
    .restart local v7    # "result$iv$iv":Ljava/lang/Object;
    .restart local v8    # "oldMap$iv$iv":Ljava/lang/Object;
    .restart local v9    # "currentModification$iv$iv":I
    .restart local v10    # "builder$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .restart local v11    # "newMap$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .restart local v12    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v15    # "$i$f$writable":I
    .restart local v18    # "$i$f$sync":I
    .restart local v19    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$i$f$synchronized":I
    .restart local v22    # "set":Ljava/util/Set;
    .restart local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local p1    # "elements":Ljava/util/Collection;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_4

    .end local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :catchall_3
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v16, v1

    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    goto :goto_4

    .end local v22    # "set":Ljava/util/Set;
    .end local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v1, "set":Ljava/util/Set;
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v16, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move-object/from16 v22, v1

    move-object/from16 v27, v2

    move-object/from16 v1, v16

    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v16    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v1, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v22    # "set":Ljava/util/Set;
    .restart local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    goto :goto_4

    .end local v22    # "set":Ljava/util/Set;
    .end local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v1, "set":Ljava/util/Set;
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v16    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move-object/from16 v22, v1

    move-object/from16 v27, v2

    .end local v1    # "set":Ljava/util/Set;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v22    # "set":Ljava/util/Set;
    .restart local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_4
    monitor-exit v19

    throw v0

    .line 429
    .end local v12    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    .end local v16    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$sync":I
    .end local v19    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$f$synchronized":I
    .end local v22    # "set":Ljava/util/Set;
    .end local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v1    # "set":Ljava/util/Set;
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :cond_4
    move-object/from16 v22, v1

    move-object/from16 v27, v2

    .line 445
    .end local v1    # "set":Ljava/util/Set;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v22    # "set":Ljava/util/Set;
    .restart local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_5
    nop

    .line 447
    .end local v8    # "oldMap$iv$iv":Ljava/lang/Object;
    .end local v9    # "currentModification$iv$iv":I
    .end local v10    # "builder$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v11    # "newMap$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    nop

    .line 448
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v5    # "$i$f$mutate":I
    .end local v7    # "result$iv$iv":Ljava/lang/Object;
    nop

    .line 254
    .end local v3    # "$i$f$removeIf$runtime_release":I
    .end local v6    # "removed$iv":Z
    .end local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    return v6

    .line 412
    .end local v22    # "set":Ljava/util/Set;
    .restart local v1    # "set":Ljava/util/Set;
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v3    # "$i$f$removeIf$runtime_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v5    # "$i$f$mutate":I
    .restart local v6    # "removed$iv":Z
    .restart local v7    # "result$iv$iv":Ljava/lang/Object;
    .restart local v8    # "oldMap$iv$iv":Ljava/lang/Object;
    .restart local v9    # "currentModification$iv$iv":I
    .local v10, "lock$iv$iv$iv":Ljava/lang/Object;
    .local v11, "$i$f$synchronized":I
    :catchall_6
    move-exception v0

    move-object/from16 v22, v1

    move-object/from16 v27, v2

    .end local v1    # "set":Ljava/util/Set;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v22    # "set":Ljava/util/Set;
    .restart local v27    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    monitor-exit v10

    throw v0
.end method
