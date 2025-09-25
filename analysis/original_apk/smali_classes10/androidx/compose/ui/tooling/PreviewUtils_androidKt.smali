.class public final Landroidx/compose/ui/tooling/PreviewUtils_androidKt;
.super Ljava/lang/Object;
.source "PreviewUtils.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreviewUtils.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreviewUtils.android.kt\nandroidx/compose/ui/tooling/PreviewUtils_androidKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n3133#2,11:170\n12744#2,2:188\n1109#2,2:190\n1549#3:181\n1620#3,3:182\n37#4,2:185\n26#5:187\n1#6:192\n*S KotlinDebug\n*F\n+ 1 PreviewUtils.android.kt\nandroidx/compose/ui/tooling/PreviewUtils_androidKt\n*L\n50#1:170,11\n90#1:188,2\n93#1:190,2\n63#1:181\n63#1:182,3\n64#1:185,2\n76#1:187\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a4\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0002\u001a3\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t2\u0014\u0010\u000b\u001a\u0010\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\r\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0010\u0010\u001a\u0014\u0010\u0011\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0002\u001a\u001a\u0010\u0013\u001a\u0010\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\r\u0018\u00010\u000c*\u00020\u0014H\u0000\u001a&\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005H\u0000\u001a\"\u0010\u0016\u001a\u0004\u0018\u00010\u0002*\u00020\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005H\u0000\u001a)\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t*\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00182\u0006\u0010\u0019\u001a\u00020\u000fH\u0002\u00a2\u0006\u0002\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "findGroupsThatMatchPredicate",
        "",
        "Landroidx/compose/ui/tooling/data/Group;",
        "root",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "findOnlyFirst",
        "getPreviewProviderParameters",
        "",
        "",
        "parameterProviderClass",
        "Ljava/lang/Class;",
        "Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;",
        "parameterProviderIndex",
        "",
        "(Ljava/lang/Class;I)[Ljava/lang/Object;",
        "unwrapIfInline",
        "classToCheck",
        "asPreviewProviderClass",
        "",
        "findAll",
        "firstOrNull",
        "toArray",
        "Lkotlin/sequences/Sequence;",
        "size",
        "(Lkotlin/sequences/Sequence;I)[Ljava/lang/Object;",
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
.method public static final asPreviewProviderClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "$this$asPreviewProviderClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/compose/ui/tooling/preview/PreviewParameterProvider<",
            "*>;>;"
        }
    .end annotation

    .line 27
    nop

    .line 29
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Landroidx/compose/ui/tooling/PreviewLogger;->Companion:Landroidx/compose/ui/tooling/PreviewLogger$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find PreviewProvider \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/tooling/PreviewLogger$Companion;->logError$ui_tooling_release(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-object v0
.end method

.method public static final findAll(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 3
    .param p0, "$this$findAll"    # Landroidx/compose/ui/tooling/data/Group;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/tooling/data/Group;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/tooling/data/Group;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/Group;",
            ">;"
        }
    .end annotation

    .line 109
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Landroidx/compose/ui/tooling/PreviewUtils_androidKt;->findGroupsThatMatchPredicate$default(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final findGroupsThatMatchPredicate(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;Z)Ljava/util/List;
    .locals 5
    .param p0, "root"    # Landroidx/compose/ui/tooling/data/Group;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .param p2, "findOnlyFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/tooling/data/Group;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/tooling/data/Group;",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/Group;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 124
    .local v0, "result":Ljava/util/List;
    const/4 v1, 0x1

    new-array v2, v1, [Landroidx/compose/ui/tooling/data/Group;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 125
    .local v2, "stack":Ljava/util/List;
    :goto_0
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 126
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/tooling/data/Group;

    .line 127
    .local v3, "current":Landroidx/compose/ui/tooling/data/Group;
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 131
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/ui/tooling/data/Group;->getChildren()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 135
    .end local v3    # "current":Landroidx/compose/ui/tooling/data/Group;
    :cond_2
    return-object v0
.end method

.method static synthetic findGroupsThatMatchPredicate$default(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 118
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 121
    const/4 p2, 0x0

    .line 118
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/tooling/PreviewUtils_androidKt;->findGroupsThatMatchPredicate(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final firstOrNull(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/tooling/data/Group;
    .locals 1
    .param p0, "$this$firstOrNull"    # Landroidx/compose/ui/tooling/data/Group;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/tooling/data/Group;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/tooling/data/Group;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/tooling/data/Group;"
        }
    .end annotation

    .line 104
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroidx/compose/ui/tooling/PreviewUtils_androidKt;->findGroupsThatMatchPredicate(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/tooling/data/Group;

    return-object v0
.end method

.method public static final getPreviewProviderParameters(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 13
    .param p0, "parameterProviderClass"    # Ljava/lang/Class;
    .param p1, "parameterProviderIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/compose/ui/tooling/preview/PreviewParameterProvider<",
            "*>;>;I)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 48
    nop

    .line 49
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 50
    nop

    .local v1, "$this$singleOrNull$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 170
    .local v2, "$i$f$singleOrNull":I
    const/4 v3, 0x0

    .line 171
    .local v3, "single$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 172
    .local v4, "found$iv":Z
    array-length v5, v1

    move v6, v0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v6, v5, :cond_3

    aget-object v9, v1, v6

    .line 173
    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it":Ljava/lang/reflect/Constructor;
    const/4 v11, 0x0

    .line 50
    .local v11, "$i$a$-singleOrNull-PreviewUtils_androidKt$getPreviewProviderParameters$constructor$1":I
    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-nez v12, :cond_0

    move v12, v8

    goto :goto_1

    :cond_0
    move v12, v0

    .line 173
    .end local v10    # "it":Ljava/lang/reflect/Constructor;
    .end local v11    # "$i$a$-singleOrNull-PreviewUtils_androidKt$getPreviewProviderParameters$constructor$1":I
    :goto_1
    if-eqz v12, :cond_2

    .line 174
    if-eqz v4, :cond_1

    move-object v3, v7

    goto :goto_2

    .line 175
    :cond_1
    move-object v3, v9

    .line 176
    const/4 v4, 0x1

    .line 172
    .end local v9    # "element$iv":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 179
    :cond_3
    if-nez v4, :cond_4

    move-object v3, v7

    goto :goto_2

    .line 180
    :cond_4
    nop

    .line 50
    .end local v1    # "$this$singleOrNull$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$singleOrNull":I
    .end local v3    # "single$iv":Ljava/lang/Object;
    .end local v4    # "found$iv":Z
    :goto_2
    nop

    .line 51
    if-eqz v3, :cond_7

    .line 50
    nop

    .line 51
    move-object v1, v3

    .local v1, "$this$getPreviewProviderParameters_u24lambda_u241":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x0

    .line 52
    .local v2, "$i$a$-apply-PreviewUtils_androidKt$getPreviewProviderParameters$constructor$2":I
    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 53
    nop

    .line 51
    .end local v1    # "$this$getPreviewProviderParameters_u24lambda_u241":Ljava/lang/reflect/Constructor;
    .end local v2    # "$i$a$-apply-PreviewUtils_androidKt$getPreviewProviderParameters$constructor$2":I
    nop

    .line 49
    move-object v1, v3

    .line 58
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type androidx.compose.ui.tooling.preview.PreviewParameterProvider<*>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;

    .line 59
    .local v2, "params":Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;
    if-gez p1, :cond_5

    .line 60
    invoke-interface {v2}, Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;->getValues()Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v2}, Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;->getCount()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/ui/tooling/PreviewUtils_androidKt;->toArray(Lkotlin/sequences/Sequence;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 62
    :cond_5
    invoke-interface {v2}, Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;->getValues()Lkotlin/sequences/Sequence;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/sequences/SequencesKt;->elementAt(Lkotlin/sequences/Sequence;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 63
    nop

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 181
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 182
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 183
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 63
    .local v11, "$i$a$-map-PreviewUtils_androidKt$getPreviewProviderParameters$1":I
    invoke-static {v10}, Landroidx/compose/ui/tooling/PreviewUtils_androidKt;->unwrapIfInline(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 183
    .end local v10    # "it":Ljava/lang/Object;
    .end local v11    # "$i$a$-map-PreviewUtils_androidKt$getPreviewProviderParameters$1":I
    invoke-interface {v5, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 184
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v5, Ljava/util/List;

    .line 181
    nop

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    check-cast v5, Ljava/util/Collection;

    .line 64
    move-object v3, v5

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 185
    .local v4, "$i$f$toTypedArray":I
    nop

    .line 186
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v5, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 62
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    return-object v0

    .line 54
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "params":Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    const-string v1, "PreviewParameterProvider constructor can not have parameters"

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "parameterProviderClass":Ljava/lang/Class;
    .end local p1    # "parameterProviderIndex":I
    throw v0
    :try_end_0
    .catch Lkotlin/jvm/KotlinReflectionNotSupportedError; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .restart local p0    # "parameterProviderClass":Ljava/lang/Class;
    .restart local p1    # "parameterProviderIndex":I
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lkotlin/jvm/KotlinReflectionNotSupportedError;
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 68
    nop

    .line 67
    const-string v2, "Deploying Compose Previews with PreviewParameterProvider arguments requires adding a dependency to the kotlin-reflect library.\nConsider adding \'debugImplementation \"org.jetbrains.kotlin:kotlin-reflect:$kotlin_version\"\' to the module\'s build.gradle."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    .end local v0    # "e":Lkotlin/jvm/KotlinReflectionNotSupportedError;
    :cond_8
    const/4 v1, 0x0

    .line 187
    .local v1, "$i$f$emptyArray":I
    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    .end local v1    # "$i$f$emptyArray":I
    return-object v0
.end method

.method private static final toArray(Lkotlin/sequences/Sequence;I)[Ljava/lang/Object;
    .locals 4
    .param p0, "$this$toArray"    # Lkotlin/sequences/Sequence;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Ljava/lang/Object;",
            ">;I)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 139
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 140
    .local v0, "iterator":Ljava/util/Iterator;
    new-array v1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static final unwrapIfInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "classToCheck"    # Ljava/lang/Object;

    .line 90
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .local v0, "$this$any$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 188
    .local v1, "$i$f$any":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v0, v4

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it":Ljava/lang/annotation/Annotation;
    const/4 v8, 0x0

    .line 90
    .local v8, "$i$a$-any-PreviewUtils_androidKt$unwrapIfInline$1":I
    instance-of v7, v7, Lkotlin/jvm/JvmInline;

    .line 188
    .end local v7    # "it":Ljava/lang/annotation/Annotation;
    .end local v8    # "$i$a$-any-PreviewUtils_androidKt$unwrapIfInline$1":I
    if-eqz v7, :cond_0

    move v0, v5

    goto :goto_1

    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    :cond_1
    move v0, v3

    .line 90
    .end local v0    # "$this$any$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$any":I
    :goto_1
    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 93
    nop

    .local v0, "$this$first$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 190
    .local v1, "$i$f$first":I
    array-length v2, v0

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v6, v4

    .local v6, "it":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 93
    .local v7, "$i$a$-first-PreviewUtils_androidKt$unwrapIfInline$fieldName$1":I
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    .line 190
    .end local v6    # "it":Ljava/lang/reflect/Field;
    .end local v7    # "$i$a$-first-PreviewUtils_androidKt$unwrapIfInline$fieldName$1":I
    if-eqz v6, :cond_2

    .line 94
    .end local v0    # "$this$first$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$first":I
    .end local v4    # "element$iv":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 92
    nop

    .line 95
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 96
    move-object v2, v1

    .line 192
    .local v2, "it":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 96
    .local v3, "$i$a$-also-PreviewUtils_androidKt$unwrapIfInline$2":I
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 97
    .end local v2    # "it":Ljava/lang/reflect/Field;
    .end local v3    # "$i$a$-also-PreviewUtils_androidKt$unwrapIfInline$2":I
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    return-object v1

    .line 190
    .local v0, "$this$first$iv":[Ljava/lang/Object;
    .restart local v1    # "$i$f$first":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 191
    :cond_3
    new-instance v2, Ljava/util/NoSuchElementException;

    const-string v3, "Array contains no element matching the predicate."

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v0    # "$this$first$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$first":I
    :cond_4
    return-object p0
.end method
