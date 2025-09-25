.class final Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
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
    value = "SMAP\nScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scaffold.kt\nandroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,818:1\n33#2,6:819\n33#2,6:825\n33#2,6:831\n33#2,6:837\n33#2,6:843\n*S KotlinDebug\n*F\n+ 1 Scaffold.kt\nandroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1\n*L\n593#1:819,6\n596#1:825,6\n599#1:831,6\n603#1:837,6\n607#1:843,6\n*E\n"
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

.field final synthetic $fabPlacement:Landroidx/compose/material/FabPlacement;

.field final synthetic $layoutHeight:I

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

.field final synthetic $topBarHeight:I

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
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIILjava/lang/Integer;Landroidx/compose/material/FabPlacement;Ljava/lang/Integer;)V
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
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;III",
            "Ljava/lang/Integer;",
            "Landroidx/compose/material/FabPlacement;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$bodyContentPlaceables:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$topBarPlaceables:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$snackbarPlaceables:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$bottomBarPlaceables:Ljava/util/List;

    iput-object p5, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$fabPlaceables:Ljava/util/List;

    iput p6, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$topBarHeight:I

    iput p7, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$layoutHeight:I

    iput p8, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$snackbarOffsetFromBottom:I

    iput-object p9, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$bottomBarHeight:Ljava/lang/Integer;

    iput-object p10, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$fabPlacement:Landroidx/compose/material/FabPlacement;

    iput-object p11, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$fabOffsetFromBottom:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 590
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 19
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$bodyContentPlaceables:Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    iget v9, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$topBarHeight:I

    const/4 v10, 0x0

    .line 819
    .local v10, "$i$f$fastForEach":I
    nop

    .line 820
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    move v12, v2

    .end local v2    # "index$iv":I
    .local v12, "index$iv":I
    :goto_0
    if-ge v12, v11, :cond_0

    .line 821
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 822
    .local v13, "item$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    .local v14, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v15, 0x0

    .line 594
    .local v15, "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$1":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object v3, v14

    move v5, v9

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 595
    nop

    .line 822
    .end local v14    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v15    # "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$1":I
    nop

    .line 820
    .end local v13    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 824
    .end local v12    # "index$iv":I
    :cond_0
    nop

    .line 596
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    iget-object v1, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$topBarPlaceables:Ljava/util/List;

    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 825
    .local v2, "$i$f$fastForEach":I
    nop

    .line 826
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_1

    .line 827
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 828
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v13, v5

    check-cast v13, Landroidx/compose/ui/layout/Placeable;

    .local v13, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v14, 0x0

    .line 597
    .local v14, "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$2":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v6, p1

    move-object v7, v13

    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 598
    nop

    .line 828
    .end local v13    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v14    # "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$2":I
    nop

    .line 826
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 830
    .end local v3    # "index$iv":I
    :cond_1
    nop

    .line 599
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    iget-object v1, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$snackbarPlaceables:Ljava/util/List;

    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    iget v2, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$layoutHeight:I

    iget v3, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$snackbarOffsetFromBottom:I

    const/4 v4, 0x0

    .line 831
    .local v4, "$i$f$fastForEach":I
    nop

    .line 832
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_2

    .line 833
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 834
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v15, v7

    check-cast v15, Landroidx/compose/ui/layout/Placeable;

    .local v15, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v16, 0x0

    .line 600
    .local v16, "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$3":I
    const/4 v10, 0x0

    sub-int v11, v2, v3

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move-object v9, v15

    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 601
    nop

    .line 834
    .end local v15    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v16    # "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$3":I
    nop

    .line 832
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 836
    .end local v5    # "index$iv":I
    :cond_2
    nop

    .line 603
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    iget-object v1, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$bottomBarPlaceables:Ljava/util/List;

    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    iget v2, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$layoutHeight:I

    iget-object v3, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$bottomBarHeight:Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 837
    .restart local v4    # "$i$f$fastForEach":I
    nop

    .line 838
    const/4 v5, 0x0

    .restart local v5    # "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    :goto_3
    const/4 v7, 0x0

    if-ge v5, v6, :cond_4

    .line 839
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 840
    .local v8, "item$iv":Ljava/lang/Object;
    move-object/from16 v16, v8

    check-cast v16, Landroidx/compose/ui/layout/Placeable;

    .local v16, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v17, 0x0

    .line 604
    .local v17, "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$4":I
    const/4 v11, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_3
    sub-int v12, v2, v7

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, v16

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 605
    nop

    .line 840
    .end local v16    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v17    # "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$4":I
    nop

    .line 838
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 842
    .end local v5    # "index$iv":I
    :cond_4
    nop

    .line 607
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    iget-object v1, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$fabPlaceables:Ljava/util/List;

    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    iget-object v2, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$fabPlacement:Landroidx/compose/material/FabPlacement;

    iget v3, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$layoutHeight:I

    iget-object v4, v0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1;->$fabOffsetFromBottom:Ljava/lang/Integer;

    const/4 v5, 0x0

    .line 843
    .local v5, "$i$f$fastForEach":I
    nop

    .line 844
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    :goto_4
    if-ge v6, v8, :cond_7

    .line 845
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 846
    .local v9, "item$iv":Ljava/lang/Object;
    move-object/from16 v17, v9

    check-cast v17, Landroidx/compose/ui/layout/Placeable;

    .local v17, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v18, 0x0

    .line 608
    .local v18, "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$5":I
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/compose/material/FabPlacement;->getLeft()I

    move-result v10

    move v12, v10

    goto :goto_5

    :cond_5
    move v12, v7

    :goto_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_6

    :cond_6
    move v10, v7

    :goto_6
    sub-int v13, v3, v10

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, v17

    invoke-static/range {v10 .. v16}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 609
    nop

    .line 846
    .end local v17    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v18    # "$i$a$-fastForEach-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1$1$5":I
    nop

    .line 844
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 848
    .end local v6    # "index$iv":I
    :cond_7
    nop

    .line 610
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    return-void
.end method
