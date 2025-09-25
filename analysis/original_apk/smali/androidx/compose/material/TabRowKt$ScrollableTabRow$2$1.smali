.class final Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$ScrollableTabRow$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,521:1\n151#2,3:522\n33#2,4:525\n154#2,2:529\n38#2:531\n156#2:532\n33#2,6:533\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$ScrollableTabRow$2$1\n*L\n270#1:522,3\n270#1:525,4\n270#1:529,2\n270#1:531\n270#1:532\n274#1:533,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;"
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
.field final synthetic $divider:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $edgePadding:F

.field final synthetic $indicator:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scrollableTabData:Landroidx/compose/material/ScrollableTabData;

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabs:Lkotlin/jvm/functions/Function2;
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
.method constructor <init>(FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ScrollableTabData;ILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
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
            ">;",
            "Landroidx/compose/material/ScrollableTabData;",
            "I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$edgePadding:F

    iput-object p2, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$tabs:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$divider:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$scrollableTabData:Landroidx/compose/material/ScrollableTabData;

    iput p5, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$selectedTabIndex:I

    iput-object p6, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$indicator:Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 258
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 29
    .param p1, "$this$SubcomposeLayout"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p2, "constraints"    # J

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    invoke-static {}, Landroidx/compose/material/TabRowKt;->access$getScrollableTabRowMinimumTabWidth$p()F

    move-result v1

    invoke-interface {v13, v1}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->roundToPx-0680j_4(F)I

    move-result v14

    .line 266
    .local v14, "minTabWidth":I
    iget v1, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$edgePadding:F

    invoke-interface {v13, v1}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->roundToPx-0680j_4(F)I

    move-result v15

    .line 267
    .local v15, "padding":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-wide/from16 v2, p2

    move v4, v14

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v11

    .line 269
    .local v11, "tabConstraints":J
    sget-object v1, Landroidx/compose/material/TabSlots;->Tabs:Landroidx/compose/material/TabSlots;

    iget-object v2, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$tabs:Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v1, v2}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    .line 270
    nop

    .local v1, "$this$fastMap$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 522
    .local v2, "$i$f$fastMap":I
    nop

    .line 523
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 524
    .local v3, "target$iv":Ljava/util/ArrayList;
    move-object v4, v1

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 525
    .local v5, "$i$f$fastForEach":I
    nop

    .line 526
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_0

    .line 527
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 528
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 529
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object/from16 v16, v1

    .end local v1    # "$this$fastMap$iv":Ljava/util/List;
    .local v16, "$this$fastMap$iv":Ljava/util/List;
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    move/from16 v17, v2

    .end local v2    # "$i$f$fastMap":I
    .local v17, "$i$f$fastMap":I
    move-object v2, v9

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .local v2, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v18, 0x0

    .line 270
    .local v18, "$i$a$-fastMap-TabRowKt$ScrollableTabRow$2$1$tabPlaceables$1":I
    invoke-interface {v2, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 529
    .end local v2    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v18    # "$i$a$-fastMap-TabRowKt$ScrollableTabRow$2$1$tabPlaceables$1":I
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 530
    nop

    .line 528
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 526
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_0

    .end local v16    # "$this$fastMap$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastMap":I
    .restart local v1    # "$this$fastMap$iv":Ljava/util/List;
    .local v2, "$i$f$fastMap":I
    :cond_0
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 531
    .end local v1    # "$this$fastMap$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMap":I
    .end local v6    # "index$iv$iv":I
    .restart local v16    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v17    # "$i$f$fastMap":I
    nop

    .line 532
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    check-cast v3, Ljava/util/List;

    .line 270
    .end local v3    # "target$iv":Ljava/util/ArrayList;
    .end local v16    # "$this$fastMap$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastMap":I
    nop

    .line 269
    nop

    .line 272
    .local v3, "tabPlaceables":Ljava/util/List;
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v10, v1

    .local v10, "layoutWidth":Lkotlin/jvm/internal/Ref$IntRef;
    mul-int/lit8 v1, v15, 0x2

    iput v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 273
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v8, v1

    .line 274
    .local v8, "layoutHeight":Lkotlin/jvm/internal/Ref$IntRef;
    move-object v1, v3

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 533
    .local v2, "$i$f$fastForEach":I
    nop

    .line 534
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_1

    .line 535
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 536
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .local v7, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v9, 0x0

    .line 275
    .local v9, "$i$a$-fastForEach-TabRowKt$ScrollableTabRow$2$1$1":I
    move-object/from16 v16, v1

    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .local v16, "$this$fastForEach$iv":Ljava/util/List;
    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v17

    add-int v1, v1, v17

    iput v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 276
    iget v1, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move/from16 v17, v2

    .end local v2    # "$i$f$fastForEach":I
    .local v17, "$i$f$fastForEach":I
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 277
    nop

    .line 536
    .end local v7    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v9    # "$i$a$-fastForEach-TabRowKt$ScrollableTabRow$2$1$1":I
    nop

    .line 534
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_1

    .end local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastForEach":I
    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v2    # "$i$f$fastForEach":I
    :cond_1
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 538
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    .end local v4    # "index$iv":I
    .restart local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v17    # "$i$f$fastForEach":I
    nop

    .line 280
    .end local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastForEach":I
    move-object/from16 v18, v13

    check-cast v18, Landroidx/compose/ui/layout/MeasureScope;

    iget v9, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v7, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v21, 0x0

    new-instance v16, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;

    iget-object v5, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$divider:Lkotlin/jvm/functions/Function2;

    iget-object v6, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$scrollableTabData:Landroidx/compose/material/ScrollableTabData;

    iget v4, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$selectedTabIndex:I

    iget-object v2, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->$indicator:Lkotlin/jvm/functions/Function3;

    move-object/from16 v1, v16

    move-object/from16 v17, v2

    move v2, v15

    move/from16 v19, v4

    move-object/from16 v4, p1

    move/from16 v20, v7

    move/from16 v7, v19

    move-object/from16 v25, v8

    move/from16 v19, v9

    .end local v8    # "layoutHeight":Lkotlin/jvm/internal/Ref$IntRef;
    .local v25, "layoutHeight":Lkotlin/jvm/internal/Ref$IntRef;
    move-wide/from16 v8, p2

    move-object/from16 v26, v10

    .end local v10    # "layoutWidth":Lkotlin/jvm/internal/Ref$IntRef;
    .local v26, "layoutWidth":Lkotlin/jvm/internal/Ref$IntRef;
    move-wide/from16 v27, v11

    .end local v11    # "tabConstraints":J
    .local v27, "tabConstraints":J
    move-object/from16 v11, v25

    move-object/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;-><init>(ILjava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ScrollableTabData;IJLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function3;)V

    move-object/from16 v22, v16

    check-cast v22, Lkotlin/jvm/functions/Function1;

    const/16 v23, 0x4

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1
.end method
