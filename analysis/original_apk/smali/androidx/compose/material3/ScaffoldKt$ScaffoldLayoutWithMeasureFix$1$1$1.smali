.class final Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scaffold.kt\nandroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,598:1\n33#2,6:599\n33#2,6:605\n33#2,6:611\n33#2,6:617\n33#2,6:623\n*S KotlinDebug\n*F\n+ 1 Scaffold.kt\nandroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1\n*L\n309#1:599,6\n312#1:605,6\n315#1:611,6\n323#1:617,6\n328#1:623,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "invoke"
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
.field final synthetic $bodyContentPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $bottomBarHeight:Ljava/lang/Integer;

.field final synthetic $bottomBarPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

.field final synthetic $fabOffsetFromBottom:Ljava/lang/Integer;

.field final synthetic $fabPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $fabPlacement:Landroidx/compose/material3/FabPlacement;

.field final synthetic $layoutHeight:I

.field final synthetic $layoutWidth:I

.field final synthetic $snackbarOffsetFromBottom:I

.field final synthetic $snackbarPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $snackbarWidth:I

.field final synthetic $this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

.field final synthetic $topBarPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/compose/material3/FabPlacement;IILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Landroidx/compose/material3/FabPlacement;",
            "II",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "II",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$bodyContentPlaceables:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$topBarPlaceables:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$snackbarPlaceables:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$bottomBarPlaceables:Ljava/util/List;

    iput-object p5, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$fabPlacement:Landroidx/compose/material3/FabPlacement;

    iput p6, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$layoutWidth:I

    iput p7, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$snackbarWidth:I

    iput-object p8, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p9, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput p10, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$layoutHeight:I

    iput p11, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$snackbarOffsetFromBottom:I

    iput-object p12, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$bottomBarHeight:Ljava/lang/Integer;

    iput-object p13, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$fabPlaceables:Ljava/util/List;

    iput-object p14, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$fabOffsetFromBottom:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 306
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 21
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$bodyContentPlaceables:Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 599
    .local v2, "$i$f$fastForEach":I
    nop

    .line 600
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    .line 601
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 602
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v13, v5

    check-cast v13, Landroidx/compose/ui/layout/Placeable;

    .local v13, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v14, 0x0

    .line 310
    .local v14, "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$1":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v6, p1

    move-object v7, v13

    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 311
    nop

    .line 602
    .end local v13    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v14    # "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$1":I
    nop

    .line 600
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 604
    .end local v3    # "index$iv":I
    :cond_0
    nop

    .line 312
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    iget-object v1, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$topBarPlaceables:Ljava/util/List;

    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 605
    .restart local v2    # "$i$f$fastForEach":I
    nop

    .line 606
    const/4 v3, 0x0

    .restart local v3    # "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_1

    .line 607
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 608
    .restart local v5    # "item$iv":Ljava/lang/Object;
    move-object v13, v5

    check-cast v13, Landroidx/compose/ui/layout/Placeable;

    .restart local v13    # "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v14, 0x0

    .line 313
    .local v14, "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$2":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v6, p1

    move-object v7, v13

    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 314
    nop

    .line 608
    .end local v13    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v14    # "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$2":I
    nop

    .line 606
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 610
    .end local v3    # "index$iv":I
    :cond_1
    nop

    .line 315
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    iget-object v1, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$snackbarPlaceables:Ljava/util/List;

    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    iget v2, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$layoutWidth:I

    iget v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$snackbarWidth:I

    iget-object v4, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v5, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget v6, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$layoutHeight:I

    iget v7, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$snackbarOffsetFromBottom:I

    const/4 v8, 0x0

    .line 611
    .local v8, "$i$f$fastForEach":I
    nop

    .line 612
    const/4 v9, 0x0

    .local v9, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    :goto_2
    if-ge v9, v10, :cond_2

    .line 613
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 614
    .local v11, "item$iv":Ljava/lang/Object;
    move-object/from16 v19, v11

    check-cast v19, Landroidx/compose/ui/layout/Placeable;

    .local v19, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v20, 0x0

    .line 316
    .local v20, "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$3":I
    nop

    .line 317
    sub-int v12, v2, v3

    div-int/lit8 v12, v12, 0x2

    .line 318
    move-object v13, v5

    check-cast v13, Landroidx/compose/ui/unit/Density;

    invoke-interface {v5}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v14

    invoke-interface {v4, v13, v14}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v13

    .line 317
    add-int v14, v12, v13

    .line 319
    sub-int v15, v6, v7

    .line 316
    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object/from16 v12, p1

    move-object/from16 v13, v19

    invoke-static/range {v12 .. v18}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 321
    nop

    .line 614
    .end local v19    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v20    # "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$3":I
    nop

    .line 612
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 616
    .end local v9    # "index$iv":I
    :cond_2
    nop

    .line 323
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    iget-object v1, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$bottomBarPlaceables:Ljava/util/List;

    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    iget v2, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$layoutHeight:I

    iget-object v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$bottomBarHeight:Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 617
    .local v4, "$i$f$fastForEach":I
    nop

    .line 618
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    :goto_3
    if-ge v5, v6, :cond_4

    .line 619
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 620
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v15, v7

    check-cast v15, Landroidx/compose/ui/layout/Placeable;

    .local v15, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v16, 0x0

    .line 324
    .local v16, "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$4":I
    const/4 v10, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    sub-int v11, v2, v8

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move-object v9, v15

    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 325
    nop

    .line 620
    .end local v15    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v16    # "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$4":I
    nop

    .line 618
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 622
    .end local v5    # "index$iv":I
    :cond_4
    nop

    .line 327
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    iget-object v1, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$fabPlacement:Landroidx/compose/material3/FabPlacement;

    if-eqz v1, :cond_6

    iget-object v2, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$fabPlaceables:Ljava/util/List;

    iget v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$layoutHeight:I

    iget-object v4, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$fabOffsetFromBottom:Ljava/lang/Integer;

    .local v1, "placement":Landroidx/compose/material3/FabPlacement;
    const/4 v5, 0x0

    .line 328
    .local v5, "$i$a$-let-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$5":I
    nop

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 623
    .local v6, "$i$f$fastForEach":I
    nop

    .line 624
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    :goto_5
    if-ge v7, v8, :cond_5

    .line 625
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 626
    .local v9, "item$iv":Ljava/lang/Object;
    move-object/from16 v17, v9

    check-cast v17, Landroidx/compose/ui/layout/Placeable;

    .local v17, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v18, 0x0

    .line 329
    .local v18, "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$5$1":I
    invoke-virtual {v1}, Landroidx/compose/material3/FabPlacement;->getLeft()I

    move-result v12

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int v13, v3, v10

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, v17

    invoke-static/range {v10 .. v16}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 330
    nop

    .line 626
    .end local v17    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v18    # "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$5$1":I
    nop

    .line 624
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 628
    .end local v7    # "index$iv":I
    :cond_5
    nop

    .line 331
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    nop

    .line 327
    .end local v1    # "placement":Landroidx/compose/material3/FabPlacement;
    .end local v5    # "$i$a$-let-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$5":I
    nop

    .line 332
    :cond_6
    return-void
.end method
