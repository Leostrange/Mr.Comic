.class final Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;
.super Ljava/lang/Object;
.source "NavigationRail.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/NavigationRailKt;->NavigationRailItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationRail.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,474:1\n544#2,2:475\n33#2,6:477\n546#2:483\n544#2,2:484\n33#2,6:486\n546#2:492\n*S KotlinDebug\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1\n*L\n343#1:475,2\n343#1:477,6\n343#1:483\n346#1:484,2\n346#1:486,6\n346#1:492\n*E\n"
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
.field final synthetic $iconPositionAnimationProgress:F

.field final synthetic $label:Lkotlin/jvm/functions/Function2;
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
.method constructor <init>(Lkotlin/jvm/functions/Function2;F)V
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
            ">;F)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;->$label:Lkotlin/jvm/functions/Function2;

    iput p2, p0, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;->$iconPositionAnimationProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20
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

    .line 343
    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-object/from16 v1, p2

    .local v1, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 475
    .local v2, "$i$f$fastFirst":I
    nop

    .line 476
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 477
    .local v4, "$i$f$fastForEach":I
    nop

    .line 478
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    const-string v7, "Collection contains no element matching the predicate."

    if-ge v5, v6, :cond_5

    .line 479
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 480
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v8

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 476
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .local v13, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v14, 0x0

    .line 343
    .local v14, "$i$a$-fastFirst-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$iconPlaceable$1":I
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .local v16, "$this$fastFirst$iv":Ljava/util/List;
    const-string/jumbo v1, "icon"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 476
    .end local v13    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v14    # "$i$a$-fastFirst-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$iconPlaceable$1":I
    if-eqz v1, :cond_4

    .line 483
    .end local v2    # "$i$f$fastFirst":I
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "index$iv$iv":I
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    move-object v1, v11

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 343
    invoke-interface {v1, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v11

    .line 345
    .local v11, "iconPlaceable":Landroidx/compose/ui/layout/Placeable;
    iget-object v1, v0, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;->$label:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_2

    move-object v12, v1

    .local v12, "it":Lkotlin/jvm/functions/Function2;
    const/4 v13, 0x0

    .line 346
    .local v13, "$i$a$-let-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$labelPlaceable$1":I
    move-object/from16 v1, p2

    .restart local v1    # "$this$fastFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 484
    .restart local v2    # "$i$f$fastFirst":I
    nop

    .line 485
    move-object v3, v1

    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 486
    .restart local v4    # "$i$f$fastForEach":I
    nop

    .line 487
    const/4 v5, 0x0

    .restart local v5    # "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_1

    .line 488
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 489
    .restart local v8    # "item$iv$iv":Ljava/lang/Object;
    move-object v14, v8

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 485
    .local v15, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object/from16 v16, v14

    check-cast v16, Landroidx/compose/ui/layout/Measurable;

    .local v16, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v17, 0x0

    .line 346
    .local v17, "$i$a$-fastFirst-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$labelPlaceable$1$1":I
    move-object/from16 v18, v1

    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .local v18, "$this$fastFirst$iv":Ljava/util/List;
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v19, v2

    .end local v2    # "$i$f$fastFirst":I
    .local v19, "$i$f$fastFirst":I
    const-string/jumbo v2, "label"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 485
    .end local v16    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v17    # "$i$a$-fastFirst-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$labelPlaceable$1$1":I
    if-eqz v1, :cond_0

    .line 492
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "index$iv$iv":I
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v18    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirst":I
    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 349
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    move-wide/from16 v1, p3

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 346
    invoke-interface {v14, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    .line 345
    .end local v12    # "it":Lkotlin/jvm/functions/Function2;
    .end local v13    # "$i$a$-let-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$labelPlaceable$1":I
    goto :goto_2

    .line 489
    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v4    # "$i$f$fastForEach":I
    .restart local v5    # "index$iv$iv":I
    .restart local v8    # "item$iv$iv":Ljava/lang/Object;
    .restart local v12    # "it":Lkotlin/jvm/functions/Function2;
    .restart local v13    # "$i$a$-let-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$labelPlaceable$1":I
    .restart local v18    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v19    # "$i$f$fastFirst":I
    :cond_0
    nop

    .line 487
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v19

    goto :goto_1

    .end local v18    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirst":I
    .restart local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v2    # "$i$f$fastFirst":I
    :cond_1
    move-object/from16 v18, v1

    .line 491
    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v5    # "index$iv$iv":I
    .restart local v18    # "$this$fastFirst$iv":Ljava/util/List;
    nop

    .line 492
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, v7}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    .end local v2    # "$i$f$fastFirst":I
    .end local v12    # "it":Lkotlin/jvm/functions/Function2;
    .end local v13    # "$i$a$-let-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$labelPlaceable$1":I
    .end local v18    # "$this$fastFirst$iv":Ljava/util/List;
    :cond_2
    const/4 v1, 0x0

    :goto_2
    move-object v2, v1

    .line 354
    .local v2, "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    iget-object v1, v0, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;->$label:Lkotlin/jvm/functions/Function2;

    if-nez v1, :cond_3

    .line 355
    move-object/from16 v13, p1

    invoke-static {v13, v11, v9, v10}, Landroidx/compose/material/NavigationRailKt;->access$placeIcon-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    goto :goto_3

    .line 357
    :cond_3
    move-object/from16 v13, p1

    .line 358
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 359
    nop

    .line 360
    nop

    .line 361
    iget v6, v0, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;->$iconPositionAnimationProgress:F

    .line 357
    move-object/from16 v1, p1

    move-object v3, v11

    move-wide/from16 v4, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/material/NavigationRailKt;->access$placeLabelAndIcon-DIyivk0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    .line 354
    :goto_3
    return-object v1

    .line 476
    .local v2, "$i$f$fastFirst":I
    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v4    # "$i$f$fastForEach":I
    .restart local v5    # "index$iv$iv":I
    .restart local v8    # "item$iv$iv":Ljava/lang/Object;
    .local v11, "it$iv":Ljava/lang/Object;
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .local v16, "$this$fastFirst$iv":Ljava/util/List;
    :cond_4
    move-object/from16 v13, p1

    .line 480
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    nop

    .line 478
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_0

    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v1    # "$this$fastFirst$iv":Ljava/util/List;
    :cond_5
    move-object/from16 v16, v1

    .line 482
    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v5    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirst$iv":Ljava/util/List;
    nop

    .line 483
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, v7}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
