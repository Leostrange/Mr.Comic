.class public final Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt;
.super Ljava/lang/Object;
.source "ViewInfoUtil.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewInfoUtil.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewInfoUtil.android.kt\nandroidx/compose/ui/tooling/ViewInfoUtil_androidKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n1360#2:80\n1446#2,2:81\n1360#2:83\n1446#2,5:84\n1448#2,3:89\n1855#2,2:92\n*S KotlinDebug\n*F\n+ 1 ViewInfoUtil.android.kt\nandroidx/compose/ui/tooling/ViewInfoUtil_androidKt\n*L\n26#1:80\n26#1:81,2\n28#1:83\n28#1:84,5\n26#1:89,3\n66#1:92,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a.\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0008\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004H\u0002\u001a2\u0010\u0006\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0014\u0008\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004H\u0000\u00a8\u0006\n"
    }
    d2 = {
        "filterTree",
        "",
        "Landroidx/compose/ui/tooling/ViewInfo;",
        "filter",
        "Lkotlin/Function1;",
        "",
        "toDebugString",
        "",
        "indentation",
        "",
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
.method private static final filterTree(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 25
    .param p0, "$this$filterTree"    # Ljava/util/List;
    .param p1, "filter"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/ViewInfo;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/tooling/ViewInfo;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/ViewInfo;",
            ">;"
        }
    .end annotation

    .line 26
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 80
    .local v2, "$i$f$flatMap":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 81
    .local v5, "$i$f$flatMapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 82
    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/tooling/ViewInfo;

    .local v8, "it":Landroidx/compose/ui/tooling/ViewInfo;
    const/4 v9, 0x0

    .line 28
    .local v9, "$i$a$-flatMap-ViewInfoUtil_androidKt$filterTree$2":I
    invoke-virtual {v8}, Landroidx/compose/ui/tooling/ViewInfo;->getChildren()Ljava/util/List;

    move-result-object v10

    invoke-static {v10, v0}, Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt;->filterTree(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 83
    .local v11, "$i$f$flatMap":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .local v12, "destination$iv$iv":Ljava/util/Collection;
    move-object v13, v10

    .local v13, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 84
    .local v14, "$i$f$flatMapTo":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 85
    .local v16, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/tooling/ViewInfo;

    .local v17, "child":Landroidx/compose/ui/tooling/ViewInfo;
    const/16 v18, 0x0

    .line 29
    .local v18, "$i$a$-flatMap-ViewInfoUtil_androidKt$filterTree$2$acceptedNodes$1":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/tooling/ViewInfo;->getLocation()Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object v19

    if-nez v19, :cond_0

    .line 30
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/tooling/ViewInfo;->getChildren()Ljava/util/List;

    move-result-object v19

    goto :goto_2

    .line 31
    :cond_0
    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    .line 29
    :goto_2
    nop

    .line 85
    .end local v17    # "child":Landroidx/compose/ui/tooling/ViewInfo;
    .end local v18    # "$i$a$-flatMap-ViewInfoUtil_androidKt$filterTree$2$acceptedNodes$1":I
    move-object/from16 v17, v1

    .end local v1    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .local v17, "$this$flatMap$iv":Ljava/lang/Iterable;
    move-object/from16 v1, v19

    check-cast v1, Ljava/lang/Iterable;

    .line 86
    .local v1, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v12, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v1, v17

    goto :goto_1

    .line 88
    .end local v16    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .local v1, "$this$flatMap$iv":Ljava/lang/Iterable;
    :cond_1
    move-object/from16 v17, v1

    .end local v1    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$flatMapTo":I
    .restart local v17    # "$this$flatMap$iv":Ljava/lang/Iterable;
    move-object/from16 v23, v12

    check-cast v23, Ljava/util/List;

    .line 83
    nop

    .line 28
    .end local v10    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$flatMap":I
    nop

    .line 27
    nop

    .line 34
    .local v23, "acceptedNodes":Ljava/util/List;
    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    new-instance v1, Landroidx/compose/ui/tooling/ViewInfo;

    .line 36
    invoke-virtual {v8}, Landroidx/compose/ui/tooling/ViewInfo;->getFileName()Ljava/lang/String;

    move-result-object v19

    .line 37
    invoke-virtual {v8}, Landroidx/compose/ui/tooling/ViewInfo;->getLineNumber()I

    move-result v20

    .line 38
    invoke-virtual {v8}, Landroidx/compose/ui/tooling/ViewInfo;->getBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v21

    .line 39
    invoke-virtual {v8}, Landroidx/compose/ui/tooling/ViewInfo;->getLocation()Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object v22

    .line 40
    nop

    .line 41
    invoke-virtual {v8}, Landroidx/compose/ui/tooling/ViewInfo;->getLayoutInfo()Ljava/lang/Object;

    move-result-object v24

    .line 35
    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v24}, Landroidx/compose/ui/tooling/ViewInfo;-><init>(Ljava/lang/String;ILandroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/tooling/data/SourceLocation;Ljava/util/List;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 45
    :cond_2
    new-instance v1, Landroidx/compose/ui/tooling/ViewInfo;

    .line 46
    const-string v11, "<root>"

    .line 47
    const/4 v12, -0x1

    .line 48
    sget-object v10, Landroidx/compose/ui/unit/IntRect;->Companion:Landroidx/compose/ui/unit/IntRect$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/unit/IntRect$Companion;->getZero()Landroidx/compose/ui/unit/IntRect;

    move-result-object v13

    .line 49
    const/4 v14, 0x0

    .line 50
    nop

    .line 51
    const/16 v16, 0x0

    .line 45
    move-object v10, v1

    move-object/from16 v15, v23

    invoke-direct/range {v10 .. v16}, Landroidx/compose/ui/tooling/ViewInfo;-><init>(Ljava/lang/String;ILandroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/tooling/data/SourceLocation;Ljava/util/List;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 34
    :goto_3
    nop

    .line 82
    .end local v8    # "it":Landroidx/compose/ui/tooling/ViewInfo;
    .end local v9    # "$i$a$-flatMap-ViewInfoUtil_androidKt$filterTree$2":I
    .end local v23    # "acceptedNodes":Ljava/util/List;
    check-cast v1, Ljava/lang/Iterable;

    .line 89
    .local v1, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v1, v17

    goto/16 :goto_0

    .line 91
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .local v1, "$this$flatMap$iv":Ljava/lang/Iterable;
    :cond_3
    move-object/from16 v17, v1

    .end local v1    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$flatMapTo":I
    .restart local v17    # "$this$flatMap$iv":Ljava/lang/Iterable;
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 80
    nop

    .line 54
    .end local v2    # "$i$f$flatMap":I
    .end local v17    # "$this$flatMap$iv":Ljava/lang/Iterable;
    return-object v1
.end method

.method static synthetic filterTree$default(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 23
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 24
    sget-object p1, Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt$filterTree$1;->INSTANCE:Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt$filterTree$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 23
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt;->filterTree(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toDebugString(Ljava/util/List;ILkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 16
    .param p0, "$this$toDebugString"    # Ljava/util/List;
    .param p1, "indentation"    # I
    .param p2, "filter"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/ViewInfo;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/tooling/ViewInfo;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 61
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "."

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, v0}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "indentString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v3, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v4, p0

    invoke-static {v4, v1}, Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt;->filterTree(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 65
    const/4 v6, 0x3

    new-array v6, v6, [Lkotlin/jvm/functions/Function1;

    sget-object v7, Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt$toDebugString$2;->INSTANCE:Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt$toDebugString$2;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt$toDebugString$3;->INSTANCE:Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt$toDebugString$3;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    sget-object v10, Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt$toDebugString$4;->INSTANCE:Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt$toDebugString$4;

    aput-object v10, v6, v7

    invoke-static {v6}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 66
    nop

    .local v5, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 92
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/tooling/ViewInfo;

    .local v11, "it":Landroidx/compose/ui/tooling/ViewInfo;
    const/4 v12, 0x0

    .line 67
    .local v12, "$i$a$-forEach-ViewInfoUtil_androidKt$toDebugString$5":I
    invoke-virtual {v11}, Landroidx/compose/ui/tooling/ViewInfo;->getLocation()Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object v13

    const-string v14, "append(\'\\n\')"

    const/16 v15, 0xa

    const-string v8, "append(value)"

    if-eqz v13, :cond_0

    .line 68
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v9, 0x7c

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v11}, Landroidx/compose/ui/tooling/ViewInfo;->getFileName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v13, 0x3a

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v11}, Landroidx/compose/ui/tooling/ViewInfo;->getLineNumber()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v13, "|<root>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :goto_1
    invoke-virtual {v11}, Landroidx/compose/ui/tooling/ViewInfo;->getChildren()Ljava/util/List;

    move-result-object v9

    .line 73
    add-int/lit8 v13, v0, 0x1

    invoke-static {v9, v13, v1}, Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt;->toDebugString(Ljava/util/List;ILkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 72
    nop

    .line 74
    .local v9, "childrenString":Ljava/lang/String;
    move-object v13, v9

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_2

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    :cond_2
    nop

    .line 92
    .end local v9    # "childrenString":Ljava/lang/String;
    .end local v11    # "it":Landroidx/compose/ui/tooling/ViewInfo;
    .end local v12    # "$i$a$-forEach-ViewInfoUtil_androidKt$toDebugString$5":I
    const/4 v8, 0x0

    const/4 v9, 0x1

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 93
    :cond_3
    nop

    .line 77
    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static synthetic toDebugString$default(Ljava/util/List;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 57
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 58
    const/4 p1, 0x0

    .line 57
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 59
    sget-object p2, Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt$toDebugString$1;->INSTANCE:Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt$toDebugString$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 57
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/tooling/ViewInfoUtil_androidKt;->toDebugString(Ljava/util/List;ILkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
