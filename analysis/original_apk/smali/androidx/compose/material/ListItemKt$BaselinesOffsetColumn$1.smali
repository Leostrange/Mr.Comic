.class final Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1;
.super Ljava/lang/Object;
.source "ListItem.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ListItemKt;->BaselinesOffsetColumn(Ljava/util/List;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListItem.kt\nandroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,436:1\n151#2,3:437\n33#2,4:440\n154#2,2:444\n38#2:446\n156#2:447\n256#2,3:448\n33#2,4:451\n259#2,2:455\n38#2:457\n261#2:458\n69#2,6:459\n*S KotlinDebug\n*F\n+ 1 ListItem.kt\nandroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1\n*L\n358#1:437,3\n358#1:440,4\n358#1:444,2\n358#1:446\n358#1:447\n360#1:448,3\n360#1:451,4\n360#1:455,2\n360#1:457\n360#1:458\n365#1:459,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;"
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
.field final synthetic $offsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1;->$offsets:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 21
    .param p1, "$this$Layout"    # Landroidx/compose/ui/layout/MeasureScope;
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

    .line 357
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-wide/from16 v0, p3

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v0

    .line 358
    .local v0, "childConstraints":J
    move-object/from16 v2, p2

    .local v2, "$this$fastMap$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 437
    .local v3, "$i$f$fastMap":I
    nop

    .line 438
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 439
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 440
    .local v6, "$i$f$fastForEach":I
    nop

    .line 441
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_0

    .line 442
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 443
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 444
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v12, v4

    check-cast v12, Ljava/util/Collection;

    move-object v13, v10

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .local v13, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v14, 0x0

    .line 358
    .local v14, "$i$a$-fastMap-ListItemKt$BaselinesOffsetColumn$1$placeables$1":I
    invoke-interface {v13, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v13

    .line 444
    .end local v13    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v14    # "$i$a$-fastMap-ListItemKt$BaselinesOffsetColumn$1$placeables$1":I
    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 445
    nop

    .line 443
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 441
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 446
    .end local v7    # "index$iv$iv":I
    :cond_0
    nop

    .line 447
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .line 358
    .end local v2    # "$this$fastMap$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastMap":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 360
    .local v2, "placeables":Ljava/util/List;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, "initial$iv":Ljava/lang/Object;
    move-object v5, v2

    .local v5, "$this$fastFold$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 448
    .local v6, "$i$f$fastFold":I
    nop

    .line 449
    const/4 v7, 0x0

    .local v7, "accumulator$iv":Ljava/lang/Object;
    move-object v7, v4

    .line 450
    move-object v8, v5

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 451
    .local v9, "$i$f$fastForEach":I
    nop

    .line 452
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_1
    if-ge v10, v11, :cond_1

    .line 453
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 454
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "e$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 455
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastFold$2$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/layout/Placeable;

    .local v15, "placeable":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v16

    .local v16, "maxWidth":I
    move/from16 v17, v16

    .end local v16    # "maxWidth":I
    .local v17, "maxWidth":I
    const/16 v16, 0x0

    .line 361
    .local v16, "$i$a$-fastFold-ListItemKt$BaselinesOffsetColumn$1$containerWidth$1":I
    invoke-virtual {v15}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    move-wide/from16 v18, v0

    move/from16 v0, v17

    .end local v17    # "maxWidth":I
    .local v0, "maxWidth":I
    .local v18, "childConstraints":J
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v0    # "maxWidth":I
    .end local v15    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v16    # "$i$a$-fastFold-ListItemKt$BaselinesOffsetColumn$1$containerWidth$1":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 455
    move-object v7, v0

    .line 456
    nop

    .line 454
    .end local v13    # "e$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastFold$2$iv":I
    nop

    .line 452
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v0, v18

    const/4 v3, 0x0

    goto :goto_1

    .end local v18    # "childConstraints":J
    .local v0, "childConstraints":J
    :cond_1
    move-wide/from16 v18, v0

    .line 457
    .end local v0    # "childConstraints":J
    .end local v10    # "index$iv$iv":I
    .restart local v18    # "childConstraints":J
    nop

    .line 458
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    nop

    .line 360
    .end local v4    # "initial$iv":Ljava/lang/Object;
    .end local v5    # "$this$fastFold$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastFold":I
    .end local v7    # "accumulator$iv":Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 363
    .local v0, "containerWidth":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/Integer;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v3

    .line 364
    .local v1, "y":[Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 365
    .local v3, "containerHeight":I
    move-object/from16 v10, p0

    iget-object v4, v10, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1;->$offsets:Ljava/util/List;

    move-object v5, v2

    .local v5, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 459
    .local v6, "$i$f$fastForEachIndexed":I
    nop

    .line 460
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    move v11, v3

    .end local v3    # "containerHeight":I
    .local v11, "containerHeight":I
    :goto_3
    if-ge v7, v8, :cond_4

    .line 461
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 462
    .local v3, "item$iv":Ljava/lang/Object;
    move-object v9, v3

    check-cast v9, Landroidx/compose/ui/layout/Placeable;

    .local v9, "placeable":Landroidx/compose/ui/layout/Placeable;
    move v12, v7

    .local v12, "index":I
    const/4 v13, 0x0

    .line 366
    .local v13, "$i$a$-fastForEachIndexed-ListItemKt$BaselinesOffsetColumn$1$1":I
    if-lez v12, :cond_3

    .line 367
    add-int/lit8 v14, v12, -0x1

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v14

    add-int/lit8 v15, v12, -0x1

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/layout/Placeable;

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v16

    move-object/from16 v17, v3

    .end local v3    # "item$iv":Ljava/lang/Object;
    .local v17, "item$iv":Ljava/lang/Object;
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v15, v3}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v3

    sub-int v3, v14, v3

    goto :goto_4

    .line 368
    .end local v17    # "item$iv":Ljava/lang/Object;
    .restart local v3    # "item$iv":Ljava/lang/Object;
    :cond_3
    move-object/from16 v17, v3

    .end local v3    # "item$iv":Ljava/lang/Object;
    .restart local v17    # "item$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 366
    :goto_4
    nop

    .line 369
    .local v3, "toPreviousBaseline":I
    nop

    .line 370
    nop

    .line 371
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v14}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v14

    move-object/from16 v15, p1

    invoke-interface {v15, v14}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v14

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v16

    move-object/from16 v20, v4

    move-object/from16 v4, v16

    check-cast v4, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v9, v4}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v4

    sub-int/2addr v14, v4

    sub-int/2addr v14, v3

    const/4 v4, 0x0

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 369
    nop

    .line 373
    .local v14, "topPadding":I
    add-int v16, v14, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v1, v12

    .line 374
    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v16

    add-int v16, v14, v16

    add-int v11, v11, v16

    .line 375
    nop

    .line 462
    .end local v3    # "toPreviousBaseline":I
    .end local v9    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v12    # "index":I
    .end local v13    # "$i$a$-fastForEachIndexed-ListItemKt$BaselinesOffsetColumn$1$1":I
    .end local v14    # "topPadding":I
    nop

    .line 460
    .end local v17    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v20

    goto :goto_3

    :cond_4
    move-object/from16 v15, p1

    .line 464
    .end local v7    # "index$iv":I
    nop

    .line 377
    .end local v5    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEachIndexed":I
    const/4 v6, 0x0

    new-instance v3, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1$2;

    invoke-direct {v3, v2, v1}, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1$2;-><init>(Ljava/util/List;[Ljava/lang/Integer;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move v4, v0

    move v5, v11

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v3

    return-object v3
.end method
