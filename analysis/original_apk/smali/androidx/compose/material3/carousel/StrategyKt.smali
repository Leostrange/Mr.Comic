.class public final Landroidx/compose/material3/carousel/StrategyKt;
.super Ljava/lang/Object;
.source "Strategy.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strategy.kt\nandroidx/compose/material3/carousel/StrategyKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,509:1\n277#2,3:510\n69#2,4:513\n280#2,2:517\n74#2:519\n282#2:520\n*S KotlinDebug\n*F\n+ 1 Strategy.kt\nandroidx/compose/material3/carousel/StrategyKt\n*L\n488#1:510,3\n488#1:513,4\n488#1:517,2\n488#1:519\n488#1:520\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0001\u001a \u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0005H\u0001\u001a0\u0010\u0000\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "lerp",
        "Landroidx/compose/material3/carousel/Keyline;",
        "start",
        "end",
        "fraction",
        "",
        "Landroidx/compose/material3/carousel/KeylineList;",
        "from",
        "to",
        "outputMin",
        "outputMax",
        "inputMin",
        "inputMax",
        "value",
        "material3_release"
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
.method public static final synthetic access$lerp(FFFFF)F
    .locals 1
    .param p0, "outputMin"    # F
    .param p1, "outputMax"    # F
    .param p2, "inputMin"    # F
    .param p3, "inputMax"    # F
    .param p4, "value"    # F

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/carousel/StrategyKt;->lerp(FFFFF)F

    move-result v0

    return v0
.end method

.method private static final lerp(FFFFF)F
    .locals 2
    .param p0, "outputMin"    # F
    .param p1, "outputMax"    # F
    .param p2, "inputMin"    # F
    .param p3, "inputMax"    # F
    .param p4, "value"    # F

    .line 501
    cmpg-float v0, p4, p2

    if-gtz v0, :cond_0

    .line 502
    return p0

    .line 503
    :cond_0
    cmpl-float v0, p4, p3

    if-ltz v0, :cond_1

    .line 504
    return p1

    .line 507
    :cond_1
    sub-float v0, p4, p2

    sub-float v1, p3, p2

    div-float/2addr v0, v1

    invoke-static {p0, p1, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static final lerp(Landroidx/compose/material3/carousel/Keyline;Landroidx/compose/material3/carousel/Keyline;F)Landroidx/compose/material3/carousel/Keyline;
    .locals 9
    .param p0, "start"    # Landroidx/compose/material3/carousel/Keyline;
    .param p1, "end"    # Landroidx/compose/material3/carousel/Keyline;
    .param p2, "fraction"    # F

    .line 464
    new-instance v8, Landroidx/compose/material3/carousel/Keyline;

    .line 465
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v1

    .line 466
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Keyline;->getOffset()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Keyline;->getOffset()F

    move-result v2

    invoke-static {v0, v2, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v2

    .line 467
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v3

    invoke-static {v0, v3, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v3

    .line 468
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v4, p2, v0

    if-gez v4, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Keyline;->isFocal()Z

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Keyline;->isFocal()Z

    move-result v4

    .line 469
    :goto_0
    cmpg-float v5, p2, v0

    if-gez v5, :cond_1

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Keyline;->isAnchor()Z

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Keyline;->isAnchor()Z

    move-result v5

    .line 470
    :goto_1
    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Keyline;->isPivot()Z

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Keyline;->isPivot()Z

    move-result v0

    :goto_2
    move v6, v0

    .line 471
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Keyline;->getCutoff()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Keyline;->getCutoff()F

    move-result v7

    invoke-static {v0, v7, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v7

    .line 464
    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/carousel/Keyline;-><init>(FFFZZZF)V

    return-object v8
.end method

.method public static final lerp(Landroidx/compose/material3/carousel/KeylineList;Landroidx/compose/material3/carousel/KeylineList;F)Landroidx/compose/material3/carousel/KeylineList;
    .locals 18
    .param p0, "from"    # Landroidx/compose/material3/carousel/KeylineList;
    .param p1, "to"    # Landroidx/compose/material3/carousel/KeylineList;
    .param p2, "fraction"    # F

    .line 488
    move-object/from16 v0, p0

    check-cast v0, Ljava/util/List;

    .local v0, "$this$fastMapIndexed$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 510
    .local v1, "$i$f$fastMapIndexed":I
    nop

    .line 511
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 512
    .local v2, "target$iv":Ljava/util/ArrayList;
    move-object v3, v0

    .local v3, "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 513
    .local v4, "$i$f$fastForEachIndexed":I
    nop

    .line 514
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_0

    .line 515
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 516
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move v8, v5

    .local v8, "index$iv":I
    move-object v9, v7

    .local v9, "e$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 517
    .local v10, "$i$a$-fastForEachIndexed-ListUtilsKt$fastMapIndexed$2$iv":I
    move-object v11, v2

    check-cast v11, Ljava/util/Collection;

    move-object v12, v9

    check-cast v12, Landroidx/compose/material3/carousel/Keyline;

    .local v12, "k":Landroidx/compose/material3/carousel/Keyline;
    move v13, v8

    .local v13, "i":I
    const/4 v14, 0x0

    .line 489
    .local v14, "$i$a$-fastMapIndexed-StrategyKt$lerp$interpolatedKeylines$1":I
    move-object/from16 v15, p1

    move-object/from16 v16, v0

    .end local v0    # "$this$fastMapIndexed$iv":Ljava/util/List;
    .local v16, "$this$fastMapIndexed$iv":Ljava/util/List;
    invoke-virtual {v15, v13}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v0

    move/from16 v17, v1

    move/from16 v1, p2

    .end local v1    # "$i$f$fastMapIndexed":I
    .local v17, "$i$f$fastMapIndexed":I
    invoke-static {v12, v0, v1}, Landroidx/compose/material3/carousel/StrategyKt;->lerp(Landroidx/compose/material3/carousel/Keyline;Landroidx/compose/material3/carousel/Keyline;F)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v0

    .line 517
    .end local v12    # "k":Landroidx/compose/material3/carousel/Keyline;
    .end local v13    # "i":I
    .end local v14    # "$i$a$-fastMapIndexed-StrategyKt$lerp$interpolatedKeylines$1":I
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 518
    nop

    .line 516
    .end local v8    # "index$iv":I
    .end local v9    # "e$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEachIndexed-ListUtilsKt$fastMapIndexed$2$iv":I
    nop

    .line 514
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    goto :goto_0

    .end local v16    # "$this$fastMapIndexed$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastMapIndexed":I
    .restart local v0    # "$this$fastMapIndexed$iv":Ljava/util/List;
    .restart local v1    # "$i$f$fastMapIndexed":I
    :cond_0
    move-object/from16 v16, v0

    .line 519
    .end local v0    # "$this$fastMapIndexed$iv":Ljava/util/List;
    .end local v5    # "index$iv$iv":I
    .restart local v16    # "$this$fastMapIndexed$iv":Ljava/util/List;
    nop

    .line 520
    .end local v3    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEachIndexed":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 488
    .end local v1    # "$i$f$fastMapIndexed":I
    .end local v2    # "target$iv":Ljava/util/ArrayList;
    .end local v16    # "$this$fastMapIndexed$iv":Ljava/util/List;
    nop

    .line 491
    .local v0, "interpolatedKeylines":Ljava/util/List;
    new-instance v2, Landroidx/compose/material3/carousel/KeylineList;

    invoke-direct {v2, v0}, Landroidx/compose/material3/carousel/KeylineList;-><init>(Ljava/util/List;)V

    return-object v2
.end method
