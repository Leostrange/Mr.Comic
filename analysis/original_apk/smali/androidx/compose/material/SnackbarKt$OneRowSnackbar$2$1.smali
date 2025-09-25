.class final Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$1;
.super Ljava/lang/Object;
.source "Snackbar.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SnackbarKt;->OneRowSnackbar(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnackbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snackbar.kt\nandroidx/compose/material/SnackbarKt$OneRowSnackbar$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,366:1\n544#2,2:367\n33#2,6:369\n546#2:375\n544#2,2:376\n33#2,6:378\n546#2:384\n1#3:385\n*S KotlinDebug\n*F\n+ 1 Snackbar.kt\nandroidx/compose/material/SnackbarKt$OneRowSnackbar$2$1\n*L\n309#1:367,2\n309#1:369,6\n309#1:375\n314#1:376,2\n314#1:378,6\n314#1:384\n*E\n"
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
.field final synthetic $actionTag:Ljava/lang/String;

.field final synthetic $textTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$1;->$actionTag:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$1;->$textTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 23
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

    .line 309
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-object v1, v0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$1;->$actionTag:Ljava/lang/String;

    move-object/from16 v2, p2

    .local v2, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 367
    .local v3, "$i$f$fastFirst":I
    nop

    .line 368
    move-object v4, v2

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 369
    .local v5, "$i$f$fastForEach":I
    nop

    .line 370
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    const-string v9, "Collection contains no element matching the predicate."

    if-ge v6, v7, :cond_a

    .line 371
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 372
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 368
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .local v13, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v14, 0x0

    .line 309
    .local v14, "$i$a$-fastFirst-SnackbarKt$OneRowSnackbar$2$1$buttonPlaceable$1":I
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 368
    .end local v13    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v14    # "$i$a$-fastFirst-SnackbarKt$OneRowSnackbar$2$1$buttonPlaceable$1":I
    if-eqz v13, :cond_9

    .line 375
    .end local v2    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirst":I
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    .end local v6    # "index$iv$iv":I
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v1, v11

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 310
    move-wide/from16 v6, p3

    invoke-interface {v1, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    .line 309
    move-object v5, v1

    .line 312
    .local v5, "buttonPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Landroidx/compose/material/SnackbarKt;->access$getTextEndExtraSpacing$p()F

    move-result v2

    invoke-interface {v8, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 313
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v13

    .line 311
    nop

    .line 314
    .local v13, "textMaxWidth":I
    iget-object v1, v0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$1;->$textTag:Ljava/lang/String;

    move-object/from16 v2, p2

    .restart local v2    # "$this$fastFirst$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 376
    .restart local v3    # "$i$f$fastFirst":I
    nop

    .line 377
    move-object v4, v2

    .restart local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 378
    .local v10, "$i$f$fastForEach":I
    nop

    .line 379
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    :goto_1
    if-ge v11, v12, :cond_8

    .line 380
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 381
    .local v14, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 377
    .local v16, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object/from16 v17, v15

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    .local v17, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v18, 0x0

    .line 314
    .local v18, "$i$a$-fastFirst-SnackbarKt$OneRowSnackbar$2$1$textPlaceable$1":I
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 377
    .end local v17    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v18    # "$i$a$-fastFirst-SnackbarKt$OneRowSnackbar$2$1$textPlaceable$1":I
    if-eqz v0, :cond_7

    .line 384
    .end local v2    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirst":I
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    .end local v11    # "index$iv$iv":I
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v0, v15

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 315
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x9

    const/16 v17, 0x0

    move-wide/from16 v10, p3

    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 314
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    .line 318
    .local v0, "textPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v9

    .line 319
    .local v9, "firstTextBaseline":I
    const/high16 v1, -0x80000000

    const/4 v3, 0x1

    if-eq v9, v1, :cond_0

    move v4, v3

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_2
    const-string/jumbo v10, "No baselines for text"

    if-eqz v4, :cond_6

    .line 320
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v0, v4}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v11

    .line 321
    .local v11, "lastTextBaseline":I
    if-eq v11, v1, :cond_1

    move v4, v3

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    .line 322
    if-ne v9, v11, :cond_2

    goto :goto_4

    :cond_2
    const/4 v3, 0x0

    :goto_4
    move v10, v3

    .line 323
    .local v10, "isOneLine":Z
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    sub-int v12, v3, v4

    .line 325
    .local v12, "buttonPlaceX":I
    const/4 v3, 0x0

    .line 326
    .local v3, "textPlaceY":I
    const/4 v4, 0x0

    .line 327
    .local v4, "containerHeight":I
    const/4 v14, 0x0

    .line 328
    .local v14, "buttonPlaceY":I
    if-eqz v10, :cond_4

    .line 329
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->access$getSnackbarMinHeightOneLine$p()F

    move-result v15

    invoke-interface {v8, v15}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v15

    .line 330
    .local v15, "minContainerHeight":I
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    .line 331
    .local v2, "contentHeight":I
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 332
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v17

    sub-int v17, v4, v17

    div-int/lit8 v17, v17, 0x2

    .line 333
    .end local v3    # "textPlaceY":I
    .local v17, "textPlaceY":I
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v5, v3}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v3

    .line 334
    .local v3, "buttonBaseline":I
    move/from16 v18, v3

    .local v18, "it":I
    const/16 v19, 0x0

    .line 335
    .local v19, "$i$a$-let-SnackbarKt$OneRowSnackbar$2$1$3":I
    move/from16 v20, v2

    move/from16 v2, v18

    .end local v18    # "it":I
    .local v2, "it":I
    .local v20, "contentHeight":I
    if-eq v2, v1, :cond_3

    .line 336
    add-int v1, v17, v9

    sub-int/2addr v1, v2

    move/from16 v16, v1

    goto :goto_5

    .line 338
    :cond_3
    const/16 v16, 0x0

    .line 335
    :goto_5
    nop

    .line 334
    .end local v2    # "it":I
    .end local v19    # "$i$a$-let-SnackbarKt$OneRowSnackbar$2$1$3":I
    move/from16 v1, v16

    move/from16 v20, v1

    move/from16 v21, v4

    move/from16 v22, v17

    .end local v3    # "buttonBaseline":I
    .end local v14    # "buttonPlaceY":I
    .end local v15    # "minContainerHeight":I
    .end local v20    # "contentHeight":I
    .local v1, "buttonPlaceY":I
    goto :goto_6

    .line 342
    .end local v1    # "buttonPlaceY":I
    .end local v17    # "textPlaceY":I
    .local v3, "textPlaceY":I
    .restart local v14    # "buttonPlaceY":I
    :cond_4
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->access$getHeightToFirstLine$p()F

    move-result v1

    invoke-interface {v8, v1}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    .line 343
    .local v1, "baselineOffset":I
    sub-int v17, v1, v9

    .line 344
    .end local v3    # "textPlaceY":I
    .restart local v17    # "textPlaceY":I
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->access$getSnackbarMinHeightTwoLines$p()F

    move-result v2

    invoke-interface {v8, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    .line 345
    .local v2, "minContainerHeight":I
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    add-int v3, v17, v3

    .line 346
    .local v3, "contentHeight":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 347
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v15

    sub-int v15, v4, v15

    div-int/lit8 v14, v15, 0x2

    move/from16 v21, v4

    move/from16 v20, v14

    move/from16 v22, v17

    .line 350
    .end local v1    # "baselineOffset":I
    .end local v2    # "minContainerHeight":I
    .end local v3    # "contentHeight":I
    .end local v4    # "containerHeight":I
    .end local v14    # "buttonPlaceY":I
    .end local v17    # "textPlaceY":I
    .local v20, "buttonPlaceY":I
    .local v21, "containerHeight":I
    .local v22, "textPlaceY":I
    :goto_6
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    const/4 v4, 0x0

    new-instance v1, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$1$4;

    move-object v14, v1

    move-object v15, v0

    move/from16 v16, v22

    move-object/from16 v17, v5

    move/from16 v18, v12

    move/from16 v19, v20

    invoke-direct/range {v14 .. v19}, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$1$4;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;II)V

    move-object v14, v1

    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move/from16 v3, v21

    .end local v5    # "buttonPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v17, "buttonPlaceable":Landroidx/compose/ui/layout/Placeable;
    move-object v5, v14

    move v6, v15

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1

    .line 385
    .end local v10    # "isOneLine":Z
    .end local v12    # "buttonPlaceX":I
    .end local v17    # "buttonPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v20    # "buttonPlaceY":I
    .end local v21    # "containerHeight":I
    .end local v22    # "textPlaceY":I
    .restart local v5    # "buttonPlaceable":Landroidx/compose/ui/layout/Placeable;
    :cond_5
    const/4 v1, 0x0

    .line 321
    .local v1, "$i$a$-require-SnackbarKt$OneRowSnackbar$2$1$2":I
    nop

    .end local v1    # "$i$a$-require-SnackbarKt$OneRowSnackbar$2$1$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    .end local v11    # "lastTextBaseline":I
    :cond_6
    const/4 v1, 0x0

    .line 319
    .local v1, "$i$a$-require-SnackbarKt$OneRowSnackbar$2$1$1":I
    nop

    .end local v1    # "$i$a$-require-SnackbarKt$OneRowSnackbar$2$1$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    .end local v0    # "textPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v9    # "firstTextBaseline":I
    .local v2, "$this$fastFirst$iv":Ljava/util/List;
    .local v3, "$i$f$fastFirst":I
    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v10, "$i$f$fastForEach":I
    .local v11, "index$iv$iv":I
    .local v14, "item$iv$iv":Ljava/lang/Object;
    .local v15, "it$iv":Ljava/lang/Object;
    .restart local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    :cond_7
    move-object/from16 v17, v5

    .line 381
    .end local v5    # "buttonPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .restart local v17    # "buttonPlaceable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 379
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v6, p3

    goto/16 :goto_1

    .line 383
    .end local v11    # "index$iv$iv":I
    .end local v17    # "buttonPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v5    # "buttonPlaceable":Landroidx/compose/ui/layout/Placeable;
    :cond_8
    nop

    .line 384
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v9}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    .end local v13    # "textMaxWidth":I
    .restart local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v5, "$i$f$fastForEach":I
    .restart local v6    # "index$iv$iv":I
    .local v10, "item$iv$iv":Ljava/lang/Object;
    :cond_9
    nop

    .line 370
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 374
    .end local v6    # "index$iv$iv":I
    :cond_a
    nop

    .line 375
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v9}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
