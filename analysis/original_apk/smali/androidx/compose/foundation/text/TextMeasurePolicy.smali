.class final Landroidx/compose/foundation/text/TextMeasurePolicy;
.super Ljava/lang/Object;
.source "BasicText.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicText.kt\nandroidx/compose/foundation/text/TextMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,447:1\n298#2,3:448\n69#2,4:451\n301#2:455\n302#2:457\n74#2:458\n303#2:459\n1#3:456\n*S KotlinDebug\n*F\n+ 1 BasicText.kt\nandroidx/compose/foundation/text/TextMeasurePolicy\n*L\n373#1:448,3\n373#1:451,4\n373#1:455\n373#1:457\n373#1:458\n373#1:459\n373#1:456\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00040\u0003\u00a2\u0006\u0002\u0010\u0006J,\u0010\u0007\u001a\u00020\u0008*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0002\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/foundation/text/TextMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "placements",
        "Lkotlin/Function0;",
        "",
        "Landroidx/compose/ui/geometry/Rect;",
        "(Lkotlin/jvm/functions/Function0;)V",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;",
        "foundation_release"
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
.field private final placements:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "placements"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;>;)V"
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Landroidx/compose/foundation/text/TextMeasurePolicy;->placements:Lkotlin/jvm/functions/Function0;

    .line 366
    return-void
.end method


# virtual methods
.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 27
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "constraints"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/text/TextMeasurePolicy;->placements:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .local v1, "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 448
    .local v3, "$i$f$fastMapIndexedNotNull":I
    nop

    .line 449
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 450
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v5, v1

    .local v5, "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 451
    .local v6, "$i$f$fastForEachIndexed":I
    nop

    .line 452
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_2

    .line 453
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 454
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move v10, v7

    .local v10, "index$iv":I
    move-object v11, v9

    .local v11, "e$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 455
    .local v12, "$i$a$-fastForEachIndexed-ListUtilsKt$fastMapIndexedNotNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/geometry/Rect;

    .local v13, "rect":Landroidx/compose/ui/geometry/Rect;
    move v14, v10

    .local v14, "index":I
    const/4 v15, 0x0

    .line 376
    .local v15, "$i$a$-fastMapIndexedNotNull-TextMeasurePolicy$measure$toPlace$1":I
    if-eqz v13, :cond_0

    move-object/from16 v16, v13

    .local v16, "it":Landroidx/compose/ui/geometry/Rect;
    const/16 v17, 0x0

    .line 377
    .local v17, "$i$a$-let-TextMeasurePolicy$measure$toPlace$1$1":I
    new-instance v2, Lkotlin/Pair;

    .line 378
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 379
    const/16 v18, 0x0

    .line 380
    move-object/from16 v24, v1

    .end local v1    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .local v24, "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v1

    move-object/from16 v25, v5

    move/from16 v26, v6

    .end local v5    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEachIndexed":I
    .local v25, "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .local v26, "$i$f$fastForEachIndexed":I
    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v1, v5

    float-to-int v1, v1

    .line 379
    const/16 v20, 0x0

    .line 381
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v5, v5

    .line 379
    const/16 v22, 0x5

    const/16 v23, 0x0

    move/from16 v19, v1

    move/from16 v21, v5

    invoke-static/range {v18 .. v23}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v5

    .line 378
    invoke-interface {v0, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    .line 384
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v5

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    invoke-static {v1, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v1

    .line 377
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    .end local v16    # "it":Landroidx/compose/ui/geometry/Rect;
    .end local v17    # "$i$a$-let-TextMeasurePolicy$measure$toPlace$1$1":I
    goto :goto_1

    .end local v24    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .end local v25    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v26    # "$i$f$fastForEachIndexed":I
    .restart local v1    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .restart local v5    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastForEachIndexed":I
    :cond_0
    move-object/from16 v24, v1

    move-object/from16 v25, v5

    move/from16 v26, v6

    .end local v1    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .end local v5    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEachIndexed":I
    .restart local v24    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .restart local v25    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .restart local v26    # "$i$f$fastForEachIndexed":I
    const/4 v2, 0x0

    .line 455
    .end local v13    # "rect":Landroidx/compose/ui/geometry/Rect;
    .end local v14    # "index":I
    .end local v15    # "$i$a$-fastMapIndexedNotNull-TextMeasurePolicy$measure$toPlace$1":I
    :goto_1
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 456
    .local v0, "it$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 455
    .local v1, "$i$a$-let-ListUtilsKt$fastMapIndexedNotNull$2$1$iv":I
    move-object v2, v4

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-ListUtilsKt$fastMapIndexedNotNull$2$1$iv":I
    :cond_1
    nop

    .line 454
    .end local v10    # "index$iv":I
    .end local v11    # "e$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEachIndexed-ListUtilsKt$fastMapIndexedNotNull$2$iv":I
    nop

    .line 452
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v5, v25

    move/from16 v6, v26

    goto/16 :goto_0

    .end local v24    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .end local v25    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v26    # "$i$f$fastForEachIndexed":I
    .local v1, "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .restart local v5    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastForEachIndexed":I
    :cond_2
    move-object/from16 v24, v1

    move-object/from16 v25, v5

    move/from16 v26, v6

    .line 458
    .end local v1    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .end local v5    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEachIndexed":I
    .end local v7    # "index$iv$iv":I
    .restart local v24    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .restart local v25    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .restart local v26    # "$i$f$fastForEachIndexed":I
    nop

    .line 459
    .end local v25    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v26    # "$i$f$fastForEachIndexed":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .end local v3    # "$i$f$fastMapIndexedNotNull":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    .end local v24    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    goto :goto_2

    .line 373
    :cond_3
    const/4 v2, 0x0

    :goto_2
    move-object v0, v2

    .line 388
    .local v0, "toPlace":Ljava/util/List;
    nop

    .line 389
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    .line 390
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    .line 388
    const/4 v4, 0x0

    new-instance v1, Landroidx/compose/foundation/text/TextMeasurePolicy$measure$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/text/TextMeasurePolicy$measure$1;-><init>(Ljava/util/List;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1
.end method
