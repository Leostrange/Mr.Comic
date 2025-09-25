.class public final Landroidx/compose/runtime/collection/IdentityArraySetKt;
.super Ljava/lang/Object;
.source "IdentityArraySet.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdentityArraySet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySetKt\n+ 2 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySet\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,402:1\n108#2,7:403\n1855#3,2:410\n*S KotlinDebug\n*F\n+ 1 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySetKt\n*L\n397#1:403,7\n399#1:410,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a1\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u0006H\u0080\u0008\u00a8\u0006\u0007"
    }
    d2 = {
        "fastForEach",
        "",
        "T",
        "",
        "",
        "block",
        "Lkotlin/Function1;",
        "runtime_release"
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
.method public static final fastForEach(Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p0, "$this$fastForEach"    # Ljava/util/Set;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 396
    .local v0, "$i$f$fastForEach":I
    instance-of v1, p0, Landroidx/compose/runtime/collection/IdentityArraySet;

    if-eqz v1, :cond_1

    .line 397
    move-object v1, p0

    check-cast v1, Landroidx/compose/runtime/collection/IdentityArraySet;

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    const/4 v2, 0x0

    .line 403
    .local v2, "$i$f$fastForEach":I
    nop

    .line 404
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v3

    .line 405
    .local v3, "values$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i$iv":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 407
    aget-object v6, v3, v4

    const-string/jumbo v7, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 409
    .end local v4    # "i$iv":I
    :cond_0
    nop

    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v2    # "$i$f$fastForEach":I
    .end local v3    # "values$iv":[Ljava/lang/Object;
    goto :goto_2

    .line 399
    :cond_1
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 410
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 411
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 401
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    :goto_2
    return-void
.end method
