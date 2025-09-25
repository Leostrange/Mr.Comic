.class final Landroidx/compose/material/TabKt$TabBaselineLayout$2$1;
.super Ljava/lang/Object;
.source "Tab.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabKt;->TabBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tab.kt\nandroidx/compose/material/TabKt$TabBaselineLayout$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,435:1\n544#2,2:436\n33#2,6:438\n546#2:444\n544#2,2:445\n33#2,6:447\n546#2:453\n*S KotlinDebug\n*F\n+ 1 Tab.kt\nandroidx/compose/material/TabKt$TabBaselineLayout$2$1\n*L\n319#1:436,2\n319#1:438,6\n319#1:444\n327#1:445,2\n327#1:447,6\n327#1:453\n*E\n"
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
.field final synthetic $icon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $text:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$1;->$text:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$1;->$icon:Lkotlin/jvm/functions/Function2;

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

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$1;->$text:Lkotlin/jvm/functions/Function2;

    const-string v2, "Collection contains no element matching the predicate."

    if-eqz v1, :cond_2

    .local v1, "it":Lkotlin/jvm/functions/Function2;
    const/4 v4, 0x0

    .line 319
    .local v4, "$i$a$-let-TabKt$TabBaselineLayout$2$1$textPlaceable$1":I
    move-object/from16 v5, p2

    .local v5, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 436
    .local v6, "$i$f$fastFirst":I
    nop

    .line 437
    move-object v7, v5

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 438
    .local v8, "$i$f$fastForEach":I
    nop

    .line 439
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_0
    if-ge v9, v10, :cond_1

    .line 440
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 441
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 437
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .local v14, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v15, 0x0

    .line 319
    .local v15, "$i$a$-fastFirst-TabKt$TabBaselineLayout$2$1$textPlaceable$1$1":I
    invoke-static {v14}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v1

    .end local v1    # "it":Lkotlin/jvm/functions/Function2;
    .local v16, "it":Lkotlin/jvm/functions/Function2;
    const-string/jumbo v1, "text"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 437
    .end local v14    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v15    # "$i$a$-fastFirst-TabKt$TabBaselineLayout$2$1$textPlaceable$1$1":I
    if-eqz v1, :cond_0

    .line 444
    .end local v5    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastFirst":I
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    .end local v9    # "index$iv$iv":I
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v1, v12

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 322
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xb

    const/4 v12, 0x0

    move-wide/from16 v5, p3

    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v5

    .line 319
    invoke-interface {v1, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    .line 318
    .end local v4    # "$i$a$-let-TabKt$TabBaselineLayout$2$1$textPlaceable$1":I
    .end local v16    # "it":Lkotlin/jvm/functions/Function2;
    goto :goto_1

    .line 441
    .restart local v4    # "$i$a$-let-TabKt$TabBaselineLayout$2$1$textPlaceable$1":I
    .restart local v5    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastFirst":I
    .restart local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v8    # "$i$f$fastForEach":I
    .restart local v9    # "index$iv$iv":I
    .restart local v11    # "item$iv$iv":Ljava/lang/Object;
    .restart local v16    # "it":Lkotlin/jvm/functions/Function2;
    :cond_0
    nop

    .line 439
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    goto :goto_0

    .end local v16    # "it":Lkotlin/jvm/functions/Function2;
    .restart local v1    # "it":Lkotlin/jvm/functions/Function2;
    :cond_1
    move-object/from16 v16, v1

    .line 443
    .end local v1    # "it":Lkotlin/jvm/functions/Function2;
    .end local v9    # "index$iv$iv":I
    .restart local v16    # "it":Lkotlin/jvm/functions/Function2;
    nop

    .line 444
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    .end local v4    # "$i$a$-let-TabKt$TabBaselineLayout$2$1$textPlaceable$1":I
    .end local v5    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastFirst":I
    .end local v16    # "it":Lkotlin/jvm/functions/Function2;
    :cond_2
    const/4 v1, 0x0

    .line 326
    .local v1, "textPlaceable":Landroidx/compose/ui/layout/Placeable;
    :goto_1
    iget-object v3, v0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$1;->$icon:Lkotlin/jvm/functions/Function2;

    if-eqz v3, :cond_5

    .local v3, "it":Lkotlin/jvm/functions/Function2;
    const/4 v4, 0x0

    .line 327
    .local v4, "$i$a$-let-TabKt$TabBaselineLayout$2$1$iconPlaceable$1":I
    move-object/from16 v5, p2

    .restart local v5    # "$this$fastFirst$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 445
    .restart local v6    # "$i$f$fastFirst":I
    nop

    .line 446
    move-object v7, v5

    .restart local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 447
    .restart local v8    # "$i$f$fastForEach":I
    nop

    .line 448
    const/4 v9, 0x0

    .restart local v9    # "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_2
    if-ge v9, v10, :cond_4

    .line 449
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 450
    .restart local v11    # "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 446
    .restart local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .restart local v14    # "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v15, 0x0

    .line 327
    .local v15, "$i$a$-fastFirst-TabKt$TabBaselineLayout$2$1$iconPlaceable$1$1":I
    invoke-static {v14}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v3

    .end local v3    # "it":Lkotlin/jvm/functions/Function2;
    .restart local v16    # "it":Lkotlin/jvm/functions/Function2;
    const-string/jumbo v3, "icon"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 446
    .end local v14    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v15    # "$i$a$-fastFirst-TabKt$TabBaselineLayout$2$1$iconPlaceable$1$1":I
    if-eqz v0, :cond_3

    .line 453
    .end local v5    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastFirst":I
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    .end local v9    # "index$iv$iv":I
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v0, v12

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 327
    move-wide/from16 v14, p3

    invoke-interface {v0, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    .line 326
    .end local v4    # "$i$a$-let-TabKt$TabBaselineLayout$2$1$iconPlaceable$1":I
    .end local v16    # "it":Lkotlin/jvm/functions/Function2;
    goto :goto_3

    .line 446
    .restart local v4    # "$i$a$-let-TabKt$TabBaselineLayout$2$1$iconPlaceable$1":I
    .restart local v5    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastFirst":I
    .restart local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v8    # "$i$f$fastForEach":I
    .restart local v9    # "index$iv$iv":I
    .restart local v11    # "item$iv$iv":Ljava/lang/Object;
    .restart local v12    # "it$iv":Ljava/lang/Object;
    .restart local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .restart local v16    # "it":Lkotlin/jvm/functions/Function2;
    :cond_3
    move-wide/from16 v14, p3

    .line 450
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    nop

    .line 448
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    goto :goto_2

    .line 452
    .end local v9    # "index$iv$iv":I
    .end local v16    # "it":Lkotlin/jvm/functions/Function2;
    .restart local v3    # "it":Lkotlin/jvm/functions/Function2;
    :cond_4
    nop

    .line 453
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    .end local v3    # "it":Lkotlin/jvm/functions/Function2;
    .end local v4    # "$i$a$-let-TabKt$TabBaselineLayout$2$1$iconPlaceable$1":I
    .end local v5    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastFirst":I
    :cond_5
    move-wide/from16 v14, p3

    const/4 v0, 0x0

    .line 330
    .local v0, "iconPlaceable":Landroidx/compose/ui/layout/Placeable;
    :goto_3
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    :cond_7
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 336
    .local v2, "tabWidth":I
    nop

    .line 332
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 333
    invoke-static {}, Landroidx/compose/material/TabKt;->access$getLargeTabHeight$p()F

    move-result v3

    goto :goto_5

    .line 335
    :cond_8
    invoke-static {}, Landroidx/compose/material/TabKt;->access$getSmallTabHeight$p()F

    move-result v3

    .line 336
    :goto_5
    move-object/from16 v11, p1

    invoke-interface {v11, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v8

    .line 332
    nop

    .line 338
    .local v8, "tabHeight":I
    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v1, v3}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v9, v3

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    .line 339
    .local v9, "firstBaseline":Ljava/lang/Integer;
    :goto_6
    if-eqz v1, :cond_a

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v1, v3}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v10, v3

    goto :goto_7

    :cond_a
    const/4 v10, 0x0

    .line 341
    .local v10, "lastBaseline":Ljava/lang/Integer;
    :goto_7
    const/16 v19, 0x0

    new-instance v12, Landroidx/compose/material/TabKt$TabBaselineLayout$2$1$1;

    move-object v3, v12

    move-object v4, v1

    move-object v5, v0

    move-object/from16 v6, p1

    move v7, v2

    invoke-direct/range {v3 .. v10}, Landroidx/compose/material/TabKt$TabBaselineLayout$2$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;IILjava/lang/Integer;Ljava/lang/Integer;)V

    move-object/from16 v20, v12

    check-cast v20, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object/from16 v16, p1

    move/from16 v17, v2

    move/from16 v18, v8

    invoke-static/range {v16 .. v22}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v3

    return-object v3
.end method
