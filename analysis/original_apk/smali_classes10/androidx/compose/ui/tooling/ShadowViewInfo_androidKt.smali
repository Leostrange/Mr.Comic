.class public final Landroidx/compose/ui/tooling/ShadowViewInfo_androidKt;
.super Ljava/lang/Object;
.source "ShadowViewInfo.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShadowViewInfo.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShadowViewInfo.android.kt\nandroidx/compose/ui/tooling/ShadowViewInfo_androidKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,121:1\n1549#2:122\n1620#2,3:123\n1373#2:126\n1461#2,5:127\n1549#2:132\n1620#2,3:133\n766#2:136\n857#2,2:137\n1477#2:139\n1502#2,3:140\n1505#2,3:150\n1855#2,2:153\n1549#2:155\n1620#2,3:156\n361#3,7:143\n*S KotlinDebug\n*F\n+ 1 ShadowViewInfo.android.kt\nandroidx/compose/ui/tooling/ShadowViewInfo_androidKt\n*L\n80#1:122\n80#1:123,3\n85#1:126\n85#1:127,5\n86#1:132\n86#1:133,3\n87#1:136\n87#1:137,2\n88#1:139\n88#1:140,3\n88#1:150,3\n94#1:153,2\n115#1:155\n115#1:156,3\n88#1:143,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001c\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "stitchTrees",
        "",
        "Landroidx/compose/ui/tooling/ViewInfo;",
        "allViewInfoRoots",
        "ui-tooling_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final stitchTrees(Ljava/util/List;)Ljava/util/List;
    .locals 15
    .param p0, "allViewInfoRoots"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/ViewInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/ViewInfo;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-object p0

    .line 80
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 122
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 123
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 124
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/tooling/ViewInfo;

    .local v8, "it":Landroidx/compose/ui/tooling/ViewInfo;
    const/4 v9, 0x0

    .line 80
    .local v9, "$i$a$-map-ShadowViewInfo_androidKt$stitchTrees$shadowTreeRoots$1":I
    new-instance v10, Landroidx/compose/ui/tooling/ShadowViewInfo;

    invoke-direct {v10, v8}, Landroidx/compose/ui/tooling/ShadowViewInfo;-><init>(Landroidx/compose/ui/tooling/ViewInfo;)V

    .line 124
    .end local v8    # "it":Landroidx/compose/ui/tooling/ViewInfo;
    .end local v9    # "$i$a$-map-ShadowViewInfo_androidKt$stitchTrees$shadowTreeRoots$1":I
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 122
    nop

    .line 80
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    move-object v0, v2

    .line 84
    .local v0, "shadowTreeRoots":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 85
    nop

    .local v1, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 126
    .local v2, "$i$f$flatMapSequence":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 127
    .local v6, "$i$f$flatMapSequenceTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 128
    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/tooling/ShadowViewInfo;

    .local v9, "it":Landroidx/compose/ui/tooling/ShadowViewInfo;
    const/4 v10, 0x0

    .line 85
    .local v10, "$i$a$-flatMapSequence-ShadowViewInfo_androidKt$stitchTrees$shadowNodesWithLayoutInfo$1":I
    invoke-virtual {v9}, Landroidx/compose/ui/tooling/ShadowViewInfo;->getAllNodes()Lkotlin/sequences/Sequence;

    move-result-object v9

    .line 128
    .end local v9    # "it":Landroidx/compose/ui/tooling/ShadowViewInfo;
    .end local v10    # "$i$a$-flatMapSequence-ShadowViewInfo_androidKt$stitchTrees$shadowNodesWithLayoutInfo$1":I
    nop

    .line 129
    .local v9, "list$iv$iv":Lkotlin/sequences/Sequence;
    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    goto :goto_1

    .line 131
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    .end local v9    # "list$iv$iv":Lkotlin/sequences/Sequence;
    :cond_2
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$flatMapSequenceTo":I
    check-cast v4, Ljava/util/List;

    .line 126
    nop

    .end local v1    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$flatMapSequence":I
    check-cast v4, Ljava/lang/Iterable;

    .line 86
    move-object v1, v4

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 132
    .local v2, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 133
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 134
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/tooling/ShadowViewInfo;

    .local v9, "it":Landroidx/compose/ui/tooling/ShadowViewInfo;
    const/4 v10, 0x0

    .line 86
    .local v10, "$i$a$-map-ShadowViewInfo_androidKt$stitchTrees$shadowNodesWithLayoutInfo$2":I
    invoke-virtual {v9}, Landroidx/compose/ui/tooling/ShadowViewInfo;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v11

    invoke-static {v11, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 134
    .end local v9    # "it":Landroidx/compose/ui/tooling/ShadowViewInfo;
    .end local v10    # "$i$a$-map-ShadowViewInfo_androidKt$stitchTrees$shadowNodesWithLayoutInfo$2":I
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 135
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 132
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    check-cast v4, Ljava/lang/Iterable;

    .line 87
    move-object v1, v4

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 136
    .local v2, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 137
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlin/Pair;

    .local v9, "it":Lkotlin/Pair;
    const/4 v10, 0x0

    .line 87
    .local v10, "$i$a$-filter-ShadowViewInfo_androidKt$stitchTrees$shadowNodesWithLayoutInfo$3":I
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    .line 137
    .end local v9    # "it":Lkotlin/Pair;
    .end local v10    # "$i$a$-filter-ShadowViewInfo_androidKt$stitchTrees$shadowNodesWithLayoutInfo$3":I
    :goto_4
    if-eqz v11, :cond_4

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 138
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 136
    nop

    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    check-cast v4, Ljava/lang/Iterable;

    .line 88
    move-object v1, v4

    .local v1, "$this$groupBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 139
    .local v2, "$i$f$groupBy":I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .local v4, "destination$iv$iv":Ljava/util/Map;
    move-object v5, v1

    .local v5, "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 140
    .local v6, "$i$f$groupByTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 141
    .restart local v8    # "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlin/Pair;

    .restart local v9    # "it":Lkotlin/Pair;
    const/4 v10, 0x0

    .line 88
    .local v10, "$i$a$-groupBy-ShadowViewInfo_androidKt$stitchTrees$shadowNodesWithLayoutInfo$4":I
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/layout/LayoutInfo;

    .line 141
    .end local v9    # "it":Lkotlin/Pair;
    .end local v10    # "$i$a$-groupBy-ShadowViewInfo_androidKt$stitchTrees$shadowNodesWithLayoutInfo$4":I
    move-object v9, v11

    .line 142
    .local v9, "key$iv$iv":Ljava/lang/Object;
    move-object v10, v4

    .local v10, "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    const/4 v11, 0x0

    .line 143
    .local v11, "$i$f$getOrPut":I
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 144
    .local v12, "value$iv$iv$iv":Ljava/lang/Object;
    if-nez v12, :cond_7

    .line 145
    const/4 v13, 0x0

    .line 142
    .local v13, "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    check-cast v14, Ljava/util/List;

    .line 145
    .end local v13    # "$i$a$-getOrPut-CollectionsKt___CollectionsKt$groupByTo$list$1$iv$iv":I
    move-object v13, v14

    .line 146
    .local v13, "answer$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    nop

    .end local v13    # "answer$iv$iv$iv":Ljava/lang/Object;
    goto :goto_6

    .line 149
    :cond_7
    move-object v13, v12

    .line 144
    :goto_6
    nop

    .line 142
    .end local v10    # "$this$getOrPut$iv$iv$iv":Ljava/util/Map;
    .end local v11    # "$i$f$getOrPut":I
    .end local v12    # "value$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v13

    check-cast v10, Ljava/util/List;

    .line 150
    .local v10, "list$iv$iv":Ljava/util/List;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 152
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    .end local v9    # "key$iv$iv":Ljava/lang/Object;
    .end local v10    # "list$iv$iv":Ljava/util/List;
    :cond_8
    nop

    .line 139
    .end local v4    # "destination$iv$iv":Ljava/util/Map;
    .end local v5    # "$this$groupByTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$groupByTo":I
    nop

    .line 88
    .end local v1    # "$this$groupBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$groupBy":I
    nop

    .line 84
    move-object v1, v4

    .line 90
    .local v1, "shadowNodesWithLayoutInfo":Ljava/util/Map;
    new-instance v2, Ljava/util/LinkedHashSet;

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v2, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 93
    .local v2, "currentRoots":Ljava/util/LinkedHashSet;
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .line 94
    nop

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 153
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/tooling/ShadowViewInfo;

    .local v8, "rootToAttach":Landroidx/compose/ui/tooling/ShadowViewInfo;
    const/4 v9, 0x0

    .line 108
    .local v9, "$i$a$-forEach-ShadowViewInfo_androidKt$stitchTrees$1":I
    nop

    .line 95
    nop

    .line 99
    invoke-virtual {v8}, Landroidx/compose/ui/tooling/ShadowViewInfo;->getAllNodes()Lkotlin/sequences/Sequence;

    move-result-object v10

    .line 100
    new-instance v11, Landroidx/compose/ui/tooling/ShadowViewInfo_androidKt$stitchTrees$1$1;

    invoke-direct {v11, v1}, Landroidx/compose/ui/tooling/ShadowViewInfo_androidKt$stitchTrees$1$1;-><init>(Ljava/util/Map;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v11}, Lkotlin/sequences/SequencesKt;->flatMapIterable(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v10

    .line 103
    new-instance v11, Landroidx/compose/ui/tooling/ShadowViewInfo_androidKt$stitchTrees$1$2;

    invoke-direct {v11, v8}, Landroidx/compose/ui/tooling/ShadowViewInfo_androidKt$stitchTrees$1$2;-><init>(Landroidx/compose/ui/tooling/ShadowViewInfo;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v11}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v10

    .line 107
    sget-object v11, Landroidx/compose/ui/tooling/ShadowViewInfo_androidKt$stitchTrees$1$3;->INSTANCE:Landroidx/compose/ui/tooling/ShadowViewInfo_androidKt$stitchTrees$1$3;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v11}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v10

    .line 108
    invoke-static {v10}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/tooling/ShadowViewInfo;

    if-eqz v10, :cond_9

    .local v10, "nodeToAttachTo":Landroidx/compose/ui/tooling/ShadowViewInfo;
    const/4 v11, 0x0

    .line 110
    .local v11, "$i$a$-let-ShadowViewInfo_androidKt$stitchTrees$1$4":I
    invoke-virtual {v8, v10}, Landroidx/compose/ui/tooling/ShadowViewInfo;->setNewParent(Landroidx/compose/ui/tooling/ShadowViewInfo;)V

    .line 111
    invoke-virtual {v2, v8}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 112
    nop

    .line 108
    .end local v10    # "nodeToAttachTo":Landroidx/compose/ui/tooling/ShadowViewInfo;
    .end local v11    # "$i$a$-let-ShadowViewInfo_androidKt$stitchTrees$1$4":I
    nop

    .line 113
    :cond_9
    nop

    .line 153
    .end local v8    # "rootToAttach":Landroidx/compose/ui/tooling/ShadowViewInfo;
    .end local v9    # "$i$a$-forEach-ShadowViewInfo_androidKt$stitchTrees$1":I
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_7

    .line 154
    :cond_a
    nop

    .line 115
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 155
    .local v5, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v4

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 156
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 157
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/tooling/ShadowViewInfo;

    .local v10, "it":Landroidx/compose/ui/tooling/ShadowViewInfo;
    const/4 v11, 0x0

    .line 116
    .local v11, "$i$a$-map-ShadowViewInfo_androidKt$stitchTrees$newTree$1":I
    invoke-virtual {v10}, Landroidx/compose/ui/tooling/ShadowViewInfo;->toViewInfo()Landroidx/compose/ui/tooling/ViewInfo;

    move-result-object v10

    .line 157
    .end local v10    # "it":Landroidx/compose/ui/tooling/ShadowViewInfo;
    .end local v11    # "$i$a$-map-ShadowViewInfo_androidKt$stitchTrees$newTree$1":I
    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 158
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_b
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 155
    nop

    .line 115
    .end local v4    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map":I
    nop

    .line 119
    .local v3, "newTree":Ljava/util/List;
    return-object v3
.end method
